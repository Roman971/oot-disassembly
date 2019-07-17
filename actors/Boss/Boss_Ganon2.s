.section .text
func_80B05470:
    lui     $at, %hi(var_80B18208)     # $at = 80B20000
    sw      a0, %lo(var_80B18208)($at)
    lui     $at, %hi(var_80B1820C)     # $at = 80B20000
    sw      a1, %lo(var_80B1820C)($at)
    lui     $at, %hi(var_80B18210)     # $at = 80B20000
    sw      a2, %lo(var_80B18210)($at)
    jr      $ra
    nop


func_80B05490:
    lui     $at, 0x3F80                # $at = 3F800000
    lui     v0, %hi(var_80B18208)      # v0 = 80B20000
    lui     v1, %hi(var_80B1820C)      # v1 = 80B20000
    lui     a0, %hi(var_80B18210)      # a0 = 80B20000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   a0, a0, %lo(var_80B18210)  # a0 = 80B18210
    addiu   v1, v1, %lo(var_80B1820C)  # v1 = 80B1820C
    addiu   v0, v0, %lo(var_80B18208)  # v0 = 80B18208
    lw      t6, 0x0000(v0)             # 80B18208
    addiu   $at, $zero, 0x763D         # $at = 0000763D
    lw      t9, 0x0000(v1)             # 80B1820C
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    subu    t7, t7, t6
    div     $zero, t7, $at
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    subu    t0, t0, t9
    mfhi    t5
    sll     t0, t0,  2
    subu    t0, t0, t9
    sll     t0, t0,  2
    addiu   $at, $zero, 0x7663         # $at = 00007663
    div     $zero, t0, $at
    lw      t2, 0x0000(a0)             # 80B18210
    mfhi    t6
    addiu   $at, $zero, 0x7673         # $at = 00007673
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  2
    addu    t3, t3, t2
    sll     t3, t3,  1
    div     $zero, t3, $at
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mfhi    t7
    cvt.s.w $f6, $f4
    sw      t5, 0x0000(v0)             # 80B18208
    sw      t6, 0x0000(v1)             # 80B1820C
    sw      t7, 0x0000(a0)             # 80B18210
    lui     $at, %hi(var_80B15870)     # $at = 80B10000
    cvt.s.w $f18, $f16
    lwc1    $f8, %lo(var_80B15870)($at)
    lui     $at, %hi(var_80B15874)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15874)($at)
    mtc1    t7, $f16                   # $f16 = 0.00
    div.s   $f10, $f6, $f8
    lui     $at, %hi(var_80B15878)     # $at = 80B10000
    div.s   $f6, $f18, $f4
    lwc1    $f4, %lo(var_80B15878)($at)
    cvt.s.w $f18, $f16
    add.s   $f8, $f10, $f6
    div.s   $f10, $f18, $f4
    add.s   $f2, $f8, $f10
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_80B055B0
    abs.s   $f0, $f2
    sub.s   $f2, $f2, $f0
lbl_80B0559C:
    c.le.s  $f0, $f2
    nop
    bc1tl   lbl_80B0559C
    sub.s   $f2, $f2, $f0
    abs.s   $f0, $f2
lbl_80B055B0:
    jr      $ra
    nop


func_80B055B8:
    lwc1    $f4, 0x0000(a2)            # 00000000
    lw      t8, 0x001C(a1)             # 0000001C
    sll     v0, a0,  6
    trunc.w.s $f6, $f4
    addu    t9, t8, v0
    mfc1    t7, $f6
    nop
    sh      t7, 0x0030(t9)             # 00000030
    lwc1    $f8, 0x0004(a2)            # 00000004
    lw      t2, 0x001C(a1)             # 0000001C
    trunc.w.s $f10, $f8
    addu    t3, t2, v0
    mfc1    t1, $f10
    nop
    sh      t1, 0x0032(t3)             # 00000032
    lwc1    $f16, 0x0008(a2)           # 00000008
    lw      t6, 0x001C(a1)             # 0000001C
    trunc.w.s $f18, $f16
    addu    t8, t6, v0
    mfc1    t5, $f18
    nop
    sh      t5, 0x0034(t8)             # 00000034
    lw      t7, 0x001C(a1)             # 0000001C
    addu    v1, t7, v0
    lh      t9, 0x002E(v1)             # 0000002E
    lwc1    $f4, 0x0038(v1)            # 00000038
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t2, $f16
    nop
    sh      t2, 0x0036(v1)             # 00000036
    jr      $ra
    nop


func_80B05648:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sll     a1, a2, 16
    sra     a1, a1, 16
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      t2, 0x001C($sp)
    sll     t6, v0,  4
    addu    t6, t6, v0
    sll     t6, t6,  2
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, t2, t6
    addu    t0, t0, $at
    lw      t7, 0x17B4(t0)             # 000017B4
    lbu     t9, 0x0027($sp)
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t7, $at
    lui     $at, 0x8012                # $at = 80120000
    beq     t9, $zero, lbl_80B056EC
    sw      t8, 0x0C50($at)            # 80120C50
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0018             # t1 = DB060018
    lw      v1, 0x0000(t2)             # 00000000
    lw      a1, 0x02C0(v1)             # 000002C0
    addiu   t3, a1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(v1)             # 000002C0
    sw      t1, 0x0000(a1)             # 00000000
    lw      t4, 0x17B4(t0)             # 000017B4
    sw      t4, 0x0004(a1)             # 00000004
    lw      a3, 0x02D0(v1)             # 000002D0
    addiu   t5, a3, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(v1)             # 000002D0
    sw      t1, 0x0000(a3)             # 00000000
    lw      t6, 0x17B4(t0)             # 000017B4
    sw      t6, 0x0004(a3)             # 00000004
lbl_80B056EC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B056FC:
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1E10(v0)             # 00011E10
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x41C8                # $at = 41C80000
    sb      t6, 0x0000(v0)             # 00010000
    lw      t8, 0x0000(a1)             # 00000000
    mtc1    $at, $f4                   # $f4 = 25.00
    lui     $at, 0x4170                # $at = 41700000
    sw      t8, 0x0004(v0)             # 00010004
    lw      t7, 0x0004(a1)             # 00000004
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, 0xBF80                # $at = BF800000
    sw      t7, 0x0008(v0)             # 00010008
    lw      t8, 0x0008(a1)             # 00000008
    mtc1    $at, $f8                   # $f8 = -1.00
    swc1    $f0, 0x0018(v0)            # 00010018
    swc1    $f0, 0x001C(v0)            # 0001001C
    swc1    $f0, 0x0024(v0)            # 00010024
    sh      $zero, 0x002E(v0)          # 0001002E
    sb      $zero, 0x0001(v0)          # 00010001
    swc1    $f4, 0x0010(v0)            # 00010010
    swc1    $f6, 0x0014(v0)            # 00010014
    sw      t8, 0x000C(v0)             # 0001000C
    swc1    $f8, 0x0020(v0)            # 00010020
    jr      $ra
    nop


func_80B0576C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a3, 0x002C($sp)
    lui     s0, 0x0001                 # s0 = 00010000
    addu    s0, s0, a0
    lw      s0, 0x1E10(s0)             # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B0578C:
    lbu     t6, 0x0000(s0)             # 00010000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    bne     t6, $zero, lbl_80B0582C
    sra     v0, v0, 16
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t7, 0x0000(s0)             # 00010000
    lw      t9, 0x0000(a1)             # 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    sw      t9, 0x0004(s0)             # 00010004
    lw      t8, 0x0004(a1)             # 00000004
    mtc1    $at, $f4                   # $f4 = -1.00
    lui     $at, %hi(var_80B1587C)     # $at = 80B10000
    sw      t8, 0x0008(s0)             # 00010008
    lw      t9, 0x0008(a1)             # 00000008
    sw      t9, 0x000C(s0)             # 0001000C
    lw      t1, 0x0000(a2)             # 00000000
    sw      t1, 0x0010(s0)             # 00010010
    lw      t0, 0x0004(a2)             # 00000004
    sw      t0, 0x0014(s0)             # 00010014
    lw      t1, 0x0008(a2)             # 00000008
    swc1    $f0, 0x001C(s0)            # 0001001C
    swc1    $f0, 0x0024(s0)            # 00010024
    swc1    $f4, 0x0020(s0)            # 00010020
    sw      t1, 0x0018(s0)             # 00010018
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B1587C)($at)
    swc1    $f0, 0x0040(s0)            # 00010040
    lui     $at, %hi(var_80B15880)     # $at = 80B10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15880)($at)
    swc1    $f0, 0x003C(s0)            # 0001003C
    lui     $at, %hi(var_80B15884)     # $at = 80B10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15884)($at)
    swc1    $f0, 0x0038(s0)            # 00010038
    lwc1    $f6, 0x002C($sp)
    beq     $zero, $zero, lbl_80B05838
    swc1    $f6, 0x0034(s0)            # 00010034
lbl_80B0582C:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_80B0578C
    addiu   s0, s0, 0x0044             # s0 = 00010044
lbl_80B05838:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0584C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lui     a2, %hi(var_80B16778)      # a2 = 80B10000
    addiu   a2, a2, %lo(var_80B16778)  # a2 = 80B16778
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sw      a2, 0x1E10($at)            # 00011E10
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, $zero, 0x0044          # v1 = 00000044
lbl_80B05880:
    multu   v0, v1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0064
    mflo    t6
    addu    t7, a2, t6
    bne     $at, $zero, lbl_80B05880
    sb      $zero, 0x0000(t7)          # 00000000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sb      t8, 0x00AE(s0)             # 000000AE
    sb      t9, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x0414             # a1 = 00000414
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B0F16C)      # a3 = 80B10000
    addiu   t0, s0, 0x0454             # t0 = 00000454
    lw      a1, 0x0030($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B0F16C)  # a3 = 80B0F16C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0434             # a1 = 00000434
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B0F1C4)      # a3 = 80B10000
    addiu   t1, s0, 0x0854             # t1 = 00000854
    lw      a1, 0x0030($sp)
    sw      t1, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B0F1C4)  # a3 = 80B0F1C4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    jal     func_80B05648
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   a2, a2, 0x00E8             # a2 = 060100E8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B05ABC
    or      a1, s1, $zero              # a1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t2, $zero, 0x003E          # t2 = 0000003E
    sb      t2, 0x0117(s0)             # 00000117
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B0597C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_8008D6D0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x0414             # a1 = 00000414
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x0434             # a1 = 00000434
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B059CC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lh      t6, 0x0042($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x003C($sp)
    beq     t6, $zero, lbl_80B05A00
    or      a1, s0, $zero              # a1 = 00000000
    bne     t6, $at, lbl_80B05A38
lbl_80B05A00:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lh      t7, 0x0046($sp)
    addiu   t8, $zero, 0x01F4          # t8 = 000001F4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    addiu   a2, s0, 0x01C0             # a2 = 000001C0
    lui     a3, 0x41C8                 # a3 = 41C80000
    sw      t7, 0x0010($sp)
    jal     func_800260E8
    swc1    $f4, 0x0014($sp)
lbl_80B05A38:
    lh      t1, 0x0042($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x003C($sp)
    beq     t1, $zero, lbl_80B05A50
    or      a1, s0, $zero              # a1 = 00000000
    bne     t1, $at, lbl_80B05A88
lbl_80B05A50:
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    lh      t2, 0x0046($sp)
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0020($sp)
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    addiu   a2, s0, 0x01CC             # a2 = 000001CC
    lui     a3, 0x41C8                 # a3 = 41C80000
    sw      t2, 0x0010($sp)
    jal     func_800260E8
    swc1    $f6, 0x0014($sp)
lbl_80B05A88:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D7          # a1 = 000039D7
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80026CF4
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B05ABC:
    sw      a1, 0x0004($sp)
    lw      t7, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t6, %hi(func_80B05AF0)     # t6 = 80B00000
    and     t8, t7, $at
    addiu   t6, t6, %lo(func_80B05AF0) # t6 = 80B05AF0
    sw      t6, 0x0180(a0)             # 00000180
    sw      t8, 0x0004(a0)             # 00000004
    lui     $at, %hi(var_80B15888)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15888)($at)
    swc1    $f4, 0x0028(a0)            # 00000028
    jr      $ra
    nop


func_80B05AF0:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sb      $zero, 0x008D($sp)
    lw      t6, 0x0388(s0)             # 00000388
    lhu     t8, 0x038C(s0)             # 0000038C
    lw      t1, 0x1C44(s1)             # 00001C44
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sltiu   $at, t8, 0x001E
    beq     $at, $zero, lbl_80B07D18
    sw      t7, 0x0388(s0)             # 00000388
    sll     t8, t8,  2
    lui     $at, %hi(var_80B1588C)     # $at = 80B10000
    addu    $at, $at, t8
    lw      t8, %lo(var_80B1588C)($at)
    jr      t8
    nop
var_80B05B40:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    sw      a0, 0x0054($sp)
    addiu   a1, $zero, 0x017E          # a1 = 0000017E
    jal     func_80081628              # ObjectIndex
    sw      t1, 0x0088($sp)
    lw      a0, 0x0054($sp)
    jal     func_80081688
    or      a1, v0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B07D18
    lw      t1, 0x0088($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    jal     func_80052328
    sw      t1, 0x0088($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_8009D0F0
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x038E(s0)             # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x038C(s0)             # 0000038C
    lui     $at, %hi(var_80B15904)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15904)($at)
    lui     $at, %hi(var_80B15908)     # $at = 80B10000
    lwc1    $f6, %lo(var_80B15908)($at)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f8                   # $f8 = -200.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0179          # a3 = 00000179
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    lui     $at, %hi(var_80B1676C)     # $at = 80B10000
    sw      v0, %lo(var_80B1676C)($at)
    lui     t4, %hi(var_80B1676C)      # t4 = 80B10000
    lw      t4, %lo(var_80B1676C)(t4)
    lw      t1, 0x0088($sp)
    lui     $at, %hi(var_80B1590C)     # $at = 80B10000
    sb      $zero, 0x03B8(t4)          # 80B103B8
    lui     t5, %hi(var_80B1676C)      # t5 = 80B10000
    lw      t5, %lo(var_80B1676C)(t5)
    lwc1    $f10, %lo(var_80B1590C)($at)
    lui     $at, %hi(var_80B15910)     # $at = 80B10000
    lui     t6, %hi(var_80B1676C)      # t6 = 80B10000
    swc1    $f10, 0x0024(t5)           # 80B10024
    lw      t6, %lo(var_80B1676C)(t6)
    lwc1    $f4, %lo(var_80B15910)($at)
    lui     $at, 0xC356                # $at = C3560000
    lui     t7, %hi(var_80B1676C)      # t7 = 80B10000
    swc1    $f4, 0x0028(t6)            # 80B10028
    lw      t7, %lo(var_80B1676C)(t7)
    mtc1    $at, $f6                   # $f6 = -214.00
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f6, 0x002C(t7)            # 80B1002C
    lw      t9, %lo(var_80B1676C)(t9)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   t8, $zero, 0x9000          # t8 = FFFF9000
    sh      t8, 0x00B6(t9)             # 80B100B6
    lui     $at, 0x44AF                # $at = 44AF0000
    swc1    $f8, 0x03AC(s0)            # 000003AC
    mtc1    $at, $f8                   # $f8 = 1400.00
    lui     $at, 0x44C8                # $at = 44C80000
    swc1    $f10, 0x03B0(s0)           # 000003B0
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f10                  # $f10 = 1600.00
    sw      $zero, 0x0388(s0)          # 00000388
    lui     $at, %hi(var_80B15914)     # $at = 80B10000
    swc1    $f8, 0x0398(s0)            # 00000398
    swc1    $f4, 0x03B4(s0)            # 000003B4
    swc1    $f6, 0x0394(s0)            # 00000394
    swc1    $f10, 0x039C(s0)           # 0000039C
    lwc1    $f4, %lo(var_80B15914)($at)
    lui     $at, %hi(var_80B15918)     # $at = 80B10000
    addiu   t3, $zero, 0xB000          # t3 = FFFFB000
    swc1    $f4, 0x0024(t1)            # 00000024
    lwc1    $f6, %lo(var_80B15918)($at)
    lui     $at, 0xC33A                # $at = C33A0000
    mtc1    $at, $f8                   # $f8 = -186.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2168             # a1 = 06002168
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sh      t3, 0x00B6(t1)             # 000000B6
    swc1    $f6, 0x0028(t1)            # 00000028
    jal     func_8008D328
    swc1    $f8, 0x002C(t1)            # 0000002C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    lw      t1, 0x0088($sp)
    addu    $at, $at, s1
    swc1    $f10, 0x0AFC($at)          # 00010AFC
var_80B05D08:
    lw      t4, 0x0388(s0)             # 00000388
    sltiu   $at, t4, 0x0046
    beq     $at, $zero, lbl_80B05D28
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    swc1    $f4, 0x0AFC($at)           # 00010AFC
lbl_80B05D28:
    lui     $at, %hi(var_80B1591C)     # $at = 80B10000
    lwc1    $f0, %lo(var_80B1591C)($at)
    lwc1    $f6, 0x0400(s0)            # 00000400
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sb      t5, 0x0329(s0)             # 00000329
    mul.s   $f8, $f6, $f0
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a1, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sw      t1, 0x0088($sp)
    addiu   a0, s0, 0x0394             # a0 = 00000394
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     $at, 0x44DC                # $at = 44DC0000
    mtc1    $at, $f4                   # $f4 = 1760.00
    lwc1    $f10, 0x0400(s0)           # 00000400
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f6, $f10, $f4
    addiu   a0, s0, 0x039C             # a0 = 0000039C
    lui     a1, 0xC320                 # a1 = C3200000
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     a1, 0x3BF5                 # a1 = 3BF50000
    lui     a3, 0x38D1                 # a3 = 38D10000
    ori     a3, a3, 0xB717             # a3 = 38D1B717
    ori     a1, a1, 0xC28F             # a1 = 3BF5C28F
    addiu   a0, s0, 0x0400             # a0 = 00000400
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f8                   # $f8 = -200.00
    lw      t1, 0x0088($sp)
    lui     $at, %hi(var_80B15920)     # $at = 80B10000
    swc1    $f8, 0x03A0(s0)            # 000003A0
    lwc1    $f10, %lo(var_80B15920)($at)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f4                   # $f4 = -200.00
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0096         # $at = 00000096
    swc1    $f10, 0x03A4(s0)           # 000003A4
    bne     v1, $at, lbl_80B05DF8
    swc1    $f4, 0x03A8(s0)            # 000003A8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70D3          # a1 = 000070D3
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800DCE14
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B05DF8:
    sltiu   $at, v1, 0x00FB
    bne     $at, $zero, lbl_80B07D18
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t1, 0x0088($sp)
    bne     v0, $zero, lbl_80B07D18
    lw      t1, 0x0088($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    lui     $at, 0x0001                # $at = 00010000
    sh      t6, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    addu    $at, $at, s1
    swc1    $f6, 0x0400(s0)            # 00000400
    swc1    $f8, 0x0AFC($at)           # 00010AFC
var_80B05E3C:
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0329(s0)             # 00000329
    lui     $at, %hi(var_80B15924)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15924)($at)
    lui     $at, %hi(var_80B15928)     # $at = 80B10000
    lui     t8, %hi(var_80B1676C)      # t8 = 80B10000
    swc1    $f10, 0x0024(t1)           # 00000024
    lwc1    $f4, %lo(var_80B15928)($at)
    lui     $at, 0xC326                # $at = C3260000
    mtc1    $at, $f6                   # $f6 = -166.00
    swc1    $f4, 0x0028(t1)            # 00000028
    lui     $at, %hi(var_80B1592C)     # $at = 80B10000
    swc1    $f6, 0x002C(t1)            # 0000002C
    lw      t8, %lo(var_80B1676C)(t8)
    lwc1    $f8, %lo(var_80B1592C)($at)
    lui     $at, %hi(var_80B15930)     # $at = 80B10000
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    swc1    $f8, 0x0024(t8)            # 80B10024
    lw      t9, %lo(var_80B1676C)(t9)
    lwc1    $f10, %lo(var_80B15930)($at)
    lui     $at, 0xC33A                # $at = C33A0000
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    swc1    $f10, 0x0028(t9)           # 80B10028
    lw      t3, %lo(var_80B1676C)(t3)
    mtc1    $at, $f4                   # $f4 = -186.00
    addiu   t4, $zero, 0xB000          # t4 = FFFFB000
    lui     t6, %hi(var_80B1676C)      # t6 = 80B10000
    swc1    $f4, 0x002C(t3)            # 80B1002C
    sh      t4, 0x00B6(t1)             # 000000B6
    lw      t6, %lo(var_80B1676C)(t6)
    addiu   t5, $zero, 0xB000          # t5 = FFFFB000
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    sh      t5, 0x00B6(t6)             # 80B100B6
    lw      v1, 0x0388(s0)             # 00000388
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x70D4          # a1 = 000070D4
    bne     v1, $at, lbl_80B05EE4
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800DCE14
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B05EE4:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v1, $at, lbl_80B05F18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     t7, %hi(var_80B1676C)      # t7 = 80B10000
    lw      t7, %lo(var_80B1676C)(t7)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sb      t2, 0x03B8(t7)             # 80B103B8
    sw      t1, 0x0088($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x004E          # a2 = 0000004E
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B05F18:
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bne     v1, $at, lbl_80B05F4C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    lw      t9, %lo(var_80B1676C)(t9)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sb      t8, 0x03B8(t9)             # 80B103B8
    sw      t1, 0x0088($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x004F          # a2 = 0000004F
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B05F4C:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f14                  # $f14 = 15.00
    lui     $at, %hi(var_80B15934)     # $at = 80B10000
    lwc1    $f6, %lo(var_80B15934)($at)
    lui     $at, %hi(var_80B15938)     # $at = 80B10000
    swc1    $f6, 0x0394(s0)            # 00000394
    lwc1    $f8, %lo(var_80B15938)($at)
    lui     $at, 0xC335                # $at = C3350000
    mtc1    $at, $f10                  # $f10 = -181.00
    swc1    $f8, 0x0398(s0)            # 00000398
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f10, 0x039C(s0)           # 0000039C
    lwc1    $f4, 0x0024(t1)            # 00000024
    mtc1    $at, $f10                  # $f10 = 5.00
    sltiu   $at, v1, 0x0069
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lwc1    $f6, 0x002C(t1)            # 0000002C
    sub.s   $f8, $f6, $f14
    add.s   $f4, $f8, $f10
    bne     $at, $zero, lbl_80B0600C
    swc1    $f4, 0x03A8(s0)            # 000003A8
    lui     $at, 0x423C                # $at = 423C0000
    mtc1    $at, $f8                   # $f8 = 47.00
    lwc1    $f6, 0x0028(t1)            # 00000028
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    add.s   $f10, $f6, $f8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lw      a3, 0x0400(s0)             # 00000400
    addiu   t3, s0, 0x0400             # t3 = 00000400
    add.s   $f6, $f10, $f4
    sw      t3, 0x0054($sp)
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    add.s   $f8, $f6, $f14
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f0
    lw      a0, 0x0054($sp)
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80B06030
    lw      t4, 0x0388(s0)             # 00000388
lbl_80B0600C:
    lui     $at, 0x423C                # $at = 423C0000
    mtc1    $at, $f4                   # $f4 = 47.00
    lwc1    $f10, 0x0028(t1)           # 00000028
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    add.s   $f6, $f10, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lw      t4, 0x0388(s0)             # 00000388
lbl_80B06030:
    sltiu   $at, t4, 0x00AB
    bnel    $at, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80B07D18
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t5, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    beq     $zero, $zero, lbl_80B07D18
    swc1    $f4, 0x0400(s0)            # 00000400
var_80B06060:
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     $at, 0x423C                # $at = 423C0000
    mtc1    $at, $f8                   # $f8 = 47.00
    lwc1    $f6, 0x0028(t1)            # 00000028
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    add.s   $f10, $f6, $f8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f0
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    add.s   $f6, $f10, $f4
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lw      v1, 0x0388(s0)             # 00000388
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v1, $at, lbl_80B060D4
    sb      t6, 0x0329(s0)             # 00000329
    lui     a0, %hi(var_80B0EF1C)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF1C)  # a0 = 80B0EF1C
    jal     func_80064780
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    lui     a0, 0x1000                 # a0 = 10000000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100000FF
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B060D4:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_80B06100
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    lui     t8, %hi(var_80B1676C)      # t8 = 80B10000
    lw      t8, %lo(var_80B1676C)(t8)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_800218EC
    sb      t7, 0x03B8(t8)             # 80B103B8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06100:
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     v1, $at, lbl_80B07D18
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    mtc1    $zero, $f8                 # $f8 = 0.00
    sh      t9, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     t4, %hi(var_80B1676C)      # t4 = 80B10000
    swc1    $f8, 0x0400(s0)            # 00000400
    lw      t4, %lo(var_80B1676C)(t4)
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_800218EC
    sb      t3, 0x03B8(t4)             # 80B103B8
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B06144:
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sb      t5, 0x0329(s0)             # 00000329
    lui     $at, %hi(var_80B1593C)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B1593C)($at)
    lwc1    $f10, 0x0400(s0)           # 00000400
    addiu   a0, s0, 0x0394             # a0 = 00000394
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mul.s   $f6, $f10, $f4
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sw      a0, 0x004C($sp)
    lui     a1, 0xC3B4                 # a1 = C3B40000
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x432A                # $at = 432A0000
    mtc1    $at, $f10                  # $f10 = 170.00
    lwc1    $f8, 0x0400(s0)            # 00000400
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mul.s   $f4, $f8, $f10
    addiu   a0, s0, 0x039C             # a0 = 0000039C
    lui     a1, 0xC1A0                 # a1 = C1A00000
    mfc1    a3, $f4
    jal     func_80064280
    nop
    lui     a1, 0x3D23                 # a1 = 3D230000
    lui     a3, 0x3A03                 # a3 = 3A030000
    ori     a3, a3, 0x126F             # a3 = 3A03126F
    ori     a1, a1, 0xD70A             # a1 = 3D23D70A
    addiu   a0, s0, 0x0400             # a0 = 00000400
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t6, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t7, 0x004C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x005C(v0)             # 0000005C
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0060(v0)             # 00000060
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0064(v0)             # 00000064
    lw      t3, 0x004C($sp)
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0074(v0)             # 00000074
    lw      t4, 0x0004(t3)             # 00000004
    sw      t4, 0x0078(v0)             # 00000078
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x007C(v0)             # 0000007C
    lw      t7, 0x03A0(s0)             # 000003A0
    sw      t7, 0x0050(v0)             # 00000050
    lw      t6, 0x03A4(s0)             # 000003A4
    sw      t6, 0x0054(v0)             # 00000054
    lw      t7, 0x03A8(s0)             # 000003A8
    sw      t7, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x038E(s0)             # 0000038E
    sh      $zero, 0x038E(s0)          # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B06274:
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sb      t9, 0x0329(s0)             # 00000329
    c.lt.s  $f6, $f8
    or      a0, s1, $zero              # a0 = 00000000
    bc1fl   lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    jal     func_800D6218
    sw      t1, 0x0088($sp)
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sh      t3, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x038E(s0)             # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t1, 0x0088($sp)
var_80B062E8:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     $at, 0x43F5                # $at = 43F50000
    mtc1    $at, $f10                  # $f10 = 490.00
    lui     $at, %hi(var_80B15940)     # $at = 80B10000
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    swc1    $f10, 0x0024(t1)           # 00000024
    lwc1    $f4, %lo(var_80B15940)($at)
    lui     $at, 0xC326                # $at = C3260000
    mtc1    $at, $f6                   # $f6 = -166.00
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
    lui     $at, 0x4435                # $at = 44350000
    swc1    $f4, 0x0028(t1)            # 00000028
    swc1    $f6, 0x002C(t1)            # 0000002C
    lw      t4, 0x0000(v0)             # 80B1676C
    mtc1    $at, $f8                   # $f8 = 724.00
    lui     $at, %hi(var_80B15944)     # $at = 80B10000
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    swc1    $f8, 0x0024(t4)            # 00000024
    lw      t5, 0x0000(v0)             # 80B1676C
    lwc1    $f10, %lo(var_80B15944)($at)
    lui     $at, 0xC33A                # $at = C33A0000
    mtc1    $at, $f4                   # $f4 = -186.00
    swc1    $f10, 0x0028(t5)           # 00000028
    lw      t6, 0x0000(v0)             # 80B1676C
    lui     $at, 0x43CD                # $at = 43CD0000
    mtc1    $at, $f6                   # $f6 = 410.00
    swc1    $f4, 0x002C(t6)            # 0000002C
    sh      t7, 0x00B6(t1)             # 000000B6
    lw      t9, 0x0000(v0)             # 80B1676C
    lui     $at, 0x4489                # $at = 44890000
    mtc1    $at, $f8                   # $f8 = 1096.00
    addiu   t8, $zero, 0xB000          # t8 = FFFFB000
    lui     $at, 0xC2DC                # $at = C2DC0000
    mtc1    $at, $f10                  # $f10 = -110.00
    sh      t8, 0x00B6(t9)             # 000000B6
    swc1    $f6, 0x0394(s0)            # 00000394
    swc1    $f8, 0x0398(s0)            # 00000398
    swc1    $f10, 0x039C(s0)           # 0000039C
    lwc1    $f4, 0x0024(t1)            # 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    add.s   $f6, $f4, $f14
    lui     $at, 0x4320                # $at = 43200000
    lw      t3, 0x0388(s0)             # 00000388
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    swc1    $f6, 0x03A0(s0)            # 000003A0
    lwc1    $f8, 0x0028(t1)            # 00000028
    mtc1    $at, $f6                   # $f6 = 160.00
    sltiu   $at, t3, 0x0014
    add.s   $f4, $f8, $f10
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x03A4(s0)            # 000003A4
    lwc1    $f10, 0x002C(t1)           # 0000002C
    bne     $at, $zero, lbl_80B06428
    swc1    $f10, 0x03A8(s0)           # 000003A8
    jal     func_800646F0
    addiu   a0, $zero, 0x301C          # a0 = 0000301C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    addiu   a0, s0, 0x0314             # a0 = 00000314
    lui     a1, 0x437F                 # a1 = 437F0000
    mfc1    a3, $f14
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0388(s0)             # 00000388
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_80B0641C
    sb      t4, 0x0329(s0)             # 00000329
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    swc1    $f4, 0x032C(s0)            # 0000032C
    swc1    $f6, 0x0AFC($at)           # 00010AFC
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0641C:
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    beq     $zero, $zero, lbl_80B06430
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
lbl_80B06428:
    sb      t5, 0x0329(s0)             # 00000329
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06430:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_80B06458
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    lw      t7, 0x0000(v0)             # 80B1676C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0051          # a2 = 00000051
    jal     func_800218EC
    sb      t6, 0x03B8(t7)             # 000003B8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06458:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_80B07D18
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      $zero, 0x0388(s0)          # 00000388
    beq     $zero, $zero, lbl_80B07D18
    sh      t8, 0x038C(s0)             # 0000038C
var_80B06470:
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sb      t9, 0x0329(s0)             # 00000329
    sw      t1, 0x0088($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x301C          # a0 = 0000301C
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x43F5                # $at = 43F50000
    lw      t1, 0x0088($sp)
    mtc1    $at, $f8                   # $f8 = 490.00
    lui     $at, %hi(var_80B15948)     # $at = 80B10000
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    swc1    $f8, 0x0024(t1)            # 00000024
    lwc1    $f10, %lo(var_80B15948)($at)
    lui     $at, 0xC326                # $at = C3260000
    mtc1    $at, $f4                   # $f4 = -166.00
    lui     $at, 0x4435                # $at = 44350000
    swc1    $f10, 0x0028(t1)           # 00000028
    swc1    $f4, 0x002C(t1)            # 0000002C
    lw      t3, %lo(var_80B1676C)(t3)
    mtc1    $at, $f6                   # $f6 = 724.00
    lui     $at, %hi(var_80B1594C)     # $at = 80B10000
    lui     t4, %hi(var_80B1676C)      # t4 = 80B10000
    swc1    $f6, 0x0024(t3)            # 80B10024
    lw      t4, %lo(var_80B1676C)(t4)
    lwc1    $f8, %lo(var_80B1594C)($at)
    lui     $at, 0xC33A                # $at = C33A0000
    lui     t5, %hi(var_80B1676C)      # t5 = 80B10000
    swc1    $f8, 0x0028(t4)            # 80B10028
    lw      t5, %lo(var_80B1676C)(t5)
    mtc1    $at, $f10                  # $f10 = -186.00
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    lui     t8, %hi(var_80B1676C)      # t8 = 80B10000
    swc1    $f10, 0x002C(t5)           # 80B1002C
    sh      t6, 0x00B6(t1)             # 000000B6
    lw      t8, %lo(var_80B1676C)(t8)
    lui     $at, 0x43E1                # $at = 43E10000
    mtc1    $at, $f4                   # $f4 = 450.00
    addiu   t7, $zero, 0xB000          # t7 = FFFFB000
    sh      t7, 0x00B6(t8)             # 80B100B6
    lui     $at, %hi(var_80B15950)     # $at = 80B10000
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f6, %lo(var_80B15950)($at)
    lui     $at, 0xC31E                # $at = C31E0000
    mtc1    $at, $f8                   # $f8 = -158.00
    swc1    $f6, 0x0398(s0)            # 00000398
    lui     $at, 0x4348                # $at = 43480000
    swc1    $f8, 0x039C(s0)            # 0000039C
    lwc1    $f10, 0x0024(t1)           # 00000024
    lw      v1, 0x0388(s0)             # 00000388
    lui     a0, %hi(var_80B0EF1C)      # a0 = 80B10000
    sub.s   $f4, $f10, $f2
    mtc1    $at, $f10                  # $f10 = 200.00
    lui     $at, 0x4317                # $at = 43170000
    addiu   a0, a0, %lo(var_80B0EF1C)  # a0 = 80B0EF1C
    add.s   $f6, $f4, $f0
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    swc1    $f6, 0x03A0(s0)            # 000003A0
    lwc1    $f8, 0x0028(t1)            # 00000028
    mtc1    $at, $f6                   # $f6 = 151.00
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    add.s   $f4, $f8, $f10
    sub.s   $f8, $f4, $f6
    sub.s   $f10, $f8, $f0
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lwc1    $f4, 0x002C(t1)            # 0000002C
    add.s   $f6, $f4, $f0
    bne     v1, $at, lbl_80B0659C
    swc1    $f6, 0x03A8(s0)            # 000003A8
    jal     func_80064780
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0659C:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bne     v1, $at, lbl_80B065B8
    addiu   a0, $zero, 0x281D          # a0 = 0000281D
    jal     func_800646F0
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B065B8:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_80B065DC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0052          # a2 = 00000052
    jal     func_800218EC
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B065DC:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_80B07D18
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    sw      $zero, 0x0388(s0)          # 00000388
    sh      t9, 0x038C(s0)             # 0000038C
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2168             # a1 = 06002168
    sw      t1, 0x0088($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x2168             # a0 = 06002168
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80B15954)     # $at = 80B10000
    lwc1    $f0, %lo(var_80B15954)($at)
    cvt.s.w $f10, $f8
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f2                   # $f2 = -200.00
    lw      t1, 0x0088($sp)
    lui     $at, %hi(var_80B15958)     # $at = 80B10000
    swc1    $f0, 0x0028(s0)            # 00000028
    swc1    $f10, 0x0184(s0)           # 00000184
    swc1    $f2, 0x0024(s0)            # 00000024
    swc1    $f2, 0x002C(s0)            # 0000002C
    lwc1    $f4, %lo(var_80B15958)($at)
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f6                   # $f6 = -60.00
    addiu   t3, $zero, 0x5000          # t3 = 00005000
    sh      t3, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_80B1595C)     # $at = 80B10000
    swc1    $f4, 0x00BC(s0)            # 000000BC
    swc1    $f6, 0x0394(s0)            # 00000394
    lwc1    $f8, %lo(var_80B1595C)($at)
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    add.s   $f4, $f0, $f10
    addu    $at, $at, s1
    swc1    $f2, 0x039C(s0)            # 0000039C
    swc1    $f2, 0x03A0(s0)            # 000003A0
    swc1    $f4, 0x03A4(s0)            # 000003A4
    swc1    $f2, 0x03A8(s0)            # 000003A8
    swc1    $f8, 0x0398(s0)            # 00000398
    swc1    $f6, 0x0AFC($at)           # 00010AFC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    lui     t4, 0x0001                 # t4 = 00010000
    addu    t4, t4, s1
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lbu     t4, 0x0AE1(t4)             # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t4, 0x0AE2($at)            # 00010AE2
    sb      $zero, 0x0329(s0)          # 00000329
var_80B066C0:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0050($sp)
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    lw      t1, 0x0088($sp)
    bne     v1, $at, lbl_80B06710
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, %hi(var_80B0EF28)     # $at = 80B10000
    sb      t2, %lo(var_80B0EF28)($at)
    sb      t2, 0x0304(s0)             # 00000304
    mtc1    $zero, $f12                # $f12 = 0.00
    sw      t1, 0x0088($sp)
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_8009151C
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06710:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     v1, $at, lbl_80B0672C
    addiu   a0, $zero, 0x28C2          # a0 = 000028C2
    jal     func_800646F0
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0672C:
    sltiu   $at, v1, 0x001E
    bne     $at, $zero, lbl_80B06774
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     a1, 0x44A1                 # a1 = 44A10000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    mfc1    a3, $f14
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x2000             # a1 = 44A12000
    jal     func_80064280
    sw      t1, 0x0088($sp)
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lw      t1, 0x0088($sp)
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x03A4(s0)            # 000003A4
lbl_80B06774:
    lw      a1, 0x0184(s0)             # 00000184
    sw      t1, 0x0088($sp)
    jal     func_8008D6A8
    lw      a0, 0x0050($sp)
    beq     v0, $zero, lbl_80B07D18
    lw      t1, 0x0088($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2E6C             # a1 = 06002E6C
    lw      a0, 0x0050($sp)
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008D328
    sw      t1, 0x0088($sp)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f0                   # $f0 = -200.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    addiu   t5, $zero, 0x000E          # t5 = 0000000E
    sh      t5, 0x038C(s0)             # 0000038C
    sub.s   $f8, $f6, $f16
    sw      $zero, 0x0388(s0)          # 00000388
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    swc1    $f0, 0x0024(s0)            # 00000024
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_800CAA70
    swc1    $f0, 0x002C(s0)            # 0000002C
    lw      t1, 0x0088($sp)
var_80B067E0:
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s1, $at
    addiu   t6, s0, 0x0028             # t6 = 00000028
    sw      t6, 0x0054($sp)
    sw      t0, 0x0050($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lui     a1, 0x44A1                 # a1 = 44A10000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x2000             # a1 = 44A12000
    lw      a0, 0x0054($sp)
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, %hi(var_80B15960)     # $at = 80B10000
    lwc1    $f0, %lo(var_80B15960)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lw      t1, 0x0088($sp)
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f18                  # $f18 = 250.00
    lw      t0, 0x0050($sp)
    lui     $at, 0xC385                # $at = C3850000
    mtc1    $at, $f10                  # $f10 = -266.00
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
    lui     $at, 0x4435                # $at = 44350000
    swc1    $f0, 0x0028(t1)            # 00000028
    sh      t7, 0x00B6(t1)             # 000000B6
    swc1    $f18, 0x0024(t1)           # 00000024
    swc1    $f10, 0x002C(t1)           # 0000002C
    lw      t8, 0x0000(v0)             # 80B1676C
    mtc1    $at, $f4                   # $f4 = 724.00
    lui     $at, 0xC33A                # $at = C33A0000
    mtc1    $at, $f6                   # $f6 = -186.00
    swc1    $f4, 0x0024(t8)            # 00000024
    lw      t9, 0x0000(v0)             # 80B1676C
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f10                  # $f10 = -10.00
    swc1    $f0, 0x0028(t9)            # 00000028
    lw      t3, 0x0000(v0)             # 80B1676C
    lui     $at, 0x42A0                # $at = 42A00000
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f6, 0x002C(t3)            # 0000002C
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0028(s0)            # 00000028
    lw      v1, 0x0388(s0)             # 00000388
    add.s   $f4, $f8, $f10
    mtc1    $at, $f8                   # $f8 = 80.00
    lui     $at, 0x4348                # $at = 43480000
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f10, $f6, $f8
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    add.s   $f6, $f4, $f16
    swc1    $f10, 0x0398(s0)           # 00000398
    swc1    $f6, 0x039C(s0)            # 0000039C
    lwc1    $f8, 0x0024(t1)            # 00000024
    mtc1    $at, $f6                   # $f6 = 200.00
    addiu   $at, $zero, 0x0014         # $at = 00000014
    swc1    $f8, 0x03A0(s0)            # 000003A0
    lwc1    $f10, 0x0028(t1)           # 00000028
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lwc1    $f4, 0x002C(t1)            # 0000002C
    sub.s   $f8, $f4, $f6
    bne     v1, $at, lbl_80B06908
    swc1    $f8, 0x03A8(s0)            # 000003A8
    jal     func_800218EC
    sw      t0, 0x0050($sp)
    lw      t0, 0x0050($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06908:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_80B0699C
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f14                  # $f14 = 15.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lwc1    $f0, 0x0024(s0)            # 00000024
    lui     $at, 0x431A                # $at = 431A0000
    mtc1    $at, $f6                   # $f6 = 154.00
    add.s   $f4, $f0, $f10
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f12, 0x0028(s0)           # 00000028
    sub.s   $f8, $f4, $f6
    lwc1    $f2, 0x002C(s0)            # 0000002C
    lui     $at, 0x429A                # $at = 429A0000
    add.s   $f4, $f12, $f10
    swc1    $f8, 0x0394(s0)            # 00000394
    mtc1    $at, $f8                   # $f8 = 77.00
    sub.s   $f6, $f2, $f14
    swc1    $f4, 0x0398(s0)            # 00000398
    lui     $at, 0x42C8                # $at = 42C80000
    add.s   $f10, $f12, $f8
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    swc1    $f6, 0x039C(s0)            # 0000039C
    add.s   $f6, $f10, $f4
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sh      t4, 0x038C(s0)             # 0000038C
    add.s   $f10, $f2, $f8
    sw      $zero, 0x0388(s0)          # 00000388
    swc1    $f6, 0x03A4(s0)            # 000003A4
    sb      t5, 0x0304(s0)             # 00000304
    swc1    $f10, 0x03A8(s0)           # 000003A8
    swc1    $f0, 0x03A0(s0)            # 000003A0
lbl_80B0699C:
    lw      t6, 0x1DE4(t0)             # 00001DE4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x001F             # t7 = 00000000
    bnel    t7, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D1          # a1 = 000039D1
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B069C0:
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, s1
    lw      t8, 0x1DE4(t8)             # 00011DE4
    andi    t9, t8, 0x001F             # t9 = 00000000
    bnel    t9, $zero, lbl_80B069F8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t3, 0x0388(s0)             # 00000388
    or      a0, s0, $zero              # a0 = 00000000
    sltiu   $at, t3, 0x0064
    beql    $at, $zero, lbl_80B069F8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D1          # a1 = 000039D1
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80B069F8:
    jal     func_8008C9C0
    sw      a0, 0x0050($sp)
    lui     $at, 0x429A                # $at = 429A0000
    mtc1    $at, $f6                   # $f6 = 77.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    lui     a3, 0x40A0                 # a3 = 40A00000
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x0032
    bne     $at, $zero, lbl_80B06AA8
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     v1, $at, lbl_80B06A74
    lw      a0, 0x0050($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0BFC             # a1 = 06000BFC
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0BFC             # a0 = 06000BFC
    mtc1    v0, $f10                   # $f10 = 0.00
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0304(s0)             # 00000304
    cvt.s.w $f4, $f10
    swc1    $f4, 0x0184(s0)            # 00000184
lbl_80B06A74:
    lw      a0, 0x0050($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B06AA8
    lw      a0, 0x0050($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3F38             # a1 = 06003F38
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    swc1    $f6, 0x0184(s0)            # 00000184
lbl_80B06AA8:
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x0047
    bne     $at, $zero, lbl_80B06AD4
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    addiu   a0, s0, 0x01A4             # a0 = 000001A4
    lui     a1, 0x437F                 # a1 = 437F0000
    mfc1    a3, $f14
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B06AD4:
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    bne     v1, $at, lbl_80B07D18
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    sh      t5, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3754             # a1 = 06003754
    lw      a0, 0x0050($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x3754             # a0 = 06003754
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    cvt.s.w $f10, $f8
    addiu   t6, $zero, 0x0037          # t6 = 00000037
    lui     $at, 0x0001                # $at = 00010000
    sb      t6, 0x0329(s0)             # 00000329
    addu    $at, $at, s1
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f10, 0x0184(s0)           # 00000184
    addiu   a1, $zero, 0x39D3          # a1 = 000039D3
    jal     func_80022FD0
    swc1    $f4, 0x0AFC($at)           # 00010AFC
var_80B06B3C:
    addiu   t7, s0, 0x013C             # t7 = 0000013C
    addiu   t8, s0, 0x03A4             # t8 = 000003A4
    sw      t8, 0x0048($sp)
    sw      t7, 0x0050($sp)
    lw      t9, 0x0388(s0)             # 00000388
    addiu   t3, $zero, 0x0037          # t3 = 00000037
    sltiu   $at, t9, 0x0019
    beql    $at, $zero, lbl_80B06B6C
    lui     $at, 0x42C8                # $at = 42C80000
    beq     $zero, $zero, lbl_80B06BC8
    sb      t3, 0x0329(s0)             # 00000329
    lui     $at, 0x42C8                # $at = 42C80000
lbl_80B06B6C:
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f8, 0x0184(s0)            # 00000184
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sb      t4, 0x0329(s0)             # 00000329
    c.lt.s  $f6, $f8
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    lui     a1, 0x40E0                 # a1 = 40E00000
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1f    lbl_80B06BC0
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f14                  # $f14 = 15.00
    mfc1    a3, $f0
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    mfc1    a1, $f14
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80B06BCC
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80B06BC0:
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 0000CCCD
lbl_80B06BC8:
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80B06BCC:
    nop
    swc1    $f10, 0x01A4(s0)           # 000001A4
    jal     func_8008C9C0
    lw      a0, 0x0050($sp)
    lw      a0, 0x0050($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B06C10
    lw      a0, 0x0050($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x28A8             # a1 = 060028A8
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    nop
    swc1    $f4, 0x0184(s0)            # 00000184
lbl_80B06C10:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f4                   # $f4 = 90.00
    add.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0394             # a0 = 00000394
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x40CC                 # a3 = 40CC0000
    sub.s   $f6, $f10, $f4
    ori     a3, a3, 0xCCCC             # a3 = 40CCCCCC
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sw      a0, 0x004C($sp)
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0x428C                # $at = 428C0000
    add.s   $f4, $f8, $f10
    mtc1    $at, $f10                  # $f10 = 70.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    sub.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0398             # a0 = 00000398
    lui     a3, 0x4150                 # a3 = 41500000
    sub.s   $f4, $f8, $f10
    mfc1    a1, $f4
    jal     func_80064280
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x406C                 # a3 = 406C0000
    add.s   $f8, $f6, $f12
    ori     a3, a3, 0xCCCC             # a3 = 406CCCCC
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    lw      a0, 0x0048($sp)
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_80B06CF0
    sltiu   $at, v1, 0x0033
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D4          # a1 = 000039D4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x396D          # a1 = 0000396D
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x0033
lbl_80B06CF0:
    beq     $at, $zero, lbl_80B06CFC
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x008D($sp)
lbl_80B06CFC:
    sltiu   $at, v1, 0x003C
    bne     $at, $zero, lbl_80B07D18
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      v1, 0x004C($sp)
    addiu   t5, $zero, 0x0011          # t5 = 00000011
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x0000(v1)             # 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0153          # a2 = 00000153
    sw      t7, 0x005C(v0)             # 0000005C
    lw      t6, 0x0004(v1)             # 00000004
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t6, 0x0060(v0)             # 00000060
    lw      t7, 0x0008(v1)             # 00000008
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t7, 0x0064(v0)             # 00000064
    lw      t9, 0x0000(v1)             # 00000000
    sw      t9, 0x0074(v0)             # 00000074
    lw      t8, 0x0004(v1)             # 00000004
    sw      t8, 0x0078(v0)             # 00000078
    lw      t9, 0x0008(v1)             # 00000008
    sw      t9, 0x007C(v0)             # 0000007C
    lw      t4, 0x03A0(s0)             # 000003A0
    sw      t4, 0x0050(v0)             # 00000050
    lw      t3, 0x03A4(s0)             # 000003A4
    sw      t3, 0x0054(v0)             # 00000054
    lw      t4, 0x03A8(s0)             # 000003A8
    sw      t4, 0x0058(v0)             # 00000058
    sh      t5, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    jal     func_80B05648
    sb      t6, 0x0327(s0)             # 00000327
    lw      a0, 0x0050($sp)
    jal     func_8008D6D0
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x0602                 # a2 = 06020000
    addiu   a2, a2, 0x4570             # a2 = 06024570
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0050($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x017E          # a2 = 0000017E
    jal     func_80B05648
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0054          # a2 = 00000054
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0304(s0)             # 00000304
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B06DE8:
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sb      t8, 0x0329(s0)             # 00000329
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0050($sp)
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lwc1    $f10, 0x0024(t1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    sub.s   $f4, $f10, $f12
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lui     $at, 0x4270                # $at = 42700000
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f6, 0x0028(t1)            # 00000028
    lw      t9, 0x0388(s0)             # 00000388
    lui     a1, 0x0601                 # a1 = 06010000
    add.s   $f8, $f6, $f12
    addiu   t3, $zero, 0x0012          # t3 = 00000012
    addiu   a1, a1, 0x0380             # a1 = 06010380
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    swc1    $f8, 0x0398(s0)            # 00000398
    lwc1    $f10, 0x002C(t1)           # 0000002C
    add.s   $f4, $f10, $f2
    swc1    $f4, 0x039C(s0)            # 0000039C
    lwc1    $f6, 0x0024(t1)            # 00000024
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   $at, $zero, 0x0019         # $at = 00000019
    swc1    $f6, 0x03A0(s0)            # 000003A0
    lwc1    $f8, 0x0028(t1)            # 00000028
    add.s   $f10, $f8, $f14
    add.s   $f6, $f10, $f4
    sub.s   $f8, $f6, $f16
    swc1    $f8, 0x03A4(s0)            # 000003A4
    lwc1    $f10, 0x002C(t1)           # 0000002C
    bne     t9, $at, lbl_80B07D18
    swc1    $f10, 0x03A8(s0)           # 000003A8
    sh      t3, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    jal     func_8008D21C
    lw      a0, 0x0050($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f0, 0x0024(s0)            # 00000024
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x43AF                # $at = 43AF0000
    add.s   $f8, $f0, $f6
    mtc1    $at, $f10                  # $f10 = 350.00
    swc1    $f4, 0x0158(s0)            # 00000158
    lui     $at, 0x4270                # $at = 42700000
    sub.s   $f4, $f8, $f10
    lwc1    $f12, 0x0028(s0)           # 00000028
    mtc1    $at, $f10                  # $f10 = 60.00
    add.s   $f8, $f0, $f16
    lwc1    $f2, 0x002C(s0)            # 0000002C
    addiu   t4, $zero, 0x4000          # t4 = 00004000
    sub.s   $f6, $f4, $f16
    swc1    $f8, 0x03A0(s0)            # 000003A0
    sh      t4, 0x0032(s0)             # 00000032
    add.s   $f4, $f12, $f10
    swc1    $f6, 0x0394(s0)            # 00000394
    swc1    $f12, 0x0398(s0)           # 00000398
    swc1    $f2, 0x039C(s0)            # 0000039C
    swc1    $f4, 0x03A4(s0)            # 000003A4
    beq     $zero, $zero, lbl_80B07D18
    swc1    $f2, 0x03A8(s0)            # 000003A8
var_80B06F0C:
    lw      t6, 0x0388(s0)             # 00000388
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t6, $at, lbl_80B06F28
    sb      t5, 0x0329(s0)             # 00000329
    jal     func_800CAA70
    addiu   a0, $zero, 0x0065          # a0 = 00000065
lbl_80B06F28:
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    lui     a1, 0x40E0                 # a1 = 40E00000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f4                   # $f4 = 350.00
    add.s   $f10, $f6, $f8
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0394             # a0 = 00000394
    sub.s   $f6, $f10, $f4
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f6
    jal     func_80064280
    nop
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x03A0             # a0 = 000003A0
    lw      a1, 0x0024(s0)             # 00000024
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0218             # a0 = 00000218
    jal     func_80064280
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      t7, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0041         # $at = 00000041
    addiu   t8, $zero, 0x0013          # t8 = 00000013
    bnel    t7, $at, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    sh      t8, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B07D18
    sw      $zero, 0x0388(s0)          # 00000388
var_80B06FCC:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f8, 0x0384(s0)            # 00000384
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f4, $f8, $f10
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f10                  # $f10 = 1.00
    lw      t3, 0x0388(s0)             # 00000388
    swc1    $f4, 0x0384(s0)            # 00000384
    add.s   $f8, $f6, $f0
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    sub.s   $f4, $f0, $f10
    sb      t9, 0x0329(s0)             # 00000329
    swc1    $f8, 0x0028(s0)            # 00000028
    bne     t3, $at, lbl_80B07D18
    swc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sh      t4, 0x038C(s0)             # 0000038C
    add.s   $f10, $f6, $f8
    sw      $zero, 0x0388(s0)          # 00000388
    lui     $at, %hi(var_80B15964)     # $at = 80B10000
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f4, %lo(var_80B15964)($at)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0053          # a2 = 00000053
    swc1    $f6, 0x0384(s0)            # 00000384
    jal     func_800218EC
    swc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    swc1    $f8, 0x02FC(s0)            # 000002FC
    beq     $zero, $zero, lbl_80B07D18
    swc1    $f10, 0x0218(s0)           # 00000218
var_80B07074:
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sb      t5, 0x0329(s0)             # 00000329
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0050($sp)
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f18                  # $f18 = 250.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 1.00
    lw      t1, 0x0088($sp)
    add.s   $f6, $f4, $f0
    lui     $at, %hi(var_80B15968)     # $at = 80B10000
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    sub.s   $f10, $f0, $f8
    swc1    $f6, 0x0028(s0)            # 00000028
    lui     a1, 0x0601                 # a1 = 06010000
    sub.s   $f8, $f18, $f12
    swc1    $f10, 0x0060(s0)           # 00000060
    swc1    $f18, 0x0024(t1)           # 00000024
    lwc1    $f4, %lo(var_80B15968)($at)
    lui     $at, 0xC385                # $at = C3850000
    mtc1    $at, $f6                   # $f6 = -266.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    swc1    $f4, 0x0028(t1)            # 00000028
    sh      t6, 0x00B6(t1)             # 000000B6
    sub.s   $f4, $f8, $f10
    swc1    $f6, 0x002C(t1)            # 0000002C
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t7, $zero, 0x0015          # t7 = 00000015
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f6, 0x0028(t1)            # 00000028
    addiu   a1, a1, 0x0380             # a1 = 06010380
    add.s   $f8, $f6, $f12
    sub.s   $f10, $f8, $f16
    mtc1    $at, $f8                   # $f8 = 100.00
    lui     $at, 0x4270                # $at = 42700000
    swc1    $f10, 0x0398(s0)           # 00000398
    lwc1    $f4, 0x002C(t1)            # 0000002C
    sub.s   $f6, $f4, $f2
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x039C(s0)           # 0000039C
    lwc1    $f4, 0x0024(t1)            # 00000024
    mtc1    $at, $f10                  # $f10 = 60.00
    lui     $at, %hi(var_80B1596C)     # $at = 80B10000
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lwc1    $f6, 0x0028(t1)            # 00000028
    add.s   $f8, $f6, $f14
    add.s   $f4, $f8, $f10
    sub.s   $f6, $f4, $f2
    add.s   $f8, $f6, $f16
    lwc1    $f6, 0x0028(s0)            # 00000028
    swc1    $f8, 0x03A4(s0)            # 000003A4
    lwc1    $f10, 0x002C(t1)           # 0000002C
    swc1    $f10, 0x03A8(s0)           # 000003A8
    lwc1    $f0, %lo(var_80B1596C)($at)
    lui     $at, %hi(var_80B15970)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15970)($at)
    c.le.s  $f6, $f0
    swc1    $f4, 0x03AC(s0)            # 000003AC
    bc1fl   lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0028(s0)            # 00000028
    sh      t7, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    swc1    $f14, 0x0410(s0)           # 00000410
    swc1    $f2, 0x0060(s0)            # 00000060
    mfc1    a2, $f2
    jal     func_8008D21C
    lw      a0, 0x0050($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_80B059CC
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_8009151C
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B071EC:
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sb      t8, 0x0329(s0)             # 00000329
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a0, 0x0001                 # a0 = 00010000
    addu    a0, a0, s1
    lw      a0, 0x1DE4(a0)             # 00011DE4
    sll     a0, a0, 15
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f8, 0x0410(s0)            # 00000410
    addiu   a0, s0, 0x0410             # a0 = 00000410
    lui     a1, 0x3F80                 # a1 = 3F800000
    mul.s   $f10, $f0, $f8
    lui     a2, 0x3F40                 # a2 = 3F400000
    jal     func_800642F0
    swc1    $f10, 0x040C(s0)           # 0000040C
    lw      t9, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t9, $at, lbl_80B07D18
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    addiu   t3, $zero, 0x0016          # t3 = 00000016
    sh      t3, 0x038C(s0)             # 0000038C
    swc1    $f14, 0x02FC(s0)           # 000002FC
var_80B07254:
    lw      t4, 0x0388(s0)             # 00000388
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    sltiu   $at, t4, 0x003C
    beql    $at, $zero, lbl_80B07274
    mtc1    $zero, $f18                # $f18 = 0.00
    sb      t5, 0x0329(s0)             # 00000329
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_80B07274:
    lui     $at, %hi(var_80B15974)     # $at = 80B10000
    lwc1    $f16, %lo(var_80B15974)($at)
    swc1    $f18, 0x03AC(s0)           # 000003AC
    jal     func_8008C9C0
    swc1    $f16, 0x0028(s0)           # 00000028
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x0033
    bne     $at, $zero, lbl_80B072CC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addiu   a0, s0, 0x0214             # a0 = 00000214
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B072CC:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     v1, $at, lbl_80B072E0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x0326(s0)             # 00000326
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B072E0:
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     v1, $at, lbl_80B07360
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0153          # a2 = 00000153
    jal     func_80B05648
    or      a3, $zero, $zero           # a3 = 00000000
    lui     v0, 0x0602                 # v0 = 06020000
    addiu   v0, v0, 0x1A90             # v0 = 06021A90
    sll     t7, v0,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t3, 0x8012                 # t3 = 80120000
    addu    t3, t3, t9
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t5, $zero, 0x00B4          # t5 = 000000B4
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    addu    a2, t3, t4
    addu    a2, a2, $at
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      t7, 0x0018($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1D4C             # a1 = 00001D4C
    jal     func_80020780
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B07360:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f0, 0x0024(s0)            # 00000024
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f10                  # $f10 = 350.00
    add.s   $f8, $f0, $f6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x4270                # $at = 42700000
    sub.s   $f4, $f8, $f10
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f2, 0x002C(s0)            # 0000002C
    swc1    $f0, 0x03A0(s0)            # 000003A0
    add.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x01AC(s0)            # 000001AC
    swc1    $f10, 0x0398(s0)           # 00000398
    swc1    $f8, 0x0394(s0)            # 00000394
    add.s   $f8, $f4, $f6
    sltiu   $at, v1, 0x00A7
    swc1    $f2, 0x039C(s0)            # 0000039C
    swc1    $f2, 0x03A8(s0)            # 000003A8
    sub.s   $f10, $f8, $f12
    bne     $at, $zero, lbl_80B073E0
    swc1    $f10, 0x03A4(s0)           # 000003A4
    sltiu   $at, v1, 0x00AD
    beq     $at, $zero, lbl_80B073E0
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sb      t8, 0x0302(s0)             # 00000302
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B073E0:
    sltiu   $at, v1, 0x00BB
    bne     $at, $zero, lbl_80B073FC
    sltiu   $at, v1, 0x00C4
    beq     $at, $zero, lbl_80B073FC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x0302(s0)             # 00000302
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B073FC:
    sltiu   $at, v1, 0x00CB
    bne     $at, $zero, lbl_80B07418
    sltiu   $at, v1, 0x00D2
    beq     $at, $zero, lbl_80B07418
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sb      t9, 0x0302(s0)             # 00000302
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B07418:
    addiu   $at, $zero, 0x00A6         # $at = 000000A6
    beq     v1, $at, lbl_80B07434
    addiu   $at, $zero, 0x00B9         # $at = 000000B9
    beq     v1, $at, lbl_80B07434
    addiu   $at, $zero, 0x00C8         # $at = 000000C8
    bnel    v1, $at, lbl_80B0744C
    addiu   $at, $zero, 0x00D7         # $at = 000000D7
lbl_80B07434:
    jal     func_800646F0
    addiu   a0, $zero, 0x3997          # a0 = 00003997
    jal     func_800646F0
    addiu   a0, $zero, 0x398F          # a0 = 0000398F
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x00D7         # $at = 000000D7
lbl_80B0744C:
    bne     v1, $at, lbl_80B07D18
    addiu   t3, $zero, 0x0017          # t3 = 00000017
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t3, 0x038C(s0)             # 0000038C
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0055          # a2 = 00000055
    jal     func_800218EC
    swc1    $f4, 0x0214(s0)            # 00000214
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B07478:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
    lw      t1, 0x0088($sp)
    addiu   a0, $zero, 0x3997          # a0 = 00003997
    sltiu   $at, v1, 0x00DF
    bne     $at, $zero, lbl_80B074AC
    sltiu   $at, v1, 0x00E8
    beq     $at, $zero, lbl_80B074AC
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sb      t4, 0x0302(s0)             # 00000302
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B074AC:
    addiu   $at, $zero, 0x00DE         # $at = 000000DE
    bnel    v1, $at, lbl_80B074D4
    lui     $at, 0x4000                # $at = 40000000
    jal     func_800646F0
    sw      t1, 0x0088($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x398F          # a0 = 0000398F
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
    lui     $at, 0x4000                # $at = 40000000
lbl_80B074D4:
    mtc1    $at, $f0                   # $f0 = 2.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lwc1    $f6, 0x0024(t1)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    sub.s   $f8, $f6, $f12
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f10                  # $f10 = 6.00
    lui     $at, 0x40E0                # $at = 40E00000
    addiu   a0, $zero, 0x1808          # a0 = 00001808
    add.s   $f4, $f8, $f10
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f6, 0x0028(t1)            # 00000028
    add.s   $f8, $f6, $f12
    mtc1    $at, $f6                   # $f6 = 7.00
    lui     $at, 0x4270                # $at = 42700000
    swc1    $f8, 0x0398(s0)            # 00000398
    lwc1    $f10, 0x002C(t1)           # 0000002C
    add.s   $f4, $f10, $f2
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x039C(s0)            # 0000039C
    lwc1    $f10, 0x0024(t1)           # 00000024
    mtc1    $at, $f8                   # $f8 = 60.00
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    swc1    $f10, 0x03A0(s0)           # 000003A0
    lwc1    $f4, 0x0028(t1)            # 00000028
    add.s   $f6, $f4, $f14
    add.s   $f10, $f6, $f8
    sub.s   $f4, $f10, $f2
    sub.s   $f6, $f4, $f0
    swc1    $f6, 0x03A4(s0)            # 000003A4
    lwc1    $f8, 0x002C(t1)            # 0000002C
    bne     v1, $at, lbl_80B0759C
    swc1    $f8, 0x03A8(s0)            # 000003A8
    jal     func_800646F0
    sw      t1, 0x0088($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0056          # a2 = 00000056
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_8009151C
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0759C:
    sltiu   $at, v1, 0x00E5
    bne     $at, $zero, lbl_80B07D18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t2, 0x0B05($at)            # 00010B05
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s1, $at
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sb      v0, 0x0B08(t0)             # 00000B08
    sb      v0, 0x0B07(t0)             # 00000B07
    sb      v0, 0x0B06(t0)             # 00000B06
    sb      t6, 0x0B09(t0)             # 00000B09
    lw      t7, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x00EA         # $at = 000000EA
    addiu   a1, $sp, 0x0068            # a1 = FFFFFFD8
    bne     t7, $at, lbl_80B07D18
    addiu   a2, $zero, 0x0018          # a2 = 00000018
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x0B05($at)         # 00010B05
    sh      a2, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lw      t9, 0x0024(t1)             # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    sw      t9, 0x0000(a1)             # FFFFFFD8
    lw      t8, 0x0028(t1)             # 00000028
    or      a0, s1, $zero              # a0 = 00000000
    sw      t8, 0x0004(a1)             # FFFFFFDC
    lw      t9, 0x002C(t1)             # 0000002C
    sw      t9, 0x0008(a1)             # FFFFFFE0
    lwc1    $f10, 0x006C($sp)
    add.s   $f6, $f10, $f4
    jal     func_80B056FC
    swc1    $f6, 0x006C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x0AE2($at)         # 00010AE2
    sb      $zero, 0x0329(s0)          # 00000329
    beq     $zero, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
var_80B07658:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lw      v0, 0x1E10(v0)             # 00011E10
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    lw      t4, 0x0004(v0)             # 00010004
    lw      v1, 0x0388(s0)             # 00000388
    sw      t4, 0x03A0(s0)             # 000003A0
    lw      t3, 0x0008(v0)             # 00010008
    andi    t5, v1, 0x0003             # t5 = 00000000
    sw      t3, 0x03A4(s0)             # 000003A4
    lw      t4, 0x000C(v0)             # 0001000C
    sw      t4, 0x03A8(s0)             # 000003A8
    lwc1    $f10, 0x0004(v0)           # 00010004
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x0394(s0)            # 00000394
    lwc1    $f8, 0x0008(v0)            # 00010008
    mtc1    $at, $f6                   # $f6 = 70.00
    sub.s   $f10, $f8, $f16
    swc1    $f10, 0x0398(s0)           # 00000398
    lwc1    $f4, 0x000C(v0)            # 0001000C
    add.s   $f8, $f4, $f6
    bne     t5, $zero, lbl_80B076D4
    swc1    $f8, 0x039C(s0)            # 0000039C
    jal     func_800646F0
    addiu   a0, $zero, 0x1801          # a0 = 00001801
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B076D4:
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v1, $at, lbl_80B07D18
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0057          # a2 = 00000057
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    sh      t6, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B07D18
    sw      $zero, 0x0388(s0)          # 00000388
var_80B076FC:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lw      t1, 0x0088($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lwc1    $f10, 0x0024(t1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    sub.s   $f4, $f10, $f12
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lui     $at, 0x4270                # $at = 42700000
    lw      t7, 0x0388(s0)             # 00000388
    add.s   $f8, $f4, $f6
    lui     v0, 0x0001                 # v0 = 00010000
    lui     v1, %hi(var_80B1676C)      # v1 = 80B10000
    addu    v0, v0, s1
    swc1    $f8, 0x0394(s0)            # 00000394
    lwc1    $f10, 0x0028(t1)           # 00000028
    add.s   $f4, $f10, $f12
    add.s   $f6, $f4, $f14
    swc1    $f6, 0x0398(s0)            # 00000398
    lwc1    $f8, 0x002C(t1)            # 0000002C
    add.s   $f10, $f8, $f2
    add.s   $f4, $f10, $f14
    swc1    $f4, 0x039C(s0)            # 0000039C
    lwc1    $f6, 0x0024(t1)            # 00000024
    sub.s   $f8, $f6, $f2
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0x4040                # $at = 40400000
    swc1    $f8, 0x03A0(s0)            # 000003A0
    lwc1    $f10, 0x0028(t1)           # 00000028
    add.s   $f4, $f10, $f14
    add.s   $f8, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 3.00
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    sub.s   $f10, $f8, $f2
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x03A4(s0)            # 000003A4
    lwc1    $f8, 0x002C(t1)            # 0000002C
    sub.s   $f10, $f8, $f12
    sub.s   $f4, $f10, $f14
    bne     t7, $at, lbl_80B07D18
    swc1    $f4, 0x03A8(s0)            # 000003A8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, v1, %lo(var_80B1676C)  # v1 = 80B1676C
    lw      v0, 0x1E10(v0)             # 00011E10
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x43AF                # $at = 43AF0000
    sh      t8, 0x002E(v0)             # 0001002E
    lw      t9, 0x0000(v1)             # 80B1676C
    addiu   t5, $zero, 0x001A          # t5 = 0000001A
    lwc1    $f6, 0x0024(t9)            # 00000024
    add.s   $f8, $f6, $f16
    mtc1    $at, $f6                   # $f6 = 350.00
    lui     $at, 0x41C8                # $at = 41C80000
    add.s   $f10, $f8, $f14
    swc1    $f10, 0x0004(v0)           # 00010004
    lw      t3, 0x0000(v1)             # 80B1676C
    lwc1    $f4, 0x0028(t3)            # 00000028
    add.s   $f8, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 25.00
    lui     $at, 0xC1F0                # $at = C1F00000
    swc1    $f8, 0x0008(v0)            # 00010008
    lw      t4, 0x0000(v1)             # 80B1676C
    mtc1    $at, $f8                   # $f8 = -30.00
    lwc1    $f10, 0x002C(t4)           # 0000002C
    swc1    $f0, 0x0010(v0)            # 00010010
    swc1    $f0, 0x0018(v0)            # 00010018
    sub.s   $f6, $f10, $f4
    swc1    $f8, 0x0014(v0)            # 00010014
    swc1    $f6, 0x000C(v0)            # 0001000C
    sh      t5, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
var_80B07838:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    mtc1    $at, $f14                  # $f14 = 10.00
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
    lw      t6, 0x0000(v0)             # 80B1676C
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f10, 0x0024(t6)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    lw      v1, 0x0388(s0)             # 00000388
    add.s   $f6, $f10, $f4
    add.s   $f8, $f6, $f16
    swc1    $f8, 0x0394(s0)            # 00000394
    lw      t7, 0x0000(v0)             # 80B1676C
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0xBF00                # $at = BF000000
    lwc1    $f10, 0x0028(t7)           # 00000028
    addiu   t7, $zero, 0x001B          # t7 = 0000001B
    add.s   $f4, $f10, $f14
    swc1    $f4, 0x0398(s0)            # 00000398
    lw      t8, 0x0000(v0)             # 80B1676C
    lwc1    $f6, 0x002C(t8)            # 0000002D
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x039C(s0)           # 0000039C
    lw      t9, 0x0000(v0)             # 80B1676C
    lwc1    $f4, 0x0024(t9)            # 00000024
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lw      t3, 0x0000(v0)             # 80B1676C
    lwc1    $f6, 0x0028(t3)            # 00000028
    add.s   $f8, $f6, $f16
    mtc1    $at, $f6                   # $f6 = -0.50
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    swc1    $f8, 0x03A4(s0)            # 000003A4
    lw      t4, 0x0000(v0)             # 80B1676C
    lwc1    $f10, 0x002C(t4)           # 0000002C
    swc1    $f6, 0x03B4(s0)            # 000003B4
    sub.s   $f4, $f10, $f2
    bne     v1, $at, lbl_80B078F4
    swc1    $f4, 0x03A8(s0)            # 000003A8
    lw      t6, 0x0000(v0)             # 80B1676C
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sb      t5, 0x03B8(t6)             # 000003B8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B078F4:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v1, $at, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    sh      t7, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B07D18
    sw      $zero, 0x0388(s0)          # 00000388
var_80B0790C:
    lw      v1, 0x0388(s0)             # 00000388
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_80B0793C
    swc1    $f8, 0x03B4(s0)            # 000003B4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0058          # a2 = 00000058
    jal     func_800218EC
    sw      t1, 0x0088($sp)
    lw      t1, 0x0088($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0793C:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lwc1    $f10, 0x0024(t1)           # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    sub.s   $f4, $f10, $f2
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    swc1    $f4, 0x0394(s0)            # 00000394
    lwc1    $f6, 0x0028(t1)            # 00000028
    add.s   $f8, $f6, $f16
    swc1    $f8, 0x0398(s0)            # 00000398
    lwc1    $f10, 0x002C(t1)           # 0000002C
    swc1    $f10, 0x039C(s0)           # 0000039C
    lwc1    $f4, 0x0024(t1)            # 00000024
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lwc1    $f6, 0x0028(t1)            # 00000028
    add.s   $f8, $f6, $f16
    swc1    $f8, 0x03A4(s0)            # 000003A4
    lwc1    $f10, 0x002C(t1)           # 0000002C
    bne     v1, $at, lbl_80B07D18
    swc1    $f10, 0x03A8(s0)           # 000003A8
    lw      v0, 0x1C6C(s1)             # 00001C6C
    lui     v1, %hi(var_80B16770)      # v1 = 80B10000
    addiu   v1, v1, %lo(var_80B16770)  # v1 = 80B16770
    beq     v0, $zero, lbl_80B07A14
    sw      v0, 0x0000(v1)             # 80B16770
    addiu   a2, $zero, 0x0018          # a2 = 00000018
lbl_80B079A8:
    lh      t9, 0x0000(v0)             # 00000000
    bne     a2, t9, lbl_80B07A04
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    sub.s   $f6, $f4, $f16
    swc1    $f6, 0x0394(s0)            # 00000394
    lw      t3, 0x0000(v1)             # 80B16770
    lwc1    $f8, 0x0028(t3)            # 00000028
    swc1    $f8, 0x0398(s0)            # 00000398
    lw      t4, 0x0000(v1)             # 80B16770
    lwc1    $f10, 0x002C(t4)           # 0000002C
    swc1    $f10, 0x039C(s0)           # 0000039C
    lw      t5, 0x0000(v1)             # 80B16770
    lwc1    $f4, 0x0024(t5)            # 00000024
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lw      t6, 0x0000(v1)             # 80B16770
    lwc1    $f6, 0x0028(t6)            # 00000028
    swc1    $f6, 0x03A4(s0)            # 000003A4
    lw      t7, 0x0000(v1)             # 80B16770
    lwc1    $f8, 0x002C(t7)            # 0000002C
    beq     $zero, $zero, lbl_80B07A14
    swc1    $f8, 0x03A8(s0)            # 000003A8
lbl_80B07A04:
    lw      t8, 0x0124(v0)             # 00000124
    or      v0, t8, $zero              # v0 = 00000000
    bne     t8, $zero, lbl_80B079A8
    sw      t8, 0x0000(v1)             # 80B16770
lbl_80B07A14:
    addiu   t9, $zero, 0x001C          # t9 = 0000001C
    sh      t9, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B07D18
    sw      $zero, 0x0388(s0)          # 00000388
var_80B07A24:
    lw      t3, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s1, $zero              # a0 = 00000000
    bne     t3, $at, lbl_80B07A40
    addiu   a1, $zero, 0x70D6          # a1 = 000070D6
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B07A40:
    lui     v1, %hi(var_80B16770)      # v1 = 80B10000
    addiu   v1, v1, %lo(var_80B16770)  # v1 = 80B16770
    lw      v0, 0x0000(v1)             # 80B16770
    lui     $at, 0x41A0                # $at = 41A00000
    beql    v0, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f2                   # $f2 = 4.00
    lwc1    $f10, 0x0024(v0)           # 00000024
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    sub.s   $f4, $f10, $f2
    addiu   a0, s0, 0x03A0             # a0 = 000003A0
    lui     a3, 0x4248                 # a3 = 42480000
    swc1    $f4, 0x0394(s0)            # 00000394
    lw      t4, 0x0000(v1)             # 80B16770
    lwc1    $f6, 0x0028(t4)            # 00000028
    swc1    $f6, 0x0398(s0)            # 00000398
    lw      t5, 0x0000(v1)             # 80B16770
    lwc1    $f8, 0x002C(t5)            # 0000002C
    swc1    $f8, 0x039C(s0)            # 0000039C
    lw      t6, 0x0000(v1)             # 80B16770
    jal     func_80064280
    lw      a1, 0x0024(t6)             # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lui     v1, %hi(var_80B16770)      # v1 = 80B10000
    addiu   v1, v1, %lo(var_80B16770)  # v1 = 80B16770
    lw      t7, 0x0000(v1)             # 80B16770
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mfc1    a3, $f16
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    jal     func_80064280
    lw      a1, 0x0028(t7)             # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lui     v1, %hi(var_80B16770)      # v1 = 80B10000
    addiu   v1, v1, %lo(var_80B16770)  # v1 = 80B16770
    lw      t8, 0x0000(v1)             # 80B16770
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mfc1    a3, $f16
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A8             # a0 = 000003A8
    jal     func_80064280
    lw      a1, 0x002C(t8)             # 0000002C
    lw      t9, 0x0388(s0)             # 00000388
    sltiu   $at, t9, 0x0029
    bnel    $at, $zero, lbl_80B07D1C
    lui     $at, 0x4080                # $at = 40800000
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80B07D18
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    lui     a1, 0x0601                 # a1 = 06010000
    sh      t3, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    addiu   a1, a1, 0x47E0             # a1 = 060147E0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x47E0             # a0 = 060147E0
    mtc1    v0, $f10                   # $f10 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, %hi(var_80B15978)     # $at = 80B10000
    cvt.s.w $f4, $f10
    swc1    $f6, 0x00BC(s0)            # 000000BC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    swc1    $f4, 0x0184(s0)            # 00000184
    lwc1    $f8, %lo(var_80B15978)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t2, 0x0325(s0)             # 00000325
    swc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f10, 0x006C(s0)           # 0000006C
    beq     $zero, $zero, lbl_80B07D18
    swc1    $f4, 0x0214(s0)            # 00000214
var_80B07B80:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x0050($sp)
    jal     func_8008C9C0
    sw      t1, 0x0088($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f0, 0x0024(s0)            # 00000024
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f10                  # $f10 = 350.00
    add.s   $f8, $f0, $f6
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lw      t1, 0x0088($sp)
    sub.s   $f4, $f8, $f10
    lwc1    $f2, 0x002C(s0)            # 0000002C
    lui     $at, 0x430C                # $at = 430C0000
    swc1    $f0, 0x03A0(s0)            # 000003A0
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f2, 0x03A8(s0)            # 000003A8
    add.s   $f6, $f2, $f14
    swc1    $f4, 0x0398(s0)            # 00000398
    addiu   t4, $zero, 0xC000          # t4 = FFFFC000
    sub.s   $f10, $f8, $f16
    lwc1    $f8, 0x01AC(s0)            # 000001AC
    swc1    $f6, 0x039C(s0)            # 0000039C
    mtc1    $at, $f6                   # $f6 = 140.00
    swc1    $f10, 0x0394(s0)           # 00000394
    add.s   $f10, $f8, $f16
    lui     $at, 0xC344                # $at = C3440000
    mtc1    $at, $f8                   # $f8 = -196.00
    addiu   $at, $zero, 0x0032         # $at = 00000032
    sub.s   $f4, $f10, $f12
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x03A4(s0)            # 000003A4
    sh      t4, 0x00B6(t1)             # 000000B6
    swc1    $f6, 0x0024(t1)            # 00000024
    swc1    $f8, 0x002C(t1)            # 0000002C
    lw      t5, 0x0388(s0)             # 00000388
    bnel    t5, $at, lbl_80B07C48
    lw      a0, 0x0050($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x398F          # a1 = 0000398F
    lw      a0, 0x0050($sp)
lbl_80B07C48:
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B07D18
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v1, s0, 0x0394             # v1 = 00000394
    lw      t7, 0x0000(v1)             # 00000394
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t7, 0x005C(v0)             # 0000005C
    lw      t6, 0x0004(v1)             # 00000398
    sw      t6, 0x0060(v0)             # 00000060
    lw      t7, 0x0008(v1)             # 0000039C
    sw      t7, 0x0064(v0)             # 00000064
    lw      t9, 0x0000(v1)             # 00000394
    sw      t9, 0x0074(v0)             # 00000074
    lw      t8, 0x0004(v1)             # 00000398
    sw      t8, 0x0078(v0)             # 00000078
    lw      t9, 0x0008(v1)             # 0000039C
    sw      t9, 0x007C(v0)             # 0000007C
    lw      t4, 0x03A0(s0)             # 000003A0
    sw      t4, 0x0050(v0)             # 00000050
    lw      t3, 0x03A4(s0)             # 000003A4
    sw      t3, 0x0054(v0)             # 00000054
    lw      t4, 0x03A8(s0)             # 000003A8
    sw      t4, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x038E(s0)             # 0000038E
    sh      $zero, 0x038E(s0)          # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      $zero, 0x038C(s0)          # 0000038C
    sb      t2, 0x0327(s0)             # 00000327
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B082C0
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    sh      t5, 0x0194(s0)             # 00000194
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    lw      t9, %lo(var_80B1676C)(t9)
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sb      t8, 0x03B8(t9)             # 80B103B8
lbl_80B07D18:
    lui     $at, 0x4080                # $at = 40800000
lbl_80B07D1C:
    mtc1    $at, $f10                  # $f10 = 4.00
    lwc1    $f4, 0x02FC(s0)            # 000002FC
    lbu     t3, 0x008D($sp)
    c.lt.s  $f10, $f4
    nop
    bc1fl   lbl_80B07D4C
    lh      a1, 0x038E(s0)             # 0000038E
    bne     t3, $zero, lbl_80B07D48
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3163          # a1 = 00003163
lbl_80B07D48:
    lh      a1, 0x038E(s0)             # 0000038E
lbl_80B07D4C:
    addiu   t4, s0, 0x0394             # t4 = 00000394
    addiu   t5, s0, 0x03A0             # t5 = 000003A0
    beql    a1, $zero, lbl_80B07D90
    lw      $ra, 0x003C($sp)
    sw      t4, 0x004C($sp)
    sw      t5, 0x0050($sp)
    lwc1    $f6, 0x03A4(s0)            # 000003A4
    lwc1    $f8, 0x040C(s0)            # 0000040C
    addiu   t6, s0, 0x03AC             # t6 = 000003AC
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x03A4(s0)           # 000003A4
    sw      t6, 0x0010($sp)
    lw      a3, 0x004C($sp)
    jal     func_8009D438
    lw      a2, 0x0050($sp)
    lw      $ra, 0x003C($sp)
lbl_80B07D90:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_80B07DA0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     t6, 0x0302(s0)             # 00000302
    beql    t6, $zero, lbl_80B07F1C
    lw      $ra, 0x001C($sp)
    lh      t7, 0x038E(s0)             # 0000038E
    bnel    t7, $zero, lbl_80B07F1C
    lw      $ra, 0x001C($sp)
    lw      v1, 0x1C64(a1)             # 00001C64
    lui     $at, %hi(var_80B1597C)     # $at = 80B10000
    addiu   a3, $zero, 0x0016          # a3 = 00000016
    beq     v1, $zero, lbl_80B07EE8
    addiu   a2, $zero, 0x0011          # a2 = 00000011
    lwc1    $f12, %lo(var_80B1597C)($at)
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a0, $zero, 0x01B1          # a0 = 000001B1
    lh      t8, 0x0000(v1)             # 00000000
lbl_80B07DEC:
    bnel    a0, t8, lbl_80B07EE0
    lw      v1, 0x0124(v1)             # 00000124
    lh      v0, 0x001C(v1)             # 0000001C
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beql    a1, v0, lbl_80B07E18
    lwc1    $f4, 0x0208(s0)            # 00000208
    beql    a2, v0, lbl_80B07E18
    lwc1    $f4, 0x0208(s0)            # 00000208
    bnel    a3, v0, lbl_80B07EE0
    lw      v1, 0x0124(v1)             # 00000124
    lwc1    $f4, 0x0208(s0)            # 00000208
lbl_80B07E18:
    lwc1    $f6, 0x0024(v1)            # 00000024
    lwc1    $f8, 0x0210(s0)            # 00000210
    lwc1    $f10, 0x002C(v1)           # 0000002C
    sub.s   $f0, $f4, $f6
    sub.s   $f2, $f8, $f10
    mul.s   $f16, $f0, $f0
    nop
    mul.s   $f18, $f2, $f2
    add.s   $f4, $f16, $f18
    c.lt.s  $f4, $f12
    nop
    bc1f    lbl_80B07EDC
    nop
    lh      t9, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80B15980)     # $at = 80B10000
    lwc1    $f18, %lo(var_80B15980)($at)
    cvt.s.w $f8, $f6
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    sw      v1, 0x003C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10
    mul.s   $f4, $f16, $f18
    jal     func_800AAB94
    add.s   $f12, $f4, $f6
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lw      v1, 0x003C($sp)
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE8
    swc1    $f0, 0x0028($sp)
    swc1    $f0, 0x002C($sp)
    addiu   a1, v1, 0x025C             # a1 = 0000025C
    jal     func_800AB958
    swc1    $f8, 0x0030($sp)
    lw      v1, 0x003C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0096          # a1 = 00000096
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_8009151C
    sw      t0, 0x0258(v1)             # 00000258
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    beq     $zero, $zero, lbl_80B07F18
    sh      t1, 0x0382(s0)             # 00000382
lbl_80B07EDC:
    lw      v1, 0x0124(v1)             # 00000124
lbl_80B07EE0:
    bnel    v1, $zero, lbl_80B07DEC
    lh      t8, 0x0000(v1)             # 00000000
lbl_80B07EE8:
    lh      v0, 0x0382(s0)             # 00000382
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80B07F08
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_800646F0
    addiu   a0, $zero, 0x28C2          # a0 = 000028C2
    lh      v0, 0x0382(s0)             # 00000382
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80B07F08:
    bnel    v0, $at, lbl_80B07F1C
    lw      $ra, 0x001C($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x39DF          # a0 = 000039DF
lbl_80B07F18:
    lw      $ra, 0x001C($sp)
lbl_80B07F1C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B07F2C:
    lw      v0, 0x1C64(a1)             # 00001C64
    lui     $at, %hi(var_80B15984)     # $at = 80B10000
    addiu   t0, $zero, 0x0016          # t0 = 00000016
    beq     v0, $zero, lbl_80B07FC4
    addiu   a3, $zero, 0x0011          # a3 = 00000011
    lwc1    $f12, %lo(var_80B15984)($at)
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    addiu   a1, $zero, 0x01B1          # a1 = 000001B1
    lh      t6, 0x0000(v0)             # 00000000
lbl_80B07F50:
    bnel    a1, t6, lbl_80B07FBC
    lw      v0, 0x0124(v0)             # 00000124
    lh      v1, 0x001C(v0)             # 0000001C
    andi    v1, v1, 0x00FF             # v1 = 00000000
    beql    a2, v1, lbl_80B07F7C
    lwc1    $f4, 0x0024(a0)            # 00000024
    beql    a3, v1, lbl_80B07F7C
    lwc1    $f4, 0x0024(a0)            # 00000024
    bnel    t0, v1, lbl_80B07FBC
    lw      v0, 0x0124(v0)             # 00000124
    lwc1    $f4, 0x0024(a0)            # 00000024
lbl_80B07F7C:
    lwc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x002C(a0)            # 0000002C
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sub.s   $f0, $f4, $f6
    sub.s   $f2, $f8, $f10
    mul.s   $f16, $f0, $f0
    nop
    mul.s   $f18, $f2, $f2
    add.s   $f4, $f16, $f18
    c.lt.s  $f4, $f12
    nop
    bc1f    lbl_80B07FB8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B07FB8:
    lw      v0, 0x0124(v0)             # 00000125
lbl_80B07FBC:
    bnel    v0, $zero, lbl_80B07F50
    lh      t6, 0x0000(v0)             # 00000001
lbl_80B07FC4:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80B07FD0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    sw      a2, 0x0028($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x0303(s0)             # 00000303
    addiu   a0, s0, 0x030A             # a0 = 0000030A
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    bnel    t6, $zero, lbl_80B0800C
    lh      t7, 0x00B6(s0)             # 000000B6
    beql    a2, $zero, lbl_80B08048
    lh      t9, 0x018C(s0)             # 0000018C
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80B0800C:
    lh      t8, 0x008A(s0)             # 0000008A
    subu    a1, t7, t8
    sll     a1, a1, 16
    sra     a1, a1, 16
    slti    $at, a1, 0x3001
    bnel    $at, $zero, lbl_80B08034
    slti    $at, a1, 0xD000
    beq     $zero, $zero, lbl_80B08060
    addiu   a1, $zero, 0x3000          # a1 = 00003000
    slti    $at, a1, 0xD000
lbl_80B08034:
    beq     $at, $zero, lbl_80B08060
    nop
    beq     $zero, $zero, lbl_80B08060
    addiu   a1, $zero, 0xD000          # a1 = FFFFD000
    lh      t9, 0x018C(s0)             # 0000018C
lbl_80B08048:
    addiu   a1, $zero, 0xD000          # a1 = FFFFD000
    andi    t0, t9, 0x0020             # t0 = 00000000
    beq     t0, $zero, lbl_80B08060
    nop
    beq     $zero, $zero, lbl_80B08060
    addiu   a1, $zero, 0x3000          # a1 = 00003000
lbl_80B08060:
    jal     func_80064624
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f14                  # $f14 = 150.00
    jal     func_800AA4F8
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   v1, v0, 0xF448             # v1 = FFFFF448
    sll     t1, v1, 16
    sra     t2, t1, 16
    sll     a1, v1, 16
    slti    $at, t2, 0x1B59
    bne     $at, $zero, lbl_80B08098
    sra     a1, a1, 16
    addiu   a1, $zero, 0x1B58          # a1 = 00001B58
lbl_80B08098:
    slti    $at, a1, 0xE4A8
    beq     $at, $zero, lbl_80B080A8
    addiu   a0, s0, 0x030C             # a0 = 0000030C
    addiu   a1, $zero, 0xE4A8          # a1 = FFFFE4A8
lbl_80B080A8:
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B080C8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    sw      a2, 0x0028($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    bnel    a2, $zero, lbl_80B080FC
    lwc1    $f4, 0x0310(s0)            # 00000310
    lbu     t6, 0x0303(s0)             # 00000303
    beql    t6, $zero, lbl_80B08178
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f4, 0x0310(s0)            # 00000310
lbl_80B080FC:
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    trunc.w.s $f6, $f4
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064624
    sra     a3, a3, 16
    lbu     t8, 0x0324(s0)             # 00000324
    lui     $at, %hi(var_80B1598C)     # $at = 80B10000
    addiu   a0, s0, 0x0310             # a0 = 00000310
    beq     t8, $zero, lbl_80B0814C
    nop
    lui     $at, %hi(var_80B15988)     # $at = 80B10000
    lwc1    $f0, %lo(var_80B15988)($at)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    beq     $zero, $zero, lbl_80B08160
    mfc1    a1, $f0
lbl_80B0814C:
    lwc1    $f0, %lo(var_80B1598C)($at)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    nop
    mfc1    a1, $f0
lbl_80B08160:
    mfc1    a3, $f2
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    beq     $zero, $zero, lbl_80B08184
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80B08178:
    nop
    swc1    $f8, 0x0310(s0)            # 00000310
    lw      $ra, 0x001C($sp)
lbl_80B08184:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B08194:
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B081BC
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80B081BC
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B081BC:
    slti    $at, v1, 0x2800
    beql    $at, $zero, lbl_80B081EC
    lw      t2, 0x01B4(a0)             # 000001B4
    lw      t0, 0x01A8(a0)             # 000001A8
    lw      t9, 0x01AC(a0)             # 000001AC
    sb      t8, 0x0303(a0)             # 00000303
    sw      t0, 0x0038(a0)             # 00000038
    lw      t0, 0x01B0(a0)             # 000001B0
    sw      t9, 0x003C(a0)             # 0000003C
    jr      $ra
    sw      t0, 0x0040(a0)             # 00000040
lbl_80B081E8:
    lw      t2, 0x01B4(a0)             # 000001B4
lbl_80B081EC:
    lw      t1, 0x01B8(a0)             # 000001B8
    sb      $zero, 0x0303(a0)          # 00000303
    sw      t2, 0x0038(a0)             # 00000038
    lw      t2, 0x01BC(a0)             # 000001BC
    sw      t1, 0x003C(a0)             # 0000003C
    sw      t2, 0x0040(a0)             # 00000040
    jr      $ra
    nop


func_80B0820C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B0827C
    lhu     t8, 0x0088(a0)             # 00000088
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B08254
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80B08254
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B08254:
    slti    $at, v1, 0x2800
    beql    $at, $zero, lbl_80B0827C
    lhu     t8, 0x0088(a0)             # 00000088
    jal     func_80B08A90
    sb      $zero, 0x0301(a0)          # 00000301
    jal     func_800C9884
    addiu   a0, $zero, 0x39D9          # a0 = 000039D9
    beq     $zero, $zero, lbl_80B082B4
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x0088(a0)             # 00000088
lbl_80B0827C:
    andi    t9, t8, 0x0008             # t9 = 00000000
    beql    t9, $zero, lbl_80B082B4
    lw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80B07F2C
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B082B0
    lw      a1, 0x001C($sp)
    jal     func_80B08A90
    sb      $zero, 0x0301(a0)          # 00000301
    jal     func_800C9884
    addiu   a0, $zero, 0x39D9          # a0 = 000039D9
lbl_80B082B0:
    lw      $ra, 0x0014($sp)
lbl_80B082B4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B082C0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0153          # a1 = 00000153
    lw      a0, 0x0024($sp)
    sw      v0, 0x0028($sp)
    jal     func_80081688
    or      a1, v0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B083B4
    lui     t0, %hi(func_80B082C0)     # t0 = 80B10000
    lw      t7, 0x0028($sp)
    lw      t6, 0x0034($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, t6, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    lui     $at, 0x8000                # $at = 80000000
    lui     a1, 0x0601                 # a1 = 06010000
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    addiu   a1, a1, 0xFFE4             # a1 = 0600FFE4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0xC120                 # a2 = C1200000
    lbu     t3, 0x0324(s0)             # 00000324
    lui     t2, %hi(func_80B083D0)     # t2 = 80B10000
    addiu   t2, t2, %lo(func_80B083D0) # t2 = 80B083D0
    beq     t3, $zero, lbl_80B08384
    sw      t2, 0x0180(s0)             # 00000180
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    mfc1    t5, $f4
    beq     $zero, $zero, lbl_80B0838C
    sh      t5, 0x0192(s0)             # 00000192
lbl_80B08384:
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sh      t7, 0x0192(s0)             # 00000192
lbl_80B0838C:
    lw      t8, 0x0004(s0)             # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    ori     t9, t8, 0x0001             # t9 = 00000001
    sb      t6, 0x0326(s0)             # 00000326
    sw      t9, 0x0004(s0)             # 00000004
    swc1    $f0, 0x0218(s0)            # 00000218
    beq     $zero, $zero, lbl_80B083BC
    swc1    $f0, 0x0214(s0)            # 00000214
lbl_80B083B4:
    addiu   t0, t0, %lo(func_80B082C0) # t0 = FFFF82C0
    sw      t0, 0x0180(s0)             # 00000180
lbl_80B083BC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B083D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0380(s0)             # 00000380
    lui     $at, 0x4248                # $at = 42480000
    bne     t6, $zero, lbl_80B08420
    nop
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39D9          # a1 = 000039D9
    mfc1    t0, $f4
    nop
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    jal     func_80022FD0
    sh      t1, 0x0380(s0)             # 00000380
lbl_80B08420:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      t2, 0x0192(s0)             # 00000192
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, $zero, lbl_80B0845C
    lh      t3, 0x0194(s0)             # 00000194
    jal     func_80B087E0
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B08474
    or      a0, s0, $zero              # a0 = 00000000
    lh      t3, 0x0194(s0)             # 00000194
lbl_80B0845C:
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t3, $zero, lbl_80B08474
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0820C
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08474:
    lw      a1, 0x0024($sp)
    jal     func_80B07FD0
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80B080C8
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B084A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xFFE4             # a1 = 0600FFE4
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC120                 # a2 = C1200000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_80B084F4)     # t6 = 80B10000
    addiu   t6, t6, %lo(func_80B084F4) # t6 = 80B084F4
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sw      t6, 0x0180(a3)             # 00000180
    sh      t7, 0x0192(a3)             # 00000192
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B084F4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v0, 0x0192(s0)             # 00000192
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80B08540
    slti    $at, v0, 0x001E
    jal     func_80B087E0
    lw      a1, 0x0024($sp)
    lh      v0, 0x0192(s0)             # 00000192
    slti    $at, v0, 0x001E
lbl_80B08540:
    beq     $at, $zero, lbl_80B08590
    or      a1, $zero, $zero           # a1 = 00000000
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80B08590
    sll     a0, v0,  2
    subu    a0, a0, v0
    sll     a0, a0, 12
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f4                   # $f4 = 8192.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    beq     $zero, $zero, lbl_80B08590
    sra     a1, a1, 16
lbl_80B08590:
    addiu   a0, s0, 0x030A             # a0 = 0000030A
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x4000          # a3 = 00004000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B085B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0602                 # a1 = 06020000
    addiu   a1, a1, 0x5110             # a1 = 06025110
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC000                 # a2 = C0000000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x5110             # a0 = 06025110
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_80B08614)     # t6 = 80B10000
    cvt.s.w $f6, $f4
    addiu   t6, t6, %lo(func_80B08614) # t6 = 80B08614
    sh      $zero, 0x019C(a3)          # 0000019C
    sw      t6, 0x0180(a3)             # 00000180
    swc1    $f6, 0x0184(a3)            # 00000184
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B08614:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a3, s0, 0x013C             # a3 = 0000013C
    or      a0, a3, $zero              # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0020($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v0, 0x019C(s0)             # 0000019C
    lw      a3, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80B08674
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80B086B0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B086F4
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B08710
    lw      $ra, 0x001C($sp)
lbl_80B08674:
    lw      a1, 0x0184(s0)             # 00000184
    jal     func_8008D6A8
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80B0870C
    lw      a3, 0x0020($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     a1, 0x0602                 # a1 = 06020000
    sh      t6, 0x019C(s0)             # 0000019C
    addiu   a1, a1, 0x56F4             # a1 = 060256F4
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    beq     $zero, $zero, lbl_80B0870C
    sh      t7, 0x0192(s0)             # 00000192
lbl_80B086B0:
    lh      t8, 0x0192(s0)             # 00000192
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    or      a0, a3, $zero              # a0 = 00000000
    bne     t8, $zero, lbl_80B0870C
    lui     a1, 0x0602                 # a1 = 06020000
    sh      t9, 0x019C(s0)             # 0000019C
    addiu   a1, a1, 0x6424             # a1 = 06026424
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0602                 # a0 = 06020000
    jal     func_8008A194
    addiu   a0, a0, 0x6424             # a0 = 06026424
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    beq     $zero, $zero, lbl_80B0870C
    swc1    $f6, 0x0184(s0)            # 00000184
lbl_80B086F4:
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B0870C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B087E0
    lw      a1, 0x002C($sp)
lbl_80B0870C:
    lw      $ra, 0x001C($sp)
lbl_80B08710:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B08720:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xDFF0             # a1 = 0600DFF0
    lui     a2, 0xC040                 # a2 = C0400000
    jal     func_8008D21C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xDFF0             # a0 = 0600DFF0
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0018($sp)
    lui     t6, %hi(func_80B0877C)     # t6 = 80B10000
    cvt.s.w $f6, $f4
    addiu   t6, t6, %lo(func_80B0877C) # t6 = 80B0877C
    sw      t6, 0x0180(v1)             # 00000180
    swc1    $f6, 0x0184(v1)            # 00000184
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B0877C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_800642F0
    addiu   a0, a0, 0x0068             # a0 = 00000068
    lw      t6, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(t6)             # 00000184
    beq     v0, $zero, lbl_80B087D0
    lw      a0, 0x0020($sp)
    jal     func_80B087E0
    lw      a1, 0x0024($sp)
lbl_80B087D0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B087E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE8EC             # a1 = 0600E8EC
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC120                 # a2 = C1200000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_80B08854)     # t6 = 80B10000
    lui     $at, 0x4248                # $at = 42480000
    addiu   t6, t6, %lo(func_80B08854) # t6 = 80B08854
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    mtc1    $at, $f12                  # $f12 = 50.00
    sw      t6, 0x0180(a3)             # 00000180
    sb      $zero, 0x0328(a3)          # 00000328
    jal     func_80026D64
    sh      t7, 0x0192(a3)             # 00000192
    trunc.w.s $f4, $f0
    lw      a3, 0x0018($sp)
    mfc1    t1, $f4
    nop
    addiu   t2, t1, 0x0032             # t2 = 00000032
    sh      t2, 0x0380(a3)             # 00000380
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B08854:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0380(s0)             # 00000380
    lui     $at, 0x4248                # $at = 42480000
    bnel    t6, $zero, lbl_80B088A8
    addiu   a0, s0, 0x0314             # a0 = 00000314
    mtc1    $at, $f12                  # $f12 = 50.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x39D9          # a1 = 000039D9
    mfc1    t0, $f4
    nop
    addiu   t1, t0, 0x001E             # t1 = 0000001E
    jal     func_80022FD0
    sh      t1, 0x0380(s0)             # 00000380
    addiu   a0, s0, 0x0314             # a0 = 00000314
lbl_80B088A8:
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lbu     t2, 0x0328(s0)             # 00000328
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x4150                 # a1 = 41500000
    beq     t2, $zero, lbl_80B089CC
    lui     $at, 0x4000                # $at = 40000000
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B088F8
    lw      a0, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80B059CC
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    beq     $zero, $zero, lbl_80B0891C
    lui     $at, 0x4348                # $at = 43480000
lbl_80B088F8:
    jal     func_8008D6A8
    lui     a1, 0x41E0                 # a1 = 41E00000
    beq     v0, $zero, lbl_80B08918
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80B059CC
    addiu   a3, $zero, 0x0003          # a3 = 00000003
lbl_80B08918:
    lui     $at, 0x4348                # $at = 43480000
lbl_80B0891C:
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f2, 0x0090(s0)            # 00000090
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xE8EC             # a1 = 0600E8EC
    c.lt.s  $f2, $f6
    lui     $at, 0x4000                # $at = 40000000
    lui     a2, 0xC120                 # a2 = C1200000
    bc1fl   lbl_80B08958
    mtc1    $at, $f12                  # $f12 = 2.00
    sb      $zero, 0x0328(s0)          # 00000328
    jal     func_8008D328
    lw      a0, 0x0020($sp)
    beq     $zero, $zero, lbl_80B089B8
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
lbl_80B08958:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f8                   # $f8 = 300.00
    lui     $at, %hi(var_80B15990)     # $at = 80B10000
    lwc1    $f16, %lo(var_80B15990)($at)
    sub.s   $f10, $f2, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x3FC0                # $at = 3FC00000
    mul.s   $f18, $f10, $f16
    add.s   $f0, $f18, $f4
    c.lt.s  $f12, $f0
    swc1    $f0, 0x0158(s0)            # 00000158
    bc1fl   lbl_80B08998
    lbu     t3, 0x0324(s0)             # 00000324
    swc1    $f12, 0x0158(s0)           # 00000158
    lbu     t3, 0x0324(s0)             # 00000324
lbl_80B08998:
    beql    t3, $zero, lbl_80B089B8
    lui     $at, 0x4040                # $at = 40400000
    lwc1    $f6, 0x0158(s0)            # 00000158
    mtc1    $at, $f8                   # $f8 = 3.00
    nop
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0158(s0)           # 00000158
    lui     $at, 0x4040                # $at = 40400000
lbl_80B089B8:
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f16, 0x0158(s0)           # 00000158
    mul.s   $f0, $f16, $f18
    beq     $zero, $zero, lbl_80B08A10
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80B089CC:
    mtc1    $at, $f0                   # $f0 = 3.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    c.le.s  $f6, $f4
    addiu   a1, a1, 0x3FC0             # a1 = 06033FC0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0xC120                 # a2 = C1200000
    bc1fl   lbl_80B08A10
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sb      t4, 0x0328(s0)             # 00000328
    jal     func_8008D328
    swc1    $f0, 0x0024($sp)
    lwc1    $f0, 0x0024($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
lbl_80B08A10:
    jal     func_8008C9C0
    swc1    $f0, 0x0024($sp)
    lwc1    $f0, 0x0024($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t5, 0x0192(s0)             # 00000192
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_80B08A54
    nop
    jal     func_80B082C0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B08A60
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08A54:
    jal     func_80B0820C
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08A60:
    lw      a1, 0x002C($sp)
    jal     func_80B07FD0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80B080C8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B08A90:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x0301(s0)             # 00000301
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xCAF8             # a1 = 0600CAF8
    bne     t6, $zero, lbl_80B08B04
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xADD0             # a1 = 0600ADD0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xADD0             # a0 = 0600ADD0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    cvt.s.w $f0, $f4
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    sub.s   $f8, $f0, $f6
    swc1    $f0, 0x0184(s0)            # 00000184
    sub.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80B08B40
    swc1    $f16, 0x0188(s0)           # 00000188
lbl_80B08B04:
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0xCAF8             # a0 = 0600CAF8
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    cvt.s.w $f0, $f18
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    sub.s   $f6, $f0, $f4
    swc1    $f0, 0x0184(s0)            # 00000184
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0188(s0)           # 00000188
lbl_80B08B40:
    lui     t7, %hi(func_80B08B60)     # t7 = 80B10000
    addiu   t7, t7, %lo(func_80B08B60) # t7 = 80B08B60
    sw      t7, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B08B60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0188(s0)             # 00000188
    beq     v0, $zero, lbl_80B08BA8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3997          # a1 = 00003997
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x398F          # a1 = 0000398F
lbl_80B08BA8:
    lbu     t6, 0x0301(s0)             # 00000301
    lui     $at, 0x4080                # $at = 40800000
    addiu   a0, s0, 0x0068             # a0 = 00000068
    bne     t6, $zero, lbl_80B08C08
    lui     a1, 0x3F00                 # a1 = 3F000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    lwc1    $f0, 0x0188(s0)            # 00000188
    lwc1    $f2, 0x0154(s0)            # 00000154
    lui     $at, 0x40C0                # $at = 40C00000
    sub.s   $f4, $f0, $f12
    c.lt.s  $f4, $f2
    nop
    bc1f    lbl_80B08C50
    nop
    mtc1    $at, $f6                   # $f6 = 6.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    add.s   $f8, $f0, $f6
    c.lt.s  $f2, $f8
    nop
    bc1f    lbl_80B08C50
    nop
    beq     $zero, $zero, lbl_80B08C50
    sb      t7, 0x0302(s0)             # 00000302
lbl_80B08C08:
    mtc1    $at, $f12                  # $f12 = 6.00
    lwc1    $f0, 0x0188(s0)            # 00000188
    lwc1    $f2, 0x0154(s0)            # 00000154
    lui     $at, 0x40C0                # $at = 40C00000
    sub.s   $f10, $f0, $f12
    add.s   $f16, $f10, $f12
    c.lt.s  $f16, $f2
    nop
    bc1f    lbl_80B08C50
    nop
    mtc1    $at, $f18                  # $f18 = 6.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    add.s   $f4, $f0, $f18
    c.lt.s  $f2, $f4
    nop
    bc1f    lbl_80B08C50
    nop
    sb      t8, 0x0302(s0)             # 00000302
lbl_80B08C50:
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beql    v0, $zero, lbl_80B08CD4
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t9, 0x0301(s0)             # 00000301
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x437A                # $at = 437A0000
    subu    t0, v0, t9
    andi    t1, t0, 0x00FF             # t1 = 00000000
    bne     v0, t1, lbl_80B08CC4
    sb      t0, 0x0301(s0)             # 00000301
    lwc1    $f6, 0x0090(s0)            # 00000090
    mtc1    $at, $f8                   # $f8 = 250.00
    nop
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80B08CC8
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t2, 0x0303(s0)             # 00000303
    or      a0, s0, $zero              # a0 = 00000000
    beql    t2, $zero, lbl_80B08CC8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B08A90
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80B08CD4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08CC4:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08CC8:
    jal     func_80B082C0
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B08CD4:
    lw      a1, 0x002C($sp)
    jal     func_80B07FD0
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x0324(s0)             # 00000324
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    bne     t3, $zero, lbl_80B08D0C
    nop
    lbu     t4, 0x0301(s0)             # 00000301
    bne     t4, $zero, lbl_80B08D0C
    nop
    mtc1    $zero, $f10                # $f10 = 0.00
    beq     $zero, $zero, lbl_80B08D14
    swc1    $f10, 0x0310(s0)           # 00000310
lbl_80B08D0C:
    jal     func_80B080C8
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B08D14:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B08D28:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x9448             # a1 = 06029448
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0603                 # a0 = 06030000
    jal     func_8008A194
    addiu   a0, a0, 0x9448             # a0 = 06029448
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t6, %hi(func_80B08DA0)     # t6 = 80B10000
    addiu   t6, t6, %lo(func_80B08DA0) # t6 = 80B08DA0
    cvt.s.w $f6, $f4
    sw      t6, 0x0180(s0)             # 00000180
    sh      $zero, 0x019C(s0)          # 0000019C
    sh      $zero, 0x038C(s0)          # 0000038C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x399E          # a1 = 0000399E
    jal     func_80022FD0
    swc1    $f6, 0x0184(s0)            # 00000184
    sb      $zero, 0x0326(s0)          # 00000326
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B08DA0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x004C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      a0, 0x002C($sp)
    jal     func_8008C9C0
    sw      t6, 0x0048($sp)
    lw      t7, 0x0388(s0)             # 00000388
    lhu     t0, 0x038C(s0)             # 0000038C
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sltiu   $at, t0, 0x000C
    sw      t8, 0x0388(s0)             # 00000388
    beq     $at, $zero, lbl_80B09360
    sb      t9, 0x0329(s0)             # 00000329
    sll     t0, t0,  2
    lui     $at, %hi(var_80B15994)     # $at = 80B10000
    addu    $at, $at, t0
    lw      t0, %lo(var_80B15994)($at)
    jr      t0
    nop
var_80B08E14:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x038E(s0)             # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      v1, 0x004C($sp)
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x038C(s0)             # 0000038C
    lw      t3, 0x005C(v1)             # 0000005C
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x012C          # t6 = 0000012C
    sw      t3, 0x0394(s0)             # 00000394
    lw      t2, 0x0060(v1)             # 00000060
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    lui     $at, 0x0001                # $at = 00010000
    sw      t2, 0x0398(s0)             # 00000398
    lw      t3, 0x0064(v1)             # 00000064
    addu    $at, $at, s1
    sw      t3, 0x039C(s0)             # 0000039C
    lw      t5, 0x0050(v1)             # 00000050
    sw      t5, 0x03A0(s0)             # 000003A0
    lw      t4, 0x0054(v1)             # 00000054
    sw      t4, 0x03A4(s0)             # 000003A4
    lw      t5, 0x0058(v1)             # 00000058
    sh      t6, 0x0192(s0)             # 00000192
    sh      t7, 0x0194(s0)             # 00000194
    sw      t5, 0x03A8(s0)             # 000003A8
    swc1    $f4, 0x0AFC($at)           # 00010AFC
var_80B08EB8:
    addiu   t8, s0, 0x0394             # t8 = 00000394
    addiu   t9, s0, 0x03A0             # t9 = 000003A0
    sw      t9, 0x0024($sp)
    sw      t8, 0x0028($sp)
    lh      t0, 0x0194(s0)             # 00000194
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    t0, $at, lbl_80B08EE4
    lh      t1, 0x00B6(s0)             # 000000B6
    jal     func_800646F0
    addiu   a0, $zero, 0x39D7          # a0 = 000039D7
    lh      t1, 0x00B6(s0)             # 000000B6
lbl_80B08EE4:
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t1, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80B159C4)     # $at = 80B10000
    lwc1    $f18, %lo(var_80B159C4)($at)
    cvt.s.w $f8, $f6
    lui     $at, %hi(var_80B159C8)     # $at = 80B10000
    lwc1    $f6, %lo(var_80B159C8)($at)
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10
    mul.s   $f4, $f16, $f18
    jal     func_800AAB94
    add.s   $f12, $f4, $f6
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    addiu   a0, $sp, 0x005C            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    swc1    $f0, 0x005C($sp)
    swc1    $f0, 0x0060($sp)
    jal     func_800AB958
    swc1    $f8, 0x0064($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0050($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f18, $f10, $f16
    lw      a0, 0x0028($sp)
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0398             # a0 = 00000398
    lui     a1, 0x448E                 # a1 = 448E0000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lwc1    $f4, 0x002C(s0)            # 0000002C
    lwc1    $f6, 0x0058($sp)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x039C             # a0 = 0000039C
    lui     a3, 0x42C8                 # a3 = 42C80000
    mfc1    a1, $f8
    jal     func_80064280
    nop
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    lw      a0, 0x0024($sp)
    lw      a1, 0x01A8(s0)             # 000001A8
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    lw      a1, 0x01AC(s0)             # 000001AC
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A8             # a0 = 000003A8
    lw      a1, 0x01B0(s0)             # 000001B0
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      t2, 0x0194(s0)             # 00000194
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x005A          # t4 = 0000005A
    bnel    t2, $zero, lbl_80B09364
    lh      a1, 0x038E(s0)             # 0000038E
    sh      t3, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B09360
    sh      t4, 0x0194(s0)             # 00000194
var_80B0900C:
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    lui     $at, 0x41F0                # $at = 41F00000
    addiu   t5, $zero, 0x012C          # t5 = 0000012C
    mtc1    $at, $f0                   # $f0 = 30.00
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
    sh      t5, 0x0192(s0)             # 00000192
    lw      t6, 0x0000(v0)             # 80B1676C
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lwc1    $f10, 0x0024(t6)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    addiu   a0, s0, 0x0314             # a0 = 00000314
    sub.s   $f18, $f10, $f16
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x40A0                 # a2 = 40A00000
    swc1    $f18, 0x0394(s0)           # 00000394
    lw      t7, 0x0000(v0)             # 80B1676C
    lwc1    $f4, 0x0028(t7)            # 00000028
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x0398(s0)            # 00000398
    lw      t8, 0x0000(v0)             # 80B1676C
    lwc1    $f8, 0x002C(t8)            # 0000002C
    add.s   $f10, $f8, $f0
    sub.s   $f16, $f10, $f2
    mtc1    $at, $f10                  # $f10 = 10.00
    swc1    $f16, 0x039C(s0)           # 0000039C
    lw      t9, 0x0000(v0)             # 80B1676C
    lwc1    $f18, 0x0024(t9)           # 00000024
    swc1    $f18, 0x03A0(s0)           # 000003A0
    lw      t0, 0x0000(v0)             # 80B1676C
    lwc1    $f4, 0x0028(t0)            # 00000028
    add.s   $f6, $f4, $f0
    swc1    $f6, 0x03A4(s0)            # 000003A4
    lw      t1, 0x0000(v0)             # 80B1676C
    lwc1    $f8, 0x002C(t1)            # 0000002C
    sub.s   $f16, $f8, $f10
    jal     func_800642F0
    swc1    $f16, 0x03A8(s0)           # 000003A8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3CA0                 # a3 = 3CA00000
    ori     a3, a3, 0xA0A1             # a3 = 3CA0A0A1
    addu    a0, s1, $at
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      v0, 0x0194(s0)             # 00000194
    addiu   $at, $zero, 0x0050         # $at = 00000050
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $at, lbl_80B090EC
    addiu   a1, $zero, 0x70D7          # a1 = 000070D7
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x0194(s0)             # 00000194
lbl_80B090EC:
    slti    $at, v0, 0x001E
    beql    $at, $zero, lbl_80B09364
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80B09360
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   v1, s0, 0x0394             # v1 = 00000394
    lw      t3, 0x0000(v1)             # 00000394
    or      a0, s1, $zero              # a0 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t3, 0x005C(v0)             # 0000005C
    lw      t2, 0x0004(v1)             # 00000398
    sw      t2, 0x0060(v0)             # 00000060
    lw      t3, 0x0008(v1)             # 0000039C
    sw      t3, 0x0064(v0)             # 00000064
    lw      t5, 0x0000(v1)             # 00000394
    sw      t5, 0x0074(v0)             # 00000074
    lw      t4, 0x0004(v1)             # 00000398
    sw      t4, 0x0078(v0)             # 00000078
    lw      t5, 0x0008(v1)             # 0000039C
    sw      t5, 0x007C(v0)             # 0000007C
    lw      t7, 0x03A0(s0)             # 000003A0
    sw      t7, 0x0050(v0)             # 00000050
    lw      t6, 0x03A4(s0)             # 000003A4
    sw      t6, 0x0054(v0)             # 00000054
    lw      t7, 0x03A8(s0)             # 000003A8
    sw      t7, 0x0058(v0)             # 00000058
    jal     func_8009D718
    lh      a1, 0x038E(s0)             # 0000038E
    sh      $zero, 0x038E(s0)          # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052340
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sh      t8, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B09364
    lh      a1, 0x038E(s0)             # 0000038E
var_80B0919C:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052328
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    or      a0, s1, $zero              # a0 = 00000000
    sh      v0, 0x038E(s0)             # 0000038E
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t9, 0x038C(s0)             # 0000038C
    sb      t0, 0x0324(s0)             # 00000324
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0060          # a2 = 00000060
    sw      $zero, 0x0388(s0)          # 00000388
var_80B091F8:
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f0                   # $f0 = 25.00
    addiu   v0, v0, %lo(var_80B1676C)  # v0 = 80B1676C
    lw      t1, 0x0000(v0)             # 80B1676C
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f18, 0x0024(t1)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    add.s   $f6, $f18, $f4
    lw      v1, 0x0048($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t3, $zero, 0x8000          # t3 = FFFF8000
    add.s   $f10, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x42A0                # $at = 42A00000
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f10, 0x0024(v1)           # 00000024
    lw      t2, 0x0000(v0)             # 80B1676C
    lwc1    $f4, 0x0024(v1)            # 00000024
    mtc1    $at, $f10                  # $f10 = 80.00
    lwc1    $f16, 0x002C(t2)           # 0000002C
    add.s   $f8, $f4, $f6
    sh      t3, 0x00B6(v1)             # 000000B6
    lui     $at, 0x4220                # $at = 42200000
    sub.s   $f18, $f16, $f0
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x42DC                # $at = 42DC0000
    sub.s   $f16, $f8, $f10
    swc1    $f18, 0x002C(v1)           # 0000002C
    lw      t4, 0x0388(s0)             # 00000388
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f16, 0x0394(s0)           # 00000394
    lwc1    $f18, 0x0028(v1)           # 00000028
    mtc1    $at, $f16                  # $f16 = 110.00
    addiu   $at, $zero, 0x0050         # $at = 00000050
    add.s   $f4, $f18, $f2
    addiu   t5, s1, 0x1D64             # t5 = 00001D64
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0398(s0)            # 00000398
    lwc1    $f10, 0x002C(v1)           # 0000002C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x039C(s0)           # 0000039C
    lwc1    $f4, 0x0024(v1)            # 00000024
    swc1    $f4, 0x03A0(s0)            # 000003A0
    lwc1    $f6, 0x0028(v1)            # 00000028
    add.s   $f8, $f6, $f2
    sub.s   $f10, $f8, $f0
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lwc1    $f16, 0x002C(v1)           # 0000002C
    bne     t4, $at, lbl_80B09360
    swc1    $f16, 0x03A8(s0)           # 000003A8
    jal     func_8009D2F0
    sw      t5, 0x0028($sp)
    addiu   v1, s0, 0x0394             # v1 = 00000394
    lw      t7, 0x0000(v1)             # 00000394
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    or      a0, s1, $zero              # a0 = 00000000
    sw      t7, 0x005C(v0)             # 0000005C
    lw      t6, 0x0004(v1)             # 00000398
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t6, 0x0060(v0)             # 00000060
    lw      t7, 0x0008(v1)             # 0000039C
    sw      t7, 0x0064(v0)             # 00000064
    lw      t9, 0x0000(v1)             # 00000394
    sw      t9, 0x0074(v0)             # 00000074
    lw      t8, 0x0004(v1)             # 00000398
    sw      t8, 0x0078(v0)             # 00000078
    lw      t9, 0x0008(v1)             # 0000039C
    sw      t9, 0x007C(v0)             # 0000007C
    lw      t1, 0x03A0(s0)             # 000003A0
    sw      t1, 0x0050(v0)             # 00000050
    lw      t0, 0x03A4(s0)             # 000003A4
    sw      t0, 0x0054(v0)             # 00000054
    lw      t1, 0x03A8(s0)             # 000003A8
    sw      t1, 0x0058(v0)             # 00000058
    sh      t2, 0x038C(s0)             # 0000038C
    jal     func_8009D718
    lh      a1, 0x038E(s0)             # 0000038E
    sh      $zero, 0x038E(s0)          # 0000038E
    lw      a1, 0x0028($sp)
    jal     func_80052340
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80B09360:
    lh      a1, 0x038E(s0)             # 0000038E
lbl_80B09364:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x03A0             # a2 = 000003A0
    beql    a1, $zero, lbl_80B09380
    lh      v0, 0x019C(s0)             # 0000019C
    jal     func_8009D328
    addiu   a3, s0, 0x0394             # a3 = 00000394
    lh      v0, 0x019C(s0)             # 0000019C
lbl_80B09380:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x002C($sp)
    beq     v0, $zero, lbl_80B093AC
    nop
    beq     v0, $at, lbl_80B093D8
    lui     t4, 0x0001                 # t4 = 00010000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B094A4
    addiu   a0, s0, 0x0314             # a0 = 00000314
    beq     $zero, $zero, lbl_80B09514
    addiu   a0, s0, 0x0068             # a0 = 00000068
lbl_80B093AC:
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B09510
    lw      a0, 0x002C($sp)
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x2E78             # a1 = 06032E78
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    beq     $zero, $zero, lbl_80B09510
    sh      t3, 0x019C(s0)             # 0000019C
lbl_80B093D8:
    addu    t4, t4, s1
    lw      t4, 0x1DE4(t4)             # 00001DE4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t5, t4, 0x001F             # t5 = 00000000
    bnel    t5, $zero, lbl_80B093FC
    lh      t6, 0x0192(s0)             # 00000192
    jal     func_80022FD0
    addiu   a1, $zero, 0x39AF          # a1 = 000039AF
    lh      t6, 0x0192(s0)             # 00000192
lbl_80B093FC:
    lui     $at, 0xC348                # $at = C3480000
    beql    t6, $zero, lbl_80B09418
    mtc1    $at, $f14                  # $f14 = -200.00
    lbu     t7, 0x0324(s0)             # 00000324
    beql    t7, $zero, lbl_80B09514
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mtc1    $at, $f14                  # $f14 = -200.00
lbl_80B09418:
    lw      v0, 0x0048($sp)
    lwc1    $f18, 0x0024(v0)           # 00000024
    lwc1    $f4, 0x002C(v0)            # 0000002C
    lui     $at, 0x4448                # $at = 44480000
    sub.s   $f2, $f14, $f18
    mtc1    $at, $f10                  # $f10 = 800.00
    lui     s1, 0x0603                 # s1 = 06030000
    sub.s   $f12, $f14, $f4
    mul.s   $f6, $f2, $f2
    addiu   s1, s1, 0x20F8             # s1 = 060320F8
    or      a1, s1, $zero              # a1 = 060320F8
    mul.s   $f8, $f12, $f12
    lw      a0, 0x002C($sp)
    add.s   $f0, $f6, $f8
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_80B09514
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_8008A194
    or      a0, s1, $zero              # a0 = 060320F8
    mtc1    v0, $f16                   # $f16 = 0.00
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    cvt.s.w $f18, $f16
    sh      t8, 0x019C(s0)             # 0000019C
    sh      t9, 0x0192(s0)             # 00000192
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x398F          # a1 = 0000398F
    jal     func_80022FD0
    swc1    $f18, 0x0184(s0)           # 00000184
    beq     $zero, $zero, lbl_80B09514
    addiu   a0, s0, 0x0068             # a0 = 00000068
lbl_80B094A4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    addu    t0, s1, $at
    sw      t0, 0x0028($sp)
    lui     a1, 0x437F                 # a1 = 437F0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lui     a2, 0x3D20                 # a2 = 3D200000
    ori     a2, a2, 0xA0A1             # a2 = 3D20A0A1
    lw      a0, 0x0028($sp)
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      a0, 0x002C($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B09510
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B082C0
    or      a1, s1, $zero              # a1 = 060320F8
    lbu     t1, 0x0324(s0)             # 00000324
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    bnel    t1, $zero, lbl_80B09510
    sb      t3, 0x0326(s0)             # 00000326
    sb      t2, 0x00AF(s0)             # 000000AF
    sb      t3, 0x0326(s0)             # 00000326
lbl_80B09510:
    addiu   a0, s0, 0x0068             # a0 = 00000068
lbl_80B09514:
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80B09534:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x9448             # a1 = 06029448
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     a0, 0x0603                 # a0 = 06030000
    jal     func_8008A194
    addiu   a0, a0, 0x9448             # a0 = 06029448
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     t6, %hi(func_80B09738)     # t6 = 80B10000
    addiu   t6, t6, %lo(func_80B09738) # t6 = 80B09738
    cvt.s.w $f6, $f4
    sw      t6, 0x0180(s0)             # 00000180
    sh      $zero, 0x019C(s0)          # 0000019C
    sh      $zero, 0x038C(s0)          # 0000038C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x399E          # a1 = 0000399E
    jal     func_80022FD0
    swc1    $f6, 0x0184(s0)            # 00000184
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0304(s0)             # 00000304
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B095B0:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s4, 0x0064($sp)
    sw      s3, 0x0060($sp)
    sw      s2, 0x005C($sp)
    sw      s1, 0x0058($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x0090            # s3 = FFFFFFE0
    addiu   s4, $sp, 0x008C            # s4 = FFFFFFDC
    sw      $ra, 0x0074($sp)
    sw      s7, 0x0070($sp)
    sw      s6, 0x006C($sp)
    sw      s5, 0x0068($sp)
    sw      s0, 0x0054($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     t6, %hi(var_80B0F1D4)      # t6 = 80B10000
    addiu   t6, t6, %lo(var_80B0F1D4)  # t6 = 80B0F1D4
    lui     $at, 0xBF80                # $at = BF800000
    lw      t8, 0x0000(t6)             # 80B0F1D4
    mtc1    $at, $f28                  # $f28 = -1.00
    lui     $at, 0x40A0                # $at = 40A00000
    lui     t9, %hi(var_80B0F1D8)      # t9 = 80B10000
    mtc1    $at, $f26                  # $f26 = 5.00
    addiu   t9, t9, %lo(var_80B0F1D8)  # t9 = 80B0F1D8
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0000(s3)             # FFFFFFE0
    lw      t1, 0x0000(t9)             # 80B0F1D8
    mtc1    $at, $f24                  # $f24 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f20                  # $f20 = 50.00
    mtc1    $zero, $f22                # $f22 = 0.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $sp, 0x0094            # s7 = FFFFFFE4
    addiu   s6, $sp, 0x00A0            # s6 = FFFFFFF0
    addiu   s5, $sp, 0x0080            # s5 = FFFFFFD0
    sw      t1, 0x0000(s4)             # FFFFFFDC
lbl_80B09650:
    jal     func_80026D90
    mov.s   $f12, $f20
    swc1    $f0, 0x00A0($sp)
    jal     func_80026D90
    mov.s   $f12, $f24
    add.s   $f4, $f0, $f26
    mov.s   $f12, $f20
    jal     func_80026D90
    swc1    $f4, 0x00A4($sp)
    swc1    $f0, 0x00A8($sp)
    swc1    $f22, 0x0094($sp)
    swc1    $f28, 0x0098($sp)
    swc1    $f22, 0x009C($sp)
    lwc1    $f6, 0x01A8(s1)            # 000001A8
    mov.s   $f12, $f20
    swc1    $f6, 0x0080($sp)
    lwc1    $f8, 0x01AC(s1)            # 000001AC
    swc1    $f8, 0x0084($sp)
    lwc1    $f10, 0x01B0(s1)           # 000001B0
    jal     func_80026D64
    swc1    $f10, 0x0088($sp)
    trunc.w.s $f16, $f0
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    sw      t7, 0x0020($sp)
    or      a0, s2, $zero              # a0 = 00000000
    mfc1    t3, $f16
    or      a1, s5, $zero              # a1 = FFFFFFD0
    or      a2, s6, $zero              # a2 = FFFFFFF0
    sll     t4, t3, 16
    sra     t5, t4, 16
    addiu   t6, t5, 0x0032             # t6 = 00000032
    sw      t6, 0x0018($sp)
    or      a3, s7, $zero              # a3 = FFFFFFE4
    sw      s3, 0x0010($sp)
    sw      s4, 0x0014($sp)
    jal     func_8001BE64
    sw      $zero, 0x001C($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0x00FF             # s0 = 00000001
    slti    $at, s0, 0x0046
    bne     $at, $zero, lbl_80B09650
    nop
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    lw      s0, 0x0054($sp)
    lw      s1, 0x0058($sp)
    lw      s2, 0x005C($sp)
    lw      s3, 0x0060($sp)
    lw      s4, 0x0064($sp)
    lw      s5, 0x0068($sp)
    lw      s6, 0x006C($sp)
    lw      s7, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80B09738:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      t7, 0x004C($sp)
    lw      t8, 0x0388(s0)             # 00000388
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sw      t9, 0x0388(s0)             # 00000388
    jal     func_8008C9C0
    sw      a0, 0x0028($sp)
    lh      v1, 0x038C(s0)             # 0000038C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    slti    $at, v1, 0x0015
    swc1    $f0, 0x03B0(s0)            # 000003B0
    swc1    $f4, 0x03AC(s0)            # 000003AC
    bne     $at, $zero, lbl_80B097AC
    swc1    $f6, 0x03B4(s0)            # 000003B4
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    beql    v1, $at, lbl_80B0A2D4
    lw      t9, 0x0388(s0)             # 00000388
    beq     $zero, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
lbl_80B097AC:
    sltiu   $at, v1, 0x0015
    beq     $at, $zero, lbl_80B0A7C4
    sll     t0, v1,  2
    lui     $at, %hi(var_80B159CC)     # $at = 80B10000
    addu    $at, $at, t0
    lw      t0, %lo(var_80B159CC)($at)
    jr      t0
    nop
var_80B097CC:
    lw      a0, 0x0054($sp)
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    lw      a0, 0x0054($sp)
    sh      v0, 0x038E(s0)             # 0000038E
    lw      a0, 0x0054($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0054($sp)
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sh      t1, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    lw      t3, %lo(var_80B1676C)(t3)
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    mtc1    $zero, $f8                 # $f8 = 0.00
    sb      t2, 0x03B8(t3)             # 80B103B8
    sh      $zero, 0x030C(s0)          # 0000030C
    mtc1    $zero, $f10                # $f10 = 0.00
    lh      t4, 0x030C(s0)             # 0000030C
    sh      $zero, 0x0196(s0)          # 00000196
    sb      $zero, 0x0326(s0)          # 00000326
    swc1    $f8, 0x0314(s0)            # 00000314
    swc1    $f10, 0x0068(s0)           # 00000068
    sh      t4, 0x030A(s0)             # 0000030A
    lw      t5, 0x0054($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    swc1    $f16, 0x0AFC($at)          # 00010AFC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
var_80B09874:
    lw      v1, 0x0388(s0)             # 00000388
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sltiu   $at, v1, 0x005A
    beq     $at, $zero, lbl_80B098BC
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    sb      t6, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_80064280
    addu    a0, a0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80B098F8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B098BC:
    sltiu   $at, v1, 0x005A
    bne     $at, $zero, lbl_80B098F8
    addiu   t7, $zero, 0x0015          # t7 = 00000015
    sb      t7, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f0
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    jal     func_800642F0
    addu    a0, a0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B098F8:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bnel    v1, $at, lbl_80B0991C
    sltiu   $at, v1, 0x005B
    jal     func_800646F0
    addiu   a0, $zero, 0x39D7          # a0 = 000039D7
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x005B
lbl_80B0991C:
    bne     $at, $zero, lbl_80B09950
    addiu   a0, s0, 0x0370             # a0 = 00000370
    mfc1    a2, $f0
    lui     a3, 0x3C4C                 # a3 = 3C4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3C4CCCCD
    jal     func_80064280
    lui     a1, 0x3E80                 # a1 = 3E800000
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    addiu   a0, $zero, 0x209D          # a0 = 0000209D
    jal     func_800646F0
    swc1    $f18, 0x036C(s0)           # 0000036C
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B09950:
    sltiu   $at, v1, 0x006E
    bne     $at, $zero, lbl_80B099A0
    addiu   $at, $zero, 0x006E         # $at = 0000006E
    bne     v1, $at, lbl_80B09978
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x390B          # a1 = 0000390B
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x399B          # a1 = 0000399B
lbl_80B09978:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lw      v1, 0x0388(s0)             # 00000388
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80B099A0:
    addiu   $at, $zero, 0x0078         # $at = 00000078
    bne     v1, $at, lbl_80B099B8
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0063          # a2 = 00000063
lbl_80B099B8:
    lw      v1, 0x004C($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    sh      t8, 0x0032(s0)             # 00000032
    swc1    $f6, 0x002C(s0)            # 0000002C
    swc1    $f8, 0x0024(s0)            # 00000024
    addiu   t9, $zero, 0xC000          # t9 = FFFFC000
    lui     $at, 0x43AA                # $at = 43AA0000
    lui     t0, %hi(var_80B1676C)      # t0 = 80B10000
    sh      t9, 0x00B6(v1)             # 000000B6
    swc1    $f10, 0x0024(v1)           # 00000024
    swc1    $f16, 0x002C(v1)           # 0000002C
    lw      t0, %lo(var_80B1676C)(t0)
    mtc1    $at, $f18                  # $f18 = 340.00
    lui     $at, 0xC37A                # $at = C37A0000
    lui     t1, %hi(var_80B1676C)      # t1 = 80B10000
    swc1    $f18, 0x0024(t0)           # 80B10024
    lw      t1, %lo(var_80B1676C)(t1)
    mtc1    $at, $f4                   # $f4 = -250.00
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    addiu   t2, $zero, 0xE000          # t2 = FFFFE000
    swc1    $f4, 0x002C(t1)            # 80B1002C
    lw      t3, %lo(var_80B1676C)(t3)
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    lui     $at, 0x437A                # $at = 437A0000
    sh      t2, 0x00B6(t3)             # 80B100B6
    lw      v0, %lo(var_80B1676C)(v0)
    mtc1    $at, $f6                   # $f6 = 250.00
    lui     $at, %hi(var_80B15A20)     # $at = 80B10000
    lh      t4, 0x00B6(v0)             # 80B100B6
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t4, 0x0032(v0)             # 80B10032
    swc1    $f6, 0x0394(s0)            # 00000394
    lwc1    $f8, %lo(var_80B15A20)($at)
    lw      t5, 0x0388(s0)             # 00000388
    lwc1    $f16, 0x01A8(s0)           # 000001A8
    lwc1    $f18, 0x01AC(s0)           # 000001AC
    lwc1    $f4, 0x01B0(s0)            # 000001B0
    sltiu   $at, t5, 0x0088
    swc1    $f10, 0x039C(s0)           # 0000039C
    swc1    $f8, 0x0398(s0)            # 00000398
    swc1    $f16, 0x03A0(s0)           # 000003A0
    swc1    $f18, 0x03A4(s0)           # 000003A4
    bne     $at, $zero, lbl_80B0A7C4
    swc1    $f4, 0x03A8(s0)            # 000003A8
    sh      t6, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A7C4
    sw      $zero, 0x0388(s0)          # 00000388
var_80B09A90:
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    sb      t7, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f0
    mfc1    a2, $f0
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    jal     func_80064280
    addu    a0, a0, $at
    jal     func_800646F0
    addiu   a0, $zero, 0x209D          # a0 = 0000209D
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f6                   # $f6 = 250.00
    lui     $at, %hi(var_80B15A24)     # $at = 80B10000
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f6, 0x0394(s0)            # 00000394
    lwc1    $f8, %lo(var_80B15A24)($at)
    lui     t8, %hi(var_80B1676C)      # t8 = 80B10000
    swc1    $f10, 0x039C(s0)           # 0000039C
    swc1    $f8, 0x0398(s0)            # 00000398
    lw      t8, %lo(var_80B1676C)(t8)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A0             # a0 = 000003A0
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064280
    lw      a1, 0x0024(t8)             # 80B10024
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    lw      t9, %lo(var_80B1676C)(t9)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lwc1    $f16, 0x0028(t9)           # 80B10028
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    add.s   $f18, $f16, $f0
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    lui     a3, 0x4120                 # a3 = 41200000
    mfc1    a1, $f18
    jal     func_80064280
    nop
    lui     t0, %hi(var_80B1676C)      # t0 = 80B10000
    lw      t0, %lo(var_80B1676C)(t0)
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x03A8             # a0 = 000003A8
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_80064280
    lw      a1, 0x002C(t0)             # 80B1002C
    lw      t1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    bnel    t1, $at, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    sh      t2, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A7C4
    sw      $zero, 0x0388(s0)          # 00000388
var_80B09B78:
    addiu   t3, $zero, 0x0016          # t3 = 00000016
    sb      t3, 0x0329(s0)             # 00000329
    jal     func_800646F0
    addiu   a0, $zero, 0x209D          # a0 = 0000209D
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x43A5                # $at = 43A50000
    mtc1    $at, $f4                   # $f4 = 330.00
    lui     $at, 0x448C                # $at = 448C0000
    mtc1    $at, $f6                   # $f6 = 1120.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f8                   # $f8 = -150.00
    lui     t4, %hi(var_80B1676C)      # t4 = 80B10000
    swc1    $f4, 0x0394(s0)            # 00000394
    swc1    $f6, 0x0398(s0)            # 00000398
    swc1    $f8, 0x039C(s0)            # 0000039C
    lw      t4, %lo(var_80B1676C)(t4)
    lui     t5, %hi(var_80B1676C)      # t5 = 80B10000
    lui     t6, %hi(var_80B1676C)      # t6 = 80B10000
    lwc1    $f10, 0x0024(t4)           # 80B10024
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    swc1    $f10, 0x03A0(s0)           # 000003A0
    lw      t5, %lo(var_80B1676C)(t5)
    addiu   a1, $zero, 0x70D8          # a1 = 000070D8
    or      a2, $zero, $zero           # a2 = 00000000
    lwc1    $f16, 0x0028(t5)           # 80B10028
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x03A4(s0)           # 000003A4
    lw      t6, %lo(var_80B1676C)(t6)
    lwc1    $f4, 0x002C(t6)            # 80B1002C
    bne     v1, $at, lbl_80B09C08
    swc1    $f4, 0x03A8(s0)            # 000003A8
    jal     func_800DCE14
    lw      a0, 0x0054($sp)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B09C08:
    sltiu   $at, v1, 0x0051
    bne     $at, $zero, lbl_80B0A7C4
    lw      a0, 0x0054($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    bne     v0, $zero, lbl_80B0A7C4
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      t7, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A7C4
    sw      $zero, 0x0388(s0)          # 00000388
var_80B09C30:
    lw      t8, 0x0388(s0)             # 00000388
    addiu   a0, s0, 0x036C             # a0 = 0000036C
    addiu   t3, $zero, 0x0016          # t3 = 00000016
    sltiu   $at, t8, 0x000B
    bnel    $at, $zero, lbl_80B09CAC
    sb      t3, 0x0329(s0)             # 00000329
    mfc1    a1, $f0
    jal     func_800642F0
    lui     a2, 0x4120                 # a2 = 41200000
    lw      t9, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    addiu   t2, $zero, 0x0017          # t2 = 00000017
    bne     t9, $at, lbl_80B09C78
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     t1, %hi(var_80B1676C)      # t1 = 80B10000
    lw      t1, %lo(var_80B1676C)(t1)
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sb      t0, 0x03B8(t1)             # 80B103B8
lbl_80B09C78:
    sb      t2, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, a0, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     $zero, $zero, lbl_80B09CB0
    lw      t4, 0x0388(s0)             # 00000388
    sb      t3, 0x0329(s0)             # 00000329
lbl_80B09CAC:
    lw      t4, 0x0388(s0)             # 00000388
lbl_80B09CB0:
    addiu   $at, $zero, 0x0064         # $at = 00000064
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    bne     t4, $at, lbl_80B0A7C4
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    sh      t5, 0x038C(s0)             # 0000038C
    sw      t6, 0x0388(s0)             # 00000388
    swc1    $f0, 0x0158(s0)            # 00000158
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    beq     $zero, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
var_80B09CE4:
    lw      v1, 0x0388(s0)             # 00000388
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    sb      t7, 0x0329(s0)             # 00000329
    sltiu   $at, v1, 0x003C
    bne     $at, $zero, lbl_80B09D40
    addiu   a0, s0, 0x037C             # a0 = 0000037C
    sltiu   $at, v1, 0x005B
    beq     $at, $zero, lbl_80B09D40
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    bnel    v1, $at, lbl_80B09D28
    mfc1    a2, $f0
    jal     func_800646F0
    addiu   a0, $zero, 0x286F          # a0 = 0000286F
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    mfc1    a2, $f0
lbl_80B09D28:
    addiu   a0, s0, 0x037C             # a0 = 0000037C
    lui     a1, 0x4348                 # a1 = 43480000
    jal     func_80064280
    lui     a3, 0x4100                 # a3 = 41000000
    beq     $zero, $zero, lbl_80B09D50
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B09D40:
    mfc1    a1, $f0
    jal     func_800642F0
    lui     a2, 0x4100                 # a2 = 41000000
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B09D50:
    addiu   $at, $zero, 0x0046         # $at = 00000046
    lw      a0, 0x0054($sp)
    bne     v1, $at, lbl_80B09D6C
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0065          # a2 = 00000065
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B09D6C:
    addiu   $at, $zero, 0x0096         # $at = 00000096
    bne     v1, $at, lbl_80B09D84
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0066          # a2 = 00000066
lbl_80B09D84:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f12                  # $f12 = 250.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lw      v0, 0x004C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    sub.s   $f10, $f12, $f0
    mtc1    $at, $f8                   # $f8 = 30.00
    swc1    $f6, 0x02FC(s0)            # 000002FC
    swc1    $f12, 0x0024(v0)           # 00000024
    swc1    $f8, 0x002C(v0)            # 0000002C
    swc1    $f10, 0x0394(s0)           # 00000394
    lwc1    $f16, 0x0028(v0)           # 00000028
    lw      t8, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x00A6         # $at = 000000A6
    add.s   $f18, $f16, $f0
    or      a1, $zero, $zero           # a1 = 00000000
    swc1    $f18, 0x0398(s0)           # 00000398
    lwc1    $f4, 0x002C(v0)            # 0000002C
    add.s   $f6, $f4, $f2
    swc1    $f6, 0x039C(s0)            # 0000039C
    lwc1    $f8, 0x0024(v0)            # 00000024
    swc1    $f8, 0x03A0(s0)            # 000003A0
    lwc1    $f10, 0x0028(v0)           # 00000028
    add.s   $f16, $f10, $f2
    swc1    $f16, 0x03A4(s0)           # 000003A4
    lwc1    $f18, 0x002C(v0)           # 0000002C
    bne     t8, $at, lbl_80B0A7C4
    swc1    $f18, 0x03A8(s0)           # 000003A8
    jal     func_8009D2F0
    lw      a0, 0x0054($sp)
    addiu   v1, s0, 0x0394             # v1 = 00000394
    lw      t0, 0x0000(v1)             # 00000394
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t0, 0x005C(v0)             # 0000005C
    lw      t9, 0x0004(v1)             # 00000398
    sw      t9, 0x0060(v0)             # 00000060
    lw      t0, 0x0008(v1)             # 0000039C
    sw      t0, 0x0064(v0)             # 00000064
    lw      t2, 0x0000(v1)             # 00000394
    sw      t2, 0x0074(v0)             # 00000074
    lw      t1, 0x0004(v1)             # 00000398
    sw      t1, 0x0078(v0)             # 00000078
    lw      t2, 0x0008(v1)             # 0000039C
    sw      t2, 0x007C(v0)             # 0000007C
    lw      t4, 0x03A0(s0)             # 000003A0
    sw      t4, 0x0050(v0)             # 00000050
    lw      t3, 0x03A4(s0)             # 000003A4
    sw      t3, 0x0054(v0)             # 00000054
    lw      t4, 0x03A8(s0)             # 000003A8
    sw      t4, 0x0058(v0)             # 00000058
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D718
    lw      a0, 0x0054($sp)
    sh      $zero, 0x038E(s0)          # 0000038E
    lw      a0, 0x0054($sp)
    jal     func_80052340
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sh      t6, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
var_80B09E9C:
    lw      v0, 0x004C($sp)
    addiu   t7, $zero, 0x0017          # t7 = 00000017
    sb      t7, 0x0329(s0)             # 00000329
    lwc1    $f4, 0x01A8(s0)            # 000001A8
    lwc1    $f8, 0x01B0(s0)            # 000001B0
    lwc1    $f6, 0x0024(v0)            # 00000024
    lwc1    $f10, 0x002C(v0)           # 0000002C
    sub.s   $f14, $f4, $f6
    sub.s   $f12, $f8, $f10
    swc1    $f14, 0x0048($sp)
    jal     func_800AA4F8
    swc1    $f12, 0x0044($sp)
    lw      a2, 0x004C($sp)
    lwc1    $f12, 0x0044($sp)
    lwc1    $f14, 0x0048($sp)
    lh      t8, 0x00B6(a2)             # 000000B6
    subu    a0, v0, t8
    sll     a0, a0, 16
    sra     a0, a0, 16
    bltz    a0, lbl_80B09EF8
    subu    v1, $zero, a0
    beq     $zero, $zero, lbl_80B09EF8
    or      v1, a0, $zero              # v1 = 00000000
lbl_80B09EF8:
    slti    $at, v1, 0x2000
    beql    $at, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    mul.s   $f16, $f14, $f14
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    mul.s   $f18, $f12, $f12
    add.s   $f0, $f16, $f18
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    lb      t9, 0x0833(a2)             # 00000833
    beql    t9, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    lb      t0, 0x0141(a2)             # 00000141
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x0054($sp)
    bnel    t0, $at, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_80052328
    addiu   a1, a0, 0x1D64             # a1 = 00001D64
    jal     func_8009D0F0
    lw      a0, 0x0054($sp)
    sh      v0, 0x038E(s0)             # 0000038E
    lw      a0, 0x0054($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0054($sp)
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    sh      t1, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3B1C             # a1 = 06003B1C
    lw      a0, 0x0028($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x3B1C             # a0 = 06003B1C
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     t9, 0x0001                 # t9 = 00010000
    or      a1, s0, $zero              # a1 = 00000000
    cvt.s.w $f8, $f6
    addiu   a2, $zero, 0x0061          # a2 = 00000061
    swc1    $f8, 0x0184(s0)            # 00000184
    lw      a0, 0x0054($sp)
    addu    t9, t9, a0
    lw      t9, 0x1D50(t9)             # 00011D50
    jalr    $ra, t9
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
var_80B09FE4:
    addiu   t3, $zero, 0x0017          # t3 = 00000017
    sb      t3, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f0
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_800642F0
    addu    a0, a0, $at
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f12                  # $f12 = 250.00
    lw      a2, 0x004C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    addiu   t4, $zero, 0xC000          # t4 = FFFFC000
    swc1    $f12, 0x0024(a2)           # 00000024
    sh      t4, 0x00B6(a2)             # 000000B6
    swc1    $f10, 0x002C(a2)           # 0000002C
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v1, $at, lbl_80B0A058
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    beq     v1, $at, lbl_80B0A058
    addiu   $at, $zero, 0x0041         # $at = 00000041
    beq     v1, $at, lbl_80B0A058
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bnel    v1, $at, lbl_80B0A074
    addiu   $at, $zero, 0x0016         # $at = 00000016
lbl_80B0A058:
    jal     func_800646F0
    addiu   a0, $zero, 0x6800          # a0 = 00006800
    jal     func_800646F0
    addiu   a0, $zero, 0x1818          # a0 = 00001818
    lw      v1, 0x0388(s0)             # 00000388
    lw      a2, 0x004C($sp)
    addiu   $at, $zero, 0x0016         # $at = 00000016
lbl_80B0A074:
    beq     v1, $at, lbl_80B0A094
    addiu   $at, $zero, 0x0023         # $at = 00000023
    beq     v1, $at, lbl_80B0A094
    addiu   $at, $zero, 0x0048         # $at = 00000048
    beq     v1, $at, lbl_80B0A094
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bnel    v1, $at, lbl_80B0A0C8
    addiu   $at, $zero, 0x0016         # $at = 00000016
lbl_80B0A094:
    jal     func_800646F0
    addiu   a0, $zero, 0x399B          # a0 = 0000399B
    jal     func_800646F0
    addiu   a0, $zero, 0x1806          # a0 = 00001806
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lw      t5, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t5
    swc1    $f16, 0x0AFC($at)          # 00010AFC
    lw      a2, 0x004C($sp)
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0016         # $at = 00000016
lbl_80B0A0C8:
    beq     v1, $at, lbl_80B0A0EC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0023         # $at = 00000023
    beq     v1, $at, lbl_80B0A0EC
    addiu   $at, $zero, 0x0048         # $at = 00000048
    beq     v1, $at, lbl_80B0A0EC
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bnel    v1, $at, lbl_80B0A100
    sltiu   $at, v1, 0x0022
lbl_80B0A0EC:
    jal     func_80B095B0
    lw      a1, 0x0054($sp)
    lw      v1, 0x0388(s0)             # 00000388
    lw      a2, 0x004C($sp)
    sltiu   $at, v1, 0x0022
lbl_80B0A100:
    bne     $at, $zero, lbl_80B0A15C
    lui     t6, %hi(var_80B0F1DC)      # t6 = 80B10000
    sltiu   $at, v1, 0x0028
    beq     $at, $zero, lbl_80B0A15C
    lui     $at, %hi(var_80B15A28)     # $at = 80B10000
    lwc1    $f18, %lo(var_80B15A28)($at)
    lui     $at, 0x448B                # $at = 448B0000
    mtc1    $at, $f4                   # $f4 = 1112.00
    lui     $at, 0xC1E0                # $at = C1E00000
    mtc1    $at, $f6                   # $f6 = -28.00
    lui     $at, 0x436A                # $at = 436A0000
    mtc1    $at, $f8                   # $f8 = 234.00
    lui     $at, %hi(var_80B15A2C)     # $at = 80B10000
    swc1    $f18, 0x0394(s0)           # 00000394
    swc1    $f4, 0x0398(s0)            # 00000398
    swc1    $f6, 0x039C(s0)            # 0000039C
    swc1    $f8, 0x03A0(s0)            # 000003A0
    lwc1    $f10, %lo(var_80B15A2C)($at)
    lui     $at, 0xC130                # $at = C1300000
    mtc1    $at, $f16                  # $f16 = -11.00
    swc1    $f10, 0x03A4(s0)           # 000003A4
    beq     $zero, $zero, lbl_80B0A244
    swc1    $f16, 0x03A8(s0)           # 000003A8
lbl_80B0A15C:
    sltiu   $at, v1, 0x001E
    beq     $at, $zero, lbl_80B0A170
    addiu   t6, t6, %lo(var_80B0F1DC)  # t6 = 80B0F1DC
    beq     $zero, $zero, lbl_80B0A1A8
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80B0A170:
    sltiu   $at, v1, 0x002B
    beq     $at, $zero, lbl_80B0A184
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     $zero, $zero, lbl_80B0A1A8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_80B0A184:
    lui     $at, %hi(var_80B15A30)     # $at = 80B10000
    lwc1    $f18, %lo(var_80B15A30)($at)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    swc1    $f18, 0x03B4(s0)           # 000003B4
    swc1    $f4, 0x0024(a2)            # 00000024
    swc1    $f6, 0x002C(a2)            # 0000002C
lbl_80B0A1A8:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lwc1    $f10, 0x0024(a2)           # 00000024
    sll     a0, a1,  2
    subu    a0, a0, a1
    sll     a0, a0,  2
    sub.s   $f16, $f10, $f0
    addu    v0, a0, t6
    lwc1    $f8, 0x0000(v0)            # 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    add.s   $f18, $f8, $f16
    lui     t7, %hi(var_80B0F200)      # t7 = 80B10000
    addiu   t7, t7, %lo(var_80B0F200)  # t7 = 80B0F200
    addu    v1, a0, t7
    swc1    $f18, 0x0394(s0)           # 00000394
    lwc1    $f6, 0x0028(a2)            # 00000028
    lwc1    $f4, 0x0004(v0)            # 00000004
    add.s   $f10, $f6, $f0
    add.s   $f8, $f4, $f10
    swc1    $f8, 0x0398(s0)            # 00000398
    lwc1    $f18, 0x002C(a2)           # 0000002C
    lwc1    $f16, 0x0008(v0)           # 00000008
    add.s   $f6, $f18, $f2
    add.s   $f4, $f16, $f6
    swc1    $f4, 0x039C(s0)            # 0000039C
    lwc1    $f8, 0x0024(a2)            # 00000024
    lwc1    $f10, 0x0000(v1)           # 00000000
    add.s   $f18, $f10, $f8
    swc1    $f18, 0x03A0(s0)           # 000003A0
    lwc1    $f6, 0x0028(a2)            # 00000028
    lwc1    $f16, 0x0004(v1)           # 00000004
    add.s   $f4, $f6, $f2
    add.s   $f10, $f16, $f4
    swc1    $f10, 0x03A4(s0)           # 000003A4
    lwc1    $f18, 0x002C(a2)           # 0000002C
    lwc1    $f8, 0x0008(v1)            # 00000008
    add.s   $f6, $f8, $f18
    swc1    $f6, 0x03A8(s0)            # 000003A8
lbl_80B0A244:
    lw      t8, 0x0388(s0)             # 00000388
    lui     a0, 0x1001                 # a0 = 10010000
    sltiu   $at, t8, 0x0051
    bnel    $at, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 100100FF
    lui     $at, 0x42E0                # $at = 42E00000
    mtc1    $at, $f16                  # $f16 = 112.00
    addiu   t0, $zero, 0x004B          # t0 = 0000004B
    sh      t0, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     $at, %hi(var_80B15A34)     # $at = 80B10000
    swc1    $f16, 0x0394(s0)           # 00000394
    lwc1    $f4, %lo(var_80B15A34)($at)
    lui     $at, 0x434A                # $at = 434A0000
    mtc1    $at, $f10                  # $f10 = 202.00
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f8                   # $f8 = 110.00
    lui     $at, 0x448F                # $at = 448F0000
    mtc1    $at, $f18                  # $f18 = 1144.00
    lui     $at, 0x4331                # $at = 43310000
    mtc1    $at, $f6                   # $f6 = 177.00
    lui     $at, 0x4348                # $at = 43480000
    swc1    $f4, 0x0398(s0)            # 00000398
    swc1    $f10, 0x039C(s0)           # 0000039C
    swc1    $f8, 0x03A0(s0)            # 000003A0
    swc1    $f18, 0x03A4(s0)           # 000003A4
    swc1    $f6, 0x03A8(s0)            # 000003A8
    lw      t1, 0x004C($sp)
    mtc1    $at, $f16                  # $f16 = 200.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f16, 0x0024(t1)           # 00000024
    beq     $zero, $zero, lbl_80B0A7C4
    swc1    $f4, 0x03B4(s0)            # 000003B4
    lw      t9, 0x0388(s0)             # 00000388
lbl_80B0A2D4:
    addiu   t2, $zero, 0x0017          # t2 = 00000017
    addiu   $at, $zero, 0x0037         # $at = 00000037
    bne     t9, $at, lbl_80B0A7C4
    sb      t2, 0x0329(s0)             # 00000329
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x7288             # a1 = 06007288
    lw      a0, 0x0028($sp)
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x7288             # a0 = 06007288
    mtc1    v0, $f10                   # $f10 = 0.00
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0062          # a2 = 00000062
    cvt.s.w $f8, $f10
    swc1    $f8, 0x0184(s0)            # 00000184
    jal     func_800218EC
    lw      a0, 0x0054($sp)
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    addiu   t4, $zero, 0x03E8          # t4 = 000003E8
    sh      t3, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A7C4
    sw      t4, 0x0388(s0)             # 00000388
var_80B0A334:
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x0401         # $at = 00000401
    or      a0, s0, $zero              # a0 = 00000000
    bnel    v1, $at, lbl_80B0A360
    sltiu   $at, v1, 0x03E8
    jal     func_80022FD0
    addiu   a1, $zero, 0x39D8          # a1 = 000039D8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lw      v1, 0x0388(s0)             # 00000388
    sltiu   $at, v1, 0x03E8
lbl_80B0A360:
    bne     $at, $zero, lbl_80B0A398
    sltiu   $at, v1, 0x0410
    beq     $at, $zero, lbl_80B0A398
    addiu   t5, $zero, 0x0017          # t5 = 00000017
    sb      t5, 0x0329(s0)             # 00000329
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    mfc1    a1, $f0
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    jal     func_800642F0
    addu    a0, a0, $at
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0A398:
    addiu   $at, $zero, 0x0410         # $at = 00000410
    bne     v1, $at, lbl_80B0A3DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39A1          # a1 = 000039A1
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sb      t6, 0x0326(s0)             # 00000326
    sb      $zero, 0x0329(s0)          # 00000329
    lw      t7, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $zero, $f18                # $f18 = 0.00
    addu    $at, $at, t7
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lw      t8, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t8
    swc1    $f18, 0x0AFC($at)          # 00010AFC
lbl_80B0A3DC:
    lw      a0, 0x0028($sp)
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B0A410
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8EB8             # a1 = 06008EB8
    jal     func_8008D21C
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      $zero, 0x0388(s0)          # 00000388
    swc1    $f6, 0x0184(s0)            # 00000184
lbl_80B0A410:
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f16                  # $f16 = 250.00
    lui     $at, %hi(var_80B15A38)     # $at = 80B10000
    lw      v1, 0x0388(s0)             # 00000388
    swc1    $f16, 0x0394(s0)           # 00000394
    lwc1    $f4, %lo(var_80B15A38)($at)
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x01A8(s0)            # 000001A8
    lwc1    $f18, 0x01AC(s0)           # 000001AC
    lwc1    $f6, 0x01B0(s0)            # 000001B0
    sltiu   $at, v1, 0x03E8
    swc1    $f4, 0x0398(s0)            # 00000398
    swc1    $f10, 0x039C(s0)           # 0000039C
    swc1    $f8, 0x03A0(s0)            # 000003A0
    swc1    $f18, 0x03A4(s0)           # 000003A4
    beq     $at, $zero, lbl_80B0A46C
    swc1    $f6, 0x03A8(s0)            # 000003A8
    andi    t0, v1, 0x000F             # t0 = 00000000
    bne     t0, $zero, lbl_80B0A46C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3997          # a1 = 00003997
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0A46C:
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bne     v1, $at, lbl_80B0A7C4
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sh      t1, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    lw      t9, %lo(var_80B1676C)(t9)
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    addiu   a1, $zero, 0x70D9          # a1 = 000070D9
    sb      t2, 0x03B8(t9)             # 80B103B8
    lw      a0, 0x0054($sp)
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    sb      $zero, 0x0326(s0)          # 00000326
    lw      t3, 0x0054($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    beq     $zero, $zero, lbl_80B0A7C4
    swc1    $f16, 0x0AFC($at)          # 00010AFC
var_80B0A4BC:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x43A5                # $at = 43A50000
    mtc1    $at, $f4                   # $f4 = 330.00
    lui     $at, 0x448C                # $at = 448C0000
    mtc1    $at, $f10                  # $f10 = 1120.00
    lui     $at, 0xC316                # $at = C3160000
    mtc1    $at, $f8                   # $f8 = -150.00
    addiu   t4, $zero, 0x0018          # t4 = 00000018
    sb      t4, 0x0329(s0)             # 00000329
    lui     t5, %hi(var_80B1676C)      # t5 = 80B10000
    swc1    $f4, 0x0394(s0)            # 00000394
    swc1    $f10, 0x0398(s0)           # 00000398
    swc1    $f8, 0x039C(s0)            # 0000039C
    lw      t5, %lo(var_80B1676C)(t5)
    lui     t6, %hi(var_80B1676C)      # t6 = 80B10000
    lui     t7, %hi(var_80B1676C)      # t7 = 80B10000
    lwc1    $f18, 0x0024(t5)           # 80B10024
    lw      t8, 0x0388(s0)             # 00000388
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    swc1    $f18, 0x03A0(s0)           # 000003A0
    lw      t6, %lo(var_80B1676C)(t6)
    sltiu   $at, t8, 0x003D
    lwc1    $f6, 0x0028(t6)            # 80B10028
    add.s   $f16, $f6, $f2
    swc1    $f16, 0x03A4(s0)           # 000003A4
    lw      t7, %lo(var_80B1676C)(t7)
    lwc1    $f4, 0x002C(t7)            # 80B1002C
    bne     $at, $zero, lbl_80B0A7C4
    swc1    $f4, 0x03A8(s0)            # 000003A8
    mtc1    $zero, $f10                # $f10 = 0.00
    sh      t0, 0x038C(s0)             # 0000038C
    sw      $zero, 0x0388(s0)          # 00000388
    beq     $zero, $zero, lbl_80B0A7C4
    swc1    $f10, 0x0400(s0)           # 00000400
var_80B0A548:
    addiu   t1, $zero, 0x0018          # t1 = 00000018
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    sb      t1, 0x0329(s0)             # 00000329
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, s0, 0x0394             # a0 = 00000394
    lui     a1, 0x4391                 # a1 = 43910000
    jal     func_80064280
    lw      a3, 0x0400(s0)             # 00000400
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f18                  # $f18 = 0.25
    lwc1    $f8, 0x0400(s0)            # 00000400
    lui     a1, 0x448D                 # a1 = 448D0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f6, $f8, $f18
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    ori     a1, a1, 0x4000             # a1 = 448D4000
    addiu   a0, s0, 0x0398             # a0 = 00000398
    mfc1    a3, $f6
    jal     func_80064280
    nop
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f4                   # $f4 = 1.25
    lwc1    $f16, 0x0400(s0)           # 00000400
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    mul.s   $f10, $f16, $f4
    addiu   a0, s0, 0x039C             # a0 = 0000039C
    lui     a1, 0xC382                 # a1 = C3820000
    mfc1    a3, $f10
    jal     func_80064280
    nop
    lw      v1, 0x0388(s0)             # 00000388
    addiu   a0, s0, 0x0374             # a0 = 00000374
    lui     a1, 0x3F80                 # a1 = 3F800000
    sltiu   $at, v1, 0x0028
    bne     $at, $zero, lbl_80B0A63C
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sltiu   $at, v1, 0x006F
    beq     $at, $zero, lbl_80B0A63C
    lui     a3, 0x3CA3                 # a3 = 3CA30000
    lw      a0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x3F80                 # a2 = 3F800000
    ori     a3, a3, 0xD70A             # a3 = 3CA3D70A
    jal     func_80064280
    addu    a0, a0, $at
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0374             # a0 = 00000374
    jal     func_80064280
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a0, %hi(var_80B1676C)      # a0 = 80B10000
    lw      a0, %lo(var_80B1676C)(a0)
    jal     func_80022FD0
    addiu   a1, $zero, 0x209A          # a1 = 0000209A
    beq     $zero, $zero, lbl_80B0A648
    lw      t2, 0x0388(s0)             # 00000388
lbl_80B0A63C:
    jal     func_800642F0
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    lw      t2, 0x0388(s0)             # 00000388
lbl_80B0A648:
    lui     t9, %hi(var_80B1676C)      # t9 = 80B10000
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    sltiu   $at, t2, 0x0083
    bne     $at, $zero, lbl_80B0A6AC
    nop
    lw      t9, %lo(var_80B1676C)(t9)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lwc1    $f8, 0x0028(t9)            # 80B10028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    add.s   $f18, $f8, $f2
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    add.s   $f16, $f18, $f6
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    lw      a3, 0x0400(s0)             # 00000400
    sub.s   $f10, $f16, $f4
    mfc1    a1, $f10
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_80B0A6FC
    lui     a3, 0x3C23                 # a3 = 3C230000
lbl_80B0A6AC:
    lw      t3, %lo(var_80B1676C)(t3)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f2                   # $f2 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0028(t3)            # 00000028
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f10                  # $f10 = 0.25
    lwc1    $f4, 0x0400(s0)            # 00000400
    add.s   $f18, $f8, $f2
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    mul.s   $f8, $f4, $f10
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    add.s   $f16, $f18, $f6
    addiu   a0, s0, 0x03A4             # a0 = 000003A4
    mfc1    a1, $f16
    mfc1    a3, $f8
    jal     func_80064280
    nop
    lui     a3, 0x3C23                 # a3 = 3C230000
lbl_80B0A6FC:
    ori     a3, a3, 0xD70A             # a3 = 3C23D70A
    addiu   a0, s0, 0x0400             # a0 = 00000400
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      v1, 0x0388(s0)             # 00000388
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lui     t5, %hi(var_80B1676C)      # t5 = 80B10000
    bne     v1, $at, lbl_80B0A734
    lui     t7, %hi(var_80B1676C)      # t7 = 80B10000
    lw      t5, %lo(var_80B1676C)(t5)
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    sb      t4, 0x03B8(t5)             # 80B103B8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0A734:
    addiu   $at, $zero, 0x006E         # $at = 0000006E
    bne     v1, $at, lbl_80B0A750
    lui     a0, %hi(var_80B1676C)      # a0 = 80B10000
    lw      t7, %lo(var_80B1676C)(t7)
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sb      t6, 0x03B8(t7)             # 80B103B8
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0A750:
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    bne     v1, $at, lbl_80B0A768
    addiu   a1, $zero, 0x2896          # a1 = 00002896
    jal     func_80022FD0
    lw      a0, %lo(var_80B1676C)(a0)
    lw      v1, 0x0388(s0)             # 00000388
lbl_80B0A768:
    sltiu   $at, v1, 0x00A0
    bnel    $at, $zero, lbl_80B0A7C8
    lh      a1, 0x038E(s0)             # 0000038E
var_80B0A774:
    lw      v0, 0x0054($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x006B          # t8 = 0000006B
    addu    $at, $at, v0
    sh      t8, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x8012                # $at = 80120000
    ori     t0, $zero, 0xFFF2          # t0 = 0000FFF2
    sh      t0, -0x461E($at)           # 8011B9E2
    lui     $at, 0x0001                # $at = 00010000
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addu    $at, $at, v0
    sb      t1, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addu    $at, $at, v0
    sb      t2, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addu    $at, $at, v0
    sb      t9, 0x1DE8($at)            # 00011DE8
lbl_80B0A7C4:
    lh      a1, 0x038E(s0)             # 0000038E
lbl_80B0A7C8:
    lw      a0, 0x0054($sp)
    addiu   a2, s0, 0x03A0             # a2 = 000003A0
    beq     a1, $zero, lbl_80B0A7E4
    addiu   a3, s0, 0x0394             # a3 = 00000394
    addiu   t3, s0, 0x03AC             # t3 = 000003AC
    jal     func_8009D438
    sw      t3, 0x0010($sp)
lbl_80B0A7E4:
    lh      v1, 0x019C(s0)             # 0000019C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0028($sp)
    beq     v1, $zero, lbl_80B0A808
    nop
    beql    v1, $at, lbl_80B0A838
    lh      t5, 0x038C(s0)             # 0000038C
    beq     $zero, $zero, lbl_80B0A86C
    lw      $ra, 0x0024($sp)
lbl_80B0A808:
    jal     func_8008D6A8
    lw      a1, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B0A868
    lw      a0, 0x0028($sp)
    lui     a1, 0x0603                 # a1 = 06030000
    addiu   a1, a1, 0x2E78             # a1 = 06032E78
    jal     func_8008D328
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    beq     $zero, $zero, lbl_80B0A868
    sh      t4, 0x019C(s0)             # 0000019C
    lh      t5, 0x038C(s0)             # 0000038C
lbl_80B0A838:
    lw      t6, 0x0054($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    slti    $at, t5, 0x0007
    beq     $at, $zero, lbl_80B0A868
    addu    t7, t7, t6
    lw      t7, 0x1DE4(t7)             # 00011DE4
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x001F             # t8 = 00000000
    bnel    t8, $zero, lbl_80B0A86C
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x39AF          # a1 = 000039AF
lbl_80B0A868:
    lw      $ra, 0x0024($sp)
lbl_80B0A86C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80B0A87C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s2, 0x0028($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x0306(s2)             # 00000306
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0xFFFD          # a1 = FFFFFFFD
    bnel    t6, $zero, lbl_80B0A964
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      t7, 0x0450(s2)             # 00000450
lbl_80B0A8B0:
    sll     t8, v0,  6
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addu    v1, t7, t8
    lbu     a0, 0x0016(v1)             # 00000016
    sll     v0, v0, 16
    sra     v0, v0, 16
    andi    t9, a0, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80B0A8E0
    slti    $at, v0, 0x0002
    and     t0, a0, a1
    beq     $zero, $zero, lbl_80B0A958
    sb      t0, 0x0016(v1)             # 00000016
lbl_80B0A8E0:
    lbu     a0, 0x0015(v1)             # 00000015
    andi    t1, a0, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80B0A958
    and     t2, a0, a1
    sb      t2, 0x0015(v1)             # 00000015
    lbu     t3, 0x0302(s2)             # 00000302
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0044($sp)
    bne     t3, $at, lbl_80B0A910
    or      a1, s2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80B0A914
    addiu   v0, $zero, 0x1800          # v0 = 00001800
lbl_80B0A910:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B0A914:
    lh      t4, 0x008A(s2)             # 0000008A
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    addu    a3, t4, v0
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $zero, 0x0014($sp)
    lui     a2, 0x4170                 # a2 = 41700000
    jal     func_80022E7C
    swc1    $f4, 0x0010($sp)
    lui     t6, %hi(var_80B1676C)      # t6 = 80B10000
    lw      t6, %lo(var_80B1676C)(t6)
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sb      t5, 0x03B8(t6)             # 80B103B8
    beq     $zero, $zero, lbl_80B0A960
    sh      t7, 0x0306(s2)             # 00000306
lbl_80B0A958:
    bnel    $at, $zero, lbl_80B0A8B0
    lw      t7, 0x0450(s2)             # 00000450
lbl_80B0A960:
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_80B0A964:
    lwc1    $f8, 0x0314(s2)            # 00000314
    lui     $at, 0xC348                # $at = C3480000
    lw      t8, 0x0044($sp)
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80B0AA48
    lw      $ra, 0x002C($sp)
    mtc1    $at, $f14                  # $f14 = -200.00
    or      s0, $zero, $zero           # s0 = 00000000
    lw      s1, 0x1C44(t8)             # 00001C44
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f6                   # $f6 = 800.00
    lwc1    $f10, 0x0024(s1)           # 00000024
    lwc1    $f16, 0x002C(s1)           # 0000002C
    sub.s   $f2, $f14, $f10
    sub.s   $f12, $f14, $f16
    mul.s   $f18, $f2, $f2
    nop
    mul.s   $f4, $f12, $f12
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80B0AA44
    nop
    swc1    $f2, 0x0038($sp)
    swc1    $f12, 0x0034($sp)
lbl_80B0A9D0:
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80063BF0
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addu    t9, s1, s0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0012
    bne     $at, $zero, lbl_80B0A9D0
    sb      v0, 0x0A51(t9)             # 00000A51
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0A50(s1)             # 00000A50
    lwc1    $f14, 0x0038($sp)
    jal     func_800AA4F8
    lwc1    $f12, 0x0034($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    sll     a3, v0, 16
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    sw      t1, 0x0014($sp)
    sra     a3, a3, 16
    lw      a0, 0x0044($sp)
    or      a1, s2, $zero              # a1 = 00000000
    lui     a2, 0x4120                 # a2 = 41200000
    jal     func_80022E7C
    swc1    $f8, 0x0010($sp)
    lui     t3, %hi(var_80B1676C)      # t3 = 80B10000
    lw      t3, %lo(var_80B1676C)(t3)
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sb      t2, 0x03B8(t3)             # 80B103B8
lbl_80B0AA44:
    lw      $ra, 0x002C($sp)
lbl_80B0AA48:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B0AA5C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x0306(a2)             # 00000306
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a3, $zero, 0xFFFD          # a3 = FFFFFFFD
    bne     t6, $zero, lbl_80B0AAA0
    nop
    lbu     t7, 0x0324(a2)             # 00000324
    bnel    t7, $zero, lbl_80B0AAD0
    lbu     t5, 0x0303(a2)             # 00000303
    lw      t9, 0x0180(a2)             # 00000180
    lui     t8, %hi(func_80B08DA0)     # t8 = 80B10000
    addiu   t8, t8, %lo(func_80B08DA0) # t8 = 80B08DA0
    bnel    t8, t9, lbl_80B0AAD0
    lbu     t5, 0x0303(a2)             # 00000303
lbl_80B0AAA0:
    lw      t1, 0x0430(a2)             # 00000430
    sll     t2, v1,  6
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addu    v0, t1, t2
    lbu     t3, 0x0016(v0)             # 00000016
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0010
    and     t4, t3, a3
    bne     $at, $zero, lbl_80B0AAA0
    sb      t4, 0x0016(v0)             # 00000016
    lbu     t5, 0x0303(a2)             # 00000303
lbl_80B0AAD0:
    addiu   a3, $zero, 0xFFFD          # a3 = FFFFFFFD
    beql    t5, $zero, lbl_80B0AC44
    lw      v0, 0x0430(a2)             # 00000430
    lw      t7, 0x0180(a2)             # 00000180
    lui     t6, %hi(func_80B084F4)     # t6 = 80B10000
    addiu   t6, t6, %lo(func_80B084F4) # t6 = 80B084F4
    beql    t6, t7, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0430(a2)             # 00000430
    lbu     a1, 0x0016(v0)             # 00000016
    andi    t8, a1, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80B0AD40
    and     t9, a1, a3
    sb      t9, 0x0016(v0)             # 00000016
    lw      t1, 0x0430(a2)             # 00000430
    lui     v1, %hi(func_80B08DA0)     # v1 = 80B10000
    addiu   v1, v1, %lo(func_80B08DA0) # v1 = 80B08DA0
    lw      t0, 0x0024(t1)             # 00000024
    lw      a0, 0x0000(t0)             # 00000000
    andi    t2, a0, 0x2000             # t2 = 00000000
    beql    t2, $zero, lbl_80B0AB70
    lw      v0, 0x0180(a2)             # 00000180
    lw      t3, 0x0180(a2)             # 00000180
    lw      a1, 0x0024($sp)
    beql    v1, t3, lbl_80B0AB70
    lw      v0, 0x0180(a2)             # 00000180
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B085B4
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38A8          # a1 = 000038A8
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x399B          # a1 = 0000399B
    jal     func_800C9884
    addiu   a0, $zero, 0x39D9          # a0 = 000039D9
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0180(a2)             # 00000180
lbl_80B0AB70:
    lui     $at, 0x0900                # $at = 09000000
    ori     $at, $at, 0x0200           # $at = 09000200
    bne     v1, v0, lbl_80B0AC18
    and     t4, a0, $at
    beq     t4, $zero, lbl_80B0AC18
    addiu   t5, $zero, 0x003C          # t5 = 0000003C
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t5, 0x0306(a2)             # 00000306
    sh      t6, 0x0332(a2)             # 00000332
    sw      a2, 0x0020($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x399B          # a1 = 0000399B
    jal     func_800C9884
    addiu   a0, $zero, 0x39D9          # a0 = 000039D9
    lw      a2, 0x0020($sp)
    lbu     t7, 0x00AF(a2)             # 000000AF
    addiu   t8, t7, 0xFFFE             # t8 = FFFFFFFE
    sb      t8, 0x00AF(a2)             # 000000AF
    lb      v0, 0x00AF(a2)             # 000000AF
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_80B0ABEC
    nop
    lbu     t9, 0x0324(a2)             # 00000324
    or      a0, a2, $zero              # a0 = 00000000
    bne     t9, $zero, lbl_80B0ABEC
    nop
    jal     func_80B08D28
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
lbl_80B0ABEC:
    bgtz    v0, lbl_80B0AC08
    or      a0, a2, $zero              # a0 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B09534
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
lbl_80B0AC08:
    jal     func_80B08720
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
lbl_80B0AC18:
    beq     v1, v0, lbl_80B0AD40
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80B084A4
    sw      a2, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x1813          # a1 = 00001813
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0430(a2)             # 00000430
lbl_80B0AC44:
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    lbu     v1, 0x03D6(v0)             # 000003D6
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    andi    t1, v1, 0x0002             # t1 = 00000000
    beq     t1, $zero, lbl_80B0AD40
    and     t2, v1, a3
    sb      t2, 0x03D6(v0)             # 000003D6
    lw      t3, 0x0430(a2)             # 00000430
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x399B          # a1 = 0000399B
    lw      t0, 0x03E4(t3)             # 000003E4
    sh      t4, 0x0306(a2)             # 00000306
    sh      t5, 0x0334(a2)             # 00000334
    sh      t6, 0x0332(a2)             # 00000332
    sw      a2, 0x0020($sp)
    jal     func_80022FD0
    sw      t0, 0x0018($sp)
    jal     func_800C9884
    addiu   a0, $zero, 0x39D9          # a0 = 000039D9
    lw      t0, 0x0018($sp)
    lui     $at, 0x0900                # $at = 09000000
    ori     $at, $at, 0x0200           # $at = 09000200
    lw      a0, 0x0000(t0)             # 00000000
    lw      a2, 0x0020($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    and     t7, a0, $at
    beq     t7, $zero, lbl_80B0ACC8
    sll     t8, a0,  4
    bgez    t8, lbl_80B0ACC8
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    beq     $zero, $zero, lbl_80B0ACC8
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80B0ACC8:
    lbu     t9, 0x00AF(a2)             # 000000AF
    or      a0, v1, $zero              # a0 = 00000004
    subu    t1, t9, v1
    sb      t1, 0x00AF(a2)             # 000000AF
    lb      v0, 0x00AF(a2)             # 000000AF
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_80B0AD08
    nop
    lbu     t2, 0x0324(a2)             # 00000324
    lw      a1, 0x0024($sp)
    bne     t2, $zero, lbl_80B0AD08
    nop
    jal     func_80B08D28
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
lbl_80B0AD08:
    bgtz    v0, lbl_80B0AD28
    slti    $at, a0, 0x0002
    bne     $at, $zero, lbl_80B0AD28
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B09534
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_80B0AD44
    lw      $ra, 0x0014($sp)
lbl_80B0AD28:
    bgtz    v0, lbl_80B0AD38
    or      a0, a2, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x00AF(a2)             # 000000AF
lbl_80B0AD38:
    jal     func_80B08720
    lw      a1, 0x0024($sp)
lbl_80B0AD40:
    lw      $ra, 0x0014($sp)
lbl_80B0AD44:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B0AD50:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0020($sp)
    lbu     v0, 0x0327(s1)             # 00000327
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B0AD88
    or      a1, s2, $zero              # a1 = 00000000
    bne     v0, $at, lbl_80B0AD9C
    addiu   a2, $zero, 0x0153          # a2 = 00000153
lbl_80B0AD88:
    addiu   a2, $zero, 0x017E          # a2 = 0000017E
    jal     func_80B05648
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80B0ADBC
    nop
lbl_80B0AD9C:
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80B05648
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a0, s1, 0x02FC             # a0 = 000002FC
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x3F00                 # a2 = 3F000000
lbl_80B0ADBC:
    jal     func_80B08194
    or      a0, s1, $zero              # a0 = 00000000
    lh      t6, 0x018C(s1)             # 0000018C
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      $zero, 0x0302(s1)          # 00000302
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x018C(s1)             # 0000018C
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s1, $zero              # a0 = 00000000
    lw      t9, 0x0180(s1)             # 00000180
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      s0, $zero, $zero           # s0 = 00000000
    sll     t8, s0,  1
lbl_80B0AE00:
    addu    v0, s1, t8
    lh      v1, 0x0192(v0)             # 00000192
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    beq     v1, $zero, lbl_80B0AE20
    sra     s0, s0, 16
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0192(v0)             # 00000192
lbl_80B0AE20:
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_80B0AE00
    sll     t8, s0,  1
    lh      v0, 0x0306(s1)             # 00000306
    beq     v0, $zero, lbl_80B0AE3C
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x0306(s1)             # 00000306
lbl_80B0AE3C:
    lh      v0, 0x0332(s1)             # 00000332
    beq     v0, $zero, lbl_80B0AE4C
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0332(s1)             # 00000332
lbl_80B0AE4C:
    lh      v0, 0x0380(s1)             # 00000380
    beq     v0, $zero, lbl_80B0AE5C
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x0380(s1)             # 00000380
lbl_80B0AE5C:
    lh      v0, 0x0382(s1)             # 00000382
    beq     v0, $zero, lbl_80B0AE6C
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0382(s1)             # 00000382
lbl_80B0AE6C:
    jal     func_8002121C
    or      a0, s1, $zero              # a0 = 00000000
    lwl     t7, 0x0030(s1)             # 00000030
    lwr     t7, 0x0033(s1)             # 00000033
    lbu     t9, 0x0325(s1)             # 00000325
    lui     $at, 0x4270                # $at = 42700000
    swl     t7, 0x00B4(s1)             # 000000B4
    swr     t7, 0x00B7(s1)             # 000000B7
    lhu     t7, 0x0034(s1)             # 00000034
    or      a0, s2, $zero              # a0 = 00000000
    beq     t9, $zero, lbl_80B0AF14
    sh      t7, 0x00B8(s1)             # 000000B8
    mtc1    $at, $f0                   # $f0 = 60.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t8, 0x0014($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lhu     t1, 0x0088(s1)             # 00000088
    lui     $at, 0xC0A0                # $at = C0A00000
    andi    t2, t1, 0x0001             # t2 = 00000000
    beql    t2, $zero, lbl_80B0AF18
    lh      t3, 0x018C(s1)             # 0000018C
    lwc1    $f6, 0x0060(s1)            # 00000060
    mtc1    $at, $f8                   # $f8 = -5.00
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    c.lt.s  $f6, $f8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bc1fl   lbl_80B0AF0C
    mtc1    $zero, $f10                # $f10 = 0.00
    jal     func_80026CF4
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    jal     func_800646F0
    addiu   a0, $zero, 0x180E          # a0 = 0000180E
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80B0AF0C:
    nop
    swc1    $f10, 0x0060(s1)           # 00000060
lbl_80B0AF14:
    lh      t3, 0x018C(s1)             # 0000018C
lbl_80B0AF18:
    andi    t4, t3, 0x001F             # t4 = 00000000
    bnel    t4, $zero, lbl_80B0AF50
    lh      v0, 0x0308(s1)             # 00000308
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B15A3C)     # $at = 80B10000
    lwc1    $f16, %lo(var_80B15A3C)($at)
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80B0AF50
    lh      v0, 0x0308(s1)             # 00000308
    sh      t5, 0x0308(s1)             # 00000308
    lh      v0, 0x0308(s1)             # 00000308
lbl_80B0AF50:
    lui     t7, %hi(var_80B0F224)      # t7 = 80B10000
    sll     t6, v0,  1
    addu    t7, t7, t6
    lh      t7, %lo(var_80B0F224)(t7)
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    beq     v0, $zero, lbl_80B0AF70
    sb      t7, 0x0300(s1)             # 00000300
    sh      t9, 0x0308(s1)             # 00000308
lbl_80B0AF70:
    lh      a0, 0x018C(s1)             # 0000018C
    addiu   $at, $zero, 0x2AAA         # $at = 00002AAA
    multu   a0, $at
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4280                # $at = 42800000
    mtc1    $at, $f18                  # $f18 = 64.00
    lui     $at, 0x433F                # $at = 433F0000
    mtc1    $at, $f6                   # $f6 = 191.00
    mul.s   $f4, $f0, $f18
    lh      v0, 0x0334(s1)             # 00000334
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    lui     a3, 0x453B                 # a3 = 453B0000
    lui     $at, %hi(var_80B15A40)     # $at = 80B10000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0350             # a0 = 00000350
    add.s   $f8, $f4, $f6
    lui     a1, 0x44FA                 # a1 = 44FA0000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     v0, $zero, lbl_80B0B050
    swc1    $f8, 0x01A0(s1)            # 000001A0
    lui     a1, 0x459C                 # a1 = 459C0000
    sh      t8, 0x0334(s1)             # 00000334
    ori     a1, a1, 0x4000             # a1 = 459C4000
    addiu   a0, s1, 0x0350             # a0 = 00000350
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    ori     a3, a3, 0x8000             # a3 = 453B8000
    lui     a1, 0x45AB                 # a1 = 45AB0000
    lui     a3, 0x453B                 # a3 = 453B0000
    ori     a3, a3, 0x8000             # a3 = 453B8000
    ori     a1, a1, 0xE000             # a1 = 45ABE000
    addiu   a0, s1, 0x0360             # a0 = 00000360
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0358             # a0 = 00000358
    lui     a1, 0x45FA                 # a1 = 45FA0000
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0368             # a0 = 00000368
    lui     a1, 0x45FA                 # a1 = 45FA0000
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    addiu   a0, s1, 0x0336             # a0 = 00000336
    addiu   a1, $zero, 0x0FA0          # a1 = 00000FA0
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    beq     $zero, $zero, lbl_80B0B14C
    lh      t4, 0x038C(s1)             # 0000038C
lbl_80B0B050:
    lwc1    $f10, %lo(var_80B15A40)($at)
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064280
    swc1    $f10, 0x0354(s1)           # 00000354
    lui     $at, %hi(var_80B15A44)     # $at = 80B10000
    lwc1    $f16, %lo(var_80B15A44)($at)
    lui     a1, 0x44BB                 # a1 = 44BB0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x8000             # a1 = 44BB8000
    addiu   a0, s1, 0x0360             # a0 = 00000360
    lui     a3, 0x42C8                 # a3 = 42C80000
    jal     func_80064280
    swc1    $f16, 0x0364(s1)           # 00000364
    lw      v0, 0x0180(s1)             # 00000180
    lui     t1, %hi(func_80B083D0)     # t1 = 80B10000
    addiu   t1, t1, %lo(func_80B083D0) # t1 = 80B083D0
    beq     t1, v0, lbl_80B0B0B4
    lui     t2, %hi(func_80B084F4)     # t2 = 80B10000
    addiu   t2, t2, %lo(func_80B084F4) # t2 = 80B084F4
    beq     t2, v0, lbl_80B0B0B4
    lui     t3, %hi(func_80B08614)     # t3 = 80B10000
    addiu   t3, t3, %lo(func_80B08614) # t3 = 80B08614
    bne     t3, v0, lbl_80B0B100
    addiu   a0, s1, 0x0358             # a0 = 00000358
lbl_80B0B0B4:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0358             # a0 = 00000358
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s1, 0x0368             # a0 = 00000368
    lui     a1, 0x447A                 # a1 = 447A0000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    addiu   a0, s1, 0x0336             # a0 = 00000336
    addiu   a1, $zero, 0xF060          # a1 = FFFFF060
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    beq     $zero, $zero, lbl_80B0B14C
    lh      t4, 0x038C(s1)             # 0000038C
lbl_80B0B100:
    lui     a1, 0x459C                 # a1 = 459C0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x4000             # a1 = 459C4000
    jal     func_80064280
    lui     a3, 0x4348                 # a3 = 43480000
    lui     a1, 0x459C                 # a1 = 459C0000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    ori     a1, a1, 0x4000             # a1 = 459C4000
    addiu   a0, s1, 0x0368             # a0 = 00000368
    jal     func_80064280
    lui     a3, 0x4348                 # a3 = 43480000
    addiu   a0, s1, 0x0336             # a0 = 00000336
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80064624
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lh      t4, 0x038C(s1)             # 0000038C
lbl_80B0B14C:
    addiu   $at, $zero, 0x004B         # $at = 0000004B
    or      s0, $zero, $zero           # s0 = 00000000
    beql    t4, $at, lbl_80B0B180
    lbu     t5, 0x0327(s1)             # 00000327
    lwc1    $f18, 0x034C(s1)           # 0000034C
    lwc1    $f4, 0x0350(s1)            # 00000350
    lwc1    $f8, 0x035C(s1)            # 0000035C
    lwc1    $f10, 0x0360(s1)           # 00000360
    add.s   $f6, $f18, $f4
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x034C(s1)            # 0000034C
    swc1    $f16, 0x035C(s1)           # 0000035C
    lbu     t5, 0x0327(s1)             # 00000327
lbl_80B0B180:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t5, $at, lbl_80B0B19C
    nop
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    swc1    $f18, 0x0368(s1)           # 00000368
    swc1    $f4, 0x0358(s1)            # 00000358
lbl_80B0B19C:
    bne     s0, $zero, lbl_80B0B1B0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     $at, %hi(var_80B15A48)     # $at = 80B10000
    beq     $zero, $zero, lbl_80B0B1D0
    lwc1    $f2, %lo(var_80B15A48)($at)
lbl_80B0B1B0:
    bne     s0, $at, lbl_80B0B1C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    beq     $zero, $zero, lbl_80B0B1D4
    lwc1    $f10, 0x0354(s1)           # 00000354
lbl_80B0B1C4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
lbl_80B0B1D0:
    lwc1    $f10, 0x0354(s1)           # 00000354
lbl_80B0B1D4:
    lwc1    $f6, 0x034C(s1)            # 0000034C
    swc1    $f2, 0x0068($sp)
    trunc.w.s $f16, $f10
    trunc.w.s $f8, $f6
    mfc1    t2, $f16
    nop
    sll     t3, t2, 16
    sra     t4, t3, 16
    multu   s0, t4
    mfc1    t8, $f8
    mflo    t5
    addu    a0, t8, t5
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f2, 0x0068($sp)
    lwc1    $f4, 0x0358(s1)            # 00000358
    sll     t6, s0,  1
    mul.s   $f18, $f0, $f2
    addu    v0, s1, t6
    mul.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0338(v0)             # 00000338
    lwc1    $f18, 0x0364(s1)           # 00000364
    lwc1    $f10, 0x035C(s1)           # 0000035C
    sw      v0, 0x0038($sp)
    trunc.w.s $f4, $f18
    trunc.w.s $f16, $f10
    mfc1    t5, $f4
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    multu   s0, t7
    mfc1    t4, $f16
    mflo    t9
    addu    a0, t4, t9
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f2, 0x0068($sp)
    lwc1    $f8, 0x0368(s1)            # 00000368
    lw      v0, 0x0038($sp)
    mul.s   $f6, $f0, $f2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t2, $f16
    nop
    sh      t2, 0x0342(v0)             # 00000342
    bne     $at, $zero, lbl_80B0B19C
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B07DA0
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B0A87C
    or      a1, s2, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s0, s2, $at
    addiu   a2, s1, 0x0414             # a2 = 00000414
    sw      a2, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000001
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s2, $zero              # a0 = 00000000
    lw      t8, 0x0180(s1)             # 00000180
    lui     t3, %hi(func_80B09738)     # t3 = 80B10000
    addiu   t3, t3, %lo(func_80B09738) # t3 = 80B09738
    beql    t3, t8, lbl_80B0B360
    lh      v0, 0x0322(s1)             # 00000322
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80B0AA5C
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000001
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
    addiu   a2, s1, 0x0434             # a2 = 00000434
    sw      a2, 0x0034($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a1, s0, $zero              # a1 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000001
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
    lh      t5, 0x038E(s1)             # 0000038E
    lw      a2, 0x0034($sp)
    bnel    t5, $zero, lbl_80B0B360
    lh      v0, 0x0322(s1)             # 00000322
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a1, s0, $zero              # a1 = 00000001
    lh      v0, 0x0322(s1)             # 00000322
lbl_80B0B360:
    bne     v0, $zero, lbl_80B0B4A0
    nop
    lbu     v1, 0x0326(s1)             # 00000326
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $zero, lbl_80B0B4A0
    nop
    bne     v1, $at, lbl_80B0B3A4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64
    nop
    trunc.w.s $f18, $f0
    mfc1    t9, $f18
    nop
    addiu   t1, t9, 0x0008             # t1 = 00000008
    beq     $zero, $zero, lbl_80B0B3C8
    sh      t1, 0x0322(s1)             # 00000322
lbl_80B0B3A4:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    mfc1    t5, $f4
    nop
    addiu   t6, t5, 0x000A             # t6 = 0000000A
    sh      t6, 0x0322(s1)             # 00000322
lbl_80B0B3C8:
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x0329(s1)          # 00000329
    addu    $at, $at, s2
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, %hi(var_80B15A4C)     # $at = 80B10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15A4C)($at)
    trunc.w.s $f6, $f0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    mtc1    $zero, $f10                # $f10 = 0.00
    mfc1    t1, $f6
    lui     s0, %hi(var_80B16760)      # s0 = 80B10000
    addiu   s0, s0, %lo(var_80B16760)  # s0 = 80B16760
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    swc1    $f10, 0x0004(s0)           # 80B16764
    lwc1    $f16, 0x0004(s0)           # 80B16764
    swc1    $f16, 0x0000(s0)           # 80B16760
    lwc1    $f18, 0x0000(s0)           # 80B16760
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0008(s0)           # 80B16768
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x447A                # $at = 447A0000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B0B464
    or      a0, s0, $zero              # a0 = 80B16760
    mtc1    $at, $f12                  # $f12 = 1000.00
    jal     func_80026D64
    nop
    swc1    $f0, 0x0008(s0)            # 80B16768
    or      a0, s0, $zero              # a0 = 80B16760
lbl_80B0B464:
    jal     func_80064780
    addiu   a1, $zero, 0x282E          # a1 = 0000282E
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t3, 0x0318(s1)             # 00000318
    sh      t8, 0x0320(s1)             # 00000320
    lui     $at, %hi(var_80B15A50)     # $at = 80B10000
    swc1    $f6, 0x031C(s1)            # 0000031C
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15A50)($at)
    trunc.w.s $f8, $f0
    mfc1    t6, $f8
    beq     $zero, $zero, lbl_80B0B4AC
    sh      t6, 0x0330(s1)             # 00000330
lbl_80B0B4A0:
    beq     v0, $zero, lbl_80B0B4AC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0322(s1)             # 00000322
lbl_80B0B4AC:
    lui     $at, 0x0001                # $at = 00010000
    addu    s0, s2, $at
    lwc1    $f16, 0x0AFC(s0)           # 80B1725C
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    c.lt.s  $f10, $f16
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bc1fl   lbl_80B0B524
    sb      $zero, 0x0B0D($at)         # 00010B0D
    lbu     t4, 0x0326(s1)             # 00000326
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    beql    t4, $zero, lbl_80B0B524
    sb      $zero, 0x0B0D($at)         # 00010B0D
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      t9, 0x0B0D($at)            # 00010B0D
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f18, 0x0AFC(s0)           # 80B1725C
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sb      v0, 0x0B0E(s0)             # 80B1726E
    mul.s   $f6, $f18, $f4
    sb      v0, 0x0B0F(s0)             # 80B1726F
    sb      v0, 0x0B10(s0)             # 80B17270
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    beq     $zero, $zero, lbl_80B0B524
    sb      t8, 0x0B11(s0)             # 80B17271
    sb      $zero, 0x0B0D($at)         # 43480B0D
lbl_80B0B524:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      $zero, 0x0AE3($at)         # 00010AE3
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      t0, 0x0B00($at)            # 00010B00
    lb      v0, 0x0329(s1)             # 00000329
    slti    $at, v0, 0x0019
    bne     $at, $zero, lbl_80B0B560
    or      v1, v0, $zero              # v1 = 000000FF
    addiu   $at, $zero, 0x0037         # $at = 00000037
    beq     v1, $at, lbl_80B0B6D8
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80B0B898
    nop
lbl_80B0B560:
    addiu   t5, v1, 0x0001             # t5 = 00000100
    sltiu   $at, t5, 0x001A
    beq     $at, $zero, lbl_80B0B898
    sll     t5, t5,  2
    lui     $at, %hi(var_80B15A54)     # $at = 80B10000
    addu    $at, $at, t5
    lw      t5, %lo(var_80B15A54)($at)
    jr      t5
    nop
var_80B0B584:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addu    a0, s2, $at
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B5A8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3C4C                 # a3 = 3C4C0000
    mfc1    a1, $f0
    mfc1    a2, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3C4CCCCD
    jal     func_80064280
    addu    a0, s2, $at
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B5F8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    sb      t4, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sb      t9, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a3, 0x3C4C                 # a3 = 3C4C0000
    mfc1    a1, $f0
    mfc1    a2, $f0
    ori     a3, a3, 0xCCCD             # a3 = 3C4CCCCD
    jal     func_80064280
    addu    a0, s2, $at
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B648:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sb      t1, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    lui     a1, 0x3F30                 # a1 = 3F300000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    sb      t2, 0x0AE1($at)            # 00010AE1
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0xA3D7             # a1 = 3F30A3D7
    addiu   a0, s1, 0x032C             # a0 = 0000032C
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a0, 0x1DE4(s0)             # 80B18544
    addu    $at, a0, $zero
    sll     a0, a0,  2
    addu    a0, a0, $at
    sll     a0, a0, 12
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80B15ABC)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15ABC)($at)
    lui     $at, %hi(var_80B15AC0)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15AC0)($at)
    lwc1    $f16, 0x032C(s1)           # 0000032C
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f6, $f0, $f4
    add.s   $f18, $f10, $f16
    addu    $at, $at, s2
    add.s   $f8, $f6, $f18
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
lbl_80B0B6D8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      t0, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      $zero, 0x0AE1($at)         # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    addu    a0, s2, $at
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B710:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      t0, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    lui     a1, 0x3F30                 # a1 = 3F300000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    sb      t3, 0x0AE1($at)            # 00010AE1
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0xA3D7             # a1 = 3F30A3D7
    addiu   a0, s1, 0x032C             # a0 = 0000032C
    jal     func_80064280
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      a0, 0x1DE4(s0)             # 80B18544
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0, 12
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, %hi(var_80B15AC4)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15AC4)($at)
    lui     $at, %hi(var_80B15AC8)     # $at = 80B10000
    lwc1    $f6, %lo(var_80B15AC8)($at)
    lwc1    $f16, 0x032C(s1)           # 0000032C
    lui     $at, 0x0001                # $at = 00010000
    mul.s   $f18, $f0, $f6
    add.s   $f4, $f10, $f16
    addu    $at, $at, s2
    add.s   $f8, $f18, $f4
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B79C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sb      t8, 0x0AE1($at)            # 00010AE1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0AFC           # $at = 00010AFC
    lui     a2, 0x3CA3                 # a2 = 3CA30000
    ori     a2, a2, 0xD70A             # a2 = 3CA3D70A
    addu    a0, s2, $at
    jal     func_800642F0
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B7DC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t5, $zero, 0x0009          # t5 = 00000009
    sb      t5, 0x0AE1($at)            # 00010AE1
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B800:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sb      t6, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sb      t7, 0x0AE1($at)            # 00010AE1
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B828:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sb      t4, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    sb      t9, 0x0AE1($at)            # 00010AE1
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B850:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    sb      t1, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t2, $zero, 0x000B          # t2 = 0000000B
    sb      t2, 0x0AE1($at)            # 00010AE1
    beq     $zero, $zero, lbl_80B0B898
    lb      v0, 0x0329(s1)             # 00000329
var_80B0B878:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    sb      $zero, 0x0AE2($at)         # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    addiu   t3, $zero, 0x000C          # t3 = 0000000C
    sb      t3, 0x0AE1($at)            # 00010AE1
    lb      v0, 0x0329(s1)             # 00000329
lbl_80B0B898:
    bltz    v0, lbl_80B0B8A4
    or      s0, $zero, $zero           # s0 = 00000000
    sb      $zero, 0x0329(s1)          # 00000329
lbl_80B0B8A4:
    lui     v0, %hi(var_80B0EF28)      # v0 = 80B10000
    addiu   v0, v0, %lo(var_80B0EF28)  # v0 = 80B0EF28
    lbu     t8, 0x0000(v0)             # 80B0EF28
    addiu   t5, s1, 0x0024             # t5 = 00000024
    beq     t8, $zero, lbl_80B0B9E4
    nop
    sb      $zero, 0x0000(v0)          # 80B0EF28
    sw      t5, 0x0038($sp)
lbl_80B0B8C4:
    lui     $at, %hi(var_80B15ACC)     # $at = 80B10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15ACC)($at)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D64
    swc1    $f0, 0x0048($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lw      t7, 0x0038($sp)
    addiu   t6, $sp, 0x0058            # t6 = FFFFFFE0
    add.s   $f16, $f0, $f10
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f6                   # $f6 = 1200.00
    swc1    $f16, 0x0044($sp)
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0000(t6)             # FFFFFFE0
    lw      t4, 0x0004(t7)             # 00000004
    sw      t4, 0x0004(t6)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(t6)             # FFFFFFE8
    lwc1    $f12, 0x0048($sp)
    jal     func_800D2CD0
    swc1    $f6, 0x005C($sp)
    lwc1    $f18, 0x0044($sp)
    lwc1    $f12, 0x0048($sp)
    mul.s   $f4, $f0, $f18
    jal     func_800CF470
    swc1    $f4, 0x004C($sp)
    lwc1    $f8, 0x0044($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f12                  # $f12 = 15.00
    mul.s   $f10, $f0, $f8
    jal     func_80026D64
    swc1    $f10, 0x0054($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lwc1    $f4, 0x004C($sp)
    lui     $at, %hi(var_80B15AD0)     # $at = 80B10000
    lwc1    $f14, %lo(var_80B15AD0)($at)
    mul.s   $f8, $f4, $f2
    lwc1    $f4, 0x0054($sp)
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    lwc1    $f18, 0x0058($sp)
    lui     $at, %hi(var_80B15AD4)     # $at = 80B10000
    add.s   $f6, $f0, $f16
    mul.s   $f10, $f8, $f14
    lwc1    $f12, %lo(var_80B15AD4)($at)
    mul.s   $f8, $f4, $f2
    swc1    $f6, 0x0050($sp)
    lwc1    $f6, 0x0060($sp)
    add.s   $f16, $f18, $f10
    mul.s   $f18, $f8, $f14
    swc1    $f16, 0x0058($sp)
    add.s   $f10, $f6, $f18
    jal     func_80026D64
    swc1    $f10, 0x0060($sp)
    lui     $at, %hi(var_80B15AD8)     # $at = 80B10000
    lwc1    $f16, %lo(var_80B15AD8)($at)
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE0
    add.s   $f4, $f0, $f16
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFD4
    mfc1    a3, $f4
    jal     func_80B0576C
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0xFFFF             # s0 = 00000001
    slti    $at, s0, 0x0064
    bne     $at, $zero, lbl_80B0B8C4
    nop
lbl_80B0B9E4:
    lui     $at, %hi(var_80B15ADC)     # $at = 80B10000
    lwc1    $f6, %lo(var_80B15ADC)($at)
    lwc1    $f8, 0x0378(s1)            # 00000378
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    add.s   $f18, $f8, $f6
    jal     func_80B0DFF4
    swc1    $f18, 0x0378(s1)           # 00000378
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80B0BA1C:
    addiu   $sp, $sp, 0xFD20           # $sp -= 0x2E0
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s8, $sp, 0x009C            # s8 = FFFFFDBC
    addiu   s7, $zero, 0x000C          # s7 = 0000000C
    addiu   s6, $sp, 0x018C            # s6 = FFFFFEAC
lbl_80B0BA70:
    multu   v0, s7
    lw      t8, 0x0000(a0)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0014
    mflo    v1
    addu    t6, s6, v1
    sw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(a0)             # 00000004
    addu    t9, s8, v1
    sw      t7, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(a0)             # 00000008
    sw      t8, 0x0008(t6)             # 00000008
    lw      t2, 0x0000(a1)             # 00000000
    sw      t2, 0x0000(t9)             # 00000000
    lw      t1, 0x0004(a1)             # 00000004
    sw      t1, 0x0004(t9)             # 00000004
    lw      t2, 0x0008(a1)             # 00000008
    bne     $at, $zero, lbl_80B0BA70
    sw      t2, 0x0008(t9)             # 00000008
    lui     v0, %hi(var_80B18230)      # v0 = 80B20000
    addiu   v0, v0, %lo(var_80B18230)  # v0 = 80B18230
    lw      t5, 0x0000(v0)             # 80B18230
    lui     t3, %hi(var_80B1823C)      # t3 = 80B20000
    addiu   t3, t3, %lo(var_80B1823C)  # t3 = 80B1823C
    sw      t5, 0x0000(t3)             # 80B1823C
    lw      t4, 0x0004(v0)             # 80B18234
    lui     v1, %hi(var_80B18224)      # v1 = 80B20000
    addiu   v1, v1, %lo(var_80B18224)  # v1 = 80B18224
    sw      t4, 0x0004(t3)             # 80B18240
    lw      t5, 0x0008(v0)             # 80B18238
    lui     s0, %hi(var_80B18218)      # s0 = 80B20000
    addiu   s0, s0, %lo(var_80B18218)  # s0 = 80B18218
    sw      t5, 0x0008(t3)             # 80B18244
    lw      t7, 0x0000(v1)             # 80B18224
    addiu   t3, $sp, 0x02D0            # t3 = FFFFFFF0
    or      s4, $zero, $zero           # s4 = 00000000
    sw      t7, 0x0000(v0)             # 80B18230
    lw      t6, 0x0004(v1)             # 80B18228
    sw      t6, 0x0004(v0)             # 80B18234
    lw      t7, 0x0008(v1)             # 80B1822C
    sw      t7, 0x0008(v0)             # 80B18238
    lw      t9, 0x0000(s0)             # 80B18218
    sw      t9, 0x0000(v1)             # 80B18224
    lw      t8, 0x0004(s0)             # 80B1821C
    sw      t8, 0x0004(v1)             # 80B18228
    lw      t9, 0x0008(s0)             # 80B18220
    sw      t9, 0x0008(v1)             # 80B1822C
    lw      t2, 0x0000(a0)             # 00000000
    sw      t2, 0x0000(s0)             # 80B18218
    lw      t1, 0x0004(a0)             # 00000004
    lw      t5, 0x0000(s0)             # 80B18218
    sw      t1, 0x0004(s0)             # 80B1821C
    lw      t2, 0x0008(a0)             # 00000008
    sw      t2, 0x0008(s0)             # 80B18220
    sw      t5, 0x0000(t3)             # FFFFFFF0
    lw      t4, 0x0004(s0)             # 80B1821C
    sw      t4, 0x0004(t3)             # FFFFFFF4
    lw      t5, 0x0008(s0)             # 80B18220
    sw      t5, 0x0008(t3)             # FFFFFFF8
    lwc1    $f6, 0x02D0($sp)
    lwc1    $f4, 0x000C(s0)            # 80B18224
    lwc1    $f10, 0x02D4($sp)
    lwc1    $f8, 0x0010(s0)            # 80B18228
    sub.s   $f20, $f4, $f6
    lwc1    $f6, 0x02D8($sp)
    lwc1    $f4, 0x0014(s0)            # 80B1822C
    sw      a1, 0x02E4($sp)
    mov.s   $f14, $f20
    sub.s   $f22, $f4, $f6
    sub.s   $f24, $f8, $f10
    jal     func_800AA4F8
    mov.s   $f12, $f22
    mul.s   $f26, $f20, $f20
    sh      v0, 0x02CA($sp)
    mov.s   $f14, $f24
    mul.s   $f28, $f22, $f22
    add.s   $f0, $f26, $f28
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    lwc1    $f12, 0x0018(s0)           # 80B18230
    lwc1    $f8, 0x000C(s0)            # 80B18224
    lwc1    $f16, 0x001C(s0)           # 80B18234
    lwc1    $f10, 0x0010(s0)           # 80B18228
    sub.s   $f2, $f12, $f8
    lwc1    $f6, 0x0024(s0)            # 80B1823C
    lwc1    $f20, 0x0020(s0)           # 80B18238
    sub.s   $f14, $f16, $f10
    lwc1    $f4, 0x0014(s0)            # 80B1822C
    lwc1    $f8, 0x0028(s0)            # 80B18240
    sub.s   $f22, $f6, $f12
    lwc1    $f10, 0x002C(s0)           # 80B18244
    mul.s   $f6, $f2, $f2
    sub.s   $f18, $f20, $f4
    lui     $at, 0x3F80                # $at = 3F800000
    sh      v0, 0x02C8($sp)
    sub.s   $f30, $f8, $f16
    mul.s   $f8, $f14, $f14
    mtc1    $at, $f14                  # $f14 = 1.00
    sub.s   $f4, $f10, $f20
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    swc1    $f4, 0x02A0($sp)
    mul.s   $f4, $f18, $f18
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x02A0($sp)
    add.s   $f6, $f10, $f4
    mul.s   $f10, $f24, $f24
    sqrt.s  $f0, $f6
    add.s   $f4, $f26, $f10
    swc1    $f0, 0x0088($sp)
    swc1    $f0, 0x0094($sp)
    mul.s   $f10, $f22, $f22
    add.s   $f6, $f4, $f28
    mul.s   $f4, $f30, $f30
    sqrt.s  $f0, $f6
    add.s   $f6, $f10, $f4
    mul.s   $f10, $f8, $f8
    swc1    $f0, 0x0084($sp)
    swc1    $f0, 0x0098($sp)
    lwc1    $f4, 0x0098($sp)
    lwc1    $f8, 0x0094($sp)
    add.s   $f0, $f6, $f10
    add.s   $f6, $f4, $f8
    sqrt.s  $f0, $f0
    add.s   $f12, $f0, $f6
    lwc1    $f0, 0x0084($sp)
    c.le.s  $f12, $f14
    mul.s   $f30, $f0, $f2
    lwc1    $f0, 0x0088($sp)
    bc1f    lbl_80B0BC88
    nop
    mov.s   $f12, $f14
lbl_80B0BC88:
    mul.s   $f10, $f0, $f2
    lui     t6, %hi(var_80B18224)      # t6 = 80B20000
    addiu   s0, t6, %lo(var_80B18224)  # s0 = 80B18224
    lwc1    $f6, 0x02D0($sp)
    lui     $at, %hi(var_80B15AE0)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15AE0)($at)
    addiu   s2, $zero, 0x0001          # s2 = 00000001
    swc1    $f10, 0x0294($sp)
    lwc1    $f8, 0x0000(s0)            # 80B18224
    mul.s   $f28, $f12, $f4
    lwc1    $f4, 0x02D4($sp)
    sub.s   $f20, $f8, $f6
    lwc1    $f6, 0x02D8($sp)
    lwc1    $f8, 0x0008(s0)            # 80B1822C
    lwc1    $f10, 0x0004(s0)           # 80B18228
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    sub.s   $f22, $f8, $f6
    sub.s   $f24, $f10, $f4
lbl_80B0BCD0:
    mov.s   $f12, $f22
    jal     func_800AA4F8
    mov.s   $f14, $f20
    mul.s   $f10, $f20, $f20
    sll     s1, v0, 16
    sra     s1, s1, 16
    mul.s   $f4, $f22, $f22
    mov.s   $f14, $f24
    add.s   $f0, $f10, $f4
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x02C8            # a0 = FFFFFFE8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    sll     a1, s1, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x02CA            # a0 = FFFFFFEA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    jal     func_80063684              # coss?
    lh      a0, 0x02C8($sp)
    sll     t7, s4,  2
    addiu   t9, $sp, 0x02D0            # t9 = FFFFFFF0
    lw      t2, 0x0000(t9)             # FFFFFFF0
    subu    t7, t7, s4
    sll     t7, t7,  2
    addu    t8, s6, t7
    sw      t2, 0x0000(t8)             # 00000000
    lw      t1, 0x0004(t9)             # FFFFFFF4
    mul.s   $f26, $f0, $f28
    sw      t1, 0x0004(t8)             # 00000004
    lw      t2, 0x0008(t9)             # FFFFFFF8
    sw      t2, 0x0008(t8)             # 00000008
    jal     func_800636C4              # sins?
    lh      a0, 0x02CA($sp)
    mul.s   $f6, $f26, $f0
    lwc1    $f8, 0x02D0($sp)
    lh      a0, 0x02C8($sp)
    add.s   $f10, $f8, $f6
    jal     func_800636C4              # sins?
    swc1    $f10, 0x02D0($sp)
    mul.s   $f8, $f28, $f0
    lwc1    $f4, 0x02D4($sp)
    lh      a0, 0x02CA($sp)
    add.s   $f6, $f4, $f8
    jal     func_80063684              # coss?
    swc1    $f6, 0x02D4($sp)
    mul.s   $f4, $f26, $f0
    lwc1    $f10, 0x02D8($sp)
    lwc1    $f6, 0x0000(s0)            # 80B18224
    lui     t4, %hi(var_80B18218)      # t4 = 80B20000
    slti    $at, s3, 0x0003
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   t4, t4, %lo(var_80B18218)  # t4 = 80B18218
    add.s   $f8, $f10, $f4
    lwc1    $f10, 0x02D0($sp)
    lwc1    $f4, 0x0004(s0)            # 80B18228
    andi    s4, s4, 0x00FF             # s4 = 00000001
    sub.s   $f20, $f6, $f10
    lwc1    $f6, 0x02D4($sp)
    lwc1    $f10, 0x0008(s0)           # 80B1822C
    swc1    $f8, 0x02D8($sp)
    sub.s   $f24, $f4, $f6
    beq     $at, $zero, lbl_80B0BE20
    sub.s   $f22, $f10, $f8
    mul.s   $f4, $f20, $f20
    nop
    mul.s   $f6, $f24, $f24
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f22, $f22
    add.s   $f0, $f10, $f8
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f30
    nop
    bc1f    lbl_80B0BE60
    nop
    addiu   s2, s2, 0x0001             # s2 = 00000002
    lwc1    $f30, 0x0294($sp)
    beq     $zero, $zero, lbl_80B0BE60
    andi    s2, s2, 0x00FF             # s2 = 00000002
lbl_80B0BE20:
    mul.s   $f4, $f20, $f20
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f24, $f24
    add.s   $f10, $f4, $f6
    mul.s   $f8, $f22, $f22
    mtc1    $at, $f4                   # $f4 = 1.00
    nop
    add.s   $f6, $f28, $f4
    add.s   $f0, $f10, $f8
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_80B0BE64
    slti    $at, s4, 0x0014
    addiu   s2, s2, 0x0001             # s2 = 00000003
    andi    s2, s2, 0x00FF             # s2 = 00000003
lbl_80B0BE60:
    slti    $at, s4, 0x0014
lbl_80B0BE64:
    beq     $at, $zero, lbl_80B0BE78
    or      s5, s4, $zero              # s5 = 00000001
    slti    $at, s2, 0x0004
    bne     $at, $zero, lbl_80B0BE80
    or      s3, s2, $zero              # s3 = 00000003
lbl_80B0BE78:
    beq     $zero, $zero, lbl_80B0BEB8
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80B0BE80:
    sll     t3, s2,  2
    subu    t3, t3, s2
    sll     t3, t3,  2
    addu    s0, t3, t4
    lwc1    $f10, 0x0000(s0)           # 80B18224
    lwc1    $f8, 0x02D0($sp)
    lwc1    $f4, 0x0004(s0)            # 80B18228
    lwc1    $f6, 0x02D4($sp)
    sub.s   $f20, $f10, $f8
    lwc1    $f8, 0x02D8($sp)
    lwc1    $f10, 0x0008(s0)           # 80B1822C
    sub.s   $f24, $f4, $f6
    beq     $zero, $zero, lbl_80B0BCD0
    sub.s   $f22, $f10, $f8
lbl_80B0BEB8:
    lui     v0, %hi(var_80B18260)      # v0 = 80B20000
    addiu   v0, v0, %lo(var_80B18260)  # v0 = 80B18260
    lw      t7, 0x0000(v0)             # 80B18260
    lui     t5, %hi(var_80B1826C)      # t5 = 80B20000
    addiu   t5, t5, %lo(var_80B1826C)  # t5 = 80B1826C
    sw      t7, 0x0000(t5)             # 80B1826C
    lw      t6, 0x0004(v0)             # 80B18264
    lui     v1, %hi(var_80B18254)      # v1 = 80B20000
    addiu   v1, v1, %lo(var_80B18254)  # v1 = 80B18254
    sw      t6, 0x0004(t5)             # 80B18270
    lw      t7, 0x0008(v0)             # 80B18268
    lui     s0, %hi(var_80B18248)      # s0 = 80B20000
    addiu   s0, s0, %lo(var_80B18248)  # s0 = 80B18248
    sw      t7, 0x0008(t5)             # 80B18274
    lw      t9, 0x0000(v1)             # 80B18254
    lw      t3, 0x02E4($sp)
    addiu   t6, $sp, 0x02D0            # t6 = FFFFFFF0
    sw      t9, 0x0000(v0)             # 80B18260
    lw      t8, 0x0004(v1)             # 80B18258
    or      s4, $zero, $zero           # s4 = 00000000
    sw      t8, 0x0004(v0)             # 80B18264
    lw      t9, 0x0008(v1)             # 80B1825C
    sw      t9, 0x0008(v0)             # 80B18268
    lw      t2, 0x0000(s0)             # 80B18248
    sw      t2, 0x0000(v1)             # 80B18254
    lw      t1, 0x0004(s0)             # 80B1824C
    sw      t1, 0x0004(v1)             # 80B18258
    lw      t2, 0x0008(s0)             # 80B18250
    sw      t2, 0x0008(v1)             # 80B1825C
    lw      t5, 0x0000(t3)             # 00000000
    sw      t5, 0x0000(s0)             # 80B18248
    lw      t4, 0x0004(t3)             # 00000004
    lw      t8, 0x0000(s0)             # 80B18248
    sw      t4, 0x0004(s0)             # 80B1824C
    lw      t5, 0x0008(t3)             # 00000008
    sw      t5, 0x0008(s0)             # 80B18250
    sw      t8, 0x0000(t6)             # FFFFFFF0
    lw      t7, 0x0004(s0)             # 80B1824C
    sw      t7, 0x0004(t6)             # FFFFFFF4
    lw      t8, 0x0008(s0)             # 80B18250
    sw      t8, 0x0008(t6)             # FFFFFFF8
    lwc1    $f6, 0x02D0($sp)
    lwc1    $f4, 0x000C(s0)            # 80B18254
    lwc1    $f8, 0x02D4($sp)
    lwc1    $f10, 0x0010(s0)           # 80B18258
    sub.s   $f20, $f4, $f6
    lwc1    $f6, 0x02D8($sp)
    lwc1    $f4, 0x0014(s0)            # 80B1825C
    sub.s   $f24, $f10, $f8
    mov.s   $f14, $f20
    sub.s   $f22, $f4, $f6
    jal     func_800AA4F8
    mov.s   $f12, $f22
    mul.s   $f26, $f20, $f20
    sh      v0, 0x02CA($sp)
    mov.s   $f14, $f24
    mul.s   $f28, $f22, $f22
    add.s   $f0, $f26, $f28
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    lwc1    $f20, 0x001C(s0)           # 80B18264
    lwc1    $f8, 0x0010(s0)            # 80B18258
    lwc1    $f16, 0x0018(s0)           # 80B18260
    lwc1    $f10, 0x000C(s0)           # 80B18254
    lwc1    $f4, 0x0020(s0)            # 80B18268
    sub.s   $f14, $f20, $f8
    lwc1    $f8, 0x0024(s0)            # 80B1826C
    swc1    $f4, 0x0074($sp)
    sub.s   $f2, $f16, $f10
    lwc1    $f10, 0x0014(s0)           # 80B1825C
    lwc1    $f6, 0x0074($sp)
    sub.s   $f22, $f8, $f16
    lwc1    $f4, 0x0028(s0)            # 80B18270
    mul.s   $f8, $f2, $f2
    sub.s   $f18, $f6, $f10
    lwc1    $f10, 0x002C(s0)           # 80B18274
    lui     $at, 0x3F80                # $at = 3F800000
    sh      v0, 0x02C8($sp)
    sub.s   $f30, $f4, $f20
    mul.s   $f4, $f14, $f14
    mtc1    $at, $f14                  # $f14 = 1.00
    sub.s   $f12, $f10, $f6
    mul.s   $f6, $f18, $f18
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    add.s   $f10, $f8, $f4
    add.s   $f8, $f10, $f6
    mul.s   $f10, $f24, $f24
    sqrt.s  $f0, $f8
    add.s   $f6, $f26, $f10
    swc1    $f0, 0x0088($sp)
    swc1    $f0, 0x0094($sp)
    mul.s   $f10, $f22, $f22
    add.s   $f8, $f6, $f28
    mul.s   $f6, $f30, $f30
    nop
    mul.s   $f4, $f12, $f12
    sqrt.s  $f0, $f8
    add.s   $f8, $f10, $f6
    swc1    $f0, 0x0084($sp)
    swc1    $f0, 0x0098($sp)
    lwc1    $f10, 0x0098($sp)
    add.s   $f0, $f8, $f4
    lwc1    $f6, 0x0094($sp)
    sqrt.s  $f0, $f0
    add.s   $f8, $f10, $f6
    add.s   $f12, $f0, $f8
    lwc1    $f0, 0x0084($sp)
    c.le.s  $f12, $f14
    mul.s   $f30, $f0, $f2
    lwc1    $f0, 0x0088($sp)
    bc1f    lbl_80B0C080
    nop
    mov.s   $f12, $f14
lbl_80B0C080:
    mul.s   $f4, $f0, $f2
    lui     t9, %hi(var_80B18254)      # t9 = 80B20000
    addiu   s0, t9, %lo(var_80B18254)  # s0 = 80B18254
    lwc1    $f8, 0x02D0($sp)
    lui     $at, %hi(var_80B15AE4)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15AE4)($at)
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    swc1    $f4, 0x0294($sp)
    lwc1    $f6, 0x0000(s0)            # 80B18254
    mul.s   $f28, $f12, $f10
    lwc1    $f10, 0x02D4($sp)
    sub.s   $f20, $f6, $f8
    lwc1    $f8, 0x02D8($sp)
    lwc1    $f6, 0x0008(s0)            # 80B1825C
    lwc1    $f4, 0x0004(s0)            # 80B18258
    sub.s   $f22, $f6, $f8
    sub.s   $f24, $f4, $f10
lbl_80B0C0C4:
    mov.s   $f12, $f22
    jal     func_800AA4F8
    mov.s   $f14, $f20
    mul.s   $f4, $f20, $f20
    sll     s1, v0, 16
    sra     s1, s1, 16
    mul.s   $f10, $f22, $f22
    mov.s   $f14, $f24
    add.s   $f0, $f4, $f10
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x02C8            # a0 = FFFFFFE8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    sll     a1, s1, 16
    sra     a1, a1, 16
    addiu   a0, $sp, 0x02CA            # a0 = FFFFFFEA
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064624
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    jal     func_80063684              # coss?
    lh      a0, 0x02C8($sp)
    sll     t1, s4,  2
    addiu   t3, $sp, 0x02D0            # t3 = FFFFFFF0
    lw      t5, 0x0000(t3)             # FFFFFFF0
    subu    t1, t1, s4
    sll     t1, t1,  2
    addu    t2, s8, t1
    sw      t5, 0x0000(t2)             # 00000000
    lw      t4, 0x0004(t3)             # FFFFFFF4
    mul.s   $f26, $f0, $f28
    sw      t4, 0x0004(t2)             # 00000004
    lw      t5, 0x0008(t3)             # FFFFFFF8
    sw      t5, 0x0008(t2)             # 00000008
    jal     func_800636C4              # sins?
    lh      a0, 0x02CA($sp)
    mul.s   $f8, $f26, $f0
    lwc1    $f6, 0x02D0($sp)
    lh      a0, 0x02C8($sp)
    add.s   $f4, $f6, $f8
    jal     func_800636C4              # sins?
    swc1    $f4, 0x02D0($sp)
    mul.s   $f6, $f28, $f0
    lwc1    $f10, 0x02D4($sp)
    lh      a0, 0x02CA($sp)
    add.s   $f8, $f10, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x02D4($sp)
    mul.s   $f10, $f26, $f0
    lwc1    $f4, 0x02D8($sp)
    lwc1    $f8, 0x0000(s0)            # 80B18254
    lui     t7, %hi(var_80B18248)      # t7 = 80B20000
    slti    $at, s3, 0x0003
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   t7, t7, %lo(var_80B18248)  # t7 = 80B18248
    add.s   $f6, $f4, $f10
    lwc1    $f4, 0x02D0($sp)
    lwc1    $f10, 0x0004(s0)           # 80B18258
    andi    s4, s4, 0x00FF             # s4 = 00000001
    sub.s   $f20, $f8, $f4
    lwc1    $f8, 0x02D4($sp)
    lwc1    $f4, 0x0008(s0)            # 80B1825C
    swc1    $f6, 0x02D8($sp)
    sub.s   $f24, $f10, $f8
    beq     $at, $zero, lbl_80B0C214
    sub.s   $f22, $f4, $f6
    mul.s   $f10, $f20, $f20
    nop
    mul.s   $f8, $f24, $f24
    add.s   $f4, $f10, $f8
    mul.s   $f6, $f22, $f22
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f30
    nop
    bc1f    lbl_80B0C254
    nop
    addiu   s2, s2, 0x0001             # s2 = 00000002
    lwc1    $f30, 0x0294($sp)
    beq     $zero, $zero, lbl_80B0C254
    andi    s2, s2, 0x00FF             # s2 = 00000002
lbl_80B0C214:
    mul.s   $f10, $f20, $f20
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f8, $f24, $f24
    add.s   $f4, $f10, $f8
    mul.s   $f6, $f22, $f22
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    add.s   $f8, $f28, $f10
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80B0C258
    slti    $at, s4, 0x0014
    addiu   s2, s2, 0x0001             # s2 = 00000003
    andi    s2, s2, 0x00FF             # s2 = 00000003
lbl_80B0C254:
    slti    $at, s4, 0x0014
lbl_80B0C258:
    beq     $at, $zero, lbl_80B0C2A4
    or      a2, s4, $zero              # a2 = 00000001
    slti    $at, s2, 0x0004
    beq     $at, $zero, lbl_80B0C2A4
    or      s3, s2, $zero              # s3 = 00000003
    sll     t6, s2,  2
    subu    t6, t6, s2
    sll     t6, t6,  2
    addu    s0, t6, t7
    lwc1    $f4, 0x0000(s0)            # 80B18254
    lwc1    $f6, 0x02D0($sp)
    lwc1    $f10, 0x0004(s0)           # 80B18258
    lwc1    $f8, 0x02D4($sp)
    sub.s   $f20, $f4, $f6
    lwc1    $f6, 0x02D8($sp)
    lwc1    $f4, 0x0008(s0)            # 80B1825C
    sub.s   $f24, $f10, $f8
    beq     $zero, $zero, lbl_80B0C0C4
    sub.s   $f22, $f4, $f6
lbl_80B0C2A4:
    lui     v1, %hi(var_80B10B10)      # v1 = 80B10000
    addiu   v1, v1, %lo(var_80B10B10)  # v1 = 80B10B10
    sll     t8, v1,  4
    srl     t9, t8, 28
    sll     t1, t9,  2
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    lui     t0, %hi(var_80B0F240)      # t0 = 80B10000
    lui     a3, %hi(var_80B0F234)      # a3 = 80B10000
    addu    a1, t2, t3
    addu    a1, a1, $at
    addiu   a3, a3, %lo(var_80B0F234)  # a3 = 80B0F234
    addiu   t0, t0, %lo(var_80B0F240)  # t0 = 80B0F240
    or      v0, $zero, $zero           # v0 = 00000000
    subu    t4, s5, v0
lbl_80B0C2F4:
    blezl   t4, lbl_80B0C384
    subu    t6, a2, v0
    multu   v0, s7
    sll     t5, s5,  2
    subu    t5, t5, s5
    sll     t5, t5,  2
    addu    t6, s6, t5
    addu    v1, a3, v0
    lbu     t2, 0x0000(v1)             # 80B10B10
    sll     t3, t2,  4
    mflo    t7
    subu    t8, $zero, t7
    addu    a0, t6, t8
    lwc1    $f10, -0x000C(a0)          # FFFFFFF4
    addu    t4, a1, t3
    trunc.w.s $f8, $f10
    mfc1    t1, $f8
    nop
    sh      t1, 0x0000(t4)             # 00000000
    lwc1    $f4, -0x0008(a0)           # FFFFFFF8
    lbu     t6, 0x0000(v1)             # 80B10B10
    trunc.w.s $f6, $f4
    sll     t8, t6,  4
    addu    t9, a1, t8
    mfc1    t7, $f6
    nop
    sh      t7, 0x0002(t9)             # 00000002
    lwc1    $f10, -0x0004(a0)          # FFFFFFFC
    lbu     t1, 0x0000(v1)             # 80B10B10
    trunc.w.s $f8, $f10
    sll     t4, t1,  4
    addu    t5, a1, t4
    mfc1    t3, $f8
    nop
    sh      t3, 0x0004(t5)             # 00000004
    subu    t6, a2, v0
lbl_80B0C384:
    blezl   t6, lbl_80B0C414
    addiu   v0, v0, 0x0001             # v0 = 00000001
    multu   v0, s7
    sll     t8, a2,  2
    subu    t8, t8, a2
    sll     t8, t8,  2
    addu    t7, s8, t8
    addu    v1, t0, v0
    lbu     t3, 0x0000(v1)             # 80B10B10
    sll     t5, t3,  4
    mflo    t9
    subu    t2, $zero, t9
    addu    a0, t7, t2
    lwc1    $f4, -0x000C(a0)           # FFFFFFF4
    addu    t6, a1, t5
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x0000(t6)             # 00000000
    lwc1    $f10, -0x0008(a0)          # FFFFFFF8
    lbu     t7, 0x0000(v1)             # 80B10B10
    trunc.w.s $f8, $f10
    sll     t2, t7,  4
    addu    t1, a1, t2
    mfc1    t9, $f8
    nop
    sh      t9, 0x0002(t1)             # 00000002
    lwc1    $f4, -0x0004(a0)           # FFFFFFFC
    lbu     t4, 0x0000(v1)             # 80B10B10
    trunc.w.s $f6, $f4
    sll     t6, t4,  4
    addu    t8, a1, t6
    mfc1    t5, $f6
    nop
    sh      t5, 0x0004(t8)             # 00000004
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_80B0C414:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000B
    bnel    $at, $zero, lbl_80B0C2F4
    subu    t4, s5, v0
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x02E0           # $sp += 0x2E0


func_80B0C470:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x005C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lbu     t7, 0x0302(a2)             # 00000302
    lw      t6, 0x005C($sp)
    addiu   a0, a2, 0x01F0             # a0 = 000001F0
    beq     t7, $zero, lbl_80B0C4B0
    lw      s1, 0x0000(t6)             # 00000000
    jal     func_80B0BA1C
    addiu   a1, a2, 0x01FC             # a1 = 000001FC
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lui     $at, %hi(var_80B0F230)     # $at = 80B10000
    sh      t8, %lo(var_80B0F230)($at)
lbl_80B0C4B0:
    lui     t9, %hi(var_80B18278)      # t9 = 80B20000
    lb      t9, %lo(var_80B18278)(t9)
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    slti    $at, t9, 0x0004
    bne     $at, $zero, lbl_80B0C5EC
    or      a1, $zero, $zero           # a1 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t3, 0x005C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t7, 0x0001                 # t7 = 00010000
    lw      a0, 0x0000(t3)             # 00000000
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addu    t7, t7, t3
    lw      t7, 0x1DE4(t7)             # 00011DE4
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sll     t8, t7,  3
    addu    t8, t8, t7
    sll     t8, t8,  1
    sw      t8, 0x001C($sp)
    sw      t9, 0x0024($sp)
    sw      t1, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x004C($sp)
    lw      t0, 0x004C($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xE700                 # t4 = E7000000
    mfc1    a2, $f12
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     t3, %hi(var_80B0F230)      # t3 = 80B10000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lh      t3, %lo(var_80B0F230)(t3)
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    andi    t7, t3, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFFFF00
    sw      t8, 0x0004(s0)             # 00000004
    jal     func_800AA7F4
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x005C($sp)
    lw      a0, 0x0000(t2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0040($sp)
    lw      a1, 0x0040($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, %hi(var_80B10C70)      # t6 = 80B10000
    addiu   t6, t6, %lo(var_80B10C70)  # t6 = 80B10C70
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
lbl_80B0C5EC:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80B0C600:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    lw      t6, 0x0060($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t7, 0x0064($sp)
    lwc1    $f6, 0x0314(t6)            # 00000314
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B0C7EC
    lw      $ra, 0x003C($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t7)             # 00000000
    lw      t3, 0x0064($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t5, 0xDB06                 # t5 = DB060000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    lui     t0, 0x0001                 # t0 = 00010000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    addu    t0, t0, t3
    sw      t5, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t0)             # 00011DE4
    lw      a0, 0x0000(t3)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    subu    t1, $zero, t0
    sll     t9, t1,  1
    sll     t4, t1,  3
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      t6, 0x0028($sp)
    sw      t4, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t5, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x004C($sp)
    jal     func_8007EB84
    or      a2, t0, $zero              # a2 = 00010000
    lw      t2, 0x004C($sp)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f12                  # $f12 = -200.00
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    lui     $at, 0xFFC8                # $at = FFC80000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0060($sp)
    mfc1    a2, $f12
    lui     t5, 0xFB00                 # t5 = FB000000
    lwc1    $f8, 0x0314(t9)            # 00000314
    or      a3, $zero, $zero           # a3 = 00000000
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    andi    t8, t7, 0x00FF             # t8 = 00000008
    or      t9, t8, $at                # t9 = FFC80008
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFF00                 # t6 = FF000000
    ori     t6, t6, 0x0080             # t6 = FF000080
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lui     $at, %hi(var_80B15AE8)     # $at = 80B10000
    jal     func_800AA7F4
    lwc1    $f14, %lo(var_80B15AE8)($at)
    lui     $at, %hi(var_80B15AEC)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15AEC)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0064($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a2, 0x0040($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     a1, %hi(var_80B132B0)      # a1 = 80B10000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, %lo(var_80B132B0)  # a1 = 80B132B0
    sll     t6, a1,  4
    srl     t7, t6, 28
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0000(v1)             # 00000000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t9, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
lbl_80B0C7EC:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80B0C7FC:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s4, 0x0058($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x00B4($sp)
    lw      t6, 0x00B4($sp)
    jal     func_800AA6EC
    lw      s3, 0x0000(t6)             # 00000000
    lh      v0, 0x0320(s4)             # 00000320
    lui     a1, 0x3E05                 # a1 = 3E050000
    ori     a1, a1, 0x1EB8             # a1 = 3E051EB8
    bne     v0, $zero, lbl_80B0C874
    addiu   a0, s4, 0x031C             # a0 = 0000031C
    lh      t7, 0x0318(s4)             # 00000318
    beq     t7, $zero, lbl_80B0CAA0
    nop
lbl_80B0C874:
    beq     v0, $zero, lbl_80B0C888
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80B0C8A4
    sh      t8, 0x0320(s4)             # 00000320
lbl_80B0C888:
    lh      t9, 0x0318(s4)             # 00000318
    addiu   t0, t9, 0xFFBA             # t0 = FFFFFFBA
    sh      t0, 0x0318(s4)             # 00000318
    lh      t1, 0x0318(s4)             # 00000318
    bgezl   t1, lbl_80B0C8A8
    lui     a3, 0x3D85                 # a3 = 3D850000
    sh      $zero, 0x0318(s4)          # 00000318
lbl_80B0C8A4:
    lui     a3, 0x3D85                 # a3 = 3D850000
lbl_80B0C8A8:
    jal     func_80064280
    ori     a3, a3, 0x1EB8             # a3 = 3D851EB8
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lh      t6, 0x0318(s4)             # 00000318
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t8, t7, $at                # t8 = FFFFFF00
    sw      t8, 0x0004(s0)             # 00000004
    lh      a3, 0x0330(s4)             # 00000330
    addiu   t9, $zero, 0x71AC          # t9 = 000071AC
    addiu   a2, $zero, 0x263A          # a2 = 0000263A
    subu    a1, t9, a3
    jal     func_80B05470
    addiu   a0, a3, 0x0001             # a0 = 00000001
    jal     func_80B05490
    nop
    lui     $at, %hi(var_80B15AF0)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15AF0)($at)
    lui     $at, 0x00FF                # $at = 00FF0000
    lui     v0, %hi(var_80B12888)      # v0 = 80B10000
    addiu   v0, v0, %lo(var_80B12888)  # v0 = 80B12888
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, v0, $at
    mul.s   $f2, $f0, $f4
    lui     $at, %hi(var_80B15AF4)     # $at = 80B10000
    lwc1    $f30, %lo(var_80B15AF4)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    lui     $at, 0xC348                # $at = C3480000
    sll     t0, v0,  4
    srl     t1, t0, 28
    mtc1    $at, $f26                  # $f26 = -200.00
    lui     t3, 0x8012                 # t3 = 80120000
    addiu   t3, t3, 0x0C38             # t3 = 80120C38
    lui     $at, %hi(var_80B15AF8)     # $at = 80B10000
    sll     t2, t1,  2
    lui     s5, 0xDA38                 # s5 = DA380000
    ori     s5, s5, 0x0003             # s5 = DA380003
    addu    s8, t2, t3
    lwc1    $f24, %lo(var_80B15AF8)($at)
    swc1    $f2, 0x009C($sp)
    sw      t4, 0x0074($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s7, 0x8000                 # s7 = 80000000
    lui     s6, 0xDE00                 # s6 = DE000000
    mtc1    s2, $f6                    # $f6 = 0.00
lbl_80B0C988:
    lwc1    $f2, 0x009C($sp)
    cvt.s.w $f8, $f6
    mul.s   $f10, $f8, $f30
    add.s   $f20, $f10, $f2
    jal     func_800CF470
    mov.s   $f12, $f20
    mul.s   $f22, $f0, $f24
    jal     func_800D2CD0
    mov.s   $f12, $f20
    mul.s   $f16, $f0, $f24
    lui     $at, %hi(var_80B15AFC)     # $at = 80B10000
    lwc1    $f14, %lo(var_80B15AFC)($at)
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f26, $f22
    add.s   $f18, $f26, $f16
    mfc1    a2, $f18
    jal     func_800AA7F4
    nop
    lwc1    $f12, 0x031C(s4)           # 0000031C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    mov.s   $f12, $f20
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_80B05490
    nop
    sub.s   $f4, $f0, $f28
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, %hi(var_80B15B00)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15B00)($at)
    mul.s   $f8, $f4, $f6
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    jal     func_80B05490
    nop
    c.lt.s  $f0, $f28
    lui     $at, %hi(var_80B15B04)     # $at = 80B10000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bc1fl   lbl_80B0CA48
    lw      s1, 0x02D0(s3)             # 000002D0
    jal     func_800AAB94
    lwc1    $f12, %lo(var_80B15B04)($at)
    lw      s1, 0x02D0(s3)             # 000002D0
lbl_80B0CA48:
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      s5, 0x0000(s1)             # 00000000
    lw      t6, 0x00B4($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t6)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      s6, 0x0000(s0)             # 00000000
    lw      t9, 0x0074($sp)
    lw      t8, 0x0000(s8)             # 00000000
    sra     s2, s2, 16
    slti    $at, s2, 0x0005
    addu    t0, t8, t9
    addu    t1, t0, s7
    sw      t1, 0x0004(s0)             # 00000004
    bnel    $at, $zero, lbl_80B0C988
    mtc1    s2, $f6                    # $f6 = 0.00
lbl_80B0CAA0:
    jal     func_800AA724
    nop
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_80B0CAF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0024($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x01A4(s1)            # 000001A4
    lw      t6, 0x0024($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B0CC6C
    lw      $ra, 0x001C($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t6)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x01A4(s1)            # 000001A4
    lui     t8, 0xFB00                 # t8 = FB000000
    trunc.w.s $f10, $f8
    mfc1    t4, $f10
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t6, t5, $at                # t6 = FFFFAA00
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFFC8                 # t9 = FFC80000
    ori     t9, t9, 0x0080             # t9 = FFC80080
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x01A8(s1)           # 000001A8
    lwc1    $f14, 0x01AC(s1)           # 000001AC
    jal     func_800AA7F4
    lw      a2, 0x01B0(s1)             # 000001B0
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, a0, $at
    lui     $at, %hi(var_80B15B08)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B08)($at)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80B15B0C)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B0C)($at)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(s1)             # 00000000
    lw      t2, 0x0024($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a1, %hi(var_80B11DC8)      # a1 = 80B10000
    addiu   a1, a1, %lo(var_80B11DC8)  # a1 = 80B11DC8
    sll     t5, a1,  4
    srl     t6, t5, 28
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sll     t7, t6,  2
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t4, 0x0000(v1)             # 00000000
    lw      t8, 0x0C38(t8)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t9, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t8, t9
    addu    t1, t0, $at
    sw      t1, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x001C($sp)
lbl_80B0CC6C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B0CC7C:
    sw      a3, 0x000C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    sw      a2, 0x0008($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80B0CCBC
    lw      v1, 0x0000(a0)             # 00000000
    lw      v0, 0x0014($sp)
    lw      a0, 0x0010($sp)
    lh      t7, 0x030A(v0)             # 0000030A
    lh      t6, 0x0002(a0)             # 00000002
    lh      t9, 0x0004(a0)             # 00000004
    addu    t8, t6, t7
    sh      t8, 0x0002(a0)             # 00000002
    lh      t1, 0x030C(v0)             # 0000030C
    addu    t2, t9, t1
    sh      t2, 0x0004(a0)             # 00000004
lbl_80B0CCBC:
    slti    $at, a1, 0x002A
    lw      v0, 0x0014($sp)
    bne     $at, $zero, lbl_80B0CD80
    lw      a0, 0x0010($sp)
    sll     t3, a1,  1
    addu    a2, v0, t3
    lh      t5, 0x02E4(a2)             # 000002E4
    lh      t4, 0x0000(a0)             # 00000000
    lh      t7, 0x0336(v0)             # 00000336
    lh      t9, 0x0002(a0)             # 00000002
    addu    t6, t4, t5
    addu    t8, t6, t7
    sh      t8, 0x0000(a0)             # 00000000
    lh      t1, 0x02EE(a2)             # 000002EE
    lui     t6, 0xFB00                 # t6 = FB000000
    addu    t2, t9, t1
    sh      t2, 0x0002(a0)             # 00000002
    lh      t3, 0x0332(v0)             # 00000332
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80B0CD38
    lw      a0, 0x02C0(v1)             # 000002C0
    lw      a0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xFF00                 # t7 = FF000000
    ori     t7, t7, 0x00FF             # t7 = FF0000FF
    addiu   t5, a0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(v1)             # 000002C0
    sw      t7, 0x0004(a0)             # 00000004
    sw      t6, 0x0000(a0)             # 00000000
    beq     $zero, $zero, lbl_80B0CD84
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lw      a0, 0x02C0(v1)             # 000002C0
lbl_80B0CD38:
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, a0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(a0)             # 00000000
    lwc1    $f4, 0x01A0(v0)            # 000001A0
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    sll     t0, t0, 16
    sra     t0, t0, 16
    andi    t0, t0, 0x00FF             # t0 = 00000000
    sll     t2, t0,  8
    sll     t3, t0, 24
    or      t4, t2, t3                 # t4 = 00000000
    sll     t5, t0, 16
    or      t6, t4, t5                 # t6 = 00000008
    ori     t7, t6, 0x00FF             # t7 = 000000FF
    sw      t7, 0x0004(a0)             # 00000004
lbl_80B0CD80:
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80B0CD84:
    beq     a1, $at, lbl_80B0CDA8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a1, $at, lbl_80B0CDA8
    addiu   $at, $zero, 0x0021         # $at = 00000021
    beq     a1, $at, lbl_80B0CDA8
    addiu   $at, $zero, 0x0022         # $at = 00000022
    bne     a1, $at, lbl_80B0CDAC
    nop
lbl_80B0CDA8:
    sw      $zero, 0x0000(a3)          # 00000000
lbl_80B0CDAC:
    jr      $ra
    nop


func_80B0CDB4:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    lw      t6, 0x0050($sp)
    lui     $at, %hi(var_80B15B10)     # $at = 80B10000
    lwc1    $f4, %lo(var_80B15B10)($at)
    lw      t8, 0x0054($sp)
    lw      t7, 0x0000(t6)             # 00000000
    lui     $at, %hi(var_80B0F2D8)     # $at = 80B10000
    lui     v0, %hi(var_80B0F27C)      # v0 = 80B10000
    swc1    $f4, %lo(var_80B0F2D8)($at)
    lui     $at, %hi(var_80B15B14)     # $at = 80B10000
    addu    v0, v0, t8
    lwc1    $f6, %lo(var_80B15B14)($at)
    lb      v0, %lo(var_80B0F27C)(v0)
    lui     $at, %hi(var_80B0F2E4)     # $at = 80B10000
    sw      t7, 0x0038($sp)
    bltz    v0, lbl_80B0CE34
    swc1    $f6, %lo(var_80B0F2E4)($at)
    lw      s0, 0x0060($sp)
    sll     t9, v0,  2
    subu    t9, t9, v0
    sll     t9, t9,  2
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addu    a1, s0, t9
    addiu   a1, a1, 0x0224             # a1 = 00000224
    jal     func_800AB958
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
lbl_80B0CE34:
    lw      t0, 0x0054($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      s0, 0x0060($sp)
    bne     t0, $at, lbl_80B0CE60
    lw      t1, 0x0054($sp)
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
    jal     func_800AB958
    addiu   a1, s0, 0x01A8             # a1 = 000001A8
    beq     $zero, $zero, lbl_80B0CF0C
    lw      t6, 0x0054($sp)
lbl_80B0CE60:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t1, $at, lbl_80B0CE84
    lw      t2, 0x0054($sp)
    lui     a0, %hi(var_80B0F2B8)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2B8)  # a0 = 80B0F2B8
    jal     func_800AB958
    addiu   a1, s0, 0x01E4             # a1 = 000001E4
    beq     $zero, $zero, lbl_80B0CF0C
    lw      t6, 0x0054($sp)
lbl_80B0CE84:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     t2, $at, lbl_80B0CEA8
    lw      t3, 0x0054($sp)
    lui     a0, %hi(var_80B0F2C4)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2C4)  # a0 = 80B0F2C4
    jal     func_800AB958
    addiu   a1, s0, 0x01D8             # a1 = 000001D8
    beq     $zero, $zero, lbl_80B0CF0C
    lw      t6, 0x0054($sp)
lbl_80B0CEA8:
    addiu   $at, $zero, 0x0026         # $at = 00000026
    bne     t3, $at, lbl_80B0CECC
    lw      t4, 0x0054($sp)
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
    jal     func_800AB958
    addiu   a1, s0, 0x01CC             # a1 = 000001CC
    beq     $zero, $zero, lbl_80B0CF0C
    lw      t6, 0x0054($sp)
lbl_80B0CECC:
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bne     t4, $at, lbl_80B0CEF0
    lw      t5, 0x0054($sp)
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
    jal     func_800AB958
    addiu   a1, s0, 0x01C0             # a1 = 000001C0
    beq     $zero, $zero, lbl_80B0CF0C
    lw      t6, 0x0054($sp)
lbl_80B0CEF0:
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bne     t5, $at, lbl_80B0CF08
    lui     a0, %hi(var_80B0F2E8)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2E8)  # a0 = 80B0F2E8
    jal     func_800AB958
    addiu   a1, s0, 0x01B4             # a1 = 000001B4
lbl_80B0CF08:
    lw      t6, 0x0054($sp)
lbl_80B0CF0C:
    lui     t7, %hi(var_80B0F24C)      # t7 = 80B10000
    addiu   t7, t7, %lo(var_80B0F24C)  # t7 = 80B0F24C
    addu    v0, t6, t7
    lb      a3, 0x0000(v0)             # 00000000
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
    bltz    a3, lbl_80B0CF4C
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFEC
    sw      v0, 0x0020($sp)
    jal     func_800AB958
    sb      a3, 0x004E($sp)
    lb      a0, 0x004E($sp)
    addiu   a1, s0, 0x0414             # a1 = 00000414
    jal     func_80B055B8
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFEC
    lw      v0, 0x0020($sp)
lbl_80B0CF4C:
    lui     t8, %hi(var_80B0F253)      # t8 = 80B10000
    addiu   t8, t8, %lo(var_80B0F253)  # t8 = 80B0F253
    beq     v0, t8, lbl_80B0CF68
    lui     t9, %hi(var_80B0F259)      # t9 = 80B10000
    addiu   t9, t9, %lo(var_80B0F259)  # t9 = 80B0F259
    bne     v0, t9, lbl_80B0CFEC
    nop
lbl_80B0CF68:
    jal     func_800AA6EC
    sw      v0, 0x0020($sp)
    lwc1    $f12, 0x0214(s0)           # 00000214
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t0, 0x0038($sp)
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0050($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t4, 0x0038($sp)
    lw      v1, 0x02C0(t4)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t4)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0058($sp)
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    beq     $zero, $zero, lbl_80B0D088
    lw      v0, 0x0020($sp)
lbl_80B0CFEC:
    lui     t9, %hi(var_80B0F26D)      # t9 = 80B10000
    addiu   t9, t9, %lo(var_80B0F26D)  # t9 = 80B0F26D
    beq     v0, t9, lbl_80B0D008
    lui     t1, %hi(var_80B0F26E)      # t1 = 80B10000
    addiu   t1, t1, %lo(var_80B0F26E)  # t1 = 80B0F26E
    bnel    v0, t1, lbl_80B0D08C
    lw      t1, 0x0058($sp)
lbl_80B0D008:
    jal     func_800AA6EC
    sw      v0, 0x0020($sp)
    lwc1    $f12, 0x0218(s0)           # 00000218
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t0, 0x0038($sp)
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    lw      v1, 0x02C0(t0)             # 000002C0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t5, 0x0050($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t4, 0x0038($sp)
    lw      v1, 0x02C0(t4)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t4)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0058($sp)
    lw      t9, 0x0000(t8)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      v0, 0x0020($sp)
lbl_80B0D088:
    lw      t1, 0x0058($sp)
lbl_80B0D08C:
    lui     t0, %hi(var_80B0F253)      # t0 = 80B10000
    addiu   t0, t0, %lo(var_80B0F253)  # t0 = 80B0F253
    lw      t2, 0x0000(t1)             # 00000000
    beql    t2, $zero, lbl_80B0D168
    lw      $ra, 0x001C($sp)
    bne     v0, t0, lbl_80B0D104
    lui     t5, %hi(var_80B0F259)      # t5 = 80B10000
    lbu     t3, 0x0302(s0)             # 00000302
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, %hi(var_80B0F2AC)      # a0 = 80B10000
    bne     t3, $at, lbl_80B0D104
    addiu   a0, a0, %lo(var_80B0F2AC)  # a0 = 80B0F2AC
    addiu   a2, s0, 0x0208             # a2 = 00000208
    or      a1, a2, $zero              # a1 = 00000208
    jal     func_800AB958
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80B055B8
    addiu   a1, s0, 0x0434             # a1 = 00000434
    lui     a0, %hi(var_80B0F2D0)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2D0)  # a0 = 80B0F2D0
    jal     func_800AB958
    addiu   a1, s0, 0x01F0             # a1 = 000001F0
    lui     a0, %hi(var_80B0F2DC)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2DC)  # a0 = 80B0F2DC
    jal     func_800AB958
    addiu   a1, s0, 0x01FC             # a1 = 000001FC
    beq     $zero, $zero, lbl_80B0D168
    lw      $ra, 0x001C($sp)
lbl_80B0D104:
    addiu   t5, t5, %lo(var_80B0F259)  # t5 = FFFFF259
    bnel    v0, t5, lbl_80B0D168
    lw      $ra, 0x001C($sp)
    lbu     t6, 0x0302(s0)             # 00000302
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, %hi(var_80B0F2AC)      # a0 = 80B10000
    bne     t6, $at, lbl_80B0D164
    addiu   a0, a0, %lo(var_80B0F2AC)  # a0 = 80B0F2AC
    addiu   a2, s0, 0x0208             # a2 = 00000208
    or      a1, a2, $zero              # a1 = 00000208
    jal     func_800AB958
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80B055B8
    addiu   a1, s0, 0x0434             # a1 = 00000434
    lui     a0, %hi(var_80B0F2D0)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2D0)  # a0 = 80B0F2D0
    jal     func_800AB958
    addiu   a1, s0, 0x01F0             # a1 = 000001F0
    lui     a0, %hi(var_80B0F2DC)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0F2DC)  # a0 = 80B0F2DC
    jal     func_800AB958
    addiu   a1, s0, 0x01FC             # a1 = 000001FC
lbl_80B0D164:
    lw      $ra, 0x001C($sp)
lbl_80B0D168:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80B0D178:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sdc1    $f20, 0x0018($sp)
    sw      s4, 0x0030($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    lwc1    $f4, 0x02FC(s4)            # 000002FC
    lw      a2, 0x0000(a1)             # 00000000
    c.lt.s  $f20, $f4
    or      s3, a2, $zero              # s3 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    bc1fl   lbl_80B0D34C
    lw      $ra, 0x0044($sp)
    jal     func_8007E2C0
    sw      a1, 0x004C($sp)
    lwc1    $f6, 0x0370(s4)            # 00000370
    lui     $at, 0x0001                # $at = 00010000
    lui     s7, 0xDE00                 # s7 = DE000000
    c.lt.s  $f20, $f6
    lui     t6, 0xFB00                 # t6 = FB000000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    or      s2, $zero, $zero           # s2 = 00000000
    bc1f    lbl_80B0D238
    lui     s6, %hi(var_80B10468)      # s6 = 80B10000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, $zero, 0xAAFF          # t8 = FFFFAAFF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    lui     t1, 0xFFC8                 # t1 = FFC80000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_80B0D270
    nop
lbl_80B0D238:
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0x64FF                 # t7 = 64FF0000
    ori     t7, t7, 0xFF00             # t7 = 64FFFF00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
lbl_80B0D270:
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, %hi(var_80B103F8)      # t9 = 80B10000
    addiu   t9, t9, %lo(var_80B103F8)  # t9 = 80B103F8
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    lw      s5, 0x004C($sp)
    addiu   s6, s6, %lo(var_80B10468)  # s6 = 80B10468
    addiu   s8, $zero, 0x000C          # s8 = 0000000C
    addu    s5, s5, $at
    lui     $at, %hi(var_80B15B18)     # $at = 80B10000
    lwc1    $f20, %lo(var_80B15B18)($at)
lbl_80B0D2A4:
    multu   s2, s8
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t0
    addu    v0, s4, t0
    lwc1    $f12, 0x0224(v0)           # 00000224
    lwc1    $f14, 0x0228(v0)           # 00000228
    jal     func_800AA7F4
    lw      a2, 0x022C(v0)             # 0000022C
    jal     func_800ABE54
    or      a0, s5, $zero              # a0 = 00000000
    lwc1    $f12, 0x02FC(s4)           # 000002FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    jal     func_80026D90
    mov.s   $f12, $f20
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s1, 0x02D0(s3)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      t2, 0x0000(s1)             # 00000000
    lw      t3, 0x004C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bne     $at, $zero, lbl_80B0D2A4
    nop
    lw      $ra, 0x0044($sp)
lbl_80B0D34C:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80B0D37C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    lw      t6, 0x0058($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a2, 0x0000(s2)             # 00000000
    lwc1    $f6, 0x0374(t6)            # 00000374
    or      s1, a2, $zero              # s1 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B0D580
    lw      $ra, 0x0024($sp)
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, $zero, 0xFFC8          # t9 = FFFFFFC8
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    lui     t3, 0xFFC8                 # t3 = FFC80000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, %hi(var_80B103F8)      # t6 = 80B10000
    addiu   t6, t6, %lo(var_80B103F8)  # t6 = 80B103F8
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    lui     v0, %hi(var_80B1676C)      # v0 = 80B10000
    lw      v0, %lo(var_80B1676C)(v0)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    lwc1    $f8, 0x0028(v0)            # 80B10028
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0024(v0)           # 80B10024
    lw      a2, 0x002C(v0)             # 80B1002C
    jal     func_800AA7F4
    add.s   $f14, $f8, $f10
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s2, $at
    lw      t7, 0x0058($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0374(t7)           # 00000374
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      t8, 0x0058($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C
    lwc1    $f12, 0x0378(t8)           # 00000378
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x003C($sp)
    lw      a2, 0x003C($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    lui     a0, %hi(var_80B10468)      # a0 = 80B10000
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   a0, a0, %lo(var_80B10468)  # a0 = 80B10468
    sll     t4, a0,  4
    srl     t5, t4, 28
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    addiu   t7, t7, 0x0C38             # t7 = 80120C38
    sll     t6, t5,  2
    addu    a3, t6, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t3, 0x0000(s0)             # 00000000
    lw      t8, 0x0000(a3)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t8, t0
    addu    t1, t9, $at
    sw      t1, 0x0004(s0)             # 00000004
    lw      t2, 0x0058($sp)
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f18                  # $f18 = -2.00
    lwc1    $f16, 0x0378(t2)           # 00000380
    sw      t0, 0x0028($sp)
    sw      a3, 0x002C($sp)
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0034($sp)
    lw      a1, 0x0034($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x002C($sp)
    lw      t9, 0x0028($sp)
    lw      t8, 0x0000(t7)             # 00000000
    addu    t1, t8, t9
    addu    t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    lw      $ra, 0x0024($sp)
lbl_80B0D580:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_80B0D594:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x037C(s2)            # 0000037C
    lw      a2, 0x0000(s4)             # 00000000
    c.lt.s  $f4, $f6
    or      s3, a2, $zero              # s3 = 00000000
    bc1fl   lbl_80B0D7DC
    lw      $ra, 0x006C($sp)
    lw      t6, 0x1C44(s4)             # 00001C44
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8007E2C0
    sw      t6, 0x0070($sp)
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x037C(s2)            # 0000037C
    lui     a1, %hi(var_80B10468)      # a1 = 80B10000
    addiu   a1, a1, %lo(var_80B10468)  # a1 = 80B10468
    trunc.w.s $f10, $f8
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t9, 0xDE00                 # t9 = DE000000
    sll     t1, a1,  4
    mfc1    t2, $f10
    or      s1, $zero, $zero           # s1 = 00000000
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFFFF00
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t7, 0x00FF                 # t7 = 00FF0000
    ori     t7, t7, 0xFF00             # t7 = 00FFFF00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, %hi(var_80B103F8)      # t0 = 80B10000
    addiu   t0, t0, %lo(var_80B103F8)  # t0 = 80B103F8
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t0, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    s6, s4, $at
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     s8, a1, $at
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f30                  # $f30 = 200.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f28                  # $f28 = 350.00
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f26                  # $f26 = 900.00
    lui     $at, 0x437A                # $at = 437A0000
    lw      s5, 0x0070($sp)
    mtc1    $at, $f24                  # $f24 = 250.00
    lui     $at, 0x3F80                # $at = 3F800000
    srl     t2, t1, 28
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0x0C38             # t4 = 80120C38
    sll     t3, t2,  2
    mtc1    $at, $f22                  # $f22 = 1.00
    addu    s7, t3, t4
    addiu   s5, s5, 0x09D0             # s5 = 000009D0
    or      a0, s5, $zero              # a0 = 000009D0
lbl_80B0D6EC:
    jal     func_800AA79C
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    s1, $f16                   # $f16 = 0.00
    mov.s   $f14, $f28
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    cvt.s.w $f18, $f16
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f4, $f18, $f24
    jal     func_800AA7F4
    add.s   $f12, $f4, $f26
    slti    $at, s1, 0x0007
    beq     $at, $zero, lbl_80B0D728
    addiu   t5, s1, 0xFFF9             # t5 = FFFFFFF9
    beq     $zero, $zero, lbl_80B0D740
    mov.s   $f20, $f22
lbl_80B0D728:
    mtc1    t5, $f6                    # $f6 = NaN
    lui     $at, %hi(var_80B15B1C)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15B1C)($at)
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f10
    sub.s   $f20, $f22, $f16
lbl_80B0D740:
    jal     func_800ABE54
    or      a0, s6, $zero              # a0 = 00000000
    mul.s   $f12, $f30, $f20
    mfc1    a2, $f22
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, %hi(var_80B15B20)     # $at = 80B10000
    jal     func_80026D64
    lwc1    $f12, %lo(var_80B15B20)($at)
    mov.s   $f12, $f0
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s2, 0x02D0(s3)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0000(s7)             # 00000000
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 24
    addu    t1, t0, s8
    addu    t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    sra     s1, s1, 24
    slti    $at, s1, 0x000B
    bnel    $at, $zero, lbl_80B0D6EC
    or      a0, s5, $zero              # a0 = 000009D0
    lw      $ra, 0x006C($sp)
lbl_80B0D7DC:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80B0D820:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lui     t6, %hi(var_80B0F2F4)      # t6 = 80B10000
    addiu   t6, t6, %lo(var_80B0F2F4)  # t6 = 80B0F2F4
    addu    v0, a1, t6
    lb      v1, 0x0000(v0)             # 00000000
    lui     a0, %hi(var_80B0EF10)      # a0 = 80B10000
    addiu   a0, a0, %lo(var_80B0EF10)  # a0 = 80B0EF10
    bltz    v1, lbl_80B0D874
    lw      t7, 0x0048($sp)
    sll     t8, v1,  2
    subu    t8, t8, v1
    sll     t8, t8,  2
    addu    a1, t7, t8
    addiu   a1, a1, 0x0224             # a1 = 00000224
    jal     func_800AB958
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
lbl_80B0D874:
    lui     t9, %hi(var_80B0F2FF)      # t9 = 80B10000
    addiu   t9, t9, %lo(var_80B0F2FF)  # t9 = 80B0F2FF
    bne     v0, t9, lbl_80B0D91C
    lui     t3, %hi(var_80B0F2FE)      # t3 = 80B10000
    lw      t0, 0x0038($sp)
    lw      a2, 0x0000(t0)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a2)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0038($sp)
    lw      a0, 0x0000(t3)             # 80B10000
    sw      a2, 0x002C($sp)
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      a3, 0x0024($sp)
    lw      a2, 0x002C($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xBE90             # a1 = 0600BE90
    sll     t6, a1,  4
    srl     t7, t6, 28
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(a2)             # 000002D0
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0000(v1)             # 00000000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80B0D93C
    lw      $ra, 0x0014($sp)
lbl_80B0D91C:
    addiu   t3, t3, %lo(var_80B0F2FE)  # t3 = FFFFF2FE
    bne     v0, t3, lbl_80B0D938
    lui     a0, %hi(var_80B0F314)      # a0 = 80B10000
    lw      a1, 0x0048($sp)
    addiu   a0, a0, %lo(var_80B0F314)  # a0 = 80B0F314
    jal     func_800AB958
    addiu   a1, a1, 0x01A8             # a1 = 0600C038
lbl_80B0D938:
    lw      $ra, 0x0014($sp)
lbl_80B0D93C:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B0D948:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x0060($sp)
    sw      a1, 0x0064($sp)
    lw      t6, 0x0060($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      t7, 0x0064($sp)
    lwc1    $f6, 0x0370(t6)            # 00000370
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B0DB80
    lw      $ra, 0x003C($sp)
    jal     func_800AA6EC
    lw      s0, 0x0000(t7)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t3, 0xDB06                 # t3 = DB060000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t5, 0x0060($sp)
    lw      t4, 0x0064($sp)
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    lh      t0, 0x018C(t5)             # 0000018C
    lw      a0, 0x0000(t4)             # 00000000
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    subu    $at, $zero, t0
    sll     a2, $at,  3
    sll     t9, $at,  2
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t9, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      t2, 0x0024($sp)
    sw      t3, 0x0028($sp)
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t1, 0x004C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0060($sp)
    lui     a0, %hi(var_80B1676C)      # a0 = 80B10000
    lwc1    $f8, 0x036C(t6)            # 0000036C
    lui     t6, 0xFB00                 # t6 = FB000000
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    nop
    andi    t3, t2, 0x00FF             # t3 = 00000000
    or      t4, t3, $at                # t4 = FFFFAA00
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFFC8                 # t7 = FFC80000
    ori     t7, t7, 0x0080             # t7 = FFC80080
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      a0, %lo(var_80B1676C)(a0)
    lui     $at, 0x420C                # $at = 420C0000
    mtc1    $at, $f4                   # $f4 = 35.00
    lwc1    $f16, 0x0024(a0)           # 80B10024
    lwc1    $f10, 0x002C(a0)           # 80B1002C
    lwc1    $f18, 0x0028(a0)           # 80B10028
    add.s   $f12, $f16, $f0
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    sub.s   $f16, $f10, $f0
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f6, $f18, $f4
    mfc1    a2, $f16
    jal     func_800AA7F4
    add.s   $f14, $f6, $f8
    lui     $at, %hi(var_80B15B24)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B24)($at)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, %hi(var_80B15B28)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B28)($at)
    lw      t8, 0x0060($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mov.s   $f14, $f12
    jal     func_800AA8FC
    lw      a2, 0x0370(t8)             # 00000370
    lui     $at, %hi(var_80B15B2C)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B2C)($at)
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x0064($sp)
    lw      a0, 0x0000(t3)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      a2, 0x0040($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     a1, %hi(var_80B13D30)      # a1 = 80B10000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   a1, a1, %lo(var_80B13D30)  # a1 = 80B13D30
    sll     t6, a1,  4
    srl     t7, t6, 28
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0000(v1)             # 00000000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t9, t2
    addu    t4, t3, $at
    sw      t4, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    lw      $ra, 0x003C($sp)
lbl_80B0DB80:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80B0DB90:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x002C($sp)
    lw      a0, 0x0000(s2)             # 00000000
    lw      v0, 0x02C4(a0)             # 000002C4
    addiu   v0, v0, 0xF000             # v0 = FFFFF000
    sw      v0, 0x02C4(a0)             # 000002C4
    sw      v0, 0x0064($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lbu     v0, 0x0327(s0)             # 00000327
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B0DC08
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80B0DCC0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80B0DCC4
    or      a1, s2, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80B0DE84
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B0DC08:
    jal     func_80B05648
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xA8E0             # t0 = 0600A8E0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sll     t8, t0,  4
    srl     t9, t8, 28
    lui     t6, 0x8012                 # t6 = 80120000
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, t6, 0x0C38             # t6 = 80120C38
    sll     t5, t9,  2
    addu    t1, t5, t6
    sw      t7, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t2, t0, $at
    addu    t8, t7, t2
    addu    t9, t8, t4
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0000(t1)             # 00000000
    lui     t5, %hi(func_80B0D820)     # t5 = 80B10000
    or      a0, s2, $zero              # a0 = 00000000
    addu    t8, t7, t2
    addu    t9, t8, t4
    sw      t9, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    addiu   t5, t5, %lo(func_80B0D820) # t5 = 80B0D820
    sw      t5, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80B0DE84
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B0DCC0:
    or      a1, s2, $zero              # a1 = 00000000
lbl_80B0DCC4:
    addiu   a2, $zero, 0x0153          # a2 = 00000153
    jal     func_80B05648
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     t4, 0x8000                 # t4 = 80000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t8, 0x0300(s0)             # 00000300
    lui     a3, %hi(var_80B0F320)      # a3 = 80B10000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t9, t8,  2
    addu    a3, a3, t9
    lw      a3, %lo(var_80B0F320)(a3)
    lui     t9, 0x8012                 # t9 = 80120000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, a3,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a3, $at
    or      a0, $zero, $zero           # a0 = 00000000
    addu    t6, t5, t9
    addu    t7, t6, t4
    sw      t7, 0x0004(v1)             # 00000004
    addiu   a1, s0, 0x0434             # a1 = 00000434
    lui     a2, %hi(var_80B0F32C)      # a2 = 80B10000
    addiu   a2, a2, %lo(var_80B0F32C)  # a2 = 80B0F32C
    jal     func_80B055B8
    sw      a1, 0x0038($sp)
    lui     a2, %hi(var_80B0F32C)      # a2 = 80B10000
    lw      a1, 0x0038($sp)
    addiu   a2, a2, %lo(var_80B0F32C)  # a2 = 80B0F32C
    jal     func_80B055B8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     t8, %hi(var_80B0F32C)      # t8 = 80B10000
    addiu   t8, t8, %lo(var_80B0F32C)  # t8 = 80B0F32C
    lw      t9, 0x0000(t8)             # 80B0F32C
    lh      t6, 0x0332(s0)             # 00000332
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    sw      t9, 0x0208(s0)             # 00000208
    lw      t5, 0x0004(t8)             # 80B0F330
    andi    t7, t6, 0x0001             # t7 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t5, 0x020C(s0)             # 0000020C
    lw      t9, 0x0008(t8)             # 80B0F334
    or      a3, $zero, $zero           # a3 = 00000000
    beq     t7, $zero, lbl_80B0DDB8
    sw      t9, 0x0210(s0)             # 00000210
    lw      a0, 0x02C0(s1)             # 000002C0
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t5, $zero, 0x0384          # t5 = 00000384
    addiu   t9, $zero, 0x044B          # t9 = 0000044B
    sw      t9, 0x0018($sp)
    sw      t5, 0x0014($sp)
    jal     func_8007DC40
    sw      t8, 0x0010($sp)
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_80B0DDB8:
    lui     $at, 0xC57A                # $at = C57A0000
    mtc1    $at, $f14                  # $f14 = -4000.00
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0x457A                 # a2 = 457A0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0384(s0)           # 00000384
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f14                  # $f14 = 4000.00
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     a2, 0xC57A                 # a2 = C57A0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      t0, 0x0044($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lui     t8, %hi(func_80B0CC7C)     # t8 = 80B10000
    sw      v0, 0x0004(t0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t5, %hi(func_80B0CDB4)     # t5 = 80B10000
    addiu   t5, t5, %lo(func_80B0CDB4) # t5 = 80B0CDB4
    addiu   t8, t8, %lo(func_80B0CC7C) # t8 = 80B0CC7C
    sw      t8, 0x0010($sp)
    sw      t5, 0x0014($sp)
    jal     func_80089D8C
    sw      s0, 0x0018($sp)
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009A574
    lw      a1, 0x02C0(s1)             # 000002C0
    sw      v0, 0x02C0(s1)             # 000002C0
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B0EBE8
    or      a2, s2, $zero              # a2 = 00000000
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B0ECA0
    or      a2, s2, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B0DE84:
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0153          # a2 = 00000153
    jal     func_80B05648
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0C7FC
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0C600
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0D178
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0CAF0
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0D948
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0D37C
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B0D594
    or      a1, s2, $zero              # a1 = 00000000
    lbu     t9, 0x0302(s0)             # 00000302
    lui     s1, %hi(var_80B0F230)      # s1 = 80B10000
    addiu   s1, s1, %lo(var_80B0F230)  # s1 = 80B0F230
    bne     t9, $zero, lbl_80B0DF04
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x0000(s1)             # 80B0F230
    beq     t6, $zero, lbl_80B0DF54
lbl_80B0DF04:
    lui     s1, %hi(var_80B0F230)      # s1 = 80B10000
    addiu   s1, s1, %lo(var_80B0F230)  # s1 = 80B0F230
    jal     func_80B0C470
    or      a1, s2, $zero              # a1 = 00000000
    lbu     t7, 0x0302(s0)             # 00000302
    lui     v0, %hi(var_80B18278)      # v0 = 80B20000
    addiu   v0, v0, %lo(var_80B18278)  # v0 = 80B18278
    bnel    t7, $zero, lbl_80B0DF48
    lb      t6, 0x0000(v0)             # 80B18278
    lh      t8, 0x0000(s1)             # 80B0F230
    addiu   t5, t8, 0xFFD8             # t5 = FFFFFFD8
    sh      t5, 0x0000(s1)             # 80B0F230
    lh      t9, 0x0000(s1)             # 80B0F230
    bgtzl   t9, lbl_80B0DF48
    lb      t6, 0x0000(v0)             # 80B18278
    sh      $zero, 0x0000(s1)          # 80B0F230
    lb      t6, 0x0000(v0)             # 80B18278
lbl_80B0DF48:
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_80B0DFD4
    sb      t7, 0x0000(v0)             # 80B18278
lbl_80B0DF54:
    lui     a2, %hi(var_80B18248)      # a2 = 80B20000
    lui     a0, %hi(var_80B18218)      # a0 = 80B20000
    addiu   a0, a0, %lo(var_80B18218)  # a0 = 80B18218
    addiu   a2, a2, %lo(var_80B18248)  # a2 = 80B18248
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a3, s0, 0x01F0             # a3 = 000001F0
    addiu   t0, s0, 0x01FC             # t0 = 000001FC
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
lbl_80B0DF74:
    multu   v1, a1
    lw      t9, 0x0000(a3)             # 000001F0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0003
    mflo    v0
    addu    t8, a0, v0
    sw      t9, 0x0000(t8)             # 00000000
    lw      t5, 0x0004(a3)             # 000001F4
    addu    t6, a2, v0
    sw      t5, 0x0004(t8)             # 00000004
    lw      t9, 0x0008(a3)             # 000001F8
    sw      t9, 0x0008(t8)             # 00000008
    lw      t8, 0x0000(t0)             # 000001FC
    sw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(t0)             # 00000200
    sw      t7, 0x0004(t6)             # 00000004
    lw      t8, 0x0008(t0)             # 00000204
    bne     $at, $zero, lbl_80B0DF74
    sw      t8, 0x0008(t6)             # 00000008
    lui     v0, %hi(var_80B18278)      # v0 = 80B20000
    addiu   v0, v0, %lo(var_80B18278)  # v0 = 80B18278
    sb      $zero, 0x0000(v0)          # 80B18278
lbl_80B0DFD4:
    jal     func_80B0E338
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_80B0DFF4:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s8, 0x0068($sp)
    sw      s4, 0x0058($sp)
    or      s4, a1, $zero              # s4 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f30                  # $f30 = 1.00
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f28                  # $f28 = 0.75
    lui     $at, %hi(var_80B15B30)     # $at = 80B10000
    lwc1    $f26, %lo(var_80B15B30)($at)
    lui     $at, 0xC348                # $at = C3480000
    lui     s0, 0x0001                 # s0 = 00010000
    mtc1    $at, $f24                  # $f24 = -200.00
    addu    s0, s0, s4
    lui     $at, %hi(var_80B15B34)     # $at = 80B10000
    mtc1    $zero, $f20                # $f20 = 0.00
    lw      s3, 0x1C44(s4)             # 00001C44
    lw      s0, 0x1E10(s0)             # 00011E10
    lwc1    $f22, %lo(var_80B15B34)($at)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    addiu   s6, $zero, 0x000A          # s6 = 0000000A
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFD8
lbl_80B0E090:
    lbu     t6, 0x0000(s0)             # 00010000
    beql    t6, $zero, lbl_80B0E2DC
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lwc1    $f0, 0x0010(s0)            # 00010010
    lwc1    $f4, 0x0004(s0)            # 00010004
    lwc1    $f2, 0x0014(s0)            # 00010014
    lwc1    $f8, 0x0008(s0)            # 00010008
    lwc1    $f12, 0x0018(s0)           # 00010018
    lwc1    $f16, 0x000C(s0)           # 0001000C
    add.s   $f6, $f4, $f0
    lwc1    $f4, 0x001C(s0)            # 0001001C
    lbu     t7, 0x0001(s0)             # 00010001
    add.s   $f10, $f8, $f2
    lwc1    $f8, 0x0020(s0)            # 00010020
    swc1    $f6, 0x0004(s0)            # 00010004
    add.s   $f18, $f16, $f12
    lwc1    $f16, 0x0024(s0)           # 00010024
    swc1    $f10, 0x0008(s0)           # 00010008
    add.s   $f6, $f0, $f4
    swc1    $f18, 0x000C(s0)           # 0001000C
    lbu     v0, 0x0000(s0)             # 00010000
    add.s   $f10, $f2, $f8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0001(s0)             # 00010001
    add.s   $f18, $f12, $f16
    swc1    $f6, 0x0010(s0)            # 00010010
    swc1    $f10, 0x0014(s0)           # 00010014
    bne     s5, v0, lbl_80B0E1F8
    swc1    $f18, 0x0018(s0)           # 00010018
    lh      t9, 0x002E(s0)             # 0001002E
    bnel    t9, $zero, lbl_80B0E130
    lwc1    $f16, 0x0008(s0)           # 00010008
    lwc1    $f4, 0x0040(s0)            # 00010040
    lui     $at, %hi(var_80B15B38)     # $at = 80B10000
    add.s   $f6, $f4, $f30
    swc1    $f6, 0x0040(s0)            # 00010040
    lwc1    $f8, %lo(var_80B15B38)($at)
    beq     $zero, $zero, lbl_80B0E2D8
    swc1    $f8, 0x003C(s0)            # 0001003C
    lwc1    $f16, 0x0008(s0)           # 00010008
lbl_80B0E130:
    lui     $at, %hi(var_80B15B3C)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15B3C)($at)
    c.le.s  $f16, $f22
    swc1    $f20, 0x003C(s0)           # 0001003C
    lui     $at, 0xC120                # $at = C1200000
    swc1    $f10, 0x0040(s0)           # 00010040
    bc1fl   lbl_80B0E1AC
    lwc1    $f8, 0x0024(s3)            # 00000024
    lwc1    $f18, 0x0014(s0)           # 00010014
    mtc1    $at, $f4                   # $f4 = -10.00
    swc1    $f22, 0x0008(s0)           # 00010008
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_80B0E1A8
    swc1    $f20, 0x0014(s0)           # 00010014
    lw      t1, 0x0004(s0)             # 00010004
    lui     $at, %hi(var_80B15B40)     # $at = 80B10000
    addiu   a0, $zero, 0x1808          # a0 = 00001808
    sw      t1, 0x0000(s2)             # FFFFFFD8
    lw      t0, 0x0008(s0)             # 00010008
    sw      t0, 0x0004(s2)             # FFFFFFDC
    lw      t1, 0x000C(s0)             # 0001000C
    sw      t1, 0x0008(s2)             # FFFFFFE0
    lwc1    $f6, %lo(var_80B15B40)($at)
    jal     func_800646F0
    swc1    $f6, 0x007C($sp)
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_800511B8
    or      a1, s2, $zero              # a1 = FFFFFFD8
    swc1    $f20, 0x0014(s0)           # 00010014
lbl_80B0E1A8:
    lwc1    $f8, 0x0024(s3)            # 00000024
lbl_80B0E1AC:
    lwc1    $f10, 0x0004(s0)           # 00010004
    lwc1    $f16, 0x002C(s3)           # 0000002C
    lwc1    $f18, 0x000C(s0)           # 0001000C
    sub.s   $f0, $f8, $f10
    lui     $at, %hi(var_80B15B44)     # $at = 80B10000
    lwc1    $f10, %lo(var_80B15B44)($at)
    sub.s   $f2, $f16, $f18
    mul.s   $f4, $f0, $f0
    nop
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80B0E2D8
    nop
    sb      $zero, 0x0000(s0)          # 00010000
    sh      s6, 0x038C(s8)             # 0000038C
    beq     $zero, $zero, lbl_80B0E2DC
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80B0E1F8:
    bne     s7, v0, lbl_80B0E2D8
    lui     $at, %hi(var_80B15B48)     # $at = 80B10000
    lwc1    $f16, 0x0038(s0)           # 00010038
    lwc1    $f18, %lo(var_80B15B48)($at)
    lui     $at, %hi(var_80B15B4C)     # $at = 80B10000
    lwc1    $f6, 0x003C(s0)            # 0001003C
    add.s   $f4, $f16, $f18
    lwc1    $f16, 0x0004(s0)           # 00010004
    lwc1    $f18, 0x000C(s0)           # 0001000C
    sub.s   $f2, $f24, $f16
    swc1    $f4, 0x0038(s0)            # 00010038
    lwc1    $f8, %lo(var_80B15B4C)($at)
    sub.s   $f12, $f24, $f18
    mul.s   $f4, $f2, $f2
    lui     $at, 0x447A                # $at = 447A0000
    add.s   $f10, $f6, $f8
    mul.s   $f6, $f12, $f12
    mtc1    $at, $f8                   # $f8 = 1000.00
    swc1    $f10, 0x003C(s0)           # 0001003C
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80B0E2C4
    lwc1    $f18, 0x0008(s0)           # 00010008
    lwc1    $f10, 0x0008(s0)           # 00010008
    c.lt.s  $f10, $f26
    nop
    bc1fl   lbl_80B0E2DC
    addiu   s1, s1, 0x0001             # s1 = 00000003
    lh      v0, 0x002E(s0)             # 0001002E
    bne     v0, $zero, lbl_80B0E2B8
    nop
    lwc1    $f16, 0x0010(s0)           # 00010010
    lwc1    $f4, 0x0018(s0)            # 00010018
    addiu   t2, v0, 0x0001             # t2 = 00000001
    mul.s   $f18, $f16, $f28
    sh      t2, 0x002E(s0)             # 0001002E
    swc1    $f26, 0x0008(s0)           # 00010008
    mul.s   $f6, $f4, $f28
    lui     $at, %hi(var_80B15B50)     # $at = 80B10000
    lwc1    $f8, 0x0014(s0)            # 00010014
    swc1    $f18, 0x0010(s0)           # 00010010
    swc1    $f6, 0x0018(s0)            # 00010018
    lwc1    $f10, %lo(var_80B15B50)($at)
    mul.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80B0E2D8
    swc1    $f16, 0x0014(s0)           # 00010014
lbl_80B0E2B8:
    beq     $zero, $zero, lbl_80B0E2D8
    sb      $zero, 0x0000(s0)          # 00010000
    lwc1    $f18, 0x0008(s0)           # 00010008
lbl_80B0E2C4:
    c.lt.s  $f18, $f20
    nop
    bc1fl   lbl_80B0E2DC
    addiu   s1, s1, 0x0001             # s1 = 00000004
    sb      $zero, 0x0000(s0)          # 00010000
lbl_80B0E2D8:
    addiu   s1, s1, 0x0001             # s1 = 00000005
lbl_80B0E2DC:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0064
    bne     $at, $zero, lbl_80B0E090
    addiu   s0, s0, 0x0044             # s0 = 00010044
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_80B0E338:
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      s6, 0x0050($sp)
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x00C5($sp)
    addu    s5, s6, $at
    lw      s1, 0x1E10(s5)             # 00001E10
    sw      s1, 0x00B8($sp)
    lw      a0, 0x0000(s6)             # 00000000
    jal     func_8007E298
    or      s2, a0, $zero              # s2 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, %hi(var_80B15B54)     # $at = 80B10000
    lwc1    $f22, %lo(var_80B15B54)($at)
    or      s8, $zero, $zero           # s8 = 00000000
    lbu     t6, 0x0000(s1)             # 00000000
lbl_80B0E3AC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s0, s1, 0x0004             # s0 = 00000004
    bne     t6, $at, lbl_80B0E5F4
    addiu   s3, s6, 0x00E0             # s3 = 000000E0
    lui     t7, %hi(var_80B14278)      # t7 = 80B10000
    addiu   t7, t7, %lo(var_80B14278)  # t7 = 80B14278
    lw      a0, 0x0000(s6)             # 00000000
    lui     s7, %hi(var_80B15498)      # s7 = 80B10000
    addiu   s7, s7, %lo(var_80B15498)  # s7 = 80B15498
    jal     func_8007E2C0
    sw      t7, 0x0064($sp)
    lb      t8, 0x0A4E(s5)             # 00000A4E
    or      a0, s0, $zero              # a0 = 00000004
    or      a1, s3, $zero              # a1 = 000000E0
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x00A4            # a2 = FFFFFFDC
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00A4($sp)
    lb      t9, 0x0A4F(s5)             # 00000A4F
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x00A8($sp)
    lb      t0, 0x0A50(s5)             # 00000A50
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x00AC($sp)
    jal     func_800223C8
    lw      a3, 0x0000(s6)             # 00000000
    lwc1    $f12, 0x0004(s1)           # 00000004
    lwc1    $f14, 0x0008(s1)           # 00000008
    lw      a2, 0x000C(s1)             # 0000000C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    a2, $f22
    mov.s   $f12, $f22
    mov.s   $f14, $f22
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0040(s1)           # 00000040
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s1)           # 0000003C
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 000000E8
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      t2, 0x0000(s3)             # 000000E0
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s3)             # 000000E4
    lw      s4, 0x02C0(s2)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, s4, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      t4, 0x0000(s4)             # 00000000
    lw      a2, 0x1DE4(s5)             # 00001DE4
    lw      a0, 0x0000(s6)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    andi    a2, a2, 0x007F             # a2 = 00000000
    subu    a2, $zero, a2
    sw      t5, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB00
    addiu   a3, $zero, 0x0020          # a3 = 00000020
    sw      v0, 0x0004(s4)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 0000000C
    sw      t6, 0x02C0(s2)             # 000002C0
    sw      s7, 0x0004(s0)             # 00000008
    sw      t7, 0x0000(s0)             # 00000004
    lbu     a0, 0x0AE1(s5)             # 00000AE1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $at, lbl_80B0E4F8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a0, $at, lbl_80B0E534
    addiu   v1, $zero, 0x0064          # v1 = 00000064
lbl_80B0E4F8:
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0AFC(s5)            # 00000AFC
    lui     $at, %hi(var_80B15B58)     # $at = 80B10000
    lwc1    $f20, %lo(var_80B15B58)($at)
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    v1, $f10
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   v1, v1, 0x0032             # v1 = 00000096
    sll     v1, v1, 16
    beq     $zero, $zero, lbl_80B0E53C
    sra     v1, v1, 16
lbl_80B0E534:
    lui     $at, %hi(var_80B15B5C)     # $at = 80B10000
    lwc1    $f20, %lo(var_80B15B5C)($at)
lbl_80B0E53C:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    andi    t1, v1, 0x00FF             # t1 = 00000096
    addiu   t9, s0, 0x0008             # t9 = 0000000C
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000008
    sw      t0, 0x0000(s0)             # 00000004
    lui     $at, %hi(var_80B15B60)     # $at = 80B10000
    lwc1    $f18, %lo(var_80B15B60)($at)
    lwc1    $f16, 0x0008(s1)           # 00000008
    lwc1    $f6, 0x000C(s1)            # 0000000C
    lwc1    $f4, 0x0004(s1)            # 00000004
    sub.s   $f0, $f16, $f18
    lui     $at, %hi(var_80B15B64)     # $at = 80B10000
    lwc1    $f14, %lo(var_80B15B64)($at)
    sub.s   $f8, $f6, $f24
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f4, $f0
    add.s   $f10, $f8, $f0
    mfc1    a2, $f10
    jal     func_800AA7F4
    nop
    mov.s   $f12, $f20
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    $zero, $f14                # $f14 = 0.00
    mfc1    a2, $f24
    mov.s   $f12, $f24
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s3, 0x0008             # t2 = 000000E8
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(s3)             # 000000E0
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s3)             # 000000E4
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t4, s0, 0x0008             # t4 = 0000000C
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000004
    lw      t6, 0x0064($sp)
    sw      t6, 0x0004(s0)             # 00000008
lbl_80B0E5F4:
    addiu   s8, s8, 0x0001             # s8 = 00000001
    sll     s8, s8, 16
    sra     s8, s8, 16
    blezl   s8, lbl_80B0E3AC
    lbu     t6, 0x0000(s1)             # 00000000
    lw      s1, 0x00B8($sp)
    or      s8, $zero, $zero           # s8 = 00000000
lbl_80B0E610:
    lbu     t7, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lbu     t8, 0x00C5($sp)
    bne     t7, $at, lbl_80B0E6D4
    lui     s4, 0x0600                 # s4 = 06000000
    bne     t8, $zero, lbl_80B0E64C
    addiu   s4, s4, 0x0EA0             # s4 = 06000EA0
    or      a0, $zero, $zero           # a0 = 00000000
    or      a1, s6, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0186          # a2 = 00000186
    jal     func_80B05648
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t9, 0x00C5($sp)
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x00C5($sp)
lbl_80B0E64C:
    lwc1    $f12, 0x0004(s1)           # 00000004
    lwc1    $f14, 0x0008(s1)           # 00000008
    lw      a2, 0x000C(s1)             # 0000000C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0034(s1)           # 00000034
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lwc1    $f12, 0x0040(s1)           # 00000040
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x003C(s1)           # 0000003C
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f12, 0x0038(s1)           # 00000038
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s3, 0x02C0(s2)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s3, 0x0008             # t1 = 000000E8
    sw      t1, 0x02C0(s2)             # 000002C0
    sw      t2, 0x0000(s3)             # 000000E0
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s3)             # 000000E4
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, s0, 0x0008             # t3 = 0000000C
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000008
    sw      t4, 0x0000(s0)             # 00000004
lbl_80B0E6D4:
    addiu   s8, s8, 0x0001             # s8 = 00000001
    sll     s8, s8, 16
    sra     s8, s8, 16
    slti    $at, s8, 0x0064
    bne     $at, $zero, lbl_80B0E610
    addiu   s1, s1, 0x0044             # s1 = 00000044
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8


func_80B0E728:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sdc1    $f20, 0x0010($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sdc1    $f30, 0x0038($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    lui     $at, %hi(var_80B15B68)     # $at = 80B10000
    lwc1    $f30, %lo(var_80B15B68)($at)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f28                  # $f28 = 100.00
    lui     $at, 0x4298                # $at = 42980000
    mtc1    $at, $f26                  # $f26 = 76.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f22                  # $f22 = 30.00
    mtc1    $zero, $f24                # $f24 = 0.00
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x000C          # s3 = 0000000C
    lh      t2, 0x0086($sp)
    c.eq.s  $f20, $f24
lbl_80B0E798:
    sll     t6, s2,  1
    addiu   a0, $sp, 0x0070            # a0 = FFFFFFD8
    bc1tl   lbl_80B0E7C0
    c.lt.s  $f24, $f20
    lui     t2, %hi(var_80B0F37C)      # t2 = 80B10000
    addu    t2, t2, t6
    lh      t2, %lo(var_80B0F37C)(t2)
    bltzl   t2, lbl_80B0EB9C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    c.lt.s  $f24, $f20
lbl_80B0E7C0:
    nop
    bc1f    lbl_80B0E858
    nop
    multu   t2, s3
    mflo    t7
    addu    v0, s1, t7
    lwc1    $f4, 0x0224(v0)            # 00000224
    multu   s2, s3
    lwc1    $f10, 0x0228(v0)           # 00000228
    mflo    t8
    addu    v1, s1, t8
    lwc1    $f0, 0x0224(v1)            # 00000224
    lwc1    $f2, 0x0228(v1)            # 00000228
    lwc1    $f12, 0x022C(v1)           # 0000022C
    sub.s   $f6, $f4, $f0
    sub.s   $f4, $f10, $f2
    mul.s   $f8, $f6, $f20
    add.s   $f14, $f8, $f0
    mul.s   $f6, $f4, $f20
    lwc1    $f8, 0x022C(v0)            # 0000022C
    sub.s   $f10, $f8, $f12
    add.s   $f16, $f6, $f2
    lwc1    $f6, 0x0024(s1)            # 00000024
    mul.s   $f4, $f10, $f20
    sub.s   $f8, $f14, $f6
    swc1    $f8, 0x0070($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    add.s   $f18, $f4, $f12
    sub.s   $f4, $f16, $f10
    add.s   $f6, $f4, $f26
    add.s   $f8, $f6, $f22
    add.s   $f10, $f8, $f22
    add.s   $f4, $f10, $f28
    swc1    $f4, 0x0074($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    sub.s   $f8, $f18, $f6
    beq     $zero, $zero, lbl_80B0E8A4
    swc1    $f8, 0x0078($sp)
lbl_80B0E858:
    multu   s2, s3
    lwc1    $f4, 0x0024(s1)            # 00000024
    mflo    t9
    addu    v1, s1, t9
    lwc1    $f10, 0x0224(v1)           # 00000224
    sub.s   $f6, $f10, $f4
    swc1    $f6, 0x0070($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    lwc1    $f8, 0x0228(v1)            # 00000228
    sub.s   $f4, $f8, $f10
    add.s   $f6, $f4, $f26
    add.s   $f8, $f6, $f22
    add.s   $f10, $f8, $f22
    add.s   $f4, $f10, $f28
    swc1    $f4, 0x0074($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    lwc1    $f6, 0x022C(v1)            # 0000022C
    sub.s   $f10, $f6, $f8
    swc1    $f10, 0x0078($sp)
lbl_80B0E8A4:
    jal     func_800AB958
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFCC
    lwc1    $f0, 0x0064($sp)
    lwc1    $f2, 0x0068($sp)
    lui     $at, 0x4200                # $at = 42000000
    mul.s   $f0, $f0, $f30
    mtc1    $at, $f4                   # $f4 = 32.00
    lui     v0, %hi(var_80B0F39C)      # v0 = 80B10000
    mul.s   $f2, $f2, $f30
    addu    v0, v0, s2
    lbu     v0, %lo(var_80B0F39C)(v0)
    lui     t3, %hi(var_80B0F364)      # t3 = 80B10000
    lui     t4, %hi(var_80B0F354)      # t4 = 80B10000
    add.s   $f6, $f0, $f4
    lui     t5, %hi(var_80B0F344)      # t5 = 80B10000
    lui     $ra, %hi(var_80B0F338)     # $ra = 80B10000
    trunc.w.s $f10, $f2
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   $ra, $ra, %lo(var_80B0F338) # $ra = 80B0F338
    trunc.w.s $f8, $f6
    mfc1    t0, $f10
    addiu   t5, t5, %lo(var_80B0F344)  # t5 = 80B0F344
    addiu   t4, t4, %lo(var_80B0F354)  # t4 = 80B0F354
    mfc1    a3, $f8
    sll     t0, t0, 16
    sra     t0, t0, 16
    sll     t0, t0,  6
    sll     t0, t0, 16
    sll     a3, a3, 16
    addiu   t3, t3, %lo(var_80B0F364)  # t3 = 80B0F364
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    sra     a3, a3, 16
    sra     t0, t0, 16
    swc1    $f2, 0x0068($sp)
    bne     v0, $at, lbl_80B0E9C8
    swc1    $f0, 0x0064($sp)
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFE80          # a1 = FFFFFE80
lbl_80B0E93C:
    sll     t8, t2,  1
    addu    a2, t3, t8
    lh      a0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_80B0E9AC
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_80B0E96C:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B0E998
    addiu   v1, v1, 0x0001             # v1 = 00000001
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_80B0E998
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
lbl_80B0E998:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_80B0E96C
    addu    t9, a3, v1
lbl_80B0E9AC:
    addiu   a1, a1, 0x0040             # a1 = FFFFFEC0
    sll     a1, a1, 16
    slti    $at, t2, 0x000C
    bne     $at, $zero, lbl_80B0E93C
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_80B0EB9C
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80B0E9C8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80B0EA64
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFF00          # a1 = FFFFFF00
lbl_80B0E9D8:
    sll     t8, t2,  1
    addu    a2, t4, t8
    lh      a0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, a0
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_80B0EA48
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_80B0EA08:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B0EA34
    addiu   v1, v1, 0x0001             # v1 = 00000002
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_80B0EA34
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
lbl_80B0EA34:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_80B0EA08
    addu    t9, a3, v1
lbl_80B0EA48:
    addiu   a1, a1, 0x0040             # a1 = FFFFFF40
    sll     a1, a1, 16
    slti    $at, t2, 0x0008
    bne     $at, $zero, lbl_80B0E9D8
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_80B0EB9C
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_80B0EA64:
    bne     v0, $zero, lbl_80B0EB08
    or      t2, $zero, $zero           # t2 = 00000000
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   a1, $zero, 0xFF40          # a1 = FFFFFF40
lbl_80B0EA74:
    sll     t8, t2,  1
    addu    a2, t5, t8
    lh      v0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000001
    sll     t2, t2, 16
    subu    v1, $zero, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   a0, v0, 0xFFFF             # a0 = 80B0FFFF
    slt     $at, v1, a0
    beq     $at, $zero, lbl_80B0EAEC
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_80B0EAA8:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B0EAD8
    addiu   v1, v1, 0x0001             # v1 = 00000003
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_80B0EAD8
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
    addiu   a0, a0, 0xFFFF             # a0 = 80B0FFFE
lbl_80B0EAD8:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_80B0EAA8
    addu    t9, a3, v1
lbl_80B0EAEC:
    addiu   a1, a1, 0x0040             # a1 = FFFFFF80
    sll     a1, a1, 16
    slti    $at, t2, 0x0007
    bne     $at, $zero, lbl_80B0EA74
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_80B0EB9C
    addiu   s2, s2, 0x0001             # s2 = 00000004
lbl_80B0EB08:
    addiu   a1, $zero, 0xFF80          # a1 = FFFFFF80
lbl_80B0EB0C:
    sll     t8, t2,  1
    addu    a2, $ra, t8
    lh      v0, 0x0000(a2)             # 00000000
    addiu   t2, t2, 0x0001             # t2 = 00000002
    sll     t2, t2, 16
    subu    v1, $zero, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
    addiu   a0, v0, 0xFFFF             # a0 = 80B0FFFF
    slt     $at, v1, a0
    beq     $at, $zero, lbl_80B0EB84
    sra     t2, t2, 16
    addu    t9, a3, v1
lbl_80B0EB40:
    addu    t6, t9, t0
    addu    v0, t6, a1
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B0EB70
    addiu   v1, v1, 0x0001             # v1 = 00000004
    slti    $at, v0, 0x1000
    beq     $at, $zero, lbl_80B0EB70
    addu    t7, s0, v0
    sb      t1, 0x0000(t7)             # 00000000
    lh      a0, 0x0000(a2)             # 00000000
    addiu   a0, a0, 0xFFFF             # a0 = 80B0FFFE
lbl_80B0EB70:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    bnel    $at, $zero, lbl_80B0EB40
    addu    t9, a3, v1
lbl_80B0EB84:
    addiu   a1, a1, 0x0040             # a1 = FFFFFFC0
    sll     a1, a1, 16
    slti    $at, t2, 0x0006
    bne     $at, $zero, lbl_80B0EB0C
    sra     a1, a1, 16
    addiu   s2, s2, 0x0001             # s2 = 00000005
lbl_80B0EB9C:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bnel    $at, $zero, lbl_80B0E798
    c.eq.s  $f20, $f24
    sh      t2, 0x0086($sp)
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    ldc1    $f30, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_80B0EBE8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a2, 0x0038($sp)
    or      v0, s1, $zero              # v0 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80B0EC14:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0400
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     $at, $zero, lbl_80B0EC14
    sw      $zero, -0x0004(v0)         # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    jal     func_800AA9E0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f20                  # $f20 = 5.00
    or      s0, $zero, $zero           # s0 = 00000000
    mtc1    s0, $f4                    # $f4 = 0.00
lbl_80B0EC50:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    cvt.s.w $f6, $f4
    div.s   $f8, $f6, $f20
    mfc1    a2, $f8
    jal     func_80B0E728
    nop
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0006
    bnel    $at, $zero, lbl_80B0EC50
    mtc1    s0, $f4                    # $f4 = 0.00
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B0ECA0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    or      s0, a0, $zero              # s0 = 00000000
    jal     func_8007E298
    nop
    lw      v0, 0x0048($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      t0, 0x0044($sp)
    addu    v0, v0, $at
    lbu     v1, 0x0AE1(v0)             # 00000AE1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80B0ECF4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_80B0ED28
    addiu   a1, $zero, 0x0078          # a1 = 00000078
lbl_80B0ECF4:
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    lwc1    $f4, 0x0AFC(v0)            # 00000AFC
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    a1, $f10
    nop
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a1, a1, 0x001E             # a1 = 00000096
    sll     a1, a1, 16
    beq     $zero, $zero, lbl_80B0ED28
    sra     a1, a1, 16
lbl_80B0ED28:
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    andi    t2, a1, 0x00FF             # t2 = 00000096
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f16, 0x002C(t0)           # 0000002C
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f12, 0x0024(t0)           # 00000024
    lwc1    $f14, 0x0080(t0)           # 00000080
    sub.s   $f4, $f16, $f18
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    a2, $f4
    jal     func_800AA7F4
    nop
    lui     $at, %hi(var_80B15B6C)     # $at = 80B10000
    lwc1    $f12, %lo(var_80B15B6C)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0048($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a3, 0x0020($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t6, 0xF590                 # t6 = F5900000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, %hi(var_80B104C0)      # t9 = 80B10000
    addiu   t9, t9, %lo(var_80B104C0)  # t9 = 80B104C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xFD90                 # t3 = FD900000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0040($sp)
    lui     t3, 0xF300                 # t3 = F3000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0709                 # t7 = 07090000
    ori     t7, t7, 0x8260             # t7 = 07098260
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xE600                 # t9 = E6000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x077F                 # t4 = 077F0000
    ori     t4, t4, 0xF100             # t4 = 077FF100
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t8, 0xF588                 # t8 = F5880000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0x0009                 # t9 = 00090000
    ori     t9, t9, 0x8260             # t9 = 00098260
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    ori     t8, t8, 0x1000             # t8 = F5881000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t4, 0x000F                 # t4 = 000F0000
    ori     t4, t4, 0xC0FC             # t4 = 000FC0FC
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    lui     t3, 0xF200                 # t3 = F2000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, %hi(var_80B104E0)      # t6 = 80B10000
    addiu   t6, t6, %lo(var_80B104E0)  # t6 = 80B104E0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop

.section .data

var_80B0EEF0: .word 0x017A0900, 0x00000035, 0x01530000, 0x000008D4
.word func_80B0584C
.word func_80B0597C
.word func_80B0AD50
.word func_80B0DB90
var_80B0EF10: .word 0x00000000, 0x00000000, 0x00000000
var_80B0EF1C: .word 0x00000000, 0x00000000, 0x43FA0000
var_80B0EF28: .word 0x00000000
var_80B0EF2C: .word \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x00000000, 0x00000000, \
0x001E0064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x01000000, \
0x00000000, 0x001E0064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x02000000, 0x00000000, 0x001E0064, 0x00000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x03000000, 0x00000000, 0x00140064, \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x04000000, 0x00000000, \
0x00140064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x05000000, \
0x00000000, 0x00140064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x06000000, 0x00000000, 0x00140064, 0x00000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x07000000, 0x00000000, 0x00140064, \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x08000000, 0x00000000, \
0x00140064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x09000000, \
0x00000000, 0x00140064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0A000000, 0x00000000, 0x00140064, 0x00000000, \
0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0B000000, 0x00000000, 0x00140064, \
0x00000000, 0xFFCFFFFF, 0x00100000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x0C000000, 0x00000000, \
0x00140064, 0x00000000, 0xFFCFFFFF, 0x00100000, \
0xFFCFFFFF, 0x00000000, 0x01010100, 0x0D000000, \
0x00000000, 0x00140064, 0x00000000, 0xFFCFFFFF, \
0x00100000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x0E000000, 0x00000000, 0x00140064, 0x00000000, \
0xFFCFFFFF, 0x00000000, 0xFFCFFFFF, 0x00000000, \
0x01010100, 0x0F000000, 0x00000000, 0x001E0064
var_80B0F16C: .word 0x09110909, 0x50000000, 0x00000010
.word var_80B0EF2C
var_80B0F17C: .word \
0x02000000, 0xFFCFFFFF, 0x00400000, 0xFFDFFFFF, \
0x00000000, 0x01010100, 0x0F000000, 0x00000000, \
0x002D0064, 0x02000000, 0xFFCFFFFF, 0x00400000, \
0xFFDFFFFF, 0x00000000, 0x01010100, 0x10000000, \
0x00000000, 0x002D0064
var_80B0F1C4: .word 0x09110909, 0x10000000, 0x00000002
.word var_80B0F17C
var_80B0F1D4: .word 0x780000FF
var_80B0F1D8: .word 0x780000FF
var_80B0F1DC: .word \
0x41200000, 0xC1200000, 0x00000000, 0x00000000, \
0x00000000, 0xC2700000, 0x428C0000, 0xC1F00000, \
0x41200000
var_80B0F200: .word \
0xC1A00000, 0x00000000, 0x00000000, 0xC1700000, \
0x00000000, 0x41200000, 0xC1800000, 0xC1400000, \
0x42200000
var_80B0F224: .word 0x00000001, 0x00020002, 0x00010000
var_80B0F230: .word 0x00000000
var_80B0F234: .word 0x00020406, 0x080A0C0E, 0x10121400
var_80B0F240: .word 0x01030507, 0x090B0D0F, 0x11131500
var_80B0F24C: .byte 0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0xFF
var_80B0F253: .byte 0xFF, 0x05, 0xFF, 0x06, 0x07, 0xFF
var_80B0F259: .word \
0xFF08FFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFF00
var_80B0F26D: .byte 0xFF
var_80B0F26E: .byte 0xFF, 0x02, 0x09, 0x0A, 0x0B, 0x0C, 0x0D, 0x0E, 0xFF, 0xFF, 0xFF, 0x0F, 0xFF, 0x00
var_80B0F27C: .word \
0xFFFF01FF, 0x0304FFFF, 0x05FF0607, 0xFFFF08FF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0x00FFFF02, 0x0C0D0E09, 0x0A0BFFFF, 0xFFFFFF00
var_80B0F2AC: .word 0x00000000, 0x00000000, 0x459C4000
var_80B0F2B8: .word 0x00000000, 0x44FA0000, 0x00000000
var_80B0F2C4: .word 0x00000000, 0x44FA0000, 0x00000000
var_80B0F2D0: .word 0x00000000, 0x00000000
var_80B0F2D8: .word 0x4684D000
var_80B0F2DC: .word 0x00000000, 0x00000000
var_80B0F2E4: .word 0x453B8000
var_80B0F2E8: .word 0x00000000, 0x00000000, 0x00000000
var_80B0F2F4: .byte 0xFF, 0xFF, 0x01, 0xFF, 0x03, 0x04, 0x05, 0xFF, 0x06, 0x07
var_80B0F2FE: .byte 0x08
var_80B0F2FF: .byte \
0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0x02, 0x0C, 0x0D, 0x0E, 0x09, 0x0A, 0x0B, 0xFF, \
0xFF, 0xFF, 0xFF, 0x00, 0x00
var_80B0F314: .word 0x44480000, 0x43D20000, 0x42C80000
var_80B0F320: .word 0x0601E188, 0x0601E988, 0x0601EA08
var_80B0F32C: .word 0x00000000, 0xC4FA0000, 0x00000000
var_80B0F338: .word 0x00010002, 0x00030003, 0x00020001
var_80B0F344: .word 0x00020003, 0x00040004, 0x00040003, 0x00020000
var_80B0F354: .word 0x00020003, 0x00040004, 0x00040004, 0x00030002
var_80B0F364: .word \
0x00020004, 0x00050005, 0x00060006, 0x00060006, \
0x00050005, 0x00040002
var_80B0F37C: .word \
0x0001FFFF, 0x00010001, 0x00030004, 0x00010006, \
0x00070002, 0x0009000A, 0x0002000C, 0x000D0000
var_80B0F39C: .word \
0x03020201, 0x03030103, 0x03010003, 0x01000300, \
0x00000000, 0x00000000, 0x00000000
var_80B0F3B8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03040200, 0x00000000, 0x00000000, \
0x00000001, 0x00000104, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x04070401, 0x00000001, 0x00010101, \
0x00010102, 0x01000105, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000102, 0x04080703, 0x01010101, 0x01030303, \
0x03030304, 0x01010305, 0x01000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000103, 0x05080A06, 0x03030303, 0x03040404, \
0x04040405, 0x03020604, 0x01010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000104, 0x05080C0B, 0x06040404, 0x05060606, \
0x05060707, 0x05060904, 0x02020200, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000204, 0x07090E11, 0x0A060607, 0x08080908, \
0x08080A09, 0x060A0C05, 0x04050301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010407, 0x07040200, 0x00010101, \
0x01010304, 0x07090E13, 0x100A0809, 0x0B0C0D0B, \
0x0B0C0D0C, 0x0A100D07, 0x07070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0001060C, 0x0F0E0A04, 0x01010303, \
0x04030405, 0x080C0F15, 0x17110D0D, 0x0F101110, \
0x0F11120F, 0x0E150C09, 0x0A080403, 0x01010000, \
0x01010102, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x0001040B, 0x1317160F, 0x09040404, \
0x05050607, 0x090C1016, 0x1D191412, 0x14171816, \
0x15171915, 0x15190F0D, 0x0C080504, 0x03030201, \
0x02040404, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000106, 0x101A201E, 0x170D0805, \
0x0708090A, 0x0C0E1318, 0x22241C1A, 0x1A1E1F1D, \
0x1C1E201B, 0x201B1513, 0x0F0B0806, 0x05050505, \
0x06070704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000002, 0x08121E27, 0x281F140A, \
0x08090B0C, 0x0E11171D, 0x26302823, 0x24282927, \
0x26292A26, 0x32211C1A, 0x130E0B08, 0x07070809, \
0x0A0A0602, 0x00010203, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0208121F, 0x2C2F281B, \
0x100D0F11, 0x12151A22, 0x2B383930, 0x30333635, \
0x34383633, 0x3D2A261F, 0x19130F0D, 0x0C0C0E0F, \
0x0C080402, 0x03040606, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x0002070F, 0x1D2D3734, \
0x27181316, 0x191C2028, 0x33404C41, 0x3E424646, \
0x45484443, 0x40353126, 0x1F191513, 0x12141411, \
0x0A060507, 0x0A0A0804, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010306, 0x0E1C3140, \
0x4133221C, 0x1F25282F, 0x3A495A58, 0x5154595A, \
0x595C575D, 0x4C433A2E, 0x26211D1D, 0x1D1D160E, \
0x0A0A0C0E, 0x0D090502, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00010304, 0x070D1B2E, \
0x44504733, 0x2A2E343A, 0x45556875, 0x6B6B7172, \
0x72746D70, 0x5E55473B, 0x312C2A2B, 0x281F1510, \
0x1114130E, 0x09050200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01020304, 0x07090E19, \
0x2F4C615D, 0x4A3E4149, 0x5362778E, 0x89868C90, \
0x8F918881, 0x75665649, 0x413D3C37, 0x2B1F1A1C, \
0x1D18110A, 0x06030100, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030405, 0x07090C11, \
0x1B2F5173, 0x7865575B, 0x667489A1, 0xABA6ABB0, \
0xAFB0A99B, 0x8F7B695C, 0x57544B3A, 0x2E2B2B26, \
0x1C120A06, 0x03010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030505, 0x080B0E12, \
0x17203356, 0x80948A79, 0x7C8B9EB7, 0xCCCACFD5, \
0xD3D1CCBB, 0xA8928278, 0x72655145, 0x423D3020, \
0x140D0704, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040506, 0x080C1014, \
0x19202B3C, 0x5D8CB3B0, 0xA2A6B8D0, 0xE9EEF1F6, \
0xF5F4F2DF, 0xC5B0A398, 0x856F625D, 0x4D382619, \
0x100A0603, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000101, 0x03040708, 0x090C1117, \
0x1D242F3C, 0x4D6B9ACA, 0xDBCFD8E9, 0xFAFDFEFF, \
0xFEFEFEF6, 0xE3D4C7B0, 0x9888775E, 0x422E2015, \
0x0F090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x01010304, 0x05060809, 0x0C0F1319, \
0x20293442, 0x526783AE, 0xE0F5FAFC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF5E1CA, 0xB3926F52, 0x3A2A1E15, \
0x0F0A0604, 0x03010000, 0x00000000, 0x00000000, \
0x00000001, 0x03040507, 0x08080B0C, 0x0F12161C, \
0x232D3A48, 0x5B708AA8, 0xD0F7FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D9, 0xAF88684F, 0x3C2C2118, \
0x110C0805, 0x04010100, 0x00000000, 0x00000000, \
0x00000001, 0x03040708, 0x0A0B0D10, 0x14181D24, \
0x2C364250, 0x647A95B3, 0xD5F6FEFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF7D2, 0xA9886C55, 0x4131251C, \
0x15100C09, 0x07050403, 0x01010000, 0x00000000, \
0x00000001, 0x03040608, 0x0A0C0F12, 0x161B222A, \
0x33404E5F, 0x7389A3C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF8D8, 0xB4937760, 0x4C3C3027, \
0x1E18130F, 0x0C0A0806, 0x04030201, 0x00000000, \
0x00000000, 0x01030405, 0x08090D10, 0x14192029, \
0x33405064, 0x7A94B3D3, 0xF3FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC7A88B72, 0x5C4A3B2F, \
0x241C1510, 0x0C090705, 0x03010100, 0x00000000, \
0x00000001, 0x02030405, 0x080A0D10, 0x14191F28, \
0x323E4E61, 0x7892B1D2, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFCE8, 0xC5A28469, 0x52403125, \
0x1B140E0A, 0x07040302, 0x01000000, 0x00000000, \
0x00000103, 0x0407080A, 0x0E101417, 0x1C222931, \
0x3C49596C, 0x819AB6D5, 0xF2FEFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFDE8, 0xC6A4866B, 0x55423327, \
0x1C150E0B, 0x08050301, 0x00000000, 0x00000000, \
0x00000205, 0x06080A0C, 0x0F121417, 0x1A1F242B, \
0x333D4A5A, 0x6D85A1C1, 0xE3FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF6D8, 0xB5967C64, 0x51403227, \
0x1D16100C, 0x09060403, 0x01000000, 0x00000000, \
0x00000103, 0x04050708, 0x090B0C0E, 0x11141921, \
0x28323E4E, 0x627A96B7, 0xDEFBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDEDCA, 0xA6876D56, 0x43352920, \
0x19130E0B, 0x08050403, 0x01000000, 0x00000000, \
0x00000001, 0x01030304, 0x0507080A, 0x0C10151B, \
0x222D3A49, 0x5D7798BF, 0xE4FBFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFCEAC1, 0x9A7D644E, 0x3B2D2119, \
0x120D0906, 0x05040201, 0x00000000, 0x00000000, \
0x00000000, 0x00010102, 0x03050708, 0x0B0E1319, \
0x202B384A, 0x6180A3C0, 0xD4EAF7FC, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFBF9EFD2, 0x9E755A46, 0x35281D15, \
0x0F0A0604, 0x03020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03040708, 0x0A0C1118, \
0x212D3C52, 0x6E8694A7, 0xC4D5DAE8, 0xFAFFFFFE, \
0xFFFDFEF8, 0xE3D0C8D5, 0xBE87593F, 0x2F231A13, \
0x0D090503, 0x01010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x02040507, 0x0A0D131B, \
0x2635485B, 0x666D7E9A, 0xABADB7CD, 0xEEF7F7F6, \
0xF7F1EEE3, 0xC7B09EA1, 0xAEA27347, 0x2D1F1610, \
0x0B080503, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x01030508, 0x0C101722, \
0x303E4849, 0x4E627A84, 0x838A9BB6, 0xE2D7D6D4, \
0xD5CECACA, 0xAF958274, 0x75848565, 0x3C22150E, \
0x09070403, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0304070A, 0x0E16202C, \
0x3434333B, 0x4D606461, 0x657285A5, 0xD3B0B0AF, \
0xB1AAA5AD, 0x997F6B5D, 0x514F616B, 0x5A371D0F, \
0x08050301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x03060A0E, 0x161E2527, \
0x25242C3E, 0x4B4C4749, 0x525E7299, 0xB390908F, \
0x908A8387, 0x846E584A, 0x40363646, 0x554D341C, \
0x0C050201, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000103, 0x060A1016, 0x1C1D1B17, \
0x1A24333B, 0x39333339, 0x4350699A, 0x8D737472, \
0x736E6767, 0x6E5E4C3D, 0x322B2424, 0x32424331, \
0x1A0B0401, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000206, 0x0B0F1517, 0x15121013, \
0x1D292E2A, 0x2423282F, 0x37456790, 0x665A5A59, \
0x5A58514F, 0x56504032, 0x27211D18, 0x17233135, \
0x2B1A0B03, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00010409, 0x0F11110E, 0x0B0C0F18, \
0x2123201A, 0x171B1F26, 0x2E3F6975, 0x4A474645, \
0x46443E3C, 0x3F433529, 0x20191512, 0x0E0F1824, \
0x2B26190C, 0x04010000, 0x00000000, 0x00000000, \
0x00000000, 0x0003070A, 0x0C0B0907, 0x080E151B, \
0x1C171311, 0x1115191E, 0x27406A53, 0x36393534, \
0x3534302D, 0x2E352D23, 0x1B140F0D, 0x0B09090F, \
0x1B212017, 0x0C040100, 0x00000000, 0x00000000, \
0x00000000, 0x01030606, 0x06050506, 0x0C121615, \
0x120D0B0B, 0x0D111519, 0x24445C36, 0x282D2827, \
0x28282422, 0x2127271D, 0x15100B09, 0x08070505, \
0x0A121A1A, 0x150C0501, 0x00000000, 0x00000000, \
0x00000000, 0x00010201, 0x01020409, 0x0F12110D, \
0x0A080809, 0x0C0D1116, 0x26494422, 0x1E221D1D, \
0x1E1E1A18, 0x171B2119, 0x120D0906, 0x05050402, \
0x02060D13, 0x15110B04, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x0003080D, 0x0E0C0A07, \
0x05050507, 0x090A0E16, 0x2E482A15, 0x181A1615, \
0x17171411, 0x10121A17, 0x100B0704, 0x03030301, \
0x00010308, 0x0D0F0D07, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x0105080A, 0x09070503, \
0x03030405, 0x06080D19, 0x353E180E, 0x1212100F, \
0x10110F0D, 0x0C0C1114, 0x0E090603, 0x01010000, \
0x00000001, 0x04080A08, 0x04010000, 0x00000000, \
0x00000000, 0x00000000, 0x02050605, 0x04030101, \
0x01010304, 0x05070D1E, 0x392D0E0B, 0x0E0D0B0B, \
0x0C0D0B09, 0x08080A11, 0x0D080503, 0x01000000, \
0x00000000, 0x01020405, 0x03010000, 0x00000000, \
0x00000000, 0x00000000, 0x01020302, 0x01000000, \
0x00000103, 0x04070E23, 0x341B0809, 0x0B090808, \
0x08090705, 0x0505060C, 0x0C070503, 0x00000000, \
0x00000000, 0x00000101, 0x01000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03071227, 0x280F0608, 0x09070605, \
0x06070504, 0x03030407, 0x0A070401, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x03091827, 0x19070407, 0x07050404, \
0x04050403, 0x01010104, 0x07070301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x030B1D23, 0x0D020204, 0x04030303, \
0x03040301, 0x00000001, 0x04060301, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x040F1E1C, 0x07010103, 0x02010001, \
0x01010100, 0x00000000, 0x02040300, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06121B11, 0x03000001, 0x01000000, \
0x00000000, 0x00000000, 0x00010100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08131409, 0x01000001, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x08110D03, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x080D0601, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x06080200, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x02020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B103B8: .word \
0xFFF9FFF9, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0007FFF9, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00070007, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFF90007, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80B103F8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B0F3B8
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00098260, 0xF2000000, 0x000FC0FC, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184B50, \
0xD9F0FBFF, 0x00000000, 0xDF000000, 0x00000000
var_80B10468: .word 0x01004008
.word var_80B103B8
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B10480: .word \
0xFF9C0000, 0xFF9C0000, 0x00000800, 0xFFFFFFFF, \
0x00640000, 0xFF9C0000, 0x08000800, 0xFFFFFFFF, \
0x00640000, 0x00640000, 0x08000000, 0xFFFFFFFF, \
0xFF9C0000, 0x00640000, 0x00000000, 0xFFFFFFFF
var_80B104C0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xDF000000, 0x00000000
var_80B104E0: .word \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80B10480
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B10510: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00FFFFFF, 0xFFC9A47C, 0x376C91A9, 0xB7ACA194, \
0x633E3950, 0x5651473C, 0x352F2A24, 0x1E160800, \
0x00FFFFFF, 0xFFFFF8EF, 0xDDC8C0B5, 0xA99B8C7B, \
0x6B5D5146, 0x3C342922, 0x1C16110E, 0x0B080300, \
0x00FFFFFF, 0xFFFFFFF8, 0xE5D5CEC7, 0xBFB7ADA2, \
0x978B7D6F, 0x62574D36, 0x2D251D16, 0x110C0400, \
0x00FFFFFF, 0xFEFDF2E0, 0xD5CABEB0, 0x9F92877C, \
0x71625043, 0x382E261E, 0x17120F0C, 0x0A080300, \
0x00FFFFFF, 0xF9F7EBDA, 0xD0C6BBAF, 0x93898078, \
0x6E64594F, 0x443B322A, 0x231C1713, 0x100E0500, \
0x00FFFFF9, 0xF3EADFD3, 0xC9C0B8AF, 0xB6AFAAA3, \
0x9B938A80, 0x765E5147, 0x3E342C24, 0x1B170800, \
0x00FFF5F0, 0xEEE8E6DF, 0xD7CFBEAF, 0xA79F9991, \
0x897F7465, 0x574D4339, 0x31281D16, 0x100C0400, \
0x00EDE7E3, 0xE0DCD7D5, 0xCEC7BFAF, 0xA79E958B, \
0x81786C61, 0x483D342D, 0x27211C18, 0x130C0400, \
0x00DCDBD8, 0xD7D3CEC6, 0xB5A99E94, 0x8A7F746A, \
0x5F544A44, 0x3F362D26, 0x201A1512, 0x0E0A0300, \
0x00D6D2CE, 0xCDC4BEBC, 0xADA2998F, 0x857A6F64, \
0x564C4540, 0x3C332A23, 0x1E191410, 0x0D090300, \
0x00D0C9C6, 0xC6C5C1B7, 0xB2ABA49C, 0x958D8581, \
0x7A72655A, 0x4F444239, 0x312A241D, 0x17120600, \
0x00C5C1BF, 0xBFBDBAB9, 0xBCBAB5B0, 0xA9A49D98, \
0x96918C84, 0x7C756B5C, 0x4E403222, 0x0D060302, \
0x00B9B5B3, 0xB9B8B0AA, 0xA49E978E, 0x88817A73, \
0x6C645C53, 0x4840362E, 0x261E1609, 0x00000000, \
0x00B2AFAF, 0xA69E958C, 0x87837772, 0x6D685E54, \
0x4A413A34, 0x2F2B2822, 0x1C151007, 0x00000000, \
0x009EA2A4, 0x9F999087, 0x817E706B, 0x6660554B, \
0x433B342E, 0x2A27241E, 0x19141007, 0x00000000, \
0x00979B9E, 0xA0A09E98, 0x95918B83, 0x7C736F6A, \
0x62584F46, 0x3D352D25, 0x1F191408, 0x00000000, \
0x00959797, 0x98979694, 0x8D88837A, 0x77726C69, \
0x5E55483C, 0x322A221B, 0x16110C05, 0x00000000, \
0x008A9091, 0x9291918B, 0x7F787066, 0x584D443D, \
0x37332C24, 0x1D17110C, 0x08050302, 0x00000000, \
0x00838787, 0x87858481, 0x7D786F67, 0x5E574F48, \
0x403A3333, 0x2B231B15, 0x100A0502, 0x00000000, \
0x00787D7D, 0x7C7B7771, 0x655E554C, 0x443D3731, \
0x2B27231E, 0x1914100C, 0x09060200, 0x00000000, \
0x0070716F, 0x6E6C6A66, 0x5C554C43, 0x3A332D27, \
0x211C1917, 0x130F0C08, 0x06040100, 0x00000000, \
0x00686867, 0x66656463, 0x5F5D5952, 0x4A45403B, \
0x332A231D, 0x1814100C, 0x07020000, 0x00000000, \
0x00626262, 0x62626262, 0x5F5E5B5A, 0x56524E49, \
0x433B352E, 0x27201911, 0x08000000, 0x00000000, \
0x004C4C4A, 0x48464543, 0x42413F38, 0x342F2A23, \
0x1A15110B, 0x07040302, 0x01000000, 0x00000000, \
0x00595C5C, 0x5A595652, 0x4D423C38, 0x332D261E, \
0x16100804, 0x03020100, 0x00000000, 0x00000000, \
0x00595B5C, 0x5C5B5A58, 0x55514B45, 0x3F32261F, \
0x18120803, 0x02020100, 0x00000000, 0x00000000, \
0x00585A59, 0x544C4742, 0x3D383129, 0x20170E07, \
0x03020100, 0x00000000, 0x00000000, 0x00000000, \
0x0032322D, 0x25201C18, 0x150E0C09, 0x07050402, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x003A3C3A, 0x3733302D, 0x2A251F1A, 0x17100A04, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00333232, 0x302B2723, 0x211C1713, 0x0F0C0703, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B10910: .word \
0x01234567, 0x77777887, 0x76655554, 0x33211000, \
0x12345788, 0x88877787, 0x76655555, 0x43221100, \
0x12356899, 0x98877787, 0x76655555, 0x44332211, \
0x22356899, 0x98777787, 0x76555555, 0x55554322, \
0x22346788, 0x87777887, 0x65444566, 0x77776532, \
0x12246777, 0x77778887, 0x54444568, 0x9AA98642, \
0x11245667, 0x77788876, 0x4333468A, 0xCDDB9642, \
0x11234566, 0x67788865, 0x333457AD, 0xEFEC9642, \
0x11234455, 0x67888764, 0x333469CE, 0xFFEC9531, \
0x11233445, 0x67888754, 0x33357BEF, 0xFFEB7421, \
0x11233445, 0x78998764, 0x33458CEF, 0xFEC96311, \
0x11234456, 0x799A9875, 0x44469DFF, 0xFDA74210, \
0x12344567, 0x9ABCBA87, 0x5567ADFF, 0xEB853111, \
0x23456778, 0xABDEDCA8, 0x7679CEFE, 0xC9642111, \
0x45677889, 0xACEFFECA, 0x99ABEFFD, 0xA7532123, \
0x56788899, 0xABDEFFEC, 0xBBCEFFEB, 0x96432234, \
0x77888888, 0x9ABDFFFE, 0xEEEFFFDA, 0x75433456, \
0x77776666, 0x789CEFFF, 0xFFFFFEC9, 0x75444567, \
0x76655445, 0x568ADFFF, 0xFFFFEDA8, 0x76556777, \
0x65443333, 0x4579CDEE, 0xDEEEDB98, 0x76677887, \
0x54322222, 0x3579BCCC, 0xCCCCCA98, 0x77788876, \
0x43211112, 0x3568AABA, 0xABBBA987, 0x77788775, \
0x42110011, 0x34689AAA, 0xABAA9876, 0x66777765, \
0x32100001, 0x24679AAA, 0xBAA98766, 0x56677765, \
0x31000001, 0x235789AA, 0xBA987654, 0x45566665, \
0x21000000, 0x134689AA, 0xA9876543, 0x33456654, \
0x20000000, 0x1245789A, 0x98765432, 0x23345553, \
0x10000000, 0x01356899, 0x87654322, 0x22344542, \
0x00000000, 0x01346888, 0x87554322, 0x22233331, \
0x00000001, 0x12346788, 0x76544322, 0x22222211, \
0x00001122, 0x23457788, 0x76554432, 0x22221110, \
0x00112344, 0x55667888, 0x76555443, 0x32211000
var_80B10B10: .word \
0x4E200FA0, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0x4E20F060, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x46500FA0, 0x00000000, 0x039A0000, 0xFFFFFFFF, \
0x4650F060, 0x00000000, 0x039A0400, 0xFFFFFFFF, \
0x3E800FA0, 0x00000000, 0x03330000, 0xFFFFFFFF, \
0x3E80F060, 0x00000000, 0x03330400, 0xFFFFFFFF, \
0x36B00FA0, 0x00000000, 0x02CD0000, 0xFFFFFFFF, \
0x36B0F060, 0x00000000, 0x02CD0400, 0xFFFFFFFF, \
0x2EE00FA0, 0x00000000, 0x02660000, 0xFFFFFFFF, \
0x2EE0F060, 0x00000000, 0x02660400, 0xFFFFFFFF, \
0x27100FA0, 0x00000000, 0x02000000, 0xFFFFFFFF, \
0x2710F060, 0x00000000, 0x02000400, 0xFFFFFFFF, \
0x1F400FA0, 0x00000000, 0x019A0000, 0xFFFFFFFF, \
0x1F40F060, 0x00000000, 0x019A0400, 0xFFFFFFFF, \
0x17700FA0, 0x00000000, 0x01330000, 0xFFFFFFFF, \
0x1770F060, 0x00000000, 0x01330400, 0xFFFFFFFF, \
0x0FA00FA0, 0x00000000, 0x00CD0000, 0xFFFFFFFF, \
0x0FA0F060, 0x00000000, 0x00CD0400, 0xFFFFFFFF, \
0x07D00FA0, 0x00000000, 0x00660000, 0xFFFFFFFF, \
0x07D0F060, 0x00000000, 0x00660400, 0xFFFFFFFF, \
0x00000FA0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x0000F060, 0x00000000, 0x00000400, 0xFFFFFFFF
var_80B10C70: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B10510
.word \
0xF5900000, 0x07094250, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00094250, 0xF2000000, 0x0007C07C, \
0xFD900000
.word var_80B10910
.word \
0xF5900100, 0x07017C5F, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF400, 0xE7000000, 0x00000000, \
0xF5800500, 0x01017C5F, 0xF2000000, 0x0107C07C, \
0xFC161A60, 0x350CA37F, 0xE200001C, 0xC81049D8, \
0xD9F1FBFF, 0x00000000, 0xD9FFFFFF, 0x00010000, \
0xFB000000, 0xFFC83280, 0xDE000000, 0x08000000, \
0x0101602C
.word var_80B10B10
.word \
0x06000204, 0x00020604, 0x06040608, 0x00060A08, \
0x06080A0C, 0x000A0E0C, 0x060C0E10, 0x000E1210, \
0x06101214, 0x00121614, 0x06141618, 0x00161A18, \
0x06181A1C, 0x001A1E1C, 0x061C1E20, 0x001E2220, \
0x06202224, 0x00222624, 0x06242628, 0x00262A28, \
0xDF000000, 0x00000000
var_80B10D88: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000106, \
0x07010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000935, \
0x3D0B0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00011F93, \
0xA5290300, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x000D5BDB, \
0xE3731301, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x042FB5F7, \
0xFAC84007, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x147AE7FE, \
0xFFEE931C, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000006, 0x40C8FAFF, \
0xFFFCD854, 0x0A000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000011C, 0x95EFFFFF, \
0xFFFFF3A3, 0x21020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000A54, 0xDBFDFFFF, \
0xFFFFFEDF, 0x600D0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000221A0, 0xF3FFFFFF, \
0xFFFFFFF6, 0xB52D0300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000E60DD, 0xFDFFFFFF, \
0xFFFFFFFE, 0xE7781501, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0432B5F6, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFAC94407, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x1884E9FE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFF09C20, 0x02000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x48D0FBFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFDDE5D, 0x0C000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0000011E, 0x9BF1FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFF5A9, 0x23020000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000B56, 0xDBFDFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFEE0, 0x630F0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x000225A8, 0xF4FFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFF8, 0xBC340400, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x000F69E1, 0xFEFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFE, 0xEA831701, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x0433BCF8, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFBCF4708, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x1985EAFE, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFF19D23, 0x02000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000000A, 0x52D5FCFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFDDF67, 0x0E000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000222, 0xA3EDF8F9, 0xF9F9F9F9, 0xF9F9F9F9, \
0xF9F9F9F9, 0xF9F9F9F9, 0xF9F9F0AF, 0x26020000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000083D, 0xA4BBBCBC, 0xBCBCBCBC, 0xBCBCBCBC, \
0xBCBCBCBC, 0xBCBCBCBC, 0xBCBCBBA6, 0x450A0000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0001113E, 0x36262323, 0x23232323, 0x23232323, \
0x23232323, 0x23232323, 0x23232534, 0x44180300, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0008315C, 0x3A0B0101, 0x01010101, 0x01010101, \
0x01010101, 0x01010101, 0x01010933, 0x5E3B0B00, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x02185269, 0x59200400, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00021852, 0x69592104, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0B3A656B, 0x66430E01, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000B3A65, 0x6B66430E, \
0x01000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000004, \
0x225A6A69, 0x695E2C07, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x04225A6A, 0x69695E2B, \
0x06000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000110, \
0x48676A69, 0x69695118, 0x02000000, 0x00000000, \
0x00000000, 0x00000001, 0x1148676A, 0x696A684D, \
0x12010000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000529, \
0x606A6969, 0x696A6437, 0x09000000, 0x00000000, \
0x00000000, 0x00000007, 0x2F616A69, 0x69696A62, \
0x2F070000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00011149, \
0x686A6969, 0x69696953, 0x18020000, 0x00000000, \
0x00000000, 0x00000215, 0x50686969, 0x69696969, \
0x51180200, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00083161, \
0x6A696969, 0x69696A65, 0x3B0C0100, 0x00000000, \
0x00000000, 0x00000933, 0x626A6969, 0x6969696A, \
0x653B0C01, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x031B5569, \
0x69696969, 0x6969696A, 0x5B250500, 0x00000000, \
0x00000000, 0x00031B54, 0x69696969, 0x69696969, \
0x6A5B2505, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x0C3F666A, \
0x69696969, 0x6969696A, 0x67481001, 0x00000000, \
0x00000000, 0x010C3F66, 0x6A696969, 0x69696969, \
0x6A674810, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000005, 0x245B6A69, \
0x69696969, 0x69696969, 0x6A602E07, 0x00000000, \
0x00000000, 0x05245B6A, 0x69696969, 0x69696969, \
0x696A602D, 0x07000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000111, 0x49686A69, \
0x69696969, 0x69696969, 0x69695119, 0x03000000, \
0x00000002, 0x1349686A, 0x69696969, 0x69696969, \
0x696A684D, 0x14020000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000072D, 0x616A6969, \
0x69696969, 0x69696969, 0x696A653B, 0x0A000000, \
0x00000008, 0x34626A69, 0x69696969, 0x69696969, \
0x69696A63, 0x34080000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0002144C, 0x686A6969, \
0x69696969, 0x69696969, 0x69696A56, 0x1B030000, \
0x00000218, 0x54696969, 0x69696969, 0x69696969, \
0x69696969, 0x541A0300, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00093362, 0x6A696969, \
0x69696969, 0x69696969, 0x69696A65, 0x3D0C0100, \
0x00000935, 0x646A6969, 0x69696969, 0x69696969, \
0x6969696A, 0x653D0C01, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x031D5469, 0x69696969, \
0x69696969, 0x69696969, 0x6969696A, 0x5C250500, \
0x00031D55, 0x69696969, 0x69696969, 0x69696969, \
0x69696969, 0x6A5C2505, 0x00000000, 0x00000000, \
0x00000000, 0x00000001, 0x0E42676A, 0x69696969, \
0x69696969, 0x69696969, 0x6969696A, 0x684A1302, \
0x010E4267, 0x6A696969, 0x69696969, 0x69696969, \
0x69696969, 0x6A684B13, 0x02000000, 0x00000000, \
0x00000000, 0x00000006, 0x285E6A69, 0x69696969, \
0x69696969, 0x69696969, 0x69696969, 0x6A623308, \
0x06285E6A, 0x69696969, 0x69696969, 0x69696969, \
0x69696969, 0x696A6231, 0x08000000, 0x00000000, \
0x00000000, 0x00000212, 0x4C696B6A, 0x6A6A6A6A, \
0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A551A, \
0x154C696B, 0x6A6A6A6A, 0x6A6A6A6A, 0x6A6A6A6A, \
0x6A6A6A6A, 0x6A6A6A50, 0x15020000, 0x00000000, \
0x00000000, 0x00000527, 0x58626261, 0x61616161, \
0x61616161, 0x61616161, 0x61616161, 0x61625D39, \
0x33596262, 0x61616161, 0x61616161, 0x61616161, \
0x61616161, 0x6161625B, 0x2D070000, 0x00000000, \
0x00000000, 0x00000419, 0x292A2A2A, 0x2A2A2A2A, \
0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A23, \
0x22292A2A, 0x2A2A2A2A, 0x2A2A2A2A, 0x2A2A2A2A, \
0x2A2A2A2A, 0x2A2A2A29, 0x1C050000, 0x00000000, \
0x00000000, 0x00000104, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x05050505, 0x05050505, \
0x05050505, 0x05050505, 0x04010000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B11D88: .word \
0xFFFBFFFB, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0x0005FFFB, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0x00050005, 0x00000000, 0x08000000, 0xFFFFFFFF, \
0xFFFB0005, 0x00000000, 0x00000000, 0xFFFFFFFF
var_80B11DC8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B10D88
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5881000, 0x00098260, 0xF2000000, 0x000FC0FC, \
0xFC167E60, 0x350CF37F, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80B11D88
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B11E48: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000011, 0x00000000, 0x00000000, \
0x00000000, 0x00000244, 0x20000000, 0x00000000, \
0x00000000, 0x00002574, 0x10000000, 0x00000000, \
0x00000000, 0x00026A94, 0x00000000, 0x00000000, \
0x00000000, 0x00039FA4, 0x10000000, 0x00000000, \
0x00000000, 0x00039FFD, 0x50000000, 0x00000000, \
0x00000000, 0x000149BF, 0xDA200000, 0x00000000, \
0x00000000, 0x0000259E, 0xFA310000, 0x00000000, \
0x00000000, 0x000015BF, 0x72000000, 0x00000000, \
0x00000000, 0x000039CA, 0x20000000, 0x00000000, \
0x00000000, 0x00005AC3, 0x10000000, 0x00000000, \
0x00000000, 0x00037A40, 0x00000000, 0x00000000, \
0x00000000, 0x00059430, 0x00000000, 0x00000000, \
0x00000000, 0x11279410, 0x00000000, 0x00000000, \
0x00000000, 0x34799300, 0x00000000, 0x00000000, \
0x00000012, 0x46A92100, 0x00000000, 0x00000000, \
0x00000035, 0x9AC70000, 0x00000000, 0x00000000, \
0x0000003A, 0xEDA51000, 0x00000000, 0x00000000, \
0x0000001E, 0xFF700000, 0x00000000, 0x00000000, \
0x00000006, 0x6FF00000, 0x00000000, 0x00000000, \
0x00000000, 0x07FFF000, 0x00000000, 0x00000000, \
0x00000000, 0x0077FF00, 0x00000000, 0x00000000, \
0x00000000, 0x000077FF, 0x00000000, 0x00000000, \
0x00000000, 0x00000099, 0xFF000000, 0x00000000, \
0x00000000, 0x00000000, 0x7CE00000, 0x00000000, \
0x00000000, 0x00000000, 0x047DF000, 0x00000000, \
0x00000000, 0x00000000, 0x0005AEE0, 0x00000000, \
0x00000000, 0x00000000, 0x00001CC9, 0x60000000, \
0x00000000, 0x00000000, 0x00002CC3, 0x31000000, \
0x00000000, 0x00000000, 0x00001CC3, 0x20000000, \
0x00000000, 0x00000000, 0x00001BC2, 0x10000000, \
0x00000000, 0x00000000, 0x00001AC1, 0x00000000, \
0x00000000, 0x00000000, 0x000019B0, 0x00000000, \
0x00000000, 0x00000000, 0x000017A0, 0x00000000, \
0x00000000, 0x00000000, 0x000016A0, 0x00000000, \
0x00000000, 0x00000000, 0x000017A0, 0x00000000, \
0x00000000, 0x00000000, 0x000029B0, 0x00000000, \
0x00000000, 0x00000000, 0x00013CC0, 0x00000000, \
0x00000000, 0x00001111, 0x11124CC0, 0x00000000, \
0x00000000, 0x00012264, 0x22245CC0, 0x00000000, \
0x00000000, 0x000253EE, 0x5499ACC0, 0x00000000, \
0x00000000, 0x0014AAFF, 0xEBCCCCC0, 0x00000000, \
0x00000000, 0x0136EFFF, 0xFFEDCCD0, 0x00000000, \
0x00000000, 0x025AEF00, 0x66111110, 0x00000000, \
0x00000000, 0x147CF000, 0x00000000, 0x00000000, \
0x00000000, 0x37AE0000, 0x00000000, 0x00000000, \
0x00000003, 0x7CEF0000, 0x00000000, 0x00000000, \
0x00000015, 0xAFF00000, 0x00000000, 0x00000000, \
0x0000000A, 0xFFF00000, 0x00000000, 0x00000000, \
0x00000001, 0x2EFFC000, 0x00000000, 0x00000000, \
0x00000000, 0x02CED500, 0x00000000, 0x00000000, \
0x00000000, 0x0017CC50, 0x00000000, 0x00000000, \
0x00000000, 0x000126BA, 0x00000000, 0x00000000, \
0x00000000, 0x0000019D, 0xA0000000, 0x00000000, \
0x00000000, 0x0000001F, 0xCA400000, 0x00000000, \
0x00000000, 0x00000009, 0xEE100000, 0x00000000, \
0x00000000, 0x00000005, 0xDA000000, 0x00000000, \
0x00000000, 0x00000007, 0xFA000000, 0x10000000, \
0x00000000, 0x0000000D, 0xFE000007, 0x50000000, \
0x00000000, 0x0000007F, 0xFFDEEFFF, 0xA1000000, \
0x00000000, 0x000002BF, 0xFD7CBFFF, 0xD5000000, \
0x00000000, 0x00000259, 0x940000FF, 0xF6000000, \
0x00000000, 0x00000112, 0x1000000F, 0xE5000000, \
0x00000000, 0x00000100, 0x0000100F, 0xA0000000, \
0x00000000, 0x00000000, 0x0000000F, 0xA2000000, \
0x00000000, 0x00000000, 0x00000000, 0xC4000000, \
0x00000000, 0x00000000, 0x00000000, 0xE6000000, \
0x00000000, 0x00000000, 0x00000000, 0xFB000000, \
0x00000000, 0x00000000, 0x00000000, 0xFFB00000, \
0x00000000, 0x00000000, 0x00000000, 0xFFF00000, \
0x00000000, 0x00000000, 0x000000FF, 0xFFF00000, \
0x00000000, 0x00000077, 0x700EFFFE, 0x00000000, \
0x00000000, 0x00000777, 0xFEFF0000, 0x00000000, \
0x00000000, 0x000007FF, 0xF9000000, 0x00000000, \
0x00000000, 0x000000FF, 0xF0000000, 0x00000000, \
0x00000000, 0x00000006, 0xF0000000, 0x00000000, \
0x00000000, 0x00000007, 0xFF000000, 0x00000000, \
0x00000000, 0x00000007, 0xF7000000, 0x00000000, \
0x00000000, 0x0000007F, 0xFF000000, 0x00000000, \
0x00000000, 0x000000FF, 0xF0000000, 0x00000000, \
0x00000000, 0x000009FF, 0x70000000, 0x00000000, \
0x00000000, 0x0005CFFF, 0x00000000, 0x00000000, \
0x00000000, 0x00ACEFFF, 0x00000000, 0x00000000, \
0x00000000, 0x039FFFFF, 0x70000000, 0x00000000, \
0x00000000, 0x026EFFFF, 0xF0000000, 0x00000000, \
0x00000000, 0x01CFFFFF, 0xFF000000, 0x00000000, \
0x00000000, 0x013CFF77, 0xFFF00000, 0x00000000, \
0x00000000, 0x002AFF00, 0x7FF00000, 0x00000000, \
0x00000000, 0x0015FE00, 0x77070000, 0x00000000, \
0x00000000, 0x0135F711, 0x007F7000, 0x00000000, \
0x00000000, 0x0017E311, 0x10777700, 0x00000000, \
0x00000000, 0x0017B400, 0x0000FF00, 0x00000000, \
0x00000000, 0x003CC420, 0x00007FF0, 0x00000000, \
0x00000134, 0x344CC200, 0x00000FFF, 0x00000000, \
0x00001DFD, 0xCCCED400, 0x000000FF, 0x00000000, \
0x00003FFF, 0xECBAA000, 0x0000000F, 0xF0000000, \
0x00003FF7, 0x04100000, 0x0000000F, 0xF0000000, \
0x00001DF7, 0x00000000, 0x00000007, 0xFF000000, \
0x000001AC, 0x00000000, 0x0000000B, 0x7FF00000, \
0x00000016, 0x00000000, 0x00000005, 0xFFFF0000, \
0x00000003, 0x9C000000, 0x0000007F, 0xFFF70000, \
0x00000001, 0x4A000000, 0x00000AEF, 0xFA770000, \
0x00000000, 0x16C75100, 0x00000DFF, 0xB0000000, \
0x00000000, 0x16FFC400, 0x00000DFB, 0x90000000, \
0x00000001, 0x4FFFA000, 0x00003EA2, 0x00000000, \
0x00000003, 0xFFF41000, 0x00002E91, 0x00000000, \
0x0000001B, 0xFF420000, 0x00012C93, 0x00000000, \
0x000003EE, 0xC1200000, 0x00012B93, 0x00000000, \
0x000027CA, 0x70000000, 0x00010A93, 0x00000000, \
0x00055593, 0x10000000, 0x00003961, 0x00000000, \
0x00075631, 0x00000000, 0x0000B752, 0x00000000, \
0x00377400, 0x00000000, 0x00003A95, 0x00000000, \
0x00266300, 0x00000000, 0x000039DB, 0x53000000, \
0x00045520, 0x00000000, 0x00011369, 0xF7100000, \
0x00023540, 0x00000000, 0x00000003, 0x7F730000, \
0x00001562, 0x00000000, 0x00000001, 0x6FFFB000, \
0x00000267, 0x10000000, 0x00000000, 0x2FFFF000, \
0x00000036, 0x52000000, 0x00000000, 0x4FFF7000, \
0x00000006, 0x54000000, 0x00000007, 0x9EF70000, \
0x00000001, 0x57500000, 0x00000077, 0xFB000000, \
0x00000001, 0x13900000, 0x000005AB, 0x90000000, \
0x00000000, 0x13400000, 0x00004EE7, 0x00000000, \
0x00000001, 0x34200000, 0x0000BEEC, 0x00000000, \
0x00000002, 0x30000000, 0x0007B9C7, 0x00000000, \
0x00000023, 0x00000000, 0x007AA7BA, 0x70000000, \
0x00000221, 0x00000000, 0x00FFC677, 0xF0000000, \
0x00000211, 0x00000000, 0x07FF320A, 0xF3000000, \
0x00000300, 0x00000007, 0xFFF00103, 0xAA200000, \
0x00000200, 0x00000077, 0xFF000000, 0x59510000, \
0x00000100, 0x0000007F, 0xF0000000, 0x39750000, \
0x00000000, 0x0017CFFF, 0x00000000, 0x05A61000, \
0x00000000, 0x0014EEF7, 0x00000000, 0x03A95100, \
0x00000000, 0x00014DFB, 0x00000000, 0x03556100, \
0x00000000, 0x00015ACA, 0x00000000, 0x12443200, \
0x00000000, 0x00015AC7, 0x00000000, 0x12332100, \
0x00000000, 0x000149AA, 0x00000000, 0x12331000, \
0x00000000, 0x00003677, 0x00000000, 0x12221000, \
0x00000000, 0x00002467, 0x00000001, 0x11110000, \
0x00000000, 0x00001367, 0x20000000, 0x11000000, \
0x00000000, 0x00001357, 0x20000000, 0x00000000, \
0x00000000, 0x00001256, 0x41000000, 0x00000000, \
0x00000000, 0x00012256, 0x41000000, 0x00000000, \
0x00000000, 0x00001134, 0x41000000, 0x00000000, \
0x00000000, 0x00001115, 0x41000000, 0x00000000, \
0x00000000, 0x00010013, 0x31000000, 0x00000000, \
0x00000000, 0x00000003, 0x31000000, 0x00000000, \
0x00000000, 0x00000002, 0x21000000, 0x00000000, \
0x00000000, 0x00000001, 0x22000000, 0x00000000, \
0x00000000, 0x00000001, 0x22100000, 0x00000000, \
0x00000000, 0x00000001, 0x11100000, 0x00000000, \
0x00000000, 0x00000001, 0x11000000, 0x00000000, \
0x00000000, 0x00000001, 0x11000000, 0x00000000, \
0x00000000, 0x00000010, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B12848: .word \
0x0BB88AD0, 0x00000000, 0x04001400, 0xFFFFFFFF, \
0x0BB80000, 0x00000000, 0x04000000, 0xFFFFFFFF, \
0xF4480000, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0xF4488AD0, 0x00000000, 0x00001400, 0xFFFFFFFF
var_80B12888: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B11E48
.word \
0xF5900000, 0x070A0250, 0xE6000000, 0x00000000, \
0xF3000000, 0x074FF400, 0xE7000000, 0x00000000, \
0xF5800400, 0x000A0250, 0xF2000000, 0x0007C27C, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0x0C1849D8, \
0xD9F0FBFF, 0x00000000, 0xFB000000, 0x00FF9BFF, \
0x01004008
.word var_80B12848
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B12910: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000001, 0x00000000, \
0x00000102, 0x01000001, 0x00000000, 0x00000000, \
0x00010000, 0x00000000, 0x00000001, 0x00000000, \
0x00000204, 0x02000101, 0x00000000, 0x00000000, \
0x00010101, 0x00000001, 0x00000001, 0x00000000, \
0x00000307, 0x03010102, 0x00000000, 0x00000000, \
0x01010102, 0x00000002, 0x01010001, 0x00000000, \
0x00010509, 0x04010103, 0x01000000, 0x00000000, \
0x01020202, 0x00000104, 0x03020101, 0x00000000, \
0x0001060C, 0x06010103, 0x01000000, 0x00000000, \
0x02020202, 0x00000206, 0x05040101, 0x00000000, \
0x0001080F, 0x07010103, 0x01000001, 0x00000000, \
0x03030202, 0x00010408, 0x07060201, 0x00000000, \
0x00010911, 0x08010103, 0x01000001, 0x00000001, \
0x04040303, 0x0101050B, 0x0A080301, 0x00000000, \
0x00020B14, 0x0A010103, 0x01000001, 0x00010102, \
0x06060403, 0x0203070D, 0x0C0A0401, 0x00000000, \
0x00030D17, 0x0B020103, 0x01010001, 0x00010205, \
0x09080503, 0x0205090E, 0x0E0D0501, 0x00000000, \
0x01050F18, 0x0C020102, 0x01010001, 0x00010408, \
0x0D0B0502, 0x03070B0F, 0x0F0F0601, 0x00000000, \
0x02081219, 0x0D030102, 0x00010001, 0x0001050B, \
0x130F0702, 0x04080B0F, 0x10110801, 0x00000000, \
0x030C1419, 0x0E040101, 0x00010001, 0x0001070F, \
0x19140A03, 0x05090B0E, 0x10130A02, 0x00000001, \
0x05121719, 0x0E040100, 0x00010102, 0x01020A13, \
0x1F1A0F06, 0x06090A0C, 0x10150B03, 0x01000001, \
0x08181B19, 0x0F050201, 0x01020102, 0x02040D18, \
0x2721140A, 0x080A0A0C, 0x11160D04, 0x02020001, \
0x0B1E1E19, 0x10070403, 0x02030202, 0x0408111D, \
0x2F2A1B0F, 0x0A0B0B0D, 0x12180F06, 0x04040101, \
0x0E242119, 0x11090606, 0x04040304, 0x070C1623, \
0x38322214, 0x0E0D0E10, 0x141A1108, 0x06060102, \
0x112A241A, 0x120B0909, 0x06050507, 0x0B111C29, \
0x413B291B, 0x13101216, 0x181B1209, 0x08080304, \
0x152F271B, 0x140E0C0C, 0x0907080B, 0x10172230, \
0x4A433223, 0x1813161D, 0x1D1E140B, 0x0A0A0608, \
0x1A342B1E, 0x17110F0F, 0x0C0B0D11, 0x171F2A38, \
0x534C3B2B, 0x1E161C25, 0x2221160D, 0x0B0C0A0E, \
0x21393023, 0x1B151211, 0x0F0F1217, 0x1E273240, \
0x5C564534, 0x251B242F, 0x2924190F, 0x0E0E0F17, \
0x293E372B, 0x21181513, 0x1113181E, 0x26303B48, \
0x655F4E3E, 0x2D222D3A, 0x30271C13, 0x11111520, \
0x32453F35, 0x281D1714, 0x14181E25, 0x2F3A4551, \
0x6F695746, 0x362B3744, 0x372A1F17, 0x15151D2A, \
0x3D4D483F, 0x31231A14, 0x171E252E, 0x38444F5B, \
0x7974614F, 0x4036404C, 0x3C2D231D, 0x1A1A2637, \
0x4957524A, 0x3A2A1D15, 0x1A252E37, 0x43505B66, \
0x837F6C59, 0x4A414750, 0x3F2E2723, 0x21213245, \
0x57625D54, 0x43312216, 0x1F2D3741, 0x4D5B6671, \
0x8E8B7662, 0x544B4D51, 0x3F302C2C, 0x2B2D4054, \
0x656D675E, 0x4C3A281A, 0x2536414B, 0x5867717B, \
0x9896816C, 0x5E545150, 0x3F323337, 0x383C5063, \
0x71777168, 0x56432F21, 0x2C3F4B56, 0x63727C86, \
0xA2A08B76, 0x685D5651, 0x3F343A43, 0x484D5F70, \
0x7D827B71, 0x5F4C3829, 0x34465462, 0x6F7C8690, \
0xACA99581, 0x72655B53, 0x42394450, 0x585E6D7C, \
0x878C8479, 0x68574334, 0x3D4E5E6E, 0x7B88919A, \
0xB4B09E8C, 0x7C6E6155, 0x46414F5F, 0x676E7B87, \
0x92958C80, 0x71625041, 0x4857697A, 0x86929BA3, \
0xBBB7A796, 0x86776658, 0x4D4B5C6E, 0x777D8791, \
0x9C9F9487, 0x7A6D5C4F, 0x54617486, 0x919CA4AB, \
0xC2BBAFA1, 0x907F6C5D, 0x55576A7E, 0x8589929A, \
0xA5A99D90, 0x8478695E, 0x5F697F93, 0x9DA6ACB2, \
0xC8BFB6AC, 0x9A877465, 0x6064788D, 0x92949BA1, \
0xADB2A89C, 0x8F83766C, 0x6A718AA1, 0xA9AFB2B8, \
0xCEC3BDB6, 0xA4907E70, 0x6C72879B, 0x9C9CA2A8, \
0xB5BBB3A9, 0x9B8E8279, 0x737693AE, 0xB4B6B9BE, \
0xD5C9C5BF, 0xAF9C8B7E, 0x7A8094A5, 0xA4A0A7B0, \
0xBDC5C0B7, 0xA8998E85, 0x7B7B9AB7, 0xBDBEC0C5, \
0xDBCFCCC8, 0xBAA9998E, 0x898E9FAD, 0xA8A1ACB8, \
0xC6CECCC5, 0xB6A4988F, 0x8381A0BE, 0xC4C6C8CD, \
0xE0D4D3D1, 0xC5B7A89D, 0x989CA8B3, 0xABA2B0C0, \
0xCED8D8D2, 0xC2AEA298, 0x8C89A6C3, 0xCACED1D5, \
0xE5DBDAD8, 0xD0C4B6AB, 0xA6A8B1B8, 0xAEA4B5C7, \
0xD6E0E3DE, 0xCDB7ABA2, 0x9590ACC9, 0xD0D5D9DC, \
0xEBE1E0DE, 0xDAD1C4B9, 0xB2B2B8BC, 0xB1A7B9CE, \
0xDEE8ECE8, 0xD6BDB3AC, 0x9E98B3CE, 0xD6DBE0E3, \
0xF0E9E6E3, 0xE3DDD2C6, 0xBCBABEC0, 0xB4AABED5, \
0xE5EFF3F0, 0xDDC2BBB6, 0xA79FB9D4, 0xDCE2E7E9, \
0xF5F0ECE7, 0xEAE8DED2, 0xC6C1C2C3, 0xB7ADC4DD, \
0xEBF3F8F5, 0xE1C6C2C1, 0xB1A7BFD8, 0xE1E7EDF0, \
0xF9F5F1EB, 0xF0F0E9DD, 0xCFC7C7C6, 0xBBB1CBE5, \
0xF0F5FBF7, 0xE3CACACC, 0xBBB0C5DC, 0xE5ECF4F6, \
0xFCF9F5EE, 0xF5F7F0E7, 0xD7CDCCCB, 0xBFB7D2EB, \
0xF4F7FBF6, 0xE4CDD2D6, 0xC6B9CBE0, 0xE9F1F9FB, \
0xFDFCF8F2, 0xF9FAF6EE, 0xDFD5D3D0, 0xC5BDD9F0, \
0xF7F9FBF4, 0xE5D0D9E0, 0xD1C2D2E4, 0xEDF5FCFE, \
0xFEFDFAF4, 0xFBFCF9F3, 0xE6DDDAD7, 0xCBC3DEF4, \
0xFAFBFCF3, 0xE5D3DEE8, 0xDBCDDAE9, 0xF2F8FEFF, \
0xFEFDFCF6, 0xFCFDFCF7, 0xECE4E2DF, 0xD2C9E3F7, \
0xFCFDFBF3, 0xE5D6E4EF, 0xE3D6E1EE, 0xF6FAFEFF, \
0xFEFDFDF8, 0xFCFDFDFA, 0xF1EAE9E7, 0xD9CFE7F9, \
0xFEFEFBF3, 0xE7DBE9F4, 0xEBDFE8F3, 0xF9FCFFFF, \
0xFEFDFDFA, 0xFDFDFEFC, 0xF5EFEFEE, 0xE0D5ECFB, \
0xFFFEFBF3, 0xE9E1EEF8, 0xF0E6EEF6, 0xFCFDFFFF, \
0xFEFDFEFC, 0xFEFDFEFE, 0xF8F4F4F3, 0xE7DDF1FD, \
0xFFFEFBF3, 0xECE7F3FC, 0xF5ECF2F9, 0xFDFEFFFF, \
0xFEFDFFFE, 0xFFFDFEFE, 0xFAF7F8F7, 0xEDE5F5FE, \
0xFFFEFBF5, 0xF0EDF7FD, 0xF9F1F5FA, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFCFAFAFA, 0xF2ECF8FE, \
0xFFFEFCF7, 0xF4F3FAFE, 0xFBF6F8FB, 0xFEFFFFFF, \
0xFEFDFFFF, 0xFFFEFEFF, 0xFDFCFCFC, 0xF7F2FBFF, \
0xFFFEFCFA, 0xF8F7FCFF, 0xFEFAFBFC, 0xFFFFFFFF, \
0xFEFEFFFF, 0xFFFFFFFF, 0xFEFDFEFD, 0xFAF7FCFF, \
0xFFFEFDFC, 0xFCFBFDFF, 0xFFFDFDFD, 0xFFFFFFFF, \
0xFFFEFFFF, 0xFFFFFFFF, 0xFFFEFEFE, 0xFCFAFDFF, \
0xFFFEFEFE, 0xFEFDFEFF, 0xFFFFFEFD, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFDFCFEFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFE, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFEFEFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF
var_80B13110: .word \
0xF2FBFFF8, 0xE2290000, 0x28000800, 0xFFFFFFFF, \
0xF2FB0EEF, 0xE2290000, 0x28000000, 0xFFFFFFFF, \
0x03ED0EEF, 0xDF4E0000, 0x24000000, 0xFFFFFFFF, \
0x03EDFFF8, 0xDF4E0000, 0x24000800, 0xFFFFFFFF, \
0xE5BCFFF8, 0xED1C0000, 0x2C000800, 0xFFFFFFFF, \
0xE5BC0EEF, 0xED1C0000, 0x2C000000, 0xFFFFFFFF, \
0xDFBBFFF8, 0xFD360000, 0x30000800, 0xFFFFFFFF, \
0xDFBB0EEF, 0xFD360000, 0x30000000, 0xFFFFFFFF, \
0xE297FFF8, 0x0E280000, 0x04000800, 0xFFFFFFFF, \
0xE2970EEF, 0x0E280000, 0x04000000, 0xFFFFFFFF, \
0xDFBB0EEF, 0xFD360000, 0x00000000, 0xFFFFFFFF, \
0xDFBBFFF8, 0xFD360000, 0x00000800, 0xFFFFFFFF, \
0xED89FFF8, 0x1B680000, 0x08000800, 0xFFFFFFFF, \
0xED890EEF, 0x1B680000, 0x08000000, 0xFFFFFFFF, \
0xFDA3FFF8, 0x21680000, 0x0C000800, 0xFFFFFFFF, \
0xFDA30EEF, 0x21680000, 0x0C000000, 0xFFFFFFFF, \
0x0E96FFF8, 0x1E8D0000, 0x10000800, 0xFFFFFFFF, \
0x0E960EEF, 0x1E8D0000, 0x10000000, 0xFFFFFFFF, \
0x1BD5FFF8, 0x139B0000, 0x14000800, 0xFFFFFFFF, \
0x1BD50EEF, 0x139B0000, 0x14000000, 0xFFFFFFFF, \
0x21D5FFF8, 0x03800000, 0x18000800, 0xFFFFFFFF, \
0x21D50EEF, 0x03800000, 0x18000000, 0xFFFFFFFF, \
0x1EFAFFF8, 0xF28E0000, 0x1C000800, 0xFFFFFFFF, \
0x1EFA0EEF, 0xF28E0000, 0x1C000000, 0xFFFFFFFF, \
0x1408FFF8, 0xE54E0000, 0x20000800, 0xFFFFFFFF, \
0x14080EEF, 0xE54E0000, 0x20000000, 0xFFFFFFFF
var_80B132B0: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B12910
.word \
0xF5900000, 0x07058452, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00058452, 0xF2000000, 0x0007C0FC, \
0xFD900000, 0x04033130, 0xF5900100, 0x07014450, \
0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, \
0xE7000000, 0x00000000, 0xF5880900, 0x01014450, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x350CE37F, \
0xE200001C, 0xC81049D8, 0xD9F1FBFF, 0x00000000, \
0xD9FFFFFF, 0x00010000, 0xDE000000, 0x08000000, \
0x0101A034
.word var_80B13110
.word \
0x06000204, 0x00000406, 0x06080A02, 0x00080200, \
0x060C0E0A, 0x000C0A08, 0x06101214, 0x00101416, \
0x06181A12, 0x00181210, 0x061C1E1A, 0x001C1A18, \
0x0620221E, 0x00201E1C, 0x06242622, 0x00242220, \
0x06282A26, 0x00282624, 0x062C2E2A, 0x002C2A28, \
0x0630322E, 0x00302E2C, 0x06060432, 0x00063230, \
0xDF000000, 0x00000000
var_80B133D0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000001, \
0x00000000, 0x00000000, 0x00000001, 0x01000000, \
0x00000102, 0x02010000, 0x00000001, 0x01010202, \
0x00000000, 0x00000000, 0x00000202, 0x02000000, \
0x01010205, 0x07050200, 0x00000001, 0x01010304, \
0x02010000, 0x00000000, 0x00000305, 0x04010001, \
0x05030307, 0x0A090401, 0x00000101, 0x01020206, \
0x05030200, 0x00000000, 0x01010408, 0x08030003, \
0x08080607, 0x09090602, 0x01000001, 0x01010104, \
0x05060603, 0x02010002, 0x0505060A, 0x0C080404, \
0x07090707, 0x06050709, 0x07010000, 0x01010101, \
0x05080B0A, 0x06020205, 0x090A0A0C, 0x0F0E0A05, \
0x05080905, 0x05040810, 0x10060000, 0x00010102, \
0x050A1113, 0x0E080608, 0x0A0C0D10, 0x1514120D, \
0x0E0C0D0B, 0x09080B15, 0x190F0402, 0x01000308, \
0x0A0F161A, 0x180F0A0A, 0x0A0B0B12, 0x191B2A20, \
0x221B1F1B, 0x1815141C, 0x22170806, 0x03030611, \
0x1A1F201E, 0x1C140E0E, 0x0D0E0F11, 0x181D2F3D, \
0x3F333532, 0x2C261F24, 0x2E230F0D, 0x0A090E18, \
0x242E2D24, 0x1B141010, 0x11161813, 0x1618274A, \
0x4E464948, 0x42383030, 0x39311712, 0x16151F24, \
0x2331362A, 0x1B111013, 0x191D201C, 0x1E273145, \
0x4F51565B, 0x584C4140, 0x4A3F1C14, 0x1E202D32, \
0x242B3631, 0x22140F14, 0x1D23221D, 0x273C4A4E, \
0x675F636D, 0x70645452, 0x564C2616, 0x2D363842, \
0x38333F3F, 0x35241817, 0x242C2A25, 0x2F4F656C, \
0x948A7E81, 0x887D6A63, 0x60583B2F, 0x4454575F, \
0x5B555C5E, 0x56493E34, 0x39414644, 0x49627089, \
0xBBBAA89B, 0x9B917A70, 0x67595152, 0x677A8184, \
0x857F7A7C, 0x756D6A63, 0x5C5D626E, 0x767F8795, \
0xC4D1CABB, 0xB5A68C82, 0x7D706B76, 0x8B969DA7, \
0xAEA69592, 0x928C8B8A, 0x857D8094, 0xA5AAA8A5, \
0xC4CEC9C7, 0xC2B69E94, 0x948F8991, 0x9EA4A9B7, \
0xBEBDAFA2, 0xA2A49F9A, 0x99959BB7, 0xC9CECAC4, \
0xD7CDC8C8, 0xCBC8B6AB, 0xAAAAA7A0, 0xA0A2ACBD, \
0xC6CCC9BD, 0xB4BAB6A8, 0xA3A3AECF, 0xE3E4E0DE, \
0xE6DBD4CE, 0xD0D0C6BA, 0xB6B6B3A7, 0x9FA7B4C7, \
0xD5D7D8D3, 0xC9C9CDBF, 0xB1B2BED9, 0xF2ECE3E5, \
0xECEAE1DA, 0xDBDDD7CB, 0xC2BFBCB4, 0xADB4C4D7, \
0xE4E7E4DD, 0xD6D6E0DC, 0xC7BABFD4, 0xE9E8DFE2, \
0xF0F4EDE8, 0xE6E7E7DD, 0xCFC9CAC9, 0xC8CEDCEA, \
0xF3F6F1E7, 0xE0DEE3E7, 0xDAC2C3D6, 0xE4E8E3E5, \
0xF7FBF8F1, 0xECEAEFEB, 0xDFDCDDE0, 0xE2E4E7EF, \
0xF7FCFAF4, 0xEFE9E5E7, 0xE2CDC8D7, 0xE5E9EAEE, \
0xFDFEFCF7, 0xF1EBEDF0, 0xE9E8EDF1, 0xF3F0EEF0, \
0xF5FBFBF8, 0xF7F3E9E2, 0xDDD6D3E1, 0xEBEBEBF4, \
0xFCFEFEFC, 0xF6F0F1F4, 0xEDEAF3FA, 0xFCF5EBEA, \
0xF0F8F8F6, 0xF7F6EEE6, 0xE2E0E4ED, 0xEDE9E1EE, \
0xFAFFFDFD, 0xFAF7F7F7, 0xF2EFF6FB, 0xFBF2E1DF, \
0xEEF8F6F2, 0xF4F6F2EE, 0xEAE7ECF2, 0xEEE6E0E5, \
0xF6FCFCFD, 0xFDFCFCF9, 0xF2F0F5FA, 0xFAF3DED8, \
0xE8F7F7F3, 0xF4F8F7F6, 0xF2EEEEF0, 0xECE5E2E5, \
0xF8FBF5F7, 0xFAFBFAF5, 0xEBE7F4FC, 0xFAF6E8DD, \
0xE8F8FCF8, 0xF8F9FAFA, 0xF9F4EEE9, 0xE4DFE0E9, \
0xF9FAF1EE, 0xF2F5F7F5, 0xEBE1EDFB, 0xFBFAF5EF, \
0xF4FCFEFD, 0xFBF8F8FB, 0xFBF7F2EA, 0xE4DCD8E5, \
0xF6FBF0EA, 0xECEFF3F2, 0xEDE5EAF9, 0xFDFCFDFC, \
0xFCFDFDFC, 0xF9F5F7FA, 0xFCF9F6F2, 0xEBE0D6E1, \
0xEDF9F5EE, 0xEDEEF0F0, 0xEEEBEFFA, 0xFEFEFFFC, \
0xF9F6F8FB, 0xFAF7F6FA, 0xFDFDFBFA, 0xF7E8DCDB, \
0xECF7F9F4, 0xF3F1F0EF, 0xECECF3FC, 0xFEFEFEF9, \
0xF1EDEEF7, 0xFBFAF9FC, 0xFEFEFDFC, 0xFBF3DFE0, \
0xF0F5FBFA, 0xF7F3F3F4, 0xF1EFF2F8, 0xFAFCFEFA, \
0xF1EAE7F0, 0xFAFEFDFE, 0xFFFEFEFD, 0xFDFBE7E9, \
0xF6FBFDFB, 0xF8F3F2F7, 0xF9F4EFF0, 0xF3F6FBFB, \
0xF5EEEDF0, 0xFAFFFFFF, 0xFEFDFDFE, 0xFEFDF7F0, \
0xF9FDFCFA, 0xF5ECEAF4, 0xFCF8ECE8, 0xEBEFF7FC, \
0xF8F6F7F6, 0xF9FCFEFD, 0xFBFAF8FB, 0xFEFFFEF7, \
0xF3FAFCF7, 0xEFE4E1EA, 0xF7F8EBE1, 0xE4EAEDF5, \
0xF6F3F7F8, 0xF7F9FAF9, 0xF5F3F1F0, 0xF4FBFFFA, \
0xECEEF6F4, 0xECE1DBE1, 0xEFF5EDE0, 0xE0E2E0E6, \
0xEDEBEFF2, 0xF3F6F6F5, 0xEEECEDE6, 0xE2EEFEFA, \
0xEAE3E6E6, 0xE5E2DEDF, 0xE7EDE7DD, 0xDBDDD8DA, \
0xE5E6E8ED, 0xEEF2F4EF, 0xE3D9DFE4, 0xDDE2F7FB, \
0xF2E5D8D2, 0xD4DDE3DB, 0xD7DCDCD4, 0xCFD1D5DC, \
0xE6E7E8E8, 0xE5E9EBE3, 0xD1C5CEE0, 0xE2E2F3FD, \
0xF8EAD6C2, 0xC1CDDCD7, 0xC5BFC4C1, 0xB7B9CCE7, \
0xF0EDE2DD, 0xD8D4D7CA, 0xB4AFBFD6, 0xE4EBF2FC, \
0xEEEAD8C2, 0xBABECCCF, 0xB9A1A3AA, 0xA6A2B0DB, \
0xF0E9D8CE, 0xC6BFBDAE, 0x9292ACCC, 0xE0E4E3EB, \
0xCFD5CFBF, 0xB3AEB1B6, 0xA68D8A95, 0x9A99A1C2, \
0xE3DBC6BA, 0xB4ACA292, 0x757299C0, 0xD7D8CBC6, \
0xA5B3BAB0, 0xA59A9293, 0x8C7A757E, 0x889198AE, \
0xCACAB7A7, 0xA09C9480, 0x63597696, 0xAEC0BEA8, \
0x8C959F97, 0x89807772, 0x6752536B, 0x79808896, \
0xAEB8A894, 0x827E796B, 0x59556374, 0x849EB6A5, \
0x918F8D7B, 0x6A676A66, 0x53363453, 0x6A6D6E76, \
0x8A9D9E90, 0x73625D58, 0x5157605F, 0x5E749CA7, \
0x96898163, 0x4E506064, 0x4A2A1E36, 0x565D5B5F, \
0x697D8D8C, 0x714E4240, 0x44525E59, 0x5161869C, \
0x81776D54, 0x3D3A4D5A, 0x46281B22, 0x363E424A, \
0x545D6E7B, 0x714F3630, 0x313E4E4C, 0x44537384, \
0x625B4E3E, 0x2E293646, 0x37201C20, 0x1E1D1F2D, \
0x3E454A59, 0x5F4D2D20, 0x2229363E, 0x3B4A6A70, \
0x453C3329, 0x211F2835, 0x2A1A1B20, 0x1307050F, \
0x242C2933, 0x43442C18, 0x15151C2A, 0x3140655C, \
0x251B1F1B, 0x15161F27, 0x261D1C20, 0x15040005, \
0x141E1516, 0x26312716, 0x0E0C0D19, 0x28385556, \
0x170D1511, 0x0A0B141E, 0x2222201F, 0x170B0403, \
0x0D190F0B, 0x151F1B10, 0x0B08050C, 0x17264546, \
0x130C140C, 0x03030C12, 0x13181F1C, 0x16100A07, \
0x090E0F09, 0x11160F08, 0x0C0F0A09, 0x0F1B2E32, \
0x12171D11, 0x0301070D, 0x0B0D1414, 0x110F110F, \
0x0A07070A, 0x11150B04, 0x0C15130F, 0x0E0E1B23, \
0x10172113, 0x0401050C, 0x0E09090B, 0x09090E13, \
0x10090505, 0x0D120C04, 0x07141911, 0x0C0A1016, \
0x09101811, 0x05020308, 0x0D090606, 0x0504060C, \
0x110F0903, 0x060B0804, 0x030A100D, 0x0A090B0C, \
0x05060A06, 0x01010204, 0x07080403, 0x02010307, \
0x0A0D0B04, 0x02020302, 0x02030606, 0x04040708, \
0x02020200, 0x00000201, 0x02030200, 0x00000102, \
0x05060704, 0x01000001, 0x01020201, 0x00010406, \
0x01000201, 0x00000000, 0x00000000, 0x00000001, \
0x02020202, 0x01000000, 0x00000101, 0x00000102, \
0x00000100, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000100, 0x00000001, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80B13BD0: .word \
0x009F0000, 0xFF010000, 0x03330800, 0xFFFFFFFF, \
0x01B50BB8, 0xFE8E0000, 0x02CD0000, 0xFFFFFFFF, \
0x01010000, 0xFF9F0000, 0x02660800, 0xFFFFFFFF, \
0x021C0BB8, 0x00000000, 0x02000000, 0xFFFFFFFF, \
0x00000000, 0xFEC50000, 0x04000800, 0xFFFFFFFF, \
0x00A70BB8, 0xFDA90000, 0x039A0000, 0xFFFFFFFF, \
0xFF610000, 0xFF010000, 0x04CD0800, 0xFFFFFFFF, \
0xFF590BB8, 0xFDA90000, 0x04660000, 0xFFFFFFFF, \
0xFEFF0000, 0xFF9F0000, 0x059A0800, 0xFFFFFFFF, \
0xFE4B0BB8, 0xFE8E0000, 0x05330000, 0xFFFFFFFF, \
0xFEFF0000, 0x00610000, 0x06660800, 0xFFFFFFFF, \
0xFDE40BB8, 0x00000000, 0x06000000, 0xFFFFFFFF, \
0xFF610000, 0x00FF0000, 0x07330800, 0xFFFFFFFF, \
0xFE4B0BB8, 0x01720000, 0x06CD0000, 0xFFFFFFFF, \
0x00000000, 0x013B0000, 0x08000800, 0xFFFFFFFF, \
0xFF590BB8, 0x02570000, 0x079A0000, 0xFFFFFFFF, \
0x009F0000, 0x00FF0000, 0x00CD0800, 0xFFFFFFFF, \
0x00A70BB8, 0x02570000, 0x00660000, 0xFFFFFFFF, \
0x00000000, 0x013B0000, 0x00000800, 0xFFFFFFFF, \
0x00A70BB8, 0x02570000, 0x08660000, 0xFFFFFFFF, \
0x01010000, 0x00610000, 0x019A0800, 0xFFFFFFFF, \
0x01B50BB8, 0x01720000, 0x01330000, 0xFFFFFFFF
var_80B13D30: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B133D0
.word \
0xF5900000, 0x0701805F, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x0001805F, 0xF2000000, 0x0007C0FC, \
0xFD900000, 0x04033130, 0xF5900100, 0x07014051, \
0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, \
0xE7000000, 0x00000000, 0xF5880900, 0x01014051, \
0xF2000000, 0x0107C07C, 0xFC262A60, 0x350CE37F, \
0xE200001C, 0x0C1849D8, 0xD9F0FBFF, 0x00000000, \
0xDE000000, 0x08000000, 0x0101602C
.word var_80B13BD0
.word \
0x06000204, 0x00020604, 0x06080A00, 0x000A0200, \
0x060C0E08, 0x000E0A08, 0x0610120C, 0x00120E0C, \
0x06141610, 0x00161210, 0x06181A14, 0x001A1614, \
0x061C1E18, 0x001E1A18, 0x06202224, 0x00261E1C, \
0x06282A20, 0x002A2220, 0x06040628, 0x00062A28, \
0xDF000000, 0x00000000
var_80B13E38: .word \
0x00000000, 0x00000000, 0x00000000, 0x000000FF, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000FFFF, 0xFF00FFFF, \
0xFF00FFFF, 0xFF000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00FFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00FFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00FFFFFF, 0x0000FFFF, \
0xFF0000FF, 0xFFFF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x0000FFFF, \
0xFF000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00FFFFFF, \
0xFFFF0000, 0x00000000, 0x00000000, 0x00000000
var_80B14238: .word \
0xFFEC0000, 0x00000000, 0x00000400, 0xFFFFFFFF, \
0x00140000, 0x00000000, 0x04000400, 0xFFFFFFFF, \
0x00140000, 0x00280000, 0x04000000, 0xFFFFFFFF, \
0xFFEC0000, 0x00280000, 0x00000000, 0xFFFFFFFF
var_80B14278: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80B13E38
.word \
0xF5900000, 0x07098260, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098260, 0xF2000000, 0x0007C07C, \
0xFC3097FF, 0xFFFFFE38, 0xE200001C, 0x0C184F50, \
0xD9F0FBFF, 0x00000000, 0x01004008
.word var_80B14238
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000
var_80B142F8: .word \
0x529FACAB, 0x210F2117, 0x41DB62A1, 0x9C29B52D, \
0x9C692117, 0x319939DB, 0x295718D1, 0x31976B63, \
0x525FACAB, 0x108B084B, 0x18913999, 0x5A5D6AE1, \
0x732349DD, 0x31993199, 0x20D10809, 0x29975AE1, \
0x529FACAB, 0x08470807, 0x0047188B, 0x29113197, \
0x211118CF, 0x188D1089, 0x08490007, 0x29956B61, \
0x4A5FACAB, 0x188B2115, 0x4A1B5A9F, 0x6AE18BE7, \
0x94695AE1, 0x4A5D41D9, 0x2955188F, 0x319773A3, \
0x4A5FACEB, 0x108918D1, 0x39DB5AE1, 0x83E5ACAB, \
0x83A539DB, 0x31573199, 0x3197188F, 0x31976B63, \
0x525FACEB, 0x108920D1, 0x41DB525F, 0x8BE7BD2D, \
0xACAB41DD, 0x319939D9, 0x3157108F, 0x31976323, \
0x525FACEB, 0x0807108D, 0x3153521B, 0x6B2373A7, \
0x62E341DB, 0x39993155, 0x188F0809, 0x319762E1, \
0x4A5FACAB, 0x08050807, 0x0809104B, 0x188D2115, \
0x21551915, 0x084D0809, 0x084B0007, 0x29976321, \
0x4A5FACAB, 0x108B20D3, 0x41DB6AE1, 0xA427B4EB, \
0xA4677AE1, 0x49D93157, 0x291520D3, 0x31976B63, \
0x529FA4AB, 0x108B108D, 0x29154A5F, 0xA46BBD6D, \
0x9C293159, 0x29572957, 0x31572115, 0x31976B65, \
0x52A1A4AB, 0x188B18CF, 0x29554A5F, 0x9C69B52D, \
0x8C273159, 0x29593199, 0x31992113, 0x31976B65, \
0x52A1A4AB, 0x18CD2113, 0x295752A1, 0x9C69C5AD, \
0xB4AB421D, 0x3199399B, 0x31992915, 0x31976B65, \
0x529FA4AB, 0x10891891, 0x18D3399B, 0x6B257BE7, \
0x62E33199, 0x211318D1, 0x188F104B, 0x31976323, \
0x52A1A4AB, 0x00050005, 0x0009108D, 0x18D12957, \
0x39991891, 0x104F080D, 0x08090849, 0x31976323, \
0x529FACAB, 0x108B2113, 0x39994A5D, 0x83E7B4EB, \
0xACEB6B23, 0x4A5F39DB, 0x295718D1, 0x31976B21, \
0x525FACAB, 0x295120D5, 0x39DB529F, 0x9427B52D, \
0x9C692957, 0x31993199, 0x2113108D, 0x31976B63
var_80B144F8: .word \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0843, 0x294F0849, 0x108B18CF, 0x18D3421D, \
0x21572959, 0x29592157, 0x4A5F3199, 0x63239CED, \
0xF7FFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0003, 0x31910847, 0x108B10CF, 0x18D14A5D, \
0x21172157, 0x21192117, 0x4AA12959, 0x319B5AE1, \
0xD6B7FFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0003, 0x31910847, 0x108B10CF, 0x18D14A5D, \
0x21172157, 0x21192117, 0x52A12959, 0x3159421D, \
0x8C6BEF7B, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0003, 0x318F0847, 0x1089108D, 0x18CF4A9F, \
0x21152117, 0x21572117, 0x52E12959, 0x295939DB, \
0x6323CEB7, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0003, 0x294D0845, 0x0849108D, 0x108F529F, \
0x21152117, 0x21592117, 0x4AA12959, 0x295939DD, \
0x6323C635, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0001, 0x214D0845, 0x0849108B, 0x108D4A5B, \
0x19132115, 0x21172117, 0x39DD2959, 0x295931DB, \
0x52E1AD6F, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0001, 0x18C90847, 0x0847108B, 0x108D3197, \
0x18D32115, 0x21152117, 0x295931DB, 0x2999319B, \
0x3A1D73A5, 0xEF7DFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF0001, 0x08450887, 0x08471089, 0x108B1911, \
0x21132115, 0x21152117, 0x2117421D, 0x29593199, \
0x319B6323, 0xF7BDFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF18C7, 0x0003210D, 0x08470849, 0x108B108D, \
0x31972155, 0x19152115, 0x21174AA1, 0x29592959, \
0x319B6363, 0xEFBDFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF4A53, 0x000339D3, 0x08470847, 0x108B108B, \
0x4A5D2955, 0x19132115, 0x21154A5F, 0x21592959, \
0x319B6B65, 0xDEF9F7FF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFF7BD, 0xA52DFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFF9CE7, 0x000339D3, 0x08450847, 0x0889108B, \
0x4A5B18D1, 0x19132115, 0x21153199, 0x29992959, \
0x319B52E1, 0xB5B1E73B, 0xF7BFFFFF, 0xFFFFF7BF, \
0x9CEB52DD, 0x29936B5D, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFE739, 0x0003318F, 0x08050847, 0x0849108B, \
0x319318D1, 0x18D31913, 0x21152115, 0x425F2959, \
0x319B4A5F, 0x7BE794AB, 0xCEB5EF7D, 0xDEF96B61, \
0x3195210F, 0x108B0849, 0xDEF7FFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0x00011085, 0x10870847, 0x08490849, \
0x108B3197, 0x18D11913, 0x19132115, 0x4A5F2959, \
0x295939DD, 0x4A5D39D9, 0x529D4A9B, 0x39D72953, \
0x211318D1, 0x10CF108D, 0x2111C635, 0xFFFFFFFF, \
0xFFFFFFFF, 0x00030003, 0x294F0847, 0x08470849, \
0x088B4A5B, 0x18D118D1, 0x19131915, 0x3199295B, \
0x295939DB, 0x31992155, 0x21532113, 0x211318D3, \
0x21152115, 0x21152115, 0x21152955, 0xDEF9FFFF, \
0xFFFFFFFF, 0x63190003, 0x39D30845, 0x08470849, \
0x108B2951, 0x211118D1, 0x19131913, 0x21154A5F, \
0x2959319B, 0x29992957, 0x21152115, 0x21152117, \
0x21592959, 0x319B39DB, 0x421B4A5D, 0x529F8C69, \
0xFFFFFFFF, 0xDEF70003, 0x190B0847, 0x08470847, \
0x0849108B, 0x421918D1, 0x18D31913, 0x19133199, \
0x319B2959, 0x319B2959, 0x29592157, 0x2959319B, \
0x421D4A5D, 0x4A5B529D, 0x4A994A59, 0x42172951, \
0xFFFFFFFF, 0xFFFF0001, 0x00032991, 0x08470847, \
0x08491089, 0x319318D1, 0x18D118D3, 0x19132113, \
0x4A9F2959, 0x319B31DB, 0x319B319B, 0x421D31D7, \
0x3193294F, 0x210D210D, 0x210D210B, 0x18CB631D, \
0xFFFFFFFF, 0xFFFF5AD7, 0x000339D3, 0x08450847, \
0x08490849, 0x108B39D7, 0x18D118D1, 0x18D32113, \
0x2957421D, 0x319B319B, 0x421D39D9, 0x2951294F, \
0x210B1089, 0x10870847, 0x08470847, 0x08471049, \
0xFFFFFFFF, 0xFFFFEF7B, 0x00031087, 0x10890847, \
0x08470849, 0x08492953, 0x211118D1, 0x18D318D3, \
0x18D33199, 0x421F39DB, 0x4217190D, 0x10891087, \
0x08450845, 0x08471049, 0x108B108B, 0x108B108B, \
0xFFFFFFFF, 0xFFFFFFFF, 0x18C90003, 0x39D30845, \
0x08470849, 0x10890889, 0x39D718D1, 0x18D318D3, \
0x21131915, 0x4A5D3193, 0x18C90845, 0x08430845, \
0x08470847, 0x1089108B, 0x108D108D, 0x108D108D, \
0xFFFFFFFF, 0xFFFFFFFF, 0xC6310003, 0x18CB1089, \
0x08470847, 0x08490849, 0x18CD3197, 0x18D118D1, \
0x191331D9, 0x18C91089, 0x08450845, 0x08450847, \
0x08491089, 0x108B108D, 0x108D108D, 0x108D108D, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF0845, 0x000339D3, \
0x08450847, 0x08470889, 0x08493195, 0x295318D1, \
0x2955294F, 0x10890845, 0x08450847, 0x08470849, \
0x108B108B, 0x108B108B, 0x108B108D, 0x108D10CD, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFBDEF, 0x00031089, \
0x18CB0847, 0x08470849, 0x08490889, 0x39D72113, \
0x294F0845, 0x08470845, 0x08470847, 0x08491089, \
0x108B108B, 0x108B108B, 0x108B108B, 0x108D10CD, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0x42110003, \
0x294F0847, 0x08470847, 0x08490889, 0x088B39D5, \
0x08450847, 0x08470847, 0x08470849, 0x1089108B, \
0x108B108B, 0x108B108D, 0x108B108B, 0x108D108D, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xEF7B0003, \
0x00053193, 0x08450847, 0x08490849, 0x210D0845, \
0x08470847, 0x08470847, 0x08470849, 0x108B108B, \
0x1089108B, 0x108B108D, 0x108B108B, 0x108D108D, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFF94A5, \
0x000318CB, 0x294F0847, 0x08470849, 0x294F0849, \
0x08890847, 0x08470847, 0x08491089, 0x1089108B, \
0x108B108B, 0x108B108D, 0x108D108D, 0x108D108D, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0x210B0005, 0x29511089, 0x0847294F, 0x108B1089, \
0x08490847, 0x08470847, 0x10491089, 0x108B088B, \
0x108B108B, 0x108B108B, 0x108B10CD, 0x18CD10CD, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xF7BD210B, 0x0005294F, 0x1089294F, 0x18CB1089, \
0x08470847, 0x08470849, 0x10891089, 0x108B108B, \
0x108B108B, 0x108B108B, 0x108D10CD, 0x18CD18CD, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFE739, 0x08450845, 0x39D32111, 0x18CB1089, \
0x08470847, 0x08470889, 0x10891089, 0x108B108B, \
0x108B108B, 0x108B108B, 0x108D108D, 0x18CD18CF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xCE731087, 0x3193210F, 0x10890847, \
0x08470849, 0x08491089, 0x108B108B, 0x108B108B, \
0x188B10CD, 0x108B108D, 0x108B108D, 0x10CD18CF, \
0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF, \
0xFFFFFFFF, 0xFFFFB56D, 0x3A1718CD, 0x08490847, \
0x10891089, 0x08891089, 0x108B108B, 0x18CB10CB, \
0x188B18CD, 0x108B108D, 0x108D10CD, 0x10CD18CF
var_80B14CF8: .word \
0x00000156, 0x001D0000, 0x030005EE, 0xD2076EFF, \
0x00000169, 0x001E0000, 0x030005EF, 0xD1F96EFF, \
0xFFB60180, 0x00000000, 0x03160600, 0xD2FC6EFF
var_80B14D28: .word \
0x00000169, 0x001E0000, 0x030005EF, 0xD1F96EFF, \
0xFFD50198, 0x000F0000, 0x030B05F8, 0xD1F96EFF, \
0xFFB60180, 0x00000000, 0x03160600, 0xD2FC6EFF, \
0x00000156, 0x001D0000, 0x030005EE, 0x2E086EFF, \
0x004A0180, 0x00000000, 0x02EA0600, 0x2DFE6FFF, \
0x00000169, 0x001E0000, 0x030005EF, 0x2DFD6FFF, \
0x002B0198, 0x000F0000, 0x02F505F8, 0x2DFD6FFF, \
0xFFB60180, 0x00000000, 0x03160600, 0xD1FE92FF, \
0x00000169, 0xFFE20000, 0x03000611, 0xCFFB93FF, \
0x00000156, 0xFFE10000, 0x03000613, 0xD10893FF, \
0xFFD50198, 0xFFF10000, 0x030B0608, 0xCFFB93FF, \
0x00000156, 0xFFE10000, 0x03000613, 0x2E0A92FF, \
0x00000169, 0xFFE20000, 0x03000611, 0x2D0391FF, \
0x004A0180, 0x00000000, 0x02EA0600, 0x2D0291FF, \
0x002B0198, 0xFFF10000, 0x02F50608, 0x2D0391FF, \
0xFF9100F0, 0x00000000, 0xFF2C0600, 0xD40C6EFF, \
0x0000FE18, 0x001E0000, 0x010005E2, 0xDBFC72FF, \
0x00000156, 0x001D0000, 0x030005EE, 0xD2076EFF, \
0x006F00F0, 0x00000000, 0x02D40600, 0x2C0C6EFF, \
0x0000FE18, 0x001E0000, 0x010005E2, 0x25FC72FF, \
0xFFAAFE18, 0x00000000, 0x00D605FF, 0xD9F971FF, \
0xFFB6012C, 0x00000000, 0x031A0600, 0xCA1397FF, \
0x004A012C, 0x00000000, 0x02E60600, 0x361397FF, \
0x006F00F0, 0x00000000, 0x02D40600, 0x2D0C92FF, \
0x004A012C, 0x00000000, 0x02E60600, 0x35126AFF, \
0xFF9100F0, 0x00000000, 0x032C0600, 0xD30C92FF, \
0xFFB6012C, 0x00000000, 0x031A0600, 0xCB126AFF, \
0xFF9100F0, 0x00000000, 0x032C0600, 0xD40C6EFF, \
0x0056FE18, 0x00000000, 0x012A05FF, 0x27F971FF, \
0x0056FE18, 0x00000000, 0x012A05FF, 0x27F98FFF, \
0x0000FCFA, 0x00000000, 0x01000600, 0x27F490FF, \
0x0000FE18, 0xFFE20000, 0x0100061D, 0x25FC8EFF
var_80B14F28: .word \
0x0000FCFA, 0x00000000, 0x01000600, 0xD9F490FF, \
0xFFAAFE18, 0x00000000, 0x00D605FF, 0xD9F98FFF, \
0x0000FE18, 0xFFE20000, 0x0100061D, 0xDBFC8EFF, \
0x0000FE18, 0x001E0000, 0x010005E2, 0x25FC72FF, \
0x0000FCFA, 0x00000000, 0x01000600, 0x27F470FF, \
0x0056FE18, 0x00000000, 0x012A05FF, 0x27F971FF, \
0x00000156, 0xFFE10000, 0x03000613, 0xD10893FF, \
0xFF9100F0, 0x00000000, 0xFF2C0600, 0xD30C92FF, \
0x0000FE18, 0x001E0000, 0x010005E2, 0xDBFC72FF, \
0xFFAAFE18, 0x00000000, 0x00D605FF, 0xD9F971FF, \
0x0000FCFA, 0x00000000, 0x01000600, 0xD9F470FF, \
0x006F00F0, 0x00000000, 0x02D40600, 0x2D0C92FF, \
0x0000FE18, 0xFFE20000, 0x0100061D, 0x25FC8EFF, \
0x00000156, 0xFFE10000, 0x03000613, 0x2E0A92FF, \
0x0056FE18, 0x00000000, 0x012A05FF, 0x27F98FFF
var_80B15018: .word \
0x00980163, 0xFFD80000, 0x021600EC, 0xCFB9AEFF, \
0x007A01A1, 0xFFD80000, 0x023B01E5, 0xF4E78CFF, \
0x00D501CA, 0x00000000, 0x00AA023F, 0x251891FF, \
0x00D501CA, 0x00000000, 0x00AA023F, 0x25186FFF, \
0x00980163, 0x00290000, 0x021600EC, 0xF4C165FF, \
0x00FE0163, 0x00000000, 0x009400A4, 0x52A900FF, \
0x007A01A1, 0x00280000, 0x023B01E5, 0xDDDD6DFF, \
0x004A0180, 0x00000000, 0x031D018E, 0x018CE3FF, \
0x000001C2, 0x001E0000, 0x03E102B7, 0x00F777FF, \
0x002B0198, 0x000F0000, 0x037401FF, 0x000000FF, \
0x003901E6, 0x00000000, 0x02D80312, 0xFE3B68FF
var_80B150C8: .word \
0x000001C2, 0x001E0000, 0x0100FABC, 0x00F777FF, \
0x00430347, 0x00000000, 0x021F0138, 0x34FF6BFF, \
0x00000380, 0x001E0000, 0x0100022B, 0x004D5CFF, \
0xFFBD0347, 0x00000000, 0xFFE10138, 0xB62457FF, \
0xFFC801C8, 0x00000000, 0x0011FAD6, 0xC7FE69FF, \
0x003801C8, 0x00000000, 0x01EFFAD6, 0x39FE69FF
var_80B15128: .word \
0x00980163, 0x00290000, 0x021600EC, 0xF4C165FF, \
0x00D501CA, 0x00000000, 0x00AA023F, 0x25186FFF, \
0x007A01A1, 0x00280000, 0x023B01E5, 0xDDDD6DFF, \
0x007C0203, 0x00000000, 0x01B20350, 0x082970FF, \
0x003901E6, 0x00000000, 0x02D80312, 0xFE3B68FF, \
0x004A0180, 0x00000000, 0x031D018E, 0x018CE3FF, \
0x007A01A1, 0xFFD80000, 0x023B01E5, 0xF4E78CFF, \
0x007C0203, 0x00000000, 0x01B20350, 0x082990FF, \
0x00D501CA, 0x00000000, 0x00AA023F, 0x251891FF, \
0x003901E6, 0x00000000, 0x02D80312, 0xFE3B98FF, \
0x002B0198, 0xFFF10000, 0x037401FF, 0x000000FF, \
0x000001C2, 0xFFE20000, 0x03E102B7, 0x00F889FF
var_80B151E8: .word \
0x000001C2, 0xFFE20000, 0x0100FABC, 0x00F889FF, \
0xFFBD0347, 0x00000000, 0xFFE10138, 0xCBFF95FF, \
0x00000380, 0xFFE10000, 0x0100022B, 0x004DA4FF, \
0x00430347, 0x00000000, 0x021F0138, 0x4A24AAFF, \
0xFFC801C8, 0x00000000, 0x0011FAD6, 0xC7FE97FF, \
0x003801C8, 0x00000000, 0x01EFFAD6, 0x39FE97FF, \
0x00000380, 0xFFE10000, 0x0100007F, 0x004DA4FF, \
0xFFBD0347, 0x00000000, 0xFFE100AA, 0xB62457FF, \
0x00000380, 0x001E0000, 0x010000D2, 0x004D5CFF, \
0x00430347, 0x00000000, 0x021F00AA, 0x4A24AAFF
var_80B15288: .word \
0xFFC701E6, 0x00000000, 0x02D80312, 0x023B98FF, \
0x000001C2, 0xFFE20000, 0x03E102B7, 0x00F889FF, \
0xFF8601A1, 0xFFD80000, 0x023B01E5, 0x0CE78CFF, \
0xFFD50198, 0xFFF10000, 0x037401FF, 0x000000FF, \
0xFFB60180, 0x00000000, 0x031D018E, 0xFF8CE3FF, \
0xFF840203, 0x00000000, 0x01B20350, 0xF82990FF, \
0xFF2B01CA, 0x00000000, 0x00AA023F, 0xDB1891FF, \
0xFF8601A1, 0x00280000, 0x023B01E5, 0x23DD6DFF, \
0xFFC701E6, 0x00000000, 0x02D80312, 0x023B68FF, \
0xFF840203, 0x00000000, 0x01B20350, 0xF82970FF, \
0xFF2B01CA, 0x00000000, 0x00AA023F, 0xDB186FFF, \
0xFF680163, 0x00290000, 0x021600EC, 0x0CC165FF, \
0x000001C2, 0x001E0000, 0x03E102B7, 0x00F777FF, \
0xFFD50198, 0x000F0000, 0x037401FF, 0x000000FF, \
0xFF680163, 0xFFD80000, 0x021600EC, 0x31B9AEFF, \
0xFF020163, 0x00000000, 0x009400A4, 0xAEA900FF
var_80B15388: .word \
0x00000169, 0x001E0000, 0x01000540, 0x00DE72FF, \
0x0000019C, 0x002D0000, 0xFF000431, 0xBFE360FF, \
0xFFD50198, 0x000F0000, 0xFFF60591, 0xBB0462FF, \
0x0000019C, 0x002D0000, 0x03000431, 0x1B1273FF, \
0x000001C2, 0x001E0000, 0x0300053E, 0x002C6FFF, \
0xFFD50198, 0x000F0000, 0x03F60591, 0xBB0462FF, \
0x002B0198, 0x000F0000, 0x020A0591, 0x450462FF, \
0x0000019C, 0x002D0000, 0xFF000431, 0x1B1273FF, \
0x00000169, 0x001E0000, 0x01000540, 0x00DE72FF, \
0xFFD50198, 0xFFF10000, 0xFFF6066D, 0xBB059FFF, \
0x0000019C, 0xFFD30000, 0xFF0007CF, 0xE5138DFF, \
0x00000169, 0xFFE20000, 0x010006C4, 0x00DF8DFF, \
0xFFD50198, 0xFFF10000, 0x03F6066D, 0xBB059FFF, \
0x000001C2, 0xFFE20000, 0x030006C1, 0x002D91FF, \
0x0000019C, 0xFFD30000, 0x030007CF, 0xE5138DFF, \
0x0000019C, 0xFFD30000, 0xFF0007CF, 0x41E5A0FF, \
0x002B0198, 0xFFF10000, 0x020A066D, 0x45059FFF
var_80B15498: .word \
0xD7000002, 0x17701770, 0xFD900000, 0x04032930, \
0xF5900000, 0x07017C5F, 0xE6000000, 0x00000000, \
0xF3000000, 0x071FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00017C5F, 0xF2000000, 0x0007C07C, \
0xFC167E60, 0x35FCFD78, 0xD9FFFFFF, 0x000F0400, \
0xFA000000, 0xFFFFFFFF, 0xFB000000, 0x5A646E80, \
0xDE000000, 0x08000000, 0x01003006
.word var_80B14CF8
.word 0x05000204, 0x00000000, 0x01020040
.word var_80B14D28
.word \
0x06000204, 0x0006080A, 0x06080C0A, 0x000E1012, \
0x060E1410, 0x0016181A, 0x06181C1A, 0x001E2022, \
0x06240626, 0x0028201E, 0x062A0E12, 0x001A2C16, \
0x06162C2E, 0x00300624, 0x06322A12, 0x00223436, \
0x06300806, 0x00043422, 0x06263824, 0x003A3C3E, \
0x0100F01E
.word var_80B14F28
.word \
0x06000204, 0x0006080A, 0x060C040E, 0x00101214, \
0x0616181A, 0x00161C18, 0x05020E04, 0x00000000, \
0xE7000000, 0x00000000, 0xD7000002, 0x0BB80BB8, \
0xFD900000, 0x04032930, 0xF5900000, 0x07014050, \
0xE6000000, 0x00000000, 0xF3000000, 0x071FF200, \
0xE7000000, 0x00000000, 0xF5880800, 0x00014050, \
0xF2000000, 0x0007C07C, 0xFA000000, 0xFFFFAAFF, \
0xFB000000, 0x96780080, 0xDE000000, 0x08000000, \
0x01011022
.word var_80B15388
.word \
0x0606080A, 0x000C0E10, 0x060C0806, 0x00121416, \
0x06181A1C, 0x00161E20, 0x061C1A20, 0x00000204, \
0xE7000000, 0x00000000, 0xD7000002, 0xFFFFFFFF, \
0xFD100000
.word var_80B144F8
.word \
0xF5100000, 0x07014050, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00014050, 0xF2000000, 0x0007C07C, \
0xFC127FFF, 0xFFFFFC38, 0xD9F3FFFF, 0x00000000, \
0xFA000000, 0xFFFFFFFF, 0x0100B016
.word var_80B15018
.word \
0x06000204, 0x0006080A, 0x060A0800, 0x000A0004, \
0x0600080C, 0x00000C02, 0x060E0C10, 0x000E1012, \
0x05100C14, 0x00000000, 0xE7000000, 0x00000000, \
0xFD100000
.word var_80B142F8
.word \
0xF5100000, 0x07010040, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF200, 0xE7000000, 0x00000000, \
0xF5100800, 0x00010040, 0xF2000000, 0x0003C03C, \
0x0100600C
.word var_80B150C8
.word \
0x06000204, 0x00000406, 0x06000608, 0x0002000A, \
0xE7000000, 0x00000000, 0xFD100000
.word var_80B144F8
.word \
0xF5100000, 0x07014050, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00014050, 0xF2000000, 0x0007C07C, \
0x0100C018
.word var_80B15128
.word \
0x06000204, 0x00040206, 0x06040608, 0x00040A0C, \
0x060E100C, 0x000E0C12, 0x060C0A14, 0x000C1416, \
0x050C1612, 0x00000000, 0xE7000000, 0x00000000, \
0xFD100000
.word var_80B142F8
.word \
0xF5100000, 0x07010040, 0xE6000000, 0x00000000, \
0xF3000000, 0x070FF200, 0xE7000000, 0x00000000, \
0xF5100800, 0x00010040, 0xF2000000, 0x0003C03C, \
0x0100A014
.word var_80B151E8
.word \
0x06000204, 0x00000406, 0x06020008, 0x0000060A, \
0x060C0E10, 0x0010120C, 0xE7000000, 0x00000000, \
0xFD100000
.word var_80B144F8
.word \
0xF5100000, 0x07014050, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00014050, 0xF2000000, 0x0007C07C, \
0x01010020
.word var_80B15288
.word \
0x06000204, 0x00020608, 0x06020804, 0x0000040A, \
0x06040C0A, 0x0004080E, 0x0610120E, 0x0012140E, \
0x060E1416, 0x00100E18, 0x061A180E, 0x001A0E08, \
0x06040E1C, 0x000E161C, 0x060C1C1E, 0x001C161E, \
0x061E1614, 0x000C041C, 0xDF000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B15870: .word 0x46EC7A00
var_80B15874: .word 0x46ECC600
var_80B15878: .word 0x46ECE600
var_80B1587C: .word 0x40C90FDB
var_80B15880: .word 0x40C90FDB
var_80B15884: .word 0x40C90FDB
var_80B15888: .word 0xC53B8000
var_80B1588C: .word var_80B05B40
.word var_80B05D08
.word var_80B05E3C
.word var_80B06060
.word var_80B06144
.word var_80B06274
.word lbl_80B07D18
.word lbl_80B07D18
.word lbl_80B07D18
.word lbl_80B07D18
.word var_80B062E8
.word var_80B06470
.word var_80B066C0
.word var_80B066C0
.word var_80B067E0
.word var_80B069C0
.word var_80B06B3C
.word var_80B06DE8
.word var_80B06F0C
.word var_80B06FCC
.word var_80B07074
.word var_80B071EC
.word var_80B07254
.word var_80B07478
.word var_80B07658
.word var_80B076FC
.word var_80B07838
.word var_80B0790C
.word var_80B07A24
.word var_80B07B80
var_80B15904: .word 0x44728000
var_80B15908: .word 0x4487C000
var_80B1590C: .word 0x44728000
var_80B15910: .word 0x4487C000
var_80B15914: .word 0x44728000
var_80B15918: .word 0x4487C000
var_80B1591C: .word 0x44BB8000
var_80B15920: .word 0x4487C000
var_80B15924: .word 0x44728000
var_80B15928: .word 0x4487C000
var_80B1592C: .word 0x44738000
var_80B15930: .word 0x4487C000
var_80B15934: .word 0x44688000
var_80B15938: .word 0x448D2000
var_80B1593C: .word 0x44A14000
var_80B15940: .word 0x4487C000
var_80B15944: .word 0x4487C000
var_80B15948: .word 0x4487C000
var_80B1594C: .word 0x4487C000
var_80B15950: .word 0x448C2000
var_80B15954: .word 0x447C4000
var_80B15958: .word 0x45DAC000
var_80B1595C: .word 0x448A4000
var_80B15960: .word 0x4487C000
var_80B15964: .word 0x44EBC000
var_80B15968: .word 0x4487C000
var_80B1596C: .word 0x44896000
var_80B15970: .word 0x3F4CCCCD
var_80B15974: .word 0x44896000
var_80B15978: .word 0x4487C000
var_80B1597C: .word 0x461C4000
var_80B15980: .word 0x40490FDB
var_80B15984: .word 0x471C4000
var_80B15988: .word 0x459C4000
var_80B1598C: .word 0x453B8000
var_80B15990: .word 0x3BA3D70A
var_80B15994: .word var_80B08E14
.word var_80B08EB8
.word var_80B0900C
.word lbl_80B09360
.word lbl_80B09360
.word lbl_80B09360
.word lbl_80B09360
.word lbl_80B09360
.word lbl_80B09360
.word lbl_80B09360
.word var_80B0919C
.word var_80B091F8
var_80B159C4: .word 0x40490FDB
var_80B159C8: .word 0x3E99999A
var_80B159CC: .word var_80B097CC
.word var_80B09874
.word var_80B09A90
.word var_80B09B78
.word var_80B09C30
.word var_80B09CE4
.word var_80B09E9C
.word var_80B09FE4
.word var_80B0A334
.word var_80B0A4BC
.word var_80B0A548
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word lbl_80B0A7C4
.word var_80B0A774
var_80B15A20: .word 0x448FC000
var_80B15A24: .word 0x448FC000
var_80B15A28: .word 0x43868000
var_80B15A2C: .word 0x448BA000
var_80B15A30: .word 0xBF4CCCCD
var_80B15A34: .word 0x448F4000
var_80B15A38: .word 0x448FC000
var_80B15A3C: .word 0x3E99999A
var_80B15A40: .word 0x465AC000
var_80B15A44: .word 0x463B8000
var_80B15A48: .word 0x3E4CCCCD
var_80B15A4C: .word 0x3FF33333
var_80B15A50: .word 0x461C4000
var_80B15A54: .word lbl_80B0B898
.word var_80B0B584
.word lbl_80B0B898
.word lbl_80B0B898
.word var_80B0B5A8
.word var_80B0B5F8
.word var_80B0B648
.word var_80B0B710
.word var_80B0B79C
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word lbl_80B0B898
.word var_80B0B7DC
.word var_80B0B800
.word var_80B0B828
.word var_80B0B850
.word var_80B0B878
var_80B15ABC: .word 0x3E19999A
var_80B15AC0: .word 0x3E19999A
var_80B15AC4: .word 0x3E19999A
var_80B15AC8: .word 0x3E19999A
var_80B15ACC: .word 0x40C90FDB
var_80B15AD0: .word 0x3DCCCCCD
var_80B15AD4: .word 0x3E99999A
var_80B15AD8: .word 0x3E4CCCCD
var_80B15ADC: .word 0x3E19999A
var_80B15AE0: .word 0x3DA9FBE7
var_80B15AE4: .word 0x3DA9FBE7
var_80B15AE8: .word 0x4487C000
var_80B15AEC: .word 0x3DCCCCCD
var_80B15AF0: .word 0x40490FDB
var_80B15AF4: .word 0x3FA0D97C
var_80B15AF8: .word 0x459C4000
var_80B15AFC: .word 0x45959000
var_80B15B00: .word 0x3C23D70A
var_80B15B04: .word 0x40490FDB
var_80B15B08: .word 0xBE4CCCCD
var_80B15B0C: .word 0x3F19999A
var_80B15B10: .word 0x4684D000
var_80B15B14: .word 0x453B8000
var_80B15B18: .word 0x40490FDB
var_80B15B1C: .word 0x3E6EEEED
var_80B15B20: .word 0x40C90FDB
var_80B15B24: .word 0xBF490FDB
var_80B15B28: .word 0x3D23D70B
var_80B15B2C: .word 0x3FC90FDB
var_80B15B30: .word 0x44944000
var_80B15B34: .word 0x44894000
var_80B15B38: .word 0x3FA0D97C
var_80B15B3C: .word 0x3FC90FDB
var_80B15B40: .word 0x4487C000
var_80B15B44: .word 0x441C4000
var_80B15B48: .word 0x3DCCCCCD
var_80B15B4C: .word 0x3ECCCCCD
var_80B15B50: .word 0xBE4CCCCD
var_80B15B54: .word 0x3CF5C28F
var_80B15B58: .word 0x3F20D97C
var_80B15B5C: .word 0x3FC90FDB
var_80B15B60: .word 0x44894000
var_80B15B64: .word 0x4487C000
var_80B15B68: .word 0x3E4CCCCD
var_80B15B6C: .word 0x3FD33333

.bss

var_80B16760: .space 0x0C
var_80B1676C: .space 0x04
var_80B16770: .space 0x08
var_80B16778: .space 0x1A90
var_80B18208: .space 0x04
var_80B1820C: .space 0x04
var_80B18210: .space 0x08
var_80B18218: .space 0x0C
var_80B18224: .space 0x0C
var_80B18230: .space 0x0C
var_80B1823C: .space 0x0C
var_80B18248: .space 0x0C
var_80B18254: .space 0x0C
var_80B18260: .space 0x0C
var_80B1826C: .space 0x0C
var_80B18278: .space 0x08
