.section .text
func_80ACF2C0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      $zero, 0x002C($sp)
    lb      t6, 0x0003(s0)             # 00000003
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      a0, 0x003C($sp)
    bne     t6, $at, lbl_80ACF30C
    nop
    jal     func_8002049C
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    beq     v0, $zero, lbl_80ACF30C
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ACF4CC
    lw      $ra, 0x001C($sp)
lbl_80ACF30C:
    lui     a1, %hi(var_80ACFF40)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80ACFF40)  # a1 = 80ACFF40
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0D78             # a0 = 06000D78
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lhu     v1, 0x001C(s0)             # 0000001C
    lbu     t7, 0x018C(s0)             # 0000018C
    sw      v0, 0x013C(s0)             # 0000013C
    sra     v1, v1, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
    ori     t8, t7, 0x0001             # t8 = 00000001
    beq     v1, $zero, lbl_80ACF388
    sb      t8, 0x018C(s0)             # 0000018C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $at, lbl_80ACF38C
    lui     $at, 0x420C                # $at = 420C0000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ACF4CC
    lw      $ra, 0x001C($sp)
lbl_80ACF388:
    lui     $at, 0x420C                # $at = 420C0000
lbl_80ACF38C:
    mtc1    $at, $f0                   # $f0 = 35.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_80ACFF50)     # $at = 80AD0000
    swc1    $f0, 0x0164(s0)            # 00000164
    swc1    $f4, 0x015C(s0)            # 0000015C
    lwc1    $f6, %lo(var_80ACFF50)($at)
    lh      v0, 0x00B4(s0)             # 000000B4
    lui     t9, %hi(func_80ACFAA0)     # t9 = 80AD0000
    add.s   $f8, $f0, $f6
    beq     v0, $zero, lbl_80ACF3D8
    swc1    $f8, 0x0160(s0)            # 00000160
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    cvt.s.w $f16, $f10
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0188(s0)            # 00000188
    lwc1    $f6, 0x0188(s0)            # 00000188
    swc1    $f6, 0x0170(s0)            # 00000170
lbl_80ACF3D8:
    lh      v0, 0x00B6(s0)             # 000000B6
    sh      $zero, 0x0186(s0)          # 00000186
    beql    v0, $zero, lbl_80ACF3F0
    lh      v0, 0x00B8(s0)             # 000000B8
    sh      v0, 0x0186(s0)             # 00000186
    lh      v0, 0x00B8(s0)             # 000000B8
lbl_80ACF3F0:
    beql    v0, $zero, lbl_80ACF43C
    lhu     v0, 0x001C(s0)             # 0000001C
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80ACFF54)     # $at = 80AD0000
    lwc1    $f2, %lo(var_80ACFF54)($at)
    cvt.s.w $f0, $f8
    lui     $at, %hi(var_80ACFF58)     # $at = 80AD0000
    lwc1    $f10, %lo(var_80ACFF58)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f18, $f16, $f2
    nop
    mul.s   $f6, $f0, $f4
    swc1    $f18, 0x0050(s0)           # 00000050
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x0058(s0)            # 00000058
    lhu     v0, 0x001C(s0)             # 0000001C
lbl_80ACF43C:
    sh      $zero, 0x0030(s0)          # 00000030
    sh      $zero, 0x0032(s0)          # 00000032
    sra     v1, v0, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
    sh      $zero, 0x0034(s0)          # 00000034
    sh      $zero, 0x00B4(s0)          # 000000B4
    sh      $zero, 0x00B6(s0)          # 000000B6
    bne     v1, $zero, lbl_80ACF47C
    sh      $zero, 0x00B8(s0)          # 000000B8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    addiu   t9, t9, %lo(func_80ACFAA0) # t9 = 80ACFAA0
    sw      t9, 0x0154(s0)             # 00000154
    swc1    $f0, 0x0170(s0)            # 00000170
    beq     $zero, $zero, lbl_80ACF4C8
    swc1    $f0, 0x016C(s0)            # 0000016C
