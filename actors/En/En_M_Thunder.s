.section .text
func_808FF0C0:
    sw      a1, 0x01B0(a0)             # 000001B0
    jr      $ra
    nop


func_808FF0CC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      s1, 0x1C44(a2)             # 00001C44
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0030($sp)
    sw      a2, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, a2, $zero              # a0 = 00000000
    lui     a3, %hi(var_809004B0)      # a3 = 80900000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_809004B0)  # a3 = 809004B0
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f6, $f4
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x018C             # a0 = 0000018C
    trunc.w.s $f10, $f8
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    mfc1    a1, $f6
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    sb      t8, 0x01B7(s0)             # 000001B7
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    mfc1    a3, $f18
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      a0, 0x0030($sp)
    jal     func_80065BCC
    sw      $zero, 0x001C($sp)
    lw      a0, 0x0044($sp)
    lw      a2, 0x0030($sp)
    jal     func_800665B0
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    addiu   t6, $zero, 0xFFEC          # t6 = FFFFFFEC
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      v0, 0x0188(s0)             # 00000188
    sh      $zero, 0x017C(s0)          # 0000017C
    sh      t5, 0x017E(s0)             # 0000017E
    sh      t6, 0x0180(s0)             # 00000180
    sh      t7, 0x01B4(s0)             # 000001B4
    swc1    $f0, 0x01A4(s0)            # 000001A4
    lw      t9, 0x08F8(s1)             # 000008F8
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    sw      t9, 0x0024(s0)             # 00000024
    lw      t8, 0x08FC(s1)             # 000008FC
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    sw      t8, 0x0028(s0)             # 00000028
    lw      t9, 0x0900(s1)             # 00000900
    swc1    $f0, 0x019C(s0)            # 0000019C
    swc1    $f0, 0x01AC(s0)            # 000001AC
    sw      t9, 0x002C(s0)             # 0000002C
    lh      t0, 0x00B6(s1)             # 000000B6
    sb      t2, 0x0003(s0)             # 00000003
    or      a0, s0, $zero              # a0 = 00000000
    addu    t1, t0, $at
    jal     func_80020F88
    sh      t1, 0x00B6(s0)             # 000000B6
    sb      $zero, 0x01BA(s0)          # 000001BA
    lw      t3, 0x0670(s1)             # 00000670
    lui     v0, 0x8012                 # v0 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t4, t3, 14
    bgez    t4, lbl_808FF36C
    lui     a1, %hi(func_808FF4F0)     # a1 = 80900000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lbu     t5, 0x003A(v0)             # 8011A60A
    beq     t5, $zero, lbl_808FF264
    nop
    lh      t6, 0x13F0(v0)             # 8011B9C0
    bne     t6, $zero, lbl_808FF264
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    andi    v0, v0, 0xFF00             # v0 = 0000A500
    sra     v0, v0,  8
    beq     v0, $zero, lbl_808FF2C8
    sll     a1, v0, 16
    jal     func_80072588
    sra     a1, a1, 16
    bne     v0, $zero, lbl_808FF2C8
lbl_808FF264:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    sw      a1, 0x0030($sp)
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1823          # a0 = 00001823
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lw      a1, 0x0030($sp)
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1818          # a0 = 00001818
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808FF37C
    lw      $ra, 0x002C($sp)
lbl_808FF2C8:
    lw      t9, 0x0670(s1)             # 00000670
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xFFFF           # $at = FFFDFFFF
    and     t0, t9, $at
    sw      t0, 0x0670(s1)             # 00000670
    lbu     v0, 0x01B7(s0)             # 000001B7
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lui     t2, %hi(var_809004DC)      # t2 = 80900000
    sll     t1, v0,  2
    sb      v1, 0x01BA(s0)             # 000001BA
    addu    t2, t2, t1
    lw      t2, %lo(var_809004DC)(t2)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sb      v1, 0x01B6(s0)             # 000001B6
    bne     v0, $at, lbl_808FF314
    sw      t2, 0x0154(s0)             # 00000154
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    b       lbl_808FF31C
    sb      t3, 0x01B9(s0)             # 000001B9
lbl_808FF314:
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    sb      t4, 0x01B9(s0)             # 000001B9
lbl_808FF31C:
    lui     a1, %hi(func_808FFAA0)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FFAA0) # a1 = 808FFAA0
    jal     func_808FF0C0
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sh      t5, 0x01B4(s0)             # 000001B4
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x182E          # a0 = 0000182E
    addiu   a1, s1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    b       lbl_808FF374
    swc1    $f4, 0x019C(s0)            # 0000019C
