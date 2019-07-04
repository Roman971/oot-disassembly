.section .text
func_80903140:
    sll     t6, a1,  3
    addu    v0, a0, t6
    lh      t7, 0x0000(v0)             # 00000000
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a2)            # 00000000
    lh      t8, 0x0002(v0)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a2)           # 00000004
    lh      t9, 0x0004(v0)             # 00000004
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a2)           # 00000008
    jr      $ra
    nop


func_8090318C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lui     a0, %hi(var_80903AD0)      # a0 = 80900000
    addiu   a0, a0, %lo(var_80903AD0)  # a0 = 80903AD0
    lw      a1, 0x01DC(s0)             # 000001DC
    jal     func_80903140
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x0020($sp)
    jal     func_800A5560
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    nop
    c.le.s  $f0, $f4
    nop
    bc1fl   lbl_80903210
    lw      a0, 0x0020($sp)
    lw      t6, 0x01DC(s0)             # 000001DC
    lui     a0, %hi(var_80903AD0)      # a0 = 80900000
    addiu   a0, a0, %lo(var_80903AD0)  # a0 = 80903AD0
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, t7, 0x000E
    bne     $at, $zero, lbl_8090320C
    sw      t7, 0x01DC(s0)             # 000001DC
    sw      $zero, 0x01DC(s0)          # 000001DC
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80903140
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF0
lbl_8090320C:
    lw      a0, 0x0020($sp)
lbl_80903210:
    jal     func_80063F00
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lh      v1, 0x0032(s0)             # 00000032
    subu    a0, v0, v1
    sll     a0, a0, 16
    sra     a0, a0, 16
    slti    $at, a0, 0x012D
    bne     $at, $zero, lbl_8090323C
    addiu   t9, v1, 0x012C             # t9 = 0000012C
    beq     $zero, $zero, lbl_80903258
    sh      t9, 0x0032(s0)             # 00000032
lbl_8090323C:
    slti    $at, a0, 0xFED4
    beq     $at, $zero, lbl_80903254
    addu    t1, v1, a0
    addiu   t0, v1, 0xFED4             # t0 = FFFFFED4
    beq     $zero, $zero, lbl_80903258
    sh      t0, 0x0032(s0)             # 00000032
lbl_80903254:
    sh      t1, 0x0032(s0)             # 00000032
lbl_80903258:
    lh      t2, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    sh      t2, 0x00B6(s0)             # 000000B6
    lw      t3, 0x003C($sp)
    jal     func_800214FC
    lw      a1, 0x1C44(t3)             # 00001C44
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lui     $at, 0x4140                # $at = 41400000
    c.le.s  $f0, $f6
    nop
    bc1fl   lbl_809032D8
    lw      t4, 0x01DC(s0)             # 000001DC
    lwc1    $f0, 0x0068(s0)            # 00000068
    mtc1    $at, $f8                   # $f8 = 12.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_809032C4
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    add.s   $f16, $f0, $f10
    beq     $zero, $zero, lbl_80903340
    swc1    $f16, 0x0068(s0)           # 00000068
    mtc1    $at, $f18                  # $f18 = 1.00
lbl_809032C4:
    nop
    sub.s   $f4, $f0, $f18
    beq     $zero, $zero, lbl_80903340
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      t4, 0x01DC(s0)             # 000001DC
lbl_809032D8:
    lui     t6, %hi(var_80903AD6)      # t6 = 80900000
    lwc1    $f0, 0x0068(s0)            # 00000068
    sll     t5, t4,  3
    addu    t6, t6, t5
    lbu     t6, %lo(var_80903AD6)(t6)
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f6                    # $f6 = 0.00
    bgez    t6, lbl_80903308
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80903308:
    c.lt.s  $f0, $f8
    lui     $at, 0x3F00                # $at = 3F000000
    bc1fl   lbl_80903334
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    nop
    add.s   $f18, $f0, $f16
    beq     $zero, $zero, lbl_80903340
    swc1    $f18, 0x0068(s0)           # 00000068
    mtc1    $at, $f4                   # $f4 = 0.50