lbl_80ACF47C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80ACF4C8
    lw      a0, 0x003C($sp)
    jal     func_8002060C
    andi    a1, v0, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ACF4B8
    lui     t1, %hi(func_80ACFBDC)     # t1 = 80AD0000
    lui     $at, 0xC234                # $at = C2340000
    mtc1    $at, $f0                   # $f0 = -45.00
    lui     t0, %hi(func_80ACFCB0)     # t0 = 80AD0000
    addiu   t0, t0, %lo(func_80ACFCB0) # t0 = 80ACFCB0
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f0, 0x0170(s0)            # 00000170
    beq     $zero, $zero, lbl_80ACF4C8
    swc1    $f0, 0x016C(s0)            # 0000016C
lbl_80ACF4B8:
    lwc1    $f10, 0x0170(s0)           # 00000170
    addiu   t1, t1, %lo(func_80ACFBDC) # t1 = 80ACFBDC
    sw      t1, 0x0154(s0)             # 00000154
    swc1    $f10, 0x016C(s0)           # 0000016C
lbl_80ACF4C8:
    lw      $ra, 0x001C($sp)
lbl_80ACF4CC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80ACF4DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ACF510:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    lui     $at, 0x4F80                # $at = 4F800000
    andi    t7, t6, 0x001F             # t7 = 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    bgez    t7, lbl_80ACF544
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80ACF544:
    lui     $at, 0x3D00                # $at = 3D000000
    mtc1    $at, $f10                  # $f10 = 0.03
    lui     $at, %hi(var_80ACFF5C)     # $at = 80AD0000
    lwc1    $f18, %lo(var_80ACFF5C)($at)
    mul.s   $f16, $f6, $f10
    sw      a0, 0x0018($sp)
    mul.s   $f0, $f16, $f18
    jal     func_800CF470
    add.s   $f12, $f0, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lw      a0, 0x0018($sp)
    lui     $at, %hi(var_80ACFF60)     # $at = 80AD0000
    mul.s   $f2, $f0, $f4
    lwc1    $f8, 0x0164(a0)            # 00000164
    mul.s   $f6, $f8, $f12
    swc1    $f2, 0x0168(a0)            # 00000168
    lwc1    $f10, %lo(var_80ACFF60)($at)
    mul.s   $f18, $f2, $f12
    lui     $at, 0x420C                # $at = 420C0000
    add.s   $f16, $f6, $f10
    lwc1    $f10, 0x0170(a0)           # 00000170
    lwc1    $f6, 0x015C(a0)            # 0000015C
    mtc1    $at, $f8                   # $f8 = 35.00
    sub.s   $f4, $f16, $f18
    swc1    $f8, 0x0164(a0)            # 00000164
    add.s   $f16, $f6, $f10
    swc1    $f4, 0x0160(a0)            # 00000160
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0028(a0)           # 00000028
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80ACF5D0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0028(s0)           # 00000028
    lw      s1, 0x1C44(t6)             # 00001C44
    lui     $at, 0xC3AD                # $at = C3AD0000
    lwc1    $f0, 0x0050(s0)            # 00000050
    lwc1    $f4, 0x0024(s1)            # 00000024
    lwc1    $f8, 0x0028(s1)            # 00000028
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sub.s   $f12, $f4, $f6
    mtc1    $at, $f6                   # $f6 = -346.00
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sub.s   $f2, $f8, $f10
    mul.s   $f8, $f0, $f6
    lui     $at, 0x43AD                # $at = 43AD0000
    sub.s   $f14, $f18, $f4
    c.lt.s  $f8, $f12
    nop
    bc1fl   lbl_80ACF8D8
    lw      t2, 0x0178(s0)             # 00000178
    mtc1    $at, $f10                  # $f10 = 346.00
    lui     $at, 0xC3C8                # $at = C3C80000
    mul.s   $f18, $f0, $f10
    c.lt.s  $f12, $f18
    nop
    bc1fl   lbl_80ACF8D8
    lw      t2, 0x0178(s0)             # 00000178
    lwc1    $f0, 0x0058(s0)            # 00000058
    mtc1    $at, $f4                   # $f4 = -400.00
    lui     $at, 0x43C8                # $at = 43C80000
    mul.s   $f6, $f0, $f4
    c.lt.s  $f6, $f14
    nop
    bc1fl   lbl_80ACF8D8
    lw      t2, 0x0178(s0)             # 00000178
    mtc1    $at, $f8                   # $f8 = 400.00
    nop
    mul.s   $f10, $f0, $f8
    c.lt.s  $f14, $f10
    nop
    bc1fl   lbl_80ACF8D8
    lw      t2, 0x0178(s0)             # 00000178
    mtc1    $zero, $f16                # $f16 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_80ACF8D8
    lw      t2, 0x0178(s0)             # 00000178
    swc1    $f12, 0x0040($sp)
    jal     func_80035364
    swc1    $f14, 0x0038($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f12, 0x0040($sp)
    beq     v0, $zero, lbl_80ACF718
    lwc1    $f14, 0x0038($sp)
    lw      v0, 0x0174(s0)             # 00000174
    lw      a0, 0x004C($sp)
    addiu   a1, s1, 0x0024             # a1 = 00000024
    bgtz    v0, lbl_80ACF704
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    beq     $zero, $zero, lbl_80ACF708
    sw      t9, 0x0174(s0)             # 00000174
lbl_80ACF704:
    sw      t0, 0x0174(s0)             # 00000174
lbl_80ACF708:
    sw      $zero, 0x0178(s0)          # 00000178
    swc1    $f16, 0x017C(s0)           # 0000017C
    beq     $zero, $zero, lbl_80ACF908
    swc1    $f16, 0x0180(s0)           # 00000180
lbl_80ACF718:
    mul.s   $f18, $f12, $f12
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    mul.s   $f4, $f14, $f14
    add.s   $f0, $f18, $f4
    sqrt.s  $f0, $f0
    swc1    $f0, 0x0030($sp)
    sw      t1, 0x0178(s0)             # 00000178
    jal     func_800CD76C
    sw      $zero, 0x0174(s0)          # 00000174
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_80ACFF64)     # $at = 80AD0000
    lwc1    $f6, %lo(var_80ACFF64)($at)
    lh      t2, 0x0032(s1)             # 00000032
    mtc1    $zero, $f16                # $f16 = 0.00
    mul.s   $f8, $f0, $f6
    xori    t3, t2, 0x8000             # t3 = FFFF8000
    swc1    $f16, 0x006C(s1)           # 0000006C
    swc1    $f16, 0x0060(s1)           # 00000060
    lw      a1, 0x0028(s0)             # 00000028
    addiu   a0, s1, 0x0028             # a0 = 00000028
    lui     a2, 0x3F00                 # a2 = 3F000000
    trunc.w.s $f10, $f8
    lui     a3, 0x4080                 # a3 = 40800000
    swc1    $f2, 0x0010($sp)
    mfc1    t7, $f10
    nop
    subu    v0, t3, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    jal     func_80064178
    sh      v0, 0x0034($sp)
    lh      v0, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f16                # $f16 = 0.00
    slti    $at, v0, 0x4000
    beq     $at, $zero, lbl_80ACF86C
    slti    $at, v0, 0xC001
    bne     $at, $zero, lbl_80ACF86C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f18, 0x0050(s0)           # 00000050
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f6, $f18, $f4
    lh      t8, 0x0032(s1)             # 00000032
    xori    t9, t8, 0x8000             # t9 = FFFF8000
    sh      t9, 0x0184(s0)             # 00000184
    lwc1    $f18, 0x0030($sp)
    mul.s   $f10, $f6, $f8
    div.s   $f0, $f18, $f10
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80ACF800
    c.lt.s  $f2, $f0
    mov.s   $f0, $f16
    c.lt.s  $f2, $f0
