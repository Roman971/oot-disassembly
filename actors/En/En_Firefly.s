.section .text
func_80876080:
    lh      t6, 0x001C(a0)             # 0000001C
    lw      t8, 0x0320(a0)             # 00000320
    addiu   t9, $zero, 0x0012          # t9 = 00000012
    addiu   t7, t6, 0x0002             # t7 = 00000002
    sh      t7, 0x001C(a0)             # 0000001C
    sb      $zero, 0x0004(t8)          # 00000004
    sb      $zero, 0x01A8(a0)          # 000001A8
    sb      $zero, 0x01A9(a0)          # 000001A9
    sb      t9, 0x0117(a0)             # 00000117
    jr      $ra
    nop


func_808760AC:
    lh      v0, 0x001C(a0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_808760C4
    addiu   t6, v0, 0xFFFE             # t6 = FFFFFFFE
    beq     $zero, $zero, lbl_808760C8
    sh      $zero, 0x001C(a0)          # 0000001C
lbl_808760C4:
    sh      t6, 0x001C(a0)             # 0000001C
lbl_808760C8:
    lw      t7, 0x0320(a0)             # 00000320
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sb      v0, 0x0004(t7)             # 00000004
    sb      v0, 0x01A8(a0)             # 000001A8
    sb      v0, 0x01A9(a0)             # 000001A9
    sb      t8, 0x0117(a0)             # 00000117
    jr      $ra
    nop


func_808760EC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80877F6C)      # a1 = 80870000
    addiu   a1, a1, %lo(var_80877F6C)  # a1 = 80877F6C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41C8                 # a3 = 41C80000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01AE             # t6 = 000001AE
    addiu   t7, s0, 0x0256             # t7 = 00000256
    addiu   t8, $zero, 0x001C          # t8 = 0000001C
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x017C             # a3 = 0600017C
    addiu   a2, a2, 0x18B8             # a2 = 060018B8
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x0160             # a1 = 00000160
    addiu   a1, s0, 0x0304             # a1 = 00000304
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80877F34)      # a3 = 80870000
    addiu   t9, s0, 0x0324             # t9 = 00000324
    lw      a1, 0x0030($sp)
    sw      t9, 0x0010($sp)
    addiu   a3, a3, %lo(var_80877F34)  # a3 = 80877F34
    lw      a0, 0x003C($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, %hi(var_80877F4C)      # a1 = 80870000
    lui     a2, %hi(var_80877F44)      # a2 = 80870000
    addiu   a2, a2, %lo(var_80877F44)  # a2 = 80877F44
    addiu   a1, a1, %lo(var_80877F4C)  # a1 = 80877F4C
    jal     func_80050344
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t3, %hi(func_80877E34)     # t3 = 80870000
    addiu   t3, t3, %lo(func_80877E34) # t3 = 80877E34
    andi    t0, v0, 0x8000             # t0 = 00000000
    beq     t0, $zero, lbl_808761DC
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lh      t4, 0x001C(s0)             # 0000001C
    lw      t1, 0x0004(s0)             # 00000004
    sw      t3, 0x0134(s0)             # 00000134
    andi    t5, t4, 0x7FFF             # t5 = 00000000
    sh      t5, 0x001C(s0)             # 0000001C
    ori     t2, t1, 0x0080             # t2 = 00000080
    sw      t2, 0x0004(s0)             # 00000004
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808761DC:
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_808761F0
    lui     t8, %hi(func_80876A3C)     # t8 = 80870000
    beq     $zero, $zero, lbl_808761F4
    sb      t6, 0x01A9(s0)             # 000001A9
lbl_808761F0:
    sb      $zero, 0x01A9(s0)          # 000001A9
lbl_808761F4:
    lbu     t7, 0x01A9(s0)             # 000001A9
    addiu   t8, t8, %lo(func_80876A3C) # t8 = 80876A3C
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beq     t7, $zero, lbl_80876238
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    jal     func_80063BF0
    sw      t8, 0x01A4(s0)             # 000001A4
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   t9, $zero, 0x1554          # t9 = 00001554
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0x0011          # t1 = 00000011
    sh      v0, 0x01AA(s0)             # 000001AA
    sh      t9, 0x00B4(s0)             # 000000B4
    sb      t0, 0x01A8(s0)             # 000001A8
    sb      t1, 0x0117(s0)             # 00000117
    beq     $zero, $zero, lbl_808762C0
    swc1    $f4, 0x0300(s0)            # 00000300
lbl_80876238:
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t4, %hi(func_80876A3C)     # t4 = 80870000
    bne     t2, $at, lbl_8087625C
    addiu   t4, t4, %lo(func_80876A3C) # t4 = 80876A3C
    lui     t3, %hi(func_8087732C)     # t3 = 80870000
    addiu   t3, t3, %lo(func_8087732C) # t3 = 8087732C
    beq     $zero, $zero, lbl_80876260
    sw      t3, 0x01A4(s0)             # 000001A4
lbl_8087625C:
    sw      t4, 0x01A4(s0)             # 000001A4
lbl_80876260:
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lui     $at, 0x42C8                # $at = 42C80000
    bne     v0, t5, lbl_8087628C
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    lw      t7, 0x0320(s0)             # 00000320
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t8, $zero, 0x0056          # t8 = 00000056
    sb      t6, 0x0004(t7)             # 00000004
    beq     $zero, $zero, lbl_8087629C
    sb      t8, 0x0117(s0)             # 00000117
lbl_8087628C:
    lw      t9, 0x0320(s0)             # 00000320
    addiu   t0, $zero, 0x0012          # t0 = 00000012
    sb      $zero, 0x0004(t9)          # 00001558
    sb      t0, 0x0117(s0)             # 00000117
lbl_8087629C:
    lwc1    $f6, 0x000C(s0)            # 0000000C
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t1, 0x001C(s0)             # 0000001C
    add.s   $f10, $f6, $f8
    bne     v0, t1, lbl_808762BC
    swc1    $f10, 0x0300(s0)           # 00000300
    beq     $zero, $zero, lbl_808762C0
    sb      t2, 0x01A8(s0)             # 000001A8
lbl_808762BC:
    sb      $zero, 0x01A8(s0)          # 000001A8
lbl_808762C0:
    lui     t3, %hi(var_80877F40)      # t3 = 80870000
    lw      t3, %lo(var_80877F40)(t3)
    lw      t5, 0x0320(s0)             # 00000320
    lh      t4, 0x0020(t3)             # 80870020
    sh      t4, 0x0036(t5)             # 00000036
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_808762E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0304             # a1 = 00000304
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80876310:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    jal     func_80063BF0
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x01AA(s0)             # 000001AA
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f2                   # $f2 = 1.50
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0008             # a1 = 00000008
    mul.s   $f4, $f0, $f2
    add.s   $f6, $f4, $f2
    jal     func_8002140C
    swc1    $f6, 0x0068(s0)            # 00000068
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    lwc1    $f8, 0x0300(s0)            # 00000300
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    c.lt.s  $f8, $f10
    lui     t7, %hi(func_80876A3C)     # t7 = 80870000
    addiu   v0, $zero, 0xF400          # v0 = FFFFF400
    addiu   t7, t7, %lo(func_80876A3C) # t7 = 80876A3C
    bc1f    lbl_80876398
    nop
    beq     $zero, $zero, lbl_80876398
    addiu   v0, $zero, 0x0C00          # v0 = 00000C00
lbl_80876398:
    addiu   t6, v0, 0x1554             # t6 = 00002154
    sh      t6, 0x01AC(s0)             # 000001AC
    swc1    $f16, 0x017C(s0)           # 0000017C
    sw      t7, 0x01A4(s0)             # 000001A4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808763BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f4                   # $f4 = -3.00
    sh      t6, 0x01AA(s0)             # 000001AA
    swc1    $f0, 0x0060(s0)            # 00000060
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x017C             # a1 = 0600017C
    swc1    $f0, 0x0010($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_8008D17C
    swc1    $f4, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3842          # a1 = 00003842
    lw      t8, 0x0004(s0)             # 00000004
    addiu   t0, $zero, 0x0028          # t0 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    ori     t9, t8, 0x0010             # t9 = 00000010
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x0010($sp)
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lui     t1, %hi(func_80876CCC)     # t1 = 80870000
    addiu   t1, t1, %lo(func_80876CCC) # t1 = 80876CCC
    sw      t1, 0x01A4(s0)             # 000001A4
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80876460:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t7, %hi(func_80876D9C)     # t7 = 80870000
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    addiu   t7, t7, %lo(func_80876D9C) # t7 = 80876D9C
    sh      t6, 0x01AA(a0)             # 000001AA
    sw      t7, 0x01A4(a0)             # 000001A4
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_80876484:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f6                   # $f6 = 2.50
    lui     t8, %hi(func_8087702C)     # t8 = 80870000
    addiu   t6, $zero, 0x7000          # t6 = 00007000
    addiu   t7, $zero, 0x0012          # t7 = 00000012
    addiu   t8, t8, %lo(func_8087702C) # t8 = 8087702C
    sh      t6, 0x0030(a0)             # 00000030
    sh      t7, 0x01AA(a0)             # 000001AA
    sw      t8, 0x01A4(a0)             # 000001A4
    swc1    $f4, 0x017C(a0)            # 0000017C
    swc1    $f6, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_808764C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f8, 0x0094(a2)            # 00000094
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t7, %hi(func_80876E18)     # t7 = 80870000
    c.lt.s  $f6, $f8
    sh      v0, 0x01AA(a2)             # 000001AA
    addiu   v0, $zero, 0x0C00          # v0 = 00000C00
    addiu   t7, t7, %lo(func_80876E18) # t7 = 80876E18
    bc1f    lbl_80876514
    swc1    $f4, 0x017C(a2)            # 0000017C
    beq     $zero, $zero, lbl_80876514
    addiu   v0, $zero, 0xF400          # v0 = FFFFF400
lbl_80876514:
    addiu   t6, v0, 0x1554             # t6 = 00000954
    sh      t6, 0x01AC(a2)             # 000001AC
    sw      t7, 0x01A4(a2)             # 000001A4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80876530:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t8, %hi(func_808770C0)     # t8 = 80870000
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    addiu   t7, $zero, 0x0954          # t7 = 00000954
    addiu   t8, t8, %lo(func_808770C0) # t8 = 808770C0
    sh      t6, 0x01AA(a0)             # 000001AA
    sh      t7, 0x01AC(a0)             # 000001AC
    sw      t8, 0x01A4(a0)             # 000001A4
    swc1    $f4, 0x017C(a0)            # 0000017C
    jr      $ra
    nop


func_80876560:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x01AA(a0)             # 000001AA
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sw      t7, 0x0010($sp)
    sw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    sb      $zero, 0x01A8(a0)          # 000001A8
    swc1    $f4, 0x0060(a0)            # 00000060
    jal     func_80022FD0
    swc1    $f6, 0x017C(a0)            # 0000017C
    lw      a0, 0x0020($sp)
    lui     t8, %hi(func_80877228)     # t8 = 80870000
    addiu   t8, t8, %lo(func_80877228) # t8 = 80877228
    sw      t8, 0x01A4(a0)             # 000001A4
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808765D0:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s4, 0x0068($sp)
    sw      s1, 0x005C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f26, 0x0050($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lw      t6, 0x0004(s1)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      $zero, 0x01A8(s1)          # 000001A8
    ori     t7, t6, 0x0010             # t7 = 00000010
    sw      t7, 0x0004(s1)             # 00000004
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    swc1    $f4, 0x0068(s1)            # 00000068
    sw      t8, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3842          # a1 = 00003842
    lui     $at, %hi(var_80877FC0)     # $at = 80870000
    lwc1    $f26, %lo(var_80877FC0)($at)
    lui     $at, %hi(var_80877FC4)     # $at = 80870000
    lwc1    $f24, %lo(var_80877FC4)($at)
    lui     $at, 0xC0E0                # $at = C0E00000
    mtc1    $at, $f22                  # $f22 = -7.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f20                  # $f20 = 7.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFF0
    andi    t9, s0, 0x0001             # t9 = 00000000
lbl_80876674:
    beql    t9, $zero, lbl_80876688
    mov.s   $f0, $f22
    beq     $zero, $zero, lbl_80876688
    mov.s   $f0, $f20
    mov.s   $f0, $f22
lbl_80876688:
    lwc1    $f6, 0x0024(s1)            # 00000024
    andi    t0, s0, 0x0002             # t0 = 00000000
    add.s   $f8, $f0, $f6
    beq     t0, $zero, lbl_808766A4
    swc1    $f8, 0x0078($sp)
    beq     $zero, $zero, lbl_808766A8
    mov.s   $f0, $f20
lbl_808766A4:
    mov.s   $f0, $f22
lbl_808766A8:
    lwc1    $f10, 0x0028(s1)           # 00000028
    andi    t1, s0, 0x0004             # t1 = 00000000
    add.s   $f16, $f0, $f10
    beq     t1, $zero, lbl_808766C4
    swc1    $f16, 0x007C($sp)
    beq     $zero, $zero, lbl_808766C8
    mov.s   $f0, $f20
lbl_808766C4:
    mov.s   $f0, $f22
lbl_808766C8:
    lwc1    $f18, 0x002C(s1)           # 0000002C
    add.s   $f4, $f0, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0080($sp)
    mul.s   $f6, $f0, $f24
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    addiu   t5, $zero, 0x00EB          # t5 = 000000EB
    addiu   t6, $zero, 0x00F5          # t6 = 000000F5
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    add.s   $f8, $f6, $f26
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    swc1    $f8, 0x0028($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFF0
    jal     func_8001DC4C
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_80876674
    andi    t9, s0, 0x0001             # t9 = 00000001
    lui     t8, %hi(func_808772CC)     # t8 = 80870000
    addiu   t8, t8, %lo(func_808772CC) # t8 = 808772CC
    sw      t8, 0x01A4(s1)             # 000001A4
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    ldc1    $f26, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80876770:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t7, %hi(func_8087732C)     # t7 = 80870000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, %lo(func_8087732C) # t7 = 8087732C
    sh      t6, 0x01AA(a0)             # 000001AA
    sw      t7, 0x01A4(a0)             # 000001A4
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_80876794:
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f0                   # $f0 = 3.00
    addiu   t6, $zero, 0x1554          # t6 = 00001554
    lh      t7, 0x008A(a0)             # 0000008A
    lui     t9, %hi(func_808773EC)     # t9 = 80870000
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    addiu   t9, t9, %lo(func_808773EC) # t9 = 808773EC
    swc1    $f0, 0x017C(a0)            # 0000017C
    sh      t6, 0x00B4(a0)             # 000000B4
    sh      t8, 0x01AA(a0)             # 000001AA
    swc1    $f0, 0x0068(a0)            # 00000068
    sw      t9, 0x01A4(a0)             # 000001A4
    sh      t7, 0x00B6(a0)             # 000000B6
    jr      $ra
    nop


func_808767D0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lw      a2, 0x1C44(a1)             # 00001C44
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t6, $at, lbl_80876800
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808768D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80876800:
    addiu   s1, s0, 0x0008             # s1 = 00000008
    jal     func_80021528
    or      a1, s1, $zero              # a1 = 00000008
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    or      a0, s0, $zero              # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_808768D8
    nop
    jal     func_800214D8
    or      a1, s1, $zero              # a1 = 00000008
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, %hi(var_80877FC8)     # $at = 80870000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80876864
    nop
    jal     func_80876770
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808768D8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80876864:
    lwc1    $f8, %lo(var_80877FC8)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f2, $f0, $f8
    c.lt.s  $f2, $f10
    nop
    bc1f    lbl_80876890
    nop
    lwc1    $f16, 0x0068(s0)           # 00000068
    mul.s   $f18, $f16, $f2
    swc1    $f18, 0x0068(s0)           # 00000068
lbl_80876890:
    jal     func_8002140C
    or      a1, s1, $zero              # a1 = 00000008
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021488
    or      a1, s1, $zero              # a1 = 00000008
    addiu   a1, v0, 0x1554             # a1 = 00001554
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     $zero, $zero, lbl_808768D8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808768D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_808768EC:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s3, 0x0028($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    lw      s0, 0x1C64(a1)             # 00001C64
    lui     $at, %hi(var_80877FCC)     # $at = 80870000
    or      s1, $zero, $zero           # s1 = 00000000
    beq     s0, $zero, lbl_8087696C
    lwc1    $f20, %lo(var_80877FCC)($at)
    addiu   s2, $zero, 0x005E          # s2 = 0000005E
    lh      t6, 0x0000(s0)             # 00000000
lbl_80876928:
    bnel    s2, t6, lbl_80876964
    lw      s0, 0x0124(s0)             # 00000124
    lh      t7, 0x01D4(s0)             # 000001D4
    or      a0, s3, $zero              # a0 = 00000000
    beql    t7, $zero, lbl_80876964
    lw      s0, 0x0124(s0)             # 00000124
    jal     func_800214AC
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f0, $f20
    nop
    bc1fl   lbl_80876964
    lw      s0, 0x0124(s0)             # 00000124
    mov.s   $f20, $f0
    or      s1, s0, $zero              # s1 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_80876964:
    bnel    s0, $zero, lbl_80876928
    lh      t6, 0x0000(s0)             # 00000000
lbl_8087696C:
    beq     s1, $zero, lbl_80876A1C
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f20                  # $f20 = 15.00
    lui     $at, 0x4250                # $at = 42500000
    swc1    $f4, 0x0034($sp)
    lwc1    $f6, 0x0028(s1)            # 00000028
    mtc1    $at, $f8                   # $f8 = 52.00
    addiu   s0, $sp, 0x0034            # s0 = FFFFFFE4
    or      a1, s0, $zero              # a1 = FFFFFFE4
    add.s   $f10, $f6, $f8
    or      a0, s3, $zero              # a0 = 00000000
    add.s   $f16, $f10, $f20
    swc1    $f16, 0x0038($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    jal     func_800214D8
    swc1    $f18, 0x003C($sp)
    c.lt.s  $f0, $f20
    or      a0, s3, $zero              # a0 = 00000000
    bc1f    lbl_808769D4
    nop
    jal     func_808760AC
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80876A1C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808769D4:
    jal     func_800213B4
    or      a1, s1, $zero              # a1 = 00000000
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s3, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80021488
    or      a1, s0, $zero              # a1 = FFFFFFE4
    addiu   a1, v0, 0x1554             # a1 = 00001554
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s3, 0x00B4             # a0 = 000000B4
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     $zero, $zero, lbl_80876A1C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80876A1C:
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80876A3C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    jal     func_8008C9C0
    sw      a0, 0x002C($sp)
    lh      v1, 0x01AA(s0)             # 000001AA
    lw      a0, 0x002C($sp)
    beq     v1, $zero, lbl_80876A70
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
lbl_80876A70:
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x003C($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f2                   # $f2 = 1.50
    lbu     t7, 0x01A9(s0)             # 000001A9
    mul.s   $f4, $f0, $f2
    add.s   $f6, $f4, $f2
    bne     t7, $zero, lbl_80876AD0
    swc1    $f6, 0x0068(s0)            # 00000068
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    beql    t8, $at, lbl_80876AD4
    lw      t9, 0x003C($sp)
    jal     func_808767D0
    lw      a1, 0x0044($sp)
    bne     v0, $zero, lbl_80876C48
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808768EC
    lw      a1, 0x0044($sp)
    bnel    v0, $zero, lbl_80876C4C
    lhu     t1, 0x0088(s0)             # 00000088
lbl_80876AD0:
    lw      t9, 0x003C($sp)
lbl_80876AD4:
    beql    t9, $zero, lbl_80876BFC
    lhu     v0, 0x0088(s0)             # 00000088
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_80877FD0)     # $at = 80870000
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80876B28
    nop
    jal     func_8002140C
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    beq     $zero, $zero, lbl_80876B74
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80876B28:
    lwc1    $f10, %lo(var_80877FD0)($at)
    lui     $at, 0x44C0                # $at = 44C00000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_80876B74
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lh      t0, 0x00B6(s0)             # 000000B6
    mtc1    t0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    add.s   $f4, $f18, $f0
    trunc.w.s $f6, $f4
    mfc1    t2, $f6
    nop
    sh      t2, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80876B74:
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f8, 0x0080(s0)            # 00000080
    lwc1    $f0, 0x0028(s0)            # 00000028
    addiu   t3, $zero, 0x0954          # t3 = 00000954
    add.s   $f16, $f8, $f10
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80876BA4
    lwc1    $f18, 0x0300(s0)           # 00000300
    beq     $zero, $zero, lbl_80876C38
    sh      t3, 0x01AC(s0)             # 000001AC
    lwc1    $f18, 0x0300(s0)           # 00000300
lbl_80876BA4:
    addiu   t4, $zero, 0x2154          # t4 = 00002154
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_80876BC0
    nop
    beq     $zero, $zero, lbl_80876C38
    sh      t4, 0x01AC(s0)             # 000001AC
lbl_80876BC0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80877FD4)     # $at = 80870000
    lwc1    $f4, %lo(var_80877FD4)($at)
    addiu   t5, $zero, 0x0954          # t5 = 00000954
    addiu   t6, $zero, 0x2154          # t6 = 00002154
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80876BF0
    nop
    beq     $zero, $zero, lbl_80876C38
    sh      t5, 0x01AC(s0)             # 000001AC
lbl_80876BF0:
    beq     $zero, $zero, lbl_80876C38
    sh      t6, 0x01AC(s0)             # 000001AC
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80876BFC:
    addiu   t8, $zero, 0x0954          # t8 = 00000954
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80876C14
    andi    t9, v0, 0x0010             # t9 = 00000000
    beq     $zero, $zero, lbl_80876C38
    sh      t8, 0x01AC(s0)             # 000001AC
lbl_80876C14:
    bne     t9, $zero, lbl_80876C34
    addiu   t0, $zero, 0x2154          # t0 = 00002154
    lwc1    $f6, 0x0300(s0)            # 00000300
    lwc1    $f8, 0x0028(s0)            # 00000028
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80876C3C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80876C34:
    sh      t0, 0x01AC(s0)             # 000001AC
lbl_80876C38:
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80876C3C:
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
lbl_80876C48:
    lhu     t1, 0x0088(s0)             # 00000088
lbl_80876C4C:
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t2, t1, 0x0008             # t2 = 00000000
    beq     t2, $zero, lbl_80876C70
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    lh      a1, 0x007E(s0)             # 0000007E
    addiu   t3, $zero, 0x0300          # t3 = 00000300
    jal     func_80064508
    sw      t3, 0x0010($sp)
lbl_80876C70:
    lh      t4, 0x01AA(s0)             # 000001AA
    lui     $at, 0x4348                # $at = 43480000
    bnel    t4, $zero, lbl_80876CBC
    lw      $ra, 0x0024($sp)
    lwc1    $f10, 0x0090(s0)           # 00000090
    mtc1    $at, $f16                  # $f16 = 200.00
    nop
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_80876CBC
    lw      $ra, 0x0024($sp)
    jal     func_80079B44
    lw      a0, 0x0044($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80876CBC
    lw      $ra, 0x0024($sp)
    jal     func_808764C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80876CBC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80876CCC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    sw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lui     a1, 0x40C0                 # a1 = 40C00000
    beq     v0, $zero, lbl_80876D04
    lw      a0, 0x0024($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x017C(s0)            # 0000017C
lbl_80876D04:
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    jal     func_8008C9C0
    sb      t6, 0x0114(s0)             # 00000114
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lw      t7, 0x0004(s0)             # 00000004
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $zero, lbl_80876D40
    addiu   a1, $zero, 0x6800          # a1 = 00006800
    beq     $zero, $zero, lbl_80876D88
    sb      t9, 0x0114(s0)             # 00000114
lbl_80876D40:
    jal     func_80063704
    addiu   a2, $zero, 0x0200          # a2 = 00000200
    lh      t0, 0x00B6(s0)             # 000000B6
    lh      v1, 0x01AA(s0)             # 000001AA
    addiu   t1, t0, 0xFD00             # t1 = FFFFFD00
    beq     v1, $zero, lbl_80876D64
    sh      t1, 0x00B6(s0)             # 000000B6
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01AA(s0)             # 000001AA
lbl_80876D64:
    lhu     t3, 0x0088(s0)             # 00000088
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80876D80
    nop
    lh      t5, 0x01AA(s0)             # 000001AA
    bnel    t5, $zero, lbl_80876D8C
    lw      $ra, 0x001C($sp)
lbl_80876D80:
    jal     func_80876460
    or      a0, s0, $zero              # a0 = 00000000
lbl_80876D88:
    lw      $ra, 0x001C($sp)
lbl_80876D8C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80876D9C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x01AA(s0)             # 000001AA
    addiu   a0, s0, 0x0050             # a0 = 00000050
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80876DCC
    lui     a2, 0x39B2                 # a2 = 39B20000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
lbl_80876DCC:
    jal     func_8006385C
    ori     a2, a2, 0x4207             # a2 = 39B24207
    lwc1    $f0, 0x0050(s0)            # 00000050
    lh      t7, 0x01AA(s0)             # 000001AA
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f0, 0x0058(s0)            # 00000058
    bne     t7, $zero, lbl_80876E04
    swc1    $f0, 0x0054(s0)            # 00000054
    lw      a0, 0x0024($sp)
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00E0          # a3 = 000000E0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80876E04:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80876E18:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0030($sp)
    jal     func_8008C9C0
    sw      t7, 0x0044($sp)
    lh      v1, 0x01AA(s0)             # 000001AA
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4080                 # a1 = 40800000
    beq     v1, $zero, lbl_80876E5C
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01AA(s0)             # 000001AA
lbl_80876E5C:
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    lhu     t9, 0x0088(s0)             # 00000088
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    andi    t0, t9, 0x0008             # t0 = 00000000
    beq     t0, $zero, lbl_80876EA8
    or      a0, s0, $zero              # a0 = 00000000
    lh      a1, 0x007E(s0)             # 0000007E
    addiu   t1, $zero, 0x0300          # t1 = 00000300
    sw      t1, 0x0010($sp)
    jal     func_80064508
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     $zero, $zero, lbl_80876FF4
    lh      t0, 0x01AA(s0)             # 000001AA
lbl_80876EA8:
    jal     func_80021A28
    addiu   a1, $zero, 0x2800          # a1 = 00002800
    beq     v0, $zero, lbl_80876F58
    lui     $at, 0x3FC0                # $at = 3FC00000
    lw      a0, 0x0030($sp)
    jal     func_8008D6A8
    lui     a1, 0x4080                 # a1 = 40800000
    beq     v0, $zero, lbl_80876EE0
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 4.00
    swc1    $f4, 0x017C(s0)            # 0000017C
    swc1    $f6, 0x0178(s0)            # 00000178
lbl_80876EE0:
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t2, $zero, 0x0300          # t2 = 00000300
    sw      t2, 0x0010($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    lw      v1, 0x0044($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lwc1    $f8, 0x0024(v1)            # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    swc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x0028(v1)           # 00000028
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x003C($sp)
    lwc1    $f4, 0x002C(v1)            # 0000002C
    jal     func_80021488
    swc1    $f4, 0x0040($sp)
    addiu   a1, v0, 0x1554             # a1 = 00001554
    sll     a1, a1, 16
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    beq     $zero, $zero, lbl_80876FF4
    lh      t0, 0x01AA(s0)             # 000001AA
lbl_80876F58:
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    c.lt.s  $f8, $f10
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    addiu   t4, $zero, 0x0300          # t4 = 00000300
    swc1    $f6, 0x017C(s0)            # 0000017C
    bc1fl   lbl_80876F98
    lhu     v0, 0x0088(s0)             # 00000088
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      t4, 0x0010($sp)
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80876F98:
    addiu   t6, $zero, 0x0954          # t6 = 00000954
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    andi    t5, v0, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_80876FB4
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    sh      t6, 0x01AC(s0)             # 000001AC
    lhu     v0, 0x0088(s0)             # 00000088
lbl_80876FB4:
    andi    t7, v0, 0x0010             # t7 = 00000000
    bne     t7, $zero, lbl_80876FDC
    addiu   t8, $zero, 0x2154          # t8 = 00002154
    lwc1    $f16, 0x0300(s0)           # 00000300
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   t9, $zero, 0x0954          # t9 = 00000954
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_80876FE8
    sh      t9, 0x01AC(s0)             # 000001AC
lbl_80876FDC:
    beq     $zero, $zero, lbl_80876FE8
    sh      t8, 0x01AC(s0)             # 000001AC
    sh      t9, 0x01AC(s0)             # 000001AC
lbl_80876FE8:
    jal     func_80063704
    lh      a1, 0x01AC(s0)             # 000001AC
    lh      t0, 0x01AA(s0)             # 000001AA
lbl_80876FF4:
    beq     t0, $zero, lbl_80877010
    nop
    jal     func_80079B44
    lw      a0, 0x004C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_8087701C
    lw      $ra, 0x0024($sp)
lbl_80877010:
    jal     func_80876530
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_8087701C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8087702C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0160             # a0 = 00000160
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    addiu   a0, s0, 0x0060             # a0 = 00000060
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3E19                 # a2 = 3E190000
    ori     a2, a2, 0x999A             # a2 = 3E19999A
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_808770B0
    lw      $ra, 0x001C($sp)
    lh      v0, 0x01AA(s0)             # 000001AA
    beq     v0, $zero, lbl_8087709C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
    lh      v0, 0x01AA(s0)             # 000001AA
lbl_8087709C:
    bnel    v0, $zero, lbl_808770B0
    lw      $ra, 0x001C($sp)
    jal     func_80876530
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808770B0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808770C0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lh      v1, 0x01AA(s0)             # 000001AA
    addiu   a0, s0, 0x0024             # a0 = 00000024
    beq     v1, $zero, lbl_808770F0
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
lbl_808770F0:
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0300(s0)            # 00000300
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80877140
    lh      t7, 0x01AA(s0)             # 000001AA
    jal     func_80063EB8
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    nop
    c.lt.s  $f0, $f10
    nop
    bc1t    lbl_80877150
    nop
    lh      t7, 0x01AA(s0)             # 000001AA
lbl_80877140:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4040                 # a1 = 40400000
    bne     t7, $zero, lbl_80877160
    lui     a2, 0x3E99                 # a2 = 3E990000
lbl_80877150:
    jal     func_80876310
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80877218
    lw      $ra, 0x0024($sp)
lbl_80877160:
    jal     func_8006385C
    ori     a2, a2, 0x999A             # a2 = 0000999A
    lhu     v1, 0x0088(s0)             # 00000088
    addiu   t9, $zero, 0x0954          # t9 = 00000954
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, v1, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80877188
    andi    t0, v1, 0x0010             # t0 = 00000000
    beq     $zero, $zero, lbl_808771B8
    sh      t9, 0x01AC(s0)             # 000001AC
lbl_80877188:
    bne     t0, $zero, lbl_808771AC
    addiu   t1, $zero, 0x2154          # t1 = 00002154
    lwc1    $f16, 0x0300(s0)           # 00000300
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   t2, $zero, 0x0954          # t2 = 00000954
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_808771B8
    sh      t2, 0x01AC(s0)             # 000001AC
lbl_808771AC:
    beq     $zero, $zero, lbl_808771B8
    sh      t1, 0x01AC(s0)             # 000001AC
    sh      t2, 0x01AC(s0)             # 000001AC
lbl_808771B8:
    lhu     t3, 0x0088(s0)             # 00000088
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0C00          # a3 = 00000C00
    andi    t4, t3, 0x0008             # t4 = 00000000
    beq     t4, $zero, lbl_808771E8
    addiu   t5, $zero, 0x0300          # t5 = 00000300
    lh      a1, 0x007E(s0)             # 0000007E
    sw      t5, 0x0010($sp)
    jal     func_80064508
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    beq     $zero, $zero, lbl_80877208
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_808771E8:
    jal     func_8002140C
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_80877208:
    lh      a1, 0x01AC(s0)             # 000001AC
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    lw      $ra, 0x0024($sp)
lbl_80877218:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80877228:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0160             # a0 = 00000160
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x1554          # a1 = 00001554
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    lh      v0, 0x01AA(s0)             # 000001AA
    beq     v0, $zero, lbl_80877278
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
    lh      v0, 0x01AA(s0)             # 000001AA
lbl_80877278:
    bnel    v0, $zero, lbl_808772BC
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x01A9(s0)             # 000001A9
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beql    t7, $zero, lbl_8087729C
    lh      t9, 0x001C(s0)             # 0000001C
    beq     $zero, $zero, lbl_808772B0
    sb      t8, 0x01A8(s0)             # 000001A8
    lh      t9, 0x001C(s0)             # 0000001C
lbl_8087729C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    bne     t9, $at, lbl_808772B0
    nop
    sb      t0, 0x01A8(s0)             # 000001A8
lbl_808772B0:
    jal     func_80876310
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808772BC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808772CC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    lui     $at, 0xC6FA                # $at = C6FA0000
    andi    t7, t6, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_80877308
    nop
    mtc1    $at, $f4                   # $f4 = -32000.00
    lwc1    $f6, 0x0080(a0)            # 00000080
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_8087731C
    sb      t8, 0x0114(a0)             # 00000114
lbl_80877308:
    jal     func_80876460
    sb      $zero, 0x0114(a0)          # 00000114
    beq     $zero, $zero, lbl_80877320
    lw      $ra, 0x0014($sp)
    sb      t8, 0x0114(a0)             # 00000114
lbl_8087731C:
    lw      $ra, 0x0014($sp)
lbl_80877320:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8087732C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    lh      t6, 0x01AA(s0)             # 000001AA
    addiu   a0, s0, 0x0160             # a0 = 00000160
    beq     t6, $zero, lbl_8087738C
    nop
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lui     a1, 0x40C0                 # a1 = 40C00000
    beql    v0, $zero, lbl_808773B8
    lui     $at, 0x42F0                # $at = 42F00000
    lh      t7, 0x01AA(s0)             # 000001AA
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_808773B4
    sh      t8, 0x01AA(s0)             # 000001AA
lbl_8087738C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80877FD8)     # $at = 80870000
    lwc1    $f4, %lo(var_80877FD8)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808773B8
    lui     $at, 0x42F0                # $at = 42F00000
    sh      t9, 0x01AA(s0)             # 000001AA
lbl_808773B4:
    lui     $at, 0x42F0                # $at = 42F00000
lbl_808773B8:
    mtc1    $at, $f8                   # $f8 = 120.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_808773DC
    lw      $ra, 0x001C($sp)
    jal     func_80876794
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808773DC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_808773EC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      a2, 0x1C44(a1)             # 00001C44
    addiu   a0, s0, 0x0160             # a0 = 00000160
    jal     func_8008C9C0
    sw      a2, 0x0034($sp)
    lh      v1, 0x01AA(s0)             # 000001AA
    lw      a2, 0x0034($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    beq     v1, $zero, lbl_80877428
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x01AA(s0)             # 000001AA
    lh      v1, 0x01AA(s0)             # 000001AA
lbl_80877428:
    slti    $at, v1, 0x0028
    beq     $at, $zero, lbl_80877444
    addiu   a1, $zero, 0xF554          # a1 = FFFFF554
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    beq     $zero, $zero, lbl_808774A0
    lh      t7, 0x01AA(s0)             # 000001AA
lbl_80877444:
    lwc1    $f4, 0x0024(a2)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f4, 0x0028($sp)
    lwc1    $f6, 0x0028(a2)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x002C($sp)
    lwc1    $f16, 0x002C(a2)           # 0000002C
    jal     func_80021488
    swc1    $f16, 0x0030($sp)
    addiu   a1, v0, 0x1554             # a1 = 00001554
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063704
    addiu   a2, $zero, 0x0300          # a2 = 00000300
    lh      t7, 0x01AA(s0)             # 000001AA
lbl_808774A0:
    bnel    t7, $zero, lbl_808774B4
    lw      $ra, 0x001C($sp)
    jal     func_80876310
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808774B4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_808774C4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s2, 0x0030($sp)
    sw      s0, 0x0028($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, s1, 0x0024             # s2 = 00000024
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    or      a0, s3, $zero              # a0 = 00000000
lbl_808774F8:
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000024
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8001DFEC
    sw      s0, 0x0018($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s4, lbl_808774F8
    or      a0, s3, $zero              # a0 = 00000000
    sb      $zero, 0x01A8(s1)          # 000001A8
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80877544:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x0315(s0)             # 00000315
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_808776E0
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0315(s0)             # 00000315
    jal     func_800283BC
    lw      a1, 0x0320(s0)             # 00000320
    lbu     t8, 0x00B1(s0)             # 000000B1
    bne     t8, $zero, lbl_80877594
    nop
    lbu     t9, 0x00B0(s0)             # 000000B0
    beql    t9, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
lbl_80877594:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_808775BC
    lw      a0, 0x0024($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t0, $at
    sw      t1, 0x0004(s0)             # 00000004
lbl_808775BC:
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80877644
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a1, s0, $zero              # a1 = 00000000
    bnel    t2, $at, lbl_8087760C
    lbu     t3, 0x01A9(s0)             # 000001A9
    sb      $zero, 0x00AF(s0)          # 000000AF
    jal     func_80025B4C
    lw      a0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808774C4
    lw      a1, 0x0024($sp)
    jal     func_808763BC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
    lbu     t3, 0x01A9(s0)             # 000001A9
lbl_8087760C:
    bnel    t3, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
    jal     func_808760AC
    or      a0, s0, $zero              # a0 = 00000000
    lw      t5, 0x01A4(s0)             # 000001A4
    lui     t4, %hi(func_8087732C)     # t4 = 80870000
    addiu   t4, t4, %lo(func_8087732C) # t4 = 8087732C
    bnel    t4, t5, lbl_808776E4
    lw      $ra, 0x001C($sp)
    jal     func_80876310
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80877644:
    bnel    v0, $at, lbl_80877684
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $at, lbl_80877670
    nop
    jal     func_808763BC
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
lbl_80877670:
    jal     func_808765D0
    lw      a1, 0x0024($sp)
    beq     $zero, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80877684:
    bnel    v0, $at, lbl_808776B4
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t8, 0x01A4(s0)             # 000001A4
    lui     t7, %hi(func_80877228)     # t7 = 80870000
    addiu   t7, t7, %lo(func_80877228) # t7 = 80877228
    beql    t7, t8, lbl_808776E4
    lw      $ra, 0x001C($sp)
    jal     func_80876560
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808776E4
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_808776B4:
    bne     v0, $at, lbl_808776D8
    nop
    lh      t9, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    or      a0, s0, $zero              # a0 = 00000000
    bne     t9, $at, lbl_808776D8
    nop
    jal     func_808774C4
    lw      a1, 0x0024($sp)
lbl_808776D8:
    jal     func_808763BC
    or      a0, s0, $zero              # a0 = 00000000
lbl_808776E0:
    lw      $ra, 0x001C($sp)
lbl_808776E4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_808776F4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lbu     v0, 0x0314(s0)             # 00000314
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80877758
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0314(s0)             # 00000314
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3840          # a1 = 00003840
    lbu     t8, 0x01A9(s0)             # 000001A9
    beql    t8, $zero, lbl_80877740
    lw      t0, 0x01A4(s0)             # 000001A4
    jal     func_80876080
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x01A4(s0)             # 000001A4
lbl_80877740:
    lui     t9, %hi(func_808773EC)     # t9 = 80870000
    addiu   t9, t9, %lo(func_808773EC) # t9 = 808773EC
    beql    t9, t0, lbl_8087775C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80876484
    or      a0, s0, $zero              # a0 = 00000000
lbl_80877758:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087775C:
    jal     func_80877544
    lw      a1, 0x0044($sp)
    lw      t9, 0x01A4(s0)             # 000001A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
    lw      t1, 0x0004(s0)             # 00000004
    andi    t2, t1, 0x8000             # t2 = 00000000
    bnel    t2, $zero, lbl_808777E0
    lui     $at, 0x4120                # $at = 41200000
    lbu     t3, 0x00AF(s0)             # 000000AF
    beq     t3, $zero, lbl_808777A8
    nop
    lw      v0, 0x01A4(s0)             # 000001A4
    lui     t4, %hi(func_80877228)     # t4 = 80870000
    addiu   t4, t4, %lo(func_80877228) # t4 = 80877228
    bne     t4, v0, lbl_808777B8
    lui     t5, %hi(func_8087702C)     # t5 = 80870000
lbl_808777A8:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808777E0
    lui     $at, 0x4120                # $at = 41200000
lbl_808777B8:
    addiu   t5, t5, %lo(func_8087702C) # t5 = 0000702C
    beq     t5, v0, lbl_808777D4
    nop
    lh      t6, 0x00B4(s0)             # 000000B4
    addiu   t7, $zero, 0x1554          # t7 = 00001554
    subu    t8, t7, t6
    sh      t8, 0x0030(s0)             # 00000030
lbl_808777D4:
    jal     func_800212B8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_808777E0:
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lw      t2, 0x0320(s0)             # 00000320
    lui     $at, 0x4120                # $at = 41200000
    trunc.w.s $f8, $f6
    mtc1    $at, $f16                  # $f16 = 10.00
    lui     t0, %hi(func_80876E18)     # t0 = 80870000
    lui     $at, 0x0001                # $at = 00010000
    mfc1    t1, $f8
    addiu   t0, t0, %lo(func_80876E18) # t0 = 80876E18
    lui     t9, %hi(func_808773EC)     # t9 = 80870000
    sh      t1, 0x0030(t2)             # 00000030
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      t5, 0x0320(s0)             # 00000320
    ori     $at, $at, 0x1E60           # $at = 00011E60
    add.s   $f18, $f10, $f16
    addiu   t9, t9, %lo(func_808773EC) # t9 = 808773EC
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    sh      t4, 0x0032(t5)             # 00000032
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lw      t8, 0x0320(s0)             # 00000320
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sh      t6, 0x0034(t8)             # 00000034
    lw      v0, 0x01A4(s0)             # 000001A4
    lw      a0, 0x0044($sp)
    beq     t0, v0, lbl_8087788C
    addu    a1, a0, $at
    bnel    t9, v0, lbl_80877898
    lw      a0, 0x0044($sp)
lbl_8087788C:
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0304             # a2 = 00000304
    lw      a0, 0x0044($sp)
lbl_80877898:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   t2, s0, 0x0304             # t2 = 00000304
    addu    t1, a0, $at
    sw      t1, 0x0030($sp)
    sw      t2, 0x002C($sp)
    lbu     t3, 0x00AF(s0)             # 000000AF
    or      a1, t1, $zero              # a1 = 00000000
    beql    t3, $zero, lbl_808778F0
    lw      a0, 0x0044($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, t2, $zero              # a2 = 00000304
    lh      t4, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x0160             # a0 = 00000160
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_8008D6A8
    sh      t4, 0x0032(s0)             # 00000032
    beq     v0, $zero, lbl_808778EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3841          # a1 = 00003841
lbl_808778EC:
    lw      a0, 0x0044($sp)
lbl_808778F0:
    lw      a1, 0x0030($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    swc1    $f0, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f16, 0x0034($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lh      a0, 0x00B4(s0)             # 000000B4
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    jal     func_80063684              # coss?
    swc1    $f8, 0x0038(s0)            # 00000038
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    lh      a0, 0x00B4(s0)             # 000000B4
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    jal     func_800636C4              # sins?
    swc1    $f4, 0x003C(s0)            # 0000003C
    swc1    $f0, 0x0034($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0034($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0040(s0)            # 00000040
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_8087799C:
    lw      t7, 0x0014($sp)
    lui     t6, %hi(func_80877E34)     # t6 = 80870000
    addiu   t6, t6, %lo(func_80877E34) # t6 = 80877E34
    lw      t8, 0x0134(t7)             # 00000134
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, t8, lbl_808779D0
    nop
    lbu     t9, 0x1C27(a0)             # 00001C27
    bne     t9, $zero, lbl_808779D0
    nop
    beq     $zero, $zero, lbl_808779E8
    sw      $zero, 0x0000(a2)          # 00000000
lbl_808779D0:
    bne     a1, $at, lbl_808779E8
    lui     $at, %hi(var_80877FDC)     # $at = 80870000
    lwc1    $f6, %lo(var_80877FDC)($at)
    lwc1    $f4, 0x0004(a3)            # 00000004
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(a3)            # 00000004
lbl_808779E8:
    jr      $ra
    nop


func_808779F0:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s0, 0x0030($sp)
    lw      s0, 0x00B0($sp)
    sw      $ra, 0x0034($sp)
    sw      a0, 0x00A0($sp)
    sw      a2, 0x00A8($sp)
    sw      a3, 0x00AC($sp)
    lbu     t6, 0x01A9(s0)             # 000001A9
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bnel    t6, $zero, lbl_80877A50
    lbu     v0, 0x01A8(s0)             # 000001A8
    bne     a1, $at, lbl_80877A4C
    lw      a0, 0x00B4($sp)
    lw      v1, 0x0000(a0)             # 00000000
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x1678             # t9 = 06001678
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a0)             # 00000000
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80877D08
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_80877A4C:
    lbu     v0, 0x01A8(s0)             # 000001A8
lbl_80877A50:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80877A60
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80877D04
lbl_80877A60:
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
    beq     a1, v0, lbl_80877A74
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bnel    a1, $at, lbl_80877D08
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_80877A74:
    lw      t3, 0x01A4(s0)             # 000001A4
    lui     t2, %hi(func_80876D9C)     # t2 = 80870000
    addiu   t2, t2, %lo(func_80876D9C) # t2 = 80876D9C
    beq     t2, t3, lbl_80877AF4
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFA8
    jal     func_800AA740
    sw      a1, 0x00A4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0078($sp)
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0094($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f4, 0x007C($sp)
    mul.s   $f18, $f0, $f16
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0098($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f16, 0x0080($sp)
    addiu   t0, $zero, 0xFFD8          # t0 = FFFFFFD8
    mul.s   $f10, $f0, $f8
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    add.s   $f18, $f10, $f16
    beq     $zero, $zero, lbl_80877C9C
    swc1    $f18, 0x009C($sp)
lbl_80877AF4:
    bnel    a1, v0, lbl_80877BB8
    lh      a0, 0x01AA(s0)             # 000001AA
    lh      a0, 0x01AA(s0)             # 000001AA
    sw      a1, 0x00A4($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t4, 0x01AA(s0)             # 000001AA
    lwc1    $f10, 0x0024(s0)           # 00000024
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0094($sp)
    lh      a0, 0x01AA(s0)             # 000001AA
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lh      t5, 0x01AA(s0)             # 000001AA
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    beq     $zero, $zero, lbl_80877C68
    swc1    $f10, 0x009C($sp)
    lh      a0, 0x01AA(s0)             # 000001AA
lbl_80877BB8:
    sw      a1, 0x00A4($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lh      t6, 0x01AA(s0)             # 000001AA
    lwc1    $f16, 0x0024(s0)           # 00000024
    mtc1    t6, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f0, $f4
    sub.s   $f8, $f16, $f6
    swc1    $f8, 0x0094($sp)
    lh      a0, 0x01AA(s0)             # 000001AA
    addu    $at, a0, $zero
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    addu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lh      t7, 0x01AA(s0)             # 000001AA
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f16, $f0, $f4
    sub.s   $f6, $f10, $f16
    swc1    $f6, 0x009C($sp)
lbl_80877C68:
    lh      t8, 0x01AA(s0)             # 000001AA
    addiu   t9, $zero, 0x000F          # t9 = 0000000F
    lui     $at, 0x3FC0                # $at = 3FC00000
    subu    t2, t9, t8
    mtc1    t2, $f8                    # $f8 = 0.00
    mtc1    $at, $f4                   # $f4 = 1.50
    lwc1    $f16, 0x0028(s0)           # 00000028
    cvt.s.w $f18, $f8
    addiu   t0, $zero, 0xFFFB          # t0 = FFFFFFFB
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    mul.s   $f10, $f18, $f4
    add.s   $f6, $f16, $f10
    swc1    $f6, 0x0098($sp)
lbl_80877C9C:
    lbu     t3, 0x01A8(s0)             # 000001A8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x00A0($sp)
    bne     t3, $at, lbl_80877CC4
    addiu   a1, $sp, 0x0094            # a1 = FFFFFFF4
    lui     v0, %hi(var_80877F80)      # v0 = 80870000
    lui     v1, %hi(var_80877F84)      # v1 = 80870000
    addiu   v0, v0, %lo(var_80877F80)  # v0 = 80877F80
    beq     $zero, $zero, lbl_80877CD4
    addiu   v1, v1, %lo(var_80877F84)  # v1 = 80877F84
lbl_80877CC4:
    lui     v0, %hi(var_80877F88)      # v0 = 80870000
    lui     v1, %hi(var_80877F8C)      # v1 = 80870000
    addiu   v0, v0, %lo(var_80877F88)  # v0 = 80877F88
    addiu   v1, v1, %lo(var_80877F8C)  # v1 = 80877F8C
lbl_80877CD4:
    lui     a2, %hi(var_80877F90)      # a2 = 80870000
    lui     a3, %hi(var_80877F9C)      # a3 = 80870000
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    sw      t4, 0x0018($sp)
    addiu   a3, a3, %lo(var_80877F9C)  # a3 = 80877F9C
    addiu   a2, a2, %lo(var_80877F90)  # a2 = 80877F90
    sw      v0, 0x0010($sp)
    sw      v1, 0x0014($sp)
    sw      t0, 0x001C($sp)
    jal     func_8001BF34
    sw      t1, 0x0020($sp)
    lw      a1, 0x00A4($sp)
lbl_80877D04:
    addiu   v0, $zero, 0x000F          # v0 = 0000000F
lbl_80877D08:
    beq     a1, v0, lbl_80877D20
    addiu   $at, $zero, 0x0015         # $at = 00000015
    beq     a1, $at, lbl_80877D20
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bnel    a1, $at, lbl_80877D70
    lw      $ra, 0x0034($sp)
lbl_80877D20:
    bne     a1, v0, lbl_80877D30
    lui     a0, %hi(var_80877FA8)      # a0 = 80870000
    beq     $zero, $zero, lbl_80877D48
    addiu   a1, s0, 0x013C             # a1 = 0000013C
lbl_80877D30:
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bnel    a1, $at, lbl_80877D48
    addiu   a1, s0, 0x0154             # a1 = 00000154
    beq     $zero, $zero, lbl_80877D48
    addiu   a1, s0, 0x0148             # a1 = 00000148
    addiu   a1, s0, 0x0154             # a1 = 00000154
lbl_80877D48:
    addiu   a0, a0, %lo(var_80877FA8)  # a0 = 80877FA8
    jal     func_800AB958
    sw      a1, 0x0090($sp)
    lw      a1, 0x0090($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lwc1    $f8, 0x0004(a1)            # 00000004
    sub.s   $f4, $f8, $f18
    swc1    $f4, 0x0004(a1)            # 00000004
    lw      $ra, 0x0034($sp)
lbl_80877D70:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    jr      $ra
    nop


func_80877D80:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      t1, 0x0030($sp)
    lui     a3, %hi(func_8087799C)     # a3 = 80870000
    lui     t5, %hi(func_808779F0)     # t5 = 80870000
    lbu     t7, 0x01A9(t1)             # 000001A9
    lw      t0, 0x0028($sp)
    addiu   t5, t5, %lo(func_808779F0) # t5 = 808779F0
    beq     t7, $zero, lbl_80877DE0
    addiu   a3, a3, %lo(func_8087799C) # a3 = 8087799C
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80877E00
    lw      a1, 0x0164(t1)             # 00000164
lbl_80877DE0:
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      a1, 0x0164(t1)             # 00000164
lbl_80877E00:
    lw      a2, 0x0180(t1)             # 00000180
    sw      t1, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      t6, 0x02C0(t0)             # 000002C0
    sw      t0, 0x0028($sp)
    lw      a0, 0x0034($sp)
    jal     func_8008A414
    sw      t6, 0x0018($sp)
    lw      t0, 0x0028($sp)
    sw      v0, 0x02C0(t0)             # 000002C0
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80877E34:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0028($sp)
    lw      t1, 0x0030($sp)
    lui     a3, %hi(func_8087799C)     # a3 = 80870000
    lui     t5, %hi(func_808779F0)     # t5 = 80870000
    lbu     t7, 0x01A9(t1)             # 000001A9
    lw      t0, 0x0028($sp)
    addiu   t5, t5, %lo(func_808779F0) # t5 = 808779F0
    beq     t7, $zero, lbl_80877E94
    addiu   a3, a3, %lo(func_8087799C) # a3 = 8087799C
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80877EB4
    lw      a1, 0x0164(t1)             # 00000164
lbl_80877E94:
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(t0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      a1, 0x0164(t1)             # 00000164
lbl_80877EB4:
    lw      a2, 0x0180(t1)             # 00000180
    sw      t1, 0x0014($sp)
    sw      t5, 0x0010($sp)
    lw      t6, 0x02D0(t0)             # 000002D0
    sw      t0, 0x0028($sp)
    lw      a0, 0x0034($sp)
    jal     func_8008A414
    sw      t6, 0x0018($sp)
    lw      t0, 0x0028($sp)
    sw      v0, 0x02D0(t0)             # 000002D0
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop
    nop

.section .data

var_80877EF0: .word 0x00130500, 0x00005005, 0x000D0000, 0x00000364
.word func_808760EC
.word func_808762E4
.word func_808776F4
.word func_80877D80
var_80877F10: .word \
0x00000000, 0xFFCFFFFF, 0x01080000, 0xFFCFFFFF, \
0x00000000, 0x09010100, 0x01000000, 0x03E80000, \
0x000F0064
var_80877F34: .word 0x03110939, 0x10000000, 0x00000001
var_80877F40: .word var_80877F10
var_80877F44: .word 0x0100000A, 0x000A1E00
var_80877F4C: .word \
0x10020102, 0x01020202, 0x010204F2, 0x34020202, \
0x02203400, 0x00000104, 0x02020804, 0x00000400
var_80877F6C: .word \
0xC8500005, 0xB86CFE0C, 0xB070FFFC, 0x801F0002, \
0x304C0FA0
var_80877F80: .word 0xFFFF64FF
var_80877F84: .word 0xFF320000
var_80877F88: .word 0x64C8FFFF
var_80877F8C: .word 0x0000FF00
var_80877F90: .word 0x00000000, 0x3F000000, 0x00000000
var_80877F9C: .word 0x00000000, 0x3F000000, 0x00000000
var_80877FA8: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80877FC0: .word 0x3F59999A
var_80877FC4: .word 0x3E19999A
var_80877FC8: .word 0x3D4CCCCD
var_80877FCC: .word 0x4708B800
var_80877FD0: .word 0x3F4CCCCD
var_80877FD4: .word 0x3EB33333
var_80877FD8: .word 0x3CA3D70A
var_80877FDC: .word 0x450FC000

