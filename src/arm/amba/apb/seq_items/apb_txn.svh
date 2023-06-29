class apb_txn extends uvm_sequence_item;

    rand bit [31:0] addr;
    rand bit        is_write;
    rand bit [31:0] data;
    rand bit [ 3:0] strobe;
    rand bit        is_privileged; // PROT[0]
    rand bit        is_non_secure; // PROT[1]
    rand bit        is_instruction; // PROT[2]
    rand bit        is_error;

    `uvm_object_utils_begin(apb_txn)
        `umv_field_int(addr, UVM_ALL_ON)
        `umv_field_int(is_write, UVM_ALL_ON)
        `umv_field_int(data, UVM_ALL_ON)
        `umv_field_int(strobe, UVM_ALL_ON)
        `umv_field_int(is_privileged, UVM_ALL_ON)
        `umv_field_int(is_non_secure, UVM_ALL_ON)
        `umv_field_int(is_instruction, UVM_ALL_ON)
        `umv_field_int(is_error, UVM_ALL_ON)
    `uvm_object_utils_end

    function new(string name);
        super.new(name);
    endfunction

endclass
