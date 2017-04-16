proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set ACTIVE_STEP init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xczu3eg-sfva625-1-i-es1
  set_property board_part em.avnet.com:ultrazed_eg_iocc:part0:1.0 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.cache/wt [current_project]
  set_property parent.project_path C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.xpr [current_project]
  set_property ip_output_repo C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.cache/ip [current_project]
  set_property ip_cache_permissions {read write} [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.runs/synth_1/starter_kit_demo_design_wrapper.dcp
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_zynq_ultra_ps_e_0_0/starter_kit_demo_design_zynq_ultra_ps_e_0_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_zynq_ultra_ps_e_0_0/starter_kit_demo_design_zynq_ultra_ps_e_0_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_xbar_0_1/starter_kit_demo_design_xbar_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_xbar_0_1/starter_kit_demo_design_xbar_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_ds_0/starter_kit_demo_design_auto_ds_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_ds_0/starter_kit_demo_design_auto_ds_0.dcp]
  add_files -quiet C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_pc_0/starter_kit_demo_design_auto_pc_0.dcp
  set_property netlist_only true [get_files C:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_pc_0/starter_kit_demo_design_auto_pc_0.dcp]
  read_xdc -ref starter_kit_demo_design_zynq_ultra_ps_e_0_0 -cells inst c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_zynq_ultra_ps_e_0_0/starter_kit_demo_design_zynq_ultra_ps_e_0_0.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_zynq_ultra_ps_e_0_0/starter_kit_demo_design_zynq_ultra_ps_e_0_0.xdc]
  read_xdc -prop_thru_buffers -ref starter_kit_demo_design_axi_gpio_0_1 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1_board.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1_board.xdc]
  read_xdc -ref starter_kit_demo_design_axi_gpio_0_1 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_0_1_1/starter_kit_demo_design_axi_gpio_0_1.xdc]
  read_xdc -prop_thru_buffers -ref starter_kit_demo_design_rst_ps8_0_100M_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0_board.xdc]
  read_xdc -ref starter_kit_demo_design_rst_ps8_0_100M_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_rst_ps8_0_100M_0_1/starter_kit_demo_design_rst_ps8_0_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref starter_kit_demo_design_axi_gpio_1_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0_board.xdc]
  read_xdc -ref starter_kit_demo_design_axi_gpio_1_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_1_0_1/starter_kit_demo_design_axi_gpio_1_0.xdc]
  read_xdc -prop_thru_buffers -ref starter_kit_demo_design_axi_gpio_2_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0_board.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0_board.xdc]
  read_xdc -ref starter_kit_demo_design_axi_gpio_2_0 -cells U0 c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0.xdc
  set_property processing_order EARLY [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_axi_gpio_2_0_1/starter_kit_demo_design_axi_gpio_2_0.xdc]
  read_xdc -ref starter_kit_demo_design_auto_ds_0 -cells inst c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_ds_0/starter_kit_demo_design_auto_ds_0_clocks.xdc
  set_property processing_order LATE [get_files c:/Users/tmcphill/GitRepos/ultrazed-eg-platforms/starter-kit-demo/starter-kit-demo.srcs/sources_1/bd/starter_kit_demo_design/ip/starter_kit_demo_design_auto_ds_0/starter_kit_demo_design_auto_ds_0_clocks.xdc]
  link_design -top starter_kit_demo_design_wrapper -part xczu3eg-sfva625-1-i-es1
  write_hwdef -file starter_kit_demo_design_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
  unset ACTIVE_STEP 
}

start_step opt_design
set ACTIVE_STEP opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force starter_kit_demo_design_wrapper_opt.dcp
  catch { report_drc -file starter_kit_demo_design_wrapper_drc_opted.rpt }
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
  unset ACTIVE_STEP 
}

start_step place_design
set ACTIVE_STEP place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force starter_kit_demo_design_wrapper_placed.dcp
  catch { report_io -file starter_kit_demo_design_wrapper_io_placed.rpt }
  catch { report_utilization -file starter_kit_demo_design_wrapper_utilization_placed.rpt -pb starter_kit_demo_design_wrapper_utilization_placed.pb }
  catch { report_control_sets -verbose -file starter_kit_demo_design_wrapper_control_sets_placed.rpt }
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
  unset ACTIVE_STEP 
}

start_step route_design
set ACTIVE_STEP route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force starter_kit_demo_design_wrapper_routed.dcp
  catch { report_drc -file starter_kit_demo_design_wrapper_drc_routed.rpt -pb starter_kit_demo_design_wrapper_drc_routed.pb -rpx starter_kit_demo_design_wrapper_drc_routed.rpx }
  catch { report_methodology -file starter_kit_demo_design_wrapper_methodology_drc_routed.rpt -rpx starter_kit_demo_design_wrapper_methodology_drc_routed.rpx }
  catch { report_timing_summary -warn_on_violation -max_paths 10 -file starter_kit_demo_design_wrapper_timing_summary_routed.rpt -rpx starter_kit_demo_design_wrapper_timing_summary_routed.rpx }
  catch { report_power -file starter_kit_demo_design_wrapper_power_routed.rpt -pb starter_kit_demo_design_wrapper_power_summary_routed.pb -rpx starter_kit_demo_design_wrapper_power_routed.rpx }
  catch { report_route_status -file starter_kit_demo_design_wrapper_route_status.rpt -pb starter_kit_demo_design_wrapper_route_status.pb }
  catch { report_clock_utilization -file starter_kit_demo_design_wrapper_clock_utilization_routed.rpt }
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  write_checkpoint -force starter_kit_demo_design_wrapper_routed_error.dcp
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
  unset ACTIVE_STEP 
}

start_step write_bitstream
set ACTIVE_STEP write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  catch { write_mem_info -force starter_kit_demo_design_wrapper.mmi }
  write_bitstream -force -no_partial_bitfile starter_kit_demo_design_wrapper.bit 
  catch { write_sysdef -hwdef starter_kit_demo_design_wrapper.hwdef -bitfile starter_kit_demo_design_wrapper.bit -meminfo starter_kit_demo_design_wrapper.mmi -file starter_kit_demo_design_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
  unset ACTIVE_STEP 
}

