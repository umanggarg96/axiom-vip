class apb_agent extends uvm_agent;
    `uvm_component_utils(apb_agent)

    const string ERROR_ID = "AXIOM_APB_AGENT";

    apb_sequencer sqr;
    apb_driver    drv;
    apb_monitor   mtr;
    apb_config    cfg;
    
    virtual axiom_apb_intf vif;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        if(!uvm_config_db#(virtual axiom_apb_intf)::get(this, "", "vif", vif))
            `uvm_fatal(ERROR_ID, "Unable to fetch vif")

        if(cfg.agent_type != APB_MONITOR) begin
            sqr = apb_sequencer::type_id::create("sqr");
            drv = apb_driver::type_id::create("drv");
            drv.vif = vif;
            drv.cfg = cfg;
        end

        mtr = apb_monitor::type_id::create("mtr");
        mtr.vif = vif;
        mtr.cfg = cfg;
    endfunction

endclass
