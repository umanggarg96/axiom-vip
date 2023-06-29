class apb_config extends uvm_object;
    `uvm_object_utils(apb_config)

    apb_version_t version    = APB3;
    apb_agent_t   agent_type = APB_MONITOR;
    virtual axiom_apb_intf vif;

    function new(string name);
        super.new(name);
    endfunction

endclass
