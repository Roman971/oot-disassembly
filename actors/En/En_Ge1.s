.section .text
func_80A8F100:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x022C             # t7 = 0000022C
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0228             # a3 = 06000228
    addiu   a2, a2, 0x0330             # a2 = 06000330
    sw      a1, 0x0030($sp)
    jal     func_8008C788
    lw      a0, 0x0044($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0228             # a1 = 06000228
    jal     func_8008D1C4
    lw      a0, 0x0030($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80A90E30)      # a3 = 80A90000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80A90E30)  # a3 = 80A90E30
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     t0, 0x0600                 # t0 = 06000000
    lui     t1, %hi(func_80A90AEC)     # t1 = 80A90000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, t0, 0x0228             # t0 = 06000228
    addiu   t1, t1, %lo(func_80A90AEC) # t1 = 80A90AEC
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    sw      t0, 0x02A0(s0)             # 000002A0
    sw      t1, 0x02A8(s0)             # 000002A8
    sb      t2, 0x001F(s0)             # 0000001F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t3, 0x0044($sp)
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    lui     t6, %hi(func_80A90008)     # t6 = 80A90000
    lh      t4, 0x00A4(t3)             # 000000A4
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   t6, t6, %lo(func_80A90008) # t6 = 80A90008
    bne     t4, $at, lbl_80A8F200
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    beq     $zero, $zero, lbl_80A8F210
    swc1    $f4, 0x00F4(s0)            # 000000F4
lbl_80A8F200:
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f6                   # $f6 = 1200.00
    nop
    swc1    $f6, 0x00F4(s0)            # 000000F4
lbl_80A8F210:
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beql    v0, $zero, lbl_80A8F264
    sb      t5, 0x029E(s0)             # 0000029E
    beq     v0, $at, lbl_80A8F26C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_80A8F298
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_80A8F2C4
    addiu   $at, $zero, 0x0045         # $at = 00000045
    beq     v0, $at, lbl_80A8F2FC
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   $at, $zero, 0x0046         # $at = 00000046
    beq     v0, $at, lbl_80A8F384
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    beq     $zero, $zero, lbl_80A8F3B0
    sh      $zero, 0x029C(s0)          # 0000029C
    sb      t5, 0x029E(s0)             # 0000029E
lbl_80A8F264:
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t6, 0x02A4(s0)             # 000002A4
lbl_80A8F26C:
    jal     func_80A8F554
    sb      t7, 0x029E(s0)             # 0000029E
    beq     v0, $zero, lbl_80A8F28C
    lui     t9, %hi(func_80A8F6D0)     # t9 = 80A90000
    lui     t8, %hi(func_80A8FF48)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FF48) # t8 = 80A8FF48
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t8, 0x02A4(s0)             # 000002A4
lbl_80A8F28C:
    addiu   t9, t9, %lo(func_80A8F6D0) # t9 = 80A8F6D0
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t9, 0x02A4(s0)             # 000002A4
lbl_80A8F298:
    jal     func_80A8F554
    sb      t0, 0x029E(s0)             # 0000029E
    beq     v0, $zero, lbl_80A8F2B8
    lui     t2, %hi(func_80A8F84C)     # t2 = 80A90000
    lui     t1, %hi(func_80A8F81C)     # t1 = 80A90000
    addiu   t1, t1, %lo(func_80A8F81C) # t1 = 80A8F81C
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t1, 0x02A4(s0)             # 000002A4
lbl_80A8F2B8:
    addiu   t2, t2, %lo(func_80A8F84C) # t2 = 80A8F84C
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t2, 0x02A4(s0)             # 000002A4
lbl_80A8F2C4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t3, 0x0004(v0)             # 8011A5D4
    lui     t4, %hi(func_80A8F918)     # t4 = 80A90000
    addiu   t4, t4, %lo(func_80A8F918) # t4 = 80A8F918
    bnel    t3, $zero, lbl_80A8F2F4
    sb      $zero, 0x029E(s0)          # 0000029E
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8F3B4
    lw      $ra, 0x002C($sp)
    sb      $zero, 0x029E(s0)          # 0000029E
lbl_80A8F2F4:
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t4, 0x02A4(s0)             # 000002A4
lbl_80A8F2FC:
    lbu     t5, -0x70C9(t5)            # FFFF8F37
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t6, v0, t5
    lbu     t7, 0x0074(t6)             # 00000074
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bnel    t7, $at, lbl_80A8F334
    sb      t8, 0x001F(s0)             # 0000001F
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A8F3B4
    lw      $ra, 0x002C($sp)
    sb      t8, 0x001F(s0)             # 0000001F
lbl_80A8F334:
    sb      $zero, 0x029E(s0)          # 0000029E
    lhu     t9, 0x13FA(v0)             # 000013FA
    lui     t1, %hi(func_80A905D0)     # t1 = 80A90000
    addiu   t1, t1, %lo(func_80A905D0) # t1 = 80A905D0
    andi    t0, t9, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_80A8F358
    nop
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t1, 0x02A4(s0)             # 000002A4
lbl_80A8F358:
    jal     func_80A8F554
    nop
    beq     v0, $zero, lbl_80A8F378
    lui     t3, %hi(func_80A8F6D0)     # t3 = 80A90000
    lui     t2, %hi(func_80A90718)     # t2 = 80A90000
    addiu   t2, t2, %lo(func_80A90718) # t2 = 80A90718
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t2, 0x02A4(s0)             # 000002A4
lbl_80A8F378:
    addiu   t3, t3, %lo(func_80A8F6D0) # t3 = 80A8F6D0
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t3, 0x02A4(s0)             # 000002A4
lbl_80A8F384:
    jal     func_80A8F554
    sb      t4, 0x029E(s0)             # 0000029E
    beq     v0, $zero, lbl_80A8F3A4
    lui     t6, %hi(func_80A8F6D0)     # t6 = 80A90000
    lui     t5, %hi(func_80A8FCA0)     # t5 = 80A90000
    addiu   t5, t5, %lo(func_80A8FCA0) # t5 = 80A8FCA0
    beq     $zero, $zero, lbl_80A8F3AC
    sw      t5, 0x02A4(s0)             # 000002A4
lbl_80A8F3A4:
    addiu   t6, t6, %lo(func_80A8F6D0) # t6 = 80A8F6D0
    sw      t6, 0x02A4(s0)             # 000002A4
lbl_80A8F3AC:
    sh      $zero, 0x029C(s0)          # 0000029C
lbl_80A8F3B0:
    lw      $ra, 0x002C($sp)
