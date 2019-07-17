.section .text
func_80942920:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s0, 0x0050($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s2, 0x0058($sp)
    sw      s1, 0x0054($sp)
    sdc1    $f24, 0x0048($sp)
    sdc1    $f22, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a1, 0x00D4($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lbu     t0, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0004         # $at = 00000004
    mov.s   $f22, $f0
    bne     t0, $at, lbl_809429AC
    lui     s4, %hi(var_80944438)      # s4 = 80940000
    lui     $at, %hi(var_809444A0)     # $at = 80940000
    lwc1    $f2, %lo(var_809444A0)($at)
    lui     $at, %hi(var_809444A4)     # $at = 80940000
    lwc1    $f24, %lo(var_809444A4)($at)
    mul.s   $f20, $f20, $f2
    nop
    mul.s   $f22, $f0, $f2
    beq     $zero, $zero, lbl_809429B8
    nop
lbl_809429AC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f24                  # $f24 = 1.00
    nop
lbl_809429B8:
    addiu   s4, s4, %lo(var_80944438)  # s4 = 80944438
    lw      t6, 0x0008(s4)             # 80944440
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    blez    t6, lbl_80942AE4
    addiu   s5, s0, 0x0160             # s5 = 00000160
    addiu   s8, $sp, 0x00B4            # s8 = FFFFFFE4
    addiu   s7, $sp, 0x00A8            # s7 = FFFFFFD8
    addiu   s6, $sp, 0x009C            # s6 = FFFFFFCC
    addiu   s1, $sp, 0x00C0            # s1 = FFFFFFF0
    lw      t7, 0x000C(s4)             # 80944444
lbl_809429E4:
    addiu   v1, $sp, 0x009C            # v1 = FFFFFFCC
    addu    v0, s3, t7
    lwc1    $f10, 0x0020(v0)           # 00000020
    addiu   v1, v1, 0x000C             # v1 = FFFFFFD8
    lwc1    $f18, 0x0008(s0)           # 00000008
    mul.s   $f16, $f20, $f10
    beq     v1, s1, lbl_80942A68
    lwc1    $f14, 0x0018(v0)           # 00000018
lbl_80942A04:
    mul.s   $f12, $f14, $f22
    add.s   $f10, $f18, $f16
    addiu   v1, v1, 0x000C             # v1 = FFFFFFE4
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    add.s   $f10, $f12, $f10
    swc1    $f10, -0x0018(v1)          # FFFFFFCC
    lwc1    $f10, 0x0010(v0)           # 0000001C
    lwc1    $f12, 0x000C(s0)           # 0000000C
    mul.s   $f10, $f10, $f24
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0014(v1)          # FFFFFFD0
    lwc1    $f12, 0x0014(v0)           # 00000020
    lwc1    $f10, 0x000C(v0)           # 00000018
    lwc1    $f8, 0x0010(s0)            # 00000010
    mul.s   $f12, $f22, $f12
    add.s   $f12, $f8, $f12
    mul.s   $f10, $f10, $f20
    sub.s   $f10, $f12, $f10
    swc1    $f10, -0x0010(v1)          # FFFFFFD4
    lwc1    $f10, 0x0020(v0)           # 0000002C
    lwc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x0018(v0)           # 00000024
    mul.s   $f16, $f20, $f10
    bne     v1, s1, lbl_80942A04
    nop
lbl_80942A68:
    mul.s   $f12, $f14, $f22
    add.s   $f10, $f18, $f16
    addiu   v0, v0, 0x000C             # v0 = 00000018
    add.s   $f10, $f12, $f10
    swc1    $f10, -0x000C(v1)          # FFFFFFD8
    lwc1    $f10, 0x0010(v0)           # 00000028
    lwc1    $f12, 0x000C(s0)           # 0000000C
    mul.s   $f10, $f10, $f24
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0008(v1)          # FFFFFFDC
    lwc1    $f12, 0x0014(v0)           # 0000002C
    lwc1    $f10, 0x000C(v0)           # 00000024
    lwc1    $f8, 0x0010(s0)            # 00000010
    mul.s   $f12, $f22, $f12
    add.s   $f12, $f8, $f12
    mul.s   $f10, $f10, $f20
    sub.s   $f10, $f12, $f10
    swc1    $f10, -0x0004(v1)          # FFFFFFE0
    or      a0, s5, $zero              # a0 = 00000160
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s6, $zero              # a2 = FFFFFFCC
    or      a3, s7, $zero              # a3 = FFFFFFD8
    jal     func_80050BD4
    sw      s8, 0x0010($sp)
    lw      t8, 0x0008(s4)             # 80944440
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s3, s3, 0x003C             # s3 = 0000003C
    slt     $at, s2, t8
    bnel    $at, $zero, lbl_809429E4
    lw      t7, 0x000C(s4)             # 80944444
    lbu     t0, 0x0158(s0)             # 00000158
lbl_80942AE4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    t0, $at, lbl_80942BFC
    lbu     t9, 0x0158(s0)             # 00000158
    lbu     t1, 0x0159(s0)             # 00000159
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    lw      a2, 0x00D4($sp)
    beq     v0, t1, lbl_80942BF8
    or      v1, t1, $zero              # v1 = 00000000
    bne     v0, t0, lbl_80942B14
    lui     t3, %hi(var_80944458)      # t3 = 80940000
    beq     $zero, $zero, lbl_80942B18
    or      t2, v1, $zero              # t2 = 00000000
lbl_80942B14:
    addiu   t2, v1, 0x0002             # t2 = 00000002
lbl_80942B18:
    sll     t9, t2,  1
    addu    t3, t3, t9
    lh      t3, %lo(var_80944458)(t3)
    sll     v0, t1,  1
    lui     t4, %hi(var_80944460)      # t4 = 80940000
    mtc1    t3, $f24                   # $f24 = 0.00
    addu    t4, t4, v0
    lh      t4, %lo(var_80944460)(t4)
    cvt.s.w $f24, $f24
    lui     t5, %hi(var_80944464)      # t5 = 80940000
    mtc1    t4, $f22                   # $f22 = 0.00
    addu    t5, t5, v0
    lh      t5, %lo(var_80944464)(t5)
    cvt.s.w $f22, $f22
    swc1    $f24, 0x0010($sp)
    mtc1    t5, $f24                   # $f24 = 0.00
    sw      $zero, 0x001C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    cvt.s.w $f24, $f24
    swc1    $f22, 0x0014($sp)
    addiu   t8, v1, 0x0001             # t8 = 00000001
    sll     t9, t8, 12
    sll     t3, t0,  8
    addu    t4, t9, t3
    swc1    $f24, 0x0018($sp)
    lh      t6, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0024($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addu    t7, t6, $at
    sw      t7, 0x0020($sp)
    lh      t5, 0x001C(s0)             # 0000001C
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a3, $zero, 0x0093          # a3 = 00000093
    addu    t6, t4, t5
    jal     func_800253F0
    sw      t6, 0x0028($sp)
    bnel    v0, $zero, lbl_80942BC4
    lbu     t7, 0x0159(s0)             # 00000159
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942C64
    lw      $ra, 0x0074($sp)
    lbu     t7, 0x0159(s0)             # 00000159
lbl_80942BC4:
    bnel    t7, $zero, lbl_80942BFC
    lbu     t9, 0x0158(s0)             # 00000158
    lw      v0, 0x011C(s0)             # 0000011C
    lw      v1, 0x011C(v0)             # 0000011C
    bnel    v1, $zero, lbl_80942BF0
    sw      v1, 0x0118(s0)             # 00000118
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942C64
    lw      $ra, 0x0074($sp)
    sw      v1, 0x0118(s0)             # 00000118
lbl_80942BF0:
    lw      t8, 0x011C(v0)             # 0000011C
    sw      s0, 0x011C(t8)             # 0000011C
lbl_80942BF8:
    lbu     t9, 0x0158(s0)             # 00000158
lbl_80942BFC:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sh      $zero, 0x015C(s0)          # 0000015C
    bne     t9, $at, lbl_80942C20
    lui     t3, %hi(func_809439CC)     # t3 = 80940000
    lui     $at, %hi(var_80944750)     # $at = 80940000
    sb      $zero, %lo(var_80944750)($at)
    addiu   t3, t3, %lo(func_809439CC) # t3 = 809439CC
    beq     $zero, $zero, lbl_80942C60
    sw      t3, 0x0154(s0)             # 00000154
lbl_80942C20:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t7, %hi(func_80943C20)     # t7 = 80940000
    mul.s   $f4, $f0, $f10
    addiu   t7, t7, %lo(func_80943C20) # t7 = 80943C20
    trunc.w.s $f16, $f4
    mfc1    t5, $f16
    nop
    div     $zero, t5, $at
    mfhi    t6
    lui     $at, %hi(var_80944750)     # $at = 80940000
    sb      t6, %lo(var_80944750)($at)
    sw      t7, 0x0154(s0)             # 00000154
lbl_80942C60:
    lw      $ra, 0x0074($sp)
lbl_80942C64:
    ldc1    $f20, 0x0038($sp)
    ldc1    $f22, 0x0040($sp)
    ldc1    $f24, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    lw      s7, 0x006C($sp)
    lw      s8, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80942C9C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      $zero, 0x0058($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x7860             # a0 = 06007860
    ori     t7, t6, 0x0030             # t7 = 00000030
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80033EF4
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0058($sp)
    lbu     v1, 0x0158(s0)             # 00000158
    sw      v0, 0x013C(s0)             # 0000013C
    bne     v1, $zero, lbl_80942E00
    nop
    lbu     t0, 0x0159(s0)             # 00000159
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t8, %hi(var_80944468)      # t8 = 80940000
    beq     t0, $at, lbl_80942E00
    sll     v0, t0,  1
    addu    t8, t8, v0
    lh      t8, %lo(var_80944468)(t8)
    lui     t9, %hi(var_80944470)      # t9 = 80940000
    addu    t9, t9, v0
    mtc1    t8, $f4                    # $f4 = 0.00
    lh      t9, %lo(var_80944470)(t9)
    addiu   t5, t0, 0x0001             # t5 = 00000001
    cvt.s.w $f6, $f4
    mtc1    t9, $f10                   # $f10 = 0.00
    sll     t6, t5, 12
    sll     t7, v1,  8
    addu    t8, t6, t7
    cvt.s.w $f16, $f10
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    sw      $zero, 0x001C($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0014($sp)
    swc1    $f16, 0x0018($sp)
    lh      t2, 0x00B6(s0)             # 000000B6
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    sw      t2, 0x0020($sp)
    lh      t3, 0x00B8(s0)             # 000000B8
    addiu   a3, $zero, 0x0093          # a3 = 00000093
    addiu   t4, t3, 0xC000             # t4 = FFFFC000
    sw      t4, 0x0024($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    addu    t2, t8, t9
    jal     func_800253F0
    sw      t2, 0x0028($sp)
    bnel    v0, $zero, lbl_80942DA4
    lbu     t3, 0x0159(s0)             # 00000159
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942E3C
    lw      $ra, 0x003C($sp)
    lbu     t3, 0x0159(s0)             # 00000159
lbl_80942DA4:
    bne     t3, $zero, lbl_80942E00
    nop
    lw      v0, 0x011C(s0)             # 0000011C
    lw      v1, 0x011C(v0)             # 0000011C
    bnel    v1, $zero, lbl_80942DD0
    lw      a0, 0x011C(v1)             # 0000011C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942E3C
    lw      $ra, 0x003C($sp)
    lw      a0, 0x011C(v1)             # 0000011C
lbl_80942DD0:
    bnel    a0, $zero, lbl_80942DF4
    sw      a0, 0x0118(s0)             # 00000118
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    lw      a0, 0x011C(s0)             # 0000011C
    beq     $zero, $zero, lbl_80942E3C
    lw      $ra, 0x003C($sp)
    sw      a0, 0x0118(s0)             # 00000118
lbl_80942DF4:
    lw      t4, 0x011C(v0)             # 0000011C
    lw      t5, 0x011C(t4)             # 0000011C
    sw      s0, 0x011C(t5)             # 0000011C
lbl_80942E00:
    lui     $at, %hi(var_809444A8)     # $at = 80940000
    lwc1    $f18, %lo(var_809444A8)($at)
    addiu   t6, s0, 0x0024             # t6 = 00000024
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    swc1    $f18, 0x0028(s0)           # 00000028
    sw      t6, 0x0010($sp)
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0054            # a2 = FFFFFFF4
    jal     func_8002F4B8              # Raycast
    or      a3, s0, $zero              # a3 = 00000000
    lui     t7, %hi(func_80942FE0)     # t7 = 80940000
    addiu   t7, t7, %lo(func_80942FE0) # t7 = 80942FE0
    swc1    $f0, 0x0080(s0)            # 00000080
    sw      t7, 0x0154(s0)             # 00000154
    lw      $ra, 0x003C($sp)
lbl_80942E3C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80942E4C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     a1, %hi(var_80944478)      # a1 = 80940000
    addiu   a1, a1, %lo(var_80944478)  # a1 = 80944478
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t2, 0x001C(s0)             # 0000001C
    sra     t7, t6,  8
    andi    t8, t7, 0x000F             # t8 = 00000000
    andi    t4, t8, 0x00FF             # t4 = 00000000
    sra     t0, t9, 12
    andi    t1, t0, 0x000F             # t1 = 00000000
    slti    $at, t4, 0x0002
    andi    t3, t2, 0x003F             # t3 = 00000000
    sb      t8, 0x0158(s0)             # 00000158
    sb      t1, 0x0159(s0)             # 00000159
    bne     $at, $zero, lbl_80942F10
    sh      t3, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x0160             # a1 = 00000160
    sw      a1, 0x002C($sp)
    jal     func_8004B064
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80944438)      # a3 = 80940000
    addiu   t5, s0, 0x0180             # t5 = 00000180
    lw      a1, 0x002C($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, %lo(var_80944438)  # a3 = 80944438
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B3EC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_80942F00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942F4C
    lw      $ra, 0x0024($sp)
lbl_80942F00:
    jal     func_80942920
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80942F4C
    lw      $ra, 0x0024($sp)
lbl_80942F10:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    beq     v0, $zero, lbl_80942F40
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80942F4C
    lw      $ra, 0x0024($sp)
lbl_80942F40:
    jal     func_80942C9C
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80942F4C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80942F5C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     t6, 0x0158(a3)             # 00000158
    lw      a0, 0x001C($sp)
    slti    $at, t6, 0x0002
    bne     $at, $zero, lbl_80942F94
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a0, 0x001C($sp)
    jal     func_8004B148
    addiu   a1, a3, 0x0160             # a1 = 00000160
    beq     $zero, $zero, lbl_80942FD4
    lw      $ra, 0x0014($sp)
lbl_80942F94:
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     t8, 0x0158(a3)             # 00000158
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    bnel    t8, $at, lbl_80942FD4
    lw      $ra, 0x0014($sp)
    lh      t9, 0x13D0(v0)             # 8011B9A0
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    blezl   t9, lbl_80942FD4
    lw      $ra, 0x0014($sp)
    sh      t0, 0x13CE(v0)             # 8011B99E
    lw      $ra, 0x0014($sp)
lbl_80942FD4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80942FE0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    lui     v1, %hi(var_80944750)      # v1 = 80940000
    addiu   v1, v1, %lo(var_80944750)  # v1 = 80944750
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lui     $at, %hi(var_809444AC)     # $at = 80940000
    lwc1    $f4, %lo(var_809444AC)($at)
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    swc1    $f4, 0x0028(s0)            # 00000028
    lbu     v0, 0x0000(v1)             # 80944750
    bnel    v0, $at, lbl_80943058
    lui     $at, 0x4248                # $at = 42480000
    lbu     t6, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x002C($sp)
    bne     t6, $at, lbl_8094303C
    addiu   a1, $zero, 0x0C4E          # a1 = 00000C4E
    addiu   a2, $zero, 0x0041          # a2 = 00000041
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_8094303C:
    lui     t8, %hi(func_809430EC)     # t8 = 80940000
    addiu   t7, $zero, 0x002D          # t7 = 0000002D
    addiu   t8, t8, %lo(func_809430EC) # t8 = 809430EC
    sh      t7, 0x015C(s0)             # 0000015C
    beq     $zero, $zero, lbl_809430D8
    sw      t8, 0x0154(s0)             # 00000154
    lui     $at, 0x4248                # $at = 42480000
lbl_80943058:
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809430A8
    lbu     t5, 0x0158(s0)             # 00000158
    lbu     t9, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    ori     t4, v0, 0x0010             # t4 = 00000010
    beq     t9, $at, lbl_8094309C
    nop
    lbu     t0, 0x0159(s0)             # 00000159
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, t0
    or      t3, v0, t2                 # t3 = 00000000
    beq     $zero, $zero, lbl_809430D8
    sb      t3, 0x0000(v1)             # 00000000
lbl_8094309C:
    beq     $zero, $zero, lbl_809430D8
    sb      t4, 0x0000(v1)             # 00000000
    lbu     t5, 0x0158(s0)             # 00000158
lbl_809430A8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t0, v0, 0xFFEF             # t0 = 00000000
    beql    t5, $at, lbl_809430D8
    sb      t0, 0x0000(v1)             # 00000000
    lbu     t6, 0x0159(s0)             # 00000159
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, t6
    nor     t9, t8, $zero
    and     t1, v0, t9
    beq     $zero, $zero, lbl_809430D8
    sb      t1, 0x0000(v1)             # 00000000
    sb      t0, 0x0000(v1)             # 00000000
lbl_809430D8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809430EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015C(a0)             # 0000015C
    beq     v0, $zero, lbl_8094310C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015C(a0)             # 0000015C
    lh      v0, 0x015C(a0)             # 0000015C
lbl_8094310C:
    slti    $at, v0, 0x000F
    beq     $at, $zero, lbl_8094316C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, v0, $at
    mfhi    t7
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    mtc1    t8, $f4                    # $f4 = NaN
    lwc1    $f6, 0x0008(a0)            # 00000008
    addiu   a1, $zero, 0x2838          # a1 = 00002838
    cvt.s.w $f0, $f4
    add.s   $f8, $f0, $f0
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0024(a0)           # 00000024
    bgez    v0, lbl_80943154
    andi    t9, v0, 0x0003             # t9 = 00000000
    beq     t9, $zero, lbl_80943154
    nop
    addiu   t9, t9, 0xFFFC             # t9 = FFFFFFFC
lbl_80943154:
    bne     t9, $zero, lbl_8094316C
    nop
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      v0, 0x015C(a0)             # 0000015C
lbl_8094316C:
    bne     v0, $zero, lbl_80943194
    lui     $at, %hi(var_80944750)     # $at = 80940000
    lwc1    $f16, 0x0008(a0)           # 00000008
    lui     t1, %hi(func_809432DC)     # t1 = 80940000
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    swc1    $f16, 0x0024(a0)           # 00000024
    sb      $zero, %lo(var_80944750)($at)
    addiu   t1, t1, %lo(func_809432DC) # t1 = 809432DC
    sh      t0, 0x015C(a0)             # 0000015C
    sw      t1, 0x0154(a0)             # 00000154
lbl_80943194:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809431A4:
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    lbu     v0, 0x0159(a0)             # 00000159
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    beql    a3, v0, lbl_809431C8
    lw      a2, 0x011C(a0)             # 0000011C
    bnel    v0, $at, lbl_8094322C
    lw      a2, 0x011C(a0)             # 0000011C
    lw      a2, 0x011C(a0)             # 0000011C
lbl_809431C8:
    lwc1    $f4, 0x002C(a0)            # 0000002C
    lwc1    $f8, 0x002C(a2)            # 0000002C
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    v1, $f6
    mfc1    a1, $f10
    bnel    a3, v0, lbl_8094320C
    lwc1    $f8, 0x0024(a2)            # 00000024
    lwc1    $f16, 0x0024(a0)           # 00000024
    lwc1    $f4, 0x0024(a2)            # 00000024
    trunc.w.s $f18, $f16
    trunc.w.s $f6, $f4
    mfc1    a3, $f18
    mfc1    t0, $f6
    beq     $zero, $zero, lbl_80943288
    nop
    lwc1    $f8, 0x0024(a2)            # 00000024
lbl_8094320C:
    lwc1    $f16, 0x0024(a0)           # 00000024
    trunc.w.s $f10, $f8
    trunc.w.s $f18, $f16
    mfc1    a3, $f10
    mfc1    t0, $f18
    beq     $zero, $zero, lbl_80943288
    nop
    lw      a2, 0x011C(a0)             # 0000011C
lbl_8094322C:
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f8, 0x0024(a2)            # 00000024
    trunc.w.s $f6, $f4
    trunc.w.s $f10, $f8
    mfc1    v1, $f6
    mfc1    a1, $f10
    bnel    v0, $zero, lbl_80943270
    lwc1    $f8, 0x002C(a2)            # 0000002C
    lwc1    $f16, 0x002C(a0)           # 0000002C
    lwc1    $f4, 0x002C(a2)            # 0000002C
    trunc.w.s $f18, $f16
    trunc.w.s $f6, $f4
    mfc1    a3, $f18
    mfc1    t0, $f6
    beq     $zero, $zero, lbl_80943288
    nop
    lwc1    $f8, 0x002C(a2)            # 0000002C
lbl_80943270:
    lwc1    $f16, 0x002C(a0)           # 0000002C
    trunc.w.s $f10, $f8
    trunc.w.s $f18, $f16
    mfc1    a3, $f10
    mfc1    t0, $f18
    nop
lbl_80943288:
    bne     v1, a1, lbl_809432B8
    subu    t9, t0, a3
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    bne     t9, $at, lbl_809432B8
    lui     v1, %hi(var_80944750)      # v1 = 80940000
    addiu   v1, v1, %lo(var_80944750)  # v1 = 80944750
    lbu     t1, 0x0000(v1)             # 80944750
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sllv    t3, t2, v0
    or      t4, t1, t3                 # t4 = 00000000
    jr      $ra
    sb      t4, 0x0000(v1)             # 80944750
lbl_809432B8:
    lui     v1, %hi(var_80944750)      # v1 = 80940000
    addiu   v1, v1, %lo(var_80944750)  # v1 = 80944750
    lbu     t5, 0x0000(v1)             # 80944750
    sllv    t7, t6, v0
    nor     t8, t7, $zero
    and     t9, t5, t8
    sb      t9, 0x0000(v1)             # 80944750
    jr      $ra
    nop


func_809432DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    lui     a1, 0x43D8                 # a1 = 43D80000
    ori     a1, a1, 0x8000             # a1 = 43D88000
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x0028             # a0 = 00000028
    swc1    $f8, 0x0060(s0)            # 00000060
    jal     func_8006385C
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_809433CC
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    lw      t6, 0x0004(s0)             # 00000004
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     v0, %hi(var_80944448)      # v0 = 80940000
    and     t7, t6, $at
    addiu   v0, v0, %lo(var_80944448)  # v0 = 80944448
    sw      t7, 0x0004(s0)             # 00000004
    swc1    $f10, 0x0060(s0)           # 00000060
    lbu     t8, 0x0000(v0)             # 80944448
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(v0)             # 80944448
    lbu     t0, 0x0158(s0)             # 00000158
    beq     t0, $at, lbl_8094336C
    nop
    jal     func_809431A4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809433BC
    nop
lbl_8094336C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x281D          # a1 = 0000281D
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80026CF4
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_8007397C
    lh      a0, 0x015C(s0)             # 0000015C
    lui     t1, %hi(var_8094447C)      # t1 = 80940000
    lw      t1, %lo(var_8094447C)(t1)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      a0, 0x0024($sp)
    bne     t1, $zero, lbl_809433B4
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_8094447C)     # $at = 80940000
    beq     $zero, $zero, lbl_809433BC
    sw      t2, %lo(var_8094447C)($at)
lbl_809433B4:
    jal     func_800218EC
    lw      a1, 0x1C44(a0)             # 00001C44
lbl_809433BC:
    lui     t4, %hi(func_809433E0)     # t4 = 80940000
    addiu   t4, t4, %lo(func_809433E0) # t4 = 809433E0
    sb      $zero, 0x015A(s0)          # 0000015A
    sw      t4, 0x0154(s0)             # 00000154
lbl_809433CC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809433E0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    lui     v1, %hi(var_80944750)      # v1 = 80940000
    addiu   v1, v1, %lo(var_80944750)  # v1 = 80944750
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lbu     v0, 0x0000(v1)             # 80944750
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     t6, 0x8012                 # t6 = 80120000
    bne     v0, $at, lbl_809434C4
    sw      t7, 0x003C($sp)
    lbu     t9, 0x0158(s0)             # 00000158
    lui     t8, %hi(func_80943954)     # t8 = 80940000
    addiu   t8, t8, %lo(func_80943954) # t8 = 80943954
    bne     t9, $zero, lbl_80943680
    sw      t8, 0x0154(s0)             # 00000154
    lbu     t0, 0x0159(s0)             # 00000159
    lui     $at, 0x41F0                # $at = 41F00000
    bnel    t0, $zero, lbl_80943684
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f0                   # $f0 = 30.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lw      a1, 0x0044($sp)
    sub.s   $f10, $f8, $f0
    addiu   a2, $zero, 0x0091          # a2 = 00000091
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f6, $f4, $f0
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0018($sp)
    mfc1    a3, $f6
    add.s   $f18, $f16, $f0
    swc1    $f18, 0x0014($sp)
    lh      t2, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0020($sp)
    sw      t2, 0x001C($sp)
    lh      t3, 0x001C(s0)             # 0000001C
    addiu   t4, t3, 0x0300             # t4 = 00000300
    jal     func_80025110              # ActorSpawn
    sw      t4, 0x0024($sp)
    beq     v0, $zero, lbl_809434AC
    or      a3, v0, $zero              # a3 = 00000000
    lw      a0, 0x0044($sp)
    addiu   a1, $zero, 0x0C62          # a1 = 00000C62
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_809434AC:
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_80943680
    sh      t5, -0x4662($at)           # 8011B99E
lbl_809434C4:
    lh      t6, -0x4660(t6)            # FFFFB9A0
    lui     t7, %hi(var_80944448)      # t7 = 80940000
    bnel    t6, $zero, lbl_80943510
    addiu   $at, $zero, 0x0040         # $at = 00000040
    lbu     t7, %lo(var_80944448)(t7)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      t8, 0x003C($sp)
    bnel    t7, $at, lbl_80943510
    addiu   $at, $zero, 0x0040         # $at = 00000040
    lw      t9, 0x0670(t8)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    addiu   t1, $zero, 0x0010          # t1 = 00000010
    and     t0, t9, $at
    sw      t0, 0x0670(t8)             # 00000670
    sb      t1, 0x0000(v1)             # 00000000
    lui     $at, %hi(var_80944448)     # $at = 80940000
    sb      $zero, %lo(var_80944448)($at)
    lbu     v0, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0040         # $at = 00000040
lbl_80943510:
    beq     v0, $at, lbl_80943534
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bnel    v0, $at, lbl_80943584
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_8007943C
    lw      a0, 0x0044($sp)
    lui     v1, %hi(var_80944750)      # v1 = 80940000
    bne     v0, $zero, lbl_80943580
    addiu   v1, v1, %lo(var_80944750)  # v1 = 80944750
lbl_80943534:
    lh      t2, 0x00B8(s0)             # 000000B8
    lui     t3, %hi(func_80943854)     # t3 = 80940000
    addiu   t3, t3, %lo(func_80943854) # t3 = 80943854
    sw      t3, 0x0154(s0)             # 00000154
    sh      t2, 0x0034(s0)             # 00000034
    lbu     t4, 0x0000(v1)             # 80944750
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    bne     t4, $at, lbl_80943680
    or      a0, s0, $zero              # a0 = 00000000
    sb      t5, 0x0000(v1)             # 80944750
    jal     func_80022FD0
    addiu   a1, $zero, 0x28A4          # a1 = 000028A4
    lw      a0, 0x0044($sp)
    lw      a1, 0x003C($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     $zero, $zero, lbl_80943684
    lw      $ra, 0x0034($sp)
lbl_80943580:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_80943584:
    lwc1    $f4, 0x0140(s0)            # 00000140
    c.eq.s  $f0, $f4
    nop
    bc1tl   lbl_80943680
    sb      $zero, 0x015A(s0)          # 0000015A
    lb      t6, 0x015A(s0)             # 0000015A
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bne     t6, $zero, lbl_80943654
    lw      t9, 0x003C($sp)
    addiu   t7, $zero, 0xFFEC          # t7 = FFFFFFEC
    sw      t7, 0x0010($sp)
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_800353D0
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    mtc1    $zero, $f0                 # $f0 = 0.00
    beq     v0, $zero, lbl_8094363C
    lw      t5, 0x003C($sp)
    lui     t9, %hi(var_80944448)      # t9 = 80940000
    lbu     t9, %lo(var_80944448)(t9)
    lui     $at, %hi(var_80944448)     # $at = 80940000
    lui     t4, %hi(func_80943694)     # t4 = 80940000
    addiu   t0, t9, 0xFFFF             # t0 = 8093FFFF
    sb      t0, %lo(var_80944448)($at)
    lwc1    $f6, 0x0140(s0)            # 00000140
    lui     $at, 0xBF80                # $at = BF800000
    addiu   t4, t4, %lo(func_80943694) # t4 = 80943694
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_80943620
    mtc1    $at, $f16                  # $f16 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    nop
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    beq     $zero, $zero, lbl_80943634
    sb      t1, 0x015A(s0)             # 0000015A
    mtc1    $at, $f16                  # $f16 = 1.00
lbl_80943620:
    nop
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sb      t3, 0x015A(s0)             # 0000015A
lbl_80943634:
    beq     $zero, $zero, lbl_80943680
    sw      t4, 0x0154(s0)             # 00000154
lbl_8094363C:
    lw      t6, 0x0670(t5)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(t5)             # 00000670
    beq     $zero, $zero, lbl_80943680
    swc1    $f0, 0x0140(s0)            # 00000140
lbl_80943654:
    lw      t0, 0x0670(t9)             # 80940670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t8, t0, $at
    sw      t8, 0x0670(t9)             # 80940670
    lb      v0, 0x015A(s0)             # 0000015A
    swc1    $f0, 0x0140(s0)            # 00000140
    beq     v0, $zero, lbl_80943680
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    beq     $zero, $zero, lbl_80943680
    sb      t1, 0x015A(s0)             # 0000015A
    sb      $zero, 0x015A(s0)          # 0000015A
lbl_80943680:
    lw      $ra, 0x0034($sp)
lbl_80943684:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80943694:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     $at, 0x4000                # $at = 40000000
    sw      s0, 0x0020($sp)
    mtc1    $at, $f2                   # $f2 = 2.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lui     $at, %hi(var_809444B0)     # $at = 80940000
    lwc1    $f6, %lo(var_809444B0)($at)
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a0, %hi(var_80944480)      # a0 = 80940000
    addiu   a0, a0, %lo(var_80944480)  # a0 = 80944480
    sw      t7, 0x002C($sp)
    lwc1    $f4, 0x0068(s0)            # 00000068
    lui     a1, 0x41A0                 # a1 = 41A00000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_809436FC
    swc1    $f0, 0x0068(s0)            # 00000068
    beq     $zero, $zero, lbl_809436FC
    swc1    $f2, 0x0068(s0)            # 00000068
    swc1    $f0, 0x0068(s0)            # 00000068
lbl_809436FC:
    jal     func_8006385C
    lw      a2, 0x0068(s0)             # 00000068
    sw      v0, 0x0030($sp)
    lb      t8, 0x015A(s0)             # 0000015A
    lui     $at, %hi(var_80944480)     # $at = 80940000
    lwc1    $f18, %lo(var_80944480)($at)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lwc1    $f6, 0x0034($sp)
    lwc1    $f10, 0x0008(s0)           # 00000008
    lh      a0, 0x0148(s0)             # 00000148
    mul.s   $f8, $f0, $f6
    add.s   $f16, $f8, $f10
    jal     func_80063684              # coss?
    swc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f18, 0x0034($sp)
    lwc1    $f6, 0x0010(s0)            # 00000010
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(s0)            # 0000002C
    lw      t9, 0x0030($sp)
    lw      v0, 0x002C($sp)
    beql    t9, $zero, lbl_80943838
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    mtc1    $zero, $f0                 # $f0 = 0.00
    and     t1, t0, $at
    sw      t1, 0x0670(v0)             # 00000670
    lwc1    $f10, 0x0140(s0)           # 00000140
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f0, $f10
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    addiu   t2, $zero, 0xFFEC          # t2 = FFFFFFEC
    bc1fl   lbl_809437D0
    lwc1    $f16, 0x0024(s0)           # 00000024
    jal     func_800353D0
    sw      t2, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    bne     v0, $zero, lbl_809437CC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
lbl_809437CC:
    lwc1    $f16, 0x0024(s0)           # 00000024
lbl_809437D0:
    lwc1    $f18, 0x002C(s0)           # 0000002C
    swc1    $f0, 0x0140(s0)            # 00000140
    lui     $at, %hi(var_80944480)     # $at = 80940000
    swc1    $f16, 0x0008(s0)           # 00000008
    swc1    $f18, 0x0010(s0)           # 00000010
    swc1    $f0, %lo(var_80944480)($at)
    lui     v0, %hi(var_80944448)      # v0 = 80940000
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    addiu   v0, v0, %lo(var_80944448)  # v0 = 80944448
    swc1    $f0, 0x0068(s0)            # 00000068
    sb      t3, 0x015A(s0)             # 0000015A
    lbu     t4, 0x0000(v0)             # 80944448
    lui     t6, %hi(func_809433E0)     # t6 = 80940000
    addiu   t6, t6, %lo(func_809433E0) # t6 = 809433E0
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0000(v0)             # 80944448
    lbu     t7, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      t6, 0x0154(s0)             # 00000154
    beql    t7, $at, lbl_80943844
    lw      $ra, 0x0024($sp)
    jal     func_809431A4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809431A4
    lw      a0, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
lbl_80943838:
    jal     func_8002313C
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    lw      $ra, 0x0024($sp)
lbl_80943844:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80943854:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0140(a3)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     a1, 0x43F6                 # a1 = 43F60000
    c.eq.s  $f0, $f4
    ori     a1, a1, 0x8000             # a1 = 43F68000
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1t    lbl_8094389C
    nop
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f0, 0x0140(a3)            # 00000140
lbl_8094389C:
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80943944
    lw      a3, 0x0018($sp)
    lh      a1, 0x0034(a3)             # 00000034
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x00B8             # a0 = 000000B8
    addiu   a1, a1, 0xC000             # a1 = FFFFC000
    sll     a1, a1, 16
    sra     a1, a1, 16
    jal     func_80063704
    addiu   a2, $zero, 0x0400          # a2 = 00000400
    beq     v0, $zero, lbl_80943944
    lw      a3, 0x0018($sp)
    lbu     t8, 0x0159(a3)             # 00000159
    lui     t1, %hi(func_809432DC)     # t1 = 80940000
    addiu   t1, t1, %lo(func_809432DC) # t1 = 809432DC
    addiu   t9, t8, 0x0001             # t9 = 00000001
    bgez    t9, lbl_809438F8
    andi    t0, t9, 0x0003             # t0 = 00000001
    beq     t0, $zero, lbl_809438F8
    nop
    addiu   t0, t0, 0xFFFC             # t0 = FFFFFFFD
lbl_809438F8:
    sb      t0, 0x0159(a3)             # 00000159
    sw      t1, 0x0154(a3)             # 00000154
    lui     $at, %hi(var_80944750)     # $at = 80940000
    sb      $zero, %lo(var_80944750)($at)
    lbu     t2, 0x0158(a3)             # 00000158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t2, $at, lbl_80943948
    lw      $ra, 0x0014($sp)
    lh      t3, 0x015C(a3)             # 0000015C
    addiu   t5, $zero, 0x0078          # t5 = 00000078
    addiu   t4, t3, 0x000A             # t4 = 0000000A
    sh      t4, 0x015C(a3)             # 0000015C
    lh      v0, 0x015C(a3)             # 0000015C
    slti    $at, v0, 0x0079
    bnel    $at, $zero, lbl_80943944
    sh      v0, 0x015C(a3)             # 0000015C
    beq     $zero, $zero, lbl_80943944
    sh      t5, 0x015C(a3)             # 0000015C
    sh      v0, 0x015C(a3)             # 0000015C
lbl_80943944:
    lw      $ra, 0x0014($sp)
lbl_80943948:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80943954:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0140(a3)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     a1, 0x43B8                 # a1 = 43B80000
    c.eq.s  $f4, $f6
    ori     a1, a1, 0x8000             # a1 = 43B88000
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lui     a2, 0x4000                 # a2 = 40000000
    bc1t    lbl_80943998
    nop
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
lbl_80943998:
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_809439BC
    lw      a3, 0x0018($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    lui     $at, %hi(var_80944750)     # $at = 80940000
    sb      t8, %lo(var_80944750)($at)
    jal     func_80020EB4
    or      a0, a3, $zero              # a0 = 00000000
lbl_809439BC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809439CC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x0171(a0)             # 00000171
    lui     v0, %hi(var_80944750)      # v0 = 80940000
    addiu   v0, v0, %lo(var_80944750)  # v0 = 80944750
    andi    t7, t6, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_80943A38
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    lbu     t8, 0x0000(v0)             # 80944750
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    ori     t9, t8, 0x0020             # t9 = 00000020
    sb      t9, 0x0000(v0)             # 80944750
    sh      t0, 0x015C(a0)             # 0000015C
    sw      a0, 0x0020($sp)
    sw      t1, 0x0010($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0020($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x38EF          # a1 = 000038EF
    lw      a0, 0x0020($sp)
    lui     t2, %hi(func_80943A48)     # t2 = 80940000
    addiu   t2, t2, %lo(func_80943A48) # t2 = 80943A48
    sw      t2, 0x0154(a0)             # 00000154
lbl_80943A38:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80943A48:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x0064($sp)
    lui     v0, %hi(var_80944750)      # v0 = 80940000
    lbu     v0, %lo(var_80944750)(v0)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     v0, $at, lbl_80943B24
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    sub.s   $f8, $f4, $f6
    jal     func_80026D90
    swc1    $f8, 0x0054($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0058($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lui     a2, %hi(var_8094444C)      # a2 = 80940000
    addiu   a2, a2, %lo(var_8094444C)  # a2 = 8094444C
    add.s   $f4, $f0, $f18
    addiu   t6, $zero, 0x00AA          # t6 = 000000AA
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x00AA          # t0 = 000000AA
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    swc1    $f4, 0x005C($sp)
    sw      t4, 0x003C($sp)
    sw      t3, 0x0038($sp)
    sw      t2, 0x0034($sp)
    sw      t1, 0x002C($sp)
    sw      t0, 0x0024($sp)
    sw      t9, 0x0020($sp)
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    or      a3, a2, $zero              # a3 = 8094444C
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0014($sp)
    lw      a0, 0x0064($sp)
    jal     func_8001E1D4
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    beq     $zero, $zero, lbl_80943B54
    lw      $ra, 0x004C($sp)
lbl_80943B24:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    v0, $at, lbl_80943B44
    lh      v0, 0x015C(s0)             # 0000015C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80943B54
    lw      $ra, 0x004C($sp)
    lh      v0, 0x015C(s0)             # 0000015C
lbl_80943B44:
    beq     v0, $zero, lbl_80943B50
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x015C(s0)             # 0000015C
lbl_80943B50:
    lw      $ra, 0x004C($sp)
lbl_80943B54:
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80943B64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0118(a0)             # 00000118
    beq     v0, $zero, lbl_80943BD0
    nop
    lw      t6, 0x011C(a0)             # 0000011C
    beq     t6, $zero, lbl_80943BD0
    nop
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      a0, 0x0018($sp)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80943BC0
    lw      t9, 0x011C(a0)             # 0000011C
    lw      t7, 0x0118(a0)             # 00000118
    lui     $at, %hi(var_80944750)     # $at = 80940000
    lbu     t8, 0x0159(t7)             # 00000159
    beq     $zero, $zero, lbl_80943C0C
    sb      t8, %lo(var_80944750)($at)
    lw      t9, 0x011C(a0)             # 0000011C
lbl_80943BC0:
    lui     $at, %hi(var_80944750)     # $at = 80940000
    lbu     t0, 0x0159(t9)             # 00000159
    beq     $zero, $zero, lbl_80943C0C
    sb      t0, %lo(var_80944750)($at)
lbl_80943BD0:
    beql    v0, $zero, lbl_80943BEC
    lw      v0, 0x011C(a0)             # 0000011C
    lbu     t1, 0x0159(v0)             # 00000159
    lui     $at, %hi(var_80944750)     # $at = 80940000
    beq     $zero, $zero, lbl_80943C0C
    sb      t1, %lo(var_80944750)($at)
    lw      v0, 0x011C(a0)             # 0000011C
lbl_80943BEC:
    beq     v0, $zero, lbl_80943C04
    nop
    lbu     t2, 0x0159(v0)             # 00000159
    lui     $at, %hi(var_80944750)     # $at = 80940000
    beq     $zero, $zero, lbl_80943C0C
    sb      t2, %lo(var_80944750)($at)
lbl_80943C04:
    beq     $zero, $zero, lbl_80943C10
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80943C0C:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80943C10:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80943C20:
    sw      a1, 0x0004($sp)
    lui     t7, %hi(var_80944750)      # t7 = 80940000
    lbu     t7, %lo(var_80944750)(t7)
    lbu     t6, 0x0159(a0)             # 00000159
    lui     t9, %hi(func_80943C50)     # t9 = 80940000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    bne     t6, t7, lbl_80943C48
    addiu   t9, t9, %lo(func_80943C50) # t9 = 80943C50
    sh      t8, 0x015C(a0)             # 0000015C
    sw      t9, 0x0154(a0)             # 00000154
lbl_80943C48:
    jr      $ra
    nop


func_80943C50:
    sw      a1, 0x0004($sp)
    lh      t6, 0x015C(a0)             # 0000015C
    lui     t0, %hi(func_80943CD8)     # t0 = 80940000
    addiu   t9, $zero, 0x03E8          # t9 = 000003E8
    addiu   t7, t6, 0xFFEC             # t7 = FFFFFFEC
    sh      t7, 0x015C(a0)             # 0000015C
    lh      t8, 0x015C(a0)             # 0000015C
    addiu   t0, t0, %lo(func_80943CD8) # t0 = 80943CD8
    bgtz    t8, lbl_80943C80
    nop
    sh      t9, 0x015C(a0)             # 0000015C
    sw      t0, 0x0154(a0)             # 00000154
lbl_80943C80:
    jr      $ra
    nop


func_80943C88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x015C(a0)             # 0000015C
    addiu   t7, t6, 0x0014             # t7 = 00000014
    sh      t7, 0x015C(a0)             # 0000015C
    lh      t8, 0x015C(a0)             # 0000015C
    slti    $at, t8, 0x00FF
    bnel    $at, $zero, lbl_80943CCC
    lw      $ra, 0x0014($sp)
    jal     func_80943B64
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_80943C20)     # t9 = 80940000
    addiu   t9, t9, %lo(func_80943C20) # t9 = 80943C20
    sw      t9, 0x0154(a0)             # 00000154
    lw      $ra, 0x0014($sp)
lbl_80943CCC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80943CD8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x015C(s0)             # 0000015C
    lw      t6, 0x003C($sp)
    lui     $at, 0x4316                # $at = 43160000
    beq     v0, $zero, lbl_80943D0C
    lw      a2, 0x1C44(t6)             # 00001C44
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x015C(s0)             # 0000015C
    lh      v0, 0x015C(s0)             # 0000015C
lbl_80943D0C:
    beql    v0, $zero, lbl_80943DF4
    lw      t9, 0x0118(s0)             # 00000118
    lwc1    $f4, 0x0090(s0)            # 00000090
    mtc1    $at, $f6                   # $f6 = 150.00
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80943D4C
    nop
    lwc1    $f8, 0x0094(s0)            # 00000094
    mtc1    $at, $f10                  # $f10 = 50.00
    nop
    c.lt.s  $f8, $f10
    nop
    bc1tl   lbl_80943DF4
    lw      t9, 0x0118(s0)             # 00000118
lbl_80943D4C:
    jal     func_800216F8
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80943E28
    lui     $at, 0x43A0                # $at = 43A00000
    lwc1    $f16, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 320.00
    nop
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_80943E2C
    lbu     t2, 0x0171(s0)             # 00000171
    lbu     t8, 0x0159(s0)             # 00000159
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, s0, $zero              # a0 = 00000000
    beq     t8, $at, lbl_80943DB8
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0094(s0)            # 00000094
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80943DD8
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80943DD8
    nop
lbl_80943DB8:
    lwc1    $f8, 0x0094(s0)            # 00000094
    mtc1    $zero, $f10                # $f10 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    c.lt.s  $f8, $f10
    nop
    bc1f    lbl_80943DD8
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80943DD8:
    beql    v0, $zero, lbl_80943E2C
    lbu     t2, 0x0171(s0)             # 00000171
    jal     func_80021968
    lw      a2, 0x003C($sp)
    beql    v0, $zero, lbl_80943E2C
    lbu     t2, 0x0171(s0)             # 00000171
    lw      t9, 0x0118(s0)             # 00000118
lbl_80943DF4:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    bne     t9, $zero, lbl_80943E10
    nop
    lw      t0, 0x011C(s0)             # 0000011C
    beql    t0, $zero, lbl_80943E2C
    lbu     t2, 0x0171(s0)             # 00000171
lbl_80943E10:
    jal     func_80022FD0
    sh      $zero, 0x015C(s0)          # 0000015C
    lui     t1, %hi(func_80943C88)     # t1 = 80940000
    addiu   t1, t1, %lo(func_80943C88) # t1 = 80943C88
    beq     $zero, $zero, lbl_80943F20
    sw      t1, 0x0154(s0)             # 00000154
lbl_80943E28:
    lbu     t2, 0x0171(s0)             # 00000171
lbl_80943E2C:
    andi    t3, t2, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80943F24
    lw      $ra, 0x0034($sp)
    jal     func_80943B64
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80943EC8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    lw      a1, 0x003C($sp)
    sub.s   $f4, $f16, $f18
    addiu   a2, $zero, 0x0091          # a2 = 00000091
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    lh      t4, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0020($sp)
    sw      t4, 0x001C($sp)
    lbu     t6, 0x0158(s0)             # 00000158
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sll     t8, t7,  8
    addu    t9, t5, t8
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0024($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, $zero, 0x0C58          # a1 = 00000C58
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    beq     $zero, $zero, lbl_80943EEC
    lw      v0, 0x0118(s0)             # 00000118
lbl_80943EC8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x38EF          # a1 = 000038EF
    lw      a0, 0x003C($sp)
    addiu   a1, $zero, 0x0C58          # a1 = 00000C58
    addiu   a2, $zero, 0x0023          # a2 = 00000023
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    lw      v0, 0x0118(s0)             # 00000118
lbl_80943EEC:
    lui     t1, %hi(func_80943F34)     # t1 = 80940000
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    beq     v0, $zero, lbl_80943F04
    addiu   t1, t1, %lo(func_80943F34) # t1 = 80943F34
    sw      $zero, 0x011C(v0)          # 0000011C
    sw      $zero, 0x0118(s0)          # 00000118
lbl_80943F04:
    lw      v0, 0x011C(s0)             # 0000011C
    beql    v0, $zero, lbl_80943F1C
    sh      t0, 0x015C(s0)             # 0000015C
    sw      $zero, 0x0118(v0)          # 00000118
    sw      $zero, 0x011C(s0)          # 0000011C
    sh      t0, 0x015C(s0)             # 0000015C
lbl_80943F1C:
    sw      t1, 0x0154(s0)             # 00000154
lbl_80943F20:
    lw      $ra, 0x0034($sp)
lbl_80943F24:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80943F34:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0048($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      a1, 0x0064($sp)
    lh      t6, 0x015C(s0)             # 0000015C
    lh      a0, 0x00B6(s0)             # 000000B6
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    jal     func_800636C4              # sins?
    sh      t7, 0x015C(s0)             # 0000015C
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4284                # $at = 42840000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f12                  # $f12 = 66.00
    add.s   $f10, $f6, $f8
    jal     func_80026D90
    swc1    $f10, 0x0054($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0058($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x005C($sp)
    lh      v0, 0x015C(s0)             # 0000015C
    bltz    v0, lbl_809440A8
    nop
    lbu     t8, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a2, %hi(var_8094444C)      # a2 = 80940000
    bne     t8, $at, lbl_80944038
    addiu   a2, a2, %lo(var_8094444C)  # a2 = 8094444C
    lui     a2, %hi(var_8094444C)      # a2 = 80940000
    addiu   a2, a2, %lo(var_8094444C)  # a2 = 8094444C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x00AA          # t3 = 000000AA
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x003C($sp)
    sw      t6, 0x0038($sp)
    sw      t5, 0x0034($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0010($sp)
    or      a3, a2, $zero              # a3 = 8094444C
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x002C($sp)
    jal     func_8001E1D4
    sw      $zero, 0x0030($sp)
    beq     $zero, $zero, lbl_809440A8
    lh      v0, 0x015C(s0)             # 0000015C
lbl_80944038:
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00AA          # t2 = 000000AA
    addiu   t3, $zero, 0x0032          # t3 = 00000032
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    sw      t5, 0x0030($sp)
    sw      t4, 0x002C($sp)
    sw      t3, 0x0028($sp)
    sw      t2, 0x0024($sp)
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    sw      t8, 0x003C($sp)
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFF4
    or      a3, a2, $zero              # a3 = 00000000
    jal     func_8001E1D4
    sw      $zero, 0x0014($sp)
    lh      v0, 0x015C(s0)             # 0000015C
lbl_809440A8:
    bnel    v0, $zero, lbl_809440BC
    slti    $at, v0, 0xFFC4
    sw      $zero, 0x0134(s0)          # 00000134
    lh      v0, 0x015C(s0)             # 0000015C
    slti    $at, v0, 0xFFC4
lbl_809440BC:
    beql    $at, $zero, lbl_809440D0
    lw      $ra, 0x004C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)
lbl_809440D0:
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_809440E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sw      a3, 0x0018($sp)
    lw      t9, 0x0154(a3)             # 00000154
    or      a0, a3, $zero              # a0 = 00000000
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      a3, 0x0018($sp)
    lui     t6, %hi(func_809439CC)     # t6 = 80940000
    addiu   t6, t6, %lo(func_809439CC) # t6 = 809439CC
    lw      v0, 0x0154(a3)             # 00000154
    lui     t7, %hi(func_80943CD8)     # t7 = 80940000
    lw      a0, 0x001C($sp)
    beq     t6, v0, lbl_8094412C
    addiu   t7, t7, %lo(func_80943CD8) # t7 = 80943CD8
    bne     t7, v0, lbl_80944140
lbl_8094412C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a3, 0x0160             # a2 = 00000160
lbl_80944140:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80944150:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0038($sp)
    lbu     v0, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a2, 0x0038($sp)
    beq     v0, $at, lbl_80944194
    lui     t0, 0xFB00                 # t0 = FB000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_809441EC
    lw      v1, 0x02C0(a2)             # 000002C0
lbl_80944194:
    lw      v0, 0x0154(s0)             # 00000154
    lui     t7, %hi(func_80943C20)     # t7 = 80940000
    addiu   t7, t7, %lo(func_80943C20) # t7 = 80943C20
    bne     t7, v0, lbl_809441B0
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    beq     $zero, $zero, lbl_809441CC
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
lbl_809441B0:
    lui     t8, %hi(func_80943CD8)     # t8 = 80940000
    addiu   t8, t8, %lo(func_80943CD8) # t8 = 80943CD8
    bnel    t8, v0, lbl_809441CC
    lbu     a0, 0x015D(s0)             # 0000015D
    beq     $zero, $zero, lbl_809441CC
    or      a0, $zero, $zero           # a0 = 00000000
    lbu     a0, 0x015D(s0)             # 0000015D
lbl_809441CC:
    lw      v1, 0x02C0(a2)             # 000002C0
    andi    t1, a0, 0x00FF             # t1 = 00000000
    or      t2, t1, $at                # t2 = FFFFFF00
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
lbl_809441EC:
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x006C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    sw      a2, 0x0038($sp)
    jal     func_800AB900
    sw      v1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lw      a2, 0x0038($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t0, %hi(var_80944484)      # t0 = 80940000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t8, 0x0158(s0)             # 00000158
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, %lo(var_80944484)(t0)
    sw      t0, 0x0004(v1)             # 00000004
    lbu     v0, 0x0158(s0)             # 00000158
    beql    v0, $zero, lbl_80944264
    lui     $at, 0x3F80                # $at = 3F800000
    bne     v0, $at, lbl_80944388
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80944264:
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_809444B4)     # $at = 80940000
    lwc1    $f4, %lo(var_809444B4)($at)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, %hi(var_809444B8)     # $at = 80940000
    lwc1    $f10, %lo(var_809444B8)($at)
    sub.s   $f8, $f4, $f6
    lui     $at, 0x41F0                # $at = 41F00000
    mul.s   $f0, $f8, $f10
    c.lt.s  $f2, $f0
    nop
    bc1tl   lbl_8094438C
    lw      $ra, 0x001C($sp)
    lwc1    $f16, 0x0024(s0)           # 00000024
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, %hi(var_809444BC)     # $at = 80940000
    swc1    $f16, 0x0050($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f10, %lo(var_809444BC)($at)
    lui     $at, %hi(var_809444C0)     # $at = 80940000
    sub.s   $f6, $f18, $f4
    lwc1    $f18, %lo(var_809444C0)($at)
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f16, $f0, $f10
    swc1    $f6, 0x0054($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x431B                # $at = 431B0000
    swc1    $f8, 0x0058($sp)
    mul.s   $f8, $f0, $f6
    mtc1    $at, $f10                  # $f10 = 155.00
    add.s   $f4, $f16, $f18
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f2, 0x0048($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    swc1    $f4, 0x004C($sp)
    add.s   $f16, $f8, $f10
    swc1    $f4, 0x0044($sp)
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFDC
    cfc1    t1, $f31
    ctc1    a2, $f31
    lw      a3, 0x006C($sp)
    cvt.w.s $f18, $f16
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_80944370
    mfc1    a2, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    a2, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_80944364
    nop
    mfc1    a2, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8094437C
    or      a2, a2, $at                # a2 = 80000000
lbl_80944364:
    beq     $zero, $zero, lbl_8094437C
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f18
lbl_80944370:
    nop
    bltz    a2, lbl_80944364
    nop
lbl_8094437C:
    ctc1    t1, $f31
    jal     func_80026AD0
    andi    a2, a2, 0x00FF             # a2 = 000000FF
lbl_80944388:
    lw      $ra, 0x001C($sp)
lbl_8094438C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop

.section .data

var_809443A0: .word 0x00930100, 0x00000000, 0x00990000, 0x00000238
.word func_80942E4C
.word func_80942F5C
.word func_809440E0
.word func_80944150
var_809443C0: .word \
0x04000000, 0x00000000, 0x00000000, 0x0001F820, \
0x00000000, 0x00010000, 0x41C80000, 0x42040000, \
0x00000000, 0xC1C80000, 0x42040000, 0x00000000, \
0xC1C80000, 0xC2040000, 0x00000000, 0x04000000, \
0x00000000, 0x00000000, 0x0001F820, 0x00000000, \
0x00010000, 0x41C80000, 0x42040000, 0x00000000, \
0xC1C80000, 0xC2040000, 0x00000000, 0x41C80000, \
0xC2040000, 0x00000000
var_80944438: .word 0x0A000900, 0x20020000, 0x00000002
.word var_809443C0
var_80944448: .word 0x00000000
var_8094444C: .word 0x00000000, 0x00000000, 0x00000000
var_80944458: .word 0xFAEAFC9E, 0x058D03D9
var_80944460: .word 0x04530443
var_80944464: .word 0xF2C8F34C
var_80944468: .word 0x086507B1, 0x07750000
var_80944470: .word 0xFA7EFABA, 0xFA060000
var_80944478: .word 0x485003E8
var_8094447C: .word 0x00000000
var_80944480: .word 0x00000000
var_80944484: .word \
0x060075A0, 0x060079E0, 0x06006830, 0x06006D60, \
0x06007230, 0x00000000, 0x00000000

.section .rodata

var_809444A0: .word 0x4019999A
var_809444A4: .word 0x3FE8B439
var_809444A8: .word 0x44504000
var_809444AC: .word 0x44504000
var_809444B0: .word 0x3DCCCCCD
var_809444B4: .word 0x44504000
var_809444B8: .word 0x3B23D70A
var_809444BC: .word 0x3E99999A
var_809444C0: .word 0x3ECCCCCD, 0x00000000, 0x00000000, 0x00000000

.bss

var_80944750: .space 0x10