lbl_808FF36C:
    jal     func_808FF0C0
    addiu   a1, a1, %lo(func_808FF4F0) # a1 = FFFFF4F0
lbl_808FF374:
    sw      $zero, 0x011C(s0)          # 0000011C
    lw      $ra, 0x002C($sp)
lbl_808FF37C:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808FF38C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    lbu     t7, 0x01BA(t6)             # 000001BA
    beql    t7, $zero, lbl_808FF3BC
    lw      a1, 0x0020($sp)
    jal     func_80072548
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0020($sp)
lbl_808FF3BC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808FF3FC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t8, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x0188(t8)             # 00000188
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808FF3FC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a1, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a1, $f12
    lui     a2, 0x4454                 # a2 = 44540000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    ori     a2, a2, 0x8000             # a2 = 44548000
    jal     func_800631D8
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808FF438:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    lw      t6, 0x0670(v0)             # 00000670
    sll     t7, t6, 14
    bgezl   t7, lbl_808FF4CC
    lw      t1, 0x066C(v0)             # 0000066C
    lb      t8, 0x0832(v0)             # 00000832
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    slti    $at, t8, 0x0018
    bne     $at, $zero, lbl_808FF4B8
    addiu   a0, $zero, 0x1823          # a0 = 00001823
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a1, v0, 0x00E4             # a1 = 000000E4
    sw      a1, 0x0020($sp)
    sw      t9, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lw      a1, 0x0020($sp)
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1818          # a0 = 00001818
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808FF4B8:
    jal     func_80020EB4
    lw      a0, 0x0028($sp)
    b       lbl_808FF4E4
    lw      $ra, 0x001C($sp)
    lw      t1, 0x066C(v0)             # 0000066C
lbl_808FF4CC:
    andi    t2, t1, 0x1000             # t2 = 00000000
    bnel    t2, $zero, lbl_808FF4E4
    lw      $ra, 0x001C($sp)
    jal     func_80020EB4
    lw      a0, 0x0028($sp)
    lw      $ra, 0x001C($sp)