lbl_80A8F3B4:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A8F3C4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F3F0:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_80A8F490
    lwc1    $f0, 0x003C($sp)
    lhu     t8, 0x029C(s0)             # 0000029C
    lw      t6, 0x0040($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    lui     t7, %hi(func_80A90B2C)     # t7 = 80A90000
    addiu   a0, a0, 0x0228             # a0 = 06000228
    addiu   t7, t7, %lo(func_80A90B2C) # t7 = 80A90B2C
    andi    t9, t8, 0xFFFB             # t9 = 00000000
    sw      t7, 0x02A8(s0)             # 000002A8
    sh      t9, 0x029C(s0)             # 0000029C
    sw      a0, 0x02A0(s0)             # 000002A0
    jal     func_8008A194
    sw      t6, 0x02A4(s0)             # 000002A4
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t0, 0x0014($sp)
    addiu   a1, a1, 0x0228             # a1 = 06000228
    addiu   a0, s0, 0x0188             # a0 = 00000188
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    beq     $zero, $zero, lbl_80A8F4BC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A8F490:
    lwc1    $f10, 0x0090(s0)           # 00000090
    lhu     t1, 0x003A($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f10, $f0
    sh      t1, 0x010E(s0)             # 0000010E
    bc1fl   lbl_80A8F4BC
    or      v0, $zero, $zero           # v0 = 00000000
    mfc1    a2, $f0
    jal     func_80022A68
    lw      a1, 0x0034($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8F4BC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A8F4D0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0228             # a0 = 06000228
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    cvt.s.w $f4, $f4
    lw      a0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    mfc1    a3, $f4
    addiu   a1, a1, 0x0228             # a1 = 06000228
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f8, 0x0018($sp)
    addiu   a0, a0, 0x0188             # a0 = 00000188
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lw      v0, 0x0028($sp)
    lui     t7, 0x0600                 # t7 = 06000000
    lui     t8, %hi(func_80A90AEC)     # t8 = 80A90000
    addiu   t7, t7, 0x0228             # t7 = 06000228
    addiu   t8, t8, %lo(func_80A90AEC) # t8 = 80A90AEC
    sw      t7, 0x02A0(v0)             # 000002A0
    sw      t8, 0x02A8(v0)             # 000002A8
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A8F554:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B4A(v0)            # 8011B4B6
    andi    t6, v0, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80A8F580
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80A8F580
    andi    t8, v0, 0x0004             # t8 = 00000000
    beq     t8, $zero, lbl_80A8F580
    andi    t9, v0, 0x0008             # t9 = 00000000
    bne     t9, $zero, lbl_80A8F588
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A8F580:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A8F588:
    jr      $ra
    nop


func_80A8F590:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x029C(a0)             # 0000029C
    lbu     v0, 0x029F(a0)             # 0000029F
    ori     t7, t6, 0x0001             # t7 = 00000001
    blez    v0, lbl_80A8F5B8
    sh      t7, 0x029C(a0)             # 0000029C
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80A8F660
    sb      t8, 0x029F(a0)             # 0000029F
lbl_80A8F5B8:
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8005A474
    sw      a1, 0x001C($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8F34             # a0 = 800F8F34
    lbu     t9, 0x000A(a0)             # 800F8F3E
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t0, v0, t9
    lbu     t1, 0x0074(t0)             # 00000074
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lw      a1, 0x001C($sp)
    beq     v1, t1, lbl_80A8F600
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    lbu     t2, 0x000B(a0)             # 800F8F3F
    addu    t3, v0, t2
    lbu     t4, 0x0074(t3)             # 00000074
    bne     v1, t4, lbl_80A8F614
lbl_80A8F600:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t5, $zero, 0x01A5          # t5 = 000001A5
    beq     $zero, $zero, lbl_80A8F644
    sh      t5, 0x1E1A($at)            # 00011E1A
lbl_80A8F614:
    lhu     t6, 0x0EEC(v0)             # 8011B4BC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    andi    t7, t6, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_80A8F640
    addiu   t9, $zero, 0x03B4          # t9 = 000003B4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t8, $zero, 0x05F8          # t8 = 000005F8
    beq     $zero, $zero, lbl_80A8F644
    sh      t8, 0x1E1A($at)            # 00011E1A
lbl_80A8F640:
    sh      t9, 0x1E1A($at)            # 00011E1A
lbl_80A8F644:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sb      t0, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
lbl_80A8F660:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F670:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t7, %hi(func_80A8F590)     # t7 = 80A90000
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    addiu   t7, t7, %lo(func_80A8F590) # t7 = 80A8F590
    sb      t6, 0x029F(a3)             # 0000029F
    sw      t7, 0x02A4(a3)             # 000002A4
    sw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_800646F0
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DCE14
    addiu   a1, $zero, 0x6000          # a1 = 00006000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F6D0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x008A(a3)             # 0000008A
    lh      t7, 0x00B6(a3)             # 000000B6
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A8F704
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A8F704
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A8F704:
    slti    $at, v1, 0x4301
    beq     $at, $zero, lbl_80A8F73C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A8F740
    lbu     t8, 0x014D(a3)             # 0000014D
    jal     func_80A8F670
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80A8F73C:
    lbu     t8, 0x014D(a3)             # 0000014D
lbl_80A8F740:
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80A8F764
    lw      a0, 0x001C($sp)
    jal     func_80A8F670
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
lbl_80A8F764:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, a3, 0x013C             # a2 = 0000013C
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F788:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x029C(a0)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(a0)             # 0000029C
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A8F80C
    lw      a0, 0x0018($sp)
    lhu     v0, 0x010E(a0)             # 0000010E
    addiu   $at, $zero, 0x6001         # $at = 00006001
    lui     t9, %hi(func_80A8F81C)     # t9 = 80A90000
    beq     v0, $at, lbl_80A8F7F0
    addiu   t9, t9, %lo(func_80A8F81C) # t9 = 80A8F81C
    addiu   $at, $zero, 0x6018         # $at = 00006018
    beq     v0, $at, lbl_80A8F804
    lui     t1, %hi(func_80A8FF48)     # t1 = 80A90000
    addiu   $at, $zero, 0x6019         # $at = 00006019
    beq     v0, $at, lbl_80A8F7F8
    lui     t0, %hi(func_80A8F918)     # t0 = 80A90000
    addiu   $at, $zero, 0x601A         # $at = 0000601A
    beq     v0, $at, lbl_80A8F7F8
    lui     t8, %hi(func_80A8F918)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8F918) # t8 = 80A8F918
    beq     $zero, $zero, lbl_80A8F80C
    sw      t8, 0x02A4(a0)             # 000002A4
lbl_80A8F7F0:
    beq     $zero, $zero, lbl_80A8F80C
    sw      t9, 0x02A4(a0)             # 000002A4
lbl_80A8F7F8:
    addiu   t0, t0, %lo(func_80A8F918) # t0 = 80A8F918
    beq     $zero, $zero, lbl_80A8F80C
    sw      t0, 0x02A4(a0)             # 000002A4
lbl_80A8F804:
    addiu   t1, t1, %lo(func_80A8FF48) # t1 = 80A8FF48
    sw      t1, 0x02A4(a0)             # 000002A4
lbl_80A8F80C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F81C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    lui     t6, %hi(func_80A8F788)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8F788) # t6 = 80A8F788
    sw      t6, 0x0010($sp)
    addiu   a2, $zero, 0x6001          # a2 = 00006001
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A8F84C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lwc1    $f0, 0x0090(a3)            # 00000090
    lh      t6, 0x008A(a3)             # 0000008A
    lh      t7, 0x00B6(a3)             # 000000B6
    c.lt.s  $f0, $f4
    or      a0, a3, $zero              # a0 = 00000000
    subu    v0, t6, t7
    sll     v0, v0, 16
    bc1t    lbl_80A8F8BC
    sra     v0, v0, 16
    bltz    v0, lbl_80A8F898
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A8F898
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A8F898:
    slti    $at, v1, 0x4301
    beq     $at, $zero, lbl_80A8F8CC
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f6                   # $f6 = 400.00
    nop
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80A8F8D0
    lbu     t8, 0x014D(a3)             # 0000014D
lbl_80A8F8BC:
    lw      a1, 0x001C($sp)
    jal     func_80A8F670
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80A8F8CC:
    lbu     t8, 0x014D(a3)             # 0000014D
lbl_80A8F8D0:
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_80A8F8F4
    lw      a0, 0x001C($sp)
    jal     func_80A8F670
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
lbl_80A8F8F4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, a3, 0x013C             # a2 = 0000013C
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8F918:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    bne     v0, $zero, lbl_80A8F940
    andi    a2, v0, 0xFFFF             # a2 = 00000000
    addiu   a2, $zero, 0x6019          # a2 = 00006019
lbl_80A8F940:
    lui     t6, %hi(func_80A8F788)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8F788) # t6 = 80A8F788
    sw      t6, 0x0010($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A8F96C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x029F(a0)             # 0000029F
    blez    v0, lbl_80A8F98C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A8F9A4
    sb      t6, 0x029F(a0)             # 0000029F
lbl_80A8F98C:
    jal     func_80A8F4D0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_80A8F81C)     # t7 = 80A90000
    addiu   t7, t7, %lo(func_80A8F81C) # t7 = 80A8F81C
    sw      t7, 0x02A4(a0)             # 000002A4
lbl_80A8F9A4:
    lhu     t8, 0x029C(a0)             # 0000029C
    ori     t9, t8, 0x0008             # t9 = 00000008
    sh      t9, 0x029C(a0)             # 0000029C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8F9BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x029C(a2)             # 0000029C
    lui     t8, %hi(func_80A8F96C)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8F96C) # t8 = 80A8F96C
    andi    t7, t6, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80A8FA1C
    lui     $at, 0x4170                # $at = 41700000
    lh      a1, 0x001C(a2)             # 0000001C
    sw      t8, 0x02A4(a2)             # 000002A4
    sw      a2, 0x0018($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0
    lw      a0, 0x001C($sp)
    lw      a2, 0x0018($sp)
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sb      t9, 0x029F(a2)             # 0000029F
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    beq     $zero, $zero, lbl_80A8FA60
    lw      $ra, 0x0014($sp)
lbl_80A8FA1C:
    lwc1    $f0, 0x01A0(a2)            # 000001A0
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x4198                # $at = 41980000
    or      a0, a2, $zero              # a0 = 00000000
    c.eq.s  $f4, $f0
    nop
    bc1t    lbl_80A8FA54
    nop
    mtc1    $at, $f6                   # $f6 = 19.00
    nop
    c.eq.s  $f6, $f0
    nop
    bc1fl   lbl_80A8FA60
    lw      $ra, 0x0014($sp)
lbl_80A8FA54:
    jal     func_80022FD0
    addiu   a1, $zero, 0x184D          # a1 = 0000184D
    lw      $ra, 0x0014($sp)
lbl_80A8FA60:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8FA6C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A8FB1C
    lw      $ra, 0x002C($sp)
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80A8FB18
    lui     t6, %hi(func_80A8F9BC)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8F9BC) # t6 = 80A8F9BC
    lui     a0, 0x0601                 # a0 = 06010000
    sw      t6, 0x02A4(s0)             # 000002A4
    jal     func_8008A194
    addiu   a0, a0, 0xA048             # a0 = 0600A048
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0xA048             # a1 = 0600A048
    addiu   a0, s0, 0x0188             # a0 = 00000188
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t0, 0x029C(s0)             # 0000029C
    lui     t8, 0x0601                 # t8 = 06010000
    lui     t9, %hi(func_80A90B2C)     # t9 = 80A90000
    addiu   t8, t8, 0xA048             # t8 = 0600A048
    addiu   t9, t9, %lo(func_80A90B2C) # t9 = 80A90B2C
    andi    t1, t0, 0xFFFB             # t1 = 00000000
    sw      t8, 0x02A0(s0)             # 000002A0
    sw      t9, 0x02A8(s0)             # 000002A8
    sh      t1, 0x029C(s0)             # 0000029C
