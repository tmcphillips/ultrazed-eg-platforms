-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Sat Apr 15 17:15:34 2017
-- Host        : calypso-win running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ starter_kit_demo_design_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : starter_kit_demo_design_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu3eg-sfva625-1-i-es1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet3_tx_r_data_rdy : in STD_LOGIC;
    emio_enet3_tx_r_rd : out STD_LOGIC;
    emio_enet3_tx_r_valid : in STD_LOGIC;
    emio_enet3_tx_r_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_tx_r_sop : in STD_LOGIC;
    emio_enet3_tx_r_eop : in STD_LOGIC;
    emio_enet3_tx_r_err : in STD_LOGIC;
    emio_enet3_tx_r_underflow : in STD_LOGIC;
    emio_enet3_tx_r_flushed : in STD_LOGIC;
    emio_enet3_tx_r_control : in STD_LOGIC;
    emio_enet3_dma_tx_end_tog : out STD_LOGIC;
    emio_enet3_dma_tx_status_tog : in STD_LOGIC;
    emio_enet3_tx_r_status : out STD_LOGIC_VECTOR ( 3 downto 0 );
    emio_enet3_rx_w_wr : out STD_LOGIC;
    emio_enet3_rx_w_data : out STD_LOGIC_VECTOR ( 7 downto 0 );
    emio_enet3_rx_w_sop : out STD_LOGIC;
    emio_enet3_rx_w_eop : out STD_LOGIC;
    emio_enet3_rx_w_status : out STD_LOGIC_VECTOR ( 44 downto 0 );
    emio_enet3_rx_w_err : out STD_LOGIC;
    emio_enet3_rx_w_overflow : in STD_LOGIC;
    emio_enet3_rx_w_flush : out STD_LOGIC;
    emio_enet3_tx_r_fixed_lat : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_rx_clk_to_pl_bufg : out STD_LOGIC;
    fmio_gem3_fifo_tx_clk_from_pl : in STD_LOGIC;
    fmio_gem3_fifo_rx_clk_from_pl : in STD_LOGIC;
    emio_enet3_tx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_tx : out STD_LOGIC;
    emio_enet3_delay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_req_tx : out STD_LOGIC;
    emio_enet3_pdelay_resp_tx : out STD_LOGIC;
    emio_enet3_rx_sof : out STD_LOGIC;
    emio_enet3_sync_frame_rx : out STD_LOGIC;
    emio_enet3_delay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_req_rx : out STD_LOGIC;
    emio_enet3_pdelay_resp_rx : out STD_LOGIC;
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "maxihpm0_lpd_aclk,maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[63:0],maxigp2_wstrb[7:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[63:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],emio_enet3_tx_r_data_rdy,emio_enet3_tx_r_rd,emio_enet3_tx_r_valid,emio_enet3_tx_r_data[7:0],emio_enet3_tx_r_sop,emio_enet3_tx_r_eop,emio_enet3_tx_r_err,emio_enet3_tx_r_underflow,emio_enet3_tx_r_flushed,emio_enet3_tx_r_control,emio_enet3_dma_tx_end_tog,emio_enet3_dma_tx_status_tog,emio_enet3_tx_r_status[3:0],emio_enet3_rx_w_wr,emio_enet3_rx_w_data[7:0],emio_enet3_rx_w_sop,emio_enet3_rx_w_eop,emio_enet3_rx_w_status[44:0],emio_enet3_rx_w_err,emio_enet3_rx_w_overflow,emio_enet3_rx_w_flush,emio_enet3_tx_r_fixed_lat,fmio_gem3_fifo_tx_clk_to_pl_bufg,fmio_gem3_fifo_rx_clk_to_pl_bufg,fmio_gem3_fifo_tx_clk_from_pl,fmio_gem3_fifo_rx_clk_from_pl,emio_enet3_tx_sof,emio_enet3_sync_frame_tx,emio_enet3_delay_req_tx,emio_enet3_pdelay_req_tx,emio_enet3_pdelay_resp_tx,emio_enet3_rx_sof,emio_enet3_sync_frame_rx,emio_enet3_delay_req_rx,emio_enet3_pdelay_req_rx,emio_enet3_pdelay_resp_rx,pl_resetn0,pl_clk0";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v2_0_1_zynq_ultra_ps_e,Vivado 2016.4";
begin
end;