lbl_80ACF800:
    nop
    bc1fl   lbl_80ACF814
    lwc1    $f4, 0x0828(s1)            # 00000828
    mov.s   $f0, $f2
    lwc1    $f4, 0x0828(s1)            # 00000828
lbl_80ACF814:
    mfc1    a2, $f2
    mfc1    a3, $f2
    mul.s   $f6, $f4, $f0
    addiu   a0, s0, 0x0180             # a0 = 00000180
    lui     a1, 0x4040                 # a1 = 40400000
    swc1    $f6, 0x0828(s1)            # 00000828
    jal     func_80064280
    swc1    $f0, 0x002C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_80ACFF68)     # $at = 80AD0000
    lwc1    $f0, 0x002C($sp)
    lwc1    $f8, %lo(var_80ACFF68)($at)
    mfc1    a2, $f2
    addiu   a0, s0, 0x017C             # a0 = 0000017C
    mul.s   $f18, $f8, $f0
    lw      a1, 0x0180(s0)             # 00000180
    mfc1    a3, $f18
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_80ACF8C0
    lh      t1, 0x0184(s0)             # 00000184
lbl_80ACF86C:
    lh      t0, 0x0032(s1)             # 00000032
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    sh      t0, 0x0184(s0)             # 00000184
    lwc1    $f10, 0x0828(s1)           # 00000828
    mfc1    a2, $f2
    mfc1    a3, $f2
    mul.s   $f6, $f10, $f4
    addiu   a0, s0, 0x0180             # a0 = 00000180
    lui     a1, 0x4040                 # a1 = 40400000
    jal     func_80064280
    swc1    $f6, 0x0828(s1)            # 00000828
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a2, $f2
    addiu   a0, s0, 0x017C             # a0 = 0000017C
    jal     func_80064280
    lw      a1, 0x0180(s0)             # 00000180
    lh      t1, 0x0184(s0)             # 00000184
