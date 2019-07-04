.section .text
func_80ADBD20:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a0, s0, $zero              # a0 = 00000000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, %hi(var_80AE0940)      # a0 = 80AE0000
    addiu   a0, a0, %lo(var_80AE0940)  # a0 = 80AE0940
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    sw      v0, 0x013C(s0)             # 0000013C
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0154(s0)             # 00000154
    swc1    $f4, 0x015C(s0)            # 0000015C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80ADBDB4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80ADBDE8:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0034($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    lui     a3, 0x00FF                 # a3 = 00FF0000
    ori     a3, a3, 0xFFFF             # a3 = 00FFFFFF
    addiu   a2, a2, 0x0C38             # a2 = 80120C38
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s8, 0x0050($sp)
    sw      s7, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x0084($sp)
    lui     t0, 0x8000                 # t0 = 80000000
    addiu   s8, s1, 0x0024             # s8 = 00000024
    lw      t8, 0x0000(s8)             # 00000024
    addiu   t6, $sp, 0x0068            # t6 = FFFFFFE8
    lui     v0, %hi(var_80ADDFD8)      # v0 = 80AE0000
    sw      t8, 0x0000(t6)             # FFFFFFE8
    lw      t7, 0x0004(s8)             # 00000028
    addiu   v0, v0, %lo(var_80ADDFD8)  # v0 = 80ADDFD8
    lui     v1, %hi(var_80ADE8D8)      # v1 = 80AE0000
    sw      t7, 0x0004(t6)             # FFFFFFEC
    lw      t8, 0x0008(s8)             # 0000002C
    sll     t9, v0,  4
    addiu   v1, v1, %lo(var_80ADE8D8)  # v1 = 80ADE8D8
    srl     t1, t9, 28
    sll     t7, v1,  4
    sw      t8, 0x0008(t6)             # FFFFFFF0
    sll     t2, t1,  2
    srl     t8, t7, 28
    addu    t3, a2, t2
    sll     t9, t8,  2
    lw      t4, 0x0000(t3)             # 00000000
    addu    t1, a2, t9
    lw      t2, 0x0000(t1)             # 00000000
    lui     $at, %hi(var_80AE0970)     # $at = 80AE0000
    and     t5, v0, a3
    lwc1    $f22, %lo(var_80AE0970)($at)
    and     t3, v1, a3
    lui     $at, 0x4120                # $at = 41200000
    addu    t6, t4, t5
    lui     s4, %hi(var_80AE12E0)      # s4 = 80AE0000
    addu    t4, t2, t3
    mtc1    $at, $f20                  # $f20 = 10.00
    addu    s0, t6, t0
    addu    s2, t4, t0
    addiu   s4, s4, %lo(var_80AE12E0)  # s4 = 80AE12E0
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $zero, 0x0585          # s7 = 00000585
    addiu   s6, $zero, 0x0001          # s6 = 00000001
    addiu   s5, $zero, 0x0006          # s5 = 00000006
lbl_80ADBED0:
    multu   s3, s5
    lh      t6, 0x0000(s0)             # 00000000
    mflo    t5
    addu    v0, s4, t5
    sh      t6, 0x0000(v0)             # 80ADDFD8
    lh      t7, 0x0004(s0)             # 00000004
    sh      t7, 0x0004(v0)             # 80ADDFDC
    lh      t8, 0x001C(s1)             # 0000001C
    bnel    s6, t8, lbl_80ADBF0C
    lh      t1, 0x0000(s0)             # 00000000
    sh      s7, 0x0002(s2)             # 00000002
    lh      t9, 0x0002(s2)             # 00000002
    beq     $zero, $zero, lbl_80ADBFA0
    sh      t9, 0x0002(s0)             # 00000002
    lh      t1, 0x0000(s0)             # 00000000
lbl_80ADBF0C:
    lwc1    $f10, 0x0068($sp)
    mfc1    a2, $f20
    mtc1    t1, $f4                    # $f4 = 0.00
    mfc1    a3, $f20
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    cvt.s.w $f6, $f4
    or      a1, s1, $zero              # a1 = 00000000
    mul.s   $f8, $f6, $f22
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0024(s1)           # 00000024
    lh      t2, 0x0004(s0)             # 00000004
    lwc1    $f8, 0x0070($sp)
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x002C(s1)           # 0000002C
    sw      t3, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    jal     func_80021E6C
    lw      a0, 0x0084($sp)
    lwc1    $f16, 0x0080(s1)           # 00000080
    addiu   t5, $sp, 0x0068            # t5 = FFFFFFE8
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x0002(s2)             # 00000002
    sh      v0, 0x0002(s0)             # 00000002
    lw      t7, 0x0000(t5)             # FFFFFFE8
    sw      t7, 0x0000(s8)             # 00000024
    lw      t6, 0x0004(t5)             # FFFFFFEC
    sw      t6, 0x0004(s8)             # 00000028
    lw      t7, 0x0008(t5)             # FFFFFFF0
    sw      t7, 0x0008(s8)             # 0000002C
