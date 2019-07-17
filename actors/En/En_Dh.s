.section .text
func_8096BB40:
    sw      a1, 0x0244(a0)             # 00000244
    jr      $ra
    nop


func_8096BB4C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_8096D420)      # a1 = 80970000
    addiu   a1, a1, %lo(var_8096D420)  # a1 = 8096D420
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(var_8096D400)      # t6 = 80970000
    addiu   t6, t6, %lo(var_8096D400)  # t6 = 8096D400
    sw      t6, 0x0098(s0)             # 00000098
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x01E0             # t8 = 000001E0
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, 0x5880             # a3 = 06005880
    addiu   a2, a2, 0x7E88             # a2 = 06007E88
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4280                 # a3 = 42800000
    addiu   t0, $zero, 0x00FE          # t0 = 000000FE
    sh      $zero, 0x001C(s0)          # 0000001C
    sb      t0, 0x00AE(s0)             # 000000AE
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    bne     t1, $zero, lbl_8096BBFC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t2, $zero, 0x000E          # t2 = 0000000E
    beq     $zero, $zero, lbl_8096BC04
    sb      t2, 0x00AF(s0)             # 000000AF
lbl_8096BBFC:
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    sb      t3, 0x00AF(s0)             # 000000AF
lbl_8096BC04:
    lw      t6, 0x0004(s0)             # 00000004
    sb      t5, 0x0248(s0)             # 00000248
    sb      t5, 0x024A(s0)             # 0000024A
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    addiu   a1, s0, 0x0250             # a1 = 00000250
    jal     func_8004AB7C
    sw      a1, 0x0030($sp)
    lui     a3, %hi(var_8096D3A0)      # a3 = 80970000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_8096D3A0)  # a3 = 8096D3A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x029C             # a1 = 0000029C
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8096D3F0)      # a3 = 80970000
    addiu   t8, s0, 0x02BC             # t8 = 000002BC
    lw      a1, 0x0030($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, %lo(var_8096D3F0)  # a3 = 8096D3F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_8096BE68
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_8096BC88:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_800C6894
    nop
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0250             # a1 = 00000250
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x029C             # a1 = 0000029C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096BCD0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    lui     t7, %hi(var_8096D430)      # t7 = 80970000
    addiu   t7, t7, %lo(var_8096D430)  # t7 = 8096D430
    lw      t9, 0x0000(t7)             # 8096D430
    addiu   t6, $sp, 0x0050            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 8096D434
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 8096D438
    lui     t1, %hi(var_8096D43C)      # t1 = 80970000
    addiu   t1, t1, %lo(var_8096D43C)  # t1 = 8096D43C
    sw      t8, 0x0004(t6)             # FFFFFFEC
    sw      t9, 0x0008(t6)             # FFFFFFF0
    lw      t3, 0x0000(t1)             # 8096D43C
    addiu   t0, $sp, 0x0044            # t0 = FFFFFFDC
    lw      t2, 0x0004(t1)             # 8096D440
    sw      t3, 0x0000(t0)             # FFFFFFDC
    lw      t3, 0x0008(t1)             # 8096D444
    sw      t2, 0x0004(t0)             # FFFFFFE0
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0008(t0)             # FFFFFFE4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, %hi(var_8096D460)     # $at = 80970000
    lwc1    $f8, %lo(var_8096D460)($at)
    sub.s   $f6, $f0, $f4
    lw      t4, 0x006C($sp)
    mul.s   $f12, $f6, $f8
    swc1    $f12, 0x0040($sp)
    lwc1    $f10, 0x0080(t4)           # 00000080
    jal     func_800A45FC
    swc1    $f10, 0x0060($sp)
    lwc1    $f16, 0x0074($sp)
    lw      t5, 0x0070($sp)
    lwc1    $f12, 0x0040($sp)
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x0000(t5)            # 00000000
    add.s   $f6, $f18, $f4
    jal     func_800A4650
    swc1    $f6, 0x005C($sp)
    lwc1    $f8, 0x0074($sp)
    lw      t6, 0x0070($sp)
    mul.s   $f10, $f0, $f8
    lwc1    $f16, 0x0008(t6)           # 00000008
    add.s   $f18, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0064($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f8, 0x007C($sp)
    sub.s   $f6, $f0, $f4
    mul.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0044($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lwc1    $f4, 0x007C($sp)
    sub.s   $f18, $f0, $f16
    mul.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x004C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    sub.s   $f10, $f0, $f8
    lwc1    $f4, 0x0054($sp)
    mul.s   $f18, $f10, $f16
    add.s   $f6, $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0054($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    mul.s   $f10, $f0, $f8
    lwc1    $f18, 0x0080($sp)
    lw      t7, 0x0078($sp)
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    add.s   $f4, $f10, $f16
    lw      a0, 0x0068($sp)
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE8
    mul.s   $f6, $f4, $f18
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFDC
    sw      $zero, 0x0020($sp)
    sw      t7, 0x0010($sp)
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    jal     func_8001D21C
    sw      t9, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_8096BE68:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3A8C             # a1 = 06003A8C
    jal     func_8008D2D4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f12                  # $f12 = 600.00
    jal     func_80026D90
    sb      $zero, 0x024B(s0)          # 0000024B
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f12                  # $f12 = 600.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0010(s0)            # 00000010
    lui     $at, %hi(var_8096D464)     # $at = 80970000
    lw      t7, 0x0004(s0)             # 00000004
    add.s   $f10, $f0, $f8
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     a1, %hi(func_8096BF1C)     # a1 = 80970000
    swc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, %lo(var_8096D464)($at)
    sh      $zero, 0x001C(s0)          # 0000001C
    lbu     v0, 0x001D(s0)             # 0000001D
    ori     t8, t7, 0x0080             # t8 = 00000080
    sw      t8, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_8096BF1C) # a1 = 8096BF1C
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f2, 0x0308(s0)            # 00000308
    swc1    $f2, 0x0068(s0)            # 00000068
    sh      t6, 0x0032(s0)             # 00000032
    swc1    $f16, 0x00BC(s0)           # 000000BC
    sb      v0, 0x0240(s0)             # 00000240
    jal     func_8096BB40
    sh      v0, 0x024E(s0)             # 0000024E
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8096BF1C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   $at, $zero, 0x0005         # $at = 00000005
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    bnel    t7, $at, lbl_8096BF58
    lw      a0, 0x0034($sp)
    jal     func_800C6820
    addiu   a0, $zero, 0x0038          # a0 = 00000038
    lw      a0, 0x0034($sp)
lbl_8096BF58:
    jal     func_800264C8
    addiu   a1, s0, 0x0250             # a1 = 00000250
    beq     v0, $zero, lbl_8096BF6C
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x001C(s0)             # 0000001C
lbl_8096BF6C:
    lh      v0, 0x001C(s0)             # 0000001C
    bgtz    v0, lbl_8096BF80
    slti    $at, v0, 0xFFFD
    beql    $at, $zero, lbl_8096C130
    lw      $ra, 0x002C($sp)
lbl_8096BF80:
    lbu     v1, 0x0240(s0)             # 00000240
    addiu   $at, $zero, 0xFF7F         # $at = FFFFFF7F
    or      a0, s0, $zero              # a0 = 00000000
    beq     v1, $zero, lbl_8096BFB0
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8096BFE8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8096C0E8
    nop
    beq     $zero, $zero, lbl_8096C0F4
    lh      a1, 0x008A(s0)             # 0000008A
lbl_8096BFB0:
    lw      t9, 0x0004(s0)             # 00000004
    lbu     t5, 0x0242(s0)             # 00000242
    lh      t1, 0x008A(s0)             # 0000008A
    ori     t0, t9, 0x0001             # t0 = 00000001
    sw      t0, 0x0004(s0)             # 00000004
    and     t3, t0, $at
    addiu   t4, v1, 0x0001             # t4 = 00000001
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sw      t3, 0x0004(s0)             # 00000004
    sb      t4, 0x0240(s0)             # 00000240
    sb      t6, 0x0242(s0)             # 00000242
    addiu   a1, $zero, 0x39A8          # a1 = 000039A8
    jal     func_80022FD0
    sh      t1, 0x00B6(s0)             # 000000B6
lbl_8096BFE8:
    lh      t7, 0x024E(s0)             # 0000024E
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   a0, s0, 0x0308             # a0 = 00000308
    addiu   t8, t7, 0x03A7             # t8 = 000003A7
    sh      t8, 0x024E(s0)             # 0000024E
    lui     a1, 0x4396                 # a1 = 43960000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x024E(s0)             # 0000024E
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f10                  # $f10 = 55.00
    lh      a0, 0x024E(s0)             # 0000024E
    mul.s   $f16, $f0, $f10
    jal     func_800636C4              # sins?
    swc1    $f16, 0x030C(s0)           # 0000030C
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    lui     $at, %hi(var_8096D468)     # $at = 80970000
    lw      a3, 0x0308(s0)             # 00000308
    mul.s   $f4, $f0, $f18
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    sll     t1, t0, 16
    sra     t2, t1, 16
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0310(s0)           # 00000310
    lwc1    $f16, %lo(var_8096D468)($at)
    lui     $at, %hi(var_8096D46C)     # $at = 80970000
    lwc1    $f18, %lo(var_8096D46C)($at)
    sw      t3, 0x0010($sp)
    lw      a0, 0x0034($sp)
    swc1    $f16, 0x0014($sp)
    jal     func_8096BCD0
    swc1    $f18, 0x0018($sp)
    lwc1    $f0, 0x00BC(s0)            # 000000BC
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_8096C0C8
    lh      t6, 0x024E(s0)             # 0000024E
    lbu     t4, 0x0240(s0)             # 00000240
    sb      $zero, 0x0242(s0)          # 00000242
    addiu   t5, t4, 0x0001             # t5 = 00000001
    beq     $zero, $zero, lbl_8096C0F0
    sb      t5, 0x0240(s0)             # 00000240
    lh      t6, 0x024E(s0)             # 0000024E
lbl_8096C0C8:
    slti    $at, t6, 0x12C1
    bne     $at, $zero, lbl_8096C0F0
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    nop
    add.s   $f8, $f0, $f6
    beq     $zero, $zero, lbl_8096C0F0
    swc1    $f8, 0x00BC(s0)            # 000000BC
lbl_8096C0E8:
    jal     func_8096C140
    or      a0, s0, $zero              # a0 = 00000000
lbl_8096C0F0:
    lh      a1, 0x008A(s0)             # 0000008A
lbl_8096C0F4:
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      a0, 0x0034($sp)
    beql    t7, $at, lbl_8096C130
    lw      $ra, 0x002C($sp)
    jal     func_80079968
    or      a1, s0, $zero              # a1 = 00000000
    lw      $ra, 0x002C($sp)
lbl_8096C130:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8096C140:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x3A8C             # a0 = 06003A8C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    cvt.s.w $f6, $f4
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f16                  # $f16 = -6.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3A8C             # a1 = 06003A8C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sub.s   $f10, $f6, $f8
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0014($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, $zero, 0x012C          # t7 = 0000012C
    lui     a1, %hi(func_8096C1DC)     # a1 = 80970000
    sb      t6, 0x024B(s0)             # 0000024B
    sh      t7, 0x024C(s0)             # 0000024C
    addiu   a1, a1, %lo(func_8096C1DC) # a1 = 8096C1DC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8096BB40
    swc1    $f18, 0x0068(s0)           # 00000068
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8096C1DC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x00FA          # a3 = 000000FA
    lh      t6, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sh      t6, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0154(s0)            # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4
    mfc1    t8, $f6
    nop
    andi    t9, t8, 0x0007             # t9 = 00000000
    bnel    t9, $zero, lbl_8096C244
    lw      t0, 0x002C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3901          # a1 = 00003901
    lw      t0, 0x002C($sp)
lbl_8096C244:
    lui     t1, 0x0001                 # t1 = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t1, t1, t0
    lw      t1, 0x1DE4(t1)             # 00011DE4
    andi    t2, t1, 0x005F             # t2 = 00000000
    bnel    t2, $zero, lbl_8096C26C
    lui     $at, 0x42C8                # $at = 42C80000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39A7          # a1 = 000039A7
    lui     $at, 0x42C8                # $at = 42C80000
lbl_8096C26C:
    mtc1    $at, $f8                   # $f8 = 100.00
    lwc1    $f10, 0x0090(s0)           # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f10, $f8
    nop
    bc1fl   lbl_8096C2B4
    lh      t3, 0x024C(s0)             # 0000024C
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   a1, $zero, 0x2AAA          # a1 = 00002AAA
    jal     func_80021A28
    swc1    $f16, 0x0068(s0)           # 00000068
    beql    v0, $zero, lbl_8096C2D4
    lw      $ra, 0x0024($sp)
    jal     func_8096C3D4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8096C2D4
    lw      $ra, 0x0024($sp)
    lh      t3, 0x024C(s0)             # 0000024C
lbl_8096C2B4:
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x024C(s0)             # 0000024C
    lh      t5, 0x024C(s0)             # 0000024C
    bnel    t5, $zero, lbl_8096C2D4
    lw      $ra, 0x0024($sp)
    jal     func_8096C744
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_8096C2D4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8096C2E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5880             # a1 = 06005880
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC080                 # a2 = C0800000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0046          # t7 = 00000046
    lui     a1, %hi(func_8096C348)     # a1 = 80970000
    addiu   a1, a1, %lo(func_8096C348) # a1 = 8096C348
    sb      t6, 0x024B(a0)             # 0000024B
    sh      t7, 0x024C(a0)             # 0000024C
    jal     func_8096BB40
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096C348:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x024C(s0)             # 0000024C
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x024C(s0)             # 0000024C
    lh      t8, 0x024C(s0)             # 0000024C
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    bnel    t8, $zero, lbl_8096C398
    lh      a1, 0x008A(s0)             # 0000008A
    sb      $zero, 0x0241(s0)          # 00000241
    jal     func_8096C744
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8096C3B4
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
lbl_8096C398:
    sw      $zero, 0x0010($sp)
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    addu    a1, a1, $at
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lh      t9, 0x00B6(s0)             # 000000B6
lbl_8096C3B4:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sh      t9, 0x0032(s0)             # 00000032
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8096C3D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x4658             # a1 = 06004658
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    andi    t6, $zero, 0x00FF          # t6 = 00000000
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    lui     a1, %hi(func_8096C434)     # a1 = 80970000
    addiu   a1, a1, %lo(func_8096C434) # a1 = 8096C434
    sh      t6, 0x024C(a0)             # 0000024C
    sb      $zero, 0x0240(a0)          # 00000240
    sb      t7, 0x024B(a0)             # 0000024B
    jal     func_8096BB40
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096C434:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_8096C46C
    lui     $at, 0x42C8                # $at = 42C80000
    lbu     t6, 0x0240(s0)             # 00000240
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     $zero, $zero, lbl_8096C4F4
    sb      t7, 0x0240(s0)             # 00000240
lbl_8096C46C:
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8096C498
    lui     $at, 0xC080                # $at = C0800000
    jal     func_80021A28
    addiu   a1, $zero, 0x2AAA          # a1 = 00002AAA
    bne     v0, $zero, lbl_8096C4F4
    lui     $at, 0xC080                # $at = C0800000
lbl_8096C498:
    mtc1    $at, $f10                  # $f10 = -4.00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lw      a3, 0x0154(s0)             # 00000154
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0014($sp)
    addiu   a1, a1, 0x4658             # a1 = 06004658
    lw      a0, 0x0034($sp)
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f10, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0010($sp)
    lw      t0, 0x02B8(s0)             # 000002B8
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sb      t9, 0x0240(s0)             # 00000240
    sb      $zero, 0x0015(t0)          # 00000015
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t1, 0x0015(v0)             # 00000015
    sb      t1, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x0005(v0)          # 00000005
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t2, 0x0005(v0)             # 00000005
    sw      t2, 0x0000(v0)             # 00000000
lbl_8096C4F4:
    lbu     t3, 0x0240(s0)             # 00000240
    sltiu   $at, t3, 0x0006
    beq     $at, $zero, lbl_8096C72C
    sll     t3, t3,  2
    lui     $at, %hi(var_8096D470)     # $at = 80970000
    addu    $at, $at, t3
    lw      t3, %lo(var_8096D470)($at)
    jr      t3
    nop
var_8096C518:
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1A3C             # a1 = 06001A3C
    jal     func_8008D1C4
    lw      a0, 0x0034($sp)
    lbu     t4, 0x0240(s0)             # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3900          # a1 = 00003900
    addiu   t5, t4, 0x0001             # t5 = 00000001
    jal     func_80022FD0
    sb      t5, 0x0240(s0)             # 00000240
var_8096C540:
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x05DC          # a3 = 000005DC
    beq     $zero, $zero, lbl_8096C730
    lh      t8, 0x00B6(s0)             # 000000B6
var_8096C560:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    lwc1    $f16, 0x0154(s0)           # 00000154
    c.le.s  $f18, $f16
    nop
    bc1fl   lbl_8096C5B0
    lbu     v1, 0x02AC(s0)             # 000002AC
    lw      t7, 0x02B8(s0)             # 000002B8
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    lui     t9, 0xFFCF                 # t9 = FFCF0000
    sb      t6, 0x0015(t7)             # 00000015
    lw      v0, 0x02B8(s0)             # 000002B8
    ori     t9, t9, 0xFFFF             # t9 = FFCFFFFF
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    lbu     t8, 0x0015(v0)             # 00000015
    sb      t8, 0x02AC(s0)             # 000002AC
    sw      t9, 0x0000(v0)             # 00000000
    lw      t1, 0x02B8(s0)             # 000002B8
    sb      t0, 0x0005(t1)             # 00000005
    lbu     v1, 0x02AC(s0)             # 000002AC
lbl_8096C5B0:
    andi    t2, v1, 0x0004             # t2 = 00000000
    beq     t2, $zero, lbl_8096C5F8
    andi    t9, v1, 0x0002             # t9 = 00000000
    lw      t4, 0x02B8(s0)             # 000002B8
    andi    t3, v1, 0xFFF9             # t3 = 00000000
    sb      t3, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x0015(t4)          # 00000015
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t5, 0x0015(v0)             # 00000015
    sb      t5, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x0005(v0)          # 00000005
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t6, 0x0005(v0)             # 00000005
    sw      t6, 0x0000(v0)             # 00000000
    lbu     t7, 0x0240(s0)             # 00000240
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     $zero, $zero, lbl_8096C72C
    sb      t8, 0x0240(s0)             # 00000240
lbl_8096C5F8:
    beq     t9, $zero, lbl_8096C72C
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f0                   # $f0 = 8.00
    andi    t0, v1, 0xFFFD             # t0 = 00000000
    sb      t0, 0x02AC(s0)             # 000002AC
    lh      a3, 0x00B6(s0)             # 000000B6
    mfc1    a2, $f0
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80022EC4
    swc1    $f0, 0x0010($sp)
    beq     $zero, $zero, lbl_8096C730
    lh      t8, 0x00B6(s0)             # 000000B6
var_8096C62C:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_8096C6A8
    nop
    jal     func_80021A28
    addiu   a1, $zero, 0x2AAA          # a1 = 00002AAA
    beq     v0, $zero, lbl_8096C6A8
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4658             # a0 = 06004658
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f16                  # $f16 = -6.00
    cvt.s.w $f10, $f8
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sw      t1, 0x0014($sp)
    addiu   a1, a1, 0x4658             # a1 = 06004658
    lw      a0, 0x0034($sp)
    swc1    $f10, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    sb      $zero, 0x0240(s0)          # 00000240
    beq     $zero, $zero, lbl_8096C730
    lh      t8, 0x00B6(s0)             # 000000B6
lbl_8096C6A8:
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4658             # a0 = 06004658
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    cvt.s.w $f18, $f18
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sw      t2, 0x0014($sp)
    addiu   a1, a1, 0x4658             # a1 = 06004658
    mfc1    a3, $f18
    lw      a0, 0x0034($sp)
    lui     a2, 0xBF80                 # a2 = BF800000
    swc1    $f6, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0010($sp)
    lbu     t3, 0x0240(s0)             # 00000240
    lw      t5, 0x02B8(s0)             # 000002B8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0240(s0)             # 00000240
    sb      $zero, 0x0015(t5)          # 00000015
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t6, 0x0015(v0)             # 00000015
    sb      t6, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x0005(v0)          # 00000005
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t7, 0x0005(v0)             # 00000005
    beq     $zero, $zero, lbl_8096C72C
    sw      t7, 0x0000(v0)             # 00000000
var_8096C724:
    jal     func_8096C140
    or      a0, s0, $zero              # a0 = 00000000
lbl_8096C72C:
    lh      t8, 0x00B6(s0)             # 000000B6
lbl_8096C730:
    sh      t8, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8096C744:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2148             # a1 = 06002148
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t8, 0x0004(a0)             # 00000004
    lh      t7, 0x00B6(a0)             # 000000B6
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    and     t9, t8, $at
    addiu   a1, $zero, 0x39A8          # a1 = 000039A8
    sb      t6, 0x024B(a0)             # 0000024B
    sh      $zero, 0x024E(a0)          # 0000024E
    sb      $zero, 0x0240(a0)          # 00000240
    sw      t9, 0x0004(a0)             # 00000004
    swc1    $f0, 0x0068(a0)            # 00000068
    swc1    $f0, 0x0308(a0)            # 00000308
    jal     func_80022FD0
    sh      t7, 0x0032(a0)             # 00000032
    lui     a1, %hi(func_8096C7C8)     # a1 = 80970000
    lw      a0, 0x0018($sp)
    jal     func_8096BB40
    addiu   a1, a1, %lo(func_8096C7C8) # a1 = 8096C7C8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096C7C8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lbu     v1, 0x0240(s0)             # 00000240
    addiu   t0, $zero, 0x0011          # t0 = 00000011
    lui     t1, 0xFFCF                 # t1 = FFCF0000
    beq     v1, $zero, lbl_8096C80C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8096C838
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8096C920
    addiu   t4, $zero, 0x0023          # t4 = 00000023
    beq     $zero, $zero, lbl_8096C948
    lw      $ra, 0x002C($sp)
lbl_8096C80C:
    lbu     t7, 0x0242(s0)             # 00000242
    addiu   t6, v1, 0x0001             # t6 = 00000001
    ori     t1, t1, 0xFFFF             # t1 = FFCFFFFF
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t6, 0x0240(s0)             # 00000240
    sb      t8, 0x0242(s0)             # 00000242
    sb      t0, 0x027D(s0)             # 0000027D
    sb      t0, 0x0260(s0)             # 00000260
    sw      t1, 0x0268(s0)             # 00000268
    sb      t2, 0x026D(s0)             # 0000026D
lbl_8096C838:
    lh      t3, 0x024E(s0)             # 0000024E
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, s0, 0x0308             # a0 = 00000308
    addiu   t4, t3, 0x047E             # t4 = 0000047E
    sh      t4, 0x024E(s0)             # 0000024E
    lui     a1, 0x4396                 # a1 = 43960000
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x024E(s0)             # 0000024E
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f6                   # $f6 = 55.00
    lh      a0, 0x024E(s0)             # 0000024E
    mul.s   $f8, $f0, $f6
    jal     func_800636C4              # sins?
    swc1    $f8, 0x030C(s0)            # 0000030C
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    lui     $at, %hi(var_8096D488)     # $at = 80970000
    lw      a3, 0x0308(s0)             # 00000308
    mul.s   $f16, $f0, $f10
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0310(s0)            # 00000310
    lwc1    $f8, %lo(var_8096D488)($at)
    lui     $at, %hi(var_8096D48C)     # $at = 80970000
    lwc1    $f10, %lo(var_8096D48C)($at)
    sw      t9, 0x0010($sp)
    lw      a0, 0x0034($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_8096BCD0
    swc1    $f10, 0x0018($sp)
    lui     $at, %hi(var_8096D490)     # $at = 80970000
    lwc1    $f18, %lo(var_8096D490)($at)
    lwc1    $f16, 0x0308(s0)           # 00000308
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    jal     func_8008C9C0
    sh      t1, 0x0290(s0)             # 00000290
    beql    v0, $zero, lbl_8096C948
    lw      $ra, 0x002C($sp)
    lbu     t2, 0x0240(s0)             # 00000240
    addiu   t3, t2, 0x0001             # t3 = 00000001
    beq     $zero, $zero, lbl_8096C944
    sb      t3, 0x0240(s0)             # 00000240
lbl_8096C920:
    andi    t6, $zero, 0x00FF          # t6 = 00000000
    sb      $zero, 0x0242(s0)          # 00000242
    sh      t4, 0x0290(s0)             # 00000290
    sb      $zero, 0x027D(s0)          # 0000027D
    sb      $zero, 0x0260(s0)          # 00000260
    sw      t6, 0x0268(s0)             # 00000268
    sb      $zero, 0x026D(s0)          # 0000026D
    jal     func_8096BE68
    or      a0, s0, $zero              # a0 = 00000000
lbl_8096C944:
    lw      $ra, 0x002C($sp)
lbl_8096C948:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8096C958:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3D6C             # a1 = 06003D6C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0xBF80                # $at = BF800000
    addiu   a1, $zero, 0x39A9          # a1 = 000039A9
    lhu     t6, 0x0088(a3)             # 00000088
    or      a0, a3, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_8096C9A8
    nop
    mtc1    $at, $f4                   # $f4 = -1.00
    nop
    swc1    $f4, 0x0068(a3)            # 00000068
lbl_8096C9A8:
    jal     func_80022FD0
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    lui     a1, %hi(func_8096C9D8)     # a1 = 80970000
    addiu   a1, a1, %lo(func_8096C9D8) # a1 = 8096C9D8
    jal     func_8096BB40
    sb      t8, 0x024B(a0)             # 0000024B
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8096C9D8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_8096D494)     # $at = 80970000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_8096CA18
    lh      t6, 0x008A(s0)             # 0000008A
    lwc1    $f6, %lo(var_8096D494)($at)
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x0068(s0)            # 00000068
    lh      t6, 0x008A(s0)             # 0000008A
lbl_8096CA18:
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sh      t6, 0x0032(s0)             # 00000032
    jal     func_8008C9C0
    sw      a0, 0x0030($sp)
    beql    v0, $zero, lbl_8096CAF0
    lw      $ra, 0x002C($sp)
    lbu     t8, 0x0241(s0)             # 00000241
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42D2                # $at = 42D20000
    beq     t8, $zero, lbl_8096CA58
    sh      t7, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8096C2E4
    lw      a1, 0x003C($sp)
    beq     $zero, $zero, lbl_8096CAE8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_8096CA58:
    mtc1    $at, $f10                  # $f10 = 0.00
    lwc1    $f16, 0x0090(s0)           # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f16, $f10
    nop
    bc1f    lbl_8096CADC
    nop
    jal     func_80021A28
    addiu   a1, $zero, 0x2AAA          # a1 = 00002AAA
    beq     v0, $zero, lbl_8096CADC
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x4658             # a0 = 06004658
    mtc1    v0, $f18                   # $f18 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    cvt.s.w $f4, $f18
    jal     func_8096C3D4
    swc1    $f4, 0x0034($sp)
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    lwc1    $f6, 0x0034($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t9, 0x0014($sp)
    addiu   a1, a1, 0x4658             # a1 = 06004658
    lw      a0, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x41A0                 # a3 = 41A00000
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    beq     $zero, $zero, lbl_8096CAE8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_8096CADC:
    jal     func_8096C140
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_8096CAE8:
    sb      t0, 0x0248(s0)             # 00000248
    lw      $ra, 0x002C($sp)
lbl_8096CAF0:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8096CB00:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x32BC             # a1 = 060032BC
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D21C
    lui     a2, 0xBF80                 # a2 = BF800000
    lw      t8, 0x0004(s0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x012C          # t7 = 0000012C
    and     t9, t8, $at
    sb      t6, 0x024B(s0)             # 0000024B
    sh      t7, 0x024C(s0)             # 0000024C
    sw      t9, 0x0004(s0)             # 00000004
    jal     func_800C6894
    swc1    $f4, 0x0068(s0)            # 00000068
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x39AB          # a1 = 000039AB
    lui     a1, %hi(func_8096CB88)     # a1 = 80970000
    addiu   a1, a1, %lo(func_8096CB88) # a1 = 8096CB88
    jal     func_8096BB40
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8096CB88:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    sw      a0, 0x001C($sp)
    jal     func_8008C9C0
    sw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    bne     v0, $zero, lbl_8096CBC4
    lw      a2, 0x0020($sp)
    lh      t6, 0x024C(a2)             # 0000024C
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    beql    t6, $at, lbl_8096CC44
    lwc1    $f10, 0x0154(a2)           # 00000154
lbl_8096CBC4:
    lh      v0, 0x024C(a2)             # 0000024C
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    lui     a1, 0x0600                 # a1 = 06000000
    bne     v0, $at, lbl_8096CBE8
    addiu   a1, a1, 0x375C             # a1 = 0600375C
    jal     func_8008D2D4
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lh      v0, 0x024C(a2)             # 0000024C
lbl_8096CBE8:
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x024C(a2)             # 0000024C
    lh      t8, 0x024C(a2)             # 0000024C
    slti    $at, t8, 0x0096
    beql    $at, $zero, lbl_8096CCAC
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x024A(a2)             # 0000024A
    lui     $at, %hi(var_8096D498)     # $at = 80970000
    beq     v0, $zero, lbl_8096CC30
    nop
    lwc1    $f4, 0x0054(a2)            # 00000054
    lwc1    $f6, %lo(var_8096D498)($at)
    addiu   t0, v0, 0xFFFB             # t0 = FFFFFFFB
    sb      t0, 0x024A(a2)             # 0000024A
    sub.s   $f8, $f4, $f6
    sb      t0, 0x00C8(a2)             # 000000C8
    beq     $zero, $zero, lbl_8096CCA8
    swc1    $f8, 0x0054(a2)            # 00000054
lbl_8096CC30:
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8096CCAC
    lw      $ra, 0x0014($sp)
    lwc1    $f10, 0x0154(a2)           # 00000154
lbl_8096CC44:
    addiu   $at, $zero, 0x0035         # $at = 00000035
    or      a0, a2, $zero              # a0 = 00000000
    trunc.w.s $f16, $f10
    addiu   a1, $zero, 0x387A          # a1 = 0000387A
    mfc1    v0, $f16
    nop
    beq     v0, $at, lbl_8096CC74
    addiu   $at, $zero, 0x0038         # $at = 00000038
    beq     v0, $at, lbl_8096CC74
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    bnel    v0, $at, lbl_8096CC94
    addiu   $at, $zero, 0x003D         # $at = 0000003D
lbl_8096CC74:
    jal     func_80022FD0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lwc1    $f18, 0x0154(a2)           # 00000154
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    addiu   $at, $zero, 0x003D         # $at = 0000003D
lbl_8096CC94:
    bne     v0, $at, lbl_8096CCA8
    lw      a0, 0x0024($sp)
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    jal     func_800265D4
    addiu   a3, $zero, 0x0006          # a3 = 00000006
lbl_8096CCA8:
    lw      $ra, 0x0014($sp)
lbl_8096CCAC:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8096CCB8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lbu     v0, 0x02AD(s0)             # 000002AD
    lw      t6, 0x003C($sp)
    andi    t7, v0, 0x0002             # t7 = 00000000
    beq     t7, $zero, lbl_8096CDF4
    lw      a2, 0x1C44(t6)             # 00001C44
    lbu     t8, 0x0241(s0)             # 00000241
    bnel    t8, $zero, lbl_8096CDF8
    lw      $ra, 0x0024($sp)
    lbu     v1, 0x00B1(s0)             # 000000B1
    andi    t9, v0, 0xFFFD             # t9 = 00000000
    sb      t9, 0x02AD(s0)             # 000002AD
    beq     v1, $zero, lbl_8096CDF4
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_8096CDF4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x02B8(s0)             # 000002B8
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    or      a3, $zero, $zero           # a3 = 00000000
    sb      $zero, 0x0015(t0)          # 00000015
    lw      v0, 0x02B8(s0)             # 000002B8
    addiu   t5, $zero, 0x0008          # t5 = 00000008
    lbu     t1, 0x0015(v0)             # 00000015
    sb      t1, 0x02AC(s0)             # 000002AC
    sb      $zero, 0x0005(v0)          # 00000005
    lw      v0, 0x02B8(s0)             # 000002B8
    lbu     t2, 0x0005(v0)             # 00000005
    sw      t2, 0x0000(v0)             # 00000000
    lb      t3, 0x0834(a2)             # 00000834
    beql    t3, $zero, lbl_8096CD50
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    lbu     t4, 0x0835(a2)             # 00000934
    sb      t4, 0x0248(s0)             # 00000248
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
lbl_8096CD50:
    jal     func_80027090
    sw      t5, 0x0010($sp)
    lbu     v1, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80028390
    sw      v1, 0x002C($sp)
    bne     v0, $zero, lbl_8096CD94
    lw      v1, 0x002C($sp)
    jal     func_8096CB00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    beq     $zero, $zero, lbl_8096CDF8
    lw      $ra, 0x0024($sp)
lbl_8096CD94:
    slti    $at, v1, 0x000F
    bnel    $at, $zero, lbl_8096CDB0
    slti    $at, v1, 0x0009
    lbu     t6, 0x00AF(s0)             # 000000AF
    slti    $at, t6, 0x000F
    bne     $at, $zero, lbl_8096CDE0
    slti    $at, v1, 0x0009
lbl_8096CDB0:
    bnel    $at, $zero, lbl_8096CDC8
    slti    $at, v1, 0x0003
    lbu     t7, 0x00AF(s0)             # 000000AF
    slti    $at, t7, 0x0009
    bne     $at, $zero, lbl_8096CDE0
    slti    $at, v1, 0x0003
lbl_8096CDC8:
    bne     $at, $zero, lbl_8096CDEC
    nop
    lbu     t8, 0x00AF(s0)             # 000000AF
    slti    $at, t8, 0x0003
    beq     $at, $zero, lbl_8096CDEC
    nop
lbl_8096CDE0:
    lbu     t9, 0x0241(s0)             # 00000241
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sb      t0, 0x0241(s0)             # 00000241
lbl_8096CDEC:
    jal     func_8096C958
    or      a0, s0, $zero              # a0 = 00000000
lbl_8096CDF4:
    lw      $ra, 0x0024($sp)
lbl_8096CDF8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8096CE08:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0028($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8096CCB8
    sw      t6, 0x0044($sp)
    lw      t9, 0x0244(s0)             # 00000244
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f0                   # $f0 = 45.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t0, 0x02FC(s0)             # 000002FC
    lw      t8, 0x0300(s0)             # 00000300
    addiu   a1, s0, 0x0250             # a1 = 00000250
    sw      t0, 0x0038(s0)             # 00000038
    lw      t0, 0x0304(s0)             # 00000304
    sw      t8, 0x003C(s0)             # 0000003C
    or      a0, s0, $zero              # a0 = 00000000
    sw      t0, 0x0040(s0)             # 00000040
    jal     func_80050B00
    sw      a1, 0x0034($sp)
    lbu     t1, 0x00AF(s0)             # 000000AF
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    blez    t1, lbl_8096CF80
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t2, 0x024B(s0)             # 0000024B
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t2, $zero, lbl_8096CEF0
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s2, s1, $at
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0034($sp)
    beq     $zero, $zero, lbl_8096CF04
    lbu     t3, 0x024B(s0)             # 0000024B
lbl_8096CEF0:
    addu    s2, s1, $at
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0034($sp)
    lbu     t3, 0x024B(s0)             # 0000024B
lbl_8096CF04:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      v0, 0x0044($sp)
    beql    t3, $at, lbl_8096CF30
    lb      t4, 0x0834(v0)             # 00000834
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_8096CF48
    addiu   a2, s0, 0x029C             # a2 = 0000029C
    lb      t4, 0x0834(v0)             # 00000834
lbl_8096CF30:
    beql    t4, $zero, lbl_8096CFA4
    lw      $ra, 0x002C($sp)
    lbu     t5, 0x0248(s0)             # 00000248
    lbu     t6, 0x0835(v0)             # 00000835
    beq     t5, t6, lbl_8096CFA0
    addiu   a2, s0, 0x029C             # a2 = 0000029C
lbl_8096CF48:
    sw      a2, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a1, s2, $zero              # a1 = 00000000
    lw      a2, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    or      a1, s2, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0034($sp)
    beq     $zero, $zero, lbl_8096CFA4
    lw      $ra, 0x002C($sp)
lbl_8096CF80:
    addu    s2, s1, $at
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x029C             # a2 = 0000029C
lbl_8096CFA0:
    lw      $ra, 0x002C($sp)
lbl_8096CFA4:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_8096CFB8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_8096D448)      # t6 = 80970000
    addiu   t6, t6, %lo(var_8096D448)  # t6 = 8096D448
    lw      t8, 0x0000(t6)             # 8096D448
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      t8, 0x0000(a0)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 8096D44C
    sw      t7, 0x0004(a0)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 8096D450
    bne     a1, $at, lbl_8096D038
    sw      t8, 0x0008(a0)             # FFFFFFFC
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x02FC             # a1 = 000002FC
    jal     func_800AA6EC
    nop
    lwc1    $f12, 0x001C($sp)
    lwc1    $f14, 0x0020($sp)
    lw      a2, 0x0024($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a1, 0x0038($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_80050CE4
    addiu   a1, a1, 0x029C             # a1 = 0000029C
    jal     func_800AA724
    nop
lbl_8096D038:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8096D048:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s0, 0x0038($sp)
    lbu     t6, 0x024A(s1)             # 0000024A
    lw      a2, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t6, $at, lbl_8096D0F8
    or      s0, a2, $zero              # s0 = 00000000
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     t4, 0xDB06                 # t4 = DB060000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t2, 0x024A(s1)             # 0000024A
    ori     t4, t4, 0x0020             # t4 = DB060020
    lui     t6, %hi(func_8096CFB8)     # t6 = 80970000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x8520             # t5 = 800E8520
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    addiu   t6, t6, %lo(func_8096CFB8) # t6 = 8096CFB8
    sw      t6, 0x0014($sp)
    sw      s1, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      t7, 0x02C0(s0)             # 000002C0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t7, 0x001C($sp)
    beq     $zero, $zero, lbl_8096D16C
    sw      v0, 0x02C0(s0)             # 000002C0
lbl_8096D0F8:
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    lui     t5, 0xDB06                 # t5 = DB060000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t3, 0x024A(s1)             # 0000024A
    ori     t5, t5, 0x0020             # t5 = DB060020
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8510             # t6 = 800E8510
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    sw      s1, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t7, 0x02D0(s0)             # 000002D0
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8008A88C
    sw      t7, 0x001C($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_8096D16C:
    lbu     t8, 0x0242(s1)             # 00000242
    beql    t8, $zero, lbl_8096D364
    lw      $ra, 0x0044($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x5537                 # t3 = 55370000
    ori     t3, t3, 0x0082             # t3 = 55370082
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFB00                 # t2 = FB000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v1)             # 00000000
    lw      v0, 0x009C(s2)             # 0000009C
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    subu    $at, $zero, v0
    sll     t9, $at,  2
    sll     t3, $at,  2
    addu    t3, t3, $at
    addu    t9, t9, $at
    sll     t9, t9,  1
    sll     t3, t3,  2
    sll     a2, $at,  2
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    subu    a2, a2, $at
    andi    t4, t3, 0x00FF             # t4 = 00000082
    andi    t2, t9, 0x007F             # t2 = 00000008
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t5, 0x0024($sp)
    sw      t2, 0x001C($sp)
    sw      t4, 0x0020($sp)
    andi    a2, a2, 0x007F             # a2 = 00000000
    sw      t6, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0048($sp)
    lw      t1, 0x0048($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      v0, 0x0004(t1)             # 00000004
    lw      a0, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x8080             # t8 = FA008080
    cfc1    t9, $f31
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t8, 0x0000(a0)             # 00000000
    ctc1    t2, $f31
    lwc1    $f4, 0x0310(s1)            # 00000310
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.w.s $f6, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_8096D2CC
    mfc1    t2, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_8096D2C0
    nop
    mfc1    t2, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8096D2D8
    or      t2, t2, $at                # t2 = 80000000
lbl_8096D2C0:
    beq     $zero, $zero, lbl_8096D2D8
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f6
lbl_8096D2CC:
    nop
    bltz    t2, lbl_8096D2C0
    nop
lbl_8096D2D8:
    ctc1    t9, $f31
    andi    t3, t2, 0x00FF             # t3 = 000000FF
    sw      t3, 0x0004(a0)             # 00000004
    lwc1    $f14, 0x00BC(s1)           # 000000BC
    mfc1    a2, $f12
    jal     func_800AA7F4
    neg.s   $f14, $f14
    lui     $at, %hi(var_8096D49C)     # $at = 80970000
    lwc1    $f0, %lo(var_8096D49C)($at)
    lwc1    $f8, 0x0308(s1)            # 00000308
    lwc1    $f10, 0x030C(s1)           # 0000030C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f8, $f0
    mfc1    a2, $f12
    mul.s   $f14, $f10, $f0
    jal     func_800AA8FC
    nop
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x7FC0             # t8 = 06007FC0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x0044($sp)
lbl_8096D364:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    nop
    nop

.section .data

var_8096D380: .word 0x00A40500, 0x00000415, 0x00A60000, 0x00000314
.word func_8096BB4C
.word func_8096BC88
.word func_8096CE08
.word func_8096D048
var_8096D3A0: .word \
0x00000D09, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000008, 0x00000000, 0x00010100, \
0x00230046, 0x00000000, 0x00000000
var_8096D3CC: .word \
0x00000000, 0x00000000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0x00010900, 0x01000000, 0x00000000, \
0x00140064
var_8096D3F0: .word 0x06000909, 0x10000000, 0x00000001
.word var_8096D3CC
var_8096D400: .word \
0x00F20000, 0x00000000, 0xF2F2F400, 0x00000000, \
0x00000000, 0x0000F2F4, 0xF2F4F8F4, 0x0000F400
var_8096D420: .word 0x8917002F, 0xB04C07D0, 0xC850000A, 0x386CF254
var_8096D430: .word 0x00000000, 0x41000000, 0x00000000
var_8096D43C: .word 0x00000000, 0xBFC00000, 0x00000000
var_8096D448: .word \
0x44FA0000, 0x447A0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_8096D460: .word 0x40C8F5C3
var_8096D464: .word 0xC66A6000
var_8096D468: .word 0x40033333
var_8096D46C: .word 0x3F99999A
var_8096D470: .word var_8096C540
.word var_8096C518
.word var_8096C560
.word var_8096C62C
.word lbl_8096C72C
.word var_8096C724
var_8096D488: .word 0x40033333
var_8096D48C: .word 0x3F99999A
var_8096D490: .word 0x3F19999A
var_8096D494: .word 0x3E19999A
var_8096D498: .word 0x389D4952
var_8096D49C: .word 0x3C23D70A

