#include "hls_stream.h"
#include <ap_int.h>
#include <assert.h>
#include <fstream>
#include <iostream>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string>
#include "params.h"//
#include "inflate.hpp"


#define MULTIPLE_BYTES 8//
#define LOW_OFFSET 1
#define MAX_OFFSET (32 * 1024)
#define HISTORY_SIZE MAX_OFFSET
#define LL_MODEL false

#define HUFFMAN_TYPE xf::compression::DYNAMIC

#define IN_BITWIDTH 16
#define OUT_BITWIDTH (MULTIPLE_BYTES * 8)
const uint32_t sizeof_in = (IN_BITWIDTH / 8);
const uint32_t strbSize = (OUT_BITWIDTH / 8);

const int ICH=c_node_const_10_ich;
const int OCH=c_node_const_10_och;
const int OW=c_node_const_10_ow;
const int OH=c_node_const_10_oh;

         const  int c_fw=c_net_const_13_iw;
	 const int c_fh=c_net_const_13_ih;
	 const int c_ops=c_net_const_13_ops;
	 const int c_reuse=c_net_const_13_reuse;


typedef ap_uint<IN_BITWIDTH> in_t;
typedef ap_uint<OUT_BITWIDTH> out_t;
constexpr unsigned FSZ = c_fh * c_fw;
  constexpr unsigned c_ch = ICH * OCH / c_ops;
  constexpr unsigned c_o_index = OH * OW / c_reuse;

inline void gzipMultiByteDecompressEngineRun(hls::stream<in_t>& inStream,
                                      hls::stream<bool>& inEos,
                                      hls::stream<ap_uint<OUT_BITWIDTH + strbSize> >& outStream)
{
   // const int c_decoderType = (int)HUFFMAN_TYPE;

const int c_decoderType = (int)HUFFMAN_TYPE;
    

    xf::compression::details::inflateMultiByteCore<c_decoderType, MULTIPLE_BYTES, xf::compression::FileFormat::BOTH,
                                                   LL_MODEL, HISTORY_SIZE>(inStream, inEos, outStream);



}

