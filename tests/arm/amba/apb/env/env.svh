class env extends uvm_env;
    `uvm_component_utils(env)

    apb_agent  requester;
    apb_config requester_cfg;
    apb_agent  completer;
    apb_config completer_cfg;
    apb_agent  monitor;
    apb_config monitor_cfg;

    function new(string name, uvm_component parent);
        super.new(name, parent);
    endfunction

    function void build_phase(uvm_phase phase);
        super.build_phase(phase);
        requester = apb_agent::type_id::create("requester");
        completer = apb_agent::type_id::create("completer");
        monitor   = apb_agent::type_id::create("monitor");

        requester_cfg = new("requester_cfg");
        requester_cfg.agent_type = APB_REQUESTER;
        uvm_config_db#(apb_config)::set(this, "requester", "cfg", requester_cfg);

        completer_cfg = new("completer_cfg");
        completer_cfg.agent_type = APB_COMPLETER;
        uvm_config_db#(apb_config)::set(this, "completer", "cfg", completer_cfg);

        monitor_cfg = new("monitor_cfg");
        monitor_cfg.agent_type = APB_MONITOR;
        uvm_config_db#(apb_config)::set(this, "monitor", "cfg", monitor_cfg);

    endfunction

endclass
