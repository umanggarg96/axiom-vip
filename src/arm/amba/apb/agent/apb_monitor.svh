class apb_monitor extends uvm_monitor;
    `uvm_component_utils(apb_monitor)

    const string ERROR_ID = "AXIOM_APB_MONITOR";
    const string INFO_ID = "AXIOM_APB_MONITOR";

    apb_config cfg;
    virtual axiom_apb_intf vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(cfg == null)
            `uvm_fatal(ERROR_ID, "cfg is null")
        if(vif == null)
            `uvm_fatal(ERROR_ID, "vif is null")
    endfunction


    task run_phase(uvm_phase phase);
        forever begin
            repeat(10) @(posedge vif.clk);

            `uvm_info(INFO_ID, "Monitoring...", UVM_NONE)

        end
    endtask

endclass