lbl_80A8FB18:
    lw      $ra, 0x002C($sp)
lbl_80A8FB1C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A8FB2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80A8FB5C
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A8FCA0)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8FCA0) # t6 = 80A8FCA0
    jal     func_80A8F4D0
    sw      t6, 0x02A4(a0)             # 000002A4
lbl_80A8FB5C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8FB6C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lhu     t6, 0x029C(s1)             # 0000029C
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_800DD464
    sh      t7, 0x029C(s1)             # 0000029C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A8FC4C
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A8FC4C
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t8, 0x8012                 # t8 = 80120000
    beq     v0, $zero, lbl_80A8FBE8
    nop
    beq     v0, $at, lbl_80A8FC38
    lui     t1, %hi(func_80A8FCA0)     # t1 = 80A90000
    beq     $zero, $zero, lbl_80A8FC4C
    lw      $ra, 0x001C($sp)
lbl_80A8FBE8:
    lh      t8, -0x59FC(t8)            # 8011A604
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t8, 0x000A
    beq     $at, $zero, lbl_80A8FC14
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x6016          # a1 = 00006016
    lui     t9, %hi(func_80A8FB2C)     # t9 = 80A90000
    addiu   t9, t9, %lo(func_80A8FB2C) # t9 = 80A8FB2C
    beq     $zero, $zero, lbl_80A8FC48
    sw      t9, 0x02A4(s1)             # 000002A4
