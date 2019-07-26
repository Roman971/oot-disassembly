.section .text
func_80973800:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x024E(a2)             # 0000024E
    addiu   v1, a2, 0x024E             # v1 = 0000024E
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80973828
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    b       lbl_80973838
    addiu   v1, a2, 0x024E             # v1 = 0000024E
lbl_80973828:
    lh      t7, 0x0000(v1)             # 0000024E
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(v1)             # 0000024E
    lh      v0, 0x0000(v1)             # 0000024E
lbl_80973838:
    bne     v0, $zero, lbl_80973858
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sw      v1, 0x001C($sp)
    jal     func_80063BF0
    sw      a2, 0x0038($sp)
    lw      v1, 0x001C($sp)
    lw      a2, 0x0038($sp)
    sh      v0, 0x0000(v1)             # 00000000
lbl_80973858:
    lh      t9, 0x0000(v1)             # 00000000
    addiu   v0, a2, 0x024C             # v0 = 0000024C
    sh      t9, 0x0000(v0)             # 0000024C
    lh      t0, 0x0000(v0)             # 0000024C
    slti    $at, t0, 0x0003
    bnel    $at, $zero, lbl_8097387C
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x0000(v0)          # 0000024C
    lw      $ra, 0x0014($sp)
lbl_8097387C:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80973888:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0274             # a1 = 00000274
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_8097637C)      # a3 = 80970000
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_8097637C)  # a3 = 8097637C
    jal     func_8004AC84
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809738D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0274             # a1 = 00000274
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973900:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    addiu   a2, a0, 0x0274             # a2 = 00000274
    or      a1, a2, $zero              # a1 = 00000274
    jal     func_80050B00
    sw      a2, 0x0018($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0018($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80973944:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    lw      a0, 0x0038($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)
    addiu   a0, a0, 0x02CC             # a0 = 000002CC
    sw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      a0, 0x0024($sp)
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      a0, 0x0038($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    addiu   a0, a0, 0x02D2             # a0 = 000002D2
    sw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      a0, 0x0024($sp)
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809739E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    sw      $ra, 0x0014($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lw      t7, 0x0024(v0)             # 00000024
    lh      t1, 0x008A(a0)             # 0000008A
    lh      t2, 0x00B6(a0)             # 000000B6
    sw      t7, 0x02DC(a0)             # 000002DC
    lw      t6, 0x0028(v0)             # 00000028
    subu    v1, t1, t2
    sll     v1, v1, 16
    sw      t6, 0x02E0(a0)             # 000002E0
    lw      t7, 0x002C(v0)             # 0000002C
    sra     v1, v1, 16
    subu    v0, $zero, v1
    sw      t7, 0x02E4(a0)             # 000002E4
    lw      t8, 0x0000(t0)             # 8011BA00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t9, 0x1474(t8)             # 00001474
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    bltz    v1, lbl_80973A60
    swc1    $f10, 0x02D8(a0)           # 000002D8
    b       lbl_80973A60
    or      v0, v1, $zero              # v0 = 00000000
lbl_80973A60:
    slti    $at, v0, 0x18E3
    beq     $at, $zero, lbl_80973A74
    nop
    b       lbl_80973A74
    addiu   a3, $zero, 0x0002          # a3 = 00000002
lbl_80973A74:
    lw      t3, 0x0000(t0)             # 8011BA00
    addiu   a1, a0, 0x02C4             # a1 = 000002C4
    lh      a2, 0x1476(t3)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973AA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a1, a0, 0x02C4             # a1 = 000002C4
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x02DC(a0)             # 000002DC
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x02E0(a0)             # 000002E0
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x02E4(a0)             # 000002E4
    lw      t9, 0x0000(v1)             # 8011BA00
    lh      t0, 0x1474(t9)             # 00001474
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x02D8(a0)           # 000002D8
    lw      t1, 0x0000(v1)             # 8011BA00
    lh      a2, 0x1476(t1)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973B28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a1, a0, 0x02C4             # a1 = 000002C4
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      t8, 0x0024(v0)             # 00000024
    sw      t8, 0x02DC(a0)             # 000002DC
    lw      t7, 0x0028(v0)             # 00000028
    sw      t7, 0x02E0(a0)             # 000002E0
    lw      t8, 0x002C(v0)             # 0000002C
    sw      t8, 0x02E4(a0)             # 000002E4
    lw      t9, 0x0000(v1)             # 8011BA00
    lh      t0, 0x1474(t9)             # 00001474
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x02D8(a0)           # 000002D8
    lw      t1, 0x0000(v1)             # 8011BA00
    lh      a2, 0x1476(t1)             # 00001476
    addiu   a2, a2, 0x000C             # a2 = 0000000C
    sll     a2, a2, 16
    jal     func_80027854
    sra     a2, a2, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973BB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     $at, 0x41F0                # $at = 41F00000
    sw      a1, 0x0024($sp)
    mtc1    $at, $f0                   # $f0 = 30.00
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    lw      a0, 0x0024($sp)
    lui     a2, 0x4296                 # a2 = 42960000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80973BF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_8008C9C0
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973C1C:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80973C34
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80973C34:
    jr      $ra
    nop


func_80973C3C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80973C1C
    sw      $zero, 0x001C($sp)
    bne     v0, $zero, lbl_80973C74
    lw      v1, 0x001C($sp)
    lw      t7, 0x002C($sp)
    lw      t6, 0x0028($sp)
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v1, 0x1D8C(t9)             # 00001D8C
lbl_80973C74:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80973C88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_80973C3C
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80973CC8
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x0022($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    bnel    t6, t7, lbl_80973CCC
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80973CCC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80973CC8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80973CCC:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80973CD4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    jal     func_80973C3C
    or      a1, a3, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80973D14
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x0022($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    beql    t6, t7, lbl_80973D18
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80973D18
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80973D14:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80973D18:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80973D20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80973C3C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80973D90
    lw      a3, 0x0018($sp)
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
lbl_80973D90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973DA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a0, 0x001C($sp)
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80973C3C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80973E10
    lw      a3, 0x0018($sp)
    lw      t6, 0x000C(v0)             # 0000000C
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a3)            # 00000024
    lw      t7, 0x0010(v0)             # 00000010
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a3)           # 00000028
    lw      t8, 0x0014(v0)             # 00000014
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a3)           # 0000002C
    lh      v1, 0x0008(v0)             # 00000008
    sh      v1, 0x00B6(a3)             # 000000B6
    sh      v1, 0x0032(a3)             # 00000032
lbl_80973E10:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80973E20:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    jal     func_8008A194
    lw      a0, 0x002C($sp)
    lw      t6, 0x0038($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    bne     t6, $zero, lbl_80973E6C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    b       lbl_80973E80
    cvt.s.w $f2, $f4
lbl_80973E6C:
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    cvt.s.w $f0, $f6
lbl_80973E80:
    lbu     t7, 0x0033($sp)
    lwc1    $f8, 0x0034($sp)
    mfc1    a2, $f12
    mfc1    a3, $f0
    swc1    $f2, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80973EB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80973E20
    sw      $zero, 0x0010($sp)
    lui     $at, %hi(var_80977350)     # $at = 80970000
    lwc1    $f4, %lo(var_80977350)($at)
    lw      t6, 0x0020($sp)
    swc1    $f4, 0x00BC(t6)            # 000000BC
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80973EF8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f0, 0x0024(a1)            # 00000024
    lwc1    $f2, 0x0028(a1)            # 00000028
    lwc1    $f12, 0x002C(a1)           # 0000002C
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x005D          # a3 = 0000005D
    swc1    $f0, 0x0010($sp)
    swc1    $f2, 0x0014($sp)
    jal     func_800253F0
    swc1    $f12, 0x0018($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80973F54:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f4, 0x0028(v0)            # 00000028
    lwc1    $f0, 0x0024(v0)            # 00000024
    lwc1    $f12, 0x002C(v0)           # 0000002C
    add.s   $f2, $f4, $f6
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    sw      t6, 0x0028($sp)
    sw      a2, 0x003C($sp)
    swc1    $f2, 0x0014($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x008B          # a3 = 0000008B
    swc1    $f0, 0x0010($sp)
    jal     func_800253F0
    swc1    $f12, 0x0018($sp)
    lw      a0, 0x003C($sp)
    jal     func_8006FDCC
    addiu   a1, $zero, 0x006A          # a1 = 0000006A
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80973FD0:
    sw      a1, 0x0004($sp)
    lui     $at, %hi(var_80977354)     # $at = 80970000
    lwc1    $f6, %lo(var_80977354)($at)
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x00BC(a0)            # 000000BC
    jr      $ra
    nop


func_80973FF0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x1415(v0)             # 8011B9E5
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    t6, $at, lbl_80974080
    lw      $ra, 0x0014($sp)
    lw      t7, 0x1360(v0)             # 8011B930
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lw      t9, 0x0028($sp)
    slti    $at, t7, 0x0004
    beq     $at, $zero, lbl_8097407C
    lui     t0, %hi(var_809763A8)      # t0 = 80970000
    lw      v1, 0x1C44(a2)             # 00001C44
    sw      t8, 0x0250(t9)             # 00000250
    addiu   t0, t0, %lo(var_809763A8)  # t0 = 809763A8
    sw      t0, 0x1D68(a2)             # 00001D68
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x1414(v0)             # 8011B9E4
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x006A          # a1 = 0000006A
    jal     func_8006FDCC
    sw      v1, 0x001C($sp)
    lw      t2, 0x0028($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      v1, 0x001C($sp)
    lh      v0, 0x0032(t2)             # 00000032
    addu    v0, v0, $at
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x00B6(v1)             # 000000B6
    sh      v0, 0x0032(v1)             # 00000032
lbl_8097407C:
    lw      $ra, 0x0014($sp)
lbl_80974080:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097408C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80974120
    lw      $ra, 0x0024($sp)
    lw      v0, 0x1DA0(a1)             # 00001DA0
    beql    v0, $zero, lbl_80974120
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a0, 0x0600                 # a0 = 06000000
    bne     t7, $at, lbl_8097411C
    addiu   a0, a0, 0x1868             # a0 = 06001868
    jal     func_8008A194
    sw      a1, 0x002C($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      a0, 0x0028($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t8, 0x0250(a0)             # 00000250
    sw      t9, 0x0254(a0)             # 00000254
    jal     func_80973EF8
    lw      a1, 0x002C($sp)
lbl_8097411C:
    lw      $ra, 0x0024($sp)
lbl_80974120:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097412C:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lwc1    $f4, 0x00BC(a0)            # 000000BC
    c.le.s  $f0, $f4
    nop
    bc1f    lbl_80974150
    nop
    sw      t6, 0x0250(a0)             # 00000250
    swc1    $f0, 0x00BC(a0)            # 000000BC
lbl_80974150:
    jr      $ra
    nop


func_80974158:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_809741E4
    lw      $ra, 0x0024($sp)
    lw      v0, 0x1DA0(a1)             # 00001DA0
    beql    v0, $zero, lbl_809741E4
    lw      $ra, 0x0024($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a0, 0x0600                 # a0 = 06000000
    bnel    t7, $at, lbl_809741E4
    lw      $ra, 0x0024($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x0710             # a0 = 06000710
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0x0710             # a1 = 06000710
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t0, 0x0028($sp)
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sw      t9, 0x0250(t0)             # 00000250
    lw      $ra, 0x0024($sp)
lbl_809741E4:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809741F0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_8097424C
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0AFC             # a0 = 06000AFC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x0AFC             # a1 = 06000AFC
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      t7, 0x0028($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0250(t7)             # 00000250
lbl_8097424C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097425C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_8097429C
    lw      $ra, 0x0014($sp)
    lw      v0, 0x1DA4(a1)             # 00001DA4
    beql    v0, $zero, lbl_8097429C
    lw      $ra, 0x0014($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    bnel    t7, $at, lbl_8097429C
    lw      $ra, 0x0014($sp)
    jal     func_80973F54
    sw      t8, 0x0250(a0)             # 00000250
    lw      $ra, 0x0014($sp)
lbl_8097429C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809742A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80973FF0
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809742C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8097408C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809742E8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80973FD0
    lw      a0, 0x0018($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    jal     func_8097412C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974324:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80974158
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097436C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80973BB0
    lw      a0, 0x0020($sp)
    jal     func_80973BF8
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_80973800
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_809741F0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809743B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8097425C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809743F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a0, 0x0018($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097442C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80973E20
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    sw      t6, 0x0250(a0)             # 00000250
    sb      $zero, 0x00C8(a0)          # 000000C8
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80974470:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x4834          # a0 = 00004834
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974490:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    or      a2, a1, $zero              # a2 = 00000000
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lwc1    $f4, 0x0024(a1)            # 00000024
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x41C0                # $at = 41C00000
    lh      t7, 0x1476(t6)             # 80121476
    mtc1    $at, $f10                  # $f10 = 24.00
    lwc1    $f18, 0x0028(a1)           # 00000028
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    cvt.s.w $f8, $f6
    addiu   a3, $zero, 0x00F5          # a3 = 000000F5
    add.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(a1)            # 0000002C
    sw      t8, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f6, 0x0018($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80974510:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80973C88
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    beq     v0, $zero, lbl_80974598
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x1C08             # a0 = 06011C08
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x1C08             # a1 = 06011C08
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    sw      $zero, 0x025C(s0)          # 0000025C
    sb      $zero, 0x00C8(s0)          # 000000C8
    jal     func_80974470
    swc1    $f8, 0x0258(s0)            # 00000258
lbl_80974598:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809745AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80973C88
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_8097465C
    lw      a0, 0x0018($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   v0, a0, 0x0258             # v0 = 00000258
    lwc1    $f4, 0x0000(v0)            # 00000258
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    add.s   $f8, $f4, $f6
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    swc1    $f8, 0x0000(v0)            # 00000258
    lw      t6, 0x0000(a1)             # 8011BA00
    lwc1    $f0, 0x0000(v0)            # 00000258
    lh      t7, 0x145E(t6)             # 0000145E
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    add.s   $f18, $f16, $f2
    c.le.s  $f18, $f0
    nop
    bc1f    lbl_809746A4
    nop
    sw      t8, 0x0250(a0)             # 00000250
    sw      t9, 0x0254(a0)             # 00000254
    lw      t0, 0x0000(a1)             # 8011BA00
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lh      t1, 0x145E(t0)             # 0000145E
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f2
    swc1    $f8, 0x0000(v0)            # 00000258
    sw      v1, 0x025C(a0)             # 0000025C
    b       lbl_809746F0
    sb      v1, 0x00C8(a0)             # 000000C8
lbl_8097465C:
    addiu   v0, a0, 0x0258             # v0 = 00000258
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lwc1    $f10, 0x0000(v0)           # 00000258
    mtc1    $zero, $f2                 # $f2 = 0.00
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0000(v0)           # 00000258
    lwc1    $f0, 0x0000(v0)            # 00000258
    c.le.s  $f0, $f2
    nop
    bc1f    lbl_809746A4
    addiu   t2, $zero, 0x0007          # t2 = 00000007
    sw      t2, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    swc1    $f2, 0x0000(v0)            # 00000258
    sw      $zero, 0x025C(a0)          # 0000025C
    b       lbl_809746F0
    sb      $zero, 0x00C8(a0)          # 000000C8
lbl_809746A4:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    lw      t3, 0x0000(a1)             # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f2                   # $f2 = 10.00
    lh      t4, 0x145E(t3)             # 0000145E
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f2
    div.s   $f10, $f0, $f8
    mul.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    sw      v0, 0x025C(a0)             # 0000025C
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_809746F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974700:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_80973CD4
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    beq     v0, $zero, lbl_809747D0
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x2218             # a0 = 06012218
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x2218             # a1 = 06012218
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t7, 0x0250(s0)             # 00000250
    sw      t8, 0x0254(s0)             # 00000254
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lh      t0, 0x145E(t9)             # 8012145E
    lw      t2, 0x0260(s0)             # 00000260
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    mtc1    t0, $f10                   # $f10 = 0.00
    sw      t1, 0x025C(s0)             # 0000025C
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f16, $f10
    add.s   $f4, $f16, $f18
    bne     t2, $zero, lbl_809747C8
    swc1    $f4, 0x0258(s0)            # 00000258
    jal     func_80974490
    lw      a1, 0x0034($sp)
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0260(s0)             # 00000260
lbl_809747C8:
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sb      t4, 0x00C8(s0)             # 000000C8
lbl_809747D0:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809747E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80974510
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974804:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_809745AC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097484C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80974700
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974894:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lui     t1, %hi(var_80976370)      # t1 = 80970000
    lw      t8, 0x0044($sp)
    lh      v0, 0x024C(t6)             # 0000024C
    sll     t7, v0,  2
    addu    t1, t1, t7
    lw      t1, %lo(var_80976370)(t1)
    lw      a0, 0x0000(t8)             # 00000000
    sw      t1, 0x0030($sp)
    jal     func_8007E2C0
    sw      a0, 0x0028($sp)
    lw      v1, 0x0028($sp)
    lw      t1, 0x0030($sp)
    lui     t2, 0x8000                 # t2 = 80000000
    lw      t3, 0x0040($sp)
    lw      v0, 0x02D0(v1)             # 000002D0
    sll     t5, t1,  4
    srl     t6, t5, 28
    lui     t4, 0xDB06                 # t4 = DB060000
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    addiu   t8, t8, 0x0C38             # t8 = 80120C38
    ori     t4, t4, 0x0020             # t4 = DB060020
    sll     t7, t6,  2
    addu    a1, t7, t8
    sw      t4, 0x0000(v0)             # 00000000
    lw      t9, 0x0000(a1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a2, t1, $at
    addu    t4, t9, a2
    addu    t5, t4, t2
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(v1)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x0000(a1)             # 00000000
    addiu   t0, t3, 0x013C             # t0 = 0000013C
    addu    t9, t8, a2
    addu    t4, t9, t2
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     t4, 0xDB06                 # t4 = DB060000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(v1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x025C(t3)             # 0000025C
    ori     t4, t4, 0x0030             # t4 = DB060030
    andi    t8, t7, 0x00FF             # t8 = 00000024
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(v1)             # 000002D0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x8510             # t5 = 800E8510
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(v1)             # 000002D0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t6, 0x02D0(v1)             # 000002D0
    sw      v1, 0x0028($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008A88C
    sw      t6, 0x001C($sp)
    lw      v1, 0x0028($sp)
    sw      v0, 0x02D0(v1)             # 000002D0
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809749DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80973E20
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0250(a0)             # 00000250
    sw      t7, 0x0270(a0)             # 00000270
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80974A28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     v0, 0x1D74(a1)             # 00001D74
    slti    $at, v0, 0x0050
    bne     $at, $zero, lbl_80974A58
    slti    $at, v0, 0x00F3
    beq     $at, $zero, lbl_80974A58
    nop
    jal     func_80973AA0
    nop
    b       lbl_80974A64
    lw      $ra, 0x0014($sp)
lbl_80974A58:
    jal     func_80973944
    nop
    lw      $ra, 0x0014($sp)
lbl_80974A64:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974A70:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x182C             # a0 = 0601182C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    sub.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_8008D6A8
    nop
    bnel    v0, $zero, lbl_80974AC4
    lw      $ra, 0x0014($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80974AC4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974AD0:
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    jr      $ra
    nop


func_80974AE4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1868             # a0 = 06001868
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_80973D20
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      v0, 0x0028($sp)
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0250(v0)             # 00000250
    sw      t7, 0x0254(v0)             # 00000254
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974B68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_80974BBC
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x182C             # a0 = 0601182C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x182C             # a1 = 0601182C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
lbl_80974BBC:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974BCC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0EE0             # a0 = 06010EE0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    lw      v1, 0x0028($sp)
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = -8.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0EE0             # a1 = 06010EE0
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      v1, 0x0028($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    sw      t7, 0x0250(v1)             # 00000250
    sw      v0, 0x0254(v1)             # 00000254
    sw      v0, 0x02C0(v1)             # 000002C0
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974C48:
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0250(a0)             # 00000250
    sw      t7, 0x0254(a0)             # 00000254
    jr      $ra
    nop


func_80974C60:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    beq     a1, $zero, lbl_80974CBC
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1868             # a0 = 06001868
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t6, 0x0028($sp)
    sw      $zero, 0x02C0(t6)          # 000002C0
lbl_80974CBC:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974CCC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0601                 # a0 = 06010000
    jal     func_8008A194
    addiu   a0, a0, 0x0EE0             # a0 = 06010EE0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f4, $f4
    lw      a0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    mfc1    a3, $f4
    addiu   a1, a1, 0x0EE0             # a1 = 06010EE0
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f8, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    lw      v0, 0x0028($sp)
    addiu   t7, $zero, 0x000E          # t7 = 0000000E
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t7, 0x0250(v0)             # 00000250
    sw      t8, 0x0254(v0)             # 00000254
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974D48:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80973C3C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beql    v0, $zero, lbl_80974DFC
    lw      $ra, 0x002C($sp)
    lhu     t0, 0x0000(v0)             # 00000000
    lw      v1, 0x0264(s0)             # 00000264
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    t0, v1, lbl_80974DFC
    lw      $ra, 0x002C($sp)
    beq     t0, $at, lbl_80974DA8
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     t0, $at, lbl_80974DF4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974CCC
    sw      t0, 0x0030($sp)
    b       lbl_80974DF4
    lw      t0, 0x0030($sp)
lbl_80974DA8:
    addiu   a0, a0, 0x182C             # a0 = 0000182C
    jal     func_8008A194
    sw      t0, 0x0030($sp)
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x182C             # a1 = 0601182C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      t0, 0x0030($sp)
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    sw      t6, 0x0250(s0)             # 00000250
lbl_80974DF4:
    sw      t0, 0x0264(s0)             # 00000264
    lw      $ra, 0x002C($sp)
lbl_80974DFC:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80974E0C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_80973C1C
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80974E40
    lw      a2, 0x0018($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    sw      t6, 0x0250(a2)             # 00000250
    sw      v0, 0x0254(a2)             # 00000254
    sw      v0, 0x0270(a2)             # 00000270
lbl_80974E40:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974E50:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_80973C3C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beql    v0, $zero, lbl_80974F08
    lw      $ra, 0x001C($sp)
    lhu     t6, 0x0000(v0)             # 00000000
    sw      t6, 0x0020($sp)
    lw      v1, 0x0264(s0)             # 00000264
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0009
    beql    t6, v1, lbl_80974F08
    lw      $ra, 0x001C($sp)
    beq     $at, $zero, lbl_80974EFC
    sll     t8, t8,  2
    lui     $at, %hi(var_80977358)     # $at = 80970000
    addu    $at, $at, t8
    lw      t8, %lo(var_80977358)($at)
    jr      t8
    nop
var_80974EB0:
    jal     func_80974AD0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80974F00
    lw      t9, 0x0020($sp)
var_80974EC0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974AE4
    lw      a1, 0x002C($sp)
    b       lbl_80974F00
    lw      t9, 0x0020($sp)
var_80974ED4:
    jal     func_80974BCC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80974F00
    lw      t9, 0x0020($sp)
var_80974EE4:
    jal     func_80974C48
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80974F00
    lw      t9, 0x0020($sp)
var_80974EF4:
    jal     func_80974CCC
    or      a0, s0, $zero              # a0 = 00000000
lbl_80974EFC:
    lw      t9, 0x0020($sp)
lbl_80974F00:
    sw      t9, 0x0264(s0)             # 00000264
    lw      $ra, 0x001C($sp)
lbl_80974F08:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80974F18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80974E50
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80974F38:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974A28
    lw      a1, 0x0024($sp)
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974E50
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80974F94:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x002C($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974A28
    lw      a1, 0x002C($sp)
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974B68
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974E50
    lw      a1, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80975000:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80974A70
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80974D48
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975048:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x002C($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974C60
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80974E0C
    lw      a1, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809750A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lw      a0, 0x0020($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80973E20
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x0250(t7)             # 00000250
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809750EC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D6A8
    lui     a1, 0x40E0                 # a1 = 40E00000
    beql    v0, $zero, lbl_80975164
    lw      $ra, 0x0024($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x002C($sp)
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80975160
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(s0)             # 0000007D
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   v1, v0, 0x0800             # v1 = 00000800
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)
    andi    a0, v1, 0xFFFF             # a0 = 00000800
    sw      a3, 0x0010($sp)
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80975160:
    lw      $ra, 0x0024($sp)
lbl_80975164:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80975174:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0064($sp)
    beql    a2, $zero, lbl_80975274
    lw      $ra, 0x0034($sp)
    lwc1    $f4, 0x0268(s0)            # 00000268
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   v0, s0, 0x0268             # v0 = 00000268
    lui     $at, 0x3F80                # $at = 3F800000
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80975260
    lwc1    $f18, 0x0000(v0)           # 00000268
    lw      t6, 0x026C(s0)             # 0000026C
    bnel    t6, $zero, lbl_80975274
    lw      $ra, 0x0034($sp)
    lh      a0, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    sh      a0, 0x004E($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    addiu   v0, s0, 0x0024             # v0 = 00000024
    lwc1    $f16, 0x0000(v0)           # 00000024
    mul.s   $f10, $f0, $f8
    lh      a0, 0x004E($sp)
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0048($sp)
    lwc1    $f4, 0x0004(v0)            # 00000028
    sw      v0, 0x003C($sp)
    jal     func_80063684              # coss?
    swc1    $f4, 0x0044($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lw      v0, 0x003C($sp)
    lwc1    $f16, 0x0044($sp)
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x0008(v0)           # 00000008
    addiu   t7, $zero, 0x0FA0          # t7 = 00000FA0
    sw      t7, 0x0018($sp)
    swc1    $f16, 0x0010($sp)
    lw      a1, 0x0064($sp)
    addiu   t9, $zero, 0xFFF6          # t9 = FFFFFFF6
    add.s   $f2, $f8, $f10
    addiu   a2, $zero, 0x0016          # a2 = 00000016
    lw      a3, 0x0048($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f2, 0x0014($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      t9, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x001C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x026C(s0)             # 0000026C
    b       lbl_80975274
    lw      $ra, 0x0034($sp)
    lwc1    $f18, 0x0000(v0)           # 00000000
lbl_80975260:
    mtc1    $at, $f4                   # $f4 = 0.00
    nop
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0000(v0)            # 00000000
    lw      $ra, 0x0034($sp)
lbl_80975274:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80975284:
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    jr      $ra
    nop


func_80975298:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1868             # a0 = 06001868
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x1868             # a1 = 06001868
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      a0, 0x0028($sp)
    lw      a1, 0x002C($sp)
    jal     func_80973D20
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      v0, 0x0028($sp)
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0250(v0)             # 00000250
    sw      t7, 0x0254(v0)             # 00000254
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097531C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x14E4             # a0 = 060014E4
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC100                # $at = C1000000
    mtc1    $at, $f8                   # $f8 = -8.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x14E4             # a1 = 060014E4
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    addiu   t7, $zero, 0x0011          # t7 = 00000011
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t7, 0x0250(v0)             # 00000250
    sw      t8, 0x0254(v0)             # 00000254
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80975394:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_80973C3C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beql    v0, $zero, lbl_8097544C
    lw      $ra, 0x001C($sp)
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x0264(s0)             # 00000264
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a2, v1, lbl_8097544C
    lw      $ra, 0x001C($sp)
    beq     a2, $at, lbl_80975404
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a2, $at, lbl_80975414
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     a2, $at, lbl_80975428
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a2, $at, lbl_80975438
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80975448
    sw      a2, 0x0264(s0)             # 00000264
lbl_80975404:
    jal     func_80975284
    sw      a2, 0x0020($sp)
    b       lbl_80975444
    lw      a2, 0x0020($sp)
lbl_80975414:
    lw      a1, 0x002C($sp)
    jal     func_80975298
    sw      a2, 0x0020($sp)
    b       lbl_80975444
    lw      a2, 0x0020($sp)
lbl_80975428:
    jal     func_8097531C
    sw      a2, 0x0020($sp)
    b       lbl_80975444
    lw      a2, 0x0020($sp)
lbl_80975438:
    jal     func_80020EB4
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
lbl_80975444:
    sw      a2, 0x0264(s0)             # 00000264
lbl_80975448:
    lw      $ra, 0x001C($sp)
lbl_8097544C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097545C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80975394
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097547C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80975394
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809754C4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x002C($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809750EC
    lw      a1, 0x002C($sp)
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80975174
    lw      a2, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975394
    lw      a1, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80975534:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80973E20
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    sw      t6, 0x0250(a0)             # 00000250
    sb      $zero, 0x00C8(a0)          # 000000C8
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80975578:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lh      t7, 0x1474(t6)             # 80121474
    lwc1    $f2, 0x0024(a0)            # 00000024
    lw      v0, 0x1C44(a1)             # 00001C44
    mtc1    t7, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0024(v0)            # 00000024
    cvt.s.w $f6, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    add.s   $f10, $f6, $f8
    sub.s   $f16, $f2, $f10
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_809755D4
    nop
    lw      t8, 0x0004(a0)             # 00000004
    andi    t9, t8, 0x0040             # t9 = 00000000
    bne     t9, $zero, lbl_809755D4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_809755D4:
    jr      $ra
    nop


func_809755DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x4302                # $at = 43020000
    mtc1    $at, $f8                   # $f8 = 130.00
    lh      t7, 0x1476(t6)             # 80121476
    lwc1    $f2, 0x0024(a0)            # 00000024
    lw      v0, 0x1C44(a1)             # 00001C44
    mtc1    t7, $f4                    # $f4 = 0.00
    lwc1    $f0, 0x0024(v0)            # 00000024
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    sub.s   $f16, $f2, $f10
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80975640
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_8009CB08
    or      a0, a1, $zero              # a0 = 00000000
    bnel    v0, $zero, lbl_80975640
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80975640
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80975640:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975650:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0004(a0)             # 00000004
    ori     t7, t6, 0x0009             # t7 = 00000009
    sw      t7, 0x0004(a0)             # 00000004
    sw      a0, 0x0018($sp)
    jal     func_80022930
    lw      a1, 0x001C($sp)
    bne     v0, $zero, lbl_80975694
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x708E          # t8 = 0000708E
    sh      t8, 0x010E(a0)             # 0000010E
    jal     func_80022A90
    lw      a1, 0x001C($sp)
    b       lbl_8097569C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80975694:
    b       lbl_8097569C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8097569C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809756AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a3, 0x0018($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80975710
    lw      a3, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      a1, 0x1C44(a3)             # 00001C44
    addu    $at, $at, a3
    addiu   t6, $zero, 0x00CD          # t6 = 000000CD
    sh      t6, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    addiu   t7, $zero, 0x0026          # t7 = 00000026
    sb      t7, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
lbl_80975710:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975720:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80975578
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80975754
    lw      a0, 0x0018($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sw      t6, 0x0250(a0)             # 00000250
    sw      v0, 0x0254(a0)             # 00000254
    sw      v0, 0x0270(a0)             # 00000270
    sb      t7, 0x00C8(a0)             # 000000C8
lbl_80975754:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975764:
    beq     a1, $zero, lbl_80975770
    addiu   t6, $zero, 0x0016          # t6 = 00000016
    sw      t6, 0x0250(a0)             # 00000250
lbl_80975770:
    jr      $ra
    nop


func_80975778:
    sw      a1, 0x0004($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B54(t6)            # 8011B4AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809757A8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t8, 0x0250(a0)             # 00000250
    sw      v0, 0x0254(a0)             # 00000254
    sw      v0, 0x0270(a0)             # 00000270
    sb      t9, 0x00C8(a0)             # 000000C8
lbl_809757A8:
    jr      $ra
    nop


func_809757B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      a0, 0x0018($sp)
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_809755DC
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80975844
    lw      a2, 0x001C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v0, 0x0200                 # v0 = 02000000
    addiu   v0, v0, 0x2524             # v0 = 02002524
    sll     t6, v0,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t9, t0
    addu    t2, t1, $at
    sw      t2, 0x1D68(a2)             # 00001D68
    lhu     t4, 0x0EDE(v1)             # 8011B4AE
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x1414(v1)             # 8011B9E4
    ori     t5, t4, 0x0200             # t5 = 00000200
    sh      t5, 0x0EDE(v1)             # 8011B4AE
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8006FDCC
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    jal     func_80974AD0
    lw      a0, 0x0018($sp)
lbl_80975844:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975854:
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B54(t6)            # 8011B4AC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t8, $zero, 0x001A          # t8 = 0000001A
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80975880
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t8, 0x0250(a0)             # 00000250
    sw      v0, 0x0254(a0)             # 00000254
    sw      v0, 0x0270(a0)             # 00000270
    sb      t9, 0x00C8(a0)             # 000000C8
lbl_80975880:
    jr      $ra
    nop


func_80975888:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_809755DC
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_809758C0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EDC(v0)             # 8011B4AC
    lw      t9, 0x0018($sp)
    addiu   t8, $zero, 0x0013          # t8 = 00000013
    ori     t7, t6, 0x1000             # t7 = 00001000
    sh      t7, 0x0EDC(v0)             # 8011B4AC
    sw      t8, 0x0250(t9)             # 00000250
lbl_809758C0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809758D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x0EE4(v0)             # 8011B4B4
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80975908
    lhu     t8, 0x0EDE(v0)             # 8011B4AE
    jal     func_80020EB4
    nop
    b       lbl_8097592C
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x0EDE(v0)             # 00000EDE
lbl_80975908:
    addiu   t0, $zero, 0x0017          # t0 = 00000017
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    andi    t9, t8, 0x0200             # t9 = 00000000
    bnel    t9, $zero, lbl_80975928
    sw      t1, 0x0250(a0)             # 00000250
    b       lbl_80975928
    sw      t0, 0x0250(a0)             # 00000250
    sw      t1, 0x0250(a0)             # 00000250
lbl_80975928:
    lw      $ra, 0x0014($sp)
lbl_8097592C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975938:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809739E8
    lw      a1, 0x0024($sp)
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80975994:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80975720
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809759B4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809739E8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973900
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975650
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975764
    or      a1, v0, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975A28:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973B28
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973900
    lw      a1, 0x0024($sp)
    jal     func_809756AC
    lw      a0, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975A8C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80975778
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975AAC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809739E8
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973900
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809757B0
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975B14:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80975854
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975B38:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BB0
    lw      a1, 0x0024($sp)
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809739E8
    lw      a1, 0x0024($sp)
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80973900
    lw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975888
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975BB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1868             # a1 = 06001868
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_80973E20
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x001B          # t6 = 0000001B
    sw      t6, 0x0250(a0)             # 00000250
    sw      $zero, 0x0254(a0)          # 00000254
    sb      $zero, 0x00C8(a0)          # 000000C8
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80975BF8:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lui     t6, 0x8012                 # t6 = 80120000
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f8, $f4, $f6
    mtc1    $at, $f18                  # $f18 = 10.00
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    swc1    $f8, 0x0258(a0)            # 00000258
    lw      t6, -0x4600(t6)            # 8011BA00
    lwc1    $f4, 0x0258(a0)            # 00000258
    lh      t7, 0x1476(t6)             # 80121476
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    add.s   $f0, $f16, $f18
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_80975C58
    lwc1    $f6, 0x0258(a0)            # 00000258
    sw      v0, 0x025C(a0)             # 0000025C
    jr      $ra
    sb      v0, 0x00C8(a0)             # 000000C8
lbl_80975C54:
    lwc1    $f6, 0x0258(a0)            # 00000258
lbl_80975C58:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    div.s   $f8, $f6, $f0
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sw      v0, 0x025C(a0)             # 0000025C
    sb      v0, 0x00C8(a0)             # 000000C8
    jr      $ra
    nop


func_80975C84:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80973DA0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0250(a0)             # 00000250
    sw      t7, 0x0254(a0)             # 00000254
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975CBC:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lh      t7, 0x1476(t6)             # 80121476
    lwc1    $f4, 0x0258(a0)            # 00000258
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    mtc1    t7, $f6                    # $f6 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    cvt.s.w $f8, $f6
    add.s   $f16, $f8, $f10
    c.le.s  $f16, $f4
    nop
    bc1f    lbl_80975D00
    nop
    sw      t8, 0x0250(a0)             # 00000250
    sw      t9, 0x0254(a0)             # 00000254
lbl_80975D00:
    jr      $ra
    nop


func_80975D08:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x01C8             # a1 = 060101C8
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a3, 0xC100                 # a3 = C1000000
    jal     func_80973E20
    sw      $zero, 0x0010($sp)
    lw      t7, 0x0020($sp)
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sw      t6, 0x0250(t7)             # 00000250
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80975D48:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    beq     a1, $zero, lbl_80975D6C
    or      a2, $zero, $zero           # a2 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0xFB10             # a1 = 0600FB10
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_80973E20
    sw      $zero, 0x0010($sp)
lbl_80975D6C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975D7C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_80973C3C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_80975DF8
    lw      a0, 0x0020($sp)
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x0264(a0)             # 00000264
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beql    a2, v1, lbl_80975DFC
    lw      $ra, 0x0014($sp)
    beq     a2, $at, lbl_80975DD0
    lw      a1, 0x0024($sp)
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a2, $at, lbl_80975DE4
    nop
    b       lbl_80975DF8
    sw      a2, 0x0264(a0)             # 00000264
lbl_80975DD0:
    jal     func_80975C84
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    b       lbl_80975DF4
    lw      a0, 0x0020($sp)
lbl_80975DE4:
    jal     func_80975D08
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      a0, 0x0020($sp)
lbl_80975DF4:
    sw      a2, 0x0264(a0)             # 00000264
lbl_80975DF8:
    lw      $ra, 0x0014($sp)
lbl_80975DFC:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975E08:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80975D7C
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975E28:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80973BB0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973800
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975BF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975CBC
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975E74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80973BB0
    lw      a1, 0x001C($sp)
    jal     func_80973BF8
    lw      a0, 0x0018($sp)
    jal     func_80973800
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80975D7C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975EBC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    jal     func_80973BB0
    lw      a0, 0x0020($sp)
    jal     func_80973BF8
    lw      a0, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_80973800
    lw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_80975D48
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80975F00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0250(a0)             # 00000250
    bltz    v0, lbl_80975F38
    slti    $at, v0, 0x001F
    beq     $at, $zero, lbl_80975F38
    sll     t6, v0,  2
    lui     v1, %hi(var_80977298)      # v1 = 80970000
    addu    v1, v1, t6
    lw      v1, %lo(var_80977298)(v1)
    beql    v1, $zero, lbl_80975F3C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80975F38:
    lw      $ra, 0x0014($sp)
lbl_80975F3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80975F48:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41F0                 # a3 = 41F00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973888
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E6             # t7 = 000001E6
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0xF788             # a2 = 0600F788
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t0, t9, $at
    addiu   t2, t1, 0xFFFE             # t2 = FFFFFFFE
    sltiu   $at, t2, 0x0005
    beq     $at, $zero, lbl_80976050
    sw      t0, 0x0004(s0)             # 00000004
    sll     t2, t2,  2
    lui     $at, %hi(var_8097737C)     # $at = 80970000
    addu    $at, $at, t2
    lw      t2, %lo(var_8097737C)($at)
    jr      t2
    nop
var_80975FEC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8097442C
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80976060
    lw      $ra, 0x002C($sp)
var_80976000:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809749DC
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80976060
    lw      $ra, 0x002C($sp)
var_80976014:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809750A8
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80976060
    lw      $ra, 0x002C($sp)
var_80976028:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975534
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80976060
    lw      $ra, 0x002C($sp)
var_8097603C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80975BB0
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80976060
    lw      $ra, 0x002C($sp)
lbl_80976050:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80973EB0
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
lbl_80976060:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80976070:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_809738D4
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80976090:
    sw      a0, 0x0000($sp)
    lw      a0, 0x0014($sp)
    sw      a3, 0x000C($sp)
    lw      t6, 0x0270(a0)             # 00000270
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beql    t6, $zero, lbl_80976118
    lw      t9, 0x02C0(a0)             # 000002C0
    beq     a1, $at, lbl_809760C8
    lw      v0, 0x0010($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     a1, $at, lbl_809760F0
    lw      v0, 0x0010($sp)
    b       lbl_80976118
    lw      t9, 0x02C0(a0)             # 000002C0
lbl_809760C8:
    addiu   v1, a0, 0x02D2             # v1 = 000002D2
    lh      t8, 0x0002(v1)             # 000002D4
    lh      t7, 0x0000(v0)             # 00000000
    lh      t0, 0x0002(v0)             # 00000002
    addu    t9, t7, t8
    sh      t9, 0x0000(v0)             # 00000000
    lh      t1, 0x0000(v1)             # 000002D2
    subu    t2, t0, t1
    b       lbl_80976114
    sh      t2, 0x0002(v0)             # 00000002
lbl_809760F0:
    addiu   v1, a0, 0x02CC             # v1 = 000002CC
    lh      t4, 0x0002(v1)             # 000002CE
    lh      t3, 0x0000(v0)             # 00000000
    lh      t6, 0x0004(v0)             # 00000004
    addu    t5, t3, t4
    sh      t5, 0x0000(v0)             # 00000000
    lh      t7, 0x0000(v1)             # 000002CC
    addu    t8, t6, t7
    sh      t8, 0x0004(v0)             # 00000004
lbl_80976114:
    lw      t9, 0x02C0(a0)             # 000002C0
lbl_80976118:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t9, $zero, lbl_80976138
    nop
    bne     a1, $at, lbl_80976138
    lui     t0, 0x0601                 # t0 = 06010000
    addiu   t0, t0, 0xEDE8             # t0 = 0600EDE8
    sw      t0, 0x0000(a2)             # 00000000
lbl_80976138:
    jr      $ra
    nop


func_80976140:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_809761BC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    lui     t6, %hi(var_80977314)      # t6 = 80970000
    addiu   t6, t6, %lo(var_80977314)  # t6 = 80977314
    lw      t8, 0x0000(t6)             # 80977314
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80977318
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 8097731C
    jal     func_800AB958
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      v0, 0x0048($sp)
    lwc1    $f4, 0x001C($sp)
    lh      t9, 0x0030(v0)             # 00000030
    swc1    $f4, 0x0038(v0)            # 00000038
    lwc1    $f6, 0x0020($sp)
    lh      t0, 0x0032(v0)             # 00000032
    lh      t1, 0x0034(v0)             # 00000034
    swc1    $f6, 0x003C(v0)            # 0000003C
    lwc1    $f8, 0x0024($sp)
    sh      t9, 0x0044(v0)             # 00000044
    sh      t0, 0x0046(v0)             # 00000046
    sh      t1, 0x0048(v0)             # 00000048
    swc1    $f8, 0x0040(v0)            # 00000040
lbl_809761BC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809761CC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809761DC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lui     t1, %hi(var_80976370)      # t1 = 80970000
    lw      t8, 0x0044($sp)
    lh      v0, 0x024C(t6)             # 0000024C
    sll     t7, v0,  2
    addu    t1, t1, t7
    lw      t1, %lo(var_80976370)(t1)
    lw      a0, 0x0000(t8)             # 00000000
    sw      t1, 0x0030($sp)
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      v1, 0x0028($sp)
    lw      t1, 0x0030($sp)
    lui     t3, 0x8000                 # t3 = 80000000
    lw      t4, 0x0040($sp)
    lw      v0, 0x02C0(v1)             # 000002C0
    sll     t6, t1,  4
    srl     t7, t6, 28
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(v1)             # 000002C0
    lui     t9, 0x8012                 # t9 = 80120000
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    sll     t8, t7,  2
    addu    a1, t8, t9
    sw      t5, 0x0000(v0)             # 00000000
    lw      t5, 0x0000(a1)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     a2, t1, $at
    addu    t6, t5, a2
    addu    t7, t6, t3
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0024             # t9 = DB060024
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t5, 0x0000(a1)             # 00000000
    addiu   t0, t4, 0x013C             # t0 = 0000013C
    addu    t6, t5, a2
    addu    t7, t6, t3
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(v1)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(v1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v1)             # 000002C0
    addiu   t8, t8, 0x8520             # t8 = 800E8520
    ori     t7, t7, 0x0030             # t7 = DB060030
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000140
    lw      a2, 0x0020(t0)             # 0000015C
    lbu     a3, 0x0002(t0)             # 0000013E
    lui     t9, %hi(func_80976090)     # t9 = 80970000
    lui     t5, %hi(func_80976140)     # t5 = 80970000
    addiu   t5, t5, %lo(func_80976140) # t5 = 80976140
    addiu   t9, t9, %lo(func_80976090) # t9 = 80976090
    sw      t9, 0x0010($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80976320:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0254(a0)             # 00000254
    bltz    v0, lbl_80976358
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_80976358
    sll     t6, v0,  2
    lui     v1, %hi(var_80977320)      # v1 = 80970000
    addu    v1, v1, t6
    lw      v1, %lo(var_80977320)(v1)
    beql    v1, $zero, lbl_8097635C
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80976358:
    lw      $ra, 0x0014($sp)
lbl_8097635C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80976370: .word 0x06007210, 0x06007D50, 0x06008150
var_8097637C: .word \
0x00000009, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00190050, 0x00000000, 0x00000000
var_809763A8: .word \
0x00000020, 0x00000BB8, 0x00000020, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0x00000000, \
0xFFFFFFFC, 0x00000002, 0x00000000, 0xFFFFFFFC, \
0x00000002, 0x00000000, 0x00000000, 0x00000000, \
0x0000001F, 0x00000005, 0x00010000, 0x02B90000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000202B9, 0x02BA0000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x000402BA, 0x03000000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x000000D8, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020300, 0x03310000, \
0x00000000, 0x00000000, 0x000000D8, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00030331, 0x0A6A0000, \
0x00000000, 0x00000000, 0x00000052, 0x00000000, \
0x00000000, 0x00000052, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x0000000A, 0x00000003, \
0x000D0000, 0x012C0000, 0x00000000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0005012C, 0x02950000, 0xEAAA0000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00130295, 0x078E0000, 0x6AAA0000, 0x00000000, \
0x00000006, 0x00000000, 0x00000000, 0x00000006, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x0000002C, 0x00000003, 0x00010000, 0x00910000, \
0x00000000, 0xFFFFFF9F, 0x00000006, 0x000000A9, \
0xFFFFFF9F, 0x00000006, 0x000000A9, 0x00000000, \
0x00000000, 0x00000000, 0x00020091, 0x02670000, \
0x00000000, 0xFFFFFF9F, 0x00000006, 0x000000A9, \
0xFFFFFF9F, 0x00000006, 0x000000A9, 0x00000000, \
0x00000000, 0x00000000, 0x00030267, 0x07720000, \
0x00000000, 0xFFFFFF9F, 0x00000006, 0x000000A9, \
0xFFFFFF9F, 0x00000006, 0x000000A9, 0x00000000, \
0x00000000, 0x00000000, 0x00000031, 0x00000001, \
0x00010000, 0x0BB80000, 0x00000000, 0xFFFFFFEA, \
0x00000000, 0xFFFFFFC9, 0xFFFFFFEA, 0x00000000, \
0xFFFFFFC9, 0x00000000, 0x00000000, 0x00000000, \
0x00000004, 0x00000002, 0x00020000, 0x000A0000, \
0x00000000, 0xFFFFFFFE, 0x00000000, 0x0000000D, \
0xFFFFFFFE, 0x00000000, 0x0000000D, 0x00000000, \
0x00000000, 0x00000000, 0x0002000A, 0x0BB80000, \
0x00000000, 0xFFFFFFFE, 0x00000000, 0x0000000D, \
0xFFFFFFFE, 0x00000000, 0x0000000D, 0x00000000, \
0x00000000, 0x00000000, 0x0000002D, 0x00000001, \
0x000502B6, 0x02D402D4, 0x0000002D, 0x00000001, \
0x000103C0, 0x03DE03DE, 0x0000002D, 0x00000001, \
0x000102AB, 0x02B402B4, 0x0000003E, 0x00000002, \
0x00010000, 0x000A0000, 0x00000000, 0x00000040, \
0x00000050, 0x00000082, 0x00000040, 0x00000050, \
0x00000082, 0x00000000, 0x00000000, 0x00000000, \
0x0004000A, 0x0BB80000, 0x00000000, 0x00000040, \
0x00000050, 0x00000082, 0x00000040, 0x00000050, \
0x00000082, 0x00000000, 0x00000000, 0x00000000, \
0x00000056, 0x00000001, 0x00440302, 0x03030000, \
0x00000000, 0x00000000, 0xFFFFFFC9, 0x0000005C, \
0x00000000, 0xFFFFFFC9, 0x0000005C, 0x00000000, \
0x00000000, 0x00000000, 0x00000013, 0x0000000E, \
0xFFFF0000, 0x0154FFFF, 0xFFFFFFFF, 0x50220154, \
0x01610000, 0x00000000, 0xFFFF0161, 0x0176FFFF, \
0xFFFFFFFF, 0x50250176, 0x01940000, 0x00000000, \
0xFFFF0194, 0x01A8FFFF, 0xFFFFFFFF, 0x502B01A8, \
0x01DA0000, 0x00000000, 0xFFFF01DA, 0x01EEFFFF, \
0xFFFFFFFF, 0x502C01EE, 0x021F0000, 0x00000000, \
0xFFFF021F, 0x0234FFFF, 0xFFFFFFFF, 0x50260234, \
0x02650000, 0x00000000, 0xFFFF0265, 0x03BBFFFF, \
0xFFFFFFFF, 0x004103BB, 0x03BF0000, 0x00000000, \
0xFFFF03BF, 0x03FCFFFF, 0xFFFFFFFF, 0x502303FC, \
0x04050000, 0x00000000, 0x000003E8, 0x00000001, \
0x00610424, 0x04250425, 0x0000007C, 0x00000001, \
0x000402A1, 0x02D30000, 0x00000000, 0x00000000, \
0xFFFFFFC1, 0x00000058, 0x00000000, 0xFFFFFFC1, \
0x00000058, 0x00000000, 0x00000000, 0x00000000, \
0x00000001, 0x00010000, 0x01550000, 0x00000000, \
0x42726667, 0x002100E1, 0xFFC620BA, 0x00000000, \
0x42726667, 0x002100E1, 0xFFC6D5E0, 0x00000000, \
0x42726667, 0x002100E1, 0xFFC60950, 0x00000000, \
0x42726667, 0x0021006A, 0xFFC67C50, 0x00000000, \
0x42726667, 0x00210017, 0xFFC60000, 0x00000000, \
0x42726667, 0x000B000A, 0xFFEEFFFF, 0x00000000, \
0x42726667, 0x000B000A, 0xFFEE0000, 0x00000000, \
0x42726667, 0x000B000A, 0xFFEEE6A0, 0xFF000000, \
0x42726667, 0x000B000A, 0xFFEE7C53, 0x00000001, \
0x00010107, 0x01F80000, 0x00000000, 0x41B50402, \
0xFFCF000D, 0x009E20BA, 0x00000000, 0x41B50402, \
0xFFCF000D, 0x009ED5E0, 0x00000000, 0x41B50402, \
0xFFCF000D, 0x009E0950, 0x00000000, 0x41B50402, \
0xFFEB0016, 0x00967C50, 0x00000000, 0x4204E872, \
0xFFEB0016, 0x00960000, 0x00000000, 0x4204E872, \
0xFFEB0016, 0x0096FFFF, 0x00000000, 0x4204E872, \
0xFFEB0016, 0x00960000, 0x00000000, 0x4204E872, \
0xFFEB0016, 0x0096E6A0, 0xFF000000, 0x4204E872, \
0xFFEB0016, 0x00967C53, 0x00000001, 0x0001016B, \
0x03380000, 0x00000000, 0x42726667, 0xFFBD0008, \
0x007520BA, 0x00000000, 0x42726667, 0xFFBD0008, \
0x0075D5E0, 0x00000000, 0x42726667, 0xFFBD0008, \
0x00750950, 0x00000000, 0x42726667, 0xFFBD0008, \
0x00757C50, 0x00000000, 0x42726667, 0xFFBD0008, \
0x00750000, 0x00000000, 0x42726667, 0xFFBD0008, \
0x0075FFFF, 0x00000000, 0x428D998E, 0xFFBD0008, \
0x00750000, 0x00000000, 0x428D998E, 0xFFBD0008, \
0x0075E6A0, 0x00000000, 0x428D998E, 0xFFBD0008, \
0x00757C53, 0x00000000, 0x428D998E, 0xFFBD0008, \
0x00750000, 0xFF000000, 0x428D998E, 0xFFBD0008, \
0x00750000, 0x00000005, 0x0001019D, 0x05E00000, \
0x00000000, 0x419FFFB1, 0xFFCB001C, 0x002D20BA, \
0x00000000, 0x419FFFB1, 0xFFCB001C, 0x002DD5E0, \
0x00000000, 0x419FFFB1, 0xFFCB001C, 0x002D0950, \
0x00000000, 0x419FFFB1, 0xFFCB001C, 0x002D7C50, \
0xFF000000, 0x419FFFB1, 0xFFCB001C, 0x002D0000, \
0x00000001, 0x000101E3, 0x06940000, 0x00000000, \
0x4289D68F, 0xFFBD0008, 0x007520BA, 0x00000000, \
0x4289D68F, 0xFFBD0008, 0x0075D5E0, 0x00000000, \
0x4289D68F, 0xFFBD0008, 0x00750950, 0x00000000, \
0x4289D68F, 0xFFB9000F, 0x007C7C50, 0x00000000, \
0x4289D68F, 0xFFB7001D, 0x00830000, 0x00000000, \
0x4289D68F, 0xFFB20028, 0x008CFFFF, 0x00000000, \
0x4289D68F, 0xFFB20028, 0x008C0000, 0x00000000, \
0x4289D68F, 0xFFB20028, 0x008CE6A0, 0xFF000000, \
0x4289D68F, 0xFFB20028, 0x008C7C53, 0x00000001, \
0x00010229, 0x066C0000, 0x00000000, 0x42366658, \
0xFFD90022, 0x00C920BA, 0x00000000, 0x42366658, \
0xFFD90022, 0x00C9D5E0, 0x00000000, 0x42366658, \
0xFFD90022, 0x00C90950, 0x00000000, 0x42366658, \
0xFFD90022, 0x00C97C50, 0xFF000000, 0x42366658, \
0xFFD90022, 0x00C90000, 0x00000001, 0x0001026F, \
0x03330000, 0x00000000, 0x428D3328, 0x0009000D, \
0xFFEF20BA, 0x00000000, 0x428D3328, 0x0009000D, \
0xFFEFD5E0, 0x00000000, 0x428D3328, 0x0009000D, \
0xFFEF0950, 0x00000000, 0x428D3328, 0x00090047, \
0xFFEF7C50, 0x00000000, 0x42FDFF84, 0x00090181, \
0xFFEF0000, 0x00000000, 0x42FDFF84, 0x00090181, \
0xFFEFFFFF, 0x00000000, 0x42FDFF84, 0x00090181, \
0xFFEF0000, 0x00000000, 0x42FDFF84, 0x00090181, \
0xFFEFE6A0, 0xFF000000, 0x42FDFF84, 0x00090181, \
0xFFEF7C53, 0x00000001, 0x000102B5, 0x040B0000, \
0x00000000, 0x42700000, 0x000D0356, 0x000220BA, \
0x00000000, 0x42700000, 0x00090355, 0x0005D5E0, \
0x00000000, 0x42700000, 0xFFFD0355, 0x00050950, \
0x00000000, 0x42700000, 0xFFF70355, 0xFFFA7C50, \
0x00000000, 0x42700000, 0xFFFE0354, 0xFFEF0000, \
0x00000000, 0x42700000, 0x00090354, 0xFFEFFFFF, \
0x00000000, 0x42700000, 0x00100354, 0xFFFA0000, \
0x00000000, 0x42700000, 0x00090354, 0x0005E6A0, \
0xFF000000, 0x42700000, 0xFFFD0353, 0x00057C53, \
0x00000005, 0x00010301, 0x079E0000, 0x00000000, \
0x4289332C, 0x00000021, 0xFFE520BA, 0x00000000, \
0x4289332C, 0x00000021, 0xFFE5D5E0, 0x00000000, \
0x4289332C, 0x00000044, 0xFFE60950, 0x00000000, \
0x4289332C, 0x00000067, 0xFFE67C50, 0x00000000, \
0x4289332C, 0x00000067, 0xFFE60000, 0x00000000, \
0x4289332C, 0x00000067, 0xFFE6FFFF, 0x00000000, \
0x4289332C, 0x00000067, 0xFFE60000, 0xFF000000, \
0x4289332C, 0x00000067, 0xFFE6E6A0, 0x00000002, \
0x00010000, 0x01720000, 0x0000001E, 0x42726667, \
0xFFEB0015, 0x002A20BA, 0x00000032, 0x42726667, \
0xFFEB0015, 0x002AD5E0, 0x00000032, 0x42726667, \
0xFFEB0015, 0x002A0950, 0x00000032, 0x42726667, \
0xFFB20056, 0x00907C50, 0x00000032, 0x42726667, \
0xFFB00015, 0x008E0000, 0x00000032, 0x42726667, \
0xFF9D001F, 0x00B1FFFF, 0x0000001E, 0x42726667, \
0xFF9D001F, 0x00B10000, 0x0000001E, 0x42726667, \
0xFF9D001F, 0x00B1E6A0, 0xFF00001E, 0x42726667, \
0xFF9D001F, 0x00B17C53, 0x00000002, 0x00010107, \
0x02150000, 0x0000001E, 0x41B50402, 0xFECB000B, \
0x00E520BA, 0x0000001E, 0x41B50402, 0xFECB000B, \
0x00E5D5E0, 0x0000001E, 0x41B50402, 0xFECB000B, \
0x00E50950, 0x0000001E, 0x4204E872, 0xFEFE0085, \
0x00BF7C50, 0x0000001E, 0x4204E872, 0xFEFE0085, \
0x00BF0000, 0x0000001E, 0x4204E872, 0xFEFE0085, \
0x00BFFFFF, 0x0000001E, 0x4204E872, 0xFEFE0085, \
0x00BF0000, 0x0000001E, 0x4204E872, 0xFEFE0085, \
0x00BFE6A0, 0xFF00001E, 0x4204E872, 0xFEFE0085, \
0x00BF7C53, 0x00000002, 0x0001016B, 0x03550000, \
0x00000032, 0x42899992, 0x0044006D, 0xFF9920BA, \
0x00000032, 0x4289FFF8, 0x0044006D, 0xFF99D5E0, \
0x00000032, 0x42899992, 0x0043006D, 0xFF990950, \
0x00000032, 0x4289332C, 0x00BD006D, 0x005C7C50, \
0x00000032, 0x4289332C, 0x0039006C, 0x01550000, \
0x00000032, 0x428D998E, 0xFF46006B, 0x0155FFFF, \
0x00000032, 0x428D998E, 0xFF46006B, 0x01550000, \
0x00000032, 0x428D998E, 0xFF46006B, 0x0155E6A0, \
0x0000001E, 0x428D998E, 0xFF46006B, 0x01557C53, \
0x0000001E, 0x428D998E, 0xFF46006B, 0x01550000, \
0xFF00001E, 0x428D998E, 0xFF46006B, 0x01550000, \
0x00000006, 0x0001019D, 0x05FD0000, 0x0000001E, \
0x419FFFB1, 0x00AB007A, 0xFF9620BA, 0x0000001E, \
0x419FFFB1, 0x00AB007A, 0xFF96D5E0, 0x000003E8, \
0x419FFFB1, 0x00AB007A, 0xFF960950, 0x0000001E, \
0x419FFFB1, 0x00AA007A, 0xFF967C50, 0xFF00001E, \
0x419FFFB1, 0x00AA007A, 0xFF960000, 0x00000002, \
0x000101E3, 0x06B10000, 0x00010014, 0x4289D68F, \
0xFF410084, 0x014720BA, 0x00000014, 0x4289D68F, \
0xFF410084, 0x0147D5E0, 0x00FF001E, 0x4289D68F, \
0xFF420083, 0x01460950, 0x00000028, 0x4289D68F, \
0xFF43009A, 0x01447C50, 0x0001001E, 0x4289D68F, \
0xFF3E00A2, 0x014B0000, 0x0000001E, 0x4289D68F, \
0xFF3900AC, 0x0153FFFF, 0x000003E8, 0x4289D68F, \
0xFF3900AC, 0x01530000, 0x0000001E, 0x4289D68F, \
0xFF3900AC, 0x0153E6A0, 0xFF00001E, 0x4289D68F, \
0xFF3900AC, 0x01537C53, 0x00000002, 0x00010229, \
0x06890000, 0x0000001E, 0x42366658, 0xFF16007B, \
0x002520BA, 0x0000001E, 0x42366658, 0xFF16007B, \
0x0025D5E0, 0x000003E8, 0x42366658, 0xFF16007B, \
0x00250950, 0x0000001E, 0x42366658, 0xFF16007B, \
0x00257C50, 0xFF00001E, 0x42366658, 0xFF17007B, \
0x00250000, 0x00000002, 0x0001026F, 0x03500000, \
0x0000001E, 0x428D3328, 0xFFCC0011, 0x005B20BA, \
0x0000001E, 0x428D3328, 0xFFCC0011, 0x005BD5E0, \
0x00000014, 0x428D3328, 0xFFCC0011, 0x005B0950, \
0x0000000F, 0x428D3328, 0xFFCC004B, 0x005B7C50, \
0x0000000A, 0x42FDFF84, 0xFFFB01F7, 0x00090000, \
0x0000001E, 0x42FDFF84, 0xFFFB01F7, 0x0009FFFF, \
0x0000001E, 0x42FDFF84, 0xFFFB01F7, 0x00090000, \
0x0000001E, 0x42FDFF84, 0xFFFB01F7, 0x0009E6A0, \
0xFF00001E, 0x42FDFF84, 0xFFFB01F7, 0x00097C53, \
0x00000002, 0x000102B5, 0x043C0000, 0x00000032, \
0x42700000, 0x00030006, 0xFFFA20BA, 0x00000028, \
0x42700000, 0x00030006, 0xFFFAD5E0, 0x0000001E, \
0x424BFFF7, 0x00030006, 0xFFFA0950, 0x00000014, \
0x41A4CC7E, 0x00030006, 0xFFFA7C50, 0x00000033, \
0x412CCC23, 0x00030006, 0xFFFA0000, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFAFFFF, 0x00000032, \
0x412665BD, 0x00030006, 0xFFFA0000, 0x00000032, \
0x4123328A, 0x00030006, 0xFFFAE6A0, 0xFF000032, \
0x412FFF56, 0x00030006, 0xFFFA7C53, 0x00000006, \
0x00010301, 0x07BB0000, 0x0000001E, 0x4289332C, \
0x00000064, 0x000520BA, 0x0000001E, 0x4289332C, \
0x00000065, 0x0006D5E0, 0x0000001E, 0x4289332C, \
0x00010063, 0x00290950, 0x0000001E, 0x4289332C, \
0x0000002A, 0x00107C50, 0x0000001E, 0x4289332C, \
0x0000002A, 0x00100000, 0x000003E8, 0x4289332C, \
0x0000002A, 0x0010FFFF, 0x0000001E, 0x4289332C, \
0x0000002A, 0x00100000, 0xFF00001E, 0x4289332C, \
0x0000002A, 0x0010E6A0, 0xFFFFFFFF, 0x00000000
var_80977298: .word func_809742A8
.word func_809742C8
.word func_809742E8
.word func_80974324
.word func_8097436C
.word func_809743B0
.word func_809743F8
.word func_809747E4
.word func_80974804
.word func_8097484C
.word func_80974F18
.word func_80974F38
.word func_80974F94
.word func_80975000
.word func_80975048
.word func_8097545C
.word func_8097547C
.word func_809754C4
.word func_809758D0
.word func_80975938
.word func_80975994
.word func_809759B4
.word func_80975A28
.word func_80975A8C
.word func_80975AAC
.word func_80975B14
.word func_80975B38
.word func_80975E08
.word func_80975E28
.word func_80975E74
.word func_80975EBC
var_80977314: .word 0x00000000, 0x41200000, 0x00000000
var_80977320: .word func_809761CC
.word func_809761DC
.word func_80974894
var_8097732C: .word 0x00A90400, 0x00000011, 0x00870000, 0x000002EC
.word func_80975F48
.word func_80976070
.word func_80975F00
.word func_80976320
.word 0x00000000

.section .rodata

var_80977350: .word 0xC61C4000
var_80977354: .word 0x42A6AAAB
var_80977358: .word var_80974EB0
.word var_80974EC0
.word lbl_80974EFC
.word lbl_80974EFC
.word lbl_80974EFC
.word lbl_80974EFC
.word var_80974ED4
.word var_80974EE4
.word var_80974EF4
var_8097737C: .word var_80975FEC
.word var_80976000
.word var_80976014
.word var_80976028
.word var_8097603C

