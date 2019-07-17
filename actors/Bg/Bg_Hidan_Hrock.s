.section .text
func_808D7FB0:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00B4($sp)
    lui     a1, %hi(var_808D8728)      # a1 = 808E0000
    sw      $zero, 0x0070($sp)
    addiu   a1, a1, %lo(var_808D8728)  # a1 = 808D8728
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   s8, s0, 0x015C             # s8 = 0000015C
    sra     t9, t8,  8
    andi    t0, t9, 0x00FF             # t0 = 00000000
    andi    t7, t6, 0x003F             # t7 = 00000000
    sb      t7, 0x015A(s0)             # 0000015A
    sh      t0, 0x001C(s0)             # 0000001C
    lw      a0, 0x00B4($sp)
    jal     func_8004B064
    or      a1, s8, $zero              # a1 = 0000015C
    lui     a3, %hi(var_808D8718)      # a3 = 808E0000
    addiu   t1, s0, 0x017C             # t1 = 0000017C
    sw      t1, 0x0010($sp)
    addiu   a3, a3, %lo(var_808D8718)  # a3 = 808D8718
    lw      a0, 0x00B4($sp)
    or      a1, s8, $zero              # a1 = 0000015C
    jal     func_8004B3EC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    mov.s   $f22, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lh      t2, 0x001C(s0)             # 0000001C
    mov.s   $f20, $f0
    or      s2, $zero, $zero           # s2 = 00000000
    bne     t2, $zero, lbl_808D809C
    or      s3, $zero, $zero           # s3 = 00000000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f2                   # $f2 = 1.50
    nop
    mul.s   $f22, $f22, $f2
    nop
    mul.s   $f20, $f0, $f2
    nop
lbl_808D809C:
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    addiu   s6, $sp, 0x009C            # s6 = FFFFFFEC
    addiu   s5, $sp, 0x0090            # s5 = FFFFFFE0
    addiu   s4, $sp, 0x0084            # s4 = FFFFFFD4
    addiu   s1, $sp, 0x00A8            # s1 = FFFFFFF8
lbl_808D80B0:
    lui     t3, %hi(var_808D8724)      # t3 = 808E0000
    lw      t3, %lo(var_808D8724)(t3)
    addiu   v1, $sp, 0x0084            # v1 = FFFFFFD4
    addu    v0, s3, t3
    lwc1    $f12, 0x0018(v0)           # 00000018
    addiu   v1, v1, 0x000C             # v1 = FFFFFFE0
    lwc1    $f18, 0x0008(s0)           # 00000008
    mul.s   $f16, $f12, $f20
    beq     v1, s1, lbl_808D8138
    lwc1    $f14, 0x0020(v0)           # 00000020
lbl_808D80D8:
    mul.s   $f12, $f14, $f22
    add.s   $f10, $f18, $f16
    addiu   v1, v1, 0x000C             # v1 = FFFFFFEC
    addiu   v0, v0, 0x000C             # v0 = 0000000C
    add.s   $f10, $f12, $f10
    swc1    $f10, -0x0018(v1)          # FFFFFFD4
    lwc1    $f10, 0x0010(v0)           # 0000001C
    lwc1    $f12, 0x000C(s0)           # 0000000C
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0014(v1)          # FFFFFFD8
    lwc1    $f12, 0x000C(v0)           # 00000018
    lwc1    $f10, 0x0014(v0)           # 00000020
    lwc1    $f8, 0x0010(s0)            # 00000010
    mul.s   $f12, $f12, $f22
    sub.s   $f12, $f8, $f12
    mul.s   $f10, $f10, $f20
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0010(v1)          # FFFFFFDC
    lwc1    $f12, 0x0018(v0)           # 00000024
    lwc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f14, 0x0020(v0)           # 0000002C
    mul.s   $f16, $f12, $f20
    bne     v1, s1, lbl_808D80D8
    nop
