<?xml version="1.0" encoding="UTF-8"?>
<project name="IOShieldDemo" board="Mojo V3" language="Lucid">
  <files>
    <src>button.luc</src>
    <src>alu4.luc</src>
    <src>multi_seven_seg.luc</src>
    <src top="true">mojo_top.luc</src>
    <src>zvn.luc</src>
    <src>adder4.luc</src>
    <src>multi_dec_ctr.luc</src>
    <src>decimal_counter.luc</src>
    <src>shift4.luc</src>
    <src>compare4.luc</src>
    <src>seven_seg.luc</src>
    <src>boole4.luc</src>
    <src>lfsr_randomizer.luc</src>
    <ucf>add_to_ucf.ucf</ucf>
    <ucf lib="true">io_shield.ucf</ucf>
    <ucf lib="true">mojo.ucf</ucf>
    <component>decoder.luc</component>
    <component>reset_conditioner.luc</component>
    <component>pipeline.luc</component>
    <component>button_conditioner.luc</component>
    <component>counter.luc</component>
    <component>edge_detector.luc</component>
  </files>
</project>
