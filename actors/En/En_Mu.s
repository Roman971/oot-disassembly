.section .text
func_80B55FF0:
    sw      a1, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80B55FFC:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF0
    lui     t7, %hi(var_80B567D8)      # t7 = 80B50000
    addiu   t7, t7, %lo(var_80B567D8)  # t7 = 80B567D8
    lw      t9, 0x0000(t7)             # 80B567D8
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFF8
    lui     t3, %hi(var_80B567E0)      # t3 = 80B50000
    sw      t9, 0x0000(t6)             # FFFFFFF8
    lbu     t9, 0x0004(t7)             # 80B567DC
    addiu   t3, t3, %lo(var_80B567E0)  # t3 = 80B567E0
    sb      t9, 0x0004(t6)             # FFFFFFFC
    lw      t5, 0x0000(t3)             # 80B567E0
    lhu     v0, 0x13FE(t0)             # 8011B9CE
    sw      t5, 0x0000(a3)             # FFFFFFF0
    lbu     t5, 0x0004(t3)             # 80B567E4
    andi    a2, v0, 0x001F             # a2 = 00000000
    andi    t6, v0, 0xFFE0             # t6 = 00000000
    sb      t5, 0x0004(a3)             # FFFFFFF4
    sh      t6, 0x13FE(t0)             # 8011B9CE
    jal     func_800CDCCC              # Rand.Next() float
    sb      a2, 0x0027($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lw      t9, 0x003C($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    mul.s   $f6, $f0, $f4
    lw      t3, 0x009C(t9)             # 0000009C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lbu     a1, 0x0027($sp)
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF0
    lw      t1, 0x0038($sp)
    trunc.w.s $f8, $f6
    addiu   t2, $sp, 0x0030            # t2 = FFFFFFF8
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    mfc1    t8, $f8
    nop
    addu    v0, t8, t3
    divu    $zero, v0, $at
    mfhi    v0
    nop
    nop
    addu    t4, a3, v0
lbl_80B560C0:
    lbu     t5, 0x0000(t4)             # 00000000
    and     t6, t5, a1
    beq     t6, $zero, lbl_80B560EC
    nop
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80B560E4
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B560E4:
    bnel    v1, a0, lbl_80B560C0
    addu    t4, a3, v0
lbl_80B560EC:
    bne     v1, a0, lbl_80B56120
    addu    t9, t2, v0
    lbu     t8, 0x0000(t9)             # 00000000
    lhu     t7, 0x01F8(t1)             # 000001F8
    or      a1, $zero, $zero           # a1 = 00000000
    ori     t3, t8, 0x7000             # t3 = 00007000
    bne     t7, t3, lbl_80B56120
    nop
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80B56120
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B56120:
    addu    t6, t2, v0
    lbu     t9, 0x0000(t6)             # 00000000
    addu    t4, a3, v0
    lbu     t5, 0x0000(t4)             # 00000000
    ori     t8, t9, 0x7000             # t8 = 00007000
    sh      t8, 0x01F8(t1)             # 000001F8
    lhu     t7, 0x13FE(t0)             # 8011B9CE
    or      a2, a1, t5                 # a2 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    or      t3, t7, a2                 # t3 = 00000000
    sh      t3, 0x13FE(t0)             # 8011B9CE
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B5615C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    lh      a1, 0x001C(t6)             # 0000001C
    jal     func_800597C0
    addiu   a1, a1, 0x003A             # a1 = 0000003A
    beq     v0, $zero, lbl_80B56188
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_80B56190
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B56188:
    lw      t7, 0x001C($sp)
    lhu     v0, 0x01F8(t7)             # 000001F8
lbl_80B56190:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B561A0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    sltiu   $at, v0, 0x000A
    beq     $at, $zero, lbl_80B561F8
    sll     t6, v0,  2
    lui     $at, %hi(var_80B56820)     # $at = 80B50000
    addu    $at, $at, t6
    lw      t6, %lo(var_80B56820)($at)
    jr      t6
    nop
var_80B561DC:
    beq     $zero, $zero, lbl_80B561FC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
var_80B561E4:
    lw      a0, 0x001C($sp)
    jal     func_80B55FFC
    lw      a1, 0x0018($sp)
    beq     $zero, $zero, lbl_80B561FC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B561F8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B561FC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B5620C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4320                 # a3 = 43200000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x03F4             # a3 = 060003F4
    addiu   a2, a2, 0x4F70             # a2 = 06004F70
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80B56780)      # a3 = 80B50000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B56780)  # a3 = 80B56780
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B567AC)      # a2 = 80B50000
    addiu   a2, a2, %lo(var_80B567AC)  # a2 = 80B567AC
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t6, 0x001F(s0)             # 0000001F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B55FFC
    lw      a1, 0x0044($sp)
    lui     a1, %hi(func_80B56308)     # a1 = 80B50000
    addiu   a1, a1, %lo(func_80B56308) # a1 = 80B56308
    jal     func_80B55FF0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B562E4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_8008D6D0
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B56308:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    addiu   a1, t6, 0x01FA             # a1 = 000001FA
    jal     func_80027D30
    addiu   a2, t6, 0x021A             # a2 = 0000021A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B56340:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t2, $sp, 0x002C            # t2 = FFFFFFEC
    lui     $at, 0x0001                # $at = 00010000
    trunc.w.s $f6, $f4
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    mfc1    t7, $f6
    addiu   a2, s0, 0x0184             # a2 = 00000184
    sh      t7, 0x002C($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x002E($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0030($sp)
    lw      t4, 0x0000(t2)             # FFFFFFEC
    swl     t4, 0x01CA(s0)             # 000001CA
    swr     t4, 0x01CD(s0)             # 000001CD
    lhu     t4, 0x0004(t2)             # FFFFFFF0
    jal     func_8004C130              # CollisionCheck_setOT
    sh      t4, 0x01CE(s0)             # 000001CE
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sw      t5, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      t6, 0x01C4(s0)             # 000001C4
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     t7, %hi(func_80B5615C)     # t7 = 80B50000
    lui     t8, %hi(func_80B561A0)     # t8 = 80B50000
    cvt.s.w $f6, $f4
    addiu   t8, t8, %lo(func_80B561A0) # t8 = 80B561A0
    addiu   t7, t7, %lo(func_80B5615C) # t7 = 80B5615C
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f0, $f6, $f8
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D0             # a2 = 000001D0
    mfc1    a3, $f0
    jal     func_800271FC
    nop
    lw      t0, 0x0028(s0)             # 00000028
    lui     $at, 0x4270                # $at = 42700000
    lw      t1, 0x0024(s0)             # 00000024
    sw      t0, 0x003C(s0)             # 0000003C
    lwc1    $f10, 0x003C(s0)           # 0000003C
    mtc1    $at, $f16                  # $f16 = 60.00
    sw      t1, 0x0038(s0)             # 00000038
    lw      t1, 0x002C(s0)             # 0000002C
    add.s   $f18, $f10, $f16
    sw      t1, 0x0040(s0)             # 00000040
    swc1    $f18, 0x003C(s0)           # 0000003C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B56488:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     a1, $at, lbl_80B564D8
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     a1, $at, lbl_80B564D8
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     a1, $at, lbl_80B564D8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a1, $at, lbl_80B564D8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     a1, $at, lbl_80B564D8
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a1, $at, lbl_80B564D8
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     a1, $at, lbl_80B56560
lbl_80B564D8:
    sll     t7, a1,  1
    addu    v1, t6, t7
    lh      a0, 0x01FA(v1)             # 000001FA
    jal     func_800636C4              # sins?
    sw      v1, 0x001C($sp)
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t8, 0x0002(v0)             # 00000002
    lw      v1, 0x001C($sp)
    mul.s   $f10, $f0, $f8
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x021A(v1)             # 0000021A
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lh      t1, 0x0004(v0)             # 00000004
    mul.s   $f10, $f0, $f6
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0004(v0)             # 00000004
lbl_80B56560:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B56574:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    jr      $ra
    nop


func_80B5658C:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    andi    t9, a2, 0x00FF             # t9 = 00000000
    lbu     t6, 0x0013($sp)
    sll     t0, t9, 16
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = FB000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80B565F8:
    addiu   $sp, $sp, 0xFF60           # $sp = FFFFFF60
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s4, 0x0038($sp)
    addiu   s4, $sp, 0x0074            # s4 = FFFFFFD4
    or      s7, a0, $zero              # s7 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    lui     t6, %hi(var_80B567E8)      # t6 = 80B50000
    addiu   t6, t6, %lo(var_80B567E8)  # t6 = 80B567E8
    addiu   t0, t6, 0x0024             # t0 = 80B5680C
    or      t9, s4, $zero              # t9 = FFFFFFD4
lbl_80B56640:
    lw      t8, 0x0000(t6)             # 80B567E8
    addiu   t6, t6, 0x000C             # t6 = 80B567F4
    addiu   t9, t9, 0x000C             # t9 = FFFFFFE0
    sw      t8, -0x000C(t9)            # FFFFFFD4
    lw      t7, -0x0008(t6)            # 80B567EC
    sw      t7, -0x0008(t9)            # FFFFFFD8
    lw      t8, -0x0004(t6)            # 80B567F0
    bne     t6, t0, lbl_80B56640
    sw      t8, -0x0004(t9)            # FFFFFFDC
    lw      t8, 0x0000(t6)             # 80B567F4
    lui     t2, %hi(var_80B56810)      # t2 = 80B50000
    addiu   t2, t2, %lo(var_80B56810)  # t2 = 80B56810
    sw      t8, 0x0000(t9)             # FFFFFFE0
    lw      t4, 0x0000(t2)             # 80B56810
    addiu   t1, $sp, 0x006C            # t1 = FFFFFFCC
    lui     $at, 0xC496                # $at = C4960000
    sw      t4, 0x0000(t1)             # FFFFFFCC
    lbu     t4, 0x0004(t2)             # 80B56814
    mtc1    $at, $f12                  # $f12 = -1200.00
    mtc1    $zero, $f14                # $f14 = 0.00
    sb      t4, 0x0004(t1)             # FFFFFFD0
    lw      s3, 0x0000(s8)             # 00000000
    lui     a2, 0xC4AF                 # a2 = C4AF0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   s1, $sp, 0x006C            # s1 = FFFFFFCC
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $zero, 0x0014          # s6 = 00000014
    lui     s5, 0xDB06                 # s5 = DB060000
lbl_80B566B4:
    lw      s2, 0x02C0(s3)             # 000002C0
    addiu   t5, s2, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s3)             # 000002C0
    lbu     t0, 0x0000(s1)             # FFFFFFCC
    sll     t6, t0,  2
    andi    t9, t6, 0xFFFF             # t9 = 00000000
    or      t7, t9, s5                 # t7 = DB060000
    sw      t7, 0x0000(s2)             # 00000000
    lh      t8, 0x001C(s7)             # 0000001C
    lw      a0, 0x0000(s8)             # 00000000
    sll     t1, t8,  2
    addu    t1, t1, t8
    sll     t1, t1,  2
    addu    t2, s4, t1
    addu    v0, t2, s0
    lbu     t3, 0x0003(v0)             # 00000003
    lbu     a1, 0x0000(v0)             # 00000000
    lbu     a2, 0x0001(v0)             # 00000001
    lbu     a3, 0x0002(v0)             # 00000002
    jal     func_80B5658C
    sw      t3, 0x0010($sp)
    sw      v0, 0x0004(s2)             # 00000004
    addiu   s0, s0, 0x0004             # s0 = 00000004
    bne     s0, s6, lbl_80B566B4
    addiu   s1, s1, 0x0001             # s1 = FFFFFFCD
    lw      a1, 0x0140(s7)             # 00000140
    lw      a2, 0x015C(s7)             # 0000015C
    lbu     a3, 0x013E(s7)             # 0000013E
    lui     t4, %hi(func_80B56488)     # t4 = 80B50000
    lui     t5, %hi(func_80B56574)     # t5 = 80B50000
    addiu   t5, t5, %lo(func_80B56574) # t5 = 80B56574
    addiu   t4, t4, %lo(func_80B56488) # t4 = 80B56488
    sw      t4, 0x0010($sp)
    sw      t5, 0x0014($sp)
    sw      s7, 0x0018($sp)
    jal     func_80089D8C
    or      a0, s8, $zero              # a0 = 00000000
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp = 00000000
    nop
    nop

.section .data

var_80B56780: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00640046, 0x00000000, 0x00000000
var_80B567AC: .word 0x00000000, 0x00000000, 0xFF000000
var_80B567B8: .word 0x01AD0400, 0x00000009, 0x01820000, 0x0000023C
.word func_80B5620C
.word func_80B562E4
.word func_80B56340
.word func_80B565F8
var_80B567D8: .word 0x42433F41, 0x3E000000
var_80B567E0: .word 0x01020408, 0x10000000
var_80B567E8: .word \
0x6482EB00, 0xA0FA3C00, 0x5A3C1400, 0x1EF0C800, \
0x8C461400, 0x8C461400, 0x1EF0C800, 0x5A3C1400, \
0xA0FA3C00, 0x6482EB00
var_80B56810: .word 0x08090A0B, 0x0C000000, 0x00000000, 0x00000000

.section .rodata

var_80B56820: .word var_80B561DC
.word var_80B561DC
.word var_80B561E4
.word var_80B561DC
.word var_80B561DC
.word var_80B561DC
.word var_80B561DC
.word var_80B561DC
.word var_80B561DC
.word var_80B561DC
.word 0x00000000, 0x00000000

