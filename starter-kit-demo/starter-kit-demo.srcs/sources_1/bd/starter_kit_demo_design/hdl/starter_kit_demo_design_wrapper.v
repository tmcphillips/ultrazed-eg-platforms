//Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
//Date        : Sat Apr 15 10:51:40 2017
//Host        : calypso-win running 64-bit major release  (build 9200)
//Command     : generate_target starter_kit_demo_design_wrapper.bd
//Design      : starter_kit_demo_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module starter_kit_demo_design_wrapper
   (dip_switches_8bits_tri_i,
    led_8bits_tri_o,
    push_buttons_3bits_tri_i);
  input [7:0]dip_switches_8bits_tri_i;
  output [7:0]led_8bits_tri_o;
  input [2:0]push_buttons_3bits_tri_i;

  wire [7:0]dip_switches_8bits_tri_i;
  wire [7:0]led_8bits_tri_o;
  wire [2:0]push_buttons_3bits_tri_i;

  starter_kit_demo_design starter_kit_demo_design_i
       (.dip_switches_8bits_tri_i(dip_switches_8bits_tri_i),
        .led_8bits_tri_o(led_8bits_tri_o),
        .push_buttons_3bits_tri_i(push_buttons_3bits_tri_i));
endmodule