lbl_80ACF8C0:
    sh      t1, 0x08A0(s1)             # 000008A0
    lwc1    $f8, 0x017C(s0)            # 0000017C
    swc1    $f8, 0x089C(s1)            # 0000089C
    beq     $zero, $zero, lbl_80ACF90C
    lw      $ra, 0x0024($sp)
    lw      t2, 0x0178(s0)             # 00000178
lbl_80ACF8D8:
    mtc1    $zero, $f16                # $f16 = 0.00
    beql    t2, $zero, lbl_80ACF900
    swc1    $f16, 0x0180(s0)           # 00000180
    lwc1    $f18, 0x017C(s0)           # 0000017C
    lwc1    $f10, 0x0828(s1)           # 00000828
    add.s   $f4, $f18, $f10
    swc1    $f4, 0x0828(s1)            # 00000828
    lh      t4, 0x0184(s0)             # 00000184
    sh      t4, 0x082C(s1)             # 0000082C
    swc1    $f16, 0x0180(s0)           # 00000180
lbl_80ACF900:
    swc1    $f16, 0x017C(s0)           # 0000017C
    sw      $zero, 0x0178(s0)          # 00000178
lbl_80ACF908:
    lw      $ra, 0x0024($sp)
lbl_80ACF90C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80ACF91C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lui     $at, %hi(var_80ACFF6C)     # $at = 80AD0000
    lwc1    $f4, %lo(var_80ACFF6C)($at)
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    lw      a1, 0x016C(t6)             # 0000016C
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    lui     a3, 0x4040                 # a3 = 40400000
    addiu   a0, t6, 0x0170             # a0 = 00000170
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80ACF964:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF510
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF5D0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF91C
    or      a1, s1, $zero              # a1 = 00000000
    lw      t6, 0x0158(s0)             # 00000158
    addiu   a1, t6, 0xFFFF             # a1 = FFFFFFFF
    bgez    a1, lbl_80ACFA30
    sw      a1, 0x0158(s0)             # 00000158
    lhu     a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  6
    jal     func_80020510
    andi    a1, a1, 0x003F             # a1 = 0000003F
    lhu     v0, 0x001C(s0)             # 0000001C
    lui     t8, %hi(func_80ACFAA0)     # t8 = 80AD0000
    lui     $at, 0x4120                # $at = 41200000
    sra     v1, v0, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
    beq     v1, $zero, lbl_80ACF9F4
    addiu   t8, t8, %lo(func_80ACFAA0) # t8 = 80ACFAA0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80ACFA10
    lui     t9, %hi(func_80ACFBDC)     # t9 = 80AD0000
    beq     $zero, $zero, lbl_80ACFA48
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80ACF9F4:
    lhu     v0, 0x001C(s0)             # 0000001C
    mtc1    $at, $f4                   # $f4 = 0.00
    sw      t8, 0x0154(s0)             # 00000154
    sra     v1, v0, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
    beq     $zero, $zero, lbl_80ACFA44
    swc1    $f4, 0x016C(s0)            # 0000016C
