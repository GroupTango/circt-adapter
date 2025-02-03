hw.module @A(in %clk: !seq.clock, in %in0 : i32, in %in1 : i32, out out0 : i32) {
  %0 = comb.add %in0, %in1 : i32
  %1 = seq.compreg %0, %clk : i32
  hw.output %1 : i32
}

hw.module @B(in %clk: !seq.clock, in %in0 : i32, in %in1 : i32, out out0 : i32) {
  %c-1_i32 = hw.constant -1 : i32
  %0 = hw.instance "a" @A(clk: %clk: !seq.clock, in0: %in0: i32, in1: %in1: i32) -> (out0: i32)
  %1 = comb.xor %0, %c-1_i32 : i32
  hw.output %1 : i32
}