lbl_808FF4E4:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808FF4F0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    lbu     t2, 0x01BA(s0)             # 000001BA
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      v1, 0x1C44(t6)             # 00001C44
    lw      t0, 0x011C(s0)             # 0000011C
    lwc1    $f4, 0x0848(v1)            # 00000848
    swc1    $f4, 0x01A8(s0)            # 000001A8
    lw      t8, 0x08F8(v1)             # 000008F8
    sw      t8, 0x0024(s0)             # 00000024
    lw      t7, 0x08FC(v1)             # 000008FC
    sw      t7, 0x0028(s0)             # 00000028
    lw      t8, 0x0900(v1)             # 00000900
    sw      t8, 0x002C(s0)             # 0000002C
    lh      t9, 0x00B6(v1)             # 000000B6
    addu    t1, t9, $at
    bne     t2, $zero, lbl_808FF5E8
    sh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, %hi(var_80900520)     # $at = 80900000
    lwc1    $f8, %lo(var_80900520)($at)
    lwc1    $f6, 0x0848(v1)            # 00000848
    lui     t3, 0x8012                 # t3 = 80120000
    c.le.s  $f8, $f6
    nop
    bc1f    lbl_808FF5E8
    nop
    lh      t3, -0x4640(t3)            # 8011B9C0
    bnel    t3, $zero, lbl_808FF5B0
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0054($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    andi    v0, v0, 0xFF00             # v0 = 00000000
    sra     v0, v0,  8
    beq     v0, $zero, lbl_808FF5E0
    sll     a1, v0, 16
    sra     a1, a1, 16
    sw      v1, 0x004C($sp)
    jal     func_80072588
    sw      t0, 0x0048($sp)
    lw      v1, 0x004C($sp)
    bne     v0, $zero, lbl_808FF5E0
    lw      t0, 0x0048($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_808FF5B0:
    jal     func_808FF438
    lw      a1, 0x0054($sp)
    lui     a1, %hi(func_808FF438)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FF438) # a1 = 808FF438
    jal     func_808FF0C0
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    sb      $zero, 0x01B8(s0)          # 000001B8
    swc1    $f10, 0x01AC(s0)           # 000001AC
    b       lbl_808FFA10
    swc1    $f16, 0x019C(s0)           # 0000019C
lbl_808FF5E0:
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x01BA(s0)             # 000001BA
lbl_808FF5E8:
    lui     $at, %hi(var_80900524)     # $at = 80900000
    lwc1    $f18, %lo(var_80900524)($at)
    lwc1    $f0, 0x0848(v1)            # 00000848
    lui     $at, 0x4316                # $at = 43160000
    c.le.s  $f18, $f0
    nop
    bc1fl   lbl_808FF644
    lw      t6, 0x0670(v1)             # 00000670
    mtc1    $at, $f4                   # $f4 = 150.00
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    mul.s   $f6, $f0, $f4
    sw      v1, 0x004C($sp)
    sw      t0, 0x0048($sp)
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    andi    a1, a1, 0x00FF             # a1 = 00000000
    jal     func_800915CC
    andi    a3, a1, 0x00FF             # a3 = 00000000
    lw      v1, 0x004C($sp)
    lw      t0, 0x0048($sp)
    lw      t6, 0x0670(v1)             # 00000670
lbl_808FF644:
    lui     $at, %hi(var_80900528)     # $at = 80900000
    sll     t7, t6, 14
    bgezl   t7, lbl_808FF838
    lw      t3, 0x066C(v1)             # 0000066C
    beq     t0, $zero, lbl_808FF66C
    lui     a1, %hi(func_808FFAA0)     # a1 = 80900000
    lw      t8, 0x0130(t0)             # 00000130
    beq     t8, $zero, lbl_808FF66C
    nop
    sw      $zero, 0x0118(t0)          # 00000118
lbl_808FF66C:
    lwc1    $f12, %lo(var_80900528)($at)
    lwc1    $f0, 0x0848(v1)            # 00000848
    lui     $at, %hi(var_8090052C)     # $at = 80900000
    addiu   a1, a1, %lo(func_808FFAA0) # a1 = 808FFAA0
    c.le.s  $f0, $f12
    nop
    bc1fl   lbl_808FF714
    lw      t3, 0x0670(v1)             # 00000670
    lwc1    $f10, %lo(var_8090052C)($at)
    c.le.s  $f10, $f0
    nop
    bc1f    lbl_808FF700
    nop
    lb      t9, 0x0832(v1)             # 00000832
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    slti    $at, t9, 0x0018
    bne     $at, $zero, lbl_808FF700
    addiu   a0, $zero, 0x1823          # a0 = 00001823
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    sw      a1, 0x0044($sp)
    sw      t1, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    lw      a1, 0x0044($sp)
    sw      t2, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x1818          # a0 = 00001818
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_808FF700:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808FFA14
    lw      $ra, 0x003C($sp)
    lw      t3, 0x0670(v1)             # 00000670
lbl_808FF714:
    lui     $at, 0xFFFD                # $at = FFFD0000
    ori     $at, $at, 0xFFFF           # $at = FFFDFFFF
    and     t4, t3, $at
    sw      t4, 0x0670(v1)             # 00000670
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    andi    t6, t5, 0xFF00             # t6 = 00000000
    sra     t7, t6,  8
    beq     t7, $zero, lbl_808FF744
    nop
    sh      a0, -0x4640($at)           # 8011B9C0
lbl_808FF744:
    lui     $at, %hi(var_80900530)     # $at = 80900000
    lwc1    $f18, %lo(var_80900530)($at)
    lwc1    $f16, 0x0848(v1)           # 00000848
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    c.lt.s  $f16, $f18
    nop
    bc1fl   lbl_808FF7A4
    lbu     v0, 0x01B7(s0)             # 000001B7
    lbu     v0, 0x01B7(s0)             # 000001B7
    lui     t9, %hi(var_809004DC)      # t9 = 80900000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sll     t8, v0,  2
    addu    t9, t9, t8
    lw      t9, %lo(var_809004DC)(t9)
    sb      t1, 0x01B6(s0)             # 000001B6
    bne     a0, v0, lbl_808FF794
    sw      t9, 0x0154(s0)             # 00000154
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    b       lbl_808FF7D4
    sb      t2, 0x01B9(s0)             # 000001B9
lbl_808FF794:
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    b       lbl_808FF7D4
    sb      t3, 0x01B9(s0)             # 000001B9
    lbu     v0, 0x01B7(s0)             # 000001B7
lbl_808FF7A4:
    lui     t5, %hi(var_809004E8)      # t5 = 80900000
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sll     t4, v0,  2
    addu    t5, t5, t4
    lw      t5, %lo(var_809004E8)(t5)
    sb      $zero, 0x01B6(s0)          # 000001B6
    bne     a0, v0, lbl_808FF7D0
    sw      t5, 0x0154(s0)             # 00000154
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    b       lbl_808FF7D4
    sb      t6, 0x01B9(s0)             # 000001B9
lbl_808FF7D0:
    sb      t7, 0x01B9(s0)             # 000001B9
lbl_808FF7D4:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808FF0C0
    sw      v1, 0x004C($sp)
    lw      v1, 0x004C($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sh      t8, 0x01B4(s0)             # 000001B4
    lbu     t9, 0x01B6(s0)             # 000001B6
    lui     a0, %hi(var_809004F4)      # a0 = 80900000
    lui     t2, 0x8010                 # t2 = 80100000
    sll     t1, t9,  1
    addu    a0, a0, t1
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    sw      t2, 0x0014($sp)
    lhu     a0, %lo(var_809004F4)(a0)
    sw      a3, 0x0010($sp)
    addiu   a1, v1, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    b       lbl_808FFA10
    swc1    $f4, 0x019C(s0)            # 0000019C
    lw      t3, 0x066C(v1)             # 0000066C
lbl_808FF838:
    lui     $at, %hi(var_80900534)     # $at = 80900000
    andi    t4, t3, 0x1000             # t4 = 00000000
    bne     t4, $zero, lbl_808FF868
    nop
    lw      v0, 0x011C(s0)             # 0000011C
    beq     v0, $zero, lbl_808FF858
    nop
    sw      $zero, 0x0118(v0)          # 00000118
lbl_808FF858:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808FFA14
    lw      $ra, 0x003C($sp)
lbl_808FF868:
    lwc1    $f12, %lo(var_80900534)($at)
    lwc1    $f0, 0x0848(v1)            # 00000848
    lui     $at, %hi(var_8090053C)     # $at = 80900000
    c.lt.s  $f12, $f0
    nop
    bc1f    lbl_808FF924
    nop
    lw      t6, 0x011C(s0)             # 0000011C
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sb      t5, 0x01B8(s0)             # 000001B8
    bnel    t6, $zero, lbl_808FF8F4
    lwc1    $f16, 0x0848(v1)           # 00000848
    lwc1    $f6, 0x0024(s0)            # 00000024
    lw      a2, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   a3, $zero, 0x0101          # a3 = 00000101
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    swc1    $f8, 0x0014($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      $zero, 0x001C($sp)
    swc1    $f10, 0x0018($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0024($sp)
    sw      t8, 0x0020($sp)
    lbu     t9, 0x01B7(s0)             # 000001B7
    sw      v1, 0x004C($sp)
    addiu   t1, t9, 0x0002             # t1 = 00000002
    jal     func_800253F0
    sw      t1, 0x0028($sp)
    lui     $at, %hi(var_80900538)     # $at = 80900000
    lwc1    $f12, %lo(var_80900538)($at)
    lw      v1, 0x004C($sp)
    lwc1    $f16, 0x0848(v1)           # 00000848
lbl_808FF8F4:
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    sub.s   $f18, $f16, $f12
    lwc1    $f0, 0x01AC(s0)            # 000001AC
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    mul.s   $f6, $f18, $f4
    sub.s   $f8, $f6, $f0
    mul.s   $f16, $f8, $f10
    add.s   $f18, $f0, $f16
    b       lbl_808FF984
    swc1    $f18, 0x01AC(s0)           # 000001AC
lbl_808FF924:
    lwc1    $f2, %lo(var_8090053C)($at)
    lui     $at, 0x437F                # $at = 437F0000
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_808FF984
    sb      $zero, 0x01B8(s0)          # 000001B8
    sub.s   $f4, $f0, $f2
    mtc1    $at, $f6                   # $f6 = 255.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f8, $f4, $f6
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = 10.00
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sb      t3, 0x01B8(s0)             # 000001B8
    lwc1    $f4, 0x0848(v1)            # 00000848
    sub.s   $f6, $f4, $f2
    mul.s   $f10, $f6, $f8
    b       lbl_808FF984
    swc1    $f10, 0x019C(s0)           # 0000019C
    sb      $zero, 0x01B8(s0)          # 000001B8
lbl_808FF984:
    lui     $at, %hi(var_80900540)     # $at = 80900000
    lwc1    $f16, %lo(var_80900540)($at)
    lwc1    $f0, 0x0848(v1)            # 00000848
    addiu   a0, v1, 0x00E4             # a0 = 000000E4
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_808FF9B8
    c.lt.s  $f12, $f0
    jal     func_800C4F94
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    b       lbl_808FF9F8
    nop
    c.lt.s  $f12, $f0
lbl_808FF9B8:
    addiu   a0, v1, 0x00E4             # a0 = 000000E4
    lui     $at, %hi(var_80900544)     # $at = 80900000
    bc1f    lbl_808FF9D8
    nop
    jal     func_800C4F94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_808FF9F8
    nop
lbl_808FF9D8:
    lwc1    $f18, %lo(var_80900544)($at)
    addiu   a0, v1, 0x00E4             # a0 = 000000E4
    c.lt.s  $f18, $f0
    nop
    bc1f    lbl_808FF9F8
    nop
    jal     func_800C4F94
    or      a1, $zero, $zero           # a1 = 00000000
lbl_808FF9F8:
    jal     func_8009CB08
    lw      a0, 0x0054($sp)
    beql    v0, $zero, lbl_808FFA14
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808FFA10:
    lw      $ra, 0x003C($sp)
lbl_808FFA14:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_808FFA24:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x01B4(a0)             # 000001B4
    slti    $at, t6, 0x0002
    beql    $at, $zero, lbl_808FFA58
    lwc1    $f0, 0x01A0(a0)            # 000001A0
    lbu     v0, 0x01B8(a0)             # 000001B8
    slti    $at, v0, 0x0028
    beq     $at, $zero, lbl_808FFA50
    addiu   t7, v0, 0xFFD8             # t7 = FFFFFFD8
    b       lbl_808FFA54
    sb      $zero, 0x01B8(a0)          # 000001B8
lbl_808FFA50:
    sb      t7, 0x01B8(a0)             # 000001B8
lbl_808FFA54:
    lwc1    $f0, 0x01A0(a0)            # 000001A0
lbl_808FFA58:
    lwc1    $f2, 0x01AC(a0)            # 000001AC
    lwc1    $f12, 0x019C(a0)           # 0000019C
    add.s   $f6, $f0, $f0
    lwc1    $f4, 0x01A4(a0)            # 000001A4
    lui     $at, %hi(var_80900548)     # $at = 80900000
    c.lt.s  $f2, $f12
    add.s   $f8, $f4, $f6
    bc1f    lbl_808FFA94
    swc1    $f8, 0x01A4(a0)            # 000001A4
    sub.s   $f10, $f12, $f2
    lwc1    $f16, %lo(var_80900548)($at)
    mul.s   $f18, $f10, $f16
    add.s   $f4, $f2, $f18
    jr      $ra
    swc1    $f4, 0x01AC(a0)            # 000001AC
lbl_808FFA94:
    swc1    $f12, 0x01AC(a0)           # 000001AC
    jr      $ra
    nop


func_808FFAA0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   a0, s0, 0x019C             # a0 = 0000019C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    lui     a2, 0x3D80                 # a2 = 3D800000
    jal     func_8006385C
    sw      t7, 0x002C($sp)
    beql    v0, $zero, lbl_808FFAEC
    lbu     t8, 0x01B9(s0)             # 000001B9
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808FFB78
    lhu     v0, 0x01B4(s0)             # 000001B4
    lbu     t8, 0x01B9(s0)             # 000001B9
lbl_808FFAEC:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a2, 0x3F19                 # a2 = 3F190000
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    cvt.s.w $f4, $f4
    ori     a2, a2, 0x999A             # a2 = 3F19999A
    addiu   a0, s0, 0x0050             # a0 = 00000050
    swc1    $f6, 0x0010($sp)
    mfc1    a1, $f4
    jal     func_80064178
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0050(s0)             # 00000050
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lwc1    $f8, 0x0050(s0)            # 00000050
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    mul.s   $f16, $f8, $f10
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x017C(s0)             # 0000017C
    jal     func_80050B00
    sw      a2, 0x0028($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
    lhu     v0, 0x01B4(s0)             # 000001B4
lbl_808FFB78:
    lw      v1, 0x002C($sp)
    lui     $at, %hi(var_8090054C)     # $at = 80900000
    blez    v0, lbl_808FFBA0
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x08F8(v1)            # 000008F8
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0900(v1)            # 00000900
    sh      t1, 0x01B4(s0)             # 000001B4
    swc1    $f6, 0x002C(s0)            # 0000002C
lbl_808FFBA0:
    lwc1    $f0, 0x019C(s0)            # 0000019C
    lwc1    $f8, %lo(var_8090054C)($at)
    lui     $at, %hi(var_80900550)     # $at = 80900000
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_808FFBCC
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    b       lbl_808FFBD8
    swc1    $f10, 0x01A0(s0)           # 000001A0
lbl_808FFBCC:
    lwc1    $f16, %lo(var_80900550)($at)
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x01A0(s0)           # 000001A0
lbl_808FFBD8:
    jal     func_808FFA24
    lw      a1, 0x0034($sp)
    jal     func_8009CB08
    lw      a0, 0x0034($sp)
    beql    v0, $zero, lbl_808FFBFC
    lw      $ra, 0x0024($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_808FFBFC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808FFC0C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lw      t9, 0x01B0(s0)             # 000001B0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lw      a0, 0x0034($sp)
    jal     func_808FF3FC
    lw      a1, 0x01AC(s0)             # 000001AC
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x437F                # $at = 437F0000
    lwc1    $f0, 0x019C(s0)            # 0000019C
    trunc.w.s $f6, $f4
    mtc1    $at, $f4                   # $f4 = 255.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f16, 0x002C(s0)           # 0000002C
    mfc1    a1, $f6
    mul.s   $f6, $f0, $f4
    trunc.w.s $f10, $f8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a2, $f10
    trunc.w.s $f18, $f16
    lui     $at, 0x4F00                # $at = 4F000000
    sll     a2, a2, 16
    sra     a2, a2, 16
    cfc1    t0, $f31
    ctc1    v0, $f31
    mfc1    a3, $f18
    addiu   a0, s0, 0x018C             # a0 = 0000018C
    cvt.w.s $f8, $f6
    sll     a3, a3, 16
    sra     a3, a3, 16
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_808FFD00
    mfc1    v0, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    v0, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_808FFCF4
    nop
    mfc1    v0, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_808FFD0C
    or      v0, v0, $at                # v0 = 80000000
lbl_808FFCF4:
    b       lbl_808FFD0C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f8
lbl_808FFD00:
    nop
    bltz    v0, lbl_808FFCF4
    nop
lbl_808FFD0C:
    lui     $at, 0x42C8                # $at = 42C80000
    ctc1    t0, $f31
    mtc1    $at, $f10                  # $f10 = 100.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 000000FF
    mul.s   $f16, $f0, $f10
    sw      v0, 0x0010($sp)
    sw      v0, 0x0014($sp)
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_808FFD9C
    mfc1    t2, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_808FFD90
    nop
    mfc1    t2, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_808FFDA8
    or      t2, t2, $at                # t2 = 80000000
lbl_808FFD90:
    b       lbl_808FFDA8
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f18
lbl_808FFD9C:
    nop
    bltz    t2, lbl_808FFD90
    nop
lbl_808FFDA8:
    lui     $at, 0x4448                # $at = 44480000
    mtc1    $at, $f4                   # $f4 = 800.00
    ctc1    t1, $f31
    sw      t2, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    jal     func_80065BCC
    sw      t4, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808FFDE0:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      $ra, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sw      a0, 0x00A0($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x0094($sp)
    lw      a0, 0x0000(a1)             # 00000000
    sw      a1, 0x00A4($sp)
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lui     $at, %hi(var_80900554)     # $at = 80900000
    lwc1    $f12, %lo(var_80900554)($at)
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
    lw      t9, 0x00A4($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0080($sp)
    lw      a1, 0x0080($sp)
    lw      t1, 0x00A0($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lbu     v1, 0x01B6(t1)             # 000001B6
    beq     v1, $zero, lbl_808FFE64
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_808FFF14
lbl_808FFE64:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     $at, 0x41F0                # $at = 41F00000
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f0, 0x01A4(t1)            # 000001A4
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f6, $f0, $f4
    lw      t8, 0x00A4($sp)
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    mul.s   $f16, $f0, $f10
    lw      a0, 0x0000(t8)             # 00000000
    sw      t6, 0x0014($sp)
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0010($sp)
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    trunc.w.s $f8, $f6
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    trunc.w.s $f18, $f16
    mfc1    t7, $f8
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t6, $f18
    andi    t8, t7, 0x00FF             # t8 = 00000020
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    andi    t7, t6, 0x00FF             # t7 = 00000020
    subu    a2, v0, t8
    subu    t8, v0, t7
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0028($sp)
    sw      t8, 0x001C($sp)
    jal     func_8007EB84
    sw      v1, 0x007C($sp)
    lw      t0, 0x007C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      t1, 0x00A0($sp)
    lbu     v1, 0x01B6(t1)             # 000001B6
lbl_808FFF14:
    beq     v1, $zero, lbl_808FFF2C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80900030
    lui     t6, 0xFA00                 # t6 = FA000000
    b       lbl_80900130
    lw      a0, 0x0094($sp)
lbl_808FFF2C:
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x0080             # t9 = FA000080
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    lui     $at, 0x437F                # $at = 437F0000
    sw      t9, 0x0000(v0)             # 00000000
    lwc1    $f4, 0x01A0(t1)            # 000001A0
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f6
    lui     t8, 0xDE00                 # t8 = DE000000
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_808FFFCC
    mfc1    t7, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_808FFFC0
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_808FFFD8
    or      t7, t7, $at                # t7 = 80000000
lbl_808FFFC0:
    b       lbl_808FFFD8
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f10
lbl_808FFFCC:
    nop
    bltz    t7, lbl_808FFFC0
    nop
lbl_808FFFD8:
    ctc1    t6, $f31
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    or      t6, t9, $at                # t6 = FFFFAAFF
    sw      t6, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0401                 # t9 = 04010000
    addiu   t9, t9, 0x2F90             # t9 = 04012F90
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0401                 # t8 = 04010000
    addiu   t8, t8, 0x30B0             # t8 = 040130B0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    b       lbl_80900130
    lw      a0, 0x0094($sp)
lbl_80900030:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x0080             # t6 = 00000088
    lui     $at, 0x437F                # $at = 437F0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lwc1    $f16, 0x01A0(t1)           # 000001A0
    mtc1    $at, $f18                  # $f18 = 255.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f16, $f18
    lui     t9, 0xDE00                 # t9 = DE000000
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_809000CC
    mfc1    t8, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_809000C0
    nop
    mfc1    t8, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_809000D8
    or      t8, t8, $at                # t8 = 80000000
lbl_809000C0:
    b       lbl_809000D8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f6
lbl_809000CC:
    nop
    bltz    t8, lbl_809000C0
    nop
lbl_809000D8:
    lui     $at, 0xAAFF                # $at = AAFF0000
    ori     $at, $at, 0xFF00           # $at = AAFFFF00
    ctc1    t7, $f31
    andi    t6, t8, 0x00FF             # t6 = 000000FF
    or      t7, t6, $at                # t7 = AAFFFFFF
    sw      t7, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0401                 # t6 = 04010000
    addiu   t6, t6, 0x2A10             # t6 = 04012A10
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0x0401                 # t9 = 04010000
    addiu   t9, t9, 0x2B30             # t9 = 04012B30
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      a0, 0x0094($sp)
lbl_80900130:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800AA79C
    addiu   a0, a0, 0x09D0             # a0 = 000009D0
    lw      a1, 0x00A0($sp)
    lui     $at, 0x4396                # $at = 43960000
    lui     a2, 0xC2C8                 # a2 = C2C80000
    lbu     v1, 0x01B7(a1)             # 000001B7
    beql    v1, $zero, lbl_809001C4
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80900170
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v1, $at, lbl_80900208
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    b       lbl_80900254
    nop
lbl_80900170:
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f14                  # $f14 = 220.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80900558)     # $at = 80900000
    lwc1    $f12, %lo(var_80900558)($at)
    lui     $at, %hi(var_8090055C)     # $at = 80900000
    lui     a2, 0xBECC                 # a2 = BECC0000
    ori     a2, a2, 0xCCCD             # a2 = BECCCCCD
    lwc1    $f14, %lo(var_8090055C)($at)
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80900254
    lw      a1, 0x00A0($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_809001C4:
    mtc1    $at, $f14                  # $f14 = 0.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80900560)     # $at = 80900000
    lwc1    $f12, %lo(var_80900560)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f14                  # $f14 = -1.00
    lui     a2, 0xBF33                 # a2 = BF330000
    ori     a2, a2, 0x3333             # a2 = BF333333
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80900254
    lw      a1, 0x00A0($sp)
lbl_80900208:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f14                  # $f14 = 350.00
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_80900564)     # $at = 80900000
    lwc1    $f12, %lo(var_80900564)($at)
    lui     $at, %hi(var_80900568)     # $at = 80900000
    lui     a2, 0xBF33                 # a2 = BF330000
    ori     a2, a2, 0x3333             # a2 = BF333333
    lwc1    $f14, %lo(var_80900568)($at)
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f12                  # $f12 = 16384.00
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a1, 0x00A0($sp)
lbl_80900254:
    lui     $at, %hi(var_8090056C)     # $at = 80900000
    lwc1    $f10, %lo(var_8090056C)($at)
    lwc1    $f8, 0x01A8(a1)            # 000001A8
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t1, 0x00A4($sp)
    c.le.s  $f10, $f8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    bc1fl   lbl_80900308
    mtc1    $at, $f12                  # $f12 = 1.00
    lw      t1, 0x00A4($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    t1, t1, $at
    lw      t6, 0x1DE4(t1)             # 00001DE4
    lui     $at, %hi(var_809004FC)     # $at = 80900000
    andi    t7, t6, 0x0007             # t7 = 00000000
    sll     t8, t7,  2
    addu    $at, $at, t8
    lwc1    $f16, %lo(var_809004FC)($at)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    lui     t7, 0xFB00                 # t7 = FB000000
    mul.s   $f4, $f16, $f18
    add.s   $f14, $f4, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t8, 0x01B8(a1)             # 000001B8
    addiu   $at, $zero, 0xAA00         # $at = FFFFAA00
    or      t9, t8, $at                # t9 = FFFFAA00
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFF64                 # t8 = FF640000
    ori     t8, t8, 0x0080             # t8 = FF640080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    b       lbl_80900380
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    mtc1    $at, $f12                  # $f12 = NaN
lbl_80900308:
    lui     $at, 0x0001                # $at = 00010000
    addu    t1, t1, $at
    lw      t9, 0x1DE4(t1)             # 00001DE4
    lui     $at, %hi(var_809004FC)     # $at = 80900000
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    andi    t6, t9, 0x0007             # t6 = 00000000
    sll     t7, t6,  2
    addu    $at, $at, t7
    lwc1    $f0, %lo(var_809004FC)($at)
    lui     t6, 0xFB00                 # t6 = FB000000
    add.s   $f6, $f0, $f0
    add.s   $f14, $f6, $f12
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFA00                 # t9 = FA000000
    ori     t9, t9, 0x0080             # t9 = FA000080
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t7, 0x01B8(a1)             # 000001B8
    lui     $at, 0xAAFF                # $at = AAFF0000
    ori     $at, $at, 0xFF00           # $at = AAFFFF00
    or      t8, t7, $at                # t8 = FBFFFF00
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0064                 # t7 = 00640000
    ori     t7, t7, 0xFF80             # t7 = 0064FF80
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
lbl_80900380:
    mfc1    a2, $f14
    sw      t1, 0x0040($sp)
    jal     func_800AA8FC
    sw      t2, 0x008C($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x00A4($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      t3, 0x0050($sp)
    lw      t1, 0x0040($sp)
    lw      t2, 0x008C($sp)
    lw      t5, 0x00A4($sp)
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0024             # t8 = DB060024
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t0, 0x1DE4(t1)             # 00001DE4
    lw      a0, 0x0000(t5)             # 00000000
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    multu   t0, t2
    sll     t8, t0,  2
    addu    t8, t8, t0
    sll     t8, t8,  2
    sw      t9, 0x0010($sp)
    andi    t9, t8, 0x00FF             # t9 = 00000024
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0014($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    mflo    t6
    sw      t9, 0x001C($sp)
    sll     a2, t0,  2
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    andi    t7, t6, 0x00FF             # t7 = 00000020
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addu    a2, a2, t0
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t9, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x004C($sp)
    lw      t4, 0x004C($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0401                 # t8 = 04010000
    addiu   t8, t8, 0x3AB0             # t8 = 04013AB0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0
    jr      $ra
    nop

.section .data

var_80900490: .word 0x00570700, 0x00000000, 0x00010000, 0x000001BC
.word func_808FF0CC
.word func_808FF38C
.word func_808FFC0C
.word func_808FFDE0
var_809004B0: .word \
0x0A090000, 0x10010000, 0x02000000, 0x00000001, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x19010100, \
0x00C800C8, 0x00000000, 0x00000000
var_809004DC: .word 0x01000000, 0x00400000, 0x00800000
var_809004E8: .word 0x08000000, 0x02000000, 0x04000000
var_809004F4: .word 0x182F182E, 0x182F182E
var_809004FC: .word \
0x3DCCCCCD, 0x3E19999A, 0x3E4CCCCD, 0x3E800000, \
0x3E99999A, 0x3E800000, 0x3E4CCCCD, 0x3E19999A, \
0x00000000

.section .rodata

var_80900520: .word 0x3DCCCCCD
var_80900524: .word 0x3DCCCCCD
var_80900528: .word 0x3E19999A
var_8090052C: .word 0x3DCCCCCD
var_80900530: .word 0x3F59999A
var_80900534: .word 0x3E19999A
var_80900538: .word 0x3E19999A
var_8090053C: .word 0x3DCCCCCD
var_80900540: .word 0x3F59999A
var_80900544: .word 0x3DCCCCCD
var_80900548: .word 0x3DCCCCCD
var_8090054C: .word 0x3F19999A
var_80900550: .word 0x3FD55555
var_80900554: .word 0x3CA3D70A
var_80900558: .word 0xBF333333
var_8090055C: .word 0xBF19999A
var_80900560: .word 0xBF99999A
var_80900564: .word 0xBFE66666
var_80900568: .word 0xBFB33333
var_8090056C: .word 0x3F59999A

