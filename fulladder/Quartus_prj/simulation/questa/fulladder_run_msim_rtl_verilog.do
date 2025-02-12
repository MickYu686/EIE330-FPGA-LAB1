transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/colleage/fpga/fulladder/RTL {D:/colleage/fpga/fulladder/RTL/fulladder.v}

vlog -vlog01compat -work work +incdir+D:/colleage/fpga/fulladder/Quartus_prj/../SIM {D:/colleage/fpga/fulladder/Quartus_prj/../SIM/tb_fulladder.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneive_ver -L rtl_work -L work -voptargs="+acc"  tb_fulladder

add wave *
view structure
view signals
run 1 us