lbl_80ACFA10:
    lhu     v0, 0x001C(s0)             # 0000001C
    lwc1    $f6, 0x0188(s0)            # 00000188
    addiu   t9, t9, %lo(func_80ACFBDC) # t9 = 80ACFBDC
    sra     v1, v0, 12
    sw      t9, 0x0154(s0)             # 00000154
    andi    v1, v1, 0x000F             # v1 = 00000000
    beq     $zero, $zero, lbl_80ACFA44
    swc1    $f6, 0x016C(s0)            # 0000016C
lbl_80ACFA30:
    jal     func_80023164
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x001C(s0)             # 0000001C
    sra     v1, v0, 12
    andi    v1, v1, 0x000F             # v1 = 00000000
lbl_80ACFA44:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_80ACFA48:
    bne     v1, $at, lbl_80ACFA8C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002060C
    andi    a1, v0, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ACFA8C
    lui     $at, 0xC234                # $at = C2340000
    lhu     a1, 0x001C(s0)             # 0000001C
    mtc1    $at, $f0                   # $f0 = -45.00
    or      a0, s1, $zero              # a0 = 00000000
    sra     a1, a1,  6
    andi    a1, a1, 0x003F             # a1 = 00000000
    swc1    $f0, 0x0170(s0)            # 00000170
    jal     func_80020510
    swc1    $f0, 0x016C(s0)            # 0000016C
    lui     t0, %hi(func_80ACFCB0)     # t0 = 80AD0000
    addiu   t0, t0, %lo(func_80ACFCB0) # t0 = 80ACFCB0
    sw      t0, 0x0154(s0)             # 00000154
lbl_80ACFA8C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80ACFAA0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF510
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF5D0
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF91C
    lw      a1, 0x0024($sp)
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    sra     a1, a1,  6
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ACFB10
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    lui     t7, %hi(func_80ACF964)     # t7 = 80AD0000
    addiu   t6, $zero, 0x012C          # t6 = 0000012C
    addiu   t7, t7, %lo(func_80ACF964) # t7 = 80ACF964
    sw      t6, 0x0158(s0)             # 00000158
    sw      t7, 0x0154(s0)             # 00000154
    swc1    $f4, 0x016C(s0)            # 0000016C
lbl_80ACFB10:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80ACFB24:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF510
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF5D0
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF91C
    lw      a1, 0x0024($sp)
    lw      t6, 0x0158(s0)             # 00000158
    lui     $at, 0xC234                # $at = C2340000
    lui     t1, %hi(func_80ACF964)     # t1 = 80AD0000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    bgez    t7, lbl_80ACFB98
    sw      t7, 0x0158(s0)             # 00000158
    lh      t9, 0x0186(s0)             # 00000186
    mtc1    $at, $f4                   # $f4 = -45.00
    addiu   t1, t1, %lo(func_80ACF964) # t1 = 80ACF964
    sll     t0, t9,  2
    addu    t0, t0, t9
    sll     t0, t0,  2
    sw      t0, 0x0158(s0)             # 00000158
    sw      t1, 0x0154(s0)             # 00000154
    swc1    $f4, 0x016C(s0)            # 0000016C
lbl_80ACFB98:
    lhu     a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    jal     func_8002060C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lui     $at, 0xC234                # $at = C2340000
    mtc1    $at, $f0                   # $f0 = -45.00
    beq     v0, $zero, lbl_80ACFBC8
    lui     t2, %hi(func_80ACFCB0)     # t2 = 80AD0000
    addiu   t2, t2, %lo(func_80ACFCB0) # t2 = 80ACFCB0
    swc1    $f0, 0x0170(s0)            # 00000170
    swc1    $f0, 0x016C(s0)            # 0000016C
    sw      t2, 0x0154(s0)             # 00000154
lbl_80ACFBC8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80ACFBDC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF510
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF5D0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ACF91C
    or      a1, s1, $zero              # a1 = 00000000
    lhu     v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    sra     t6, v0, 12
    andi    t7, t6, 0x000F             # t7 = 00000000
    bne     t7, $at, lbl_80ACFC9C
    sra     a1, v0,  6
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ACFC6C
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    lui     t9, %hi(func_80ACFB24)     # t9 = 80AD0000
    addiu   t9, t9, %lo(func_80ACFB24) # t9 = 80ACFB24
    sw      t8, 0x0158(s0)             # 00000158
    sw      t9, 0x0154(s0)             # 00000154
    sw      $zero, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1392          # a1 = 00001392
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_8006B6FC
    or      a3, s0, $zero              # a3 = 00000000
