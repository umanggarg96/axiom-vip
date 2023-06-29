interface axiom_apb_intf
#(
    parameter ADDR_WIDTH = 32,
    parameter DATA_WIDTH = 32
)
(
    input wire pclk,
    input wire presetn
);

    logic                  psel;
    logic                  penable;
    logic [ADDR_WIDTH-1:0] paddr;
    logic                  pwrite;
    logic [DATA_WIDTH-1:0] pwdata;
    logic [ 3:0]           pwstrb;
    logic [ 2:0]           pprot;

    logic [DATA_WIDTH-1:0] prdata;
    logic                  pslverr;
    logic                  pready;

endinterface