lbl_80A8FC14:
    jal     func_800721CC
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x6015          # a1 = 00006015
    lui     t0, %hi(func_80A8FA6C)     # t0 = 80A90000
    addiu   t0, t0, %lo(func_80A8FA6C) # t0 = 80A8FA6C
    beq     $zero, $zero, lbl_80A8FC48
    sw      t0, 0x02A4(s1)             # 000002A4
lbl_80A8FC38:
    addiu   t1, t1, %lo(func_80A8FCA0) # t1 = FFFFFCA0
    sw      t1, 0x02A4(s1)             # 000002A4
    jal     func_80A8F4D0
    or      a0, s1, $zero              # a0 = 00000000
lbl_80A8FC48:
    lw      $ra, 0x001C($sp)
lbl_80A8FC4C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A8FC5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x029C(a0)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(a0)             # 0000029C
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A8FC90
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_80A8FCA0)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FCA0) # t8 = 80A8FCA0
    jal     func_80A8F4D0
    sw      t8, 0x02A4(a0)             # 000002A4
lbl_80A8FC90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8FCA0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x598C(t7)            # 8011A674
    lw      t6, -0x73B8(t6)            # 800F8C48
    addiu   a2, $zero, 0x6013          # a2 = 00006013
    lui     a3, 0x42C8                 # a3 = 42C80000
    and     t8, t6, t7
    beq     t8, $zero, lbl_80A8FCEC
    lui     t0, %hi(func_80A8FC5C)     # t0 = 80A90000
    lui     t9, %hi(func_80A8FB6C)     # t9 = 80A90000
    addiu   t9, t9, %lo(func_80A8FB6C) # t9 = 80A8FB6C
    sw      t9, 0x0010($sp)
    addiu   a2, $zero, 0x6014          # a2 = 00006014
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     $zero, $zero, lbl_80A8FCFC
    lw      $ra, 0x001C($sp)
lbl_80A8FCEC:
    addiu   t0, t0, %lo(func_80A8FC5C) # t0 = FFFFFC5C
    jal     func_80A8F3F0
    sw      t0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80A8FCFC:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A8FD08:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x029C(a2)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(a2)             # 0000029C
    lw      a0, 0x001C($sp)
    sw      a2, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A8FD70
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80A8FD70
    lw      $ra, 0x0014($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_80A8FF48)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FF48) # t8 = 80A8FF48
    jal     func_80A8F4D0
    sw      t8, 0x02A4(a0)             # 000002A4
    lw      $ra, 0x0014($sp)
lbl_80A8FD70:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8FD7C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x029F(a0)             # 0000029F
    blez    v0, lbl_80A8FD9C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A8FDB4
    sb      t6, 0x029F(a0)             # 0000029F
lbl_80A8FD9C:
    jal     func_80A8F4D0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_80A8FF48)     # t7 = 80A90000
    addiu   t7, t7, %lo(func_80A8FF48) # t7 = 80A8FF48
    sw      t7, 0x02A4(a0)             # 000002A4
lbl_80A8FDB4:
    lhu     t8, 0x029C(a0)             # 0000029C
    ori     t9, t8, 0x0008             # t9 = 00000008
    sh      t9, 0x029C(a0)             # 0000029C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A8FDCC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     t6, 0x029C(a2)             # 0000029C
    lui     t8, %hi(func_80A8FD7C)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FD7C) # t8 = 80A8FD7C
    andi    t7, t6, 0x0004             # t7 = 00000000
    beq     t7, $zero, lbl_80A8FE2C
    lui     $at, 0x4170                # $at = 41700000
    lh      a1, 0x001C(a2)             # 0000001C
    sw      t8, 0x02A4(a2)             # 000002A4
    sw      a2, 0x0018($sp)
    sra     a1, a1,  8
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_800204D0
    lw      a0, 0x001C($sp)
    lw      a2, 0x0018($sp)
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sb      t9, 0x029F(a2)             # 0000029F
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    beq     $zero, $zero, lbl_80A8FE70
    lw      $ra, 0x0014($sp)
lbl_80A8FE2C:
    lwc1    $f0, 0x01A0(a2)            # 000001A0
    mtc1    $at, $f4                   # $f4 = 0.00
    lui     $at, 0x4198                # $at = 41980000
    or      a0, a2, $zero              # a0 = 00000000
    c.eq.s  $f4, $f0
    nop
    bc1t    lbl_80A8FE64
    nop
    mtc1    $at, $f6                   # $f6 = 19.00
    nop
    c.eq.s  $f6, $f0
    nop
    bc1fl   lbl_80A8FE70
    lw      $ra, 0x0014($sp)
lbl_80A8FE64:
    jal     func_80022FD0
    addiu   a1, $zero, 0x184D          # a1 = 0000184D
    lw      $ra, 0x0014($sp)
lbl_80A8FE70:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A8FE7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lhu     t6, 0x029C(s0)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(s0)             # 0000029C
    lw      a0, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A8FF38
    lw      $ra, 0x002C($sp)
    jal     func_800D6110
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80A8FF34
    lui     t8, %hi(func_80A8FDCC)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FDCC) # t8 = 80A8FDCC
    lui     a0, 0x0601                 # a0 = 06010000
    sw      t8, 0x02A4(s0)             # 000002A4
    jal     func_8008A194
    addiu   a0, a0, 0xA048             # a0 = 0600A048
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x0014($sp)
    addiu   a1, a1, 0xA048             # a1 = 0600A048
    addiu   a0, s0, 0x0188             # a0 = 00000188
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lhu     t2, 0x029C(s0)             # 0000029C
    lui     t0, 0x0601                 # t0 = 06010000
    lui     t1, %hi(func_80A90B2C)     # t1 = 80A90000
    addiu   t0, t0, 0xA048             # t0 = 0600A048
    addiu   t1, t1, %lo(func_80A90B2C) # t1 = 80A90B2C
    andi    t3, t2, 0xFFFB             # t3 = 00000000
    sw      t0, 0x02A0(s0)             # 000002A0
    sw      t1, 0x02A8(s0)             # 000002A8
    sh      t3, 0x029C(s0)             # 0000029C
