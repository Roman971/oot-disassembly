.section .text
func_80B7C150:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     t7, %hi(var_80B7E2B0)      # t7 = 80B80000
    addiu   t7, t7, %lo(var_80B7E2B0)  # t7 = 80B7E2B0
    lw      t9, 0x0000(t7)             # 80B7E2B0
    addiu   t6, $sp, 0x0008            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B7E2B4
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B7E2B8
    addiu   v0, a0, 0x02EC             # v0 = 000002EC
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
lbl_80B7C188:
    lbu     t0, 0x0000(v0)             # 000002EC
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t0, $zero, lbl_80B7C1D0
    sra     v1, v1, 16
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x0000(v0)             # 000002EC
    lw      t3, 0x0000(a1)             # 00000000
    sw      t3, 0x0014(v0)             # 00000300
    lw      t2, 0x0004(a1)             # 00000004
    sw      t2, 0x0018(v0)             # 00000304
    lw      t3, 0x0008(a1)             # 00000008
    swc1    $f12, 0x0004(v0)           # 000002F0
    swc1    $f14, 0x0008(v0)           # 000002F4
    sw      t3, 0x001C(v0)             # 00000308
    lbu     t4, 0x002B($sp)
    b       lbl_80B7C1DC
    sb      t4, 0x000F(v0)             # 000002FB
lbl_80B7C1D0:
    slti    $at, v1, 0x000F
    bne     $at, $zero, lbl_80B7C188
    addiu   v0, v0, 0x0038             # v0 = 00000324
lbl_80B7C1DC:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B7C1E4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFE4
    lui     t7, %hi(var_80B7E2BC)      # t7 = 80B80000
    addiu   t7, t7, %lo(var_80B7E2BC)  # t7 = 80B7E2BC
    lw      t9, 0x0000(t7)             # 80B7E2BC
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B7E2C0
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B7E2C4
    lui     t0, %hi(var_80B7E2C8)      # t0 = 80B80000
    addiu   t0, t0, %lo(var_80B7E2C8)  # t0 = 80B7E2C8
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t2, 0x0000(t0)             # 80B7E2C8
    addiu   v0, a0, 0x02EC             # v0 = 000002EC
    or      v1, $zero, $zero           # v1 = 00000000
    sw      t2, 0x0000(a2)             # FFFFFFE4
    lw      t1, 0x0004(t0)             # 80B7E2CC
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      t1, 0x0004(a2)             # FFFFFFE8
    lw      t2, 0x0008(t0)             # 80B7E2D0
    sw      t2, 0x0008(a2)             # FFFFFFEC
lbl_80B7C240:
    lbu     t3, 0x0000(v0)             # 000002EC
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     t3, $zero, lbl_80B7C2F8
    sra     v1, v1, 16
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x0084(a0)            # 00000084
    lwc1    $f8, 0x0004(a1)            # 00000004
    add.s   $f0, $f4, $f6
    c.le.s  $f0, $f8
    nop
    bc1tl   lbl_80B7C2FC
    slti    $at, v1, 0x000F
    sb      t4, 0x0000(v0)             # 000002EC
    lw      t6, 0x0000(a1)             # 00000000
    sw      t6, 0x0014(v0)             # 00000300
    lw      t5, 0x0004(a1)             # 00000004
    sw      t5, 0x0018(v0)             # 00000304
    lw      t6, 0x0008(a1)             # 00000008
    sw      t6, 0x001C(v0)             # 00000308
    lw      t8, 0x0000(a1)             # 00000000
    sw      t8, 0x002C(v0)             # 00000318
    lw      t7, 0x0004(a1)             # 00000004
    sw      t7, 0x0030(v0)             # 0000031C
    lw      t8, 0x0008(a1)             # 00000008
    sw      t8, 0x0034(v0)             # 00000320
    lw      t0, 0x0000(a2)             # FFFFFFE4
    sw      t0, 0x0020(v0)             # 0000030C
    lw      t9, 0x0004(a2)             # FFFFFFE8
    sw      t9, 0x0024(v0)             # 00000310
    lw      t0, 0x0008(a2)             # FFFFFFEC
    sw      t0, 0x0028(v0)             # 00000314
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x003C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, %hi(var_80B7E420)     # $at = 80B80000
    lwc1    $f18, %lo(var_80B7E420)($at)
    sub.s   $f16, $f0, $f10
    lui     $at, %hi(var_80B7E424)     # $at = 80B80000
    lwc1    $f6, %lo(var_80B7E424)($at)
    lw      v0, 0x003C($sp)
    mul.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    b       lbl_80B7C304
    swc1    $f8, 0x0004(v0)            # 00000004
lbl_80B7C2F8:
    slti    $at, v1, 0x000F
lbl_80B7C2FC:
    bne     $at, $zero, lbl_80B7C240
    addiu   v0, v0, 0x0038             # v0 = 00000038
lbl_80B7C304:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B7C314:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a3, 0x003C($sp)
    addiu   a3, $sp, 0x0020            # a3 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    lui     t6, %hi(var_80B7E2D4)      # t6 = 80B80000
    addiu   t6, t6, %lo(var_80B7E2D4)  # t6 = 80B7E2D4
    lw      t8, 0x0000(t6)             # 80B7E2D4
    addiu   v1, a0, 0x02EC             # v1 = 000002EC
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    sw      t8, 0x0000(a3)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B7E2D8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sw      t7, 0x0004(a3)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B7E2DC
    sw      t8, 0x0008(a3)             # FFFFFFF8
lbl_80B7C354:
    lbu     t9, 0x0000(v1)             # 000002EC
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    beq     a0, t9, lbl_80B7C464
    sra     v0, v0, 16
    sb      t0, 0x0000(v1)             # 000002EC
    lw      t2, 0x0000(a1)             # 00000000
    sw      t2, 0x0014(v1)             # 00000300
    lw      t1, 0x0004(a1)             # 00000004
    sw      t1, 0x0018(v1)             # 00000304
    lw      t2, 0x0008(a1)             # 00000008
    sw      t2, 0x001C(v1)             # 00000308
    lw      t4, 0x0000(a3)             # FFFFFFF0
    sw      t4, 0x002C(v1)             # 00000318
    lw      t3, 0x0004(a3)             # FFFFFFF4
    sw      t3, 0x0030(v1)             # 0000031C
    lw      t4, 0x0008(a3)             # FFFFFFF8
    sw      t4, 0x0034(v1)             # 00000320
    lw      t6, 0x0000(a2)             # 00000000
    sw      t6, 0x0020(v1)             # 0000030C
    lw      t5, 0x0004(a2)             # 00000004
    sw      t5, 0x0024(v1)             # 00000310
    lw      t6, 0x0008(a2)             # 00000008
    sw      t6, 0x0028(v1)             # 00000314
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x002C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f0, $f2
    lw      v1, 0x002C($sp)
    add.s   $f6, $f4, $f2
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80B7C444
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80B7C438
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80B7C450
    or      t8, t8, $at                # t8 = 80000000
lbl_80B7C438:
    b       lbl_80B7C450
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8
lbl_80B7C444:
    nop
    bltz    t8, lbl_80B7C438
    nop
lbl_80B7C450:
    sb      t8, 0x000F(v1)             # 0000000F
    lwc1    $f10, 0x003C($sp)
    ctc1    t7, $f31
    b       lbl_80B7C470
    swc1    $f10, 0x0004(v1)           # 00000004
lbl_80B7C464:
    slti    $at, v0, 0x000F
    bne     $at, $zero, lbl_80B7C354
    addiu   v1, v1, 0x0038             # v1 = 00000038