lbl_80ACFC6C:
    lhu     a1, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002060C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80ACFC9C
    lui     $at, 0xC234                # $at = C2340000
    mtc1    $at, $f0                   # $f0 = -45.00
    lui     t0, %hi(func_80ACFCB0)     # t0 = 80AD0000
    addiu   t0, t0, %lo(func_80ACFCB0) # t0 = 80ACFCB0
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f0, 0x0170(s0)            # 00000170
    swc1    $f0, 0x016C(s0)            # 0000016C
lbl_80ACFC9C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80ACFCB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80ACF510
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80ACF91C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ACFCE8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ACFD0C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0038($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0034($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    sw      t6, 0x0050($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x0064($sp)
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f14, 0x0160(s1)           # 00000160
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA7F4
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
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
    sw      v1, 0x0044($sp)
    lw      t0, 0x0044($sp)
    lw      t2, 0x0050($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    ori     t4, t4, 0x0020             # t4 = DB060020
    subu    $at, $zero, t2
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0064($sp)
    sll     a3, $at,  4
    sll     a2, t2,  4
    lw      a0, 0x0000(t5)             # 00000000
    subu    a2, a2, t2
    subu    a3, a3, $at
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0024($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      t3, 0x0028($sp)
    sw      a3, 0x0020($sp)
    sw      a2, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0040($sp)
    lw      t1, 0x0040($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x0B70             # t6 = 06000B70
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lbu     t7, 0x018C(s1)             # 0000018C
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_80ACFF08
    lw      $ra, 0x003C($sp)
    lhu     v0, 0x001C(s1)             # 0000001C
    lui     $at, 0x4120                # $at = 41200000
    sra     v0, v0, 12
    andi    v0, v0, 0x000F             # v0 = 00000000
    beql    v0, $zero, lbl_80ACFE7C
    lwc1    $f4, 0x0170(s1)            # 00000170
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_80ACFEBC
    lui     $at, 0xC20C                # $at = C20C0000
    beq     $zero, $zero, lbl_80ACFF08
    lw      $ra, 0x003C($sp)
    lwc1    $f4, 0x0170(s1)            # 00000170
lbl_80ACFE7C:
    mtc1    $at, $f6                   # $f6 = -35.00
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f10                  # $f10 = 390.00
    sub.s   $f8, $f4, $f6
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    div.s   $f0, $f8, $f10
    addiu   a1, $zero, 0x2041          # a1 = 00002041
    add.s   $f18, $f16, $f0
    mfc1    a2, $f18
    jal     func_800C50AC
    nop
    beq     $zero, $zero, lbl_80ACFF08
    lw      $ra, 0x003C($sp)
    lui     $at, 0xC20C                # $at = C20C0000
lbl_80ACFEBC:
    mtc1    $at, $f12                  # $f12 = -35.00
    lwc1    $f2, 0x0170(s1)            # 00000170
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_80ACFF08
    lw      $ra, 0x003C($sp)
    lwc1    $f6, 0x0188(s1)            # 00000188
    sub.s   $f4, $f2, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    sub.s   $f8, $f6, $f12
    addiu   a0, s1, 0x00E4             # a0 = 000000E4
    addiu   a1, $zero, 0x2041          # a1 = 00002041
    div.s   $f0, $f4, $f8
    add.s   $f16, $f10, $f0
    mfc1    a2, $f16
    jal     func_800C50AC
    nop
    lw      $ra, 0x003C($sp)
lbl_80ACFF08:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    nop
    nop

.section .data

var_80ACFF20: .word 0x015F0100, 0x00000030, 0x013A0000, 0x00000190
.word func_80ACF2C0
.word func_80ACF4DC
.word func_80ACFCE8
.word func_80ACFD0C
var_80ACFF40: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80ACFF50: .word 0xC5BD5000
var_80ACFF54: .word 0x3DCCCCCD
var_80ACFF58: .word 0x3F13FA15
var_80ACFF5C: .word 0x40490FDB
var_80ACFF60: .word 0xC5BD5000
var_80ACFF64: .word 0x4622F983
var_80ACFF68: .word 0x3E99999A
var_80ACFF6C: .word 0x3C23D70A

