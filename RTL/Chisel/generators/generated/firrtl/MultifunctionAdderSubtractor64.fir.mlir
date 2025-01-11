module {
  hw.module @MultifunctionAdderSubtractor64(in %clock : i1, in %reset : i1, in %io_a : i64, in %io_b : i64, in %io_opcode : i4, in %io_carryIn : i1, out io_result : i64, out io_carryOut : i1, out io_overflowFlag : i1, out io_zeroFlag : i1, out io_negativeFlag : i1) {
    %io_a_0 = sv.wire sym @sym name "io_a" {hw.verilogName = "io_a_0"} : !hw.inout<i64>
    sv.assign %io_a_0, %io_a : i64
    %io_b_1 = sv.wire sym @sym_0 name "io_b" {hw.verilogName = "io_b_0"} : !hw.inout<i64>
    sv.assign %io_b_1, %io_b : i64
    %io_opcode_2 = sv.wire sym @sym_1 name "io_opcode" {hw.verilogName = "io_opcode_0"} : !hw.inout<i4>
    sv.assign %io_opcode_2, %io_opcode : i4
    %io_carryIn_3 = sv.wire sym @sym_2 name "io_carryIn" {hw.verilogName = "io_carryIn_0"} : !hw.inout<i1>
    sv.assign %io_carryIn_3, %io_carryIn : i1
    %c1_i65 = hw.constant 1 : i65
    %c1_i2 = hw.constant 1 : i2
    %c0_i65 = hw.constant 0 : i65
    %c-1_i2 = hw.constant -1 : i2
    %c0_i2 = hw.constant 0 : i2
    %true = hw.constant true
    %false = hw.constant false
    %c-2_i2 = hw.constant -2 : i2
    %c32_i7 = hw.constant 32 : i7
    %c16_i7 = hw.constant 16 : i7
    %c8_i7 = hw.constant 8 : i7
    %c4294967295_i64 = hw.constant 4294967295 : i64
    %c65535_i64 = hw.constant 65535 : i64
    %c255_i64 = hw.constant 255 : i64
    %c-64_i7 = hw.constant -64 : i7
    %_width_T_4 = sv.wire sym @sym_16 {hw.verilogName = "_width_T_4"} : !hw.inout<i7>
    sv.assign %_width_T_4, %c-64_i7 : i7
    %c-1_i64 = hw.constant -1 : i64
    %_mask_T_4 = sv.wire sym @sym_24 {hw.verilogName = "_mask_T_4"} : !hw.inout<i64>
    sv.assign %_mask_T_4, %c-1_i64 : i64
    %_io_carryOut_T_6 = sv.wire sym @sym_63 {hw.verilogName = "_io_carryOut_T_6"} : !hw.inout<i1>
    %isOverflow = sv.wire sym @sym_105 {hw.verilogName = "isOverflow"} : !hw.inout<i1>
    %isZero = sv.wire sym @sym_107 {hw.verilogName = "isZero"} : !hw.inout<i1>
    %isNegative = sv.wire sym @sym_108 {hw.verilogName = "isNegative"} : !hw.inout<i1>
    %0 = sv.read_inout %io_opcode_2 : !hw.inout<i4>
    %1 = comb.extract %0 from 3 : (i4) -> i1
    %_isSub_T = sv.wire sym @sym_8 {hw.verilogName = "_isSub_T"} : !hw.inout<i1>
    sv.assign %_isSub_T, %1 : i1
    %2 = sv.read_inout %_isSub_T : !hw.inout<i1>
    %isSub = sv.wire sym @sym_9 {hw.verilogName = "isSub"} : !hw.inout<i1>
    sv.assign %isSub, %2 : i1
    %3 = sv.read_inout %io_opcode_2 : !hw.inout<i4>
    %4 = comb.extract %3 from 2 : (i4) -> i1
    %isSigned = sv.wire sym @sym_10 {hw.verilogName = "isSigned"} : !hw.inout<i1>
    sv.assign %isSigned, %4 : i1
    %5 = sv.read_inout %io_opcode_2 : !hw.inout<i4>
    %6 = comb.extract %5 from 0 : (i4) -> i2
    %operandSize = sv.wire sym @sym_11 {hw.verilogName = "operandSize"} : !hw.inout<i2>
    sv.assign %operandSize, %6 : i2
    %7 = sv.read_inout %operandSize : !hw.inout<i2>
    %8 = comb.icmp bin eq %7, %c0_i2 : i2
    %9 = sv.wire {hw.verilogName = "_GEN"} : !hw.inout<i1>
    sv.assign %9, %8 : i1
    %_width_T = sv.wire sym @sym_12 {hw.verilogName = "_width_T"} : !hw.inout<i1>
    %10 = sv.read_inout %9 : !hw.inout<i1>
    sv.assign %_width_T, %10 : i1
    %_mask_T = sv.wire sym @sym_20 {hw.verilogName = "_mask_T"} : !hw.inout<i1>
    %11 = sv.read_inout %9 : !hw.inout<i1>
    sv.assign %_mask_T, %11 : i1
    %12 = sv.read_inout %operandSize : !hw.inout<i2>
    %13 = comb.icmp bin eq %12, %c1_i2 : i2
    %14 = sv.wire {hw.verilogName = "_GEN_0"} : !hw.inout<i1>
    sv.assign %14, %13 : i1
    %_width_T_1 = sv.wire sym @sym_13 {hw.verilogName = "_width_T_1"} : !hw.inout<i1>
    %15 = sv.read_inout %14 : !hw.inout<i1>
    sv.assign %_width_T_1, %15 : i1
    %_mask_T_1 = sv.wire sym @sym_21 {hw.verilogName = "_mask_T_1"} : !hw.inout<i1>
    %16 = sv.read_inout %14 : !hw.inout<i1>
    sv.assign %_mask_T_1, %16 : i1
    %17 = sv.read_inout %operandSize : !hw.inout<i2>
    %18 = comb.icmp bin eq %17, %c-2_i2 : i2
    %19 = sv.wire {hw.verilogName = "_GEN_1"} : !hw.inout<i1>
    sv.assign %19, %18 : i1
    %_width_T_2 = sv.wire sym @sym_14 {hw.verilogName = "_width_T_2"} : !hw.inout<i1>
    %20 = sv.read_inout %19 : !hw.inout<i1>
    sv.assign %_width_T_2, %20 : i1
    %_mask_T_2 = sv.wire sym @sym_22 {hw.verilogName = "_mask_T_2"} : !hw.inout<i1>
    %21 = sv.read_inout %19 : !hw.inout<i1>
    sv.assign %_mask_T_2, %21 : i1
    %22 = sv.read_inout %operandSize : !hw.inout<i2>
    %23 = comb.icmp bin eq %22, %c-1_i2 : i2
    %_width_T_3 = sv.wire sym @sym_15 {hw.verilogName = "_width_T_3"} : !hw.inout<i1>
    sv.assign %_width_T_3, %23 : i1
    %24 = sv.read_inout %_width_T_2 : !hw.inout<i1>
    %25 = comb.mux bin %24, %c32_i7, %c-64_i7 : i7
    %_width_T_5 = sv.wire sym @sym_17 {hw.verilogName = "_width_T_5"} : !hw.inout<i7>
    sv.assign %_width_T_5, %25 : i7
    %26 = sv.read_inout %_width_T_1 : !hw.inout<i1>
    %27 = sv.read_inout %_width_T_5 : !hw.inout<i7>
    %28 = comb.mux bin %26, %c16_i7, %27 : i7
    %_width_T_6 = sv.wire sym @sym_18 {hw.verilogName = "_width_T_6"} : !hw.inout<i7>
    sv.assign %_width_T_6, %28 : i7
    %29 = sv.read_inout %_width_T : !hw.inout<i1>
    %30 = sv.read_inout %_width_T_6 : !hw.inout<i7>
    %31 = comb.mux bin %29, %c8_i7, %30 : i7
    %width = sv.wire sym @sym_19 {hw.verilogName = "width"} : !hw.inout<i7>
    sv.assign %width, %31 : i7
    %32 = sv.read_inout %operandSize : !hw.inout<i2>
    %33 = comb.icmp bin eq %32, %c-1_i2 : i2
    %_mask_T_3 = sv.wire sym @sym_23 {hw.verilogName = "_mask_T_3"} : !hw.inout<i1>
    sv.assign %_mask_T_3, %33 : i1
    %34 = sv.read_inout %_mask_T_2 : !hw.inout<i1>
    %35 = comb.mux bin %34, %c4294967295_i64, %c-1_i64 : i64
    %_mask_T_5 = sv.wire sym @sym_25 {hw.verilogName = "_mask_T_5"} : !hw.inout<i64>
    sv.assign %_mask_T_5, %35 : i64
    %36 = sv.read_inout %_mask_T_1 : !hw.inout<i1>
    %37 = sv.read_inout %_mask_T_5 : !hw.inout<i64>
    %38 = comb.mux bin %36, %c65535_i64, %37 : i64
    %_mask_T_6 = sv.wire sym @sym_26 {hw.verilogName = "_mask_T_6"} : !hw.inout<i64>
    sv.assign %_mask_T_6, %38 : i64
    %39 = sv.read_inout %_mask_T : !hw.inout<i1>
    %40 = sv.read_inout %_mask_T_6 : !hw.inout<i64>
    %41 = comb.mux bin %39, %c255_i64, %40 : i64
    %mask = sv.wire sym @sym_27 {hw.verilogName = "mask"} : !hw.inout<i64>
    sv.assign %mask, %41 : i64
    %42 = sv.read_inout %io_a_0 : !hw.inout<i64>
    %43 = sv.read_inout %mask : !hw.inout<i64>
    %44 = comb.and bin %42, %43 : i64
    %aEffective = sv.wire sym @sym_28 {hw.verilogName = "aEffective"} : !hw.inout<i64>
    sv.assign %aEffective, %44 : i64
    %45 = sv.read_inout %aEffective : !hw.inout<i64>
    %_fullArithmeticResult_T = sv.wire sym @sym_34 {hw.verilogName = "_fullArithmeticResult_T"} : !hw.inout<i64>
    sv.assign %_fullArithmeticResult_T, %45 : i64
    %46 = sv.read_inout %io_b_1 : !hw.inout<i64>
    %47 = sv.read_inout %mask : !hw.inout<i64>
    %48 = comb.and bin %46, %47 : i64
    %bEffective = sv.wire sym @sym_29 {hw.verilogName = "bEffective"} : !hw.inout<i64>
    sv.assign %bEffective, %48 : i64
    %49 = sv.read_inout %bEffective : !hw.inout<i64>
    %50 = comb.xor bin %49, %c-1_i64 : i64
    %_bAdjusted_T = sv.wire sym @sym_30 {hw.verilogName = "_bAdjusted_T"} : !hw.inout<i64>
    sv.assign %_bAdjusted_T, %50 : i64
    %51 = sv.read_inout %_bAdjusted_T : !hw.inout<i64>
    %52 = comb.concat %false, %51 : i1, i64
    %53 = comb.add bin %52, %c1_i65 : i65
    %_bAdjusted_T_1 = sv.wire sym @sym_31 {hw.verilogName = "_bAdjusted_T_1"} : !hw.inout<i65>
    sv.assign %_bAdjusted_T_1, %53 : i65
    %54 = sv.read_inout %_bAdjusted_T_1 : !hw.inout<i65>
    %55 = comb.extract %54 from 0 : (i65) -> i64
    %_bAdjusted_T_2 = sv.wire sym @sym_32 {hw.verilogName = "_bAdjusted_T_2"} : !hw.inout<i64>
    sv.assign %_bAdjusted_T_2, %55 : i64
    %56 = sv.read_inout %_bAdjusted_T_2 : !hw.inout<i64>
    %57 = sv.read_inout %isSub : !hw.inout<i1>
    %58 = sv.read_inout %bEffective : !hw.inout<i64>
    %59 = comb.mux bin %57, %56, %58 : i64
    %bAdjusted = sv.wire sym @sym_33 {hw.verilogName = "bAdjusted"} : !hw.inout<i64>
    sv.assign %bAdjusted, %59 : i64
    %60 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %_fullArithmeticResult_T_1 = sv.wire sym @sym_35 {hw.verilogName = "_fullArithmeticResult_T_1"} : !hw.inout<i64>
    sv.assign %_fullArithmeticResult_T_1, %60 : i64
    %61 = sv.read_inout %_fullArithmeticResult_T : !hw.inout<i64>
    %62 = comb.extract %61 from 63 : (i64) -> i1
    %63 = sv.read_inout %_fullArithmeticResult_T : !hw.inout<i64>
    %64 = comb.concat %62, %63 : i1, i64
    %65 = sv.read_inout %_fullArithmeticResult_T_1 : !hw.inout<i64>
    %66 = comb.extract %65 from 63 : (i64) -> i1
    %67 = sv.read_inout %_fullArithmeticResult_T_1 : !hw.inout<i64>
    %68 = comb.concat %66, %67 : i1, i64
    %69 = comb.add bin %64, %68 : i65
    %_fullArithmeticResult_T_2 = sv.wire sym @sym_36 {hw.verilogName = "_fullArithmeticResult_T_2"} : !hw.inout<i65>
    sv.assign %_fullArithmeticResult_T_2, %69 : i65
    %70 = sv.read_inout %_fullArithmeticResult_T_2 : !hw.inout<i65>
    %_fullArithmeticResult_T_3 = sv.wire sym @sym_37 {hw.verilogName = "_fullArithmeticResult_T_3"} : !hw.inout<i65>
    sv.assign %_fullArithmeticResult_T_3, %70 : i65
    %71 = sv.read_inout %aEffective : !hw.inout<i64>
    %72 = comb.concat %false, %71 : i1, i64
    %73 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %74 = comb.concat %false, %73 : i1, i64
    %75 = comb.add bin %72, %74 : i65
    %_fullArithmeticResult_T_4 = sv.wire sym @sym_38 {hw.verilogName = "_fullArithmeticResult_T_4"} : !hw.inout<i65>
    sv.assign %_fullArithmeticResult_T_4, %75 : i65
    %76 = sv.read_inout %_fullArithmeticResult_T_3 : !hw.inout<i65>
    %77 = sv.read_inout %_fullArithmeticResult_T_4 : !hw.inout<i65>
    %78 = sv.read_inout %isSigned : !hw.inout<i1>
    %79 = comb.mux bin %78, %76, %77 : i65
    %fullArithmeticResult = sv.wire sym @sym_39 {hw.verilogName = "fullArithmeticResult"} : !hw.inout<i65>
    sv.assign %fullArithmeticResult, %79 : i65
    %80 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %81 = comb.extract %80 from 0 : (i65) -> i64
    %82 = sv.read_inout %mask : !hw.inout<i64>
    %83 = comb.and bin %81, %82 : i64
    %84 = comb.concat %false, %83 : i1, i64
    %truncatedResult = sv.wire sym @sym_40 {hw.verilogName = "truncatedResult"} : !hw.inout<i65>
    sv.assign %truncatedResult, %84 : i65
    %85 = sv.read_inout %truncatedResult : !hw.inout<i65>
    %86 = comb.extract %85 from 0 : (i65) -> i64
    %io_result = sv.wire sym @sym_3 {hw.verilogName = "io_result_0"} : !hw.inout<i64>
    sv.assign %io_result, %86 : i64
    %87 = sv.read_inout %width : !hw.inout<i7>
    %88 = comb.icmp bin eq %87, %c8_i7 : i7
    %89 = sv.wire {hw.verilogName = "_GEN_2"} : !hw.inout<i1>
    sv.assign %89, %88 : i1
    %_isCarry_T = sv.wire sym @sym_41 {hw.verilogName = "_isCarry_T"} : !hw.inout<i1>
    %90 = sv.read_inout %89 : !hw.inout<i1>
    sv.assign %_isCarry_T, %90 : i1
    %_aSign_T = sv.wire sym @sym_67 {hw.verilogName = "_aSign_T"} : !hw.inout<i1>
    %91 = sv.read_inout %89 : !hw.inout<i1>
    sv.assign %_aSign_T, %91 : i1
    %_bSign_T = sv.wire sym @sym_79 {hw.verilogName = "_bSign_T"} : !hw.inout<i1>
    %92 = sv.read_inout %89 : !hw.inout<i1>
    sv.assign %_bSign_T, %92 : i1
    %_sumSign_T = sv.wire sym @sym_91 {hw.verilogName = "_sumSign_T"} : !hw.inout<i1>
    %93 = sv.read_inout %89 : !hw.inout<i1>
    sv.assign %_sumSign_T, %93 : i1
    %94 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %95 = comb.extract %94 from 8 : (i65) -> i1
    %_isCarry_T_1 = sv.wire sym @sym_42 {hw.verilogName = "_isCarry_T_1"} : !hw.inout<i1>
    sv.assign %_isCarry_T_1, %95 : i1
    %96 = sv.read_inout %width : !hw.inout<i7>
    %97 = comb.icmp bin eq %96, %c16_i7 : i7
    %98 = sv.wire {hw.verilogName = "_GEN_3"} : !hw.inout<i1>
    sv.assign %98, %97 : i1
    %_isCarry_T_2 = sv.wire sym @sym_43 {hw.verilogName = "_isCarry_T_2"} : !hw.inout<i1>
    %99 = sv.read_inout %98 : !hw.inout<i1>
    sv.assign %_isCarry_T_2, %99 : i1
    %_aSign_T_2 = sv.wire sym @sym_69 {hw.verilogName = "_aSign_T_2"} : !hw.inout<i1>
    %100 = sv.read_inout %98 : !hw.inout<i1>
    sv.assign %_aSign_T_2, %100 : i1
    %_bSign_T_2 = sv.wire sym @sym_81 {hw.verilogName = "_bSign_T_2"} : !hw.inout<i1>
    %101 = sv.read_inout %98 : !hw.inout<i1>
    sv.assign %_bSign_T_2, %101 : i1
    %_sumSign_T_2 = sv.wire sym @sym_93 {hw.verilogName = "_sumSign_T_2"} : !hw.inout<i1>
    %102 = sv.read_inout %98 : !hw.inout<i1>
    sv.assign %_sumSign_T_2, %102 : i1
    %103 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %104 = comb.extract %103 from 16 : (i65) -> i1
    %_isCarry_T_3 = sv.wire sym @sym_44 {hw.verilogName = "_isCarry_T_3"} : !hw.inout<i1>
    sv.assign %_isCarry_T_3, %104 : i1
    %105 = sv.read_inout %width : !hw.inout<i7>
    %106 = comb.icmp bin eq %105, %c32_i7 : i7
    %107 = sv.wire {hw.verilogName = "_GEN_4"} : !hw.inout<i1>
    sv.assign %107, %106 : i1
    %_isCarry_T_4 = sv.wire sym @sym_45 {hw.verilogName = "_isCarry_T_4"} : !hw.inout<i1>
    %108 = sv.read_inout %107 : !hw.inout<i1>
    sv.assign %_isCarry_T_4, %108 : i1
    %_aSign_T_4 = sv.wire sym @sym_71 {hw.verilogName = "_aSign_T_4"} : !hw.inout<i1>
    %109 = sv.read_inout %107 : !hw.inout<i1>
    sv.assign %_aSign_T_4, %109 : i1
    %_bSign_T_4 = sv.wire sym @sym_83 {hw.verilogName = "_bSign_T_4"} : !hw.inout<i1>
    %110 = sv.read_inout %107 : !hw.inout<i1>
    sv.assign %_bSign_T_4, %110 : i1
    %_sumSign_T_4 = sv.wire sym @sym_95 {hw.verilogName = "_sumSign_T_4"} : !hw.inout<i1>
    %111 = sv.read_inout %107 : !hw.inout<i1>
    sv.assign %_sumSign_T_4, %111 : i1
    %112 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %113 = comb.extract %112 from 32 : (i65) -> i1
    %_isCarry_T_5 = sv.wire sym @sym_46 {hw.verilogName = "_isCarry_T_5"} : !hw.inout<i1>
    sv.assign %_isCarry_T_5, %113 : i1
    %114 = sv.read_inout %width : !hw.inout<i7>
    %115 = comb.icmp bin eq %114, %c-64_i7 : i7
    %116 = sv.wire {hw.verilogName = "_GEN_5"} : !hw.inout<i1>
    sv.assign %116, %115 : i1
    %_isCarry_T_6 = sv.wire sym @sym_47 {hw.verilogName = "_isCarry_T_6"} : !hw.inout<i1>
    %117 = sv.read_inout %116 : !hw.inout<i1>
    sv.assign %_isCarry_T_6, %117 : i1
    %_aSign_T_6 = sv.wire sym @sym_73 {hw.verilogName = "_aSign_T_6"} : !hw.inout<i1>
    %118 = sv.read_inout %116 : !hw.inout<i1>
    sv.assign %_aSign_T_6, %118 : i1
    %_bSign_T_6 = sv.wire sym @sym_85 {hw.verilogName = "_bSign_T_6"} : !hw.inout<i1>
    %119 = sv.read_inout %116 : !hw.inout<i1>
    sv.assign %_bSign_T_6, %119 : i1
    %_sumSign_T_6 = sv.wire sym @sym_97 {hw.verilogName = "_sumSign_T_6"} : !hw.inout<i1>
    %120 = sv.read_inout %116 : !hw.inout<i1>
    sv.assign %_sumSign_T_6, %120 : i1
    %121 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %122 = comb.extract %121 from 64 : (i65) -> i1
    %_isCarry_T_7 = sv.wire sym @sym_48 {hw.verilogName = "_isCarry_T_7"} : !hw.inout<i1>
    sv.assign %_isCarry_T_7, %122 : i1
    %123 = sv.read_inout %_isCarry_T_6 : !hw.inout<i1>
    %124 = sv.read_inout %_isCarry_T_7 : !hw.inout<i1>
    %125 = comb.and %123, %124 : i1
    %_isCarry_T_8 = sv.wire sym @sym_49 {hw.verilogName = "_isCarry_T_8"} : !hw.inout<i1>
    sv.assign %_isCarry_T_8, %125 : i1
    %126 = sv.read_inout %_isCarry_T_4 : !hw.inout<i1>
    %127 = sv.read_inout %_isCarry_T_5 : !hw.inout<i1>
    %128 = sv.read_inout %_isCarry_T_8 : !hw.inout<i1>
    %129 = comb.mux bin %126, %127, %128 : i1
    %_isCarry_T_9 = sv.wire sym @sym_50 {hw.verilogName = "_isCarry_T_9"} : !hw.inout<i1>
    sv.assign %_isCarry_T_9, %129 : i1
    %130 = sv.read_inout %_isCarry_T_2 : !hw.inout<i1>
    %131 = sv.read_inout %_isCarry_T_3 : !hw.inout<i1>
    %132 = sv.read_inout %_isCarry_T_9 : !hw.inout<i1>
    %133 = comb.mux bin %130, %131, %132 : i1
    %_isCarry_T_10 = sv.wire sym @sym_51 {hw.verilogName = "_isCarry_T_10"} : !hw.inout<i1>
    sv.assign %_isCarry_T_10, %133 : i1
    %134 = sv.read_inout %_isCarry_T : !hw.inout<i1>
    %135 = sv.read_inout %_isCarry_T_1 : !hw.inout<i1>
    %136 = sv.read_inout %_isCarry_T_10 : !hw.inout<i1>
    %137 = comb.mux bin %134, %135, %136 : i1
    %isCarry = sv.wire sym @sym_52 {hw.verilogName = "isCarry"} : !hw.inout<i1>
    sv.assign %isCarry, %137 : i1
    %138 = sv.read_inout %isSigned : !hw.inout<i1>
    %139 = comb.xor bin %138, %true : i1
    %_isBorrow_T = sv.wire sym @sym_53 {hw.verilogName = "_isBorrow_T"} : !hw.inout<i1>
    sv.assign %_isBorrow_T, %139 : i1
    %140 = sv.read_inout %_isBorrow_T : !hw.inout<i1>
    %141 = sv.read_inout %isSub : !hw.inout<i1>
    %142 = comb.and bin %141, %140 : i1
    %_isBorrow_T_1 = sv.wire sym @sym_54 {hw.verilogName = "_isBorrow_T_1"} : !hw.inout<i1>
    sv.assign %_isBorrow_T_1, %142 : i1
    %143 = sv.read_inout %bEffective : !hw.inout<i64>
    %144 = sv.read_inout %aEffective : !hw.inout<i64>
    %145 = comb.icmp bin ult %144, %143 : i64
    %_isBorrow_T_2 = sv.wire sym @sym_55 {hw.verilogName = "_isBorrow_T_2"} : !hw.inout<i1>
    sv.assign %_isBorrow_T_2, %145 : i1
    %146 = sv.read_inout %_isBorrow_T_1 : !hw.inout<i1>
    %147 = sv.read_inout %_isBorrow_T_2 : !hw.inout<i1>
    %148 = comb.and %146, %147 : i1
    %isBorrow = sv.wire sym @sym_56 {hw.verilogName = "isBorrow"} : !hw.inout<i1>
    sv.assign %isBorrow, %148 : i1
    %149 = sv.read_inout %isSigned : !hw.inout<i1>
    %150 = comb.xor bin %149, %true : i1
    %_io_carryOut_T = sv.wire sym @sym_57 {hw.verilogName = "_io_carryOut_T"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T, %150 : i1
    %151 = sv.read_inout %isSub : !hw.inout<i1>
    %152 = comb.xor bin %151, %true : i1
    %_io_carryOut_T_1 = sv.wire sym @sym_58 {hw.verilogName = "_io_carryOut_T_1"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T_1, %152 : i1
    %153 = sv.read_inout %_io_carryOut_T : !hw.inout<i1>
    %154 = sv.read_inout %_io_carryOut_T_1 : !hw.inout<i1>
    %155 = comb.and bin %153, %154 : i1
    %_io_carryOut_T_2 = sv.wire sym @sym_59 {hw.verilogName = "_io_carryOut_T_2"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T_2, %155 : i1
    %156 = sv.read_inout %isSigned : !hw.inout<i1>
    %157 = comb.xor bin %156, %true : i1
    %_io_carryOut_T_3 = sv.wire sym @sym_60 {hw.verilogName = "_io_carryOut_T_3"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T_3, %157 : i1
    %158 = sv.read_inout %isSub : !hw.inout<i1>
    %159 = sv.read_inout %_io_carryOut_T_3 : !hw.inout<i1>
    %160 = comb.and bin %159, %158 : i1
    %_io_carryOut_T_4 = sv.wire sym @sym_61 {hw.verilogName = "_io_carryOut_T_4"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T_4, %160 : i1
    %161 = sv.read_inout %isBorrow : !hw.inout<i1>
    %162 = sv.read_inout %_io_carryOut_T_4 : !hw.inout<i1>
    %163 = comb.and %162, %161 : i1
    %_io_carryOut_T_5 = sv.wire sym @sym_62 {hw.verilogName = "_io_carryOut_T_5"} : !hw.inout<i1>
    sv.assign %_io_carryOut_T_5, %163 : i1
    %164 = sv.read_inout %isCarry : !hw.inout<i1>
    %165 = sv.read_inout %_io_carryOut_T_2 : !hw.inout<i1>
    %166 = sv.read_inout %_io_carryOut_T_5 : !hw.inout<i1>
    %167 = comb.mux bin %165, %164, %166 : i1
    sv.assign %_io_carryOut_T_6, %167 : i1
    %168 = sv.read_inout %_io_carryOut_T_6 : !hw.inout<i1>
    %io_carryOut = sv.wire sym @sym_4 {hw.verilogName = "io_carryOut_0"} : !hw.inout<i1>
    sv.assign %io_carryOut, %168 : i1
    %_aSign_T_11 = sv.wire sym @sym_78 {hw.verilogName = "_aSign_T_11"} : !hw.inout<i1>
    %_bSign_T_11 = sv.wire sym @sym_90 {hw.verilogName = "_bSign_T_11"} : !hw.inout<i1>
    %_sumSign_T_11 = sv.wire sym @sym_102 {hw.verilogName = "_sumSign_T_11"} : !hw.inout<i1>
    %169 = sv.read_inout %aEffective : !hw.inout<i64>
    %170 = comb.extract %169 from 7 : (i64) -> i1
    %_aSign_T_1 = sv.wire sym @sym_68 {hw.verilogName = "_aSign_T_1"} : !hw.inout<i1>
    sv.assign %_aSign_T_1, %170 : i1
    %171 = sv.read_inout %aEffective : !hw.inout<i64>
    %172 = comb.extract %171 from 15 : (i64) -> i1
    %_aSign_T_3 = sv.wire sym @sym_70 {hw.verilogName = "_aSign_T_3"} : !hw.inout<i1>
    sv.assign %_aSign_T_3, %172 : i1
    %173 = sv.read_inout %aEffective : !hw.inout<i64>
    %174 = comb.extract %173 from 31 : (i64) -> i1
    %_aSign_T_5 = sv.wire sym @sym_72 {hw.verilogName = "_aSign_T_5"} : !hw.inout<i1>
    sv.assign %_aSign_T_5, %174 : i1
    %175 = sv.read_inout %aEffective : !hw.inout<i64>
    %176 = comb.extract %175 from 63 : (i64) -> i1
    %_aSign_T_7 = sv.wire sym @sym_74 {hw.verilogName = "_aSign_T_7"} : !hw.inout<i1>
    sv.assign %_aSign_T_7, %176 : i1
    %177 = sv.read_inout %_aSign_T_6 : !hw.inout<i1>
    %178 = sv.read_inout %_aSign_T_7 : !hw.inout<i1>
    %179 = comb.and %177, %178 : i1
    %_aSign_T_8 = sv.wire sym @sym_75 {hw.verilogName = "_aSign_T_8"} : !hw.inout<i1>
    sv.assign %_aSign_T_8, %179 : i1
    %180 = sv.read_inout %_aSign_T_4 : !hw.inout<i1>
    %181 = sv.read_inout %_aSign_T_5 : !hw.inout<i1>
    %182 = sv.read_inout %_aSign_T_8 : !hw.inout<i1>
    %183 = comb.mux bin %180, %181, %182 : i1
    %_aSign_T_9 = sv.wire sym @sym_76 {hw.verilogName = "_aSign_T_9"} : !hw.inout<i1>
    sv.assign %_aSign_T_9, %183 : i1
    %184 = sv.read_inout %_aSign_T_2 : !hw.inout<i1>
    %185 = sv.read_inout %_aSign_T_3 : !hw.inout<i1>
    %186 = sv.read_inout %_aSign_T_9 : !hw.inout<i1>
    %187 = comb.mux bin %184, %185, %186 : i1
    %_aSign_T_10 = sv.wire sym @sym_77 {hw.verilogName = "_aSign_T_10"} : !hw.inout<i1>
    sv.assign %_aSign_T_10, %187 : i1
    %188 = sv.read_inout %_aSign_T : !hw.inout<i1>
    %189 = sv.read_inout %_aSign_T_1 : !hw.inout<i1>
    %190 = sv.read_inout %_aSign_T_10 : !hw.inout<i1>
    %191 = comb.mux bin %188, %189, %190 : i1
    sv.assign %_aSign_T_11, %191 : i1
    %192 = sv.read_inout %_aSign_T_11 : !hw.inout<i1>
    %aSign = sv.wire sym @sym_64 {hw.verilogName = "aSign"} : !hw.inout<i1>
    sv.assign %aSign, %192 : i1
    %193 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %194 = comb.extract %193 from 7 : (i64) -> i1
    %_bSign_T_1 = sv.wire sym @sym_80 {hw.verilogName = "_bSign_T_1"} : !hw.inout<i1>
    sv.assign %_bSign_T_1, %194 : i1
    %195 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %196 = comb.extract %195 from 15 : (i64) -> i1
    %_bSign_T_3 = sv.wire sym @sym_82 {hw.verilogName = "_bSign_T_3"} : !hw.inout<i1>
    sv.assign %_bSign_T_3, %196 : i1
    %197 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %198 = comb.extract %197 from 31 : (i64) -> i1
    %_bSign_T_5 = sv.wire sym @sym_84 {hw.verilogName = "_bSign_T_5"} : !hw.inout<i1>
    sv.assign %_bSign_T_5, %198 : i1
    %199 = sv.read_inout %bAdjusted : !hw.inout<i64>
    %200 = comb.extract %199 from 63 : (i64) -> i1
    %_bSign_T_7 = sv.wire sym @sym_86 {hw.verilogName = "_bSign_T_7"} : !hw.inout<i1>
    sv.assign %_bSign_T_7, %200 : i1
    %201 = sv.read_inout %_bSign_T_6 : !hw.inout<i1>
    %202 = sv.read_inout %_bSign_T_7 : !hw.inout<i1>
    %203 = comb.and %201, %202 : i1
    %_bSign_T_8 = sv.wire sym @sym_87 {hw.verilogName = "_bSign_T_8"} : !hw.inout<i1>
    sv.assign %_bSign_T_8, %203 : i1
    %204 = sv.read_inout %_bSign_T_4 : !hw.inout<i1>
    %205 = sv.read_inout %_bSign_T_5 : !hw.inout<i1>
    %206 = sv.read_inout %_bSign_T_8 : !hw.inout<i1>
    %207 = comb.mux bin %204, %205, %206 : i1
    %_bSign_T_9 = sv.wire sym @sym_88 {hw.verilogName = "_bSign_T_9"} : !hw.inout<i1>
    sv.assign %_bSign_T_9, %207 : i1
    %208 = sv.read_inout %_bSign_T_2 : !hw.inout<i1>
    %209 = sv.read_inout %_bSign_T_3 : !hw.inout<i1>
    %210 = sv.read_inout %_bSign_T_9 : !hw.inout<i1>
    %211 = comb.mux bin %208, %209, %210 : i1
    %_bSign_T_10 = sv.wire sym @sym_89 {hw.verilogName = "_bSign_T_10"} : !hw.inout<i1>
    sv.assign %_bSign_T_10, %211 : i1
    %212 = sv.read_inout %_bSign_T : !hw.inout<i1>
    %213 = sv.read_inout %_bSign_T_1 : !hw.inout<i1>
    %214 = sv.read_inout %_bSign_T_10 : !hw.inout<i1>
    %215 = comb.mux bin %212, %213, %214 : i1
    sv.assign %_bSign_T_11, %215 : i1
    %216 = sv.read_inout %_bSign_T_11 : !hw.inout<i1>
    %bSign = sv.wire sym @sym_65 {hw.verilogName = "bSign"} : !hw.inout<i1>
    sv.assign %bSign, %216 : i1
    %217 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %218 = comb.extract %217 from 7 : (i65) -> i1
    %_sumSign_T_1 = sv.wire sym @sym_92 {hw.verilogName = "_sumSign_T_1"} : !hw.inout<i1>
    sv.assign %_sumSign_T_1, %218 : i1
    %219 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %220 = comb.extract %219 from 15 : (i65) -> i1
    %_sumSign_T_3 = sv.wire sym @sym_94 {hw.verilogName = "_sumSign_T_3"} : !hw.inout<i1>
    sv.assign %_sumSign_T_3, %220 : i1
    %221 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %222 = comb.extract %221 from 31 : (i65) -> i1
    %_sumSign_T_5 = sv.wire sym @sym_96 {hw.verilogName = "_sumSign_T_5"} : !hw.inout<i1>
    sv.assign %_sumSign_T_5, %222 : i1
    %223 = sv.read_inout %fullArithmeticResult : !hw.inout<i65>
    %224 = comb.extract %223 from 63 : (i65) -> i1
    %_sumSign_T_7 = sv.wire sym @sym_98 {hw.verilogName = "_sumSign_T_7"} : !hw.inout<i1>
    sv.assign %_sumSign_T_7, %224 : i1
    %225 = sv.read_inout %_sumSign_T_6 : !hw.inout<i1>
    %226 = sv.read_inout %_sumSign_T_7 : !hw.inout<i1>
    %227 = comb.and %225, %226 : i1
    %_sumSign_T_8 = sv.wire sym @sym_99 {hw.verilogName = "_sumSign_T_8"} : !hw.inout<i1>
    sv.assign %_sumSign_T_8, %227 : i1
    %228 = sv.read_inout %_sumSign_T_4 : !hw.inout<i1>
    %229 = sv.read_inout %_sumSign_T_5 : !hw.inout<i1>
    %230 = sv.read_inout %_sumSign_T_8 : !hw.inout<i1>
    %231 = comb.mux bin %228, %229, %230 : i1
    %_sumSign_T_9 = sv.wire sym @sym_100 {hw.verilogName = "_sumSign_T_9"} : !hw.inout<i1>
    sv.assign %_sumSign_T_9, %231 : i1
    %232 = sv.read_inout %_sumSign_T_2 : !hw.inout<i1>
    %233 = sv.read_inout %_sumSign_T_3 : !hw.inout<i1>
    %234 = sv.read_inout %_sumSign_T_9 : !hw.inout<i1>
    %235 = comb.mux bin %232, %233, %234 : i1
    %_sumSign_T_10 = sv.wire sym @sym_101 {hw.verilogName = "_sumSign_T_10"} : !hw.inout<i1>
    sv.assign %_sumSign_T_10, %235 : i1
    %236 = sv.read_inout %_sumSign_T : !hw.inout<i1>
    %237 = sv.read_inout %_sumSign_T_1 : !hw.inout<i1>
    %238 = sv.read_inout %_sumSign_T_10 : !hw.inout<i1>
    %239 = comb.mux bin %236, %237, %238 : i1
    sv.assign %_sumSign_T_11, %239 : i1
    %240 = sv.read_inout %_sumSign_T_11 : !hw.inout<i1>
    %sumSign = sv.wire sym @sym_66 {hw.verilogName = "sumSign"} : !hw.inout<i1>
    sv.assign %sumSign, %240 : i1
    %241 = sv.read_inout %bSign : !hw.inout<i1>
    %242 = sv.read_inout %aSign : !hw.inout<i1>
    %243 = comb.icmp bin eq %242, %241 : i1
    %_isOverflow_T = sv.wire sym @sym_103 {hw.verilogName = "_isOverflow_T"} : !hw.inout<i1>
    sv.assign %_isOverflow_T, %243 : i1
    %244 = sv.read_inout %aSign : !hw.inout<i1>
    %245 = sv.read_inout %sumSign : !hw.inout<i1>
    %246 = comb.icmp bin ne %244, %245 : i1
    %_isOverflow_T_1 = sv.wire sym @sym_104 {hw.verilogName = "_isOverflow_T_1"} : !hw.inout<i1>
    sv.assign %_isOverflow_T_1, %246 : i1
    %247 = sv.read_inout %_isOverflow_T : !hw.inout<i1>
    %248 = sv.read_inout %_isOverflow_T_1 : !hw.inout<i1>
    %249 = comb.and bin %247, %248 : i1
    sv.assign %isOverflow, %249 : i1
    %250 = sv.read_inout %isOverflow : !hw.inout<i1>
    %io_overflowFlag = sv.wire sym @sym_5 {hw.verilogName = "io_overflowFlag_0"} : !hw.inout<i1>
    sv.assign %io_overflowFlag, %250 : i1
    %251 = sv.read_inout %truncatedResult : !hw.inout<i65>
    %252 = comb.icmp bin ne %251, %c0_i65 : i65
    %_isZero_T = sv.wire sym @sym_106 {hw.verilogName = "_isZero_T"} : !hw.inout<i1>
    sv.assign %_isZero_T, %252 : i1
    %253 = sv.read_inout %_isZero_T : !hw.inout<i1>
    %254 = comb.xor bin %253, %true : i1
    sv.assign %isZero, %254 : i1
    %255 = sv.read_inout %isZero : !hw.inout<i1>
    %io_zeroFlag = sv.wire sym @sym_6 {hw.verilogName = "io_zeroFlag_0"} : !hw.inout<i1>
    sv.assign %io_zeroFlag, %255 : i1
    %256 = sv.read_inout %sumSign : !hw.inout<i1>
    %257 = sv.read_inout %isSigned : !hw.inout<i1>
    %258 = comb.and %257, %256 : i1
    sv.assign %isNegative, %258 : i1
    %259 = sv.read_inout %isNegative : !hw.inout<i1>
    %io_negativeFlag = sv.wire sym @sym_7 {hw.verilogName = "io_negativeFlag_0"} : !hw.inout<i1>
    sv.assign %io_negativeFlag, %259 : i1
    %260 = sv.read_inout %io_result : !hw.inout<i64>
    %261 = sv.read_inout %io_carryOut : !hw.inout<i1>
    %262 = sv.read_inout %io_overflowFlag : !hw.inout<i1>
    %263 = sv.read_inout %io_zeroFlag : !hw.inout<i1>
    %264 = sv.read_inout %io_negativeFlag : !hw.inout<i1>
    hw.output %260, %261, %262, %263, %264 : i64, i1, i1, i1, i1
  }
  om.class @MultifunctionAdderSubtractor64_Class(%basepath: !om.frozenbasepath) {
    om.class.fields
  }
}
