 hw.module.extern private @plusarg_reader<DEFAULT: ui32, FORMAT: none, WIDTH: ui32>(out out : i32) attributes {verilogName = "plusarg_reader"}

hw.module private @TLROM(in %clock : !seq.clock, in %reset : i1, out auto_in_a_ready : i1, in %auto_in_a_valid : i1, in %auto_in_a_bits_opcode : i3, in %auto_in_a_bits_param : i3, in %auto_in_a_bits_size : i2, in %auto_in_a_bits_source : i7, in %auto_in_a_bits_address : i17, in %auto_in_a_bits_mask : i8, in %auto_in_a_bits_corrupt : i1, in %auto_in_d_ready : i1, out auto_in_d_valid : i1, out auto_in_d_bits_size : i2, out auto_in_d_bits_source : i7, out auto_in_d_bits_data : i64) {
  %0 = hw.aggregate_constant [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8531335493478409075, 7598136042971558511, 7598258861922938156, 8530789015891241059, 7022365679699850594, 7305964991124693358, 3271695194615211364, 7954892377262224244, 8103508940177043049, 32481142782176628, 8462391747554405219, 8028901089282387045, 7146486258522153763, 32481117229642240, 7308326720558886912, 8243113905953600622, 8026308939030557298, 7310589492387343468, 7305732998651277938, 7310589492967011433, 7813871992249807872, 8319683848551202931, 7957694959391502445, 8082965600733327872, 8751735915869402478, 7021788501594090614, 7166187370430165865, 3203857532262154343, 7309905580718776675, 3273102588373642612, 8675461205180053876, 3275644618907417193, 8299397906258815232, 8319385957017218164, 3272147040106804013, 7307199665335527680, 8319385957017413731, 7017502573374831209, 8299407763129000493, 7307199665335527680, 8389772277103555694, 7597414702895166050, 3270569322169066866, 7023192586330832997, 8104636957501647222, 7305964931347215149, 7092171251501790068, 7310236520902045028, 28563565970285928, 7161113929098228596, 7310236533718737251, 3270739665223250733, 7738151096046937448, 7161113929098230115, 7954893446713599533, 7738151096060770659, 7954893446713599533, 7310293695388805492, 30510779525300325, 7809920652385742191, 7133828719267111725, 7312272888218809196, 7810758175605613938, 7234013704566603776, 144115188109410304, 144115188082893679, 7810136088012941670, 1945555039225380864, 216172782113811299, 8028901497304867443, -6845189958441893888, 216172782120455453, 4539628424456568832, 216172782113783808, -7781938681052397568, 216172782113811299, 8028901497304867443, 72057594071482368, 30792294642810880, 288230376202043392, 1099511628032, 1873778920097054720, 216172782116957551, 8227062178547919219, 1945555039225380864, 216172782113783856, 3472328300795096946, 72057594071482368, 30227152718998884, 7311709882296565760, 864691128505466880, 118074815308639, 8319664122513915904, 792633534467538944, 28654498142486528, 288230376202043392, 2483093504, 288230376202043392, 118074815308639, 8319664119829495808, 144115188075855904, 412316860512, -8286341839183675392, 216172782113813365, 7074422106086009203, 1945555039208603648, 216172782130561024, 1080863910636027904, 216172782130561024, 67108864, 216172782116941872, 3472328296329393257, 8674264335451648045, 8028068125700259840, 144115188082893679, 7810136088012941670, 1945555039225380864, 216172782113811299, 8028901497304867437, -6845189958441893888, 216172782120455453, 4539628424456568832, 216172782113783808, -7781938681052397568, 216172782113811299, 8028901497304867437, 72057594071482368, 4060151808, 288230376202043392, 3741384704, 288230376202043392, 30521834855100259, -4034943791013036032, 216172782113783812, 51975880704, 576460752353755136, 648518346374905856, 792633534450761728, -5476095671637377024, 216172783992897536, 50331648, 13620103324118134, 7166187370876764160, 864691128505466880, 72057595631828992, 288230376202043392, 808464432, 3472384441150958700, 8030609103219010932, 8103508940177043049, 72057594071482368, 30227152718998884, 7311709882296565760, 864691128505466880, 118074815308639, 8319664079564242944, 792633534467538944, 28654498142486528, 288230376202043392, 2483093504, 288230376202043392, 118074815308639, 8319664076879822848, 144115188076904448, 13510799318384640, 576460752353755136, 208078336626, 7290313456054856051, 1945555039258935296, 216172782113783856, 3472331664374589814, 7306014465021080165, 72057594071482368, 30521834855100259, -4034943791013036032, 216172782114832384, 436273152, 576460752353755136, -281474943156224, -5476095671771594752, 216172782120693092, -3314367850700865536, 216172782113783808, 3688782541360554597, 7218274472278192640, 3688782541360554597, 7218255862016928115, 1945555039577702400, 216172782113796160, 8243113905953600622, 8026308883278620004, 72057594071482368, 30521834855100259, -4034943791013036032, 216172782113784064, 9026207744, 576460752353755136, 504403158299049984, 216172782147338240, -5476095671637377024, 216172782113783808, 3491537010188037238, 7166187370876764160, 936748722543394816, 206966894640, 3472909131468860515, 72057594071482368, 30227152718998884, 7311709882296565760, 864691128505466880, 118074815308639, 8319664066679341056, 792633534467538944, 28654498142486528, 288230376202043392, 2483093504, 288230376202043392, 118074815308639, 8319664063994920960, -8286341839385001984, 216172782121350498, 3271139934482297600, 7165072170965688697, 8100120179959292258, 3270285634039709696, 2305843009264025600, 72057594289586176, 288230376202043392, 72057594037927936, 288230376202043392, 27988562423054336, 144115188092633088, -8862802591621316608, 216172782113783824, 550192087040, 576460752353755136, 133532402673005, -7926335344054632448, 216172782116941872, 3472328296362965362, 8029185229514080256, 144115188109410304, 144115188109410304, -8862802591621316608, 216172783992897536, 50331648, 109351719742837, 8098365441928554866, 1945555039275712512, 216172782130561024, 6845752908646973440, 216172782113783808, 8243113905953600622, 8026308939030557298, 7310589492396556288, 6125176968200585216, 216172783191854848, 3170534137735938048, 216172782113783808, 8746390077124444160, 360287970239971328, 576460753326899200, 288230376202043392, 288230376822865920, 288230376202043392, 120329555507807, 7594585672428972410, 6877686451756753764, 7377297963224561266, 2162009296634642432, 216172782113783808, 1873778920029945856, 216172782130561024, 648799821385170944, 216172782113798451, 8535214605783492978, 281475161260032, 216172782650654720, -792633534350098432, 216172782130561024, -1585267068767305728, 216172782117978112, -2522015791260368896, 216172783187525632, -3458764513753432064, 216172783187525632, -4827858800474062848, 216172782113783808, -7061644215649828864, 216172782121480291, -7926335344104964096, 216172782248001536, -8718968878522171392, 216172782130561024, 8935141660770172928, 216172782117978112, 7998392938277109760, 216172783187525632, 7061644215784046592, 216172783187525632, 5692549929063415808, 216172782121542515, 7598135729321897826, 3202729359309955957, 1945555039359598592, 216172782113783808, 4539628424456568832, 216172782113783856, 4644742161223385088, 4630279860302905344, 288230376202043392, 251658240, 288230376202043392, 72057594037927936, 288230376202043392, 1937076323, 72057594037927936, 7237954725342701667, 3202729359309955957, 2738188573726474240, 216172782113783808, 8531335215244796281, 8100120179959292258, 3270285634039709696, 1513209474846818304, 72057594289586176, 288230376202043392, 72057594037927936, 288230376202043392, 16777216, 0, 0, 6055089703244333056, 268435456, 1224979099315863552, -8356429107646431232, -8572038936753467952, -9024310469463953, 0, 0, 0, 0, 0, 211059261571187, 45775020022039223, -7889740307253689701] : !hw.array<512xi64>
  %c0_i4 = hw.constant 0 : i4
  %c0_i64 = hw.constant 0 : i64
  hw.instance "monitor" @TLMonitor_27(clock: %clock: !seq.clock, reset: %reset: i1, io_in_a_ready: %auto_in_d_ready: i1, io_in_a_valid: %auto_in_a_valid: i1, io_in_a_bits_opcode: %auto_in_a_bits_opcode: i3, io_in_a_bits_param: %auto_in_a_bits_param: i3, io_in_a_bits_size: %auto_in_a_bits_size: i2, io_in_a_bits_source: %auto_in_a_bits_source: i7, io_in_a_bits_address: %auto_in_a_bits_address: i17, io_in_a_bits_mask: %auto_in_a_bits_mask: i8, io_in_a_bits_corrupt: %auto_in_a_bits_corrupt: i1, io_in_d_ready: %auto_in_d_ready: i1, io_in_d_valid: %auto_in_a_valid: i1, io_in_d_bits_size: %auto_in_a_bits_size: i2, io_in_d_bits_source: %auto_in_a_bits_source: i7) -> ()
  %1 = comb.extract %auto_in_a_bits_address from 3 {sv.namehint = "index"} : (i17) -> i9
  %2 = comb.extract %auto_in_a_bits_address from 12 {sv.namehint = "high"} : (i17) -> i4
  %3 = comb.icmp bin ne %2, %c0_i4 {sv.namehint = "_nodeIn_d_bits_T"} : i4
  %4 = hw.array_get %0[%1] : !hw.array<512xi64>, i9
  %5 = comb.mux bin %3, %c0_i64, %4 {sv.namehint = "nodeIn_d_bits_d_data"} : i64
  hw.output %auto_in_d_ready, %auto_in_a_valid, %auto_in_a_bits_size, %auto_in_a_bits_source, %5 : i1, i1, i2, i7, i64
}

