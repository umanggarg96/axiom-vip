APB_VIP=$(AXIOM_VIP)/src/arm/amba/apb

all: check-env build_vip build_tb sim

build_vip:
	vlog $(APB_VIP)/axiom_apb_pkg.sv
	vlog $(APB_VIP)/intf/axiom_apb_intf.sv

build_tb:
	vlog ../test_pkg.sv
	vlog ../tb/top.sv

sim:
	vsim -c -do "run -a; q" top

.PHONY: check-env
check-env:
ifndef AXIOM_VIP
	$(error AXIOM_VIP is undefined)
endif
