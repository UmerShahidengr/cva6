set_property SRC_FILE_INFO {cfile:/home/ddrc2/MyWork/cva6_zc706A/corev_apu/fpga/constraints/ZC706.xdc rfile:../../../constraints/ZC706.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:/home/ddrc2/MyWork/cva6_zc706A/corev_apu/fpga/constraints/ariane.xdc rfile:../../../constraints/ariane.xdc id:2} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN A8 IOSTANDARD LVCMOS15} [get_ports cpu_reset]
set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN H9 [get_ports sys_clk_p]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN G9 [get_ports sys_clk_n]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AK13   IOSTANDARD LVCMOS25 } [get_ports { tck    }];
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AA13   IOSTANDARD LVCMOS25 } [get_ports { tdo    }];
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AH18   IOSTANDARD LVCMOS25 } [get_ports { tdi    }];
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AK12   IOSTANDARD LVCMOS25 } [get_ports { tms    }];
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets tck_IBUF]
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN Y20 IOSTANDARD LVCMOS18} [get_ports tx];    # PMOD1_4_LS
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AA20 IOSTANDARD LVCMOS18} [get_ports rx];    # PMOD1_5_LS
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB17  IOSTANDARD LVCMOS25} [get_ports {sw[0]}]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AC16  IOSTANDARD LVCMOS25} [get_ports {sw[1]}]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AC17 IOSTANDARD LVCMOS25} [get_ports {sw[2]}]
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AJ13  IOSTANDARD LVCMOS25} [get_ports {sw[3]}]
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB19 IOSTANDARD LVCMOS25} [get_ports fan_pwm]
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 8.000 -name eth_rxck [get_ports eth_rxck]
set_property src_info {type:XDC file:1 line:145 export:INPUT save:INPUT read:READ} [current_design]
set_clock_groups -asynchronous -group [get_clocks eth_rxck -include_generated_clocks]
set_property src_info {type:XDC file:1 line:146 export:INPUT save:INPUT read:READ} [current_design]
set_clock_groups -asynchronous -group [get_clocks clk_out2_xlnx_clk_gen]
set_property src_info {type:XDC file:1 line:151 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AJ21 IOSTANDARD LVCMOS25} [get_ports spi_clk_o];    # PMOD1_0_LS
set_property src_info {type:XDC file:1 line:152 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AK21 IOSTANDARD LVCMOS25} [get_ports spi_ss];       # PMOD1_1_LS
set_property src_info {type:XDC file:1 line:153 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB21 IOSTANDARD LVCMOS25} [get_ports spi_miso];     # PMOD1_2_LS
set_property src_info {type:XDC file:1 line:154 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict {PACKAGE_PIN AB16 IOSTANDARD LVCMOS25} [get_ports spi_mosi];     # PMOD1_3_LS
set_property src_info {type:XDC file:1 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property src_info {type:XDC file:1 line:202 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -from [get_ports { trst_n } ] 20
set_property src_info {type:XDC file:1 line:205 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_ports { trst_n } ]
set_property src_info {type:XDC file:1 line:206 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_pins i_ddr/u_xlnx_mig_7_ddr3_mig/u_ddr3_infrastructure/rstdiv0_sync_r1_reg_rep/C]
set_property src_info {type:XDC file:2 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter tck 1.000
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_false_path   -from                    [get_ports trst_n ]
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/data_src_q_reg*/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/data_dst_q_reg*/D] 20.000
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_src/req_src_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_resp/i_dst/req_dst_q_reg/D] 20.000
set_property src_info {type:XDC file:2 line:15 export:INPUT save:INPUT read:READ} [current_design]
set_max_delay -datapath_only -from [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_dst/ack_dst_q_reg/C] -to [get_pins i_dmi_jtag/i_dmi_cdc/i_cdc_req/i_src/ack_src_q_reg/D] 20.000
set_property src_info {type:XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_multicycle_path -from [get_pins i_rstgen_main/i_rstgen_bypass/synch_regs_q_reg[3]/C] 3  -hold
