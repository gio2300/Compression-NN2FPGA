# Vitis HLS TCL script for synthesizing the decompressor

# Imposta il progetto
set_project_name "DecompressorProject"
set_top "main"  # Usa il nome della tua funzione principale

# Aggiungi i file sorgente al progetto
add_files "decompress.cc"
add_files "decompress.h"

# Imposta i parametri di sintesi
set_clock_period 10  # Imposta il periodo di clock in nanosecondi

# Sintetizza il progetto
run_synthesis

# Esegui la cosimulazione
run_csim

# Visualizza il rapporto di sintesi
open_synthesis_report

# Visualizza il rapporto di utilizzo delle risorse
open_resource_report

# Termina il progetto
exit
