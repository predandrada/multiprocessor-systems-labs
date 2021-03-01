vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../bd/design_1/ip/design_1_mc68000_0_0/sim/design_1_mc68000_0_0.v" \
"../../../bd/design_1/ip/design_1_ram8kx8_0_0/sim/design_1_ram8kx8_0_0.v" \
"../../../bd/design_1/ip/design_1_ram8kx8_1_0/sim/design_1_ram8kx8_1_0.v" \
"../../../bd/design_1/ip/design_1_not_gate_0_0/sim/design_1_not_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_nor_gate_0_0/sim/design_1_nor_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_decoder_0_0/sim/design_1_decoder_0_0.v" \
"../../../bd/design_1/ip/design_1_splitter_addresses_0_0/sim/design_1_splitter_addresses_0_0.v" \
"../../../bd/design_1/ip/design_1_nand_gate_0_0/sim/design_1_nand_gate_0_0.v" \
"../../../bd/design_1/ip/design_1_nand_gate_1_0/sim/design_1_nand_gate_1_0.v" \
"../../../bd/design_1/ip/design_1_nand_gate_2_0/sim/design_1_nand_gate_2_0.v" \
"../../../bd/design_1/sim/design_1.v" \


vlog -work xil_defaultlib \
"glbl.v"

