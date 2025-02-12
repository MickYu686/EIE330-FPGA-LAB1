transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/colleage/fpga/comparater/RTL {D:/colleage/fpga/comparater/RTL/comparater.v}

vlog -vlog01compat -work work +incdir+D:/colleage/fpga/comparater/Sim {D:/colleage/fpga/comparater/Sim/tb_comparater.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_comparater

add wave *
view structure
view signals
run 1 us
