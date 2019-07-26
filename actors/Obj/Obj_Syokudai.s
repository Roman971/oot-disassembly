.section .text
func_809087D0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80909348)      # a1 = 80910000
    addiu   a1, a1, %lo(var_80909348)  # a1 = 80909348
    andi    t7, t6, 0xF000             # t7 = 00000000
    sw      t7, 0x0034($sp)
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809092F0)      # a3 = 80910000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_809092F0)  # a3 = 809092F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t0, %hi(var_80909358)      # t0 = 80910000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    sra     t9, t8, 12
    addu    t0, t0, t9
    lbu     t0, %lo(var_80909358)(t0)
    or      a0, s1, $zero              # a0 = 00000000
    sb      t0, 0x0150(s0)             # 00000150
    jal     func_8004AB7C
    sw      a1, 0x0030($sp)
    lui     a3, %hi(var_8090931C)      # a3 = 80910000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_8090931C)  # a3 = 8090931C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f10                  # $f10 = 70.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    add.s   $f16, $f8, $f10
    mfc1    a1, $f6
    sb      t1, 0x00AE(s0)             # 000000AE
    trunc.w.s $f6, $f4
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a3, $f6
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    mfc1    a2, $f18
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sll     a1, a1, 16
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sra     a1, a1, 16
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    jal     func_80065C30
    sw      a0, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    jal     func_800665B0
    lw      a2, 0x0030($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    sw      v0, 0x01D8(s0)             # 000001D8
    lw      t0, 0x0034($sp)
    andi    t9, v1, 0x0400             # t9 = 00000000
    bne     t9, $zero, lbl_80908940
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t0, $at, lbl_80908948
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    andi    a1, v1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_80908948
lbl_80908940:
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    sh      t1, 0x01D4(s0)             # 000001D4
lbl_80908948:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, %hi(var_80909400)     # $at = 80910000
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f0, $f8
    lui     a1, 0x4270                 # a1 = 42700000
    trunc.w.s $f16, $f10
    mfc1    t3, $f16
    nop
    sb      t3, 0x01D6(s0)             # 000001D6
    jal     func_80020F04
    sw      $zero, %lo(var_80909400)($at)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80908994:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0188             # a1 = 00000188
    lw      a0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x01D8(t6)             # 000001D8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809089E8:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0084($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    sra     t1, v0,  6
    andi    t1, t1, 0x000F             # t1 = 00000000
    andi    t6, v0, 0x003F             # t6 = 00000000
    andi    t7, v0, 0xF000             # t7 = 00000000
    sw      t6, 0x0070($sp)
    sw      t7, 0x006C($sp)
    sw      t8, 0x005C($sp)
    sb      $zero, 0x005B($sp)
    bne     t1, $at, lbl_80908A34
    sw      t1, 0x0068($sp)
    addiu   t1, $zero, 0x0018          # t1 = 00000018
lbl_80908A34:
    lw      a0, 0x0084($sp)
    lw      a2, 0x0024(s0)             # 00000024
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t2, $sp, 0x0060            # t2 = FFFFFFE0
    addiu   t3, $sp, 0x0064            # t3 = FFFFFFE4
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      t1, 0x0074($sp)
    jal     func_80034908
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    beq     v0, $zero, lbl_80908AC0
    lw      t1, 0x0074($sp)
    lwc1    $f6, 0x0060($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x4250                # $at = 42500000
    mtc1    $at, $f4                   # $f4 = 52.00
    sub.s   $f10, $f6, $f8
    c.lt.s  $f4, $f10
    nop
    bc1fl   lbl_80908AC4
    lh      t7, 0x001C(s0)             # 0000001C
    sh      $zero, 0x01D4(s0)          # 000001D4
    lw      t4, 0x006C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a1, 0x0070($sp)
    bne     t4, $at, lbl_80908E34
    lw      a0, 0x0084($sp)
    jal     func_80020510
    sw      t1, 0x0074($sp)
    lw      t1, 0x0074($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beql    t1, $zero, lbl_80908E38
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    b       lbl_80908E34
    sh      t5, 0x01D4(s0)             # 000001D4
lbl_80908AC0:
    lh      t7, 0x001C(s0)             # 0000001C
lbl_80908AC4:
    lw      t6, 0x0084($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    andi    t8, t7, 0x0400             # t8 = 00000000
    beq     t8, $zero, lbl_80908AE0
    lw      t0, 0x1C44(t6)             # 00001C44
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      t9, 0x01D4(s0)             # 000001D4
lbl_80908AE0:
    beq     t1, $zero, lbl_80908B78
    lw      a0, 0x0084($sp)
    lw      a1, 0x0070($sp)
    sw      a3, 0x004C($sp)
    sw      t0, 0x0054($sp)
    jal     func_8002049C
    sw      t1, 0x0074($sp)
    lw      a3, 0x004C($sp)
    lw      t0, 0x0054($sp)
    beq     v0, $zero, lbl_80908B64
    lw      t1, 0x0074($sp)
    lh      v1, 0x01D4(s0)             # 000001D4
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    bne     v1, $zero, lbl_80908B54
    nop
    sh      t2, 0x01D4(s0)             # 000001D4
    lw      t3, 0x006C($sp)
    lw      a0, 0x0084($sp)
    or      a1, s0, $zero              # a1 = 00000000
    bnel    t3, $zero, lbl_80908B7C
    lbu     t7, 0x0199(s0)             # 00000199
    sw      a3, 0x004C($sp)
    sw      t0, 0x0054($sp)
    jal     func_8006BA10
    sw      t1, 0x0074($sp)
    lw      a3, 0x004C($sp)
    lw      t0, 0x0054($sp)
    b       lbl_80908B78
    lw      t1, 0x0074($sp)
lbl_80908B54:
    blez    v1, lbl_80908B78
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    b       lbl_80908B78
    sh      t4, 0x01D4(s0)             # 000001D4
lbl_80908B64:
    lh      t5, 0x01D4(s0)             # 000001D4
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    bgezl   t5, lbl_80908B7C
    lbu     t7, 0x0199(s0)             # 00000199
    sh      t6, 0x01D4(s0)             # 000001D4
lbl_80908B78:
    lbu     t7, 0x0199(s0)             # 00000199
lbl_80908B7C:
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80908BB4
    lb      t3, 0x0141(t0)             # 00000141
    lw      t9, 0x01C4(s0)             # 000001C4
    lui     $at, 0x0002                # $at = 00020000
    ori     $at, $at, 0x0820           # $at = 00020820
    lw      v0, 0x0000(t9)             # 00000000
    and     t2, v0, $at
    beq     t2, $zero, lbl_80908BA8
    nop
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80908BA8:
    b       lbl_80908C30
    sw      v0, 0x0048($sp)
    lb      t3, 0x0141(t0)             # 00000141
lbl_80908BB4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a0, t0, 0x08A8             # a0 = 000008A8
    bne     t3, $at, lbl_80908C30
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFBC
    sw      a3, 0x004C($sp)
    sw      t0, 0x0054($sp)
    jal     func_80063D48              # Vec3f_Sub
    sw      t1, 0x0074($sp)
    lui     $at, 0x4286                # $at = 42860000
    lwc1    $f0, 0x0040($sp)
    mtc1    $at, $f16                  # $f16 = 67.00
    lwc1    $f2, 0x003C($sp)
    lwc1    $f12, 0x0044($sp)
    sub.s   $f0, $f0, $f16
    mul.s   $f18, $f2, $f2
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f16                  # $f16 = 400.00
    mul.s   $f6, $f0, $f0
    lw      a3, 0x004C($sp)
    lw      t0, 0x0054($sp)
    mul.s   $f4, $f12, $f12
    lw      t1, 0x0074($sp)
    swc1    $f0, 0x0040($sp)
    add.s   $f8, $f18, $f6
    add.s   $f10, $f8, $f4
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_80908C30
    nop
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
lbl_80908C30:
    beq     a3, $zero, lbl_80908E34
    lw      v0, 0x0048($sp)
    lh      v1, 0x01D4(s0)             # 000001D4
    lw      t4, 0x006C($sp)
    beq     v1, $zero, lbl_80908D20
    nop
    bgez    a3, lbl_80908CA8
    andi    t7, v0, 0x0020             # t7 = 00000000
    lh      v0, 0x0850(t0)             # 00000850
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     v0, $zero, lbl_80908C94
    slti    $at, v0, 0x00C8
    addiu   t4, $zero, 0x00D2          # t4 = 000000D2
    lui     t5, 0x8010                 # t5 = 80100000
    sh      t4, 0x0850(t0)             # 00000850
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2822          # a0 = 00002822
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80908CE0
    lh      v1, 0x01D4(s0)             # 000001D4
lbl_80908C94:
    beq     $at, $zero, lbl_80908CE0
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sh      t6, 0x0850(t0)             # 00000850
    b       lbl_80908CE0
    lh      v1, 0x01D4(s0)             # 000001D4
lbl_80908CA8:
    beq     t7, $zero, lbl_80908CE0
    nop
    lw      v0, 0x0190(s0)             # 00000190
    lw      t8, 0x0130(v0)             # 00000130
    beq     t8, $zero, lbl_80908CE0
    nop
    lh      t9, 0x0000(v0)             # 00000000
    addiu   $at, $zero, 0x0016         # $at = 00000016
    addiu   t2, $zero, 0x0800          # t2 = 00000800
    bne     t9, $at, lbl_80908CE0
    nop
    sh      $zero, 0x001C(v0)          # 0000001C
    sw      t2, 0x0198(v0)             # 00000198
    lh      v1, 0x01D4(s0)             # 000001D4
lbl_80908CE0:
    bltz    v1, lbl_80908E34
    lw      v0, 0x0068($sp)
    addu    $at, v0, $zero
    sll     v0, v0,  2
    subu    v0, v0, $at
    sll     v0, v0,  3
    addu    v0, v0, $at
    sll     v0, v0,  1
    addiu   v0, v0, 0x0064             # v0 = 00000064
    slt     $at, v1, v0
    beq     $at, $zero, lbl_80908E34
    lw      t3, 0x006C($sp)
    beql    t3, $zero, lbl_80908E38
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    b       lbl_80908E34
    sh      v0, 0x01D4(s0)             # 000001D4
lbl_80908D20:
    beql    t4, $zero, lbl_80908E38
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    blez    a3, lbl_80908D40
    lui     $at, 0x0002                # $at = 00020000
    ori     $at, $at, 0x0800           # $at = 00020800
    and     t5, v0, $at
    bne     t5, $zero, lbl_80908D54
    nop
lbl_80908D40:
    bgezl   a3, lbl_80908E38
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lh      t6, 0x0850(t0)             # 00000850
    beql    t6, $zero, lbl_80908E38
    addiu   a1, s0, 0x013C             # a1 = 0000013C
lbl_80908D54:
    bgez    a3, lbl_80908D74
    lui     t3, %hi(var_80909400)      # t3 = 80910000
    lh      t7, 0x0850(t0)             # 00000850
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    slti    $at, t7, 0x00C8
    beq     $at, $zero, lbl_80908D74
    nop
    sh      t8, 0x0850(t0)             # 00000850
lbl_80908D74:
    bne     t1, $zero, lbl_80908DB0
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      t9, 0x01D4(s0)             # 000001D4
    lw      t2, 0x006C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0084($sp)
    beq     t2, $at, lbl_80908E0C
    nop
    jal     func_800204D0
    lw      a1, 0x0070($sp)
    lw      a0, 0x0084($sp)
    jal     func_8006BA10
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_80908E0C
    nop
lbl_80908DB0:
    lw      t3, %lo(var_80909400)(t3)
    lui     $at, %hi(var_80909400)     # $at = 80910000
    lw      t6, 0x0068($sp)
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, %lo(var_80909400)($at)
    slt     $at, t4, t1
    bne     $at, $zero, lbl_80908DF4
    sll     t7, t6,  2
    lw      a0, 0x0084($sp)
    jal     func_800204D0
    lw      a1, 0x0070($sp)
    lw      a0, 0x0084($sp)
    jal     func_8006BA10
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    b       lbl_80908E0C
    sh      t5, 0x01D4(s0)             # 000001D4
lbl_80908DF4:
    subu    t7, t7, t6
    sll     t7, t7,  3
    addu    t7, t7, t6
    sll     t7, t7,  1
    addiu   t8, t7, 0x006E             # t8 = 0000006E
    sh      t8, 0x01D4(s0)             # 000001D4
lbl_80908E0C:
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2822          # a0 = 00002822
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80908E34:
    addiu   a1, s0, 0x013C             # a1 = 0000013C
lbl_80908E38:
    sw      a1, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0084($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0030($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)
    lw      a0, 0x0084($sp)
    lw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)
    addiu   a2, s0, 0x0188             # a2 = 00000188
    or      a1, a2, $zero              # a1 = 00000188
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0084($sp)
    lw      a2, 0x002C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a1, 0x0030($sp)
    lh      v1, 0x01D4(s0)             # 000001D4
    blez    v1, lbl_80908ED0
    addiu   t2, v1, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x01D4(s0)             # 000001D4
    lh      v1, 0x01D4(s0)             # 000001D4
    lw      t3, 0x006C($sp)
    bne     v1, $zero, lbl_80908ED0
    nop
    beq     t3, $zero, lbl_80908ED0
    lui     v0, %hi(var_80909400)      # v0 = 80910000
    addiu   v0, v0, %lo(var_80909400)  # v0 = 80909400
    lw      t4, 0x0000(v0)             # 80909400
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sw      t5, 0x0000(v0)             # 80909400
    lh      v1, 0x01D4(s0)             # 000001D4
lbl_80908ED0:
    beql    v1, $zero, lbl_80908FD0
    lbu     a2, 0x005B($sp)
    bltz    v1, lbl_80908EE4
    slti    $at, v1, 0x0014
    bne     $at, $zero, lbl_80908EF0
lbl_80908EE4:
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    b       lbl_80908F20
    sw      t6, 0x005C($sp)
lbl_80908EF0:
    mtc1    v1, $f18                   # $f18 = 0.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    cvt.s.w $f6, $f18
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f4, $f6, $f8
    div.s   $f16, $f4, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sw      t8, 0x005C($sp)
lbl_80908F20:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42FE                # $at = 42FE0000
    mtc1    $at, $f6                   # $f6 = 127.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2031          # a1 = 00002031
    cfc1    t9, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f4, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80908FB0
    mfc1    t2, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f4, $f8, $f4
    ctc1    t2, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80908FA4
    nop
    mfc1    t2, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80908FBC
    or      t2, t2, $at                # t2 = 80000000
lbl_80908FA4:
    b       lbl_80908FBC
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f4
lbl_80908FB0:
    nop
    bltz    t2, lbl_80908FA4
    nop
lbl_80908FBC:
    ctc1    t9, $f31
    addiu   t4, t2, 0x0080             # t4 = 0000007F
    jal     func_8002313C
    sb      t4, 0x005B($sp)
    lbu     a2, 0x005B($sp)
lbl_80908FD0:
    lw      t6, 0x005C($sp)
    addiu   a0, s0, 0x01DC             # a0 = 000001DC
    or      a3, $zero, $zero           # a3 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80065C98
    sw      t6, 0x0010($sp)
    lbu     t7, 0x01D6(s0)             # 000001D6
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x01D6(s0)             # 000001D6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_80909004:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0038($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    sra     t7, t6,  6
    andi    t8, t7, 0x000F             # t8 = 00000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  3
    addu    t9, t9, t8
    sll     t9, t9,  1
    addiu   t1, t9, 0x0064             # t1 = 00000064
    sw      t1, 0x006C($sp)
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a2, 0x0060($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     t9, %hi(var_8090935C)      # t9 = 80910000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lhu     t6, 0x001C(s1)             # 0000001C
    sra     t7, t6, 12
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, %lo(var_8090935C)(t9)
    sw      t9, 0x0004(v1)             # 00000004
    lh      a1, 0x01D4(s1)             # 000001D4
    lw      v0, 0x006C($sp)
    beql    a1, $zero, lbl_809092B0
    lw      $ra, 0x004C($sp)
    mtc1    $at, $f20                  # $f20 = 1.00
    slt     $at, v0, a1
    beq     $at, $zero, lbl_809090F4
    subu    t1, v0, a1
    addiu   t2, t1, 0x000A             # t2 = 0000000A
    mtc1    t2, $f4                    # $f4 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    cvt.s.w $f6, $f4
    b       lbl_80909118
    div.s   $f20, $f6, $f8
lbl_809090F4:
    blez    a1, lbl_80909118
    slti    $at, a1, 0x0014
    beq     $at, $zero, lbl_80909118
    nop
    mtc1    a1, $f10                   # $f10 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    cvt.s.w $f16, $f10
    div.s   $f20, $f16, $f18
lbl_80909118:
    lui     $at, %hi(var_80909370)     # $at = 80910000
    lwc1    $f4, %lo(var_80909370)($at)
    lw      a0, 0x0000(s2)             # 00000000
    mul.s   $f20, $f20, $f4
    jal     func_8007E2C0
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lbu     t8, 0x01D6(s1)             # 000001D6
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    addiu   t2, $zero, 0x0020          # t2 = 00000020
    subu    $at, $zero, t8
    sll     t9, $at,  2
    addu    t9, t9, $at
    sll     t9, t9,  2
    andi    t1, t9, 0x01FF             # t1 = 00000000
    sw      t1, 0x0020($sp)
    sw      t2, 0x0024($sp)
    sw      t3, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x0054($sp)
    lw      t0, 0x0054($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     t5, 0xFA00                 # t5 = FA000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFFFF                 # t6 = FFFF0000
    ori     t6, t6, 0x00FF             # t6 = FFFF00FF
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x8080             # t5 = FA008080
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     t9, 0xFF00                 # t9 = FF000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lui     $at, 0x4250                # $at = 42500000
    mtc1    $at, $f14                  # $f14 = 52.00
    mfc1    a2, $f12
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      t1, 0x07A0(s2)             # 000007A0
    sll     t2, t1,  2
    addu    t3, s2, t2
    jal     func_8004977C
    lw      a0, 0x0790(t3)             # 00000790
    lh      t4, 0x00B6(s1)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t5, v0, t4
    addu    t6, t5, $at
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80909374)     # $at = 80910000
    lwc1    $f10, %lo(var_80909374)($at)
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0405                 # t4 = 04050000
    addiu   t4, t4, 0x2A10             # t4 = 04052A10
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      $ra, 0x004C($sp)
lbl_809092B0:
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    nop
    nop

.section .data

var_809092D0: .word 0x005E0600, 0x00000410, 0x00A40000, 0x000001EC
.word func_809087D0
.word func_80908994
.word func_809089E8
.word func_80909004
var_809092F0: .word \
0x09000D39, 0x20010000, 0x02000000, 0x00100000, \
0x00000000, 0xEE01FFFF, 0x00000000, 0x00050100, \
0x000C002D, 0x00000000, 0x00000000
var_8090931C: .word \
0x0A000900, 0x00010000, 0x02000000, 0x00000000, \
0x00000000, 0x00020820, 0x00000000, 0x00010000, \
0x000F002D, 0x002D0000, 0x00000000
var_80909348: .word 0xC85003E8, 0xB0F40FA0, 0xB0F80320, 0x30FC0320
var_80909358: .word 0x090B0B00
var_8090935C: .word \
0x060003A0, 0x06000B90, 0x06000870, 0x00000000, \
0x00000000

.section .rodata

var_80909370: .word 0x3B30F27C
var_80909374: .word 0x38C90FDB, 0x00000000, 0x00000000

.bss

var_80909400: .space 0x10
