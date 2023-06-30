module top;

    parameter ADDR_WIDTH = 32;
    parameter DATA_WIDTH = 32;

    logic                 pclk;
    logic                 presetn;
    wire                  psel;
    wire                  penable;
    wire [ADDR_WIDTH-1:0] paddr;
    wire                  pwrite;
    wire [DATA_WIDTH-1:0] pwdata;
    wire [ 3:0]           pwstrb;
    wire [ 2:0]           pprot;

    wire [DATA_WIDTH-1:0] prdata;
    wire                  pslverr;
    wire                  pready;

    axiom_apb_intf requster(.*);
    axiom_apb_intf completer(.*);
    axiom_apb_intf monitor(.*);

    assign  completer.psel     =  psel               ;
    assign  completer.penable  =  penable            ;
    assign  completer.paddr    =  paddr              ;
    assign  completer.pwrite   =  pwrite             ;
    assign  completer.pwdata   =  pwdata             ;
    assign  completer.pwstrb   =  pwstrb             ;
    assign  completer.pprot    =  pprot              ;
    assign  prdata             =  completer.prdata   ;
    assign  pslverr            =  completer.pslverr  ;
    assign  pready             =  completer.pready   ;

    assign  monitor.psel       =  psel               ;
    assign  monitor.penable    =  penable            ;
    assign  monitor.paddr      =  paddr              ;
    assign  monitor.pwrite     =  pwrite             ;
    assign  monitor.pwdata     =  pwdata             ;
    assign  monitor.pwstrb     =  pwstrb             ;
    assign  monitor.pprot      =  pprot              ;
    assign  monitor.prdata     =  prdata             ;
    assign  monitor.pslverr    =  pslverr            ;
    assign  monitor.pready     =  pready             ;

    assign  psel               =  requster.psel      ;
    assign  penable            =  requster.penable   ;
    assign  paddr              =  requster.paddr     ;
    assign  pwrite             =  requster.pwrite    ;
    assign  pwdata             =  requster.pwdata    ;
    assign  pwstrb             =  requster.pwstrb    ;
    assign  pprot              =  requster.pprot     ;
    assign  requster.prdata    =  prdata             ;
    assign  requster.pslverr   =  pslverr            ;
    assign  requster.pready    =  pready             ;
endmodule