lbl_80B7C470:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B7C480:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_80B7E428)     # $at = 80B80000
    lwc1    $f22, %lo(var_80B7E428)($at)
    lui     $at, %hi(var_80B7E42C)     # $at = 80B80000
    addiu   s0, a0, 0x02EC             # s0 = 000002EC
    lwc1    $f20, %lo(var_80B7E42C)($at)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80B7C4B8:
    lbu     t6, 0x0000(s0)             # 000002EC
    addiu   a0, s0, 0x0004             # a0 = 000002F0
    bnel    s2, t6, lbl_80B7C508
    addiu   s1, s1, 0x0001             # s1 = 00000001
    mfc1    a2, $f20
    mfc1    a3, $f22
    jal     func_80064280
    lw      a1, 0x0008(s0)             # 000002F4
    lbu     v0, 0x000F(s0)             # 000002FB
    slti    $at, v0, 0x0015
    bne     $at, $zero, lbl_80B7C4F0
    addiu   t7, v0, 0xFFEC             # t7 = FFFFFFEC
    b       lbl_80B7C4F4
    sb      t7, 0x000F(s0)             # 000002FB
lbl_80B7C4F0:
    sb      $zero, 0x000F(s0)          # 000002FB
lbl_80B7C4F4:
    lbu     t8, 0x000F(s0)             # 000002FB
    bnel    t8, $zero, lbl_80B7C508
    addiu   s1, s1, 0x0001             # s1 = 00000002
    sb      $zero, 0x0000(s0)          # 000002EC
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_80B7C508:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x000F
    bne     $at, $zero, lbl_80B7C4B8
    addiu   s0, s0, 0x0038             # s0 = 00000324
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B7C53C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0040($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_80B7E430)     # $at = 80B80000
    lwc1    $f26, %lo(var_80B7E430)($at)
    lui     $at, %hi(var_80B7E434)     # $at = 80B80000
    lwc1    $f24, %lo(var_80B7E434)($at)
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f22                  # $f22 = 0.25
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s0, s1, 0x02EC             # s0 = 000002EC
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x0003          # s3 = 00000003
lbl_80B7C594:
    lbu     t6, 0x0000(s0)             # 000002EC
    bnel    s3, t6, lbl_80B7C62C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f20
    lwc1    $f8, 0x002C(s0)            # 00000318
    sub.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0014(s0)           # 00000300
    mul.s   $f16, $f0, $f20
    lwc1    $f4, 0x0034(s0)            # 00000320
    lwc1    $f8, 0x0018(s0)            # 00000304
    lwc1    $f10, 0x0024(s0)           # 00000310
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0014             # a1 = 00000300
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sub.s   $f18, $f16, $f22
    add.s   $f16, $f8, $f10
    add.s   $f6, $f18, $f4
    swc1    $f16, 0x0018(s0)           # 00000304
    swc1    $f6, 0x001C(s0)            # 00000308
    lwc1    $f4, 0x0084(s1)            # 00000084
    lwc1    $f18, 0x0028(s1)           # 00000028
    lwc1    $f6, 0x0018(s0)            # 00000304
    add.s   $f2, $f18, $f4
    c.le.s  $f2, $f6
    nop
    bc1fl   lbl_80B7C62C
    addiu   s2, s2, 0x0001             # s2 = 00000002
    sb      $zero, 0x0000(s0)          # 000002EC
    swc1    $f2, 0x0018(s0)            # 00000304
    mfc1    a2, $f24
    mfc1    a3, $f26
    jal     func_80B7C150
    sw      t7, 0x0010($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_80B7C62C:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bne     $at, $zero, lbl_80B7C594
    addiu   s0, s0, 0x0038             # s0 = 00000324
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80B7C66C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0040($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     $at, %hi(var_80B7E438)     # $at = 80B80000
    lwc1    $f24, %lo(var_80B7E438)($at)
    lui     $at, %hi(var_80B7E43C)     # $at = 80B80000
    lwc1    $f22, %lo(var_80B7E43C)($at)
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f20                  # $f20 = -20.00
    mtc1    $zero, $f26                # $f26 = 0.00
    addiu   s0, s1, 0x02EC             # s0 = 000002EC
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x0002          # s3 = 00000002
lbl_80B7C6C0:
    lbu     t6, 0x0000(s0)             # 000002EC
    bnel    s3, t6, lbl_80B7C764
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lwc1    $f4, 0x0014(s0)            # 00000300
    lwc1    $f6, 0x0020(s0)            # 0000030C
    lwc1    $f0, 0x0024(s0)            # 00000310
    lwc1    $f10, 0x0018(s0)           # 00000304
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0028(s0)            # 00000314
    lwc1    $f18, 0x001C(s0)           # 00000308
    c.le.s  $f20, $f0
    swc1    $f8, 0x0014(s0)            # 00000300
    add.s   $f16, $f10, $f0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0014             # a1 = 00000300
    add.s   $f6, $f18, $f4
    swc1    $f16, 0x0018(s0)           # 00000304
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    bc1f    lbl_80B7C720
    swc1    $f6, 0x001C(s0)            # 00000308
    lwc1    $f8, 0x0030(s0)            # 0000031C
    add.s   $f10, $f0, $f8
    b       lbl_80B7C728
    swc1    $f10, 0x0024(s0)           # 00000310
lbl_80B7C720:
    swc1    $f20, 0x0024(s0)           # 00000310
    swc1    $f26, 0x0030(s0)           # 0000031C
lbl_80B7C728:
    lwc1    $f16, 0x0028(s1)           # 00000028
    lwc1    $f18, 0x0084(s1)           # 00000084
    lwc1    $f4, 0x0018(s0)            # 00000304
    add.s   $f0, $f16, $f18
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80B7C764
    addiu   s2, s2, 0x0001             # s2 = 00000002
    sb      $zero, 0x0000(s0)          # 000002EC
    swc1    $f0, 0x0018(s0)            # 00000304
    mfc1    a2, $f22
    mfc1    a3, $f24
    jal     func_80B7C150
    sw      t7, 0x0010($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000003
lbl_80B7C764:
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x000F
    bne     $at, $zero, lbl_80B7C6C0
    addiu   s0, s0, 0x0038             # s0 = 00000324
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80B7C7A4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x004C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x02EC             # s2 = 000002EC
    lw      t6, 0x004C($sp)
    or      s7, $zero, $zero           # s7 = 00000000
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s8, $zero, 0x0001          # s8 = 00000001
    lui     s6, 0xDE00                 # s6 = DE000000
lbl_80B7C808:
    lbu     t7, 0x0000(s2)             # 000002EC
    lui     s5, 0x0601                 # s5 = 06010000
    or      a3, $zero, $zero           # a3 = 00000000
    bnel    s8, t7, lbl_80B7C90C
    addiu   s4, s4, 0x0001             # s4 = 00000001
    bne     s7, $zero, lbl_80B7C880
    addiu   s5, s5, 0xC028             # s5 = 0600C028
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0xBFC0             # t1 = 0600BFC0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0x9B9B                 # t4 = 9B9B0000
    ori     t4, t4, 0x9B00             # t4 = 9B9B9B00
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    sll     s7, s8, 16
    sra     s7, s7, 16
lbl_80B7C880:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lbu     t8, 0x000F(s2)             # 000002FB
    or      t9, t8, $at                # t9 = FFFFFF08
    sw      t9, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0014(s2)           # 00000300
    lwc1    $f14, 0x0018(s2)           # 00000304
    jal     func_800AA7F4
    lw      a2, 0x001C(s2)             # 00000308
    lwc1    $f12, 0x0004(s2)           # 000002F0
    mov.s   $f14, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s3, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s3)             # 00000000
    lw      t2, 0x004C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t2)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000002
lbl_80B7C90C:
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x000F
    bne     $at, $zero, lbl_80B7C808
    addiu   s2, s2, 0x0038             # s2 = 00000324
    lw      $ra, 0x0044($sp)
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


func_80B7C954:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s6, 0x0038($sp)
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x02EC             # s2 = 000002EC
    lw      a0, 0x0000(s6)             # 00000000
    or      s7, $zero, $zero           # s7 = 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
lbl_80B7C9B0:
    lbu     t6, 0x0000(s2)             # 000002EC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     s5, 0x0600                 # s5 = 06000000
    bne     t6, $at, lbl_80B7CAB0
    addiu   s5, s5, 0x2350             # s5 = 06002350
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s7, $zero, lbl_80B7CA48
    addu    s3, s6, $at
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x22F0             # t8 = 060022F0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0x9696                 # t3 = 96960000
    ori     t3, t3, 0x9600             # t3 = 96969600
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    addiu   s7, $zero, 0x0001          # s7 = 00000001
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
lbl_80B7CA48:
    lwc1    $f12, 0x0014(s2)           # 00000300
    lwc1    $f14, 0x0018(s2)           # 00000304
    lw      a2, 0x001C(s2)             # 00000308
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800ABE54
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 000002F0
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s3, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_80B7CAB0:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x000F
    bne     $at, $zero, lbl_80B7C9B0
    addiu   s2, s2, 0x0038             # s2 = 00000324
    lw      $ra, 0x0044($sp)
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


func_80B7CAFC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s6, 0x0038($sp)
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   s2, a2, 0x02EC             # s2 = 000002EC
    lw      a0, 0x0000(s6)             # 00000000
    or      s7, $zero, $zero           # s7 = 00000000
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
lbl_80B7CB58:
    lbu     t6, 0x0000(s2)             # 000002EC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     s5, 0x0600                 # s5 = 06000000
    bne     t6, $at, lbl_80B7CC64
    addiu   s5, s5, 0x2510             # s5 = 06002510
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    bne     s7, $zero, lbl_80B7CBD4
    addu    s3, s6, $at
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x24A0             # t8 = 060024A0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t2, 0xFB00                 # t2 = FB000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xC8C8                 # t3 = C8C80000
    ori     t3, t3, 0xC800             # t3 = C8C8C800
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    addiu   s7, $zero, 0x0001          # s7 = 00000001
lbl_80B7CBD4:
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     $at, 0xB4B4                # $at = B4B40000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lbu     t7, 0x000F(s2)             # 000002FB
    ori     $at, $at, 0xB400           # $at = B4B4B400
    or      a3, $zero, $zero           # a3 = 00000000
    or      t8, t7, $at                # t8 = B4B4B408
    sw      t8, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0014(s2)           # 00000300
    lwc1    $f14, 0x0018(s2)           # 00000304
    jal     func_800AA7F4
    lw      a2, 0x001C(s2)             # 00000308
    jal     func_800ABE54
    or      a0, s3, $zero              # a0 = 00000000
    lwc1    $f12, 0x0004(s2)           # 000002F0
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      s8, 0x0000(s0)             # 00000000
lbl_80B7CC64:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x000F
    bne     $at, $zero, lbl_80B7CB58
    addiu   s2, s2, 0x0038             # s2 = 00000324
    lw      $ra, 0x0044($sp)
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


func_80B7CCB0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    sw      $ra, 0x001C($sp)
    sw      a3, 0x003C($sp)
    lui     t6, %hi(var_80B7E2E0)      # t6 = 80B80000
    addiu   t6, t6, %lo(var_80B7E2E0)  # t6 = 80B7E2E0
    lw      t8, 0x0000(t6)             # 80B7E2E0
    mfc1    a2, $f12
    mfc1    a3, $f14
    sw      t8, 0x0000(a1)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 80B7E2E4
    sw      t7, 0x0004(a1)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 80B7E2E8
    sw      t8, 0x0008(a1)             # FFFFFFFC
    lwc1    $f4, 0x0024(a0)            # 00000024
    lbu     t9, 0x003F($sp)
    swc1    $f4, 0x0024($sp)
    lwc1    $f8, 0x0084(a0)            # 00000084
    lwc1    $f6, 0x0028(a0)            # 00000028
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x002C(a0)           # 0000002C
    sw      t9, 0x0010($sp)
    jal     func_80B7C150
    swc1    $f16, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B7CD2C:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s1, 0x0048($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s5, 0x0058($sp)
    sw      s4, 0x0054($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f30, 0x0038($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f30                  # $f30 = 0.50
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f28                  # $f28 = 1.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f26                  # $f26 = 6.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f24                  # $f24 = 3.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, s1, 0x0024             # s3 = 00000024
    addiu   s5, $zero, 0x0014          # s5 = 00000014
    addiu   s4, $sp, 0x0070            # s4 = FFFFFFE8
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFF4
lbl_80B7CD9C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f4, $f0, $f28
    jal     func_800CDCCC              # Rand.Next() float
    add.s   $f20, $f4, $f30
    lui     $at, %hi(var_80B7E440)     # $at = 80B80000
    lwc1    $f6, %lo(var_80B7E440)($at)
    mul.s   $f22, $f0, $f6
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f24
    mov.s   $f12, $f22
    add.s   $f10, $f8, $f24
    jal     func_800CF470
    swc1    $f10, 0x0074($sp)
    mul.s   $f16, $f0, $f20
    mov.s   $f12, $f22
    jal     func_800D2CD0
    swc1    $f16, 0x0070($sp)
    mul.s   $f18, $f0, $f20
    lui     a3, 0x3DA3                 # a3 = 3DA30000
    ori     a3, a3, 0xD70A             # a3 = 3DA3D70A
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    swc1    $f18, 0x0078($sp)
    lw      t7, 0x0000(s3)             # 00000024
    sw      t7, 0x0000(s2)             # FFFFFFF4
    lw      t6, 0x0004(s3)             # 00000028
    sw      t6, 0x0004(s2)             # FFFFFFF8
    lw      t7, 0x0008(s3)             # 0000002C
    sw      t7, 0x0008(s2)             # FFFFFFFC
    lwc1    $f6, 0x0070($sp)
    lwc1    $f18, 0x0078($sp)
    lwc1    $f4, 0x007C($sp)
    mul.s   $f8, $f6, $f26
    lwc1    $f16, 0x0084($sp)
    mul.s   $f6, $f18, $f26
    add.s   $f10, $f4, $f8
    lwc1    $f8, 0x0080($sp)
    add.s   $f4, $f16, $f6
    swc1    $f10, 0x007C($sp)
    swc1    $f4, 0x0084($sp)
    lwc1    $f10, 0x0084(s1)           # 00000084
    add.s   $f18, $f8, $f10
    jal     func_80B7C314
    swc1    $f18, 0x0080($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_80B7CD9C
    nop
    lw      $ra, 0x005C($sp)
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
    lw      s4, 0x0054($sp)
    lw      s5, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_80B7CEA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    beq     v0, $zero, lbl_80B7CEC4
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    b       lbl_80B7D104
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B7CEC4:
    lw      t6, 0x001C($sp)
    lh      t7, 0x001C(t6)             # 0000001C
    andi    t8, t7, 0x003F             # t8 = 00000000
    sltiu   $at, t8, 0x0009
    beq     $at, $zero, lbl_80B7D100
    sll     t8, t8,  2
    lui     $at, %hi(var_80B7E444)     # $at = 80B80000
    addu    $at, $at, t8
    lw      t8, %lo(var_80B7E444)($at)
    jr      t8
    nop
var_80B7CEF0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x0EDA(v1)             # 8011B4AA
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402A          # v0 = 0000402A
var_80B7CF10:
    b       lbl_80B7D104
    addiu   v0, $zero, 0x4020          # v0 = 00004020
var_80B7CF18:
    b       lbl_80B7D104
    addiu   v0, $zero, 0x4021          # v0 = 00004021
var_80B7CF20:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t1, 0x8010                 # t1 = 80100000
    lw      t1, -0x73C0(t1)            # 800F8C40
    lw      t2, 0x00A4(v1)             # 8011A674
    and     t3, t1, t2
    beql    t3, $zero, lbl_80B7CF4C
    lhu     t4, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402D          # v0 = 0000402D
    lhu     t4, 0x0EDA(v1)             # 8011B4AA
lbl_80B7CF4C:
    andi    t5, t4, 0x0001             # t5 = 00000000
    beql    t5, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x4007          # v0 = 00004007
var_80B7CF60:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C0(t6)            # 800F8C40
    lw      t7, 0x00A4(v1)             # 8011A674
    and     t8, t6, t7
    beql    t8, $zero, lbl_80B7CF8C
    lhu     t9, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402E          # v0 = 0000402E
    lhu     t9, 0x0EDA(v1)             # 8011B4AA
lbl_80B7CF8C:
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    lhu     t1, 0x0F1C(v1)             # 8011B4EC
    addiu   v1, $zero, 0x4008          # v1 = 00004008
    andi    t2, t1, 0x0010             # t2 = 00000000
    beq     t2, $zero, lbl_80B7CFB8
    nop
    addiu   v1, $zero, 0x4009          # v1 = 00004009
    b       lbl_80B7D104
    andi    v0, v1, 0xFFFF             # v0 = 00004009
lbl_80B7CFB8:
    b       lbl_80B7D104
    andi    v0, v1, 0xFFFF             # v0 = 00004009
var_80B7CFC0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t3, 0x8010                 # t3 = 80100000
    lw      t3, -0x73C0(t3)            # 800F8C40
    lw      t4, 0x00A4(v1)             # 8011A674
    and     t5, t3, t4
    beql    t5, $zero, lbl_80B7CFEC
    lhu     v0, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402D          # v0 = 0000402D
    lhu     v0, 0x0EDA(v1)             # 8011B4AA
lbl_80B7CFEC:
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80B7D020
    andi    t9, v0, 0x0001             # t9 = 00000001
    lhu     t7, 0x0F1C(v1)             # 8011B4EC
    addiu   v1, $zero, 0x402F          # v1 = 0000402F
    andi    t8, t7, 0x0200             # t8 = 00000000
    beq     t8, $zero, lbl_80B7D018
    nop
    addiu   v1, $zero, 0x400B          # v1 = 0000400B
    b       lbl_80B7D104
    andi    v0, v1, 0xFFFF             # v0 = 0000400B
lbl_80B7D018:
    b       lbl_80B7D104
    andi    v0, v1, 0xFFFF             # v0 = 0000400B
lbl_80B7D020:
    beql    t9, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x400A          # v0 = 0000400A
var_80B7D030:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x73C0(t0)            # 800F8C40
    lw      t1, 0x00A4(v1)             # 8011A674
    and     t2, t0, t1
    beql    t2, $zero, lbl_80B7D05C
    lhu     t3, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402E          # v0 = 0000402E
    lhu     t3, 0x0EDA(v1)             # 8011B4AA
lbl_80B7D05C:
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x400C          # v0 = 0000400C
var_80B7D070:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t5, 0x8010                 # t5 = 80100000
    lw      t5, -0x73C0(t5)            # 800F8C40
    lw      t6, 0x00A4(v1)             # 8011A674
    and     t7, t5, t6
    beql    t7, $zero, lbl_80B7D09C
    lhu     v0, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402D          # v0 = 0000402D
    lhu     v0, 0x0EDA(v1)             # 8011B4AA
lbl_80B7D09C:
    andi    t8, v0, 0x0008             # t8 = 00000008
    beq     t8, $zero, lbl_80B7D0B0
    andi    t9, v0, 0x0001             # t9 = 00000001
    b       lbl_80B7D104
    addiu   v0, $zero, 0x4010          # v0 = 00004010
lbl_80B7D0B0:
    beql    t9, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x400F          # v0 = 0000400F
var_80B7D0C0:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    lw      t0, -0x73C0(t0)            # 800F8C40
    lw      t1, 0x00A4(v1)             # 8011A674
    and     t2, t0, t1
    beql    t2, $zero, lbl_80B7D0EC
    lhu     t3, 0x0EDA(v1)             # 8011B4AA
    b       lbl_80B7D104
    addiu   v0, $zero, 0x402E          # v0 = 0000402E
    lhu     t3, 0x0EDA(v1)             # 8011B4AA
lbl_80B7D0EC:
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80B7D104
    addiu   v0, $zero, 0x4006          # v0 = 00004006
    b       lbl_80B7D104
    addiu   v0, $zero, 0x4011          # v0 = 00004011
lbl_80B7D100:
    addiu   v0, $zero, 0x4006          # v0 = 00004006
lbl_80B7D104:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B7D114:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    sw      a2, 0x0018($sp)
    jal     func_800DD464
    sw      a3, 0x001C($sp)
    sltiu   $at, v0, 0x000A
    lw      a2, 0x0018($sp)
    beq     $at, $zero, lbl_80B7D264
    lw      a3, 0x001C($sp)
    sll     t6, v0,  2
    lui     $at, %hi(var_80B7E468)     # $at = 80B80000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B7E468)($at)
    jr      t6
    nop
var_80B7D15C:
    b       lbl_80B7D268
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80B7D164:
    lhu     v0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x4008         # $at = 00004008
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $at, lbl_80B7D1A8
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    addiu   $at, $zero, 0x4020         # $at = 00004020
    beq     v0, $at, lbl_80B7D1A0
    addiu   $at, $zero, 0x4021         # $at = 00004021
    beq     v0, $at, lbl_80B7D1A0
    addiu   $at, $zero, 0x402F         # $at = 0000402F
    beq     v0, $at, lbl_80B7D1B8
    lui     v1, 0x8012                 # v1 = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    b       lbl_80B7D1C8
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
lbl_80B7D1A0:
    b       lbl_80B7D268
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B7D1A8:
    lhu     t7, 0x0F1C(v1)             # 8011B4EC
    ori     t8, t7, 0x0010             # t8 = 00000010
    b       lbl_80B7D1C8
    sh      t8, 0x0F1C(v1)             # 8011B4EC
lbl_80B7D1B8:
    addiu   v1, v1, 0xA5D0             # v1 = 80114BA0
    lhu     t9, 0x0F1C(v1)             # 80115ABC
    ori     t0, t9, 0x0200             # t0 = 00000200
    sh      t0, 0x0F1C(v1)             # 80115ABC
lbl_80B7D1C8:
    lhu     t1, 0x0EDA(v1)             # 80115A7A
    or      v0, $zero, $zero           # v0 = 00000000
    ori     t2, t1, 0x0001             # t2 = 00000001
    b       lbl_80B7D268
    sh      t2, 0x0EDA(v1)             # 80115A7A
var_80B7D1DC:
    or      a0, a2, $zero              # a0 = 00000000
    sw      a2, 0x0018($sp)
    jal     func_800D6110
    sw      a3, 0x001C($sp)
    lw      a2, 0x0018($sp)
    bne     v0, $zero, lbl_80B7D200
    lw      a3, 0x001C($sp)
    b       lbl_80B7D268
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B7D200:
    lhu     t3, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x400C         # $at = 0000400C
    lui     t4, 0x0001                 # t4 = 00010000
    bne     t3, $at, lbl_80B7D23C
    addu    t4, t4, a2
    lbu     t4, 0x04BD(t4)             # 000104BD
    addiu   t6, $zero, 0x400E          # t6 = 0000400E
    addiu   t5, $zero, 0x400D          # t5 = 0000400D
    bne     t4, $zero, lbl_80B7D230
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_80B7D234
    sh      t5, 0x010E(a3)             # 0000010E
lbl_80B7D230:
    sh      t6, 0x010E(a3)             # 0000010E
lbl_80B7D234:
    jal     func_800DCE80
    lhu     a1, 0x010E(a3)             # 0000010E
lbl_80B7D23C:
    b       lbl_80B7D268
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80B7D244:
    jal     func_800D6110
    or      a0, a2, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80B7D25C
    nop
    b       lbl_80B7D268
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B7D25C:
    b       lbl_80B7D268
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B7D264:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B7D268:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B7D278:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x0642(a2)             # 00000642
    bne     v0, $zero, lbl_80B7D298
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80B7D2A0
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B7D298:
    sh      t6, 0x0642(a2)             # 00000642
    lh      v1, 0x0642(a2)             # 00000642
lbl_80B7D2A0:
    bnel    v1, $zero, lbl_80B7D2E4
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0644(a2)             # 00000644
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0644(a2)             # 00000644
    lh      t9, 0x0644(a2)             # 00000644
    slti    $at, t9, 0x0003
    bnel    $at, $zero, lbl_80B7D2E4
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x0642(a2)             # 00000642
    sh      $zero, 0x0644(a2)          # 00000644
    lw      $ra, 0x0014($sp)
lbl_80B7D2E4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B7D2F0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      t0, 0x0180(s0)             # 00000180
    lui     t9, %hi(func_80B7D780)     # t9 = 80B80000
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   t9, t9, %lo(func_80B7D780) # t9 = 80B7D780
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t8, 0x0024(v0)             # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      t8, 0x019C(s0)             # 0000019C
    lw      t7, 0x0028(v0)             # 00000028
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    sw      t7, 0x01A0(s0)             # 000001A0
    lw      t8, 0x002C(v0)             # 0000002C
    bne     t9, t0, lbl_80B7D370
    sw      t8, 0x01A4(s0)             # 000001A4
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    lui     $at, 0xC120                # $at = C1200000
    beql    t1, $zero, lbl_80B7D368
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    b       lbl_80B7D378
    swc1    $f4, 0x0198(s0)            # 00000198
    mtc1    $at, $f6                   # $f6 = 10.00
lbl_80B7D368:
    b       lbl_80B7D378
    swc1    $f6, 0x0198(s0)            # 00000198
lbl_80B7D370:
    lwc1    $f8, 0x0028(s0)            # 00000028
    swc1    $f8, 0x01A0(s0)            # 000001A0
lbl_80B7D378:
    lh      a3, 0x063C(s0)             # 0000063C
    jal     func_80027854
    sw      a1, 0x0028($sp)
    lbu     t2, 0x01F8(s0)             # 000001F8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0034($sp)
    bne     t2, $at, lbl_80B7D3BC
    or      a1, s0, $zero              # a1 = 00000000
    lui     t3, %hi(func_80B7CEA0)     # t3 = 80B80000
    lui     t4, %hi(func_80B7D114)     # t4 = 80B80000
    addiu   t4, t4, %lo(func_80B7D114) # t4 = 80B7D114
    addiu   t3, t3, %lo(func_80B7CEA0) # t3 = 80B7CEA0
    lw      a3, 0x0634(s0)             # 00000634
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    jal     func_800271FC
    lw      a2, 0x0028($sp)
lbl_80B7D3BC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B7D3D0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lwc1    $f4, 0x0024(a2)            # 00000024
    lw      v0, 0x1C44(a3)             # 00001C44
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    swc1    $f4, 0x0020($sp)
    lwc1    $f8, 0x0084(a2)            # 00000084
    lwc1    $f6, 0x0028(a2)            # 00000028
    addiu   a1, v0, 0x0024             # a1 = 00000024
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0024($sp)
    lwc1    $f16, 0x002C(a2)           # 0000002C
    sw      v0, 0x002C($sp)
    jal     func_80063EB8
    swc1    $f16, 0x0028($sp)
    lw      v0, 0x002C($sp)
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f6                   # $f6 = 240.00
    lwc1    $f4, 0x0024($sp)
    lwc1    $f18, 0x0028(v0)           # 00000028
    mov.s   $f2, $f0
    c.lt.s  $f2, $f6
    lui     $at, 0x42A0                # $at = 42A00000
    sub.s   $f0, $f18, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    bc1f    lbl_80B7D468
    abs.s   $f0, $f0
    mtc1    $at, $f8                   # $f8 = 80.00
    nop
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80B7D468
    nop
    b       lbl_80B7D468
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B7D468:
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B7D470:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0598             # a1 = 06000598
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      v1, 0x0144(a3)             # 00000144
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     a1, v1, lbl_80B7D4A0
    addiu   t6, t6, 0x0D48             # t6 = 06000D48
    bnel    t6, v1, lbl_80B7D4CC
    lh      v0, 0x0184(a3)             # 00000184
lbl_80B7D4A0:
    lh      t7, 0x0184(a3)             # 00000184
    bnel    t7, $zero, lbl_80B7D4CC
    lh      v0, 0x0184(a3)             # 00000184
    lw      t9, 0x0180(a3)             # 00000180
    lui     t8, %hi(func_80B7D780)     # t8 = 80B80000
    addiu   t8, t8, %lo(func_80B7D780) # t8 = 80B7D780
    bne     t8, t9, lbl_80B7D4C8
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    b       lbl_80B7D4C8
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80B7D4C8:
    lh      v0, 0x0184(a3)             # 00000184
lbl_80B7D4CC:
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_80B7D4F4
    nop
    lhu     t0, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x4006         # $at = 00004006
    bne     t0, $at, lbl_80B7D4F4
    nop
    beq     a1, v1, lbl_80B7D4F4
    nop
    addiu   a2, $zero, 0x0006          # a2 = 00000006
lbl_80B7D4F4:
    beq     v0, $zero, lbl_80B7D51C
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    lhu     t1, 0x010E(a3)             # 0000010E
    addiu   $at, $zero, 0x4007         # $at = 00004007
    lui     t2, 0x0600                 # t2 = 06000000
    bne     t1, $at, lbl_80B7D51C
    addiu   t2, t2, 0x0D48             # t2 = 06000D48
    beql    t2, v1, lbl_80B7D520
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   a2, $zero, 0x0007          # a2 = 00000007
lbl_80B7D51C:
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80B7D520:
    beq     a2, $at, lbl_80B7D558
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    sw      a2, 0x001C($sp)
    jal     func_80027C98
    sw      a3, 0x0020($sp)
    lw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a3, 0x0020($sp)
    bnel    a2, $at, lbl_80B7D55C
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x014C(a3)            # 0000014C
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f4, 0x0154(a3)            # 00000154
    swc1    $f6, 0x0158(a3)            # 00000158
lbl_80B7D558:
    lw      $ra, 0x0014($sp)
lbl_80B7D55C:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B7D568:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    mfc1    a1, $f0
    mfc1    a3, $f0
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x01FA             # t6 = 000001FA
    addiu   t7, s0, 0x0272             # t7 = 00000272
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0xBFA8             # a2 = 0600BFA8
    sw      a1, 0x0038($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a1, s0, 0x01AC             # a1 = 000001AC
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80B7E2EC)      # a3 = 80B80000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B7E2EC)  # a3 = 80B7E2EC
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B7E318)      # a2 = 80B80000
    addiu   a2, a2, %lo(var_80B7E318)  # a2 = 80B7E318
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    bne     t9, $zero, lbl_80B7D640
    lw      a0, 0x0038($sp)
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    andi    t1, t0, 0x003F             # t1 = 00000000
    bne     t1, $at, lbl_80B7D640
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B7D760
    lw      $ra, 0x002C($sp)
lbl_80B7D640:
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t5, 0x01EE(s0)             # 000001EE
    lh      t3, 0x01EC(s0)             # 000001EC
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 30.00
    cvt.s.w $f16, $f10
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    cvt.s.w $f0, $f4
    mul.s   $f4, $f16, $f18
    sb      t2, 0x001F(s0)             # 0000001F
    sh      t4, 0x063C(s0)             # 0000063C
    sb      $zero, 0x01F8(s0)          # 000001F8
    sh      $zero, 0x0184(s0)          # 00000184
    add.s   $f8, $f0, $f6
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a2, $f4
    mfc1    a3, $f0
    swc1    $f8, 0x0634(s0)            # 00000634
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f10                  # $f10 = 54.00
    lwc1    $f8, 0x0084(s0)            # 00000084
    lui     t9, 0x8002                 # t9 = 80020000
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    c.lt.s  $f8, $f10
    addiu   t9, t9, 0xEFF4             # t9 = 8001EFF4
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    bc1tl   lbl_80B7D70C
    lui     $at, 0x41C0                # $at = 41C00000
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lui     t4, %hi(func_80B7D864)     # t4 = 80B80000
    andi    t8, t7, 0x003F             # t8 = 00000000
    bne     t8, $at, lbl_80B7D748
    addiu   t4, t4, %lo(func_80B7D864) # t4 = 80B7D864
    lui     $at, 0x41C0                # $at = 41C00000
lbl_80B7D70C:
    mtc1    $at, $f16                  # $f16 = 24.00
    sw      t9, 0x00C0(s0)             # 000000C0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    swc1    $f16, 0x00C4(s0)           # 000000C4
    jal     func_80027C98
    lw      a0, 0x0038($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    lui     t1, %hi(func_80B7D780)     # t1 = 80B80000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_80B7D780) # t1 = 80B7D780
    sb      t0, 0x01F8(s0)             # 000001F8
    sw      t1, 0x0180(s0)             # 00000180
    b       lbl_80B7D75C
    swc1    $f18, 0x0638(s0)           # 00000638
lbl_80B7D748:
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t4, 0x0180(s0)             # 00000180
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
lbl_80B7D75C:
    lw      $ra, 0x002C($sp)
lbl_80B7D760:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B7D770:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80B7D780:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, s0, 0x0646             # a1 = 00000646
    addiu   a2, s0, 0x066E             # a2 = 0000066E
    jal     func_80027D30
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    jal     func_80B7D470
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x0184(s0)             # 00000184
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    beql    t6, $zero, lbl_80B7D7CC
    lh      t8, 0x008A(s0)             # 0000008A
    b       lbl_80B7D850
    sh      t7, 0x063C(s0)             # 0000063C
    lh      t8, 0x008A(s0)             # 0000008A
lbl_80B7D7CC:
    lh      t9, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f8                    # $f8 = 0.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    sub.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B7D814
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_80B7D81C
    sra     v1, v1, 16
lbl_80B7D814:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80B7D81C:
    slti    $at, v1, 0x4718
    beql    $at, $zero, lbl_80B7D850
    sh      t3, 0x063C(s0)             # 0000063C
    jal     func_80B7D3D0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80B7D844
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    b       lbl_80B7D850
    sh      t1, 0x063C(s0)             # 0000063C
lbl_80B7D844:
    b       lbl_80B7D850
    sh      t2, 0x063C(s0)             # 0000063C
    sh      t3, 0x063C(s0)             # 0000063C
lbl_80B7D850:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B7D864:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B7D3D0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B7D894
    lw      a0, 0x0018($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     t6, %hi(func_80B7D8A4)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7D8A4) # t6 = 80B7D8A4
    sw      t6, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0060(a0)            # 00000060
lbl_80B7D894:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B7D8A4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f4                   # $f4 = 54.00
    lwc1    $f0, 0x0084(s0)            # 00000084
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B7D934
    mtc1    $at, $f10                  # $f10 = 80.00
    jal     func_80022FD0
    addiu   a1, $zero, 0x2808          # a1 = 00002808
    jal     func_80B7CD2C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 255.00
    lui     t8, %hi(func_80B7D988)     # t8 = 80B80000
    addiu   t8, t8, %lo(func_80B7D988) # t8 = 80B7D988
    ori     t7, t6, 0x0001             # t7 = 00000001
    sw      t7, 0x0004(s0)             # 00000004
    sw      t8, 0x0180(s0)             # 00000180
    swc1    $f6, 0x0060(s0)            # 00000060
    b       lbl_80B7D974
    swc1    $f8, 0x0638(s0)            # 00000638
    mtc1    $at, $f10                  # $f10 = 255.00
lbl_80B7D934:
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    c.lt.s  $f0, $f10
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x4000                 # a1 = 40000000
    lui     a3, 0x3F19                 # a3 = 3F190000
    bc1fl   lbl_80B7D978
    lw      $ra, 0x001C($sp)
    jal     func_80064280
    ori     a3, a3, 0x999A             # a3 = 3F19999A
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0638             # a0 = 00000638
    lui     a1, 0x437F                 # a1 = 437F0000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
lbl_80B7D974:
    lw      $ra, 0x001C($sp)
lbl_80B7D978:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B7D988:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0646             # a1 = 00000646
    addiu   a2, s0, 0x066E             # a2 = 0000066E
    jal     func_80027D30
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B7D9DC
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t6, 0x01F8(s0)             # 000001F8
    sh      t7, 0x063C(s0)             # 0000063C
    swc1    $f4, 0x0158(s0)            # 00000158
lbl_80B7D9DC:
    jal     func_80B7D470
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4258                # $at = 42580000
    mtc1    $at, $f8                   # $f8 = 54.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    c.lt.s  $f6, $f8
    lui     $at, %hi(var_80B7E494)     # $at = 80B80000
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    bc1f    lbl_80B7DA1C
    nop
    lui     $at, %hi(var_80B7E490)     # $at = 80B80000
    b       lbl_80B7DA20
    lwc1    $f0, %lo(var_80B7E490)($at)
lbl_80B7DA1C:
    lwc1    $f0, %lo(var_80B7E494)($at)
lbl_80B7DA20:
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    lh      v0, 0x063E(s0)             # 0000063E
    lui     $at, %hi(var_80B7E498)     # $at = 80B80000
    lwc1    $f0, %lo(var_80B7E498)($at)
    beq     v0, $zero, lbl_80B7DA7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x063E(s0)             # 0000063E
    lh      v0, 0x063E(s0)             # 0000063E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80B7DA68
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B7DA98
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B7DA68:
    mfc1    a1, $f0
    jal     func_80B7CCB0
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    b       lbl_80B7DA98
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B7DA7C:
    mfc1    a1, $f0
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80B7CCB0
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    sh      t9, 0x063E(s0)             # 0000063E
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B7DA98:
    jal     func_80B7D3D0
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_80B7DAB8
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    jal     func_80063BF0
    addiu   a1, $zero, 0x0028          # a1 = 00000028
    b       lbl_80B7DB24
    sh      v0, 0x0640(s0)             # 00000640
lbl_80B7DAB8:
    lh      v0, 0x0640(s0)             # 00000640
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    bne     v0, $zero, lbl_80B7DAD4
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    b       lbl_80B7DADC
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80B7DAD4:
    sh      t0, 0x0640(s0)             # 00000640
    lh      v1, 0x0640(s0)             # 00000640
lbl_80B7DADC:
    bne     v1, $zero, lbl_80B7DB24
    lw      a0, 0x0020($sp)
    jal     func_80027C98
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lwc1    $f0, 0x014C(s0)            # 0000014C
    lui     $at, 0xBF80                # $at = BF800000
    lwc1    $f2, 0x0148(s0)            # 00000148
    mtc1    $at, $f10                  # $f10 = -1.00
    lui     t2, %hi(func_80B7DB38)     # t2 = 80B80000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, t2, %lo(func_80B7DB38) # t2 = 80B7DB38
    sb      $zero, 0x01F8(s0)          # 000001F8
    sh      t1, 0x063C(s0)             # 0000063C
    sw      t2, 0x0180(s0)             # 00000180
    swc1    $f0, 0x0148(s0)            # 00000148
    swc1    $f0, 0x0154(s0)            # 00000154
    swc1    $f2, 0x014C(s0)            # 0000014C
    swc1    $f10, 0x0158(s0)           # 00000158
lbl_80B7DB24:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B7DB38:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a1, 0x014C(s0)             # 0000014C
    jal     func_8008D6A8
    sw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80B7DB98
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2809          # a1 = 00002809
    jal     func_80B7CD2C
    or      a0, s0, $zero              # a0 = 00000000
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    mtc1    $zero, $f6                 # $f6 = 0.00
    and     t7, t6, $at
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    sw      t7, 0x0004(s0)             # 00000004
    swc1    $f6, 0x0158(s0)            # 00000158
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80B7DB98:
    mtc1    $zero, $f8                 # $f8 = 0.00
    lwc1    $f10, 0x0158(s0)           # 00000158
    lui     $at, 0x42A0                # $at = 42A00000
    c.lt.s  $f8, $f10
    nop
    bc1tl   lbl_80B7DC70
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f16                  # $f16 = 80.00
    lwc1    $f18, 0x0084(s0)           # 00000084
    lui     a2, 0x3ECC                 # a2 = 3ECC0000
    ori     a2, a2, 0xCCCD             # a2 = 3ECCCCCD
    c.lt.s  $f16, $f18
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0xBF80                 # a1 = BF800000
    lui     a3, 0x3F19                 # a3 = 3F190000
    bc1t    lbl_80B7DBEC
    nop
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80B7DC10
    lwc1    $f4, 0x0638(s0)            # 00000638
lbl_80B7DBEC:
    jal     func_80064280
    ori     a3, a3, 0x999A             # a3 = 3F19999A
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0638             # a0 = 00000638
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80064280
    lui     a3, 0x4120                 # a3 = 41200000
    lwc1    $f4, 0x0638(s0)            # 00000638
lbl_80B7DC10:
    lui     a1, %hi(var_80B7E344)      # a1 = 80B80000
    addiu   a1, a1, %lo(var_80B7E344)  # a1 = 80B7E344
    trunc.w.s $f6, $f4
    lw      a0, 0x0024($sp)
    mfc1    t1, $f6
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    bnel    t3, $zero, lbl_80B7DC70
    lw      $ra, 0x001C($sp)
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t5, 0x0008(s0)             # 00000008
    lw      t4, 0x000C(s0)             # 0000000C
    mtc1    $zero, $f8                 # $f8 = 0.00
    sw      t5, 0x0024(s0)             # 00000024
    lw      t5, 0x0010(s0)             # 00000010
    lui     t6, %hi(func_80B7D864)     # t6 = 80B80000
    addiu   t6, t6, %lo(func_80B7D864) # t6 = 80B7D864
    sw      t6, 0x0180(s0)             # 00000180
    sw      t4, 0x0028(s0)             # 00000028
    swc1    $f8, 0x0638(s0)            # 00000638
    sw      t5, 0x002C(s0)             # 0000002C
    lw      $ra, 0x001C($sp)
lbl_80B7DC70:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B7DC80:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lwc1    $f4, 0x0638(s0)            # 00000638
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    beq     t7, $zero, lbl_80B7DCBC
    nop
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80B7D278
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B7DCBC:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x01EE(s0)             # 000001EE
    lh      t8, 0x01EC(s0)             # 000001EC
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = 0.25
    mtc1    t8, $f8                    # $f8 = 0.00
    cvt.s.w $f16, $f10
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sw      t0, 0x0014($sp)
    lw      a0, 0x004C($sp)
    cvt.s.w $f8, $f8
    mul.s   $f4, $f16, $f18
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f6, 0x0010($sp)
    mfc1    a2, $f8
    mfc1    a3, $f4
    jal     func_80021E6C
    nop
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7D2F0
    lw      a1, 0x004C($sp)
    lw      t1, 0x004C($sp)
    lw      t2, 0x009C(t1)             # 0000009C
    andi    t3, t2, 0x0008             # t3 = 00000000
    beql    t3, $zero, lbl_80B7DDF4
    lwc1    $f16, 0x0638(s0)           # 00000638
    lw      t6, 0x0024(s0)             # 00000024
    addiu   t4, $sp, 0x0034            # t4 = FFFFFFEC
    sw      t6, 0x0000(t4)             # FFFFFFEC
    lw      t5, 0x0028(s0)             # 00000028
    sw      t5, 0x0004(t4)             # FFFFFFF0
    lw      t6, 0x002C(s0)             # 0000002C
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x0008(t4)             # FFFFFFF4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    sub.s   $f10, $f0, $f8
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f4                   # $f4 = 18.00
    lwc1    $f8, 0x0038($sp)
    mul.s   $f18, $f10, $f16
    add.s   $f6, $f18, $f4
    add.s   $f10, $f8, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0038($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f4                   # $f4 = 28.00
    sub.s   $f18, $f0, $f16
    lwc1    $f6, 0x0034($sp)
    mul.s   $f8, $f18, $f4
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f4                   # $f4 = 28.00
    sub.s   $f18, $f0, $f16
    lwc1    $f8, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFEC
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f8, $f6
    jal     func_80B7C1E4
    swc1    $f10, 0x003C($sp)
    lwc1    $f16, 0x0638(s0)           # 00000638
lbl_80B7DDF4:
    addiu   a2, s0, 0x01AC             # a2 = 000001AC
    or      a1, a2, $zero              # a1 = 000001AC
    trunc.w.s $f18, $f16
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    t8, $f18
    nop
    beq     t8, $zero, lbl_80B7DE34
    nop
    jal     func_80050B00
    sw      a2, 0x002C($sp)
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
lbl_80B7DE34:
    jal     func_80B7C480
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7C53C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7C66C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B7DE60:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bnel    s0, $at, lbl_80B7DF3C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x44E1                # $at = 44E10000
    mtc1    $at, $f12                  # $f12 = 1800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x004C($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t9, 0x018C(t7)             # 0000018C
    lwr     t9, 0x018F(t7)             # 0000018F
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80B7E49C)     # $at = 80B80000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lhu     t9, 0x0190(t7)             # 00000190
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t9, 0x0004(t6)             # FFFFFFF8
    lh      t0, 0x002E($sp)
    lwc1    $f16, %lo(var_80B7E49C)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t1, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B7E4A0)     # $at = 80B80000
    lwc1    $f10, %lo(var_80B7E4A0)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC4E1                # $at = C4E10000
    mtc1    $at, $f12                  # $f12 = -1800.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80B7DF3C:
    bne     s0, $at, lbl_80B7DFC4
    lw      t3, 0x004C($sp)
    lwl     t5, 0x0192(t3)             # 00000192
    lwr     t5, 0x0195(t3)             # 00000195
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t5, 0x0000(t2)             # FFFFFFF4
    lhu     t5, 0x0196(t3)             # 00000196
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80B7E4A4)     # $at = 80B80000
    sh      t5, 0x0004(t2)             # FFFFFFF8
    lh      t6, 0x002E($sp)
    lwc1    $f8, %lo(var_80B7E4A4)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t7, $zero, t6
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t8, 0x002C($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t8, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B7E4A8)     # $at = 80B80000
    lwc1    $f6, %lo(var_80B7E4A8)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    nop
lbl_80B7DFC4:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     s0, $at, lbl_80B7DFE0
    lw      t9, 0x004C($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     s0, $at, lbl_80B7DFE0
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     s0, $at, lbl_80B7E068
lbl_80B7DFE0:
    sll     t0, s0,  1
    addu    v1, t9, t0
    lh      a0, 0x0646(v1)             # 00000646
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t1, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t3, $f6
    nop
    sh      t3, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x066E(v1)             # 0000066E
    lw      v0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t4, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    sh      t6, 0x0004(v0)             # 00000004
lbl_80B7E068:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B7E080:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80B7E404)      # t6 = 80B80000
    addiu   t6, t6, %lo(var_80B7E404)  # t6 = 80B7E404
    lw      t8, 0x0000(t6)             # 80B7E404
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B7E408
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B7E40C
    bne     a1, $at, lbl_80B7E0CC
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80B7E0CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B7E0DC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     t7, %hi(var_80B7E410)      # t7 = 80B80000
    addiu   t7, t7, %lo(var_80B7E410)  # t7 = 80B7E410
    lw      t9, 0x0000(t7)             # 80B7E410
    addiu   t6, $sp, 0x0040            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80B7E414
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80B7E418
    sw      t8, 0x0004(t6)             # FFFFFFF4
    jal     func_800AA6EC
    sw      t9, 0x0008(t6)             # FFFFFFF8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7C7A4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7C954
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B7CAFC
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800AA724
    nop
    lwc1    $f0, 0x0638(s0)            # 00000638
    lui     $at, 0x437F                # $at = 437F0000
    trunc.w.s $f4, $f0
    mfc1    t3, $f4
    nop
    beql    t3, $zero, lbl_80B7E2A0
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f6                   # $f6 = 255.00
    lw      t1, 0x0000(s1)             # 00000000
    c.eq.s  $f6, $f0
    nop
    bc1fl   lbl_80B7E214
    lw      v1, 0x02D0(t1)             # 000002D0
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(t1)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lh      t6, 0x0644(s0)             # 00000644
    lui     t4, 0x8012                 # t4 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, t6,  2
    addu    t0, $sp, t7
    lw      t0, 0x0040(t0)             # 00000040
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, t0,  4
    srl     t2, t9, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t8, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t8, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(v1)             # 00000004
    sw      s0, 0x0010($sp)
    lwc1    $f8, 0x0638(s0)            # 00000638
    lui     a2, %hi(func_80B7DE60)     # a2 = 80B80000
    lui     a3, %hi(func_80B7E080)     # a3 = 80B80000
    trunc.w.s $f10, $f8
    addiu   a3, a3, %lo(func_80B7E080) # a3 = 80B7E080
    addiu   a2, a2, %lo(func_80B7DE60) # a2 = 80B7DE60
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t9, $f10
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_800279CC
    sw      t9, 0x0014($sp)
    b       lbl_80B7E2A0
    lw      $ra, 0x0024($sp)
    lw      v1, 0x02D0(t1)             # 000002D0
lbl_80B7E214:
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(t1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lh      t8, 0x0644(s0)             # 00000644
    lui     t2, 0x8012                 # t2 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t4, t8,  2
    addu    t0, $sp, t4
    lw      t0, 0x0040(t0)             # 00000040
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, t0,  4
    srl     t7, t6, 28
    sll     t9, t7,  2
    addu    t2, t2, t9
    lw      t2, 0x0C38(t2)             # 80120C38
    and     t5, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t5, t2
    addu    t8, t3, $at
    sw      t8, 0x0004(v1)             # 00000004
    sw      s0, 0x0010($sp)
    lwc1    $f16, 0x0638(s0)           # 00000638
    lui     a2, %hi(func_80B7DE60)     # a2 = 80B80000
    lui     a3, %hi(func_80B7E080)     # a3 = 80B80000
    trunc.w.s $f18, $f16
    addiu   a3, a3, %lo(func_80B7E080) # a3 = 80B7E080
    addiu   a2, a2, %lo(func_80B7DE60) # a2 = 80B7DE60
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t6, $f18
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    jal     func_80027AC4
    sw      t6, 0x0014($sp)
    lw      $ra, 0x0024($sp)
lbl_80B7E2A0:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50

.section .data

var_80B7E2B0: .word 0x00000000, 0x00000000, 0x00000000
var_80B7E2BC: .word 0x00000000, 0x00000000, 0x00000000
var_80B7E2C8: .word 0x00000000, 0x3F800000, 0x00000000
var_80B7E2D4: .word 0x00000000, 0xBF800000, 0x00000000
var_80B7E2E0: .word 0x00000000, 0x00000000, 0x00000000
var_80B7E2EC: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x001A0040, 0x00000000, 0x00000000
var_80B7E318: .word 0x00000000, 0x00000000, 0xFF000000
var_80B7E324: .word 0x01CE0400, 0x00000009, 0x00FE0000, 0x00000698
.word func_80B7D568
.word func_80B7D770
.word func_80B7DC80
.word func_80B7E0DC
var_80B7E344: .word \
0x06002FE8, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06002FE8, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0x00000000, \
0x06002F10, 0x00000000, 0x3F800000, 0x3F800000, \
0x02000000, 0x00000000, 0x06002F10, 0x3F800000, \
0x3F800000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06002F10, 0x3F800000, 0x41000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x0600219C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000, \
0x06000598, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1000000, 0x06000D48, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1000000
var_80B7E404: .word 0x00000000, 0x44160000, 0x00000000
var_80B7E410: .word 0x06003E40, 0x06004640, 0x06004E40, 0x00000000

.section .rodata

var_80B7E420: .word 0x3CA3D70A
var_80B7E424: .word 0x3DF5C28F
var_80B7E428: .word 0x3F4CCCCD
var_80B7E42C: .word 0x3E4CCCCD
var_80B7E430: .word 0x3DF5C28F
var_80B7E434: .word 0x3D75C28F
var_80B7E438: .word 0x3DF5C28F
var_80B7E43C: .word 0x3D75C28F
var_80B7E440: .word 0x40C8F5C3
var_80B7E444: .word var_80B7CF20
.word var_80B7CF60
.word var_80B7CFC0
.word var_80B7D030
.word var_80B7D070
.word var_80B7D0C0
.word var_80B7CF10
.word var_80B7CF18
.word var_80B7CEF0
var_80B7E468: .word var_80B7D15C
.word var_80B7D15C
.word var_80B7D164
.word var_80B7D15C
.word var_80B7D1DC
.word var_80B7D244
.word var_80B7D15C
.word var_80B7D15C
.word var_80B7D15C
.word var_80B7D15C
var_80B7E490: .word 0xBF19999A
var_80B7E494: .word 0x3F19999A
var_80B7E498: .word 0x3E4CCCCD
var_80B7E49C: .word 0x40490FDB
var_80B7E4A0: .word 0x40490FDB
var_80B7E4A4: .word 0x40490FDB
var_80B7E4A8: .word 0x40490FDB, 0x00000000