hw.module private @TLMonitor_27(in %clock : !seq.clock, in %reset : i1, in %io_in_a_ready : i1, in %io_in_a_valid : i1, in %io_in_a_bits_opcode : i3, in %io_in_a_bits_param : i3, in %io_in_a_bits_size : i2, in %io_in_a_bits_source : i7, in %io_in_a_bits_address : i17, in %io_in_a_bits_mask : i8, in %io_in_a_bits_corrupt : i1, in %io_in_d_ready : i1, in %io_in_d_valid : i1, in %io_in_d_bits_size : i2, in %io_in_d_bits_source : i7) {
    %c1_i32 = hw.constant 1 : i32
    %0 = hw.aggregate_constant [-4 : i3, -3 : i3, 2 : i3, 1 : i3, 1 : i3, 1 : i3, 0 : i3, 0 : i3] : !hw.array<8xi3>
    %1 = hw.aggregate_constant [-4 : i3, -4 : i3, 2 : i3, 1 : i3, 1 : i3, 1 : i3, 0 : i3, 0 : i3] : !hw.array<8xi3>
    %c0_i1030 = hw.constant 0 : i1030
    %c0_i1017 = hw.constant 0 : i1017
    %c0_i1018 = hw.constant 0 : i1018
    %c0_i311 = hw.constant 0 : i311
    %c-1_i2 = hw.constant -1 : i2
    %c-48_i7 = hw.constant -48 : i7
    %c15_i1039 = hw.constant 15 : i1039
    %c1_i128 = hw.constant 1 : i128
    %c1_i4 = hw.constant 1 : i4
    %c7_i6 = hw.constant 7 : i6
    %true = hw.constant true {sv.namehint = "mask_size"}
    %false = hw.constant false
    %c1_i3 = hw.constant 1 : i3
    %c0_i3 = hw.constant 0 : i3
    %c0_i320 = hw.constant 0 : i320
    %c0_i4 = hw.constant 0 : i4
    %c0_i80 = hw.constant 0 : i80
    %c-4_i3 = hw.constant -4 : i3
    %c-3_i3 = hw.constant -3 : i3
    %c2_i3 = hw.constant 2 : i3
    %c0_i32 = hw.constant 0 : i32
    %c3_i3 = hw.constant 3 : i3
    %c-2_i3 = hw.constant -2 : i3
    %c-1_i3 = hw.constant -1 : i3
    %c0_i2 = hw.constant 0 : i2
    %c-1_i320 = hw.constant -1 : i320
    %c-1_i80 = hw.constant -1 : i80
    %c0_i73 = hw.constant 0 : i73
    %c0_i1023 = hw.constant 0 : i1023
    %c0_i121 = hw.constant 0 : i121
    %c0_i8 = hw.constant 0 : i8
    %c-1_i8 = hw.constant -1 : i8
    %2 = seq.from_clock %clock
    %3 = comb.icmp bin ult %io_in_a_bits_source, %c-48_i7 {sv.namehint = "_source_ok_T_5"} : i7
    %4 = comb.concat %c0_i4, %io_in_a_bits_size : i4, i2
    %5 = comb.shl bin %c7_i6, %4 {sv.namehint = "_is_aligned_mask_T"} : i6
    %6 = comb.extract %5 from 0 {sv.namehint = "_is_aligned_mask_T_1"} : (i6) -> i3
    %7 = comb.xor bin %6, %c-1_i3 {sv.namehint = "is_aligned_mask"} : i3
    %8 = comb.extract %io_in_a_bits_address from 0 : (i17) -> i3
    %9 = comb.and bin %8, %7 : i3
    %10 = comb.icmp bin eq %9, %c0_i3 {sv.namehint = "is_aligned"} : i3
    %11 = comb.concat %c0_i2, %io_in_a_bits_size : i2, i2
    %12 = comb.shl bin %c1_i4, %11 {sv.namehint = "_mask_sizeOH_T_1"} : i4
    %13 = comb.icmp bin eq %io_in_a_bits_size, %c-1_i2 {sv.namehint = "mask_sub_sub_sub_0_1"} : i2
    %14 = comb.extract %12 from 2 {sv.namehint = "mask_sub_sub_size"} : (i4) -> i1
    %15 = comb.extract %io_in_a_bits_address from 2 {sv.namehint = "mask_sub_sub_bit"} : (i17) -> i1
    %16 = comb.xor bin %15, %true {sv.namehint = "mask_sub_sub_nbit"} : i1
    %17 = comb.and bin %14, %16 {sv.namehint = "_mask_sub_sub_acc_T"} : i1
    %18 = comb.or bin %13, %17 {sv.namehint = "mask_sub_sub_0_1"} : i1
    %19 = comb.and bin %14, %15 {sv.namehint = "_mask_sub_sub_acc_T_1"} : i1
    %20 = comb.or bin %13, %19 {sv.namehint = "mask_sub_sub_1_1"} : i1
    %21 = comb.extract %12 from 1 {sv.namehint = "mask_sub_size"} : (i4) -> i1
    %22 = comb.extract %io_in_a_bits_address from 1 {sv.namehint = "mask_sub_bit"} : (i17) -> i1
    %23 = comb.xor bin %22, %true {sv.namehint = "mask_sub_nbit"} : i1
    %24 = comb.and bin %16, %23 {sv.namehint = "mask_sub_0_2"} : i1
    %25 = comb.and bin %21, %24 {sv.namehint = "_mask_sub_acc_T"} : i1
    %26 = comb.or bin %18, %25 {sv.namehint = "mask_sub_0_1"} : i1
    %27 = comb.and bin %16, %22 {sv.namehint = "mask_sub_1_2"} : i1
    %28 = comb.and bin %21, %27 {sv.namehint = "_mask_sub_acc_T_1"} : i1
    %29 = comb.or bin %18, %28 {sv.namehint = "mask_sub_1_1"} : i1
    %30 = comb.and bin %15, %23 {sv.namehint = "mask_sub_2_2"} : i1
    %31 = comb.and bin %21, %30 {sv.namehint = "_mask_sub_acc_T_2"} : i1
    %32 = comb.or bin %20, %31 {sv.namehint = "mask_sub_2_1"} : i1
    %33 = comb.and bin %15, %22 {sv.namehint = "mask_sub_3_2"} : i1
    %34 = comb.and bin %21, %33 {sv.namehint = "_mask_sub_acc_T_3"} : i1
    %35 = comb.or bin %20, %34 {sv.namehint = "mask_sub_3_1"} : i1
    %36 = comb.extract %io_in_a_bits_address from 0 {sv.namehint = "mask_bit"} : (i17) -> i1
    %37 = comb.xor bin %36, %true {sv.namehint = "mask_nbit"} : i1
    %38 = comb.and bin %24, %37 {sv.namehint = "mask_eq"} : i1
    %39 = comb.or bin %26, %38 {sv.namehint = "mask_acc"} : i1
    %40 = comb.and bin %24, %36 {sv.namehint = "mask_eq_1"} : i1
    %41 = comb.or bin %26, %40 {sv.namehint = "mask_acc_1"} : i1
    %42 = comb.and bin %27, %37 {sv.namehint = "mask_eq_2"} : i1
    %43 = comb.or bin %29, %42 {sv.namehint = "mask_acc_2"} : i1
    %44 = comb.and bin %27, %36 {sv.namehint = "mask_eq_3"} : i1
    %45 = comb.or bin %29, %44 {sv.namehint = "mask_acc_3"} : i1
    %46 = comb.and bin %30, %37 {sv.namehint = "mask_eq_4"} : i1
    %47 = comb.or bin %32, %46 {sv.namehint = "mask_acc_4"} : i1
    %48 = comb.and bin %30, %36 {sv.namehint = "mask_eq_5"} : i1
    %49 = comb.or bin %32, %48 {sv.namehint = "mask_acc_5"} : i1
    %50 = comb.and bin %33, %37 {sv.namehint = "mask_eq_6"} : i1
    %51 = comb.or bin %35, %50 {sv.namehint = "mask_acc_6"} : i1
    %52 = comb.and bin %33, %36 {sv.namehint = "mask_eq_7"} : i1
    %53 = comb.or bin %35, %52 {sv.namehint = "mask_acc_7"} : i1
    %54 = comb.concat %53, %51, %49, %47, %45, %43, %41, %39 {sv.namehint = "mask"} : i1, i1, i1, i1, i1, i1, i1, i1
    %55 = comb.icmp bin eq %io_in_a_bits_opcode, %c-2_i3 : i3
    %56 = comb.xor bin %reset, %true : i1
    %57 = comb.and bin %io_in_a_valid, %55, %56 : i1
    %58 = comb.icmp bin ult %io_in_a_bits_param, %c3_i3 : i3
    %59 = comb.icmp eq %io_in_a_bits_mask, %c-1_i8 : i8
    %60 = comb.xor bin %io_in_a_bits_corrupt, %true : i1
    %61 = comb.icmp bin eq %io_in_a_bits_opcode, %c-1_i3 : i3
    %62 = comb.and bin %io_in_a_valid, %61, %56 : i1
    %63 = comb.icmp bin ne %io_in_a_bits_param, %c0_i3 : i3
    %64 = comb.icmp bin eq %io_in_a_bits_opcode, %c-4_i3 : i3
    %65 = comb.icmp bin ult %io_in_a_bits_source, %c-48_i7 : i7
    %66 = comb.and bin %io_in_a_valid, %64, %56 : i1
    %67 = comb.extract %io_in_a_bits_address from 16 : (i17) -> i1
    %68 = comb.xor bin %63, %true : i1
    %69 = comb.icmp bin eq %io_in_a_bits_mask, %54 : i8
    %70 = comb.icmp bin eq %io_in_a_bits_opcode, %c0_i3 : i3
    %71 = comb.and bin %io_in_a_valid, %70, %56 : i1
    %72 = comb.icmp bin eq %io_in_a_bits_opcode, %c1_i3 : i3
    %73 = comb.and bin %io_in_a_valid, %72, %56 : i1
    %74 = comb.xor bin %54, %c-1_i8 : i8
    %75 = comb.and bin %io_in_a_bits_mask, %74 : i8
    %76 = comb.icmp bin eq %75, %c0_i8 : i8
    %77 = comb.icmp bin eq %io_in_a_bits_opcode, %c2_i3 : i3
    %78 = comb.and bin %io_in_a_valid, %77, %56 : i1
    %79 = comb.icmp bin ult %io_in_a_bits_param, %c-3_i3 : i3
    %80 = comb.icmp bin eq %io_in_a_bits_opcode, %c3_i3 : i3
    %81 = comb.and bin %io_in_a_valid, %80, %56 : i1
    %82 = comb.extract %io_in_a_bits_param from 2 : (i3) -> i1
    %83 = comb.xor bin %82, %true : i1
    %84 = comb.icmp bin eq %io_in_a_bits_opcode, %c-3_i3 : i3
    %85 = comb.and bin %io_in_a_valid, %84, %56 : i1
    %86 = comb.icmp bin ult %io_in_a_bits_param, %c2_i3 : i3
    %87 = comb.icmp bin ult %io_in_d_bits_source, %c-48_i7 {sv.namehint = "_source_ok_T_11"} : i7
    %88 = comb.and bin %io_in_d_valid, %56 : i1
    %89 = comb.and bin %io_in_a_ready, %io_in_a_valid {sv.namehint = "a_first_done"} : i1
    %a_first_counter = seq.firreg %94 clock %clock reset sync %reset, %false {firrtl.random_init_start = 0 : ui64} : i1
    %90 = comb.add %a_first_counter, %true {sv.namehint = "_a_first_counter1_T"} : i1
    %91 = comb.xor bin %a_first_counter, %true {sv.namehint = "a_first"} : i1
    %92 = comb.xor %89, %true : i1
    %93 = comb.or %92, %90 : i1
    %94 = comb.and %93, %a_first_counter : i1
    %opcode = seq.firreg %102 clock %clock {firrtl.random_init_start = 1 : ui64} : i3
    %param = seq.firreg %103 clock %clock {firrtl.random_init_start = 4 : ui64} : i3
    %size = seq.firreg %104 clock %clock {firrtl.random_init_start = 7 : ui64} : i2
    %source = seq.firreg %105 clock %clock {firrtl.random_init_start = 9 : ui64} : i7
    %address = seq.firreg %106 clock %clock {firrtl.random_init_start = 16 : ui64} : i17
    %95 = comb.icmp bin eq %io_in_a_bits_opcode, %opcode : i3
    %96 = comb.and bin %io_in_a_valid, %a_first_counter, %56 : i1
    %97 = comb.icmp bin eq %io_in_a_bits_param, %param : i3
    %98 = comb.icmp bin eq %io_in_a_bits_size, %size : i2
    %99 = comb.icmp bin eq %io_in_a_bits_source, %source : i7
    %100 = comb.icmp bin eq %io_in_a_bits_address, %address : i17
    %101 = comb.and bin %89, %91 : i1
    %102 = comb.mux bin %101, %io_in_a_bits_opcode, %opcode : i3
    %103 = comb.mux bin %101, %io_in_a_bits_param, %param : i3
    %104 = comb.mux bin %101, %io_in_a_bits_size, %size : i2
    %105 = comb.mux bin %101, %io_in_a_bits_source, %source : i7
    %106 = comb.mux bin %101, %io_in_a_bits_address, %address : i17
    %107 = comb.and bin %io_in_d_ready, %io_in_d_valid {sv.namehint = "d_first_done"} : i1
    %d_first_counter = seq.firreg %112 clock %clock reset sync %reset, %false {firrtl.random_init_start = 33 : ui64} : i1
    %108 = comb.add %d_first_counter, %true {sv.namehint = "_d_first_counter1_T"} : i1
    %109 = comb.xor bin %d_first_counter, %true {sv.namehint = "d_first"} : i1
    %110 = comb.xor %107, %true : i1
    %111 = comb.or %110, %108 : i1
    %112 = comb.and %111, %d_first_counter : i1
    %size_1 = seq.firreg %117 clock %clock {firrtl.random_init_start = 39 : ui64} : i2
    %source_1 = seq.firreg %118 clock %clock {firrtl.random_init_start = 41 : ui64} : i7
    %113 = comb.icmp bin eq %io_in_d_bits_size, %size_1 : i2
    %114 = comb.and bin %io_in_d_valid, %d_first_counter, %56 : i1
    %115 = comb.icmp bin eq %io_in_d_bits_source, %source_1 : i7
    %116 = comb.and bin %107, %109 : i1
    %117 = comb.mux bin %116, %io_in_d_bits_size, %size_1 : i2
    %118 = comb.mux bin %116, %io_in_d_bits_source, %source_1 : i7
    %inflight = seq.firreg %201 clock %clock reset sync %reset, %c0_i80 {firrtl.random_init_start = 50 : ui64} : i80
    %inflight_opcodes = seq.firreg %204 clock %clock reset sync %reset, %c0_i320 {firrtl.random_init_start = 130 : ui64} : i320
    %inflight_sizes = seq.firreg %207 clock %clock reset sync %reset, %c0_i320 {firrtl.random_init_start = 450 : ui64} : i320
    %a_first_counter_1 = seq.firreg %123 clock %clock reset sync %reset, %false {firrtl.random_init_start = 770 : ui64} : i1
    %119 = comb.add %a_first_counter_1, %true {sv.namehint = "_a_first_counter1_T_1"} : i1
    %120 = comb.xor bin %a_first_counter_1, %true {sv.namehint = "a_first_1"} : i1
    %121 = comb.xor %89, %true : i1
    %122 = comb.or %121, %119 : i1
    %123 = comb.and %122, %a_first_counter_1 : i1
    %d_first_counter_1 = seq.firreg %128 clock %clock reset sync %reset, %false {firrtl.random_init_start = 771 : ui64} : i1
    %124 = comb.add %d_first_counter_1, %true {sv.namehint = "_d_first_counter1_T_1"} : i1
    %125 = comb.xor bin %d_first_counter_1, %true {sv.namehint = "d_first_1"} : i1
    %126 = comb.xor %107, %true : i1
    %127 = comb.or %126, %124 : i1
    %128 = comb.and %127, %d_first_counter_1 : i1
    %129 = comb.concat %c0_i311, %io_in_d_bits_source, %c0_i2 : i311, i7, i2
    %130 = comb.shru bin %inflight_opcodes, %129 {sv.namehint = "_a_opcode_lookup_T_1"} : i320
    %131 = comb.extract %130 from 1 {sv.namehint = "a_opcode_lookup"} : (i320) -> i3
    %132 = comb.shru bin %inflight_sizes, %129 {sv.namehint = "_a_size_lookup_T_1"} : i320
    %133 = comb.extract %132 from 1 : (i320) -> i3
    %134 = comb.concat %false, %133 {sv.namehint = "a_size_lookup"} : i1, i3
    %135 = comb.and bin %89, %120 : i1
    %136 = comb.concat %c0_i121, %io_in_a_bits_source : i121, i7
    %137 = comb.shl bin %c1_i128, %136 {sv.namehint = "_a_set_T"} : i128
    %138 = comb.extract %137 from 0 : (i128) -> i80
    %139 = comb.mux bin %135, %138, %c0_i80 {sv.namehint = "a_set"} : i80
    %140 = comb.concat %io_in_a_bits_opcode, %true {sv.namehint = "_a_opcodes_set_interm_T_1"} : i3, i1
    %141 = comb.mux bin %135, %140, %c0_i4 {sv.namehint = "a_opcodes_set_interm"} : i4
    %142 = comb.concat %io_in_a_bits_size, %true {sv.namehint = "_a_sizes_set_interm_T_1"} : i2, i1
    %143 = comb.mux bin %135, %142, %c0_i3 {sv.namehint = "a_sizes_set_interm"} : i3
    %144 = comb.concat %c0_i1023, %141 : i1023, i4
    %145 = comb.concat %c0_i1018, %io_in_a_bits_source, %c0_i2 : i1018, i7, i2
    %146 = comb.shl bin %144, %145 {sv.namehint = "_a_opcodes_set_T_1"} : i1027
    %147 = comb.extract %146 from 0 : (i1027) -> i320
    %148 = comb.mux bin %135, %147, %c0_i320 {sv.namehint = "a_opcodes_set"} : i320
    %149 = comb.concat %c0_i1023, %143 : i1023, i3
    %150 = comb.concat %c0_i1017, %io_in_a_bits_source, %c0_i2 : i1017, i7, i2
    %151 = comb.shl bin %149, %150 {sv.namehint = "_a_sizes_set_T_1"} : i1026
    %152 = comb.extract %151 from 0 : (i1026) -> i320
    %153 = comb.mux bin %135, %152, %c0_i320 {sv.namehint = "a_sizes_set"} : i320
    %154 = comb.concat %c0_i73, %io_in_a_bits_source : i73, i7
    %155 = comb.shru bin %inflight, %154 : i80
    %156 = comb.extract %155 from 0 : (i80) -> i1
    %157 = comb.xor bin %156, %true : i1
    %158 = comb.and bin %135, %56 : i1
    %159 = comb.and bin %io_in_d_valid, %125 : i1
    %160 = comb.and bin %107, %125 : i1
    %161 = comb.concat %c0_i121, %io_in_d_bits_source : i121, i7
    %162 = comb.shl bin %c1_i128, %161 {sv.namehint = "_d_clr_T"} : i128
    %163 = comb.extract %162 from 0 : (i128) -> i80
    %164 = comb.mux bin %160, %163, %c0_i80 {sv.namehint = "d_clr"} : i80
    %165 = comb.concat %c0_i1030, %io_in_d_bits_source, %c0_i2 : i1030, i7, i2
    %166 = comb.shl bin %c15_i1039, %165 {sv.namehint = "_d_opcodes_clr_T_5"} : i1039
    %167 = comb.extract %166 from 0 : (i1039) -> i320
    %168 = comb.mux bin %160, %167, %c0_i320 {sv.namehint = "d_opcodes_clr"} : i320
    %169 = comb.shl bin %c15_i1039, %165 {sv.namehint = "_d_sizes_clr_T_5"} : i1039
    %170 = comb.extract %169 from 0 : (i1039) -> i320
    %171 = comb.mux bin %160, %170, %c0_i320 {sv.namehint = "d_sizes_clr"} : i320
    %172 = comb.icmp bin eq %io_in_a_bits_source, %io_in_d_bits_source {sv.namehint = "_same_cycle_resp_T_2"} : i7
    %173 = comb.and bin %io_in_a_valid, %120, %172 {sv.namehint = "same_cycle_resp"} : i1
    %174 = comb.concat %c0_i73, %io_in_d_bits_source : i73, i7
    %175 = comb.shru bin %inflight, %174 : i80
    %176 = comb.extract %175 from 0 : (i80) -> i1
    %177 = comb.or bin %176, %173 : i1
    %178 = comb.and bin %159, %56 : i1
    %179 = hw.array_get %1[%io_in_a_bits_opcode] : !hw.array<8xi3>, i3
    %180 = comb.icmp bin eq %179, %c1_i3 : i3
    %181 = hw.array_get %0[%io_in_a_bits_opcode] : !hw.array<8xi3>, i3
    %182 = comb.icmp bin eq %181, %c1_i3 : i3
    %183 = comb.or bin %180, %182 : i1
    %184 = comb.and bin %159, %173, %56 : i1
    %185 = comb.icmp bin eq %io_in_a_bits_size, %io_in_d_bits_size : i2
    %186 = comb.xor bin %173, %true : i1
    %187 = hw.array_get %1[%131] : !hw.array<8xi3>, i3
    %188 = comb.icmp bin eq %187, %c1_i3 : i3
    %189 = hw.array_get %0[%131] : !hw.array<8xi3>, i3
    %190 = comb.icmp bin eq %189, %c1_i3 : i3
    %191 = comb.or bin %188, %190 : i1
    %192 = comb.and bin %159, %186, %56 : i1
    %193 = comb.concat %c0_i2, %io_in_d_bits_size : i2, i2
    %194 = comb.icmp bin eq %193, %134 : i4
    %195 = comb.icmp bin eq %io_in_a_bits_source, %io_in_d_bits_source : i7
    %196 = comb.xor bin %io_in_d_ready, %true : i1
    %197 = comb.or bin %196, %io_in_a_ready : i1
    %198 = comb.and bin %159, %120, %io_in_a_valid, %195, %56 : i1
    %199 = comb.or bin %inflight, %139 {sv.namehint = "_inflight_T"} : i80
    %200 = comb.xor bin %164, %c-1_i80 {sv.namehint = "_inflight_T_1"} : i80
    %201 = comb.and bin %199, %200 {sv.namehint = "_inflight_T_2"} : i80
    %202 = comb.or bin %inflight_opcodes, %148 {sv.namehint = "_inflight_opcodes_T"} : i320
    %203 = comb.xor bin %168, %c-1_i320 {sv.namehint = "_inflight_opcodes_T_1"} : i320
    %204 = comb.and bin %202, %203 {sv.namehint = "_inflight_opcodes_T_2"} : i320
    %205 = comb.or bin %inflight_sizes, %153 {sv.namehint = "_inflight_sizes_T"} : i320
    %206 = comb.xor bin %171, %c-1_i320 {sv.namehint = "_inflight_sizes_T_1"} : i320
    %207 = comb.and bin %205, %206 {sv.namehint = "_inflight_sizes_T_2"} : i320
    %watchdog = seq.firreg %214 clock %clock reset sync %reset, %c0_i32 {firrtl.random_init_start = 772 : ui64} : i32
    %plusarg_reader.out = hw.instance "plusarg_reader" @plusarg_reader<DEFAULT: ui32 = 0, FORMAT: none = "tilelink_timeout=%d", WIDTH: ui32 = 32>() -> (out: i32)
    %208 = comb.icmp bin eq %inflight, %c0_i80 : i80
    %209 = comb.icmp bin eq %plusarg_reader.out, %c0_i32 : i32
    %210 = comb.icmp bin ult %watchdog, %plusarg_reader.out : i32
    %211 = comb.or bin %208, %209, %210 : i1
    sv.always posedge %2 {
      sv.if %57 {
        sv.assert %false, immediate label "assert__assert_2"
      }
      sv.if %57 {
        sv.assert %false, immediate label "assert__assert_3"
      }
      sv.if %57 {
        sv.assert %3, immediate label "assert__assert_4"
      }
      sv.if %57 {
        sv.assert %13, immediate label "assert__assert_5"
      }
      sv.if %57 {
        sv.assert %10, immediate label "assert__assert_6"
      }
      sv.if %57 {
        sv.assert %58, immediate label "assert__assert_7"
      }
      sv.if %57 {
        sv.assert %59, immediate label "assert__assert_8"
      }
      sv.if %57 {
        sv.assert %60, immediate label "assert__assert_9"
      }
      sv.if %62 {
        sv.assert %false, immediate label "assert__assert_10"
      }
      sv.if %62 {
        sv.assert %false, immediate label "assert__assert_11"
      }
      sv.if %62 {
        sv.assert %3, immediate label "assert__assert_12"
      }
      sv.if %62 {
        sv.assert %13, immediate label "assert__assert_13"
      }
      sv.if %62 {
        sv.assert %10, immediate label "assert__assert_14"
      }
      sv.if %62 {
        sv.assert %58, immediate label "assert__assert_15"
      }
      sv.if %62 {
        sv.assert %63, immediate label "assert__assert_16"
      }
      sv.if %62 {
        sv.assert %59, immediate label "assert__assert_17"
      }
      sv.if %62 {
        sv.assert %60, immediate label "assert__assert_18"
      }
      sv.if %66 {
        sv.assert %65, immediate label "assert__assert_19"
      }
      sv.if %66 {
        sv.assert %67, immediate label "assert__assert_20"
      }
      sv.if %66 {
        sv.assert %3, immediate label "assert__assert_21"
      }
      sv.if %66 {
        sv.assert %10, immediate label "assert__assert_22"
      }
      sv.if %66 {
        sv.assert %68, immediate label "assert__assert_23"
      }
      sv.if %66 {
        sv.assert %69, immediate label "assert__assert_24"
      }
      sv.if %66 {
        sv.assert %60, immediate label "assert__assert_25"
      }
      sv.if %71 {
        sv.assert %false, immediate label "assert__assert_26"
      }
      sv.if %71 {
        sv.assert %3, immediate label "assert__assert_27"
      }
      sv.if %71 {
        sv.assert %10, immediate label "assert__assert_28"
      }
      sv.if %71 {
        sv.assert %68, immediate label "assert__assert_29"
      }
      sv.if %71 {
        sv.assert %69, immediate label "assert__assert_30"
      }
      sv.if %73 {
        sv.assert %false, immediate label "assert__assert_31"
      }
      sv.if %73 {
        sv.assert %3, immediate label "assert__assert_32"
      }
      sv.if %73 {
        sv.assert %10, immediate label "assert__assert_33"
      }
      sv.if %73 {
        sv.assert %68, immediate label "assert__assert_34"
      }
      sv.if %73 {
        sv.assert %76, immediate label "assert__assert_35"
      }
      sv.if %78 {
        sv.assert %false, immediate label "assert__assert_36"
      }
      sv.if %78 {
        sv.assert %3, immediate label "assert__assert_37"
      }
      sv.if %78 {
        sv.assert %10, immediate label "assert__assert_38"
      }
      sv.if %78 {
        sv.assert %79, immediate label "assert__assert_39"
      }
      sv.if %78 {
        sv.assert %69, immediate label "assert__assert_40"
      }
      sv.if %81 {
        sv.assert %false, immediate label "assert__assert_41"
      }
      sv.if %81 {
        sv.assert %3, immediate label "assert__assert_42"
      }
      sv.if %81 {
        sv.assert %10, immediate label "assert__assert_43"
      }
      sv.if %81 {
        sv.assert %83, immediate label "assert__assert_44"
      }
      sv.if %81 {
        sv.assert %69, immediate label "assert__assert_45"
      }
      sv.if %85 {
        sv.assert %false, immediate label "assert__assert_46"
      }
      sv.if %85 {
        sv.assert %3, immediate label "assert__assert_47"
      }
      sv.if %85 {
        sv.assert %10, immediate label "assert__assert_48"
      }
      sv.if %85 {
        sv.assert %86, immediate label "assert__assert_49"
      }
      sv.if %85 {
        sv.assert %69, immediate label "assert__assert_50"
      }
      sv.if %85 {
        sv.assert %60, immediate label "assert__assert_51"
      }
      sv.if %88 {
        sv.assert %87, immediate label "assert__assert_76"
      }
      sv.if %96 {
        sv.assert %95, immediate label "assert__assert_87"
      }
      sv.if %96 {
        sv.assert %97, immediate label "assert__assert_88"
      }
      sv.if %96 {
        sv.assert %98, immediate label "assert__assert_89"
      }
      sv.if %96 {
        sv.assert %99, immediate label "assert__assert_90"
      }
      sv.if %96 {
        sv.assert %100, immediate label "assert__assert_91"
      }
      sv.if %114 {
        sv.assert %113, immediate label "assert__assert_94"
      }
      sv.if %114 {
        sv.assert %115, immediate label "assert__assert_95"
      }
      sv.if %158 {
        sv.assert %157, immediate label "assert__assert_98"
      }
      sv.if %178 {
        sv.assert %177, immediate label "assert__assert_99"
      }
      sv.if %184 {
        sv.assert %183, immediate label "assert__assert_100"
      }
      sv.if %184 {
        sv.assert %185, immediate label "assert__assert_101"
      }
      sv.if %192 {
        sv.assert %191, immediate label "assert__assert_102"
      }
      sv.if %192 {
        sv.assert %194, immediate label "assert__assert_103"
      }
      sv.if %198 {
        sv.assert %197, immediate label "assert__assert_104"
      }
      sv.if %56 {
        sv.assert %211, immediate label "assert__assert_105"
      }
    }
    %212 = comb.add bin %watchdog, %c1_i32 {sv.namehint = "_watchdog_T"} : i32
    %213 = comb.or bin %89, %107 : i1
    %214 = comb.mux bin %213, %c0_i32, %212 : i32
    %plusarg_reader_1.out = hw.instance "plusarg_reader_1" @plusarg_reader<DEFAULT: ui32 = 0, FORMAT: none = "tilelink_timeout=%d", WIDTH: ui32 = 32>() -> (out: i32)
    hw.output
  }