lbl_80A8FF34:
    lw      $ra, 0x002C($sp)
lbl_80A8FF38:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A8FF48:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    sra     a1, a1,  8
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80A8FF9C
    lw      a1, 0x0024($sp)
    lui     t7, %hi(func_80A8FD08)     # t7 = 80A90000
    addiu   t7, t7, %lo(func_80A8FD08) # t7 = 80A8FD08
    sw      t7, 0x0010($sp)
    addiu   a2, $zero, 0x6018          # a2 = 00006018
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     $zero, $zero, lbl_80A8FFB8
    lw      $ra, 0x001C($sp)
lbl_80A8FF9C:
    lui     t8, %hi(func_80A8FE7C)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A8FE7C) # t8 = 80A8FE7C
    sw      t8, 0x0010($sp)
    addiu   a2, $zero, 0x6017          # a2 = 00006017
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    lw      $ra, 0x001C($sp)
lbl_80A8FFB8:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A8FFC4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x029C(a0)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(a0)             # 0000029C
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A8FFF8
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_80A90008)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A90008) # t8 = 80A90008
    jal     func_80A8F4D0
    sw      t8, 0x02A4(a0)             # 000002A4
lbl_80A8FFF8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90008:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    bne     v0, $zero, lbl_80A90030
    andi    a2, v0, 0xFFFF             # a2 = 00000000
    addiu   a2, $zero, 0x6069          # a2 = 00006069
lbl_80A90030:
    lui     t6, %hi(func_80A8FFC4)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A8FFC4) # t6 = 80A8FFC4
    sw      t6, 0x0010($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     v0, $zero, lbl_80A900AC
    lui     a0, 0x0601                 # a0 = 06010000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80A90AEC)     # t7 = 80A90000
    addiu   a0, a0, 0xA498             # a0 = 0600A498
    addiu   t7, t7, %lo(func_80A90AEC) # t7 = 80A90AEC
    sw      t7, 0x02A8(v0)             # 000002A8
    jal     func_8008A194
    sw      a0, 0x02A0(v0)             # 000002A0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0xA498             # a1 = 0600A498
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0188             # a0 = 00000188
lbl_80A900AC:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A900BC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A900E4
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A90718)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A90718) # t6 = 80A90718
    jal     func_80A8F4D0
    sw      t6, 0x02A4(a0)             # 000002A4
lbl_80A900E4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A900F4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    jal     func_80022BB0
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80A9015C
    lw      a0, 0x0028($sp)
    lhu     t7, 0x029C(a0)             # 0000029C
    lui     t6, %hi(func_80A900BC)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A900BC) # t6 = 80A900BC
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_80A90144
    sw      t6, 0x02A4(a0)             # 000002A4
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x0EF0(v1)             # 8011B4C0
    ori     t0, t9, 0x8000             # t0 = 00008000
    beq     $zero, $zero, lbl_80A901D8
    sh      t0, 0x0EF0(v1)             # 8011B4C0
lbl_80A90144:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x0F2A(v1)             # 8011B4FA
    ori     t2, t1, 0x0001             # t2 = 00000001
    beq     $zero, $zero, lbl_80A901D8
    sh      t2, 0x0F2A(v1)             # 8011B4FA
lbl_80A9015C:
    lhu     t3, 0x029C(a0)             # 0000029C
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    lw      a1, 0x002C($sp)
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_80A901C4
    lui     a3, 0x461C                 # a3 = 461C0000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x7380(t6)            # 800F8C80
    lw      t5, 0x00A0(v1)             # 8011A670
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x733C(t8)            # 800F8CC4
    and     t7, t5, t6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    srav    v0, t7, t8
    beq     v0, $at, lbl_80A901B4
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A901BC
    nop
    beq     $zero, $zero, lbl_80A901C4
    lw      a2, 0x0024($sp)
lbl_80A901B4:
    beq     $zero, $zero, lbl_80A901C4
    addiu   a2, $zero, 0x0030          # a2 = 00000030
lbl_80A901BC:
    beq     $zero, $zero, lbl_80A901C4
    addiu   a2, $zero, 0x0031          # a2 = 00000031
lbl_80A901C4:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    ori     a3, a3, 0x4000             # a3 = 461C4000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80A901D8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A901E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    jal     func_80022AD0
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80A90228
    lw      a0, 0x0028($sp)
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lui     t8, %hi(func_80A900F4)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A900F4) # t8 = 80A900F4
    and     t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x02A4(a0)             # 000002A4
lbl_80A90228:
    lhu     t9, 0x029C(a0)             # 0000029C
    addiu   a2, $zero, 0x003E          # a2 = 0000003E
    lw      a1, 0x002C($sp)
    andi    t0, t9, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_80A9028C
    lui     a3, 0x461C                 # a3 = 461C0000
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x8010                 # t2 = 80100000
    lw      t2, -0x7380(t2)            # 800F8C80
    lw      t1, -0x5990(t1)            # 8011A670
    lui     t4, 0x8010                 # t4 = 80100000
    lbu     t4, -0x733C(t4)            # 800F8CC4
    and     t3, t1, t2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    srav    v0, t3, t4
    beq     v0, $at, lbl_80A9027C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A90284
    nop
    beq     $zero, $zero, lbl_80A9028C
    lw      a2, 0x0024($sp)
lbl_80A9027C:
    beq     $zero, $zero, lbl_80A9028C
    addiu   a2, $zero, 0x0030          # a2 = 00000030
lbl_80A90284:
    beq     $zero, $zero, lbl_80A9028C
    addiu   a2, $zero, 0x0031          # a2 = 00000031
lbl_80A9028C:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    ori     a3, a3, 0x4000             # a3 = 461C4000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A902B0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A902F4
    lw      a0, 0x0018($sp)
    lw      t7, 0x0004(a0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    lui     t6, %hi(func_80A901E8)     # t6 = 80A90000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    addiu   t6, t6, %lo(func_80A901E8) # t6 = 80A901E8
    and     t8, t7, $at
    sw      t6, 0x02A4(a0)             # 000002A4
    beq     $zero, $zero, lbl_80A90300
    sw      t8, 0x0004(a0)             # 00000004
lbl_80A902F4:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x4348                 # a2 = 43480000
lbl_80A90300:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90310:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A90368
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beql    v0, $zero, lbl_80A90368
    lw      $ra, 0x0014($sp)
    jal     func_800D6218
    lw      a0, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A90718)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A90718) # t6 = 80A90718
    jal     func_80A8F4D0
    sw      t6, 0x02A4(a0)             # 000002A4
    lw      $ra, 0x0014($sp)