inline void validateFile(uint8_t weightscompr[386] ,hls::stream<ap_fixed<8, 4>>* c_net_const_13_flows[9][12][4], hls::stream<hls::vector<ap_fixed<8,4,AP_RND,AP_SAT>, 4>>(&o_data)[c_fh*c_fw]){//hls::vector<ap_fixed<8,4,AP_RND,AP_SAT>, 4>  s_output ) {
    hls::stream<in_t> inStream("inStream");
    hls::stream<bool> inEos("inEos");
    hls::stream<ap_uint<OUT_BITWIDTH + strbSize>> outStream("decompressOut");
hls::stream<uint8_t> decompressedStream("decompressedStream");
hls::vector<ap_fixed<8,4,AP_RND,AP_SAT>, 4>  s_output;
    // Carica i dati dal flusso di input (weightsStream) e li trasferisce nello stream di decompressione
    for (uint32_t i = 0; i < 386; i += sizeof_in) {
        in_t x = 0;  // Inizializza il valore a 0

        // Copia i dati da weightscompr nello stream inStream
        for (uint32_t j = 0; j < sizeof_in; j++) {
     // Log: controlla il valore che stai copiando
//            std::cout << "Trasferendo byte: " << (int)(weightscompr[i + j]) << " in x" << std::endl;
	 
		// Assumiamo che weightscompr[i + j] contenga un valore di tipo t_net_const_13_st
            // Se t_net_const_13_st è una struttura complessa, estrai il byte corretto
            x.range((j + 1) * 8 - 1, j * 8) =weightscompr [i+j]; //weightscompr[i + j];//.range(7,0); // Prendi il byte appropriato
        }

        // Scrivi nello stream inStream
        inStream << x;
        inEos << 0; // Indica che non è la fine del flusso per questi dati
    }

    // Alla fine dei dati, invia EOS (End Of Stream)
    inStream << 0;
    inEos << 1;

   
    // DECOMPRESSIONE
// DECOMPRESSIONE
gzipMultiByteDecompressEngineRun(inStream, inEos, outStream);

  int count=0; 
 for (ap_uint<OUT_BITWIDTH + strbSize> val = outStream.read(); val != 0; val = outStream.read()) {

    out_t o = val.range(strbSize + OUT_BITWIDTH - 1, strbSize);
    ap_uint<strbSize> strb = val.range(strbSize - 1, 0);

  // Trasferisci i byte decompressi nello stream
        for (size_t i = 0; i < strbSize; ++i) {
            if (strb[i]) {
                decompressedStream << o.range((i + 1) * 8 - 1, i * 8);
           
	   count++;
	    // (Opzionale) Visualizza i dati decompressi trasferiti nel flusso
            std::cout << "Byte " << count << ": " << o.range((i + 1) * 8 - 1, i * 8).to_uint() << std::endl;
	    }
        }
    }
 // Visualizza il numero totale di byte trasferiti nel flusso
std::cout << "Numero totale di byte nel flusso decompressedStream: " << count << std::endl;

t_net_const_13_st c_net_const_13[9][12][4];
//hls::stream<ap_fixed<8, 4>>c_net_const_13_flows[9][12][4];
auto i = 0;

if (!decompressedStream.empty()) {
    for (auto s_ch = 0; s_ch < 12; s_ch++) {
        for (auto s_index = 0; s_index < 9; s_index++) {
            for (auto s_ops = 0; s_ops < 4; s_ops++) {
                ap_uint<8> byte = decompressedStream.read();

                // Creiamo un ap_fixed<8, 4> per scrivere nel flusso
                ap_fixed<8, 4> data;
                data.range(7, 0) = byte; // Qui assegniamo i bit da 7 a 0 del byte

                c_net_const_13_flows[s_index][s_ch][s_ops]->write(data);  // Scrivi nel flusso
                ap_fixed<8, 4> flow_data = c_net_const_13_flows[s_index][s_ch][s_ops]->read();
                std::cout << flow_data.to_float();  // Stampa il valore letto dal flusso
                std::cout << std::endl;

                s_output[s_ops] = flow_data;
            }
	    o_data[s_index].write(s_output);


// Stampa il contenuto di o_data[s_index] dopo aver scritto nel flusso
            std::cout << "Contenuto di o_data[" << s_index << "]: ";
/*
            // Variabile temporanea per leggere i dati dal flusso
            hls::vector<ap_fixed<8,4,AP_RND,AP_SAT>, 4> temp_output;
            o_data[s_index].read(temp_output);  // Leggi il dato dal flusso

            // Stampa il contenuto di temp_output
            for (int i = 0; i < c_ops; i++) {
                std::cout << temp_output[i].to_float();  // Stampa il valore come float
                if (i < c_ops - 1) {
                    std::cout << ", ";  // Separatore tra gli elementi
                }
            }
            std::cout << std::endl;
*/
	    
	    
	    std::cout << "s_output[" << s_index << "] = { ";
for (int i = 0; i <c_ops; i++) {
    // Stampa il valore come float per leggibilità
    std::cout << s_output[i].to_float();
    if (i < c_ops - 1) {
        std::cout << ", "; // Aggiungi una virgola tra i valori
  }
}
std::cout << " }" << std::endl;
         /*   // Stampa il contenuto di s_output
            std::cout << "s_output[" << s_index << "] = { ";
            for (int i = 0; i < 4; i++) {
                std::cout << s_output[i].to_float();
                if (i < 3) {
                    std::cout << ", "; // Aggiungi una virgola tra i valori
                }
            }
            std::cout << " }" << std::endl;
*/
            // Copia diretta di s_output in final_vector
            std::vector<ap_fixed<8, 4>> final_vector(4);
            for (int i = 0; i < 4; i++) {
                final_vector[i] = s_output[i];
            }

            // Stampa final_vector per verifica
            std::cout << "final_vector[" << s_index << "] = { ";
            for (int i = 0; i < 4; i++) {
                std::cout << final_vector[i].to_float();
                if (i < 3) {
                    std::cout << ", ";
                }
            }
            std::cout << " }" << std::endl;
        }
    }


std::cout << " uuuuu" << std::endl;
} else {
    std::cout << "Errore: decompressedStream è vuoto!" << std::endl;

}

/*
for (auto s_o_index = 0; s_o_index < c_o_index; s_o_index++) {
// for (auto s_ops = 0; s_ops < c_ops; s_ops++) {
         for (auto s_ch = 0; s_ch < c_ch; s_ch++) {
//for (auto s_index = 0; s_index < FSZ; s_index++) {      
#pragma HLS pipeline
//               for (auto s_ops = 0; s_ops < c_ops; s_ops++) {
  for (auto s_index = 0; s_index < FSZ; s_index++) {
//   for (auto s_ch = 0; s_ch < c_ch; s_ch++) {    
//        dout_t s_output;
//      for (auto s_index = 0; s_index < FSZ; s_index++) {
//      for (auto s_ch = 0; s_ch < c_ch; s_ch++) {
            for (auto s_ops = 0; s_ops < c_ops; s_ops++) {
std::cout << "c_net_const_13_flows[" << s_index << "][" << s_ch << "][" << s_ops << "] = ";
               // while (!c_net_const_13_flows[s_index][s_ch][s_ops]->empty()) {
                    // Leggi il dato dal flusso
                    ap_fixed<8, 4> flow_data = c_net_const_13_flows[s_index][s_ch][s_ops]->read();
                    std::cout << flow_data.to_float();  // Stampa il valore letto dal flusso
               // }
                std::cout << std::endl;

                    //     std::cout << "Checking c_net_const_13_flows[" << s_index << "][" << s_ch << "][" << s_ops << "]: ";
                    // Controlla se il flusso non è vuoto
               if (!c_net_const_13_flows[s_index][s_ch][s_ops]->empty()) {
                //  ap_fixed<8, 4> data = c_net_const_13_flows[s_index][s_ch][s_ops].read();
   // std::cout << "Dati letti: " << data.to_float() << std::endl;
        //        std::cout << "Data available!" << std::endl;
                    // Leggi dal flusso corrispondente
                   ap_fixed<8, 4> flow_data= c_net_const_13_flows[s_index][s_ch][s_ops]->read();
s_output[s_ops]=flow_data;
	       }}}}}*/

/*
// Esempio di utilizzo di decompressedStream
for (auto s_ch = 0; s_ch < 12; s_ch++) {
    for (auto s_index = 0; s_index < 9; s_index++) {
        for (auto s_ops = 0; s_ops < 4; s_ops++) {
            if (!decompressedStream.empty()) {
                uint8_t value;
                decompressedStream.read(value);

                // Inizializza un oggetto t_net_const_13
                t_net_const_13 tmp;
                for (int i = 0; i < 4; ++i) { // Riempie ciascun elemento del vettore
                    tmp[i] = ap_fixed<8, 4>(value);
                }

                // Scrive tmp nello stream s_net13
                s_net13 << tmp;
            }
        }
    }
}*/
}
