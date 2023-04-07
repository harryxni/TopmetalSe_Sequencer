///////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version : 3.6
//  \   \         Application : 7 Series FPGAs Transceivers Wizard
//  /   /         Filename : gtwizard_0_multi_gt.v
// /___/   /\     
// \   \  /  \ 
//  \___\/\___\
//
//
// Module gtwizard_0_multi_gt (a Multi GT Wrapper)
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


`default_nettype wire

`timescale 1ns / 1ps
`define DLY #1

//***************************** Entity Declaration ****************************
(* DowngradeIPIdentifiedWarnings="yes" *)
(* CORE_GENERATION_INFO = "gtwizard_0_multi_gt,gtwizard_v3_6_13,{protocol_file=Start_from_scratch}" *) module gtwizard_0_multi_gt #
(
    // Simulation attributes
    parameter   EXAMPLE_SIMULATION       =   0,             // Set to 1 for Simulation
    parameter   WRAPPER_SIM_GTRESET_SPEEDUP    = "FALSE"    // Set to "TRUE" to speed up sim reset
)
(
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT0  (X0Y0)
    //____________________________CHANNEL PORTS________________________________
output gt0_drp_busy_out,
output gt0_rxpmaresetdone_out,
output gt0_txpmaresetdone_out,
    //-------------------------- Channel - DRP Ports  --------------------------
    input   [8:0]   gt0_drpaddr_in,
    input           gt0_drpclk_in,
    input   [15:0]  gt0_drpdi_in,
    output  [15:0]  gt0_drpdo_out,
    input           gt0_drpen_in,
    output          gt0_drprdy_out,
    input           gt0_drpwe_in,
    //------------------- RX Initialization and Reset Ports --------------------
    input           gt0_eyescanreset_in,
    input           gt0_rxuserrdy_in,
    //------------------------ RX Margin Analysis Ports ------------------------
    output          gt0_eyescandataerror_out,
    input           gt0_eyescantrigger_in,
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
    output  [19:0]  gt0_rxdata_out,
    input           gt0_rxusrclk_in,
    input           gt0_rxusrclk2_in,
    //---------------------- Receive Ports - RX AFE Ports ----------------------
    input           gt0_gtprxn_in,
    input           gt0_gtprxp_in,
    //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
    input           gt0_rxslide_in,
    //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
    output  [14:0]  gt0_dmonitorout_out,
    //------------------ Receive Ports - RX Equailizer Ports -------------------
    input           gt0_rxlpmhfhold_in,
    input           gt0_rxlpmlfhold_in,
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
    output          gt0_rxoutclk_out,
    output          gt0_rxoutclkfabric_out,
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
    input           gt0_gtrxreset_in,
    input           gt0_rxlpmreset_in,
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
    output          gt0_rxresetdone_out,
    //------------------- TX Initialization and Reset Ports --------------------
    input           gt0_gttxreset_in,
    input           gt0_txuserrdy_in,
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
    input   [19:0]  gt0_txdata_in,
    input           gt0_txusrclk_in,
    input           gt0_txusrclk2_in,
    //------------- Transmit Ports - TX Configurable Driver Ports --------------
    output          gt0_gtptxn_out,
    output          gt0_gtptxp_out,
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    output          gt0_txoutclk_out,
    output          gt0_txoutclkfabric_out,
    output          gt0_txoutclkpcs_out,
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
    output          gt0_txresetdone_out,


    //____________________________COMMON PORTS________________________________
input           gt0_pll0reset_in,
input           gt0_pll0outclk_in,
input           gt0_pll0outrefclk_in,
input           gt0_pll1outclk_in,
input           gt0_pll1outrefclk_in

);
//***************************** Parameter Declarations ************************
    localparam PLL0_FBDIV_IN      = 4;
    localparam PLL1_FBDIV_IN      = 1;
    localparam PLL0_FBDIV_45_IN   = 5;
    localparam PLL1_FBDIV_45_IN   = 4;
    localparam PLL0_REFCLK_DIV_IN = 1;
    localparam PLL1_REFCLK_DIV_IN = 1;


//***************************** Wire Declarations *****************************

    // ground and vcc signals
wire            tied_to_ground_i;
wire    [63:0]  tied_to_ground_vec_i;
wire            tied_to_vcc_i;
wire    [63:0]  tied_to_vcc_vec_i;
wire            gt0_pll0clk_i;
wire            gt0_pll0refclk_i;
wire            gt0_pll1clk_i;
wire            gt0_pll1refclk_i;
    wire            gt0_rst_i;
 
         
//********************************* Main Body of Code**************************

    assign tied_to_ground_i             = 1'b0;
    assign tied_to_ground_vec_i         = 64'h0000000000000000;
    assign tied_to_vcc_i                = 1'b1;
    assign tied_to_vcc_vec_i            = 64'hffffffffffffffff;


    assign  gt0_pll0clk_i    = gt0_pll0outclk_in;  
    assign  gt0_pll0refclk_i = gt0_pll0outrefclk_in; 
    assign  gt0_pll1clk_i    = gt0_pll1outclk_in;  
    assign  gt0_pll1refclk_i = gt0_pll1outrefclk_in; 
    assign  gt0_rst_i        = gt0_pll0reset_in;
      
   
//------------------------- GT Instances  -------------------------------
    //_________________________________________________________________________
    //_________________________________________________________________________
    //GT0  (X0Y0)
    gtwizard_0_GT #
    (
        // Simulation attributes
        .GT_SIM_GTRESET_SPEEDUP   (WRAPPER_SIM_GTRESET_SPEEDUP),
        .EXAMPLE_SIMULATION       (EXAMPLE_SIMULATION),
        .TXSYNC_OVRD_IN           (1'b0),
        .TXSYNC_MULTILANE_IN      (1'b0) 
    )
gt0_gtwizard_0_i
    (
        .rst_in                         (gt0_rst_i),
        .drp_busy_out                   (gt0_drp_busy_out),
      
        .rxpmaresetdone                 (gt0_rxpmaresetdone_out),
        .txpmaresetdone                 (gt0_txpmaresetdone_out),
        //-------------------------- Channel - DRP Ports  --------------------------
        .drpaddr_in                     (gt0_drpaddr_in),
        .drpclk_in                      (gt0_drpclk_in),
        .drpdi_in                       (gt0_drpdi_in),
        .drpdo_out                      (gt0_drpdo_out),
        .drpen_in                       (gt0_drpen_in),
        .drprdy_out                     (gt0_drprdy_out),
        .drpwe_in                       (gt0_drpwe_in),
        //---------------------- GTPE2_CHANNEL Clocking Ports ----------------------
        .pll0clk_in                     (gt0_pll0clk_i),
        .pll0refclk_in                  (gt0_pll0refclk_i),
        .pll1clk_in                     (gt0_pll1clk_i),
        .pll1refclk_in                  (gt0_pll1refclk_i),
        //------------------- RX Initialization and Reset Ports --------------------
        .eyescanreset_in                (gt0_eyescanreset_in),
        .rxuserrdy_in                   (gt0_rxuserrdy_in),
        //------------------------ RX Margin Analysis Ports ------------------------
        .eyescandataerror_out           (gt0_eyescandataerror_out),
        .eyescantrigger_in              (gt0_eyescantrigger_in),
        //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .rxdata_out                     (gt0_rxdata_out),
        .rxusrclk_in                    (gt0_rxusrclk_in),
        .rxusrclk2_in                   (gt0_rxusrclk2_in),
        //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gtprxn_in                      (gt0_gtprxn_in),
        .gtprxp_in                      (gt0_gtprxp_in),
        //------------ Receive Ports - RX Byte and Word Alignment Ports ------------
        .rxslide_in                     (gt0_rxslide_in),
        //---------- Receive Ports - RX Decision Feedback Equalizer(DFE) -----------
        .dmonitorout_out                (gt0_dmonitorout_out),
        //------------------ Receive Ports - RX Equailizer Ports -------------------
        .rxlpmhfhold_in                 (gt0_rxlpmhfhold_in),
        .rxlpmlfhold_in                 (gt0_rxlpmlfhold_in),
        //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .rxoutclk_out                   (gt0_rxoutclk_out),
        .rxoutclkfabric_out             (gt0_rxoutclkfabric_out),
        //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gtrxreset_in                   (gt0_gtrxreset_in),
        .rxlpmreset_in                  (gt0_rxlpmreset_in),
        //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .rxresetdone_out                (gt0_rxresetdone_out),
        //------------------- TX Initialization and Reset Ports --------------------
        .gttxreset_in                   (gt0_gttxreset_in),
        .txuserrdy_in                   (gt0_txuserrdy_in),
        //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .txdata_in                      (gt0_txdata_in),
        .txusrclk_in                    (gt0_txusrclk_in),
        .txusrclk2_in                   (gt0_txusrclk2_in),
        //------------- Transmit Ports - TX Configurable Driver Ports --------------
        .gtptxn_out                     (gt0_gtptxn_out),
        .gtptxp_out                     (gt0_gtptxp_out),
        //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .txoutclk_out                   (gt0_txoutclk_out),
        .txoutclkfabric_out             (gt0_txoutclkfabric_out),
        .txoutclkpcs_out                (gt0_txoutclkpcs_out),
        //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .txresetdone_out                (gt0_txresetdone_out)

    );



endmodule