lbl_80ADBFA0:
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s3, s3, 16
    sra     s3, s3, 16
    slti    $at, s3, 0x0090
    addiu   s0, s0, 0x0010             # s0 = 00000010
    bne     $at, $zero, lbl_80ADBED0
    addiu   s2, s2, 0x0010             # s2 = 00000010
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
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80ADBFF4:
    addiu   $sp, $sp, 0xFED8           # $sp = FFFFFED8
    sw      s2, 0x0050($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sb      $zero, 0x0127($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      a3, 0x1C44(a1)             # 00001C44
    lw      t0, 0x0118(s2)             # 00000118
    lw      a2, 0x1C4C(a1)             # 00001C4C
    addu    t6, a1, $at
    sw      t6, 0x0074($sp)
    lw      t8, 0x1DE4(t6)             # 00001DE4
    mtc1    $zero, $f24                # $f24 = 0.00
    or      t3, $zero, $zero           # t3 = 00000000
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80ADC0C8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     v0, %hi(var_80ADF1D8)      # v0 = 80AE0000
    addiu   v0, v0, %lo(var_80ADF1D8)  # v0 = 80ADF1D8
    sll     t6, v0,  4
    lui     a0, 0x8012                 # a0 = 80120000
    srl     t7, t6, 28
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    sll     t8, t7,  2
    addu    t9, a0, t8
    lw      t6, 0x0000(t9)             # 00000000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    and     t7, v0, t1
    lui     v1, %hi(var_80ADDFD8)      # v1 = 80AE0000
    addiu   v1, v1, %lo(var_80ADDFD8)  # v1 = 80ADDFD8
    addu    t8, t6, t7
    sll     t9, v1,  4
    lui     t2, 0x8000                 # t2 = 80000000
    srl     t6, t9, 28
    addu    s0, t8, t2
    sll     t7, t6,  2
    addu    t8, a0, t7
    lw      t9, 0x0000(t8)             # 00000000
    and     t6, v1, t1
    addu    t7, t9, t6
    beq     $zero, $zero, lbl_80ADC128
    addu    s3, t7, t2
lbl_80ADC0C8:
    lui     v0, %hi(var_80ADFFF8)      # v0 = 80AE0000
    addiu   v0, v0, %lo(var_80ADFFF8)  # v0 = 80ADFFF8
    sll     t8, v0,  4
    srl     t9, t8, 28
    addiu   a0, a0, 0x0C38             # a0 = 80121870
    sll     t6, t9,  2
    addu    t7, a0, t6
    lw      t8, 0x0000(t7)             # 00000000
    lui     t1, 0x00FF                 # t1 = 00FF0000
    ori     t1, t1, 0xFFFF             # t1 = 00FFFFFF
    and     t9, v0, t1
    lui     v1, %hi(var_80ADE8D8)      # v1 = 80AE0000
    addiu   v1, v1, %lo(var_80ADE8D8)  # v1 = 80ADE8D8
    addu    t6, t8, t9
    sll     t7, v1,  4
    lui     t2, 0x8000                 # t2 = 80000000
    srl     t8, t7, 28
    addu    s0, t6, t2
    sll     t9, t8,  2
    addu    t6, a0, t9
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, v1, t1
    addu    t9, t7, t8
    addu    s3, t9, t2
lbl_80ADC128:
    lwc1    $f14, 0x0024(s2)           # 00000024
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f2                   # $f2 = 50.00
    sub.s   $f6, $f4, $f14
    lwc1    $f8, 0x0028(a3)            # 00000028
    lwc1    $f10, 0x0158(s2)           # 00000158
    lui     $at, %hi(var_80AE0974)     # $at = 80AE0000
    mul.s   $f18, $f6, $f2
    sub.s   $f4, $f8, $f10
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x002C(a3)            # 0000002C
    lwc1    $f12, %lo(var_80AE0974)($at)
    mul.s   $f20, $f4, $f2
    sub.s   $f10, $f6, $f8
    or      s4, s0, $zero              # s4 = 00000000
    lui     $at, %hi(var_80AE0978)     # $at = 80AE0000
    abs.s   $f0, $f18
    mul.s   $f22, $f10, $f2
    c.lt.s  $f0, $f12
    lui     t9, 0x8012                 # t9 = 80120000
    bc1fl   lbl_80ADC1BC
    lwc1    $f4, 0x0024(t0)            # 00000024
    lwc1    $f16, %lo(var_80AE0978)($at)
    abs.s   $f0, $f20
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80ADC1BC
    lwc1    $f4, 0x0024(t0)            # 00000024
    abs.s   $f0, $f22
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80ADC1BC
    lwc1    $f4, 0x0024(t0)            # 00000024
    sb      t6, 0x0127($sp)
    lwc1    $f4, 0x0024(t0)            # 00000024
lbl_80ADC1BC:
    lui     $at, %hi(var_80AE097C)     # $at = 80AE0000
    lwc1    $f16, %lo(var_80AE097C)($at)
    sub.s   $f6, $f4, $f14
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mul.s   $f8, $f6, $f2
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    addiu   t2, $sp, 0x00E0            # t2 = FFFFFFB8
    lui     t6, 0x8012                 # t6 = 80120000
    swc1    $f8, 0x00D4($sp)
    lwc1    $f10, 0x0028(t0)           # 00000028
    lwc1    $f8, 0x0158(s2)            # 00000158
    sub.s   $f6, $f10, $f4
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00C8($sp)
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x002C(t0)            # 0000002C
    sb      t7, 0x00E0($sp)
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00BC($sp)
lbl_80ADC218:
    addu    t8, t2, s1
    addiu   s1, s1, 0x0001             # s1 = 00000002
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0003
    bne     $at, $zero, lbl_80ADC218
    sb      $zero, 0x0000(t8)          # 00000000
    lw      t9, -0x5A30(t9)            # 8011A5D0
    addiu   $at, $zero, 0x0157         # $at = 00000157
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    bne     t9, $at, lbl_80ADC338
    nop
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t6, $at, lbl_80ADC338
    nop
    lw      a0, 0x1C54(a1)             # 00001C54
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   v0, $zero, 0x014A          # v0 = 0000014A
    beq     a0, $zero, lbl_80ADC284
    or      v1, a0, $zero              # v1 = 80121870
    lh      t7, 0x0000(v1)             # 80121870
lbl_80ADC270:
    beq     v0, t7, lbl_80ADC284
    nop
    lw      v1, 0x0124(v1)             # 80121994
    bnel    v1, $zero, lbl_80ADC270
    lh      t7, 0x0000(v1)             # 80121870
lbl_80ADC284:
    beq     a0, $zero, lbl_80ADC2A8
    or      v0, a0, $zero              # v0 = 80121870
    addiu   a0, $zero, 0x013E          # a0 = 0000013E
    lh      t8, 0x0000(v0)             # 80121870
lbl_80ADC294:
    beql    a0, t8, lbl_80ADC2AC
    lwc1    $f6, 0x0024(v1)            # 80121894
    lw      v0, 0x0124(v0)             # 80121994
    bnel    v0, $zero, lbl_80ADC294
    lh      t8, 0x0000(v0)             # 80121870
lbl_80ADC2A8:
    lwc1    $f6, 0x0024(v1)            # 80121894
lbl_80ADC2AC:
    lwc1    $f8, 0x0024(s2)            # 00000024
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00D8($sp)
    lwc1    $f8, 0x0158(s2)            # 00000158
    lwc1    $f6, 0x0028(v1)            # 80121898
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00CC($sp)
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x002C(v1)            # 8012189C
    sb      t9, 0x00E1($sp)
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00C0($sp)
    lwc1    $f8, 0x0024(s2)            # 00000024
    lwc1    $f6, 0x0024(v0)            # 80121894
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00DC($sp)
    lwc1    $f8, 0x0158(s2)            # 00000158
    lwc1    $f6, 0x0028(v0)            # 80121898
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00D0($sp)
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x002C(v0)            # 8012189C
    sb      t6, 0x00E2($sp)
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x00C4($sp)
    beq     $zero, $zero, lbl_80ADC428
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80ADC338:
    beq     a2, $zero, lbl_80ADC424
    addiu   $ra, $zero, 0x0001         # $ra = 00000001
    addiu   t5, $zero, 0x0023          # t5 = 00000023
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t1, $sp, 0x00C8            # t1 = FFFFFFA0
    addiu   t0, $sp, 0x00BC            # t0 = FFFFFF94
    addiu   a3, $sp, 0x00D4            # a3 = FFFFFFAC
    slti    $at, s1, 0x0003
lbl_80ADC358:
    beql    $at, $zero, lbl_80ADC41C
    lw      a2, 0x0124(a2)             # 00000124
    lwc1    $f6, 0x0024(a2)            # 00000024
    lwc1    $f8, 0x0024(s2)            # 00000024
    sll     v0, s1,  2
    addu    v1, a3, v0
    sub.s   $f10, $f6, $f8
    addu    a0, t1, v0
    addu    a1, t0, v0
    mul.s   $f4, $f10, $f2
    swc1    $f4, 0x0000(v1)            # 80121870
    lwc1    $f8, 0x0158(s2)            # 00000158
    lwc1    $f6, 0x0028(a2)            # 00000028
    lwc1    $f0, 0x0000(v1)            # 80121870
    sub.s   $f10, $f6, $f8
    abs.s   $f0, $f0
    mul.s   $f4, $f10, $f2
    c.lt.s  $f0, $f12
    swc1    $f4, 0x0000(a0)            # 0000013E
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lwc1    $f6, 0x002C(a2)            # 0000002C
    sub.s   $f10, $f6, $f8
    mul.s   $f4, $f10, $f2
    bc1f    lbl_80ADC40C
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f0, 0x0000(a0)            # 0000013E
    abs.s   $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80ADC410
    addiu   s1, s1, 0x0001             # s1 = 00000002
    lwc1    $f0, 0x0000(a1)            # 00000000
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80ADC410
    addiu   s1, s1, 0x0001             # s1 = 00000003
    lh      t7, 0x001C(a2)             # 0000001C
    addu    t8, t2, s1
    addu    t9, t2, s1
    bnel    t4, t7, lbl_80ADC40C
    sb      $ra, 0x0000(t9)            # 00000001
    beq     $zero, $zero, lbl_80ADC40C
    sb      t5, 0x0000(t8)             # 00000000
    sb      $ra, 0x0000(t9)            # 00000001
lbl_80ADC40C:
    addiu   s1, s1, 0x0001             # s1 = 00000004
lbl_80ADC410:
    sll     s1, s1, 16
    sra     s1, s1, 16
    lw      a2, 0x0124(a2)             # 00000124
lbl_80ADC41C:
    bnel    a2, $zero, lbl_80ADC358
    slti    $at, s1, 0x0003
lbl_80ADC424:
    lui     $at, 0x44FA                # $at = 44FA0000
lbl_80ADC428:
    mtc1    $at, $f30                  # $f30 = 2000.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f26                  # $f26 = 100.00
    addiu   a3, $sp, 0x00D4            # a3 = FFFFFFAC
    addiu   t0, $sp, 0x00BC            # t0 = FFFFFF94
    addiu   t1, $sp, 0x00C8            # t1 = FFFFFFA0
    or      s1, $zero, $zero           # s1 = 00000000
    swc1    $f18, 0x00B8($sp)
    swc1    $f20, 0x00B4($sp)
    swc1    $f22, 0x00B0($sp)
lbl_80ADC450:
    lbu     t6, 0x0127($sp)
    lwc1    $f6, 0x00B8($sp)
    lwc1    $f8, 0x00B0($sp)
    beq     t6, $zero, lbl_80ADC520
    or      v1, $zero, $zero           # v1 = 00000000
    lh      t7, 0x0000(s0)             # 00000000
    lh      t8, 0x0004(s0)             # 00000004
    lui     $at, %hi(var_80AE0984)     # $at = 80AE0000
    mtc1    t7, $f10                   # $f10 = 0.00
    lwc1    $f16, %lo(var_80AE0984)($at)
    cvt.s.w $f4, $f10
    mtc1    t8, $f10                   # $f10 = 0.00
    sub.s   $f20, $f4, $f6
    cvt.s.w $f4, $f10
    mul.s   $f6, $f20, $f20
    sub.s   $f22, $f4, $f8
    mul.s   $f10, $f22, $f22
    add.s   $f0, $f6, $f10
    sqrt.s  $f0, $f0
    sub.s   $f4, $f16, $f0
    div.s   $f2, $f4, $f16
    c.lt.s  $f2, $f24
    nop
    bc1fl   lbl_80ADC4BC
    lwc1    $f16, 0x0160(s2)           # 00000160
    mov.s   $f2, $f24
    lwc1    $f16, 0x0160(s2)           # 00000160
lbl_80ADC4BC:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    mul.s   $f8, $f16, $f2
    lui     $at, %hi(var_80AE0988)     # $at = 80AE0000
    sub.s   $f6, $f16, $f8
    lwc1    $f8, 0x00B4($sp)
    sub.s   $f4, $f6, $f10
    lwc1    $f10, %lo(var_80AE0988)($at)
    mul.s   $f6, $f8, $f2
    sub.s   $f12, $f0, $f10
    c.lt.s  $f12, $f24
    add.s   $f28, $f6, $f4
    bc1f    lbl_80ADC4F8
    nop
    mov.s   $f12, $f24
lbl_80ADC4F8:
    mul.s   $f8, $f26, $f12
    lui     $at, %hi(var_80AE098C)     # $at = 80AE0000
    lwc1    $f6, %lo(var_80AE098C)($at)
    mul.s   $f18, $f8, $f6
    c.lt.s  $f26, $f18
    nop
    bc1f    lbl_80ADC534
    nop
    beq     $zero, $zero, lbl_80ADC534
    mov.s   $f18, $f26
lbl_80ADC520:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lwc1    $f16, 0x0160(s2)           # 00000160
    mov.s   $f18, $f26
    sub.s   $f28, $f16, $f4
lbl_80ADC534:
    addu    t9, t2, v1
lbl_80ADC538:
    lbu     t6, 0x0000(t9)             # 00000001
    beql    t6, $zero, lbl_80ADC658
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lh      t7, 0x0000(s0)             # 00000000
    lh      t9, 0x0004(s0)             # 00000004
    sll     v0, v1,  2
    mtc1    t7, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    addu    t8, a3, v0
    cvt.s.w $f8, $f10
    lwc1    $f6, 0x0000(t8)            # 00000000
    addu    t6, t0, v0
    lui     $at, %hi(var_80AE0990)     # $at = 80AE0000
    addu    t7, t1, v0
    cvt.s.w $f10, $f4
    sub.s   $f20, $f8, $f6
    lwc1    $f8, 0x0000(t6)            # 00000001
    sub.s   $f22, $f10, $f8
    mul.s   $f6, $f20, $f20
    nop
    mul.s   $f4, $f22, $f22
    add.s   $f0, $f6, $f4
    beq     v1, $zero, lbl_80ADC5A0
    sqrt.s  $f0, $f0
    beql    t3, $zero, lbl_80ADC5B4
    sub.s   $f8, $f30, $f0
lbl_80ADC5A0:
    lwc1    $f12, %lo(var_80AE0990)($at)
    sub.s   $f10, $f12, $f0
    beq     $zero, $zero, lbl_80ADC5B8
    div.s   $f2, $f10, $f12
    sub.s   $f8, $f30, $f0
lbl_80ADC5B4:
    div.s   $f2, $f8, $f30
lbl_80ADC5B8:
    c.lt.s  $f2, $f24
    nop
    bc1fl   lbl_80ADC5D0
    lwc1    $f6, 0x0000(t7)            # 00000001
    mov.s   $f2, $f24
    lwc1    $f6, 0x0000(t7)            # 00000001
lbl_80ADC5D0:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    mul.s   $f14, $f6, $f2
    lui     $at, %hi(var_80AE0994)     # $at = 80AE0000
    mul.s   $f4, $f16, $f2
    sub.s   $f10, $f16, $f4
    lwc1    $f4, %lo(var_80AE0994)($at)
    sub.s   $f12, $f0, $f4
    sub.s   $f6, $f10, $f8
    c.lt.s  $f12, $f24
    add.s   $f14, $f14, $f6
    bc1f    lbl_80ADC608
    nop
    mov.s   $f12, $f24
lbl_80ADC608:
    mul.s   $f10, $f26, $f12
    lui     $at, %hi(var_80AE0998)     # $at = 80AE0000
    lwc1    $f8, %lo(var_80AE0998)($at)
    mul.s   $f2, $f10, $f8
    c.lt.s  $f26, $f2
    nop
    bc1fl   lbl_80ADC630
    c.lt.s  $f14, $f28
    mov.s   $f2, $f26
    c.lt.s  $f14, $f28
lbl_80ADC630:
    nop
    bc1fl   lbl_80ADC644
    c.lt.s  $f2, $f18
    mov.s   $f28, $f14
    c.lt.s  $f2, $f18
lbl_80ADC644:
    nop
    bc1fl   lbl_80ADC658
    addiu   v1, v1, 0x0001             # v1 = 00000002
    mov.s   $f18, $f2
    addiu   v1, v1, 0x0001             # v1 = 00000003
lbl_80ADC658:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0003
    bnel    $at, $zero, lbl_80ADC538
    addu    t9, t2, v1
    lw      t8, 0x0074($sp)
    sll     t7, s1,  2
    addu    t7, t7, s1
    lw      t9, 0x1DE4(t8)             # 00001DE4
    sll     t7, t7,  3
    subu    t7, t7, s1
    sll     t6, t9,  5
    subu    t6, t6, t9
    sll     t6, t6,  2
    sll     t7, t7,  4
    addu    t7, t7, s1
    addu    t6, t6, t9
    sll     t6, t6,  5
    sll     t7, t7,  4
    addu    a0, t6, t7
    sll     a0, a0, 16
    sra     a0, a0, 16
    swc1    $f18, 0x00A8($sp)
    jal     func_800636C4              # sins?
    sb      t3, 0x008B($sp)
    lbu     t8, 0x0164(s2)             # 00000164
    addiu   a3, $sp, 0x00D4            # a3 = FFFFFFAC
    addiu   t0, $sp, 0x00BC            # t0 = FFFFFF94
    addiu   t1, $sp, 0x00C8            # t1 = FFFFFFA0
    addiu   t2, $sp, 0x00E0            # t2 = FFFFFFB8
    lbu     t3, 0x008B($sp)
    beq     t8, $zero, lbl_80ADC750
    lwc1    $f18, 0x00A8($sp)
    mul.s   $f6, $f0, $f18
    lh      t6, 0x0002(s3)             # 00000002
    lui     $at, 0x4248                # $at = 42480000
    mtc1    t6, $f8                    # $f8 = 0.00
    add.s   $f4, $f28, $f6
    cvt.s.w $f6, $f8
    mtc1    $at, $f8                   # $f8 = 50.00
    trunc.w.s $f10, $f4
    lwc1    $f4, 0x0158(s2)            # 00000158
    mfc1    v0, $f10
    sub.s   $f10, $f6, $f4
    sll     t8, v0, 16
    sra     t9, t8, 16
    mul.s   $f6, $f10, $f8
    sll     v1, v0, 16
    sra     v1, v1, 16
    trunc.w.s $f4, $f6
    mfc1    a0, $f4
    nop
    sll     a0, a0, 16
    sra     a0, a0, 16
    slt     $at, t9, a0
    beql    $at, $zero, lbl_80ADC748
    sh      v1, 0x0002(s0)             # 00000002
    sll     v1, a0, 16
    sra     v1, v1, 16
    sh      v1, 0x0002(s0)             # 00000002
lbl_80ADC748:
    beq     $zero, $zero, lbl_80ADC7DC
    addiu   s1, s1, 0x0001             # s1 = 00000001
lbl_80ADC750:
    mul.s   $f2, $f0, $f18
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    sll     t8, s1,  2
    subu    t8, t8, s1
    lui     t9, %hi(var_80AE12E0)      # t9 = 80AE0000
    addiu   t9, t9, %lo(var_80AE12E0)  # t9 = 80AE12E0
    mul.s   $f4, $f2, $f6
    add.s   $f10, $f28, $f2
    sll     t8, t8,  1
    addu    v0, t8, t9
    trunc.w.s $f8, $f10
    trunc.w.s $f10, $f4
    mfc1    t7, $f8
    trunc.w.s $f8, $f2
    mfc1    v1, $f10
    sh      t7, 0x0002(s0)             # 00000002
    lh      t7, 0x0000(v0)             # 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    addu    t8, t7, v1
    sh      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x0004(v0)             # 00000004
    mfc1    a0, $f8
    addu    t6, t9, v1
    sh      t6, 0x0004(s0)             # 00000004
    lh      t8, 0x0000(v0)             # 00000000
    sll     a0, a0, 16
    sra     a0, a0, 16
    addu    t9, t8, a0
    sh      t9, 0x0000(s3)             # 00000000
    lh      t6, 0x0004(v0)             # 00000004
    addu    t7, t6, a0
    sh      t7, 0x0004(s3)             # 00000004
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80ADC7DC:
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0090
    addiu   s0, s0, 0x0010             # s0 = 00000010
    bne     $at, $zero, lbl_80ADC450
    addiu   s3, s3, 0x0010             # s3 = 00000010
    lbu     t8, 0x0164(s2)             # 00000164
    lui     $at, 0x3F80                # $at = 3F800000
    bnel    t8, $zero, lbl_80ADC888
    mtc1    $at, $f20                  # $f20 = 1.00
    lwc1    $f6, 0x0158(s2)            # 00000158
    swc1    $f24, 0x0060(s2)           # 00000060
    lui     v0, 0x8012                 # v0 = 80120000
    swc1    $f6, 0x0028(s2)            # 00000028
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    ori     $at, $zero, 0x8000         # $at = 00008000
    ori     t9, $zero, 0xFFFF          # t9 = 0000FFFF
    slt     $at, v0, $at
    bne     $at, $zero, lbl_80ADC834
    or      v1, v0, $zero              # v1 = 80120000
    subu    v0, t9, v1
    andi    v0, v0, 0xFFFF             # v0 = 00000000
lbl_80ADC834:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80ADC850
    cvt.s.w $f10, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_80ADC850:
    lui     $at, %hi(var_80AE099C)     # $at = 80AE0000
    lwc1    $f6, %lo(var_80AE099C)($at)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f4, $f10, $f6
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    nop
    swc1    $f6, 0x0160(s2)            # 00000160
    add.s   $f10, $f4, $f8
    swc1    $f10, 0x015C(s2)           # 0000015C
    beq     $zero, $zero, lbl_80ADC8F4
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f20                  # $f20 = 120.00
lbl_80ADC888:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    lwc1    $f4, 0x0158(s2)            # 00000158
    mfc1    a2, $f20
    addiu   a0, s2, 0x0028             # a0 = 00000028
    sub.s   $f10, $f4, $f8
    lw      a3, 0x0060(s2)             # 00000060
    mfc1    a1, $f10
    jal     func_80064280
    nop
    mfc1    a2, $f20
    addiu   a0, s2, 0x0060             # a0 = 00000060
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    mfc1    a1, $f24
    mfc1    a2, $f20
    addiu   a0, s2, 0x015C             # a0 = 0000015C
    jal     func_80064280
    lui     a3, 0x4040                 # a3 = 40400000
    lui     a1, 0xC59C                 # a1 = C59C0000
    mfc1    a2, $f20
    mfc1    a3, $f26
    ori     a1, a1, 0x4000             # a1 = C59C4000
    jal     func_80064280
    addiu   a0, s2, 0x0160             # a0 = 00000160
    lui     $at, 0x42F0                # $at = 42F00000
lbl_80ADC8F4:
    mtc1    $at, $f6                   # $f6 = 120.00
    or      s0, s4, $zero              # s0 = 00000000
    swc1    $f24, 0x0108($sp)
    swc1    $f24, 0x010C($sp)
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $zero, 0x000B          # s3 = 0000000B
    swc1    $f6, 0x0110($sp)
lbl_80ADC910:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    div     $zero, s1, $at
    mfhi    t6
    addiu   s2, s1, 0x0001             # s2 = 00000001
    bne     s3, t6, lbl_80ADC960
    sll     t8, s2, 16
    addiu   v0, s1, 0xFFFF             # v0 = FFFFFFFF
    sll     t8, v0, 16
    sra     t9, t8, 16
    sll     t6, t9,  4
    addu    t8, s4, t6
    lh      t9, 0x0004(t8)             # 00000004
    lh      t7, 0x0004(s0)             # 00000004
    sll     v1, v0, 16
    sra     v1, v1, 16
    subu    t6, t7, t9
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   s2, s1, 0x0001             # s2 = 00000001
    beq     $zero, $zero, lbl_80ADC98C
    cvt.s.w $f22, $f4
lbl_80ADC960:
    sra     t7, t8, 16
    sll     t9, t7,  4
    addu    t6, s4, t9
    lh      t8, 0x0004(t6)             # 00000004
    lh      t7, 0x0004(s0)             # 00000004
    sll     v1, s2, 16
    sra     v1, v1, 16
    subu    t9, t8, t7
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f22, $f8
lbl_80ADC98C:
    sll     t6, v1,  4
    addu    t8, s4, t6
    lh      t7, 0x0002(t8)             # 00000002
    lh      t9, 0x0002(s0)             # 00000002
    mov.s   $f12, $f22
    subu    t6, t7, t9
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f24, $f10
    jal     func_800AA670
    mov.s   $f14, $f24
    slti    $at, s1, 0x0084
    bne     $at, $zero, lbl_80ADC9F0
    mov.s   $f22, $f0
    addiu   t7, s1, 0xFFF4             # t7 = FFFFFFF4
    sll     t9, t7, 16
    sra     t6, t9, 16
    sll     t7, t6,  4
    addu    t9, s4, t7
    lh      t6, 0x0000(t9)             # 00000000
    lh      t8, 0x0000(s0)             # 00000000
    subu    t7, t8, t6
    mtc1    t7, $f6                    # $f6 = NaN
    beq     $zero, $zero, lbl_80ADCA1C
    cvt.s.w $f20, $f6
lbl_80ADC9F0:
    addiu   t9, s1, 0x000C             # t9 = 0000000C
    sll     t8, t9, 16
    sra     t6, t8, 16
    sll     t7, t6,  4
    addu    t9, s4, t7
    lh      t8, 0x0000(t9)             # 0000000C
    lh      t6, 0x0000(s0)             # 00000000
    subu    t7, t8, t6
    mtc1    t7, $f4                    # $f4 = NaN
    nop
    cvt.s.w $f20, $f4
lbl_80ADCA1C:
    mov.s   $f12, $f20
    jal     func_800AA670
    mov.s   $f14, $f24
    mov.s   $f20, $f0
    mov.s   $f12, $f22
    jal     func_800AA9E0
    or      a1, $zero, $zero           # a1 = 00000000
    mov.s   $f12, $f20
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, $sp, 0x0108            # a0 = FFFFFFE0
    jal     func_800AB958
    addiu   a1, $sp, 0x00FC            # a1 = FFFFFFD4
    lwc1    $f8, 0x00FC($sp)
    sll     s1, s2, 16
    sra     s1, s1, 16
    trunc.w.s $f10, $f8
    slti    $at, s1, 0x0090
    addiu   s0, s0, 0x0010             # s0 = 00000010
    mfc1    t8, $f10
    nop
    sb      t8, -0x0004(s0)            # 0000000C
    lwc1    $f6, 0x0100($sp)
    trunc.w.s $f4, $f6
    mfc1    t7, $f4
    nop
    sb      t7, -0x0003(s0)            # 0000000D
    lwc1    $f8, 0x0104($sp)
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    bne     $at, $zero, lbl_80ADC910
    sb      t8, -0x0002(s0)            # 0000000E
    lw      $ra, 0x005C($sp)
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
    jr      $ra
    addiu   $sp, $sp, 0x0128           # $sp = 00000000


func_80ADCAD4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lw      a0, 0x1DE4(v0)             # 00001DE4
    sw      v0, 0x0018($sp)
    addu    $at, a0, $zero
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  4
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lw      t8, 0x0020($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x00B4(t8)             # 000000B4
    lw      a0, 0x1DE4(v0)             # 00001DE4
    addu    $at, a0, $zero
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  3
    subu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    subu    a0, a0, $at
    sll     a0, a0,  2
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    lw      t1, 0x0020($sp)
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x00B8(t1)             # 000000B8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80ADCBAC:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    lw      v0, 0x0118(s0)             # 00000118
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      s1, 0x0000(s2)             # 00000000
    bnel    t6, $at, lbl_80ADCC28
    lbu     t9, 0x0165(s0)             # 00000165
    lwc1    $f4, 0x0024(v0)            # 00000024
    lbu     t7, 0x0165(s0)             # 00000165
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0028(v0)            # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    swc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x002C(v0)            # 0000002C
    lwc1    $f10, 0x0028(s0)           # 00000028
    swc1    $f8, 0x002C(s0)            # 0000002C
    bne     t7, $zero, lbl_80ADCCB8
    swc1    $f10, 0x0158(s0)           # 00000158
    jal     func_80ADBDE8
    sb      t8, 0x0165(s0)             # 00000165
    beq     $zero, $zero, lbl_80ADCCBC
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t9, 0x0165(s0)             # 00000165
lbl_80ADCC28:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bnel    t9, $zero, lbl_80ADCCBC
    or      a0, s0, $zero              # a0 = 00000000
    sb      t1, 0x0165(s0)             # 00000165
    lh      a0, 0x00B6(v0)             # 000000B6
    jal     func_800636C4              # sins?
    sw      v0, 0x0070($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    lw      v0, 0x0070($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x0024(v0)            # 00000024
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, 0x4120                # $at = 41200000
    add.s   $f6, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 10.00
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0028(v0)            # 00000028
    add.s   $f16, $f8, $f10
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0028(s0)            # 00000028
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(v0)             # 000000B6
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lw      v0, 0x0070($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    mul.s   $f8, $f0, $f6
    lwc1    $f10, 0x002C(v0)           # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    swc1    $f18, 0x0158(s0)           # 00000158
    add.s   $f16, $f8, $f10
    jal     func_80ADBDE8
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_80ADCCB8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80ADCCBC:
    jal     func_80ADBFF4
    or      a1, s2, $zero              # a1 = 00000000
    lbu     t2, 0x0154(s0)             # 00000154
    beq     t2, $zero, lbl_80ADCD28
    lui     a0, %hi(var_80ADCFD8)      # a0 = 80AE0000
    lui     v1, %hi(var_80AE0AE0)      # v1 = 80AE0000
    sb      $zero, 0x0154(s0)          # 00000154
    addiu   v1, v1, %lo(var_80AE0AE0)  # v1 = 80AE0AE0
    addiu   a0, a0, %lo(var_80ADCFD8)  # a0 = 80ADCFD8
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    sll     t3, v0,  1
lbl_80ADCCEC:
    addu    t4, a0, t3
    lhu     t5, 0x0000(t4)             # 00000000
    addu    t6, v1, v0
    addu    t7, v1, v0
    beql    t5, $zero, lbl_80ADCD10
    sb      $zero, 0x0000(t7)          # 00000000
    beq     $zero, $zero, lbl_80ADCD10
    sb      a1, 0x0000(t6)             # 00000000
    sb      $zero, 0x0000(t7)          # 00000000
lbl_80ADCD10:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0800
    bnel    $at, $zero, lbl_80ADCCEC
    sll     t3, v0,  1
lbl_80ADCD28:
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, 0x4040                # $at = 40400000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x015C(s0)            # 0000015C
    mtc1    $at, $f14                  # $f14 = 3.00
    or      a3, $zero, $zero           # a3 = 00000000
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lwc1    $f12, 0x0024(s0)           # 00000024
    jal     func_800AA7F4
    lw      a2, 0x002C(s0)             # 0000002C
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lwc1    $f12, 0x0050(s0)           # 00000050
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a2, 0x0060($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    lui     $at, 0x0001                # $at = 00010000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, %hi(var_80ADFB58)      # t9 = 80AE0000
    addiu   t9, t9, %lo(var_80ADFB58)  # t9 = 80ADFB58
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t2, 0xE700                 # t2 = E7000000
    addu    a3, s2, $at
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      t3, 0x1DE4(a3)             # 00001DE4
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_80ADCE38
    lw      v1, 0x02C0(s1)             # 000002C0
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    lui     t7, %hi(var_80ADDFD8)      # t7 = 80AE0000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    addiu   t7, t7, %lo(var_80ADDFD8)  # t7 = 80ADDFD8
    ori     t6, t6, 0x0030             # t6 = DB060030
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80ADCE5C
    lw      v1, 0x02C0(s1)             # 000002C0
    lw      v1, 0x02C0(s1)             # 000002C0
lbl_80ADCE38:
    lui     t9, 0xDB06                 # t9 = DB060000
    lui     t1, %hi(var_80ADE8D8)      # t1 = 80AE0000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    addiu   t1, t1, %lo(var_80ADE8D8)  # t1 = 80ADE8D8
    ori     t9, t9, 0x0030             # t9 = DB060030
    sw      t9, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
lbl_80ADCE5C:
    lui     a1, %hi(var_80ADFBC8)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80ADFBC8)  # a1 = 80ADFBC8
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      a1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    sw      a3, 0x002C($sp)
    jal     func_8007E298
    sw      a1, 0x0030($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f10                  # $f10 = 3.00
    lwc1    $f8, 0x0158(s0)            # 00000158
    lwc1    $f12, 0x0024(s0)           # 00000024
    lw      a2, 0x002C(s0)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f8, $f10
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    lui     a2, 0xDE00                 # a2 = DE000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t6, %hi(var_80ADFAD8)      # t6 = 80AE0000
    addiu   t6, t6, %lo(var_80ADFAD8)  # t6 = 80ADFAD8
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0004(v1)             # 00000004
    sw      a2, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t8, 0xE700                 # t8 = E7000000
    lui     t4, 0xDB06                 # t4 = DB060000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      t1, 0x1DE4(t9)             # 00001DE4
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t4, t4, 0x0030             # t4 = DB060030
    andi    t2, t1, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_80ADCF58
    ori     t7, t7, 0x0030             # t7 = DB060030
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t5, %hi(var_80ADF1D8)      # t5 = 80AE0000
    addiu   t5, t5, %lo(var_80ADF1D8)  # t5 = 80ADF1D8
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_80ADCF78
    lw      v1, 0x02C0(s1)             # 000002C0
lbl_80ADCF58:
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t8, %hi(var_80ADFFF8)      # t8 = 80AE0000
    addiu   t8, t8, %lo(var_80ADFFF8)  # t8 = 80ADFFF8
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
lbl_80ADCF78:
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      a2, 0x0000(v1)             # 00000000
    lw      t1, 0x0030($sp)
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80ADCFB0: .word 0x016B0400, 0x00000009, 0x00010000, 0x00000168
.word func_80ADBD20
.word func_80ADBDB4
.word func_80ADCAD4
.word func_80ADCBAC
.word 0x00000000, 0x00000000
var_80ADCFD8: .word \
0x38C130C1, 0x39034985, 0x410330C1, 0x41435985, \
0x49434943, 0x410138C1, 0x38C130C1, 0x30C15983, \
0x598330C1, 0x30C130C1, 0x49834103, 0x49434943, \
0x49435185, 0x51854143, 0x5A0759C7, 0x41433903, \
0x30C14987, 0x7A8B8B0D, 0x8B0D59C7, 0x59856A07, \
0x598551C5, 0x49454945, 0x51C56207, 0x7ACB82CB, \
0x62076249, 0x62075A07, 0x51C559C7, 0x51C54903, \
0x59855985, 0x59C78ACB, 0x82CB930F, 0x82898289, \
0x49457A8B, 0xA3D3A3D3, 0x93D18B0D, 0x7A8B7249, \
0x72497249, 0x62496207, 0x62497249, 0xA3D1AC13, \
0x9B91A3D1, 0xA3919B91, 0x8B4F830D, 0x7A8B82CB, \
0x830D8B4F, 0x9391934F, 0x934FA3D3, 0x7A8B8289, \
0x7287AC53, 0xC4D9B413, 0x8B0D8ACB, 0x8ACB6943, \
0x69857A8B, 0x7A8B7249, 0x7A8B71C5, 0xB455BC97, \
0xB455B413, 0xB413ABD1, 0xA34F9B0D, 0xA34DAB8F, \
0xB3D1BC13, 0xC497B455, 0xA3D3A391, 0x93CF8AC9, \
0x6A05B415, 0xC4D7B413, 0x92CB92CB, 0x92CB7185, \
0x69438ACB, 0x8B0D8B0D, 0x824779C5, 0xBC13BC97, \
0xBC97BC13, 0x82056101, 0x69437183, 0x9B0BA34D, \
0x89C58A05, 0x9205C495, 0xB455B455, 0xABD18B0B, \
0x51839B0D, 0x9B0D8207, 0x79C37183, 0x820792CB, \
0x92CB8A49, 0x82077143, 0x71837143, 0xBC99BC13, \
0xBC13BC99, 0x69439B0B, 0x9B0D7183, 0x71839B0B, \
0x92478183, 0xB391C455, 0x9205ABD3, 0xB4539B8F, \
0x41038A89, 0x8A896943, 0x82059289, 0x92898205, \
0x79437983, 0x71839ACB, 0xABD389C5, 0xB457ABD3, \
0xABD3B457, 0x694392CB, 0xA30D9289, 0x82057943, \
0x79837183, 0x9ACBABD3, 0x89C59B0D, 0xB413A3D1, \
0x390392CB, 0x9B0D6943, 0x8A478A89, 0x71837183, \
0x9B0B9247, 0x8183B391, 0xC4559205, 0xBC97BC13, \
0xBC13BC97, 0x820779C3, 0x71838207, 0x8A49930D, \
0x9B0D8207, 0x71437183, 0x714381C5, 0xABD3AC13, \
0x41019B0D, 0xA38F8205, 0x61016943, 0x71839B0B, \
0xA34D89C5, 0x8A059205, 0xC495BC97, 0xC4D9BC97, \
0xBC97C497, 0xBC97A34F, 0x92CB92CB, 0x79C7930D, \
0xAC13AC13, 0xA3D192CB, 0x79C58A87, 0xB413AC13, \
0x39019B8F, 0xABD39B0D, 0x8A478A47, 0x9289A34D, \
0xB3D1A34D, 0x9A89C455, 0xBC97C4D9, 0xC51BBC13, \
0xBC13BC55, 0xBC55BC55, 0xABD19B4F, 0x8ACBA3D1, \
0xBC97BC97, 0xBC97ABD3, 0xA3919B8F, 0x9B8F9B4D, \
0x30C1A391, 0xB4139B0D, 0x8A479287, 0x9289A34D, \
0xB3D1B3D1, 0xC455C4D9, 0xCD1BCD5D, 0xD59FCD5D, \
0xCD5DC4D9, 0xCCD9CD1B, 0xCD1BCCD9, 0xC497BC55, \
0xC497C499, 0xBC97BC55, 0xBC55B455, 0x9B8F8AC9, \
0x30C1930D, 0x930D9289, 0x71839289, 0x9B0B81C5, \
0xB3D1AB8F, 0x89C5BC97, 0x9205C51B, 0xA289D59F, \
0xD59FA289, 0xC51BAB8F, 0xBC13C455, 0xBC13CCD7, \
0xCD19C497, 0xC497BC95, 0xBC55AC13, 0x9B4D8289, \
0x28816A07, 0x69437983, 0x81C5AB8F, 0x92879287, \
0x9205AB8F, 0x81C5BC13, 0x9205C4DB, 0xA289D59F, \
0xD59FA289, 0xC4DB81C5, 0x89C589C5, 0xB3D19205, \
0x9A479A47, 0xCCD79205, 0x9A479B4D, 0x8ACBBC55, \
0x30C161C5, 0x6943A34F, 0x9205C4D9, 0xD55BA289, \
0xC4D7AB8F, 0x89C5BC13, 0x9205C4D9, 0xA289D55B, \
0xD55BA289, 0xC4D9AB8F, 0xAB8FAB8F, 0xA34DAB4D, \
0xBC13C495, 0xC4D7AB4D, 0xBC13A34D, 0x930B930D, \
0x518561C5, 0x694381C5, 0x89C5C4D7, 0xA289A289, \
0x9A47BC13, 0x89C589C5, 0x89C5C455, 0xA289CD19, \
0xCD19A289, 0xBC13AB8F, 0x79837183, 0x9AC99B0B, \
0x89C59A47, 0xCCD79B0B, 0x89C59287, 0x92CB930B, \
0x7A496A05, 0x61019289, 0x7983BC13, 0x9A47CD19, \
0x9287B3D1, 0xB3D19205, 0xD55BD55B, 0xA2899A47, \
0x9A47A2C9, 0xBC5389C5, 0xAB4D9AC9, 0x79437983, \
0xB3D1C495, 0x9A477983, 0xAB8FAC11, 0x8AC9A34F, \
0x79838A05, 0x61017183, 0x7983AB8F, 0xC4959A47, \
0xC4D7BC13, 0xC4D7A289, 0xD59DD55B, 0xA289D59D, \
0xD59DA2C9, 0xB411B3D1, 0xAB8FAB4D, 0x9B0B9AC9, \
0xAB8FBC13, 0xC4959AC9, 0xB34FAACD, 0xAA4BB24D, \
0x818389C5, 0x61019287, 0x7943A34F, 0xB3D19287, \
0xC4D7C495, 0xC4959A47, 0xD55BD55B, 0xA289A289, \
0xA289A289, 0xBC53BC53, 0x9A87BC53, 0xBC53C4D7, \
0x89C59205, 0x920589C5, 0x818389C5, 0xA20BB24D, \
0x928789C5, 0x61017183, 0x7943A34D, 0xAB8FBC13, \
0xC455BC13, 0xC495CCD7, 0xCCD7CD19, 0x9A47C4D7, \
0xC4D79A47, 0xCD19C453, 0xC453BC53, 0xB411AB4D, \
0xAB8FB3D1, 0xAB4DAB4D, 0xABD1B411, 0xA20BB24D, \
0x8A478A47, 0x61019287, 0x7943A34D, 0x81C589C5, \
0x89C5B3D1, 0x92059A47, 0x9A47CCD7, 0x9A479A47, \
0x9A479A47, 0xCCD79A47, 0x9A479205, 0x9A499AC9, \
0x79837983, 0x79437943, 0x8A49BC53, 0xB351BB11, \
0x8A4779C3, 0x69417183, 0x7943A34D, 0xAB8FAB8F, \
0xAB8FA34D, 0xAB4DBC13, 0xC495C4D7, 0x9205BC13, \
0xBC139205, 0xC4D7C495, 0xBC13AB4D, 0xBC539287, \
0x71837983, 0x92896101, 0x7183AB8F, 0xBBD3BB93, \
0x598379C5, 0x71839B0D, 0x7983A34D, 0xAB8F7983, \
0x71839AC9, 0x9B0B89C5, 0x9A47CCD7, 0x920589C5, \
0x89C59205, 0xCCD79A47, 0x89C59B0B, 0x92878A87, \
0x71837983, 0x92897183, 0x71839287, 0xB311BB11, \
0x49438205, 0x61016943, 0x79439B0B, 0x89C5AB4D, \
0x9AC97943, 0x7983B3D1, 0xC4959A47, 0xBC13BC13, \
0xBC13BC13, 0xAB0BCCD7, 0xAB8F81C5, 0xC4D77A07, \
0x61017183, 0x8A896943, 0x69438A47, 0xA20BB24D, \
0x38C18205, 0x61018A47, 0x8183AB8F, 0xB3D1AB8F, \
0xAB4D9B0B, 0x9AC9AB8F, 0xBC13C495, 0xC455B411, \
0xB311AA4D, 0xAACFAACF, 0xA28BA28B, 0xA20B71C5, \
0x61016101, 0x82476101, 0x610192CB, 0x9B0D7183, \
0x30C18A47, 0x61016101, 0x81838183, 0x89C589C5, \
0x92059205, 0x89C58183, 0x89C59205, 0x9A4781C5, \
0x81C59A47, 0x920589C5, 0x818389C5, 0x92059205, \
0x89C589C5, 0x81838183, 0x61016101, 0x71839289, \
0x30C18A47, 0x69438A47, 0x9B0B9B0B, 0xAB8FAB8F, \
0xB3D1AB4D, 0xAB4DA34D, 0xAB8FBC13, 0xAB8FAB8F, \
0xAB8FAB8F, 0xBC13AB8F, 0xA34DAB4D, 0xAB4DB3D1, \
0xAB8FAB8F, 0x9B0B9B0B, 0x8A476943, 0x69438A47, \
0x41038A89, 0x79839B0B, 0x79437943, 0x9AC97983, \
0x79837943, 0x79437943, 0xAB8F89C5, 0x79837943, \
0x79437983, 0x89C5AB8F, 0x79437943, 0x79437983, \
0x79839AC9, 0x79437943, 0x9B0B7983, 0x81C56101, \
0x59858A89, 0x718392CB, 0x92897183, 0x92877183, \
0x79839289, 0x61017183, 0x9B0B7183, 0x71839287, \
0x92877183, 0x71839B0B, 0x71836101, 0x92897983, \
0x71839287, 0x71839289, 0x92CB7183, 0x8A478A47, \
0x49438A89, 0x69438A89, 0x69438A47, 0x82477183, \
0x79839289, 0x71837183, 0x92876101, 0x61016101, \
0x61016101, 0x61019287, 0x71837183, 0x92897983, \
0x71838247, 0x8A476943, 0x8A896943, 0x8A478A47, \
0x41038A89, 0x61016101, 0x7A076101, 0x7A076101, \
0x71838A89, 0x69436943, 0x8A478247, 0x82476101, \
0x61018247, 0x82478A47, 0x69436943, 0x8A897183, \
0x61017A07, 0x61017A07, 0x61016101, 0x92897183, \
0x59858A89, 0x71C550C1, 0x50C150C1, 0x71C56101, \
0x61018247, 0x61016101, 0x81C58247, 0x82476101, \
0x61018247, 0x824781C5, 0x61016101, 0x82476101, \
0x610171C5, 0x50C150C1, 0x50C171C5, 0x798381C5, \
0x6A0792CB, 0x71C56943, 0x69436943, 0x61C57A07, \
0x7A0771C5, 0x7A078247, 0x824781C5, 0x82478247, \
0x82478247, 0x81C58247, 0x82477A07, 0x71C57A07, \
0x7A0761C5, 0x69436943, 0x694371C5, 0xA34F9205, \
0x6A0792CB, 0x71C56943, 0x69436943, 0x61C57A07, \
0x7A0771C5, 0x7A078247, 0x824781C5, 0x82478247, \
0x82478247, 0x81C58247, 0x82477A07, 0x71C57A07, \
0x7A0761C5, 0x69436943, 0x694371C5, 0xA34F9205, \
0x59858A89, 0x71C550C1, 0x50C150C1, 0x71C56101, \
0x61018247, 0x61016101, 0x81C58247, 0x82476101, \
0x61018247, 0x824781C5, 0x61016101, 0x82476101, \
0x610171C5, 0x50C150C1, 0x50C171C5, 0x798381C5, \
0x41038A89, 0x61016101, 0x7A076101, 0x7A076101, \
0x71838A89, 0x69436943, 0x8A478247, 0x82476101, \
0x61018247, 0x82478A47, 0x69436943, 0x8A897183, \
0x61017A07, 0x61017A07, 0x61016101, 0x92897183, \
0x49438A89, 0x69438A89, 0x69438A47, 0x82477183, \
0x79839289, 0x71837183, 0x92876101, 0x61016101, \
0x61016101, 0x61019287, 0x71837183, 0x92897983, \
0x71838247, 0x8A476943, 0x8A896943, 0x8A478A47, \
0x59858A89, 0x718392CB, 0x92897183, 0x92877183, \
0x79839289, 0x61017183, 0x9B0B7183, 0x71839287, \
0x92877183, 0x71839B0B, 0x71836101, 0x92897983, \
0x71839287, 0x71839289, 0x92CB7183, 0x8A478A47, \
0x41038A89, 0x79839B0B, 0x79437943, 0x9AC97983, \
0x79837943, 0x79437943, 0xAB8F89C5, 0x79837943, \
0x79437983, 0x89C5AB8F, 0x79437943, 0x79437983, \
0x79839AC9, 0x79437943, 0x9B0B7983, 0x81C56101, \
0x30C18A47, 0x69438A47, 0x9B0B9B0B, 0xAB8FAB8F, \
0xB3D1AB4D, 0xAB4DA34D, 0xAB8FBC13, 0xAB8FAB8F, \
0xAB8FAB8F, 0xBC13AB8F, 0xA34DAB4D, 0xAB4DB3D1, \
0xAB8FAB8F, 0x9B0B9B0B, 0x8A476943, 0x69438A47, \
0x30C18A47, 0x61016101, 0x81838183, 0x89C589C5, \
0x92059205, 0x89C58183, 0x89C59205, 0x9A4781C5, \
0x81C59A47, 0x920589C5, 0x818389C5, 0x92059205, \
0x89C589C5, 0x81838183, 0x61016101, 0x71839289, \
0x38C18205, 0x61018A47, 0x8183AB8F, 0xB3D1AB8F, \
0xAB4D9B0B, 0x9AC9AB8F, 0xBC13C495, 0xC455B411, \
0xB311AA4D, 0xAACFAACF, 0xA28BA28B, 0xA20B71C5, \
0x61016101, 0x82476101, 0x610192CB, 0x9B0D7183, \
0x49438205, 0x61016943, 0x79439B0B, 0x89C5AB4D, \
0x9AC97943, 0x7983B3D1, 0xC4959A47, 0xBC13BC13, \
0xBC13BC13, 0xAB0BCCD7, 0xAB8F81C5, 0xC4D77A07, \
0x61017183, 0x8A896943, 0x69438A47, 0xA20BB24D, \
0x598379C5, 0x71839B0D, 0x7983A34D, 0xAB8F7983, \
0x71839AC9, 0x9B0B89C5, 0x9A47CCD7, 0x920589C5, \
0x89C59205, 0xCCD79A47, 0x89C59B0B, 0x92878A87, \
0x71837983, 0x92897183, 0x71839287, 0xB311BB11, \
0x8A4779C3, 0x69417183, 0x7943A34D, 0xAB8FAB8F, \
0xAB8FA34D, 0xAB4DBC13, 0xC495C4D7, 0x9205BC13, \
0xBC139205, 0xC4D7C495, 0xBC13AB4D, 0xBC539287, \
0x71837983, 0x92896101, 0x7183AB8F, 0xBBD3BB93, \
0x8A478A47, 0x61019287, 0x7943A34D, 0x81C589C5, \
0x89C5B3D1, 0x92059A47, 0x9A47CCD7, 0x9A479A47, \
0x9A479A47, 0xCCD79A47, 0x9A479205, 0x9A499AC9, \
0x79837983, 0x79437943, 0x8A49BC53, 0xB351BB11, \
0x928789C5, 0x61017183, 0x7943A34D, 0xAB8FBC13, \
0xC455BC13, 0xC495CCD7, 0xCCD7CD19, 0x9A47C4D7, \
0xC4D79A47, 0xCD19C453, 0xC453BC53, 0xB411AB4D, \
0xAB8FB3D1, 0xAB4DAB4D, 0xABD1B411, 0xA20BB24D, \
0x818389C5, 0x61019287, 0x7943A34F, 0xB3D19287, \
0xC4D7C495, 0xC4959A47, 0xD55BD55B, 0xA289A289, \
0xA289A289, 0xBC53BC53, 0x9A87BC53, 0xBC53C4D7, \
0x89C59205, 0x920589C5, 0x818389C5, 0xA20BB24D, \
0x79838A05, 0x61017183, 0x7983AB8F, 0xC4959A47, \
0xC4D7BC13, 0xC4D7A289, 0xD59DD55B, 0xA289D59D, \
0xD59DA2C9, 0xB411B3D1, 0xAB8FAB4D, 0x9B0B9AC9, \
0xAB8FBC13, 0xC4959AC9, 0xB34FAACD, 0xAA4BB24D, \
0x7A496A05, 0x61019289, 0x7983BC13, 0x9A47CD19, \
0x9287B3D1, 0xB3D19205, 0xD55BD55B, 0xA2899A47, \
0x9A47A2C9, 0xBC5389C5, 0xAB4D9AC9, 0x79437983, \
0xB3D1C495, 0x9A477983, 0xAB8FAC11, 0x8AC9A34F, \
0x518561C5, 0x694381C5, 0x89C5C4D7, 0xA289A289, \
0x9A47BC13, 0x89C589C5, 0x89C5C455, 0xA289CD19, \
0xCD19A289, 0xBC13AB8F, 0x79837183, 0x9AC99B0B, \
0x89C59A47, 0xCCD79B0B, 0x89C59287, 0x92CB930B, \
0x30C161C5, 0x6943A34F, 0x9205C4D9, 0xD55BA289, \
0xC4D7AB8F, 0x89C5BC13, 0x9205C4D9, 0xA289D55B, \
0xD55BA289, 0xC4D9AB8F, 0xAB8FAB8F, 0xA34DAB4D, \
0xBC13C495, 0xC4D7AB4D, 0xBC13A34D, 0x930B930D, \
0x28816A07, 0x69437983, 0x81C5AB8F, 0x92879287, \
0x9205AB8F, 0x81C5BC13, 0x9205C4DB, 0xA289D59F, \
0xD59FA289, 0xC4DB81C5, 0x89C589C5, 0xB3D19205, \
0x9A479A47, 0xCCD79205, 0x9A479B4D, 0x8ACBBC55, \
0x30C1930D, 0x930D9289, 0x71839289, 0x9B0B81C5, \
0xB3D1AB8F, 0x89C5BC97, 0x9205C51B, 0xA289D59F, \
0xD59FA289, 0xC51BAB8F, 0xBC13C455, 0xBC13CCD7, \
0xCD19C497, 0xBC55BC53, 0xBC55AC13, 0x9B4D8289, \
0x30C1A391, 0xB4139B0D, 0x8A479287, 0x9289A34D, \
0xB3D1B3D1, 0xC455C4D9, 0xCD1BCD5D, 0xD59FCD5D, \
0xCD5DC4D9, 0xCCD9CD1B, 0xCD1BC455, 0xB3D1BC13, \
0xBC53C4D9, 0xBC97A38F, 0xB455B455, 0x9B8F8AC9, \
0x39019B8F, 0xABD39B0D, 0x8A478A47, 0x9289A34D, \
0xB3D1A34D, 0x9A89C455, 0xBC97C4D9, 0xC51BBC13, \
0xBC13BC55, 0xBC55BC55, 0x930D8ACB, 0x69436985, \
0x7A8BBC97, 0xBC977A8B, 0x8A899B8F, 0x9B8F9B4D, \
0x41019B0D, 0xA38F8205, 0x61016943, 0x71839B0B, \
0xA34D89C5, 0x8A059205, 0xC495BC97, 0xC4D9BC97, \
0xBC97C497, 0xBC97A34F, 0x92CB92CB, 0x71856943, \
0x8ACB9B91, 0x9B918247, 0x79C58A87, 0xB413AC13, \
0x390392CB, 0x9B0D6943, 0x8A478A89, 0x71837183, \
0x9B0B9247, 0x8183B391, 0xC4559205, 0xBC97BC13, \
0xBC13BC97, 0x820779C3, 0x71838207, 0x92CB92CB, \
0x8A498207, 0x71437183, 0x714381C5, 0xABD3AC13, \
0x41038A89, 0x8A896943, 0x82059289, 0x92898205, \
0x79437983, 0x71839ACB, 0xABD389C5, 0xB457ABD3, \
0xABD3B457, 0x694392CB, 0xA30D9289, 0x82057943, \
0x79837183, 0x9ACBABD3, 0x89C59B0D, 0xB413A3D1, \
0x51839B0D, 0x9B0D8207, 0x79C37183, 0x820792CB, \
0x92CB8A49, 0x82077143, 0x71837143, 0xBC99BC13, \
0xBC13BC99, 0x69439B0B, 0x9B0D7183, 0x71839B0B, \
0x92478183, 0xB391C455, 0x9205ABD3, 0xB4539B8F, \
0x6A05B415, 0xC4D7B413, 0x92CB92CB, 0x92CB7185, \
0x69438ACB, 0x8B0D8B0D, 0x824779C5, 0xBC13BC97, \
0xBC97BC13, 0x82056101, 0x69437183, 0x9B0BA34D, \
0x89C58A05, 0x9205C495, 0xB455B455, 0xABD18B0B, \
0x7287AC53, 0xC4D9B413, 0x8B0D8ACB, 0x8ACB6943, \
0x69857A8B, 0x7A8B7249, 0x7A8B71C5, 0xB455BC97, \
0xB455B413, 0xB413ABD1, 0xA34F9B0D, 0xA34DAB8F, \
0xB3D1BC13, 0xC497B455, 0xA3D3A391, 0x93CF8AC9, \
0x49457A8B, 0xA3D3A3D3, 0x93D18B0D, 0x7A8B7249, \
0x72497249, 0x62496207, 0x62497249, 0xA3D1AC13, \
0x9B91A3D1, 0xA3919B91, 0x8B4F830D, 0x7A8B82CB, \
0x830D8B4F, 0x9391934F, 0x934FA3D3, 0x7A8B8289, \
0x30C14987, 0x7A8B8B0D, 0x8B0D59C7, 0x59856A07, \
0x598551C5, 0x49454945, 0x51C56207, 0x7ACB82CB, \
0x62076249, 0x62075A07, 0x51C559C7, 0x51C54903, \
0x59855985, 0x59C78ACB, 0x82CB930F, 0x82898289, \
0x38C130C1, 0x39034985, 0x410330C1, 0x41435985, \
0x49434943, 0x410138C1, 0x38C130C1, 0x30C15983, \
0x598330C1, 0x30C130C1, 0x49834103, 0x49434943, \
0x49435185, 0x51854143, 0x5A0759C7, 0x41433903
var_80ADDFD8: .word \
0xEE6C0000, 0xEA840000, 0x00BA0800, 0x007800FF, \
0xEE6C0000, 0xEE6C0000, 0x00BA0746, 0x007800FF, \
0xEE6C0000, 0xF2540000, 0x00BA068C, 0x007800FF, \
0xEE6C0000, 0xF63C0000, 0x00BA05D1, 0x007800FF, \
0xEE6C0000, 0xFA240000, 0x00BA0517, 0x007800FF, \
0xEE6C0000, 0xFE0C0000, 0x00BA045D, 0x007800FF, \
0xEE6C0000, 0x01F40000, 0x00BA03A3, 0x007800FF, \
0xEE6C0000, 0x05DC0000, 0x00BA02E9, 0x007800FF, \
0xEE6C0000, 0x09C40000, 0x00BA022F, 0x007800FF, \
0xEE6C0000, 0x0DAC0000, 0x00BA0174, 0x007800FF, \
0xEE6C0000, 0x11940000, 0x00BA00BA, 0x007800FF, \
0xEE6C0000, 0x157C0000, 0x00BA0000, 0x007800FF, \
0xEA840000, 0xEA840000, 0x00000800, 0x007800FF, \
0xEA840000, 0xEE6C0000, 0x00000746, 0x007800FF, \
0xEA840000, 0xF2540000, 0x0000068C, 0x007800FF, \
0xEA840000, 0xF63C0000, 0x000005D1, 0x007800FF, \
0xEA840000, 0xFA240000, 0x00000517, 0x007800FF, \
0xEA840000, 0xFE0C0000, 0x0000045D, 0x007800FF, \
0xEA840000, 0x01F40000, 0x000003A3, 0x007800FF, \
0xEA840000, 0x05DC0000, 0x000002E9, 0x007800FF, \
0xEA840000, 0x09C40000, 0x0000022F, 0x007800FF, \
0xEA840000, 0x0DAC0000, 0x00000174, 0x007800FF, \
0xEA840000, 0x11940000, 0x000000BA, 0x007800FF, \
0xEA840000, 0x157C0000, 0x00000000, 0x007800FF, \
0xF2540000, 0xEA840000, 0x01740800, 0x007800FF, \
0xF2540000, 0xEE6C0000, 0x01740746, 0x007800FF, \
0xF2540000, 0xF2540000, 0x0174068C, 0x007800FF, \
0xF2540000, 0xF63C0000, 0x017405D1, 0x007800FF, \
0xF2540000, 0xFA240000, 0x01740517, 0x007800FF, \
0xF2540000, 0xFE0C0000, 0x0174045D, 0x007800FF, \
0xF2540000, 0x01F40000, 0x017403A3, 0x007800FF, \
0xF2540000, 0x05DC0000, 0x017402E9, 0x007800FF, \
0xF2540000, 0x09C40000, 0x0174022F, 0x007800FF, \
0xF2540000, 0x0DAC0000, 0x01740174, 0x007800FF, \
0xF2540000, 0x11940000, 0x017400BA, 0x007800FF, \
0xF2540000, 0x157C0000, 0x01740000, 0x007800FF, \
0xF63C0000, 0xEA840000, 0x022F0800, 0x007800FF, \
0xF63C0000, 0xEE6C0000, 0x022F0746, 0x007800FF, \
0xF63C0000, 0xF2540000, 0x022F068C, 0x007800FF, \
0xF63C0000, 0xF63C0000, 0x022F05D1, 0x007800FF, \
0xF63C0000, 0xFA240000, 0x022F0517, 0x007800FF, \
0xF63C0000, 0xFE0C0000, 0x022F045D, 0x007800FF, \
0xF63C0000, 0x01F40000, 0x022F03A3, 0x007800FF, \
0xF63C0000, 0x05DC0000, 0x022F02E9, 0x007800FF, \
0xF63C0000, 0x09C40000, 0x022F022F, 0x007800FF, \
0xF63C0000, 0x0DAC0000, 0x022F0174, 0x007800FF, \
0xF63C0000, 0x11940000, 0x022F00BA, 0x007800FF, \
0xF63C0000, 0x157C0000, 0x022F0000, 0x007800FF, \
0xFA240000, 0xEA840000, 0x02E90800, 0x007800FF, \
0xFA240000, 0xEE6C0000, 0x02E90746, 0x007800FF, \
0xFA240000, 0xF2540000, 0x02E9068C, 0x007800FF, \
0xFA240000, 0xF63C0000, 0x02E905D1, 0x007800FF, \
0xFA240000, 0xFA240000, 0x02E90517, 0x007800FF, \
0xFA240000, 0xFE0C0000, 0x02E9045D, 0x007800FF, \
0xFA240000, 0x01F40000, 0x02E903A3, 0x007800FF, \
0xFA240000, 0x05DC0000, 0x02E902E9, 0x007800FF, \
0xFA240000, 0x09C40000, 0x02E9022F, 0x007800FF, \
0xFA240000, 0x0DAC0000, 0x02E90174, 0x007800FF, \
0xFA240000, 0x11940000, 0x02E900BA, 0x007800FF, \
0xFA240000, 0x157C0000, 0x02E90000, 0x007800FF, \
0xFE0C0000, 0xEA840000, 0x03A30800, 0x007800FF, \
0xFE0C0000, 0xEE6C0000, 0x03A30746, 0x007800FF, \
0xFE0C0000, 0xF2540000, 0x03A3068C, 0x007800FF, \
0xFE0C0000, 0xF63C0000, 0x03A305D1, 0x007800FF, \
0xFE0C0000, 0xFA240000, 0x03A30517, 0x007800FF, \
0xFE0C0000, 0xFE0C0000, 0x03A3045D, 0x007800FF, \
0xFE0C0000, 0x01F40000, 0x03A303A3, 0x007800FF, \
0xFE0C0000, 0x05DC0000, 0x03A302E9, 0x007800FF, \
0xFE0C0000, 0x09C40000, 0x03A3022F, 0x007800FF, \
0xFE0C0000, 0x0DAC0000, 0x03A30174, 0x007800FF, \
0xFE0C0000, 0x11940000, 0x03A300BA, 0x007800FF, \
0xFE0C0000, 0x157C0000, 0x03A30000, 0x007800FF, \
0x01F40000, 0xEA840000, 0x045D0800, 0x007800FF, \
0x01F40000, 0xEE6C0000, 0x045D0746, 0x007800FF, \
0x01F40000, 0xF2540000, 0x045D068C, 0x007800FF, \
0x01F40000, 0xF63C0000, 0x045D05D1, 0x007800FF, \
0x01F40000, 0xFA240000, 0x045D0517, 0x007800FF, \
0x01F40000, 0xFE0C0000, 0x045D045D, 0x007800FF, \
0x01F40000, 0x01F40000, 0x045D03A3, 0x007800FF, \
0x01F40000, 0x05DC0000, 0x045D02E9, 0x007800FF, \
0x01F40000, 0x09C40000, 0x045D022F, 0x007800FF, \
0x01F40000, 0x0DAC0000, 0x045D0174, 0x007800FF, \
0x01F40000, 0x11940000, 0x045D00BA, 0x007800FF, \
0x01F40000, 0x157C0000, 0x045D0000, 0x007800FF, \
0x05DC0000, 0xEA840000, 0x05170800, 0x007800FF, \
0x05DC0000, 0xEE6C0000, 0x05170746, 0x007800FF, \
0x05DC0000, 0xF2540000, 0x0517068C, 0x007800FF, \
0x05DC0000, 0xF63C0000, 0x051705D1, 0x007800FF, \
0x05DC0000, 0xFA240000, 0x05170517, 0x007800FF, \
0x05DC0000, 0xFE0C0000, 0x0517045D, 0x007800FF, \
0x05DC0000, 0x01F40000, 0x051703A3, 0x007800FF, \
0x05DC0000, 0x05DC0000, 0x051702E9, 0x007800FF, \
0x05DC0000, 0x09C40000, 0x0517022F, 0x007800FF, \
0x05DC0000, 0x0DAC0000, 0x05170174, 0x007800FF, \
0x05DC0000, 0x11940000, 0x051700BA, 0x007800FF, \
0x05DC0000, 0x157C0000, 0x05170000, 0x007800FF, \
0x09C40000, 0xEA840000, 0x05D10800, 0x007800FF, \
0x09C40000, 0xEE6C0000, 0x05D10746, 0x007800FF, \
0x09C40000, 0xF2540000, 0x05D1068C, 0x007800FF, \
0x09C40000, 0xF63C0000, 0x05D105D1, 0x007800FF, \
0x09C40000, 0xFA240000, 0x05D10517, 0x007800FF, \
0x09C40000, 0xFE0C0000, 0x05D1045D, 0x007800FF, \
0x09C40000, 0x01F40000, 0x05D103A3, 0x007800FF, \
0x09C40000, 0x05DC0000, 0x05D102E9, 0x007800FF, \
0x09C40000, 0x09C40000, 0x05D1022F, 0x007800FF, \
0x09C40000, 0x0DAC0000, 0x05D10174, 0x007800FF, \
0x09C40000, 0x11940000, 0x05D100BA, 0x007800FF, \
0x09C40000, 0x157C0000, 0x05D10000, 0x007800FF, \
0x0DAC0000, 0xEA840000, 0x068C0800, 0x007800FF, \
0x0DAC0000, 0xEE6C0000, 0x068C0746, 0x007800FF, \
0x0DAC0000, 0xF2540000, 0x068C068C, 0x007800FF, \
0x0DAC0000, 0xF63C0000, 0x068C05D1, 0x007800FF, \
0x0DAC0000, 0xFA240000, 0x068C0517, 0x007800FF, \
0x0DAC0000, 0xFE0C0000, 0x068C045D, 0x007800FF, \
0x0DAC0000, 0x01F40000, 0x068C03A3, 0x007800FF, \
0x0DAC0000, 0x05DC0000, 0x068C02E9, 0x007800FF, \
0x0DAC0000, 0x09C40000, 0x068C022F, 0x007800FF, \
0x0DAC0000, 0x0DAC0000, 0x068C0174, 0x007800FF, \
0x0DAC0000, 0x11940000, 0x068C00BA, 0x007800FF, \
0x0DAC0000, 0x157C0000, 0x068C0000, 0x007800FF, \
0x11940000, 0xEA840000, 0x07460800, 0x007800FF, \
0x11940000, 0xEE6C0000, 0x07460746, 0x007800FF, \
0x11940000, 0xF2540000, 0x0746068C, 0x007800FF, \
0x11940000, 0xF63C0000, 0x074605D1, 0x007800FF, \
0x11940000, 0xFA240000, 0x07460517, 0x007800FF, \
0x11940000, 0xFE0C0000, 0x0746045D, 0x007800FF, \
0x11940000, 0x01F40000, 0x074603A3, 0x007800FF, \
0x11940000, 0x05DC0000, 0x074602E9, 0x007800FF, \
0x11940000, 0x09C40000, 0x0746022F, 0x007800FF, \
0x11940000, 0x0DAC0000, 0x07460174, 0x007800FF, \
0x11940000, 0x11940000, 0x074600BA, 0x007800FF, \
0x11940000, 0x157C0000, 0x07460000, 0x007800FF, \
0x157C0000, 0xEA840000, 0x08000800, 0x007800FF, \
0x157C0000, 0xEE6C0000, 0x08000746, 0x007800FF, \
0x157C0000, 0xF2540000, 0x0800068C, 0x007800FF, \
0x157C0000, 0xF63C0000, 0x080005D1, 0x007800FF, \
0x157C0000, 0xFA240000, 0x08000517, 0x007800FF, \
0x157C0000, 0xFE0C0000, 0x0800045D, 0x007800FF, \
0x157C0000, 0x01F40000, 0x080003A3, 0x007800FF, \
0x157C0000, 0x05DC0000, 0x080002E9, 0x007800FF, \
0x157C0000, 0x09C40000, 0x0800022F, 0x007800FF, \
0x157C0000, 0x0DAC0000, 0x08000174, 0x007800FF, \
0x157C0000, 0x11940000, 0x080000BA, 0x007800FF, \
0x157C0000, 0x157C0000, 0x08000000, 0x007800FF
var_80ADE8D8: .word \
0xEE6C0000, 0xEA840000, 0x00BA0800, 0x007800FF, \
0xEE6C0000, 0xEE6C0000, 0x00BA0746, 0x007800FF, \
0xEE6C0000, 0xF2540000, 0x00BA068C, 0x007800FF, \
0xEE6C0000, 0xF63C0000, 0x00BA05D1, 0x007800FF, \
0xEE6C0000, 0xFA240000, 0x00BA0517, 0x007800FF, \
0xEE6C0000, 0xFE0C0000, 0x00BA045D, 0x007800FF, \
0xEE6C0000, 0x01F40000, 0x00BA03A3, 0x007800FF, \
0xEE6C0000, 0x05DC0000, 0x00BA02E9, 0x007800FF, \
0xEE6C0000, 0x09C40000, 0x00BA022F, 0x007800FF, \
0xEE6C0000, 0x0DAC0000, 0x00BA0174, 0x007800FF, \
0xEE6C0000, 0x11940000, 0x00BA00BA, 0x007800FF, \
0xEE6C0000, 0x157C0000, 0x00BA0000, 0x007800FF, \
0xEA840000, 0xEA840000, 0x00000800, 0x007800FF, \
0xEA840000, 0xEE6C0000, 0x00000746, 0x007800FF, \
0xEA840000, 0xF2540000, 0x0000068C, 0x007800FF, \
0xEA840000, 0xF63C0000, 0x000005D1, 0x007800FF, \
0xEA840000, 0xFA240000, 0x00000517, 0x007800FF, \
0xEA840000, 0xFE0C0000, 0x0000045D, 0x007800FF, \
0xEA840000, 0x01F40000, 0x000003A3, 0x007800FF, \
0xEA840000, 0x05DC0000, 0x000002E9, 0x007800FF, \
0xEA840000, 0x09C40000, 0x0000022F, 0x007800FF, \
0xEA840000, 0x0DAC0000, 0x00000174, 0x007800FF, \
0xEA840000, 0x11940000, 0x000000BA, 0x007800FF, \
0xEA840000, 0x157C0000, 0x00000000, 0x007800FF, \
0xF2540000, 0xEA840000, 0x01740800, 0x007800FF, \
0xF2540000, 0xEE6C0000, 0x01740746, 0x007800FF, \
0xF2540000, 0xF2540000, 0x0174068C, 0x007800FF, \
0xF2540000, 0xF63C0000, 0x017405D1, 0x007800FF, \
0xF2540000, 0xFA240000, 0x01740517, 0x007800FF, \
0xF2540000, 0xFE0C0000, 0x0174045D, 0x007800FF, \
0xF2540000, 0x01F40000, 0x017403A3, 0x007800FF, \
0xF2540000, 0x05DC0000, 0x017402E9, 0x007800FF, \
0xF2540000, 0x09C40000, 0x0174022F, 0x007800FF, \
0xF2540000, 0x0DAC0000, 0x01740174, 0x007800FF, \
0xF2540000, 0x11940000, 0x017400BA, 0x007800FF, \
0xF2540000, 0x157C0000, 0x01740000, 0x007800FF, \
0xF63C0000, 0xEA840000, 0x022F0800, 0x007800FF, \
0xF63C0000, 0xEE6C0000, 0x022F0746, 0x007800FF, \
0xF63C0000, 0xF2540000, 0x022F068C, 0x007800FF, \
0xF63C0000, 0xF63C0000, 0x022F05D1, 0x007800FF, \
0xF63C0000, 0xFA240000, 0x022F0517, 0x007800FF, \
0xF63C0000, 0xFE0C0000, 0x022F045D, 0x007800FF, \
0xF63C0000, 0x01F40000, 0x022F03A3, 0x007800FF, \
0xF63C0000, 0x05DC0000, 0x022F02E9, 0x007800FF, \
0xF63C0000, 0x09C40000, 0x022F022F, 0x007800FF, \
0xF63C0000, 0x0DAC0000, 0x022F0174, 0x007800FF, \
0xF63C0000, 0x11940000, 0x022F00BA, 0x007800FF, \
0xF63C0000, 0x157C0000, 0x022F0000, 0x007800FF, \
0xFA240000, 0xEA840000, 0x02E90800, 0x007800FF, \
0xFA240000, 0xEE6C0000, 0x02E90746, 0x007800FF, \
0xFA240000, 0xF2540000, 0x02E9068C, 0x007800FF, \
0xFA240000, 0xF63C0000, 0x02E905D1, 0x007800FF, \
0xFA240000, 0xFA240000, 0x02E90517, 0x007800FF, \
0xFA240000, 0xFE0C0000, 0x02E9045D, 0x007800FF, \
0xFA240000, 0x01F40000, 0x02E903A3, 0x007800FF, \
0xFA240000, 0x05DC0000, 0x02E902E9, 0x007800FF, \
0xFA240000, 0x09C40000, 0x02E9022F, 0x007800FF, \
0xFA240000, 0x0DAC0000, 0x02E90174, 0x007800FF, \
0xFA240000, 0x11940000, 0x02E900BA, 0x007800FF, \
0xFA240000, 0x157C0000, 0x02E90000, 0x007800FF, \
0xFE0C0000, 0xEA840000, 0x03A30800, 0x007800FF, \
0xFE0C0000, 0xEE6C0000, 0x03A30746, 0x007800FF, \
0xFE0C0000, 0xF2540000, 0x03A3068C, 0x007800FF, \
0xFE0C0000, 0xF63C0000, 0x03A305D1, 0x007800FF, \
0xFE0C0000, 0xFA240000, 0x03A30517, 0x007800FF, \
0xFE0C0000, 0xFE0C0000, 0x03A3045D, 0x007800FF, \
0xFE0C0000, 0x01F40000, 0x03A303A3, 0x007800FF, \
0xFE0C0000, 0x05DC0000, 0x03A302E9, 0x007800FF, \
0xFE0C0000, 0x09C40000, 0x03A3022F, 0x007800FF, \
0xFE0C0000, 0x0DAC0000, 0x03A30174, 0x007800FF, \
0xFE0C0000, 0x11940000, 0x03A300BA, 0x007800FF, \
0xFE0C0000, 0x157C0000, 0x03A30000, 0x007800FF, \
0x01F40000, 0xEA840000, 0x045D0800, 0x007800FF, \
0x01F40000, 0xEE6C0000, 0x045D0746, 0x007800FF, \
0x01F40000, 0xF2540000, 0x045D068C, 0x007800FF, \
0x01F40000, 0xF63C0000, 0x045D05D1, 0x007800FF, \
0x01F40000, 0xFA240000, 0x045D0517, 0x007800FF, \
0x01F40000, 0xFE0C0000, 0x045D045D, 0x007800FF, \
0x01F40000, 0x01F40000, 0x045D03A3, 0x007800FF, \
0x01F40000, 0x05DC0000, 0x045D02E9, 0x007800FF, \
0x01F40000, 0x09C40000, 0x045D022F, 0x007800FF, \
0x01F40000, 0x0DAC0000, 0x045D0174, 0x007800FF, \
0x01F40000, 0x11940000, 0x045D00BA, 0x007800FF, \
0x01F40000, 0x157C0000, 0x045D0000, 0x007800FF, \
0x05DC0000, 0xEA840000, 0x05170800, 0x007800FF, \
0x05DC0000, 0xEE6C0000, 0x05170746, 0x007800FF, \
0x05DC0000, 0xF2540000, 0x0517068C, 0x007800FF, \
0x05DC0000, 0xF63C0000, 0x051705D1, 0x007800FF, \
0x05DC0000, 0xFA240000, 0x05170517, 0x007800FF, \
0x05DC0000, 0xFE0C0000, 0x0517045D, 0x007800FF, \
0x05DC0000, 0x01F40000, 0x051703A3, 0x007800FF, \
0x05DC0000, 0x05DC0000, 0x051702E9, 0x007800FF, \
0x05DC0000, 0x09C40000, 0x0517022F, 0x007800FF, \
0x05DC0000, 0x0DAC0000, 0x05170174, 0x007800FF, \
0x05DC0000, 0x11940000, 0x051700BA, 0x007800FF, \
0x05DC0000, 0x157C0000, 0x05170000, 0x007800FF, \
0x09C40000, 0xEA840000, 0x05D10800, 0x007800FF, \
0x09C40000, 0xEE6C0000, 0x05D10746, 0x007800FF, \
0x09C40000, 0xF2540000, 0x05D1068C, 0x007800FF, \
0x09C40000, 0xF63C0000, 0x05D105D1, 0x007800FF, \
0x09C40000, 0xFA240000, 0x05D10517, 0x007800FF, \
0x09C40000, 0xFE0C0000, 0x05D1045D, 0x007800FF, \
0x09C40000, 0x01F40000, 0x05D103A3, 0x007800FF, \
0x09C40000, 0x05DC0000, 0x05D102E9, 0x007800FF, \
0x09C40000, 0x09C40000, 0x05D1022F, 0x007800FF, \
0x09C40000, 0x0DAC0000, 0x05D10174, 0x007800FF, \
0x09C40000, 0x11940000, 0x05D100BA, 0x007800FF, \
0x09C40000, 0x157C0000, 0x05D10000, 0x007800FF, \
0x0DAC0000, 0xEA840000, 0x068C0800, 0x007800FF, \
0x0DAC0000, 0xEE6C0000, 0x068C0746, 0x007800FF, \
0x0DAC0000, 0xF2540000, 0x068C068C, 0x007800FF, \
0x0DAC0000, 0xF63C0000, 0x068C05D1, 0x007800FF, \
0x0DAC0000, 0xFA240000, 0x068C0517, 0x007800FF, \
0x0DAC0000, 0xFE0C0000, 0x068C045D, 0x007800FF, \
0x0DAC0000, 0x01F40000, 0x068C03A3, 0x007800FF, \
0x0DAC0000, 0x05DC0000, 0x068C02E9, 0x007800FF, \
0x0DAC0000, 0x09C40000, 0x068C022F, 0x007800FF, \
0x0DAC0000, 0x0DAC0000, 0x068C0174, 0x007800FF, \
0x0DAC0000, 0x11940000, 0x068C00BA, 0x007800FF, \
0x0DAC0000, 0x157C0000, 0x068C0000, 0x007800FF, \
0x11940000, 0xEA840000, 0x07460800, 0x007800FF, \
0x11940000, 0xEE6C0000, 0x07460746, 0x007800FF, \
0x11940000, 0xF2540000, 0x0746068C, 0x007800FF, \
0x11940000, 0xF63C0000, 0x074605D1, 0x007800FF, \
0x11940000, 0xFA240000, 0x07460517, 0x007800FF, \
0x11940000, 0xFE0C0000, 0x0746045D, 0x007800FF, \
0x11940000, 0x01F40000, 0x074603A3, 0x007800FF, \
0x11940000, 0x05DC0000, 0x074602E9, 0x007800FF, \
0x11940000, 0x09C40000, 0x0746022F, 0x007800FF, \
0x11940000, 0x0DAC0000, 0x07460174, 0x007800FF, \
0x11940000, 0x11940000, 0x074600BA, 0x007800FF, \
0x11940000, 0x157C0000, 0x07460000, 0x007800FF, \
0x157C0000, 0xEA840000, 0x08000800, 0x007800FF, \
0x157C0000, 0xEE6C0000, 0x08000746, 0x007800FF, \
0x157C0000, 0xF2540000, 0x0800068C, 0x007800FF, \
0x157C0000, 0xF63C0000, 0x080005D1, 0x007800FF, \
0x157C0000, 0xFA240000, 0x08000517, 0x007800FF, \
0x157C0000, 0xFE0C0000, 0x0800045D, 0x007800FF, \
0x157C0000, 0x01F40000, 0x080003A3, 0x007800FF, \
0x157C0000, 0x05DC0000, 0x080002E9, 0x007800FF, \
0x157C0000, 0x09C40000, 0x0800022F, 0x007800FF, \
0x157C0000, 0x0DAC0000, 0x08000174, 0x007800FF, \
0x157C0000, 0x11940000, 0x080000BA, 0x007800FF, \
0x157C0000, 0x157C0000, 0x08000000, 0x007800FF
var_80ADF1D8: .word \
0xEE6C0000, 0xEA840000, 0x00BA0800, 0x007800FF, \
0xEE6C0000, 0xEE6C0000, 0x00BA0746, 0x007800FF, \
0xEE6C0000, 0xF2540000, 0x00BA068C, 0x007800FF, \
0xEE6C0000, 0xF63C0000, 0x00BA05D1, 0x007800FF, \
0xEE6C0000, 0xFA240000, 0x00BA0517, 0x007800FF, \
0xEE6C0000, 0xFE0C0000, 0x00BA045D, 0x007800FF, \
0xEE6C0000, 0x01F40000, 0x00BA03A3, 0x007800FF, \
0xEE6C0000, 0x05DC0000, 0x00BA02E9, 0x007800FF, \
0xEE6C0000, 0x09C40000, 0x00BA022F, 0x007800FF, \
0xEE6C0000, 0x0DAC0000, 0x00BA0174, 0x007800FF, \
0xEE6C0000, 0x11940000, 0x00BA00BA, 0x007800FF, \
0xEE6C0000, 0x157C0000, 0x00BA0000, 0x007800FF, \
0xEA840000, 0xEA840000, 0x00000800, 0x007800FF, \
0xEA840000, 0xEE6C0000, 0x00000746, 0x007800FF, \
0xEA840000, 0xF2540000, 0x0000068C, 0x007800FF, \
0xEA840000, 0xF63C0000, 0x000005D1, 0x007800FF, \
0xEA840000, 0xFA240000, 0x00000517, 0x007800FF, \
0xEA840000, 0xFE0C0000, 0x0000045D, 0x007800FF, \
0xEA840000, 0x01F40000, 0x000003A3, 0x007800FF, \
0xEA840000, 0x05DC0000, 0x000002E9, 0x007800FF, \
0xEA840000, 0x09C40000, 0x0000022F, 0x007800FF, \
0xEA840000, 0x0DAC0000, 0x00000174, 0x007800FF, \
0xEA840000, 0x11940000, 0x000000BA, 0x007800FF, \
0xEA840000, 0x157C0000, 0x00000000, 0x007800FF, \
0xF2540000, 0xEA840000, 0x01740800, 0x007800FF, \
0xF2540000, 0xEE6C0000, 0x01740746, 0x007800FF, \
0xF2540000, 0xF2540000, 0x0174068C, 0x007800FF, \
0xF2540000, 0xF63C0000, 0x017405D1, 0x007800FF, \
0xF2540000, 0xFA240000, 0x01740517, 0x007800FF, \
0xF2540000, 0xFE0C0000, 0x0174045D, 0x007800FF, \
0xF2540000, 0x01F40000, 0x017403A3, 0x007800FF, \
0xF2540000, 0x05DC0000, 0x017402E9, 0x007800FF, \
0xF2540000, 0x09C40000, 0x0174022F, 0x007800FF, \
0xF2540000, 0x0DAC0000, 0x01740174, 0x007800FF, \
0xF2540000, 0x11940000, 0x017400BA, 0x007800FF, \
0xF2540000, 0x157C0000, 0x01740000, 0x007800FF, \
0xF63C0000, 0xEA840000, 0x022F0800, 0x007800FF, \
0xF63C0000, 0xEE6C0000, 0x022F0746, 0x007800FF, \
0xF63C0000, 0xF2540000, 0x022F068C, 0x007800FF, \
0xF63C0000, 0xF63C0000, 0x022F05D1, 0x007800FF, \
0xF63C0000, 0xFA240000, 0x022F0517, 0x007800FF, \
0xF63C0000, 0xFE0C0000, 0x022F045D, 0x007800FF, \
0xF63C0000, 0x01F40000, 0x022F03A3, 0x007800FF, \
0xF63C0000, 0x05DC0000, 0x022F02E9, 0x007800FF, \
0xF63C0000, 0x09C40000, 0x022F022F, 0x007800FF, \
0xF63C0000, 0x0DAC0000, 0x022F0174, 0x007800FF, \
0xF63C0000, 0x11940000, 0x022F00BA, 0x007800FF, \
0xF63C0000, 0x157C0000, 0x022F0000, 0x007800FF, \
0xFA240000, 0xEA840000, 0x02E90800, 0x007800FF, \
0xFA240000, 0xEE6C0000, 0x02E90746, 0x007800FF, \
0xFA240000, 0xF2540000, 0x02E9068C, 0x007800FF, \
0xFA240000, 0xF63C0000, 0x02E905D1, 0x007800FF, \
0xFA240000, 0xFA240000, 0x02E90517, 0x007800FF, \
0xFA240000, 0xFE0C0000, 0x02E9045D, 0x007800FF, \
0xFA240000, 0x01F40000, 0x02E903A3, 0x007800FF, \
0xFA240000, 0x05DC0000, 0x02E902E9, 0x007800FF, \
0xFA240000, 0x09C40000, 0x02E9022F, 0x007800FF, \
0xFA240000, 0x0DAC0000, 0x02E90174, 0x007800FF, \
0xFA240000, 0x11940000, 0x02E900BA, 0x007800FF, \
0xFA240000, 0x157C0000, 0x02E90000, 0x007800FF, \
0xFE0C0000, 0xEA840000, 0x03A30800, 0x007800FF, \
0xFE0C0000, 0xEE6C0000, 0x03A30746, 0x007800FF, \
0xFE0C0000, 0xF2540000, 0x03A3068C, 0x007800FF, \
0xFE0C0000, 0xF63C0000, 0x03A305D1, 0x007800FF, \
0xFE0C0000, 0xFA240000, 0x03A30517, 0x007800FF, \
0xFE0C0000, 0xFE0C0000, 0x03A3045D, 0x007800FF, \
0xFE0C0000, 0x01F40000, 0x03A303A3, 0x007800FF, \
0xFE0C0000, 0x05DC0000, 0x03A302E9, 0x007800FF, \
0xFE0C0000, 0x09C40000, 0x03A3022F, 0x007800FF, \
0xFE0C0000, 0x0DAC0000, 0x03A30174, 0x007800FF, \
0xFE0C0000, 0x11940000, 0x03A300BA, 0x007800FF, \
0xFE0C0000, 0x157C0000, 0x03A30000, 0x007800FF, \
0x01F40000, 0xEA840000, 0x045D0800, 0x007800FF, \
0x01F40000, 0xEE6C0000, 0x045D0746, 0x007800FF, \
0x01F40000, 0xF2540000, 0x045D068C, 0x007800FF, \
0x01F40000, 0xF63C0000, 0x045D05D1, 0x007800FF, \
0x01F40000, 0xFA240000, 0x045D0517, 0x007800FF, \
0x01F40000, 0xFE0C0000, 0x045D045D, 0x007800FF, \
0x01F40000, 0x01F40000, 0x045D03A3, 0x007800FF, \
0x01F40000, 0x05DC0000, 0x045D02E9, 0x007800FF, \
0x01F40000, 0x09C40000, 0x045D022F, 0x007800FF, \
0x01F40000, 0x0DAC0000, 0x045D0174, 0x007800FF, \
0x01F40000, 0x11940000, 0x045D00BA, 0x007800FF, \
0x01F40000, 0x157C0000, 0x045D0000, 0x007800FF, \
0x05DC0000, 0xEA840000, 0x05170800, 0x007800FF, \
0x05DC0000, 0xEE6C0000, 0x05170746, 0x007800FF, \
0x05DC0000, 0xF2540000, 0x0517068C, 0x007800FF, \
0x05DC0000, 0xF63C0000, 0x051705D1, 0x007800FF, \
0x05DC0000, 0xFA240000, 0x05170517, 0x007800FF, \
0x05DC0000, 0xFE0C0000, 0x0517045D, 0x007800FF, \
0x05DC0000, 0x01F40000, 0x051703A3, 0x007800FF, \
0x05DC0000, 0x05DC0000, 0x051702E9, 0x007800FF, \
0x05DC0000, 0x09C40000, 0x0517022F, 0x007800FF, \
0x05DC0000, 0x0DAC0000, 0x05170174, 0x007800FF, \
0x05DC0000, 0x11940000, 0x051700BA, 0x007800FF, \
0x05DC0000, 0x157C0000, 0x05170000, 0x007800FF, \
0x09C40000, 0xEA840000, 0x05D10800, 0x007800FF, \
0x09C40000, 0xEE6C0000, 0x05D10746, 0x007800FF, \
0x09C40000, 0xF2540000, 0x05D1068C, 0x007800FF, \
0x09C40000, 0xF63C0000, 0x05D105D1, 0x007800FF, \
0x09C40000, 0xFA240000, 0x05D10517, 0x007800FF, \
0x09C40000, 0xFE0C0000, 0x05D1045D, 0x007800FF, \
0x09C40000, 0x01F40000, 0x05D103A3, 0x007800FF, \
0x09C40000, 0x05DC0000, 0x05D102E9, 0x007800FF, \
0x09C40000, 0x09C40000, 0x05D1022F, 0x007800FF, \
0x09C40000, 0x0DAC0000, 0x05D10174, 0x007800FF, \
0x09C40000, 0x11940000, 0x05D100BA, 0x007800FF, \
0x09C40000, 0x157C0000, 0x05D10000, 0x007800FF, \
0x0DAC0000, 0xEA840000, 0x068C0800, 0x007800FF, \
0x0DAC0000, 0xEE6C0000, 0x068C0746, 0x007800FF, \
0x0DAC0000, 0xF2540000, 0x068C068C, 0x007800FF, \
0x0DAC0000, 0xF63C0000, 0x068C05D1, 0x007800FF, \
0x0DAC0000, 0xFA240000, 0x068C0517, 0x007800FF, \
0x0DAC0000, 0xFE0C0000, 0x068C045D, 0x007800FF, \
0x0DAC0000, 0x01F40000, 0x068C03A3, 0x007800FF, \
0x0DAC0000, 0x05DC0000, 0x068C02E9, 0x007800FF, \
0x0DAC0000, 0x09C40000, 0x068C022F, 0x007800FF, \
0x0DAC0000, 0x0DAC0000, 0x068C0174, 0x007800FF, \
0x0DAC0000, 0x11940000, 0x068C00BA, 0x007800FF, \
0x0DAC0000, 0x157C0000, 0x068C0000, 0x007800FF, \
0x11940000, 0xEA840000, 0x07460800, 0x007800FF, \
0x11940000, 0xEE6C0000, 0x07460746, 0x007800FF, \
0x11940000, 0xF2540000, 0x0746068C, 0x007800FF, \
0x11940000, 0xF63C0000, 0x074605D1, 0x007800FF, \
0x11940000, 0xFA240000, 0x07460517, 0x007800FF, \
0x11940000, 0xFE0C0000, 0x0746045D, 0x007800FF, \
0x11940000, 0x01F40000, 0x074603A3, 0x007800FF, \
0x11940000, 0x05DC0000, 0x074602E9, 0x007800FF, \
0x11940000, 0x09C40000, 0x0746022F, 0x007800FF, \
0x11940000, 0x0DAC0000, 0x07460174, 0x007800FF, \
0x11940000, 0x11940000, 0x074600BA, 0x007800FF, \
0x11940000, 0x157C0000, 0x07460000, 0x007800FF, \
0x157C0000, 0xEA840000, 0x08000800, 0x007800FF, \
0x157C0000, 0xEE6C0000, 0x08000746, 0x007800FF, \
0x157C0000, 0xF2540000, 0x0800068C, 0x007800FF, \
0x157C0000, 0xF63C0000, 0x080005D1, 0x007800FF, \
0x157C0000, 0xFA240000, 0x08000517, 0x007800FF, \
0x157C0000, 0xFE0C0000, 0x0800045D, 0x007800FF, \
0x157C0000, 0x01F40000, 0x080003A3, 0x007800FF, \
0x157C0000, 0x05DC0000, 0x080002E9, 0x007800FF, \
0x157C0000, 0x09C40000, 0x0800022F, 0x007800FF, \
0x157C0000, 0x0DAC0000, 0x08000174, 0x007800FF, \
0x157C0000, 0x11940000, 0x080000BA, 0x007800FF, \
0x157C0000, 0x157C0000, 0x08000000, 0x007800FF
var_80ADFAD8: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD100000
.word var_80ADCFD8
.word \
0xF5100000, 0x07098150, 0xE6000000, 0x00000000, \
0xF3000000, 0x077FF100, 0xE7000000, 0x00000000, \
0xF5101000, 0x00098150, 0xF2000000, 0x0007C0FC, \
0xFC127FFF, 0xFFFFF238, 0xE200001C, 0xC8112078, \
0xD9F3FBFF, 0x00000000, 0xD9FFFFFF, 0x00030000, \
0xFA000000, 0xFFFFFFFF, 0xDF000000, 0x00000000
var_80ADFB58: .word \
0xE7000000, 0x00000000, 0xE3001001, 0x00000000, \
0xD7000002, 0xFFFFFFFF, 0xFD900000
.word var_80AE0AE0
.word \
0xF5900000, 0x07098150, 0xE6000000, 0x00000000, \
0xF3000000, 0x073FF200, 0xE7000000, 0x00000000, \
0xF5880800, 0x00098150, 0xF2000000, 0x0007C0FC, \
0xFC3097FF, 0x5FFEFE38, 0xE200001C, 0xC81049D8, \
0xD9F1FBFF, 0x00000000, 0xDF000000, 0x00000000
var_80ADFBC8: .word \
0xE7000000, 0x00000000, 0x01018030, 0x0C000000, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000180, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000240, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000300, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C0003C0, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000480, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000540, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000600, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C0006C0, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0x0100C030, 0x0C000780, \
0x06181A02, 0x00180200, 0x061A1C04, 0x001A0402, \
0x061C1E06, 0x001C0604, 0x061E2008, 0x001E0806, \
0x0620220A, 0x00200A08, 0x0622240C, 0x00220C0A, \
0x0624260E, 0x00240E0C, 0x06262810, 0x0026100E, \
0x06282A12, 0x00281210, 0x062A2C14, 0x002A1412, \
0x062C2E16, 0x002C1614, 0x0100C018, 0x0C000840, \
0x0600021A, 0x00001A18, 0x0602041C, 0x00021C1A, \
0x0604061E, 0x00041E1C, 0x06060820, 0x0006201E, \
0x06080A22, 0x00082220, 0x060A0C24, 0x000A2422, \
0x060C0E26, 0x000C2624, 0x060E1028, 0x000E2826, \
0x0610122A, 0x00102A28, 0x0612142C, 0x00122C2A, \
0x0614162E, 0x00142E2C, 0xDF000000, 0x00000000
var_80ADFFF8: .word \
0xEE6C0000, 0xEA840000, 0x00BA0800, 0x007800FF, \
0xEE6C0000, 0xEE6C0000, 0x00BA0746, 0x007800FF, \
0xEE6C0000, 0xF2540000, 0x00BA068C, 0x007800FF, \
0xEE6C0000, 0xF63C0000, 0x00BA05D1, 0x007800FF, \
0xEE6C0000, 0xFA240000, 0x00BA0517, 0x007800FF, \
0xEE6C0000, 0xFE0C0000, 0x00BA045D, 0x007800FF, \
0xEE6C0000, 0x01F40000, 0x00BA03A3, 0x007800FF, \
0xEE6C0000, 0x05DC0000, 0x00BA02E9, 0x007800FF, \
0xEE6C0000, 0x09C40000, 0x00BA022F, 0x007800FF, \
0xEE6C0000, 0x0DAC0000, 0x00BA0174, 0x007800FF, \
0xEE6C0000, 0x11940000, 0x00BA00BA, 0x007800FF, \
0xEE6C0000, 0x157C0000, 0x00BA0000, 0x007800FF, \
0xEA840000, 0xEA840000, 0x00000800, 0x007800FF, \
0xEA840000, 0xEE6C0000, 0x00000746, 0x007800FF, \
0xEA840000, 0xF2540000, 0x0000068C, 0x007800FF, \
0xEA840000, 0xF63C0000, 0x000005D1, 0x007800FF, \
0xEA840000, 0xFA240000, 0x00000517, 0x007800FF, \
0xEA840000, 0xFE0C0000, 0x0000045D, 0x007800FF, \
0xEA840000, 0x01F40000, 0x000003A3, 0x007800FF, \
0xEA840000, 0x05DC0000, 0x000002E9, 0x007800FF, \
0xEA840000, 0x09C40000, 0x0000022F, 0x007800FF, \
0xEA840000, 0x0DAC0000, 0x00000174, 0x007800FF, \
0xEA840000, 0x11940000, 0x000000BA, 0x007800FF, \
0xEA840000, 0x157C0000, 0x00000000, 0x007800FF, \
0xF2540000, 0xEA840000, 0x01740800, 0x007800FF, \
0xF2540000, 0xEE6C0000, 0x01740746, 0x007800FF, \
0xF2540000, 0xF2540000, 0x0174068C, 0x007800FF, \
0xF2540000, 0xF63C0000, 0x017405D1, 0x007800FF, \
0xF2540000, 0xFA240000, 0x01740517, 0x007800FF, \
0xF2540000, 0xFE0C0000, 0x0174045D, 0x007800FF, \
0xF2540000, 0x01F40000, 0x017403A3, 0x007800FF, \
0xF2540000, 0x05DC0000, 0x017402E9, 0x007800FF, \
0xF2540000, 0x09C40000, 0x0174022F, 0x007800FF, \
0xF2540000, 0x0DAC0000, 0x01740174, 0x007800FF, \
0xF2540000, 0x11940000, 0x017400BA, 0x007800FF, \
0xF2540000, 0x157C0000, 0x01740000, 0x007800FF, \
0xF63C0000, 0xEA840000, 0x022F0800, 0x007800FF, \
0xF63C0000, 0xEE6C0000, 0x022F0746, 0x007800FF, \
0xF63C0000, 0xF2540000, 0x022F068C, 0x007800FF, \
0xF63C0000, 0xF63C0000, 0x022F05D1, 0x007800FF, \
0xF63C0000, 0xFA240000, 0x022F0517, 0x007800FF, \
0xF63C0000, 0xFE0C0000, 0x022F045D, 0x007800FF, \
0xF63C0000, 0x01F40000, 0x022F03A3, 0x007800FF, \
0xF63C0000, 0x05DC0000, 0x022F02E9, 0x007800FF, \
0xF63C0000, 0x09C40000, 0x022F022F, 0x007800FF, \
0xF63C0000, 0x0DAC0000, 0x022F0174, 0x007800FF, \
0xF63C0000, 0x11940000, 0x022F00BA, 0x007800FF, \
0xF63C0000, 0x157C0000, 0x022F0000, 0x007800FF, \
0xFA240000, 0xEA840000, 0x02E90800, 0x007800FF, \
0xFA240000, 0xEE6C0000, 0x02E90746, 0x007800FF, \
0xFA240000, 0xF2540000, 0x02E9068C, 0x007800FF, \
0xFA240000, 0xF63C0000, 0x02E905D1, 0x007800FF, \
0xFA240000, 0xFA240000, 0x02E90517, 0x007800FF, \
0xFA240000, 0xFE0C0000, 0x02E9045D, 0x007800FF, \
0xFA240000, 0x01F40000, 0x02E903A3, 0x007800FF, \
0xFA240000, 0x05DC0000, 0x02E902E9, 0x007800FF, \
0xFA240000, 0x09C40000, 0x02E9022F, 0x007800FF, \
0xFA240000, 0x0DAC0000, 0x02E90174, 0x007800FF, \
0xFA240000, 0x11940000, 0x02E900BA, 0x007800FF, \
0xFA240000, 0x157C0000, 0x02E90000, 0x007800FF, \
0xFE0C0000, 0xEA840000, 0x03A30800, 0x007800FF, \
0xFE0C0000, 0xEE6C0000, 0x03A30746, 0x007800FF, \
0xFE0C0000, 0xF2540000, 0x03A3068C, 0x007800FF, \
0xFE0C0000, 0xF63C0000, 0x03A305D1, 0x007800FF, \
0xFE0C0000, 0xFA240000, 0x03A30517, 0x007800FF, \
0xFE0C0000, 0xFE0C0000, 0x03A3045D, 0x007800FF, \
0xFE0C0000, 0x01F40000, 0x03A303A3, 0x007800FF, \
0xFE0C0000, 0x05DC0000, 0x03A302E9, 0x007800FF, \
0xFE0C0000, 0x09C40000, 0x03A3022F, 0x007800FF, \
0xFE0C0000, 0x0DAC0000, 0x03A30174, 0x007800FF, \
0xFE0C0000, 0x11940000, 0x03A300BA, 0x007800FF, \
0xFE0C0000, 0x157C0000, 0x03A30000, 0x007800FF, \
0x01F40000, 0xEA840000, 0x045D0800, 0x007800FF, \
0x01F40000, 0xEE6C0000, 0x045D0746, 0x007800FF, \
0x01F40000, 0xF2540000, 0x045D068C, 0x007800FF, \
0x01F40000, 0xF63C0000, 0x045D05D1, 0x007800FF, \
0x01F40000, 0xFA240000, 0x045D0517, 0x007800FF, \
0x01F40000, 0xFE0C0000, 0x045D045D, 0x007800FF, \
0x01F40000, 0x01F40000, 0x045D03A3, 0x007800FF, \
0x01F40000, 0x05DC0000, 0x045D02E9, 0x007800FF, \
0x01F40000, 0x09C40000, 0x045D022F, 0x007800FF, \
0x01F40000, 0x0DAC0000, 0x045D0174, 0x007800FF, \
0x01F40000, 0x11940000, 0x045D00BA, 0x007800FF, \
0x01F40000, 0x157C0000, 0x045D0000, 0x007800FF, \
0x05DC0000, 0xEA840000, 0x05170800, 0x007800FF, \
0x05DC0000, 0xEE6C0000, 0x05170746, 0x007800FF, \
0x05DC0000, 0xF2540000, 0x0517068C, 0x007800FF, \
0x05DC0000, 0xF63C0000, 0x051705D1, 0x007800FF, \
0x05DC0000, 0xFA240000, 0x05170517, 0x007800FF, \
0x05DC0000, 0xFE0C0000, 0x0517045D, 0x007800FF, \
0x05DC0000, 0x01F40000, 0x051703A3, 0x007800FF, \
0x05DC0000, 0x05DC0000, 0x051702E9, 0x007800FF, \
0x05DC0000, 0x09C40000, 0x0517022F, 0x007800FF, \
0x05DC0000, 0x0DAC0000, 0x05170174, 0x007800FF, \
0x05DC0000, 0x11940000, 0x051700BA, 0x007800FF, \
0x05DC0000, 0x157C0000, 0x05170000, 0x007800FF, \
0x09C40000, 0xEA840000, 0x05D10800, 0x007800FF, \
0x09C40000, 0xEE6C0000, 0x05D10746, 0x007800FF, \
0x09C40000, 0xF2540000, 0x05D1068C, 0x007800FF, \
0x09C40000, 0xF63C0000, 0x05D105D1, 0x007800FF, \
0x09C40000, 0xFA240000, 0x05D10517, 0x007800FF, \
0x09C40000, 0xFE0C0000, 0x05D1045D, 0x007800FF, \
0x09C40000, 0x01F40000, 0x05D103A3, 0x007800FF, \
0x09C40000, 0x05DC0000, 0x05D102E9, 0x007800FF, \
0x09C40000, 0x09C40000, 0x05D1022F, 0x007800FF, \
0x09C40000, 0x0DAC0000, 0x05D10174, 0x007800FF, \
0x09C40000, 0x11940000, 0x05D100BA, 0x007800FF, \
0x09C40000, 0x157C0000, 0x05D10000, 0x007800FF, \
0x0DAC0000, 0xEA840000, 0x068C0800, 0x007800FF, \
0x0DAC0000, 0xEE6C0000, 0x068C0746, 0x007800FF, \
0x0DAC0000, 0xF2540000, 0x068C068C, 0x007800FF, \
0x0DAC0000, 0xF63C0000, 0x068C05D1, 0x007800FF, \
0x0DAC0000, 0xFA240000, 0x068C0517, 0x007800FF, \
0x0DAC0000, 0xFE0C0000, 0x068C045D, 0x007800FF, \
0x0DAC0000, 0x01F40000, 0x068C03A3, 0x007800FF, \
0x0DAC0000, 0x05DC0000, 0x068C02E9, 0x007800FF, \
0x0DAC0000, 0x09C40000, 0x068C022F, 0x007800FF, \
0x0DAC0000, 0x0DAC0000, 0x068C0174, 0x007800FF, \
0x0DAC0000, 0x11940000, 0x068C00BA, 0x007800FF, \
0x0DAC0000, 0x157C0000, 0x068C0000, 0x007800FF, \
0x11940000, 0xEA840000, 0x07460800, 0x007800FF, \
0x11940000, 0xEE6C0000, 0x07460746, 0x007800FF, \
0x11940000, 0xF2540000, 0x0746068C, 0x007800FF, \
0x11940000, 0xF63C0000, 0x074605D1, 0x007800FF, \
0x11940000, 0xFA240000, 0x07460517, 0x007800FF, \
0x11940000, 0xFE0C0000, 0x0746045D, 0x007800FF, \
0x11940000, 0x01F40000, 0x074603A3, 0x007800FF, \
0x11940000, 0x05DC0000, 0x074602E9, 0x007800FF, \
0x11940000, 0x09C40000, 0x0746022F, 0x007800FF, \
0x11940000, 0x0DAC0000, 0x07460174, 0x007800FF, \
0x11940000, 0x11940000, 0x074600BA, 0x007800FF, \
0x11940000, 0x157C0000, 0x07460000, 0x007800FF, \
0x157C0000, 0xEA840000, 0x08000800, 0x007800FF, \
0x157C0000, 0xEE6C0000, 0x08000746, 0x007800FF, \
0x157C0000, 0xF2540000, 0x0800068C, 0x007800FF, \
0x157C0000, 0xF63C0000, 0x080005D1, 0x007800FF, \
0x157C0000, 0xFA240000, 0x08000517, 0x007800FF, \
0x157C0000, 0xFE0C0000, 0x0800045D, 0x007800FF, \
0x157C0000, 0x01F40000, 0x080003A3, 0x007800FF, \
0x157C0000, 0x05DC0000, 0x080002E9, 0x007800FF, \
0x157C0000, 0x09C40000, 0x0800022F, 0x007800FF, \
0x157C0000, 0x0DAC0000, 0x08000174, 0x007800FF, \
0x157C0000, 0x11940000, 0x080000BA, 0x007800FF, \
0x157C0000, 0x157C0000, 0x08000000, 0x007800FF
var_80AE08F8: .word 0x00000000, 0x00000000
var_80AE0900: .word 0x00000000, 0x000007C0
var_80AE0908: .word \
0x00000000, 0x00010002, 0x00007FFF, 0x00000000, \
0x00000000, 0x00020003, 0x00007FFF, 0x00000000
var_80AE0928: .word \
0xEA840000, 0xEA84EA84, 0x0000157C, 0x157C0000, \
0x157C157C, 0x0000EA84
var_80AE0940: .word 0xEA840000, 0xEA84157C, 0x0000157C, 0x00040000
.word var_80AE0928
.word 0x00020000
.word var_80AE0908
.word var_80AE0900
.word var_80AE08F8
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80AE0970: .word 0x3CA3D70A
var_80AE0974: .word 0x45ABE000
var_80AE0978: .word 0x453B8000
var_80AE097C: .word 0x453B8000, 0x453B8000
var_80AE0984: .word 0x451C4000
var_80AE0988: .word 0x44BB8000
var_80AE098C: .word 0x3C23D70A
var_80AE0990: .word 0x453B8000
var_80AE0994: .word 0x44BB8000
var_80AE0998: .word 0x3C23D70A
var_80AE099C: .word 0x3B343958

.bss

var_80AE0AE0: .space 0x800
var_80AE12E0: .space 0x360
