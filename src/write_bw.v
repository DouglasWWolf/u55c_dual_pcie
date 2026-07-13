module write_bw #
(
    parameter       DW=512, 
    parameter       IW=4,
    parameter       FREQ_HZ = 250000000,
    parameter[63:0] PCI_BASE_ADDR = 64'h1_0000_0000
)
(
    input   clk, resetn, enable_write,

    //=================   This is the AXI4 output interface   ==================

    // "Specify write address"              -- Master --    -- Slave --
    output     [63:0]                        M_AXI_AWADDR,
    output     [7:0]                         M_AXI_AWLEN,
    output     [2:0]                         M_AXI_AWSIZE,
    output     [IW-1:0]                      M_AXI_AWID,
    output     [1:0]                         M_AXI_AWBURST,
    output                                   M_AXI_AWLOCK,
    output     [3:0]                         M_AXI_AWCACHE,
    output     [3:0]                         M_AXI_AWQOS,
    output     [2:0]                         M_AXI_AWPROT,
    output                                   M_AXI_AWVALID,
    input                                                   M_AXI_AWREADY,

    // "Write Data"                         -- Master --    -- Slave --
    output [DW-1:0]                         M_AXI_WDATA,
    output [(DW/8)-1:0]                     M_AXI_WSTRB,
    output                                  M_AXI_WVALID,
    output                                  M_AXI_WLAST,
    input                                                   M_AXI_WREADY,

    // "Send Write Response"                -- Master --    -- Slave --
    input[1:0]                                              M_AXI_BRESP,
    input                                                   M_AXI_BVALID,
    output                                  M_AXI_BREADY,

    // "Specify read address"               -- Master --    -- Slave --
    output[63:0]                            M_AXI_ARADDR,
    output                                  M_AXI_ARVALID,
    output[2:0]                             M_AXI_ARPROT,
    output                                  M_AXI_ARLOCK,
    output[IW-1:0]                          M_AXI_ARID,
    output[7:0]                             M_AXI_ARLEN,
    output[2:0]                             M_AXI_ARSIZE,
    output[1:0]                             M_AXI_ARBURST,
    output[3:0]                             M_AXI_ARCACHE,
    output[3:0]                             M_AXI_ARQOS,
    input                                                   M_AXI_ARREADY,

    // "Read data back to master"           -- Master --    -- Slave --
    input[DW-1:0]                                           M_AXI_RDATA,
    input                                                   M_AXI_RVALID,
    input[1:0]                                              M_AXI_RRESP,
    input                                                   M_AXI_RLAST,
    output                                  M_AXI_RREADY
    //==========================================================================

);

localparam BURST_SIZE = 4096;
localparam CYCLES_PER_BURST = (BURST_SIZE / (DW/8));

reg       awsm_state;
reg[31:0] awaddr;
reg[63:0] aw_blocks;

reg[ 2:0] wsm_state;
reg[63:0] w_blocks;


//=============================================================================
// This block sends write-requests to the AW-channel
//=============================================================================
always @(posedge clk) begin
    if (resetn == 0)
        awsm_state <= 0;

    else case(awsm_state)

        0:  if (enable_write) begin
                awaddr     <= 0;
                aw_blocks  <= 0;
                awsm_state <= 0;
            end

        1:  if (M_AXI_AWVALID & M_AXI_AWREADY) begin
                awaddr    <= awaddr + BURST_SIZE;
                aw_blocks <= aw_blocks + 1;
                if (enable_write == 0) awsm_state <= 0;
            end

    endcase
end
//=============================================================================


//=============================================================================
// We won't be using the "read" side of the output bus
//=============================================================================
assign M_AXI_ARADDR  = 0;
assign M_AXI_ARVALID = 0;
assign M_AXI_ARPROT  = 0;
assign M_AXI_ARLOCK  = 0;
assign M_AXI_ARID    = 0;
assign M_AXI_ARLEN   = 0;
assign M_AXI_ARSIZE  = 0;
assign M_AXI_ARBURST = 0;
assign M_AXI_ARCACHE = 0;
assign M_AXI_ARQOS   = 0;
assign M_AXI_RREADY  = 0;
//=============================================================================


//=============================================================================
// Constant values for the AW-channel of the M_AXI interface
//=============================================================================
assign M_AXI_AWVALID = (awsm_state != 0);
assign M_AXI_AWADDR  = awaddr + PCI_BASE_ADDR;
assign M_AXI_AWSIZE  = $clog2(DW/8);
assign M_AXI_AWLEN   = CYCLES_PER_BURST - 1;
assign M_AXI_AWID    = 0;
assign M_AXI_AWBURST = 1;
assign M_AXI_AWLOCK  = 0;
assign M_AXI_AWCACHE = 0;
assign M_AXI_AWQOS   = 0;
assign M_AXI_AWPROT  = 0;
//=============================================================================


endmodule