lbl_808D8138:
    mul.s   $f12, $f14, $f22
    add.s   $f10, $f18, $f16
    addiu   v0, v0, 0x000C             # v0 = 00000018
    add.s   $f10, $f12, $f10
    swc1    $f10, -0x000C(v1)          # FFFFFFE0
    lwc1    $f12, 0x000C(s0)           # 0000000C
    lwc1    $f10, 0x0010(v0)           # 00000028
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0008(v1)          # FFFFFFE4
    lwc1    $f12, 0x000C(v0)           # 00000024
    lwc1    $f10, 0x0014(v0)           # 0000002C
    lwc1    $f8, 0x0010(s0)            # 00000010
    mul.s   $f12, $f12, $f22
    sub.s   $f12, $f8, $f12
    mul.s   $f10, $f10, $f20
    add.s   $f12, $f10, $f12
    swc1    $f12, -0x0004(v1)          # FFFFFFE8
    or      a0, s8, $zero              # a0 = 0000015C
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFD4
    or      a3, s5, $zero              # a3 = FFFFFFE0
    jal     func_80050BD4
    sw      s6, 0x0010($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bne     s2, s7, lbl_808D80B0
    addiu   s3, s3, 0x003C             # s3 = 0000003C
    lw      a0, 0x00B4($sp)
    jal     func_8002049C
    lbu     a1, 0x015A(s0)             # 0000015A
    beq     v0, $zero, lbl_808D8234
    lui     t8, %hi(func_808D8540)     # t8 = 808E0000
    lh      v0, 0x001C(s0)             # 0000001C
    lui     t4, %hi(func_808D8328)     # t4 = 808E0000
    addiu   t4, t4, %lo(func_808D8328) # t4 = 808D8328
    bne     v0, $zero, lbl_808D81F0
    sw      t4, 0x0154(s0)             # 00000154
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f6                   # $f6 = 2800.00
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, %hi(var_808D8740)     # $at = 808E0000
    lh      v0, 0x001C(s0)             # 0000001C
    sub.s   $f8, $f18, $f6
    swc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, %lo(var_808D8740)($at)
    beq     $zero, $zero, lbl_808D8264
    swc1    $f16, 0x00F4(s0)           # 000000F4
lbl_808D81F0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_808D8214
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f10                  # $f10 = 800.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      v0, 0x001C(s0)             # 0000001C
    sub.s   $f18, $f4, $f10
    beq     $zero, $zero, lbl_808D8264
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_808D8214:
    bne     s7, v0, lbl_808D8264
    lui     $at, 0x4370                # $at = 43700000
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $at, $f8                   # $f8 = 240.00
    lh      v0, 0x001C(s0)             # 0000001C
    sub.s   $f16, $f6, $f8
    beq     $zero, $zero, lbl_808D8264
    swc1    $f16, 0x0028(s0)           # 00000028
lbl_808D8234:
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   t8, t8, %lo(func_808D8540) # t8 = 808D8540
    bnel    t5, $zero, lbl_808D8260
    sw      t8, 0x0154(s0)             # 00000154
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, %hi(var_808D8744)     # $at = 808E0000
    ori     t7, t6, 0x0030             # t7 = 00000030
    sw      t7, 0x0004(s0)             # 00000004
    lwc1    $f4, %lo(var_808D8744)($at)
    swc1    $f4, 0x00F4(s0)            # 000000F4
    sw      t8, 0x0154(s0)             # 00000154
lbl_808D8260:
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808D8264:
    bne     v0, $zero, lbl_808D8284
    lui     a0, 0x0601                 # a0 = 06010000
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xD054             # a0 = 0600D054
    jal     func_80033EF4
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFC0
    beq     $zero, $zero, lbl_808D8294
    lw      a0, 0x00B4($sp)
lbl_808D8284:
    addiu   a0, a0, 0xD188             # a0 = FFFFD188
    jal     func_80033EF4
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFC0
    lw      a0, 0x00B4($sp)
lbl_808D8294:
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0070($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0054($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    lw      s7, 0x004C($sp)
    lw      s8, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0


func_808D82E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004B148
    addiu   a1, a1, 0x015C             # a1 = 0000015C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D8328:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_808D8338:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_808D8360
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0158(s0)             # 00000158
    lh      v0, 0x0158(s0)             # 00000158
lbl_808D8360:
    lh      t7, 0x0032(s0)             # 00000032
    sll     t8, v0, 14
    addu    a0, t7, t8
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      t0, 0x0158(s0)             # 00000158
    mul.s   $f6, $f0, $f4
    lh      t9, 0x0032(s0)             # 00000032
    sll     t1, t0, 14
    addu    a0, t9, t1
    sll     a0, a0, 16
    sra     a0, a0, 16
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lwc1    $f4, 0x0010(s0)            # 00000010
    lh      v0, 0x0158(s0)             # 00000158
    mul.s   $f18, $f0, $f16
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x002C(s0)            # 0000002C
    bgez    v0, lbl_808D83E8
    andi    t2, v0, 0x0003             # t2 = 00000000
    beq     t2, $zero, lbl_808D83E8
    nop
    addiu   t2, t2, 0xFFFC             # t2 = FFFFFFFC
lbl_808D83E8:
    bne     t2, $zero, lbl_808D8408
    nop
    jal     func_800915CC
    lwc1    $f12, 0x008C(s0)           # 0000008C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2838          # a1 = 00002838
    lh      v0, 0x0158(s0)             # 00000158
lbl_808D8408:
    bne     v0, $zero, lbl_808D8480
    lui     t3, %hi(func_808D8494)     # t3 = 808E0000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t3, t3, %lo(func_808D8494) # t3 = 808D8494
    bne     v0, $zero, lbl_808D843C
    nop
    lui     $at, 0x452F                # $at = 452F0000
    mtc1    $at, $f10                  # $f10 = 2800.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    sub.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_808D846C
    swc1    $f16, 0x000C(s0)           # 0000000C
lbl_808D843C:
    bne     v0, $at, lbl_808D8458
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    sub.s   $f6, $f18, $f4
    beq     $zero, $zero, lbl_808D846C
    swc1    $f6, 0x000C(s0)            # 0000000C
lbl_808D8458:
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f10                  # $f10 = 240.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x000C(s0)           # 0000000C
lbl_808D846C:
    lwc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f4, 0x0010(s0)            # 00000010
    sw      t3, 0x0154(s0)             # 00000154
    swc1    $f18, 0x0024(s0)           # 00000024
    swc1    $f4, 0x002C(s0)            # 0000002C
lbl_808D8480:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D8494:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0060(s0)            # 00000060
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0060(s0)            # 00000060
    jal     func_8006385C
    lw      a2, 0x0060(s0)             # 00000060
    beq     v0, $zero, lbl_808D852C
    addiu   $at, $zero, 0xFFCF         # $at = FFFFFFCF
    lw      t6, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    and     t7, t6, $at
    jal     func_80022FD0
    sw      t7, 0x0004(s0)             # 00000004
    lh      t8, 0x001C(s0)             # 0000001C
    lw      t9, 0x0024($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    bne     t8, $zero, lbl_808D8520
    addu    t0, t0, t9
    lb      t0, 0x1CBC(t0)             # 00011CBC
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    bne     v0, t0, lbl_808D8518
    nop
    beq     $zero, $zero, lbl_808D8520
    sb      v0, 0x0003(s0)             # 00000003
lbl_808D8518:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808D8520:
    lui     t1, %hi(func_808D8328)     # t1 = 808E0000
    addiu   t1, t1, %lo(func_808D8328) # t1 = 808D8328
    sw      t1, 0x0154(s0)             # 00000154
lbl_808D852C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D8540:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     v0, 0x016D(s0)             # 0000016D
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_808D85B8
    or      a0, a3, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lh      t1, 0x001C(s0)             # 0000001C
    lui     t8, %hi(func_808D8338)     # t8 = 808E0000
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    addiu   t8, t8, %lo(func_808D8338) # t8 = 808D8338
    ori     t0, t9, 0x0010             # t0 = 00000010
    sb      t7, 0x016D(s0)             # 0000016D
    sw      t8, 0x0154(s0)             # 00000154
    bne     t1, $zero, lbl_808D859C
    sw      t0, 0x0004(s0)             # 00000004
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    sb      t2, 0x0003(s0)             # 00000003
lbl_808D859C:
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sh      t3, 0x0158(s0)             # 00000158
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800204D0
    lbu     a1, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_808D85C4
    nop
lbl_808D85B8:
    addu    a1, a3, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x015C             # a2 = 0000015C
lbl_808D85C4:
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_808D8600
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    sub.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beq     $zero, $zero, lbl_808D8610
    lw      $ra, 0x001C($sp)
lbl_808D8600:
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_8006385C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      $ra, 0x001C($sp)
lbl_808D8610:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808D8620:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808D8644:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_808D8730)      # a1 = 808E0000
    or      a0, a2, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    a1, a1, t7
    jal     func_80028048
    lw      a1, %lo(var_808D8730)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_808D8680: .word 0x00410100, 0x00000000, 0x002C0000, 0x00000234
.word func_808D7FB0
.word func_808D82E0
.word func_808D8620
.word func_808D8644
var_808D86A0: .word \
0x00000000, 0x00000000, 0x00000000, 0x40000040, \
0x00000000, 0x00790000, 0xC2200000, 0x40400000, \
0xC2200000, 0xC2200000, 0x40400000, 0x42200000, \
0x42200000, 0x40400000, 0x42200000, 0x00000000, \
0x00000000, 0x00000000, 0x40000040, 0x00000000, \
0x00790000, 0x42200000, 0x40400000, 0x42200000, \
0x42200000, 0x40400000, 0xC2200000, 0xC2200000, \
0x40400000, 0xC2200000
var_808D8718: .word 0x0A000900, 0x20020000, 0x00000002
var_808D8724: .word var_808D86A0
var_808D8728: .word 0xC8500064, 0x306CFFFF
var_808D8730: .word 0x0600A240, 0x0600C838, 0x0600C838, 0x00000000

.section .rodata

var_808D8740: .word 0x453B8000
var_808D8744: .word 0x453B8000, 0x00000000, 0x00000000