lbl_80903334:
    nop
    sub.s   $f6, $f0, $f4
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80903340:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80903354:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     a1, %hi(var_80903B40)      # a1 = 80900000
    addiu   a1, a1, %lo(var_80903B40)  # a1 = 80903B40
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C3C                 # a1 = 3C3C0000
    ori     a1, a1, 0x6A7F             # a1 = 3C3C6A7F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC060                # $at = C0600000
    mtc1    $at, $f4                   # $f4 = -3.50
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xF04C             # a2 = 8001F04C
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41A0                 # a3 = 41A00000
    jal     func_8001EC20
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      t6, 0x0028(s0)             # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    lw      t7, 0x0024(s0)             # 00000024
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t7, 0x0038(s0)             # 00000038
    mtc1    $zero, $f6                 # $f6 = 0.00
    add.s   $f16, $f8, $f10
    lw      t7, 0x002C(s0)             # 0000002C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    sw      $zero, 0x013C(s0)          # 0000013C
    swc1    $f16, 0x003C(s0)           # 0000003C
    addiu   a3, a3, 0x7148             # a3 = 06007148
    addiu   a2, a2, 0x6B2C             # a2 = 06006B2C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0144             # a1 = 00000144
    swc1    $f6, 0x0068(s0)            # 00000068
    jal     func_8008E4EC
    sw      t7, 0x0040(s0)             # 00000040
    sw      $zero, 0x0140(s0)          # 00000140
    lui     a1, %hi(var_80903A60)      # a1 = 80900000
    lw      a1, %lo(var_80903A60)(a1)
    jal     func_8008D1C4
    addiu   a0, s0, 0x0190             # a0 = 00000190
    addiu   a1, s0, 0x01EC             # a1 = 000001EC
    sw      a1, 0x0028($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80903A68)      # a3 = 80900000
    lw      a1, 0x0028($sp)
    addiu   a3, a3, %lo(var_80903A68)  # a3 = 80903A68
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0238             # a1 = 00000238
    sw      a1, 0x0028($sp)
    jal     func_8004A484
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80903AB8)      # a3 = 80900000
    addiu   t8, s0, 0x0258             # t8 = 00000258
    lw      a1, 0x0028($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, %lo(var_80903AB8)  # a3 = 80903AB8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80903AC8)      # a2 = 80900000
    addiu   a2, a2, %lo(var_80903AC8)  # a2 = 80903AC8
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x0140(s0)          # 00000140
    jal     func_809034F4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_809034A4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x01EC             # a1 = 000001EC
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x0238             # a1 = 00000238
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8008E6BC
    addiu   a1, a1, 0x0144             # a1 = 00000144
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809034F4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0140(a2)             # 00000140
    sw      $zero, 0x013C(a2)          # 0000013C
    addiu   a0, a2, 0x0190             # a0 = 00000190
    addiu   v0, t6, 0x0001             # v0 = 00000001
    blez    v0, lbl_80903520
    sw      v0, 0x0140(a2)             # 00000140
    sw      $zero, 0x0140(a2)          # 00000140
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80903520:
    sll     t8, v0,  2
    lui     a1, %hi(var_80903A60)      # a1 = 80900000
    addu    a1, a1, t8
    jal     func_8008D1C4
    lw      a1, %lo(var_80903A60)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80903544:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a0, a1, 0x0190             # a0 = 00000190
    swc1    $f4, 0x0068(a1)            # 00000068
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    beq     v0, $zero, lbl_8090357C
    lw      a1, 0x0018($sp)
    jal     func_809034F4
    or      a0, a1, $zero              # a0 = 00000000
lbl_8090357C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8090358C:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    lwc1    $f4, 0x0068(s0)            # 00000068
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x013C(s0)             # 0000013C
    div.s   $f8, $f4, $f6
    sw      $zero, 0x0140(s0)          # 00000140
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2804          # a0 = 00002804
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    swc1    $f8, 0x0034($sp)
    lw      t8, 0x0140(s0)             # 00000140
    lui     a0, %hi(var_80903A60)      # a0 = 80900000
    sll     t9, t8,  2
    addu    a0, a0, t9
    jal     func_8008A194
    lw      a0, %lo(var_80903A60)(a0)
    lw      v1, 0x0140(s0)             # 00000140
    lui     $at, %hi(var_80903A64)     # $at = 80900000
    lwc1    $f16, 0x0034($sp)
    sll     v1, v1,  2
    addu    $at, $at, v1
    lwc1    $f10, %lo(var_80903A64)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f4                   # $f4 = 1.50
    mul.s   $f18, $f10, $f16
    mtc1    v0, $f8                    # $f8 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, %hi(var_80903A60)      # a1 = 80900000
    addu    a1, a1, v1
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    cvt.s.w $f10, $f8
    mul.s   $f6, $f18, $f4
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    lw      a1, %lo(var_80903A60)(a1)
    addiu   a0, s0, 0x0190             # a0 = 00000190
    swc1    $f10, 0x0010($sp)
    swc1    $f0, 0x0018($sp)
    mfc1    a2, $f6
    jal     func_8008D17C
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80903674:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_8090318C
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x0190             # a0 = 00000190
    beql    v0, $zero, lbl_809036A8
    lw      $ra, 0x0014($sp)
    jal     func_8090358C
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_809036A8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_809036B4:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f8, 0x0024(s0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f18                  # $f18 = 60.00
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x002C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f6                   # $f6 = 30.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lw      a0, 0x0044($sp)
    mul.s   $f8, $f0, $f6
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFE8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    add.s   $f16, $f8, $f10
    jal     func_8002F454
    swc1    $f16, 0x0030($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f14                  # $f14 = 30.00
    swc1    $f0, 0x01E4(s0)            # 000001E4
    jal     func_800CD76C
    sub.s   $f12, $f18, $f0
    lui     $at, %hi(var_80903B50)     # $at = 80900000
    lwc1    $f4, %lo(var_80903B50)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80903778:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x013C(s0)             # 0000013C
    lui     t9, %hi(var_80903B44)      # t9 = 80900000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, %lo(var_80903B44)(t9)
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    sw      t8, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a3, 0x425C                 # a3 = 425C0000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    lw      t0, 0x0028(s0)             # 00000028
    lui     $at, 0x428C                # $at = 428C0000
    lw      t1, 0x0024(s0)             # 00000024
    sw      t0, 0x003C(s0)             # 0000003C
    lwc1    $f8, 0x003C(s0)            # 0000003C
    mtc1    $at, $f10                  # $f10 = 70.00
    sw      t1, 0x0038(s0)             # 00000038
    lw      t1, 0x002C(s0)             # 0000002C
    add.s   $f16, $f8, $f10
    addiu   a2, s0, 0x01EC             # a2 = 000001EC
    sw      t1, 0x0040(s0)             # 00000040
    or      a1, a2, $zero              # a1 = 000001EC
    swc1    $f16, 0x003C(s0)           # 0000003C
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80903854:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x0250(s1)             # 00000250
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blez    t6, lbl_809039A4
    addiu   s5, $sp, 0x0040            # s5 = FFFFFFE8
    addiu   s4, $sp, 0x004C            # s4 = FFFFFFF4
    lw      t7, 0x0254(s1)             # 00000254
lbl_8090389C:
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = FFFFFFF4
    addu    t8, t7, s0
    lh      t9, 0x0028(t8)             # 00000028
    or      a3, s5, $zero              # a3 = FFFFFFE8
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x004C($sp)
    lw      t0, 0x0254(s1)             # 00000254
    addu    t1, t0, s0
    lh      t2, 0x002A(t1)             # 0000002A
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0050($sp)
    lw      t3, 0x0254(s1)             # 00000254
    addu    t4, t3, s0
    lh      t5, 0x002C(t4)             # 0000002C
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0054($sp)
    lw      t6, 0x0254(s1)             # 00000254
    addu    t7, t6, s0
    jal     func_8008E2AC
    lbu     a1, 0x003C(t7)             # 0000003C
    lwc1    $f4, 0x0040($sp)
    lw      t0, 0x0254(s1)             # 00000254
    addiu   s2, s2, 0x0001             # s2 = 00000001
    trunc.w.s $f6, $f4
    addu    t1, t0, s0
    mfc1    t9, $f6
    nop
    sh      t9, 0x0030(t1)             # 00000030
    lwc1    $f8, 0x0044($sp)
    lw      t4, 0x0254(s1)             # 00000254
    trunc.w.s $f10, $f8
    addu    t5, t4, s0
    mfc1    t3, $f10
    nop
    sh      t3, 0x0032(t5)             # 00000032
    lwc1    $f16, 0x0048($sp)
    lw      t8, 0x0254(s1)             # 00000254
    trunc.w.s $f18, $f16
    addu    t0, t8, s0
    mfc1    t7, $f18
    nop
    sh      t7, 0x0034(t0)             # 00000034
    lw      t9, 0x0254(s1)             # 00000254
    addu    v0, t9, s0
    lh      t1, 0x002E(v0)             # 0000002E
    lwc1    $f4, 0x0038(v0)            # 00000038
    addiu   s0, s0, 0x0040             # s0 = 00000040
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t4, $f16
    nop
    sh      t4, 0x0036(v0)             # 00000036
    lw      t3, 0x0250(s1)             # 00000250
    slt     $at, s2, t3
    bnel    $at, $zero, lbl_8090389C
    lw      t7, 0x0254(s1)             # 00000254
lbl_809039A4:
    lw      a0, 0x005C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, s1, 0x0238             # a2 = 00000238
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_809039E0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    jal     func_809036B4
    lw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      a0, 0x0020($sp)
    lui     a3, %hi(func_80903854)     # a3 = 80900000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)
    addiu   a3, a3, %lo(func_80903854) # a3 = 80903854
    lw      a1, 0x0024($sp)
    jal     func_8008E1D4
    addiu   a2, a0, 0x0144             # a2 = 00000144
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_80903A40: .word 0x005B0100, 0x00000010, 0x00460000, 0x00000298
.word func_80903354
.word func_809034A4
.word func_80903778
.word func_809039E0
var_80903A60: .word 0x06007148
var_80903A64: .word 0x3F2AAAAB
var_80903A68: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00280064, 0x00000000, 0x00000000
var_80903A94: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000100, 0x0D000000, 0x00000000, \
0x00140064
var_80903AB8: .word 0x0A000939, 0x12000000, 0x00000001
.word var_80903A94
var_80903AC8: .word 0x0A000023, 0x0064FE00
var_80903AD0: .byte 0xF9, 0x6E, 0xFE, 0x0C, 0x31, 0x22
var_80903AD6: .byte \
0x07, 0x00, 0xF3, 0x28, 0xFE, 0x0C, 0x32, 0xD5, 0x07, 0x00, 0xEB, 0xEA, 0xFE, 0x5F, 0x2D, 0x6E, \
0x07, 0x00, 0xE9, 0x5E, 0xFE, 0x27, 0x25, 0x65, 0x07, 0x00, 0xE5, 0x93, 0xFE, 0x0C, 0x20, 0xAC, \
0x07, 0x00, 0xE6, 0x25, 0xFE, 0x77, 0x1B, 0x07, 0x07, 0x00, 0xEB, 0xB7, 0x00, 0x7C, 0x15, 0x39, \
0x07, 0x00, 0xF4, 0x66, 0x00, 0x02, 0x11, 0xB9, 0x07, 0x00, 0xF4, 0x7B, 0xFF, 0xDD, 0x11, 0xAF, \
0x07, 0x00, 0xF8, 0x8D, 0xFF, 0xD1, 0x0B, 0xA2, 0x07, 0x00, 0x09, 0xB8, 0x01, 0x26, 0x0E, 0x2C, \
0x07, 0x00, 0x0C, 0x11, 0x01, 0x7A, 0x12, 0x69, 0x07, 0x00, 0x06, 0x4E, 0xFE, 0xFB, 0x1D, 0xAC, \
0x07, 0x00, 0x02, 0xF2, 0xFF, 0x45, 0x24, 0x4F, 0x07, 0x00
var_80903B40: .word 0x30F804B0
var_80903B44: .word func_80903544
.word func_80903674
.word 0x00000000

.section .rodata

var_80903B50: .word 0x4622F983, 0x00000000, 0x00000000, 0x00000000

