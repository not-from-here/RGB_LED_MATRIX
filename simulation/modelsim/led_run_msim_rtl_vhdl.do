transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/frequency_converter.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/single_port_rom.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/binary_counter.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/decode.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/button_cntr.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/main_block.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/matrix_cntr.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/matrix_block.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/simple_dual_port_ram_single_clock.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/DEmux.vhd}
vcom -93 -work work {F:/Desktop/cinema_bizarre/LEDAE/LED/printer.vhd}

