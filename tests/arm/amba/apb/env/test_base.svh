class test_base extends uvm_test;
    `uvm_component_utils(test_base)

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

    endfunction

    task run_phase(uvm_phase phase);
        phase.raise_objection(this);

        #10000;

        phase.drop_objection(this);
    endtask

endclass
