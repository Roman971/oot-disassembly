.section .text
func_80A52570:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    jal     func_80064780
    addiu   a1, $zero, 0x2839          # a1 = 00002839
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A52598:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    addiu   a3, $zero, 0x28AA          # a3 = 000028AA
    jal     func_80058FF8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A525D0:
    addiu   $sp, $sp, 0xFB18           # $sp -= 0x4E8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x04EC($sp)
    sw      a2, 0x04F0($sp)
    lw      t6, 0x04EC($sp)
    lui     $at, 0x4100                # $at = 41000000
    lw      t3, 0x04F0($sp)
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    trunc.w.s $f6, $f4
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     $at, 0xBF80                # $at = BF800000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    mfc1    t8, $f6
    mtc1    $at, $f6                   # $f6 = -1.00
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    sh      t8, 0x0024($sp)
    lwc1    $f8, 0x0004(t6)            # 00000004
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   a1, $sp, 0x0020            # a1 = FFFFFB38
    trunc.w.s $f10, $f8
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    t0, $f10
    nop
    sh      t0, 0x0026($sp)
    lwc1    $f16, 0x0008(t6)           # 00000008
    addiu   t6, $sp, 0x0024            # t6 = FFFFFB3C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    trunc.w.s $f18, $f16
    sb      $zero, 0x04C0($sp)
    sb      $zero, 0x04C1($sp)
    sb      $zero, 0x04C2($sp)
    mfc1    t2, $f18
    sb      t4, 0x04C3($sp)
    sb      $zero, 0x04C4($sp)
    sb      $zero, 0x04C5($sp)
    sb      $zero, 0x04C6($sp)
    sb      t5, 0x04C7($sp)
    sb      $zero, 0x04C8($sp)
    sb      $zero, 0x04C9($sp)
    sb      $zero, 0x04CA($sp)
    sb      t7, 0x04CB($sp)
    sb      $zero, 0x04CC($sp)
    sb      $zero, 0x04CD($sp)
    sb      $zero, 0x04CE($sp)
    sb      t8, 0x04CF($sp)
    sb      $zero, 0x04D0($sp)
    sb      $zero, 0x04D1($sp)
    sb      $zero, 0x04D2($sp)
    sb      $zero, 0x04D3($sp)
    sb      $zero, 0x04D4($sp)
    sb      $zero, 0x04D5($sp)
    sb      $zero, 0x04D6($sp)
    sb      $zero, 0x04D7($sp)
    sb      $zero, 0x04D8($sp)
    sb      $zero, 0x04D9($sp)
    sb      $zero, 0x04DA($sp)
    sb      $zero, 0x04DB($sp)
    sb      $zero, 0x04DC($sp)
    sb      $zero, 0x04DD($sp)
    sb      $zero, 0x04DE($sp)
    sb      $zero, 0x04DF($sp)
    sw      $zero, 0x04E0($sp)
    sw      t9, 0x04E4($sp)
    sw      t0, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t3, 0x04B8($sp)
    sw      t3, 0x04BC($sp)
    swc1    $f4, 0x04B0($sp)
    swc1    $f6, 0x04B4($sp)
    jal     func_8001AA5C
    sh      t2, 0x0028($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x04E8           # $sp += 0x4E8
    jr      $ra
    nop


func_80A52708:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a1, 0x0044($sp)
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0040($sp)
    lw      t6, 0x0040($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lui     $at, 0x43AF                # $at = 43AF0000
    lw      t8, 0x0024(t6)             # 00000024
    sw      t8, 0x0000(a1)             # FFFFFFF0
    lw      t7, 0x0028(t6)             # 00000028
    sw      t7, 0x0004(a1)             # FFFFFFF4
    lw      t8, 0x002C(t6)             # 0000002C
    sw      t8, 0x0008(a1)             # FFFFFFF8
    lw      v0, -0x4600(v0)            # 8011BA00
    lwc1    $f4, 0x0034($sp)
    lw      a0, 0x0044($sp)
    lh      t9, 0x1472(v0)             # 80121472
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mtc1    $at, $f6                   # $f6 = 350.00
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x0034($sp)
    lh      t0, 0x146A(v0)             # 8012146A
    lh      t1, 0x146E(v0)             # 8012146E
    lh      a3, 0x146C(v0)             # 8012146C
    mtc1    t0, $f16                   # $f16 = 0.00
    addiu   t2, t1, 0x07D0             # t2 = 000007D0
    sw      t2, 0x0010($sp)
    cvt.s.w $f18, $f16
    lh      t3, 0x1470(v0)             # 80121470
    sw      $zero, 0x0018($sp)
    addiu   a3, a3, 0x0005             # a3 = 00000005
    addiu   t4, t3, 0x0320             # t4 = 00000320
    sw      t4, 0x0014($sp)
    add.s   $f4, $f18, $f6
    mfc1    a2, $f4
    jal     func_80026308
    nop
    lw      a0, 0x0044($sp)
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFF0
    jal     func_80A525D0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      a0, 0x0040($sp)
    jal     func_80A52598
    lw      a1, 0x0044($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80A527D4:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0058($sp)
    addiu   s0, $sp, 0x0044            # s0 = FFFFFFEC
    lui     v0, 0x8012                 # v0 = 80120000
    lw      t7, 0x0160(t6)             # 00000160
    beql    t7, $zero, lbl_80A52988
    lw      $ra, 0x002C($sp)
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80A530A0)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A530A0)($at)
    lh      t8, 0x147C(v0)             # 8012147C
    lui     $at, 0x4348                # $at = 43480000
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFE0
    mtc1    t8, $f4                    # $f4 = 0.00
    or      a1, s0, $zero              # a1 = FFFFFFEC
    cvt.s.w $f6, $f4
    mtc1    $at, $f4                   # $f4 = 200.00
    add.s   $f10, $f6, $f8
    mtc1    $zero, $f8                 # $f8 = 0.00
    swc1    $f10, 0x0038($sp)
    lh      t9, 0x147E(v0)             # 8012147E
    swc1    $f8, 0x0040($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    add.s   $f6, $f18, $f4
    jal     func_800AB958
    swc1    $f6, 0x003C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lh      t0, 0x1474(v0)             # 80121474
    lh      t1, 0x1478(v0)             # 80121478
    lh      a3, 0x1476(v0)             # 80121476
    mtc1    t0, $f10                   # $f10 = 0.00
    addiu   t2, t1, 0x03E8             # t2 = 000003E8
    sw      t2, 0x0010($sp)
    cvt.s.w $f16, $f10
    lh      t3, 0x147A(v0)             # 8012147A
    sw      $zero, 0x0018($sp)
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = FFFFFFEC
    addiu   a3, a3, 0x000A             # a3 = 0000000A
    add.s   $f4, $f16, $f18
    sw      t3, 0x0014($sp)
    mfc1    a2, $f4
    jal     func_80026308
    nop
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = FFFFFFEC
    jal     func_80A525D0
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80A530A4)     # $at = 80A50000
    lwc1    $f10, %lo(var_80A530A4)($at)
    lh      t4, 0x147C(v0)             # 8012147C
    lui     $at, 0x4348                # $at = 43480000
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFE0
    mtc1    t4, $f6                    # $f6 = 0.00
    or      a1, s0, $zero              # a1 = FFFFFFEC
    cvt.s.w $f8, $f6
    add.s   $f16, $f8, $f10
    mtc1    $at, $f8                   # $f8 = 200.00
    neg.s   $f18, $f16
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f18, 0x0038($sp)
    lh      t5, 0x147E(v0)             # 8012147E
    swc1    $f16, 0x0040($sp)
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    jal     func_800AB958
    swc1    $f10, 0x003C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    lh      t6, 0x1474(v0)             # 80121474
    lh      t7, 0x1478(v0)             # 80121478
    lh      a3, 0x1476(v0)             # 80121476
    mtc1    t6, $f18                   # $f18 = 0.00
    addiu   t8, t7, 0x03E8             # t8 = 000003E8
    sw      t8, 0x0010($sp)
    cvt.s.w $f4, $f18
    lh      t9, 0x147A(v0)             # 8012147A
    sw      $zero, 0x0018($sp)
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = FFFFFFEC
    addiu   a3, a3, 0x000A             # a3 = 0000000A
    add.s   $f8, $f4, $f6
    sw      t9, 0x0014($sp)
    mfc1    a2, $f8
    jal     func_80026308
    nop
    lw      a0, 0x005C($sp)
    or      a1, s0, $zero              # a1 = FFFFFFEC
    jal     func_80A525D0
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      a0, 0x0058($sp)
    jal     func_80A52570
    sw      $zero, 0x0160(a0)          # 00000160
    lw      $ra, 0x002C($sp)
lbl_80A52988:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80A52998:
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


func_80A529CC:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80A529E4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A529E4:
    jr      $ra
    nop


func_80A529EC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80A529CC
    sw      $zero, 0x001C($sp)
    bne     v0, $zero, lbl_80A52A24
    lw      v1, 0x001C($sp)
    lw      t7, 0x002C($sp)
    lw      t6, 0x0028($sp)
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v1, 0x1D8C(t9)             # 00001D8C
lbl_80A52A24:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A52A38:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t7, 0x0000(v0)             # 8011BA00
    lh      t6, 0x00B4(a0)             # 000000B4
    lh      t0, 0x00B6(a0)             # 000000B6
    lh      t8, 0x1460(t7)             # 00001460
    addu    t9, t6, t8
    sh      t9, 0x00B4(a0)             # 000000B4
    lw      t1, 0x0000(v0)             # 8011BA00
    lh      t6, 0x00B8(a0)             # 000000B8
    lh      t2, 0x1462(t1)             # 00001462
    addiu   t5, t2, 0x03E8             # t5 = 000003E8
    addu    t7, t0, t5
    sh      t7, 0x00B6(a0)             # 000000B6
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x1464(t8)             # 00001464
    addiu   t3, t9, 0x07D0             # t3 = 000007D0
    addu    t4, t6, t3
    sh      t4, 0x00B8(a0)             # 000000B8
    jr      $ra
    nop


func_80A52A8C:
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    swc1    $f12, 0x0000($sp)
    swc1    $f14, 0x0004($sp)
    subu    t6, a2, a3
    mtc1    t6, $f4                    # $f4 = 0.00
    lhu     t9, 0x0012($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    cvt.s.w $f2, $f4
    subu    t0, t9, a3
    c.eq.s  $f16, $f2
    nop
    bc1tl   lbl_80A52B28
    mov.s   $f0, $f16
    lw      t7, -0x4600(t7)            # 8011BA00
    mtc1    t0, $f18                   # $f18 = 0.00
    lui     $at, 0x41F0                # $at = 41F00000
    lh      t8, 0x1466(t7)             # 80121466
    mtc1    $at, $f10                  # $f10 = 30.00
    cvt.s.w $f12, $f18
    mtc1    t8, $f6                    # $f6 = 0.00
    lwc1    $f4, 0x0004($sp)
    cvt.s.w $f8, $f6
    lwc1    $f6, 0x0000($sp)
    add.s   $f14, $f8, $f10
    sub.s   $f8, $f4, $f6
    mul.s   $f16, $f14, $f12
    sub.s   $f10, $f8, $f16
    mul.s   $f18, $f2, $f2
    div.s   $f4, $f10, $f18
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f8, $f6, $f12
    jr      $ra
    add.s   $f0, $f8, $f16
lbl_80A52B24:
    mov.s   $f0, $f16
lbl_80A52B28:
    jr      $ra
    nop


func_80A52B30:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    lw      a0, 0x0054($sp)
    jal     func_80A529EC
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beq     v0, $zero, lbl_80A52C68
    lw      t6, 0x0054($sp)
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x1D74(t6)             # 00001D74
    jal     func_8005C690
    sw      v0, 0x004C($sp)
    lw      v0, 0x0050($sp)
    lw      v1, 0x004C($sp)
    addiu   t7, $sp, 0x0030            # t7 = FFFFFFE0
    lw      t9, 0x0008(v0)             # 00000008
    lui     t1, 0x8012                 # t1 = 80120000
    lui     $at, %hi(var_80A530A8)     # $at = 80A50000
    sw      t9, 0x0000(t7)             # FFFFFFE0
    lw      t8, 0x000C(v0)             # 0000000C
    sw      t8, 0x0004(t7)             # FFFFFFE4
    lw      t9, 0x0010(v0)             # 00000010
    sw      t9, 0x0008(t7)             # FFFFFFE8
    lw      t1, -0x4600(t1)            # 8011BA00
    lw      t0, 0x0018(v1)             # 00000018
    lwc1    $f10, %lo(var_80A530A8)($at)
    lh      t2, 0x1468(t1)             # 80121468
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f2, $f4
    mtc1    $at, $f4                   # $f4 = 10.00
    lw      t3, 0x001C(v1)             # 0000001C
    lw      t4, 0x0020(v1)             # 00000020
    cvt.s.w $f8, $f6
    add.s   $f18, $f8, $f10
    mtc1    t3, $f8                    # $f8 = 0.00
    div.s   $f6, $f18, $f4
    mtc1    t4, $f18                   # $f18 = 0.00
    cvt.s.w $f10, $f8
    lwc1    $f8, 0x0030($sp)
    cvt.s.w $f4, $f18
    swc1    $f4, 0x002C($sp)
    add.s   $f14, $f6, $f10
    sub.s   $f6, $f2, $f8
    mul.s   $f10, $f6, $f0
    add.s   $f18, $f10, $f8
    swc1    $f18, 0x0024(v0)           # 00000024
    lw      t5, 0x0054($sp)
    lhu     a3, 0x0002(v1)             # 00000002
    lhu     a2, 0x0004(v1)             # 00000004
    lhu     t6, 0x1D74(t5)             # 00001D74
    swc1    $f0, 0x0040($sp)
    lwc1    $f12, 0x0034($sp)
    jal     func_80A52A8C
    sw      t6, 0x0010($sp)
    lwc1    $f4, 0x0034($sp)
    lw      v0, 0x0050($sp)
    lwc1    $f16, 0x0040($sp)
    add.s   $f6, $f0, $f4
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   v0, v0, 0x0024             # v0 = 00000024
    swc1    $f6, 0x0004(v0)            # 00000028
    lwc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x002C($sp)
    sub.s   $f18, $f10, $f8
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f4, $f18, $f16
    c.le.s  $f10, $f16
    add.s   $f6, $f4, $f8
    bc1f    lbl_80A52C60
    swc1    $f6, 0x0008(v0)            # 0000002C
    beq     $zero, $zero, lbl_80A52C6C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A52C60:
    beq     $zero, $zero, lbl_80A52C6C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A52C68:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A52C6C:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80A52C7C:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0154(a0)             # 00000154
    sw      $zero, 0x0158(a0)          # 00000158
    jr      $ra
    nop


func_80A52C90:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0154(a0)             # 00000154
    sw      $zero, 0x0158(a0)          # 00000158
    sw      t7, 0x0160(a0)             # 00000160
    jr      $ra
    nop


func_80A52CB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A52708
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0154(a0)             # 00000154
    sw      $zero, 0x0158(a0)          # 00000158
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80A52CDC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_80A529EC
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beql    v0, $zero, lbl_80A52D78
    lw      $ra, 0x001C($sp)
    lhu     a2, 0x0000(v0)             # 00000000
    lw      v1, 0x015C(s0)             # 0000015C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    a2, v1, lbl_80A52D78
    lw      $ra, 0x001C($sp)
    beq     a2, $at, lbl_80A52D40
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a2, $at, lbl_80A52D50
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a2, $at, lbl_80A52D64
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A52D74
    sw      a2, 0x015C(s0)             # 0000015C
lbl_80A52D40:
    jal     func_80A52C7C
    sw      a2, 0x0020($sp)
    beq     $zero, $zero, lbl_80A52D70
    lw      a2, 0x0020($sp)
lbl_80A52D50:
    lw      a1, 0x002C($sp)
    jal     func_80A52C90
    sw      a2, 0x0020($sp)
    beq     $zero, $zero, lbl_80A52D70
    lw      a2, 0x0020($sp)
lbl_80A52D64:
    jal     func_80020EB4
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
lbl_80A52D70:
    sw      a2, 0x015C(s0)             # 0000015C
lbl_80A52D74:
    lw      $ra, 0x001C($sp)
lbl_80A52D78:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A52D88:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80A52D98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A52CDC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A52DB8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80A52A38
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80A52B30
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80A52DEC
    lw      a0, 0x0018($sp)
    jal     func_80A52CB0
    lw      a1, 0x001C($sp)
lbl_80A52DEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A52DFC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80A52CDC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A52E1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0154(a0)             # 00000154
    bltz    v0, lbl_80A52E54
    slti    $at, v0, 0x0004
    beq     $at, $zero, lbl_80A52E54
    sll     t6, v0,  2
    lui     v1, %hi(var_80A53060)      # v1 = 80A50000
    addu    v1, v1, t6
    lw      v1, %lo(var_80A53060)(v1)
    beql    v1, $zero, lbl_80A52E58
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80A52E54:
    lw      $ra, 0x0014($sp)
lbl_80A52E58:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A52E64:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80A53070)      # a1 = 80A50000
    addiu   a1, a1, %lo(var_80A53070)  # a1 = 80A53070
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    sw      $zero, 0x0028($sp)
    addiu   a0, a0, 0x075C             # a0 = 0600075C
    jal     func_80033EF4
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0028($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      v0, 0x013C(s0)             # 0000013C
    lw      v1, 0x1360(a0)             # 8011B930
    slti    $at, v1, 0x0004
    beql    $at, $zero, lbl_80A52F10
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lhu     t6, 0x0EDE(a0)             # 8011B4AE
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80A52F04
    nop
    lw      t8, 0x0004(a0)             # 8011A5D4
    bne     t8, $zero, lbl_80A52F04
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A52F6C
    lw      $ra, 0x001C($sp)
lbl_80A52F04:
    beq     $zero, $zero, lbl_80A52F68
    sw      $zero, 0x0154(s0)          # 00000154
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80A52F10:
    bne     v1, $at, lbl_80A52F4C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0154(s0)             # 00000154
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x4600(t0)            # 8011BA00
    lui     $at, %hi(var_80A530AC)     # $at = 80A50000
    lwc1    $f8, %lo(var_80A530AC)($at)
    lh      t1, 0x1468(t0)             # 80121468
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    neg.s   $f16, $f10
    beq     $zero, $zero, lbl_80A52F68
    swc1    $f16, 0x00BC(s0)           # 000000BC
lbl_80A52F4C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_80A52F60
    nop
    beq     $zero, $zero, lbl_80A52F68
    sw      $zero, 0x0154(s0)          # 00000154
lbl_80A52F60:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A52F68:
    lw      $ra, 0x001C($sp)
lbl_80A52F6C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A52F7C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      s0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      a0, 0x0030($sp)
    jal     func_80A527D4
    lw      a1, 0x0034($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0x0600                 # t1 = 06000000
    addiu   t1, t1, 0x0420             # t1 = 06000420
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80A5300C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0158(a0)             # 00000158
    bltzl   v0, lbl_80A53048
    lw      $ra, 0x0014($sp)
    bgtz    v0, lbl_80A53044
    sll     t6, v0,  2
    lui     v1, %hi(var_80A53074)      # v1 = 80A50000
    addu    v1, v1, t6
    lw      v1, %lo(var_80A53074)(v1)
    beql    v1, $zero, lbl_80A53048
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80A53044:
    lw      $ra, 0x0014($sp)
lbl_80A53048:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A53060: .word func_80A52D88
.word func_80A52D98
.word func_80A52DB8
.word func_80A52DFC
var_80A53070: .word 0x48500064
var_80A53074: .word func_80A52F7C
var_80A53078: .word 0x01030600, 0x00000010, 0x00F90000, 0x00000164
.word func_80A52E64
.word func_80A52998
.word func_80A52E1C
.word func_80A5300C
.word 0x00000000, 0x00000000

.section .rodata

var_80A530A0: .word 0x44A28000
var_80A530A4: .word 0x44A28000
var_80A530A8: .word 0x44898000
var_80A530AC: .word 0x44898000