lbl_80A90368:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90374:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A90384:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(s0)             # 00001C44
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      t6, 0x002C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80A90514
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A90510
    lui     $at, 0xFFFE                # $at = FFFE0000
    lw      t7, 0x0004(s1)             # 00000004
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lui     v0, 0x0001                 # v0 = 00010000
    and     t8, t7, $at
    sw      t8, 0x0004(s1)             # 00000004
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80A90400
    nop
    beq     v0, $at, lbl_80A90500
    lui     t3, %hi(func_80A90718)     # t3 = 80A90000
    beq     $zero, $zero, lbl_80A90514
    lw      $ra, 0x0024($sp)
lbl_80A90400:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lh      t9, 0x0034(v0)             # 8011A604
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t9, 0x0014
    beq     $at, $zero, lbl_80A90434
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x0085          # a1 = 00000085
    lui     t0, %hi(func_80A90310)     # t0 = 80A90000
    addiu   t0, t0, %lo(func_80A90310) # t0 = 80A90310
    beq     $zero, $zero, lbl_80A90510
    sw      t0, 0x02A4(s1)             # 000002A4
lbl_80A90434:
    jal     func_800721CC
    addiu   a0, $zero, 0xFFEC          # a0 = FFFFFFEC
    lui     $at, 0x0001                # $at = 00010000
    lw      a1, 0x002C($sp)
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0129          # t1 = 00000129
    lui     v0, 0x8012                 # v0 = 80120000
    sh      t1, 0x1E1A($at)            # 00011E1A
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    ori     t2, $zero, 0xFFF0          # t2 = 0000FFF0
    lui     $at, 0x0001                # $at = 00010000
    sh      t2, 0x1412(v0)             # 8011B9E2
    addu    $at, $at, s0
    addiu   t3, $zero, 0x0026          # t3 = 00000026
    sb      t3, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0014          # t4 = 00000014
    sb      t4, 0x1E15($at)            # 00011E15
    lhu     t5, 0x13FA(v0)             # 8011B9CA
    lhu     t7, 0x0EE0(v0)             # 8011B4B0
    lui     $at, 0x4496                # $at = 44960000
    ori     t6, t5, 0x0100             # t6 = 00000100
    ori     t8, t7, 0x0100             # t8 = 00000100
    sh      t6, 0x13FA(v0)             # 8011B9CA
    sh      t8, 0x0EE0(v0)             # 8011B4B0
    lw      t9, 0x066C(a1)             # 0000066C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    sll     t0, t9,  8
    bltzl   t0, lbl_80A904D0
    mtc1    $at, $f4                   # $f4 = 1200.00
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_80A904F0
    nop
    mtc1    $at, $f4                   # $f4 = 0.00
lbl_80A904D0:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80028158
    swc1    $f4, 0x0010($sp)
    lw      t1, 0x002C($sp)
    addiu   v1, $zero, 0x04B0          # v1 = 000004B0
    beq     v0, $zero, lbl_80A904F0
    sh      v1, 0x0110(t1)             # 00000110
    sh      v1, 0x0110(v0)             # 00000110
lbl_80A904F0:
    lui     t2, %hi(func_80A90374)     # t2 = 80A90000
    addiu   t2, t2, %lo(func_80A90374) # t2 = 80A90374
    beq     $zero, $zero, lbl_80A90510
    sw      t2, 0x02A4(s1)             # 000002A4
lbl_80A90500:
    addiu   t3, t3, %lo(func_80A90718) # t3 = 00000718
    sw      t3, 0x02A4(s1)             # 000002A4
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A90510:
    lw      $ra, 0x0024($sp)
lbl_80A90514:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80A90524:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80A90578
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A90574
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    addiu   a1, $zero, 0x6041          # a1 = 00006041
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80A90384)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A90384) # t6 = 80A90384
    sw      t6, 0x02A4(t7)             # 000002A4
lbl_80A90574:
    lw      $ra, 0x0014($sp)
lbl_80A90578:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90584:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A905B4
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80A90524)     # t6 = 80A90000
    addiu   t6, t6, %lo(func_80A90524) # t6 = 80A90524
    beq     $zero, $zero, lbl_80A905C0
    sw      t6, 0x02A4(a0)             # 000002A4
lbl_80A905B4:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x4396                 # a2 = 43960000
lbl_80A905C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A905D0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      a1, 0x0004($sp)
    lhu     t6, 0x13FA(v1)             # 8011B9CA
    lui     $at, 0x0001                # $at = 00010000
    lui     t2, %hi(func_80A90584)     # t2 = 80A90000
    andi    t7, t6, 0xFEFF             # t7 = 00000000
    sh      t7, 0x13FA(v1)             # 8011B9CA
    lw      t8, 0x0004(a0)             # 00000004
    addiu   t1, $zero, 0x6045          # t1 = 00006045
    addiu   t2, t2, %lo(func_80A90584) # t2 = 80A90584
    or      t9, t8, $at                # t9 = 00010000
    sw      t9, 0x0004(a0)             # 00000004
    lw      t0, 0x0EB8(v1)             # 8011B488
    lhu     v0, 0x1406(v1)             # 8011B9D6
    slt     $at, t0, v0
    beql    $at, $zero, lbl_80A90624
    slti    $at, v0, 0x03E8
    sw      v0, 0x0EB8(v1)             # 8011B488
    lhu     v0, 0x1406(v1)             # 8011B9D6
    slti    $at, v0, 0x03E8
lbl_80A90624:
    beql    $at, $zero, lbl_80A9063C
    lhu     t3, 0x0F2A(v1)             # 8011B4FA
    sh      t1, 0x010E(a0)             # 0000010E
    jr      $ra
    sw      t2, 0x02A4(a0)             # 000002A4
lbl_80A90638:
    lhu     t3, 0x0F2A(v1)             # 8011B4FA
lbl_80A9063C:
    addiu   t5, $zero, 0x6046          # t5 = 00006046
    lui     t6, %hi(func_80A902B0)     # t6 = 80A90000
    andi    t4, t3, 0x0001             # t4 = 00000000
    bne     t4, $zero, lbl_80A9066C
    slti    $at, v0, 0x05DC
    lhu     t7, 0x029C(a0)             # 0000029C
    addiu   t6, t6, %lo(func_80A902B0) # t6 = 80A902B0
    sh      t5, 0x010E(a0)             # 0000010E
    andi    t8, t7, 0xFFFD             # t8 = 00000000
    sw      t6, 0x02A4(a0)             # 000002A4
    jr      $ra
    sh      t8, 0x029C(a0)             # 0000029C
