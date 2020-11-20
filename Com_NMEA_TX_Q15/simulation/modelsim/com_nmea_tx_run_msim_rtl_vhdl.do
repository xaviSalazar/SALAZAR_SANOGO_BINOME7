transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {E:/BE/SALAZAR_SANOGO_BINOME7/Com_NMEA_TX_Q15/nmea_tx.vhd}

vcom -93 -work work {E:/BE/SALAZAR_SANOGO_BINOME7/Com_NMEA_TX_Q15/nmea_tx.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  nmea_tx

add wave *
view structure
view signals
run -all
