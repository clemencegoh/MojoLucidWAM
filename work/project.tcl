set projDir "G:/WhackAMoleFinal/work/planAhead"
set projName "IOShieldDemo"
set topName top
set device xc6slx9-2tqg144
if {[file exists "$projDir/$projName"]} { file delete -force "$projDir/$projName" }
create_project $projName "$projDir/$projName" -part $device
set_property design_mode RTL [get_filesets sources_1]
set verilogSources [list "G:/WhackAMoleFinal/work/verilog/mojo_top_0.v" "G:/WhackAMoleFinal/work/verilog/alu4_1.v" "G:/WhackAMoleFinal/work/verilog/reset_conditioner_2.v" "G:/WhackAMoleFinal/work/verilog/edge_detector_3.v" "G:/WhackAMoleFinal/work/verilog/multi_seven_seg_4.v" "G:/WhackAMoleFinal/work/verilog/multi_dec_ctr_5.v" "G:/WhackAMoleFinal/work/verilog/lfsr_randomizer_6.v" "G:/WhackAMoleFinal/work/verilog/counter_7.v" "G:/WhackAMoleFinal/work/verilog/button_8.v" "G:/WhackAMoleFinal/work/verilog/adder4_9.v" "G:/WhackAMoleFinal/work/verilog/compare4_10.v" "G:/WhackAMoleFinal/work/verilog/shift4_11.v" "G:/WhackAMoleFinal/work/verilog/boole4_12.v" "G:/WhackAMoleFinal/work/verilog/zvn_13.v" "G:/WhackAMoleFinal/work/verilog/counter_14.v" "G:/WhackAMoleFinal/work/verilog/seven_seg_15.v" "G:/WhackAMoleFinal/work/verilog/decoder_16.v" "G:/WhackAMoleFinal/work/verilog/decimal_counter_17.v" "G:/WhackAMoleFinal/work/verilog/button_conditioner_18.v" "G:/WhackAMoleFinal/work/verilog/button_conditioner_18.v" "G:/WhackAMoleFinal/work/verilog/button_conditioner_18.v" "G:/WhackAMoleFinal/work/verilog/pipeline_21.v" "G:/WhackAMoleFinal/work/verilog/pipeline_21.v" "G:/WhackAMoleFinal/work/verilog/pipeline_21.v"]
import_files -fileset [get_filesets sources_1] -force -norecurse $verilogSources
set ucfSources [list "G:/WhackAMoleFinal/constraint/add_to_ucf.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/io_shield.ucf" "C:/Program\ Files/Mojo\ IDE/library/components/mojo.ucf"]
import_files -fileset [get_filesets constrs_1] -force -norecurse $ucfSources
set_property -name {steps.bitgen.args.More Options} -value {-g Binary:Yes -g Compress} -objects [get_runs impl_1]
set_property steps.map.args.mt on [get_runs impl_1]
set_property steps.map.args.pr b [get_runs impl_1]
set_property steps.par.args.mt on [get_runs impl_1]
update_compile_order -fileset sources_1
launch_runs -runs synth_1
wait_on_run synth_1
launch_runs -runs impl_1
wait_on_run impl_1
launch_runs impl_1 -to_step Bitgen
wait_on_run impl_1