lbl_80A9066C:
    beq     $at, $zero, lbl_80A90688
    addiu   t9, $zero, 0x6047          # t9 = 00006047
    lui     t0, %hi(func_80A90584)     # t0 = 80A90000
    addiu   t0, t0, %lo(func_80A90584) # t0 = 80A90584
    sh      t9, 0x010E(a0)             # 0000010E
    jr      $ra
    sw      t0, 0x02A4(a0)             # 000002A4
lbl_80A90688:
    lhu     t1, 0x0EF0(v1)             # 8011B4C0
    lui     t6, %hi(func_80A902B0)     # t6 = 80A90000
    addiu   t5, $zero, 0x6044          # t5 = 00006044
    andi    t2, t1, 0x8000             # t2 = 00000000
    beq     t2, $zero, lbl_80A906B8
    addiu   t6, t6, %lo(func_80A902B0) # t6 = 80A902B0
    lui     t4, %hi(func_80A90584)     # t4 = 80A90000
    addiu   t3, $zero, 0x6047          # t3 = 00006047
    addiu   t4, t4, %lo(func_80A90584) # t4 = 80A90584
    sh      t3, 0x010E(a0)             # 0000010E
    jr      $ra
    sw      t4, 0x02A4(a0)             # 000002A4
lbl_80A906B8:
    lhu     t7, 0x029C(a0)             # 0000029C
    sh      t5, 0x010E(a0)             # 0000010E
    sw      t6, 0x02A4(a0)             # 000002A4
    ori     t8, t7, 0x0002             # t8 = 00000002
    sh      t8, 0x029C(a0)             # 0000029C
    jr      $ra
    nop


func_80A906D4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x029C(a0)             # 0000029C
    ori     t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x029C(a0)             # 0000029C
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80A90708
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_80A90718)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A90718) # t8 = 80A90718
    jal     func_80A8F4D0
    sw      t8, 0x02A4(a0)             # 000002A4
lbl_80A90708:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90718:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     t3, %hi(func_80A90524)     # t3 = 80A90000
    addiu   t3, t3, %lo(func_80A90524) # t3 = 80A90524
    lw      t6, 0x066C(v0)             # 0000066C
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sll     t7, t6,  8
    bltz    t7, lbl_80A90764
    lui     a3, 0x4348                 # a3 = 43480000
    lui     t8, %hi(func_80A906D4)     # t8 = 80A90000
    addiu   t8, t8, %lo(func_80A906D4) # t8 = 80A906D4
    sw      t8, 0x0010($sp)
    addiu   a2, $zero, 0x603F          # a2 = 0000603F
    jal     func_80A8F3F0
    lui     a3, 0x42C8                 # a3 = 42C80000
    beq     $zero, $zero, lbl_80A907A4
    lw      $ra, 0x001C($sp)
lbl_80A90764:
    lhu     t9, 0x0EE0(v0)             # 00000EE0
    addiu   a2, $zero, 0x6040          # a2 = 00006040
    andi    t0, t9, 0x0100             # t0 = 00000000
    beq     t0, $zero, lbl_80A90798
    nop
    lhu     t1, 0x0F2A(v0)             # 00000F2A
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80A90790
    nop
    beq     $zero, $zero, lbl_80A90798
    addiu   a2, $zero, 0x6042          # a2 = 00006042
lbl_80A90790:
    beq     $zero, $zero, lbl_80A90798
    addiu   a2, $zero, 0x6043          # a2 = 00006043
lbl_80A90798:
    jal     func_80A8F3F0
    sw      t3, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80A907A4:
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A907B0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    sw      t6, 0x0030($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      a1, 0x0032($sp)
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    subu    v0, t6, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A907FC
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A907FC
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A907FC:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_80A9084C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    jal     func_80064508
    sw      t9, 0x0010($sp)
    lh      t0, 0x00B6(s0)             # 000000B6
    lw      t2, 0x0038(s0)             # 00000038
    or      a1, s0, $zero              # a1 = 00000000
    sh      t0, 0x0032(s0)             # 00000032
    sw      t2, 0x0010($sp)
    lw      t1, 0x003C(s0)             # 0000003C
    lw      a0, 0x0044($sp)
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    sw      t1, 0x0014($sp)
    lw      t2, 0x0040(s0)             # 00000040
    addiu   a3, s0, 0x0292             # a3 = 00000292
    jal     func_8002B024
    sw      t2, 0x0018($sp)
    beq     $zero, $zero, lbl_80A908B8
    lw      $ra, 0x002C($sp)
lbl_80A9084C:
    bgez    v0, lbl_80A90878
    addiu   a0, s0, 0x028E             # a0 = 0000028E
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)
    addiu   a0, s0, 0x028E             # a0 = 0000028E
    addiu   a1, $zero, 0xE000          # a1 = FFFFE000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    beq     $zero, $zero, lbl_80A90894
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80A90878:
    addiu   t4, $zero, 0x0100          # t4 = 00000100
    sw      t4, 0x0010($sp)
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80A90894:
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t6, 0x00B6(s0)             # 000000B6
    sh      t6, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)
lbl_80A908B8:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A908C8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x008A(s0)             # 0000008A
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x028C             # a0 = 0000028C
    or      a1, $zero, $zero           # a1 = 00000000
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80A90908
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80A90908
    or      v1, v0, $zero              # v1 = 00000000
lbl_80A90908:
    slti    $at, v1, 0x4301
    beq     $at, $zero, lbl_80A90964
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A90968
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    lw      t9, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t9, 0x0010($sp)
    lw      t8, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x028C             # a2 = 0000028C
    addiu   a3, s0, 0x0292             # a3 = 00000292
    sw      t8, 0x0014($sp)
    lw      t9, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t9, 0x0018($sp)
    beq     $zero, $zero, lbl_80A90994
    lw      $ra, 0x002C($sp)
lbl_80A90964:
    addiu   t0, $zero, 0x0064          # t0 = 00000064
lbl_80A90968:
    sw      t0, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0010($sp)
    addiu   a0, s0, 0x028E             # a0 = 0000028E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      $ra, 0x002C($sp)
lbl_80A90994:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A909A4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x02A8(s0)             # 000002A8
    or      a0, s0, $zero              # a0 = 00000000
    jalr    $ra, t9
    nop
    lw      t9, 0x02A4(s0)             # 000002A4
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lhu     t7, 0x029C(s0)             # 0000029C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80A90A6C
    nop
    jal     func_80A907B0
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t0, 0x029C(s0)             # 0000029C
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    beq     $zero, $zero, lbl_80A90A74
    sh      t1, 0x029C(s0)             # 0000029C
