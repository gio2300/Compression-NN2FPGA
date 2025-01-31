#ifndef DECOMPRESSOR_H
#define DECOMPRESSOR_H

#include <ap_int.h>
#include <ap_fixed.h>
#include <hls_stream.h>
#include <hls_vector.h> // Include per usare hls::vector
#include <chrono>

// Definisci i parametri necessari
#define DATA_WIDTH 512 // Larghezza dei dati per m_axi_input
#define NUM_WORDS (DATA_WIDTH/32) // Numero di parole

// Definisci il tipo del vettore per i dati decompressi
typedef hls::vector<ap_fixed<8,4,AP_RND,AP_SAT>, 4> t_net_const_13;

// Dichiarazione della funzione di decompressione
void decompressor_kernel(
    ap_uint<DATA_WIDTH>* m_axi_input,           // Interfaccia AXI per i dati compressi
    hls::stream<t_net_const_13>& out_stream,    // Stream di output per i dati decompressi (ap_fixed con hls::vector)
    hls::stream<bool>& out_eos                  // Segnale di fine stream
);

#endif // DECOMPRESSOR_H