lbl_80A90A6C:
    jal     func_80A908C8
    or      a1, s1, $zero              # a1 = 00000000
lbl_80A90A74:
    sh      $zero, 0x0296(s0)          # 00000296
    lh      v0, 0x0296(s0)             # 00000296
    lh      v1, 0x029A(s0)             # 0000029A
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    sh      v0, 0x0294(s0)             # 00000294
    bne     v1, $zero, lbl_80A90A98
    sh      v0, 0x0292(s0)             # 00000292
    beq     $zero, $zero, lbl_80A90AA8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A90A98:
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x029A(s0)             # 0000029A
    lh      v1, 0x029A(s0)             # 0000029A
    or      v0, v1, $zero              # v0 = 00000000
lbl_80A90AA8:
    bnel    v0, $zero, lbl_80A90AC4
    sh      v1, 0x0298(s0)             # 00000298
    jal     func_80063BF0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sh      v0, 0x029A(s0)             # 0000029A
    lh      v1, 0x029A(s0)             # 0000029A
    sh      v1, 0x0298(s0)             # 00000298
lbl_80A90AC4:
    lh      t3, 0x0298(s0)             # 00000298
    slti    $at, t3, 0x0003
    bnel    $at, $zero, lbl_80A90ADC
    lw      $ra, 0x0024($sp)
    sh      $zero, 0x0298(s0)          # 00000298
    lw      $ra, 0x0024($sp)
lbl_80A90ADC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A90AEC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   a0, a0, 0x0188             # a0 = 00000188
    jal     func_8008C9C0
    sw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80A90B1C
    lw      a0, 0x001C($sp)
    lw      t6, 0x0020($sp)
    jal     func_8008D1C4
    lw      a1, 0x02A0(t6)             # 000002A0
lbl_80A90B1C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A90B2C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     t6, 0x029C(a1)             # 0000029C
    addiu   a0, a1, 0x0188             # a0 = 00000188
    andi    t7, t6, 0x0004             # t7 = 00000000
    bnel    t7, $zero, lbl_80A90B78
    lw      $ra, 0x0014($sp)
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    beq     v0, $zero, lbl_80A90B68
    lw      a1, 0x0018($sp)
    lhu     t8, 0x029C(a1)             # 0000029C
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x029C(a1)             # 0000029C
lbl_80A90B68:
    lhu     t0, 0x029C(a1)             # 0000029C
    ori     t1, t0, 0x0008             # t1 = 00000008
    sh      t1, 0x029C(a1)             # 0000029C
    lw      $ra, 0x0014($sp)
lbl_80A90B78:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90B84:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80A90BC8
    lw      v0, 0x0038($sp)
    lw      v1, 0x003C($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lh      t9, 0x0004(v0)             # 00000004
    lh      t7, 0x028E(v1)             # 0000028E
    addu    t8, t6, t7
    sh      t8, 0x0000(v0)             # 00000000
    lh      t0, 0x028C(v1)             # 0000028C
    addu    t1, t9, t0
    sh      t1, 0x0004(v0)             # 00000004
lbl_80A90BC8:
    lw      v1, 0x003C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lhu     a0, 0x029C(v1)             # 0000029C
    andi    t2, a0, 0x0008             # t2 = 00000000
    beq     t2, $zero, lbl_80A90BEC
    andi    t3, a0, 0xFFF7             # t3 = 00000000
    beq     $zero, $zero, lbl_80A90CC8
    sh      t3, 0x029C(v1)             # 0000029C
lbl_80A90BEC:
    beq     a1, $at, lbl_80A90C08
    sll     v1, a1,  2
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a1, $at, lbl_80A90C08
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    a1, $at, lbl_80A90CC8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A90C08:
    lw      t4, 0x0028($sp)
    subu    v1, v1, a1
    sll     v1, v1,  3
    lw      t5, 0x009C(t4)             # 0000009C
    addu    v1, v1, a1
    sll     v1, v1,  1
    addiu   t6, v1, 0x0814             # t6 = 00000814
    multu   t5, t6
    sw      v1, 0x0018($sp)
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t7, 0x0002(v0)             # 00000002
    lw      v1, 0x0018($sp)
    mul.s   $f10, $f0, $f8
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   t2, v1, 0x0940             # t2 = 00000940
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sh      t9, 0x0002(v0)             # 00000002
    lw      t0, 0x0028($sp)
    lw      t1, 0x009C(t0)             # 0000009C
    multu   t1, t2
    mflo    a0
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lh      t3, 0x0004(v0)             # 00000004
    mul.s   $f10, $f0, $f6
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x0004(v0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A90CC8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A90CD8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     a1, $at, lbl_80A90D34
    lw      a2, 0x0000(a0)             # 00000000
    lw      a3, 0x0028($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t0, %hi(var_80A90E5C)      # t0 = 80A90000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t8, 0x029E(a3)             # 0000029E
    lui     a0, %hi(var_80A90E68)      # a0 = 80A90000
    addiu   a0, a0, %lo(var_80A90E68)  # a0 = 80A90E68
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, %lo(var_80A90E5C)(t0)
    sw      t0, 0x0004(v1)             # 00000004
    jal     func_800AB958
    addiu   a1, a3, 0x0038             # a1 = 00000038
lbl_80A90D34:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A90D44:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E56C
    sw      a0, 0x0034($sp)
    lw      t1, 0x0034($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x0298(s0)             # 00000298
    lui     t0, %hi(var_80A90E74)      # t0 = 80A90000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_80A90E74)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    lui     t2, %hi(func_80A90B84)     # t2 = 80A90000
    lui     t4, %hi(func_80A90CD8)     # t4 = 80A90000
    addiu   t4, t4, %lo(func_80A90CD8) # t4 = 80A90CD8
    addiu   t2, t2, %lo(func_80A90B84) # t2 = 80A90B84
    sw      t2, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80A90E10: .word 0x01380400, 0x00000009, 0x01160000, 0x000002AC
.word func_80A8F100
.word func_80A8F3C4
.word func_80A909A4
.word func_80A90D44
var_80A90E30: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000702, 0x00000000, 0x00010100, \
0x00140028, 0x00000000, 0x00000000
var_80A90E5C: .word 0x06009198, 0x06009430, 0x06009690
var_80A90E68: .word 0x44160000, 0x442F0000, 0x00000000
var_80A90E74: .word 0x06000708, 0x06000F08, 0x06001708

.section .rodata


