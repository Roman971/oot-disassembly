.section .text
func_808B3FC0:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lui     a1, %hi(var_808B6858)      # a1 = 808B0000
    addiu   a1, a1, %lo(var_808B6858)  # a1 = 808B6858
    mul.s   $f6, $f0, $f4
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    jal     func_80063F7C
    sh      t7, 0x02B0(s0)             # 000002B0
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)
    or      a2, s0, $zero              # a2 = 00000000
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_808B4084
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    jal     func_800265D4
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     t8, %hi(func_808B65AC)     # t8 = 808B0000
    addiu   t8, t8, %lo(func_808B65AC) # t8 = 808B65AC
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    lui     a2, 0x8002                 # a2 = 80020000
    mfc1    a1, $f2
    mfc1    a3, $f2
    sw      t8, 0x02A0(s0)             # 000002A0
    sh      t9, 0x02A8(s0)             # 000002A8
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lh      t0, 0x001C(s0)             # 0000001C
    lw      t2, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t1, t0, 0x0096             # t1 = 00000096
    and     t3, t2, $at
    sh      t1, 0x02BC(s0)             # 000002BC
    b       lbl_808B4338
    sw      t3, 0x0004(s0)             # 00000004
lbl_808B4084:
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_808B4198
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lw      t4, 0x0004(s0)             # 00000004
    lui     $at, %hi(var_808B68D0)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B68D0)($at)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t5, t4, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t5, 0x0004(s0)             # 00000004
    sh      t6, 0x02BC(s0)             # 000002BC
    sh      t7, 0x02A8(s0)             # 000002A8
    swc1    $f10, 0x006C(s0)           # 0000006C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x02C0(s0)           # 000002C0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    lui     t8, %hi(func_808B6404)     # t8 = 808B0000
    addiu   t8, t8, %lo(func_808B6404) # t8 = 808B6404
    mul.s   $f18, $f0, $f2
    sw      t8, 0x02A0(s0)             # 000002A0
    add.s   $f4, $f18, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_808B68D4)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B68D4)($at)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    mul.s   $f8, $f0, $f6
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    sh      t9, 0x02BC(s0)             # 000002BC
    add.s   $f16, $f8, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, %hi(var_808B68D8)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B68D8)($at)
    lui     $at, %hi(var_808B68DC)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B68DC)($at)
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_808B68E0)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B68E0)($at)
    lui     $at, %hi(var_808B68E4)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B68E4)($at)
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_808B68E8)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B68E8)($at)
    lui     $at, %hi(var_808B68EC)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B68EC)($at)
    mul.s   $f8, $f0, $f6
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    mfc1    a1, $f2
    mfc1    a3, $f2
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    add.s   $f16, $f8, $f10
    jal     func_8001EC20
    swc1    $f16, 0x0058(s0)           # 00000058
    b       lbl_808B433C
    lw      $ra, 0x002C($sp)
lbl_808B4198:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    mfc1    a1, $f2
    jal     func_8001EC20
    lui     a3, 0x4220                 # a3 = 42200000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t0, s0, 0x0180             # t0 = 00000180
    addiu   t1, s0, 0x0210             # t1 = 00000210
    addiu   t2, $zero, 0x0018          # t2 = 00000018
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    addiu   a3, a3, 0x1548             # a3 = 06001548
    addiu   a2, a2, 0x3B40             # a2 = 06003B40
    sw      a1, 0x0034($sp)
    jal     func_8008C684
    lw      a0, 0x0044($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1548             # a1 = 06001548
    jal     func_8008D2D4
    lw      a0, 0x0034($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sb      t3, 0x00AF(s0)             # 000000AF
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_808B4234
    lui     t4, %hi(func_808B44E0)     # t4 = 808B0000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f18                  # $f18 = 1.50
    addiu   t4, t4, %lo(func_808B44E0) # t4 = 808B44E0
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    sw      t4, 0x02A0(s0)             # 000002A0
    sh      t5, 0x02BA(s0)             # 000002BA
    lh      v0, 0x001C(s0)             # 0000001C
    b       lbl_808B4294
    swc1    $f18, 0x0068(s0)           # 00000068
lbl_808B4234:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_808B4248
    lui     v1, %hi(var_808B6848)      # v1 = 808B0000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_808B4274
lbl_808B4248:
    lui     t6, %hi(func_808B476C)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B476C) # t6 = 808B476C
    addiu   v1, v1, %lo(var_808B6848)  # v1 = 808B6848
    sw      t6, 0x02A0(s0)             # 000002A0
    lbu     t7, 0x0000(v1)             # 808B6848
    sh      t7, 0x02B8(s0)             # 000002B8
    lbu     t8, 0x0000(v1)             # 808B6848
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0000(v1)             # 808B6848
    b       lbl_808B4294
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808B4274:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_808B4284
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_808B4294
lbl_808B4284:
    lui     t0, %hi(func_808B476C)     # t0 = 808B0000
    addiu   t0, t0, %lo(func_808B476C) # t0 = 808B476C
    sw      t0, 0x02A0(s0)             # 000002A0
    lh      v0, 0x001C(s0)             # 0000001C
lbl_808B4294:
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_808B42B0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, %hi(var_808B68F0)     # $at = 808B0000
    lwc1    $f4, %lo(var_808B68F0)($at)
    b       lbl_808B42BC
    swc1    $f4, 0x02E0(s0)            # 000002E0
lbl_808B42B0:
    lui     $at, %hi(var_808B68F4)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B68F4)($at)
    swc1    $f6, 0x02E0(s0)            # 000002E0
lbl_808B42BC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sh      t1, 0x02A8(s0)             # 000002A8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x02C0(s0)            # 000002C0
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sh      t2, 0x02BC(s0)             # 000002BC
    mul.s   $f16, $f0, $f10
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    swc1    $f16, 0x02C8(s0)           # 000002C8
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_808B67F0)      # a3 = 808B0000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_808B67F0)  # a3 = 808B67F0
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a1, s0, 0x0348             # a1 = 00000348
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_808B681C)      # a3 = 808B0000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_808B681C)  # a3 = 808B681C
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
lbl_808B4338:
    lw      $ra, 0x002C($sp)
lbl_808B433C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808B434C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   a1, a2, 0x02FC             # a1 = 000002FC
    slti    $at, t6, 0x000A
    beql    $at, $zero, lbl_808B4390
    lw      $ra, 0x0014($sp)
    jal     func_8004ABCC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a2, 0x0348             # a1 = 00000348
    lw      $ra, 0x0014($sp)
lbl_808B4390:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B439C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x3D78             # a0 = 06003D78
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3D78             # a1 = 06003D78
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    lui     t6, %hi(func_808B4440)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B4440) # t6 = 808B4440
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    slti    $at, t8, 0x0006
    sw      t6, 0x02A0(s0)             # 000002A0
    beq     $at, $zero, lbl_808B4420
    sh      t7, 0x02BC(s0)             # 000002BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3819          # a1 = 00003819
    b       lbl_808B4430
    lw      $ra, 0x002C($sp)
lbl_808B4420:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x395F          # a1 = 0000395F
    lw      $ra, 0x002C($sp)
lbl_808B4430:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B4440:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x40D5                 # a1 = 40D50000
    ori     a1, a1, 0x5555             # a1 = 40D55555
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    lw      t6, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, v0, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0032(s0)             # 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      t7, 0x02BC(s0)             # 000002BC
    bnel    t7, $zero, lbl_808B44D0
    lw      $ra, 0x001C($sp)
    jal     func_808B4F7C
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808B44D0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B44E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s0, 0x0018($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, %hi(var_808B68F8)     # $at = 808B0000
    lwc1    $f4, %lo(var_808B68F8)($at)
    lui     $at, %hi(var_808B68FC)     # $at = 808B0000
    lwc1    $f6, 0x02CC(s0)            # 000002CC
    swc1    $f4, 0x006C(s0)            # 0000006C
    lwc1    $f8, %lo(var_808B68FC)($at)
    lwc1    $f16, 0x02C8(s0)           # 000002C8
    mfc1    a1, $f0
    add.s   $f10, $f6, $f8
    lui     a2, 0x3BA3                 # a2 = 3BA30000
    ori     a2, a2, 0xD70A             # a2 = 3BA3D70A
    addiu   a0, s0, 0x02DC             # a0 = 000002DC
    swc1    $f10, 0x02CC(s0)           # 000002CC
    lwc1    $f18, 0x02CC(s0)           # 000002CC
    add.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    jal     func_800642F0
    swc1    $f6, 0x02C8(s0)            # 000002C8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     a1, 0x44BB                 # a1 = 44BB0000
    ori     a1, a1, 0x8000             # a1 = 44BB8000
    mfc1    a2, $f0
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    jal     func_80064280
    lui     a3, 0x4316                 # a3 = 43160000
    lh      v0, 0x02AE(s0)             # 000002AE
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    beq     v0, $zero, lbl_808B459C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_808B4644
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808B46AC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808B46E8
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    lhu     v0, 0x0088(s0)             # 00000088
    b       lbl_808B471C
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B459C:
    lhu     v0, 0x0088(s0)             # 00000088
    andi    v0, v0, 0x0001             # v0 = 00000000
    beq     v0, $zero, lbl_808B471C
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x3814          # a1 = 00003814
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t6, 0x0006
    beq     $at, $zero, lbl_808B45DC
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_808B45F4
    lh      t7, 0x001C(s0)             # 0000001C
lbl_808B45DC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3961          # a1 = 00003961
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    lh      t7, 0x001C(s0)             # 0000001C
lbl_808B45F4:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    slti    $at, t7, 0x0006
    bne     $at, $zero, lbl_808B4620
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B49AC
    lw      a1, 0x0024($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    b       lbl_808B471C
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B4620:
    mfc1    a3, $f0
    sh      t8, 0x02AE(s0)             # 000002AE
    sh      t9, 0x02BC(s0)             # 000002BC
    lui     a1, 0x3FC0                 # a1 = 3FC00000
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    lhu     v0, 0x0088(s0)             # 00000088
    b       lbl_808B471C
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B4644:
    lh      t0, 0x02BC(s0)             # 000002BC
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    bne     t0, $zero, lbl_808B4694
    lui     a1, 0x3FC0                 # a1 = 3FC00000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    mfc1    a3, $f0
    sh      t1, 0x02AE(s0)             # 000002AE
    sh      t2, 0x02BC(s0)             # 000002BC
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    lui     a1, 0x3F40                 # a1 = 3F400000
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f10                  # $f10 = 2.00
    swc1    $f8, 0x0060(s0)            # 00000060
    b       lbl_808B46A0
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_808B4694:
    mfc1    a3, $f0
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
lbl_808B46A0:
    lhu     v0, 0x0088(s0)             # 00000088
    b       lbl_808B471C
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B46AC:
    lh      t3, 0x02BC(s0)             # 000002BC
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    addiu   a0, s0, 0x02C0             # a0 = 000002C0
    bne     t3, $zero, lbl_808B46D0
    lui     a1, 0x3F40                 # a1 = 3F400000
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    sh      t4, 0x02AE(s0)             # 000002AE
    b       lbl_808B46DC
    sh      t5, 0x02BC(s0)             # 000002BC
lbl_808B46D0:
    mfc1    a3, $f0
    jal     func_80064280
    lui     a2, 0x3F00                 # a2 = 3F000000
lbl_808B46DC:
    lhu     v0, 0x0088(s0)             # 00000088
    b       lbl_808B471C
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B46E8:
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    mfc1    a1, $f0
    jal     func_80064280
    addu    a3, a2, $zero
    lh      t6, 0x02BC(s0)             # 000002BC
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_808B4718
    lhu     v0, 0x0088(s0)             # 00000088
    jal     func_808B49AC
    lw      a1, 0x0024($sp)
    lhu     v0, 0x0088(s0)             # 00000088
lbl_808B4718:
    andi    v0, v0, 0x0001             # v0 = 00000000
lbl_808B471C:
    beq     v0, $zero, lbl_808B4738
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_800642F0
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
lbl_808B4738:
    lui     $at, %hi(var_808B6900)     # $at = 808B0000
    lwc1    $f16, %lo(var_808B6900)($at)
    lwc1    $f18, 0x0068(s0)           # 00000068
    lwc1    $f6, 0x02C4(s0)            # 000002C4
    lh      t7, 0x0032(s0)             # 00000032
    mul.s   $f4, $f18, $f16
    sh      t7, 0x00B6(s0)             # 000000B6
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x02C4(s0)            # 000002C4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_808B476C:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    lui     $at, 0x3F80                # $at = 3F800000
    sw      s8, 0x0060($sp)
    sw      s1, 0x0044($sp)
    mtc1    $at, $f0                   # $f0 = 1.00
    or      s1, a0, $zero              # s1 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lwc1    $f4, 0x02C8(s1)            # 000002C8
    lw      s0, 0x1C44(s8)             # 00001C44
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    add.s   $f6, $f4, $f0
    mfc1    a2, $f0
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    swc1    $f6, 0x02C8(s1)            # 000002C8
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80064280
    addiu   a0, s1, 0x02DC             # a0 = 000002DC
    lwc1    $f8, 0x0024(s1)            # 00000024
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808B4854
    sh      $zero, 0x02B6(s1)          # 000002B6
    lwc1    $f16, 0x002C(s1)           # 0000002C
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808B4854
    sh      $zero, 0x02B6(s1)          # 000002B6
    lh      t6, 0x02B6(s1)             # 000002B6
    lui     t9, %hi(func_808B44E0)     # t9 = 808B0000
    addiu   t9, t9, %lo(func_808B44E0) # t9 = 808B44E0
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x02B6(s1)             # 000002B6
    lh      t8, 0x02B6(s1)             # 000002B6
    slti    $at, t8, 0x000A
    bnel    $at, $zero, lbl_808B4858
    lh      t0, 0x02B0(s1)             # 000002B0
    b       lbl_808B4854
    sw      t9, 0x02A0(s1)             # 000002A0
    sh      $zero, 0x02B6(s1)          # 000002B6
lbl_808B4854:
    lh      t0, 0x02B0(s1)             # 000002B0
lbl_808B4858:
    andi    t1, t0, 0x000F             # t1 = 00000000
    bnel    t1, $zero, lbl_808B4978
    lw      $ra, 0x0064($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     s5, %hi(var_808B6874)      # s5 = 808B0000
    addiu   s5, s5, %lo(var_808B6874)  # s5 = 808B6874
    c.lt.s  $f0, $f4
    lui     $at, 0x40A0                # $at = 40A00000
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s7, $zero, 0x0002          # s7 = 00000002
    bc1f    lbl_808B4974
    addiu   s6, $sp, 0x006C            # s6 = FFFFFFD4
    mtc1    $at, $f22                  # $f22 = 5.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s4, %hi(var_808B6868)      # s4 = 808B0000
    mtc1    $at, $f20                  # $f20 = 30.00
    addiu   s4, s4, %lo(var_808B6868)  # s4 = 808B6868
    addiu   s3, $sp, 0x0078            # s3 = FFFFFFE0
    addiu   s2, $sp, 0x0084            # s2 = FFFFFFEC
    lw      t3, 0x0000(s4)             # 808B6868
lbl_808B48B4:
    lw      t5, 0x0000(s5)             # 808B6874
    lw      t2, 0x0004(s4)             # 808B686C
    sw      t3, 0x0000(s2)             # FFFFFFEC
    sw      t5, 0x0000(s3)             # FFFFFFE0
    lw      t3, 0x0008(s4)             # 808B6870
    lw      t5, 0x0008(s5)             # 808B687C
    lw      t4, 0x0004(s5)             # 808B6878
    mov.s   $f12, $f20
    sw      t2, 0x0004(s2)             # FFFFFFF0
    sw      t3, 0x0008(s2)             # FFFFFFF4
    sw      t5, 0x0008(s3)             # FFFFFFE8
    jal     func_80026D90
    sw      t4, 0x0004(s3)             # FFFFFFE4
    lwc1    $f6, 0x0024(s1)            # 00000024
    mov.s   $f12, $f20
    add.s   $f8, $f0, $f6
    jal     func_80026D64
    swc1    $f8, 0x006C($sp)
    lwc1    $f10, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0070($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    add.s   $f4, $f0, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0074($sp)
    mul.s   $f6, $f0, $f22
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFD4
    trunc.w.s $f8, $f6
    or      a2, s2, $zero              # a2 = FFFFFFEC
    or      a3, s3, $zero              # a3 = FFFFFFE0
    sw      $zero, 0x0010($sp)
    mfc1    t7, $f8
    sw      $zero, 0x0020($sp)
    sll     t8, t7, 16
    sra     t9, t8, 16
    addiu   t0, t9, 0x000A             # t0 = 0000000A
    jal     func_8001D21C
    sw      t0, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s7, lbl_808B48B4
    lw      t3, 0x0000(s4)             # 808B6868
lbl_808B4974:
    lw      $ra, 0x0064($sp)
lbl_808B4978:
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_808B49AC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0544             # a0 = 06000544
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0544             # a1 = 06000544
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lui     t7, %hi(func_808B4A74)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B4A74) # t7 = 808B4A74
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    sw      t7, 0x02A0(s0)             # 000002A0
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      $zero, 0x02A8(s0)          # 000002A8
    sh      t8, 0x02BC(s0)             # 000002BC
    lw      t9, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t9)             # 00001C44
    sh      v0, 0x00B6(s0)             # 000000B6
    lh      t0, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    sh      t0, 0x0032(s0)             # 00000032
    jal     func_808B6448
    lw      a1, 0x0034($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mtc1    $zero, $f10                # $f10 = 0.00
    swc1    $f8, 0x02C0(s0)            # 000002C0
    swc1    $f10, 0x0068(s0)           # 00000068
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808B4A74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lh      t6, 0x02BC(a1)             # 000002BC
    bnel    t6, $zero, lbl_808B4AB0
    lw      $ra, 0x0014($sp)
    jal     func_808B4F7C
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_808B4AB0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B4ABC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0838             # a0 = 06000838
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0838             # a1 = 06000838
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lb      t8, 0x00AF(s0)             # 000000AF
    lui     t7, %hi(func_808B4BA8)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B4BA8) # t7 = 808B4BA8
    bgtz    t8, lbl_808B4B44
    sw      t7, 0x02A0(s0)             # 000002A0
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x02BC(s0)             # 000002BC
    lw      a0, 0x0034($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_808B4B50
    lh      t1, 0x008A(s0)             # 0000008A
lbl_808B4B44:
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    sh      t0, 0x02BC(s0)             # 000002BC
    lh      t1, 0x008A(s0)             # 0000008A
lbl_808B4B50:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lh      t3, 0x001C(s0)             # 0000001C
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, t1, $at
    slti    $at, t3, 0x0006
    sh      t2, 0x0032(s0)             # 00000032
    beq     $at, $zero, lbl_808B4B88
    swc1    $f10, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3818          # a1 = 00003818
    b       lbl_808B4B98
    lw      $ra, 0x002C($sp)
lbl_808B4B88:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x395E          # a1 = 0000395E
    lw      $ra, 0x002C($sp)
lbl_808B4B98:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B4BA8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x4000                 # a2 = 40000000
    lhu     t6, 0x0088(a3)             # 00000088
    addiu   a0, a3, 0x0068             # a0 = 00000068
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_808B4BF4
    lh      t8, 0x02BC(a3)             # 000002BC
    jal     func_800642F0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t8, 0x02BC(a3)             # 000002BC
lbl_808B4BF4:
    bnel    t8, $zero, lbl_808B4C24
    lw      $ra, 0x0014($sp)
    lb      t9, 0x00AF(a3)             # 000000AF
    bgtz    t9, lbl_808B4C18
    nop
    jal     func_808B4C30
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808B4C24
    lw      $ra, 0x0014($sp)
lbl_808B4C18:
    jal     func_808B439C
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_808B4C24:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B4C30:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0B78             # a0 = 06000B78
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0B78             # a1 = 06000B78
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lh      t9, 0x001C(s0)             # 0000001C
    lui     t7, %hi(func_808B4CF0)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B4CF0) # t7 = 808B4CF0
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    slti    $at, t9, 0x0006
    sw      t7, 0x02A0(s0)             # 000002A0
    beq     $at, $zero, lbl_808B4CB8
    sh      t8, 0x02BC(s0)             # 000002BC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x381A          # a1 = 0000381A
    b       lbl_808B4CC8
    lw      t1, 0x0004(s0)             # 00000004
lbl_808B4CB8:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3960          # a1 = 00003960
    lw      t1, 0x0004(s0)             # 00000004
lbl_808B4CC8:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    and     t2, t1, $at
    sh      t0, 0x02BA(s0)             # 000002BA
    sw      t2, 0x0004(s0)             # 00000004
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B4CF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t6, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F80                 # a1 = 3F800000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_808B4D30
    lh      v0, 0x02BC(s0)             # 000002BC
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lh      v0, 0x02BC(s0)             # 000002BC
lbl_808B4D30:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v0, $at, lbl_808B4D70
    nop
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x39E3          # a1 = 000039E3
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t8, 0x0006
    beq     $at, $zero, lbl_808B4D64
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808B4D70
    lh      v0, 0x02BC(s0)             # 000002BC
lbl_808B4D64:
    jal     func_80022FD0
    addiu   a1, $zero, 0x39E5          # a1 = 000039E5
    lh      v0, 0x02BC(s0)             # 000002BC
lbl_808B4D70:
    bnel    v0, $zero, lbl_808B4D84
    lw      $ra, 0x001C($sp)
    jal     func_808B4D94
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808B4D84:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B4D94:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0334             # a0 = 06000334
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f8                   # $f8 = -2.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0334             # a1 = 06000334
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t6, %hi(func_808B4E0C)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B4E0C) # t6 = 808B4E0C
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      t6, 0x02A0(v0)             # 000002A0
    sh      t7, 0x02BC(v0)             # 000002BC
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B4E0C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lh      v0, 0x02BC(s0)             # 000002BC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     a2, %hi(var_808B684C)      # a2 = 808B0000
    bne     v0, $at, lbl_808B4EC0
    addiu   a2, a2, %lo(var_808B684C)  # a2 = 808B684C
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    swc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    add.s   $f10, $f6, $f8
    lw      t7, 0x0000(a2)             # 808B684C
    lw      t6, 0x0004(a2)             # 808B6850
    lui     $at, %hi(var_808B6904)     # $at = 808B0000
    sub.s   $f18, $f10, $f16
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    swc1    $f18, 0x0034($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    swc1    $f4, 0x0038($sp)
    sw      t7, 0x0000(a3)             # FFFFFFF4
    lw      t7, 0x0008(a2)             # 808B6854
    sw      t6, 0x0004(a3)             # FFFFFFF8
    sw      t7, 0x0008(a3)             # FFFFFFFC
    lwc1    $f6, %lo(var_808B6904)($at)
    sw      $zero, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x004C($sp)
    jal     func_8001D8C8
    swc1    $f6, 0x0040($sp)
    lh      v0, 0x02BC(s0)             # 000002BC
lbl_808B4EC0:
    bne     v0, $zero, lbl_808B4F60
    addiu   a0, s0, 0x0054             # a0 = 00000054
    lui     $at, %hi(var_808B6908)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B6908)($at)
    lui     a3, 0x3B13                 # a3 = 3B130000
    ori     a3, a3, 0x74BC             # a3 = 3B1374BC
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     $at, %hi(var_808B690C)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B690C)($at)
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    c.le.s  $f0, $f10
    addiu   a0, $zero, 0x3878          # a0 = 00003878
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bc1f    lbl_808B4F60
    lui     t2, 0x8010                 # t2 = 80100000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   t2, t2, 0x43A8             # t2 = 801043A8
    slti    $at, v1, 0x0006
    beql    $at, $zero, lbl_808B4F3C
    sw      a3, 0x0010($sp)
    lw      v0, 0x0118(s0)             # 00000118
    sll     t0, v1,  1
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addu    t1, v0, t0
    sh      t9, 0x0194(t1)             # 00000194
    sw      a3, 0x0010($sp)
lbl_808B4F3C:
    jal     func_800C806C
    sw      t2, 0x0014($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x004C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0030          # a3 = 00000030
lbl_808B4F60:
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sh      t3, 0x02B4(s0)             # 000002B4
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_808B4F7C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x1548             # a0 = 06001548
    mtc1    v0, $f4                    # $f4 = 0.00
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    cvt.s.w $f6, $f4
    jal     func_80063BF0
    swc1    $f6, 0x002C($sp)
    lw      v1, 0x0030($sp)
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f10                  # $f10 = -5.00
    sh      v0, 0x02BC(v1)             # 000002BC
    lwc1    $f8, 0x002C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1548             # a1 = 06001548
    sw      $zero, 0x0014($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    swc1    $f10, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f8, 0x0010($sp)
    lw      t7, 0x0030($sp)
    lui     t6, %hi(func_808B53E0)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B53E0) # t6 = 808B53E0
    sw      t6, 0x02A0(t7)             # 000002A0
    lw      t8, 0x0030($sp)
    sh      $zero, 0x02A8(t8)          # 000002A8
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808B5008:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x3D78             # a0 = 06003D78
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x3D78             # a1 = 06003D78
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0028($sp)
    lui     t6, %hi(func_808B545C)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B545C) # t6 = 808B545C
    addiu   a0, $zero, 0x0046          # a0 = 00000046
    addiu   a1, $zero, 0x006E          # a1 = 0000006E
    jal     func_80063BF0
    sw      t6, 0x02A0(t7)             # 000002A0
    lw      t8, 0x0028($sp)
    sh      v0, 0x02BC(t8)             # 000002BC
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808B5088:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0E4C             # a0 = 06000E4C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f8                   # $f8 = -5.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0E4C             # a1 = 06000E4C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_808B5104)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B5104) # t7 = 808B5104
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sw      t7, 0x02A0(v0)             # 000002A0
    sh      t8, 0x02BC(v0)             # 000002BC
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B5104:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lw      t6, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    sll     a1, v0, 16
    sh      v0, 0x0026($sp)
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0026($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      t7, 0x02BC(s0)             # 000002BC
    bnel    t7, $zero, lbl_808B5188
    sh      $zero, 0x02B4(s0)          # 000002B4
    jal     func_808B5280
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x02B4(s0)          # 000002B4
lbl_808B5188:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B519C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x017C             # a0 = 0600017C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      a0, 0x0028($sp)
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x017C             # a1 = 0600017C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_808B5214)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B5214) # t7 = 808B5214
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t7, 0x02A0(v0)             # 000002A0
    sh      t8, 0x02BC(v0)             # 000002BC
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B5214:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     a1, 0x3F80                 # a1 = 3F800000
    lui     a2, 0x4000                 # a2 = 40000000
    lhu     t6, 0x0088(a3)             # 00000088
    addiu   a0, a3, 0x0068             # a0 = 00000068
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_808B5260
    lh      t8, 0x02BC(a3)             # 000002BC
    jal     func_800642F0
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lh      t8, 0x02BC(a3)             # 000002BC
lbl_808B5260:
    bnel    t8, $zero, lbl_808B5274
    lw      $ra, 0x0014($sp)
    jal     func_808B4F7C
    or      a0, a3, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_808B5274:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B5280:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0544             # a0 = 06000544
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x0544             # a1 = 06000544
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lh      t8, 0x001C(s0)             # 0000001C
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    lui     t7, %hi(func_808B5328)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B5328) # t7 = 808B5328
    slti    $at, t8, 0x0006
    sw      t7, 0x02A0(s0)             # 000002A0
    beq     $at, $zero, lbl_808B5308
    swc1    $f8, 0x0060(s0)            # 00000060
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3817          # a1 = 00003817
    b       lbl_808B5318
    lw      $ra, 0x002C($sp)
lbl_808B5308:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x395D          # a1 = 0000395D
    lw      $ra, 0x002C($sp)
lbl_808B5318:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808B5328:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      t7, t6, $at                # t7 = 01000000
    jal     func_8008C9C0
    sw      t7, 0x0004(s0)             # 00000004
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0060(s0)            # 00000060
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_808B53CC
    sh      $zero, 0x02B4(s0)          # 000002B4
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_808B53CC
    sh      $zero, 0x02B4(s0)          # 000002B4
    jal     func_808B519C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x39E4          # a1 = 000039E4
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0006
    beq     $at, $zero, lbl_808B53C0
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808B53CC
    sh      $zero, 0x02B4(s0)          # 000002B4
lbl_808B53C0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x39E6          # a1 = 000039E6
    sh      $zero, 0x02B4(s0)          # 000002B4
lbl_808B53CC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B53E0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4000                 # a2 = 40000000
    lw      t6, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    sll     a1, v0, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      t7, 0x02BC(s0)             # 000002BC
    bnel    t7, $zero, lbl_808B544C
    lw      $ra, 0x001C($sp)
    jal     func_808B5008
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808B544C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B545C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lui     a1, 0x3F80                 # a1 = 3F800000
    bne     v0, $zero, lbl_808B54A0
    lw      a0, 0x0024($sp)
    jal     func_8008D6A8
    lui     a1, 0x40A0                 # a1 = 40A00000
    beql    v0, $zero, lbl_808B54D4
    lui     a1, 0x4055                 # a1 = 40550000
lbl_808B54A0:
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x3816          # a1 = 00003816
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t6, 0x0006
    beq     $at, $zero, lbl_808B54C8
    nop
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808B54D4
    lui     a1, 0x4055                 # a1 = 40550000
lbl_808B54C8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x395C          # a1 = 0000395C
    lui     a1, 0x4055                 # a1 = 40550000
lbl_808B54D4:
    ori     a1, a1, 0x5555             # a1 = 40555555
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4000                 # a3 = 40000000
    addiu   a0, s0, 0x0032             # a0 = 00000032
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x0032(s0)             # 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064624
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lhu     t7, 0x0088(s0)             # 00000088
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    andi    t8, t7, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_808B5538
    lwc1    $f8, 0x0090(s0)            # 00000090
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f8, 0x0090(s0)            # 00000090
lbl_808B5538:
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_808B5554
    lw      $ra, 0x001C($sp)
    jal     func_808B5088
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_808B5554:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B5564:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t6, %hi(func_808B5600)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B5600) # t6 = 808B5600
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t6, 0x02A0(a3)             # 000002A0
    sh      t7, 0x02E8(a3)             # 000002E8
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1548             # a1 = 06001548
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0xC0A0                 # a2 = C0A00000
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f12                  # $f12 = 15.00
    jal     func_80026D64
    nop
    trunc.w.s $f4, $f0
    lw      a3, 0x0018($sp)
    addiu   a1, $zero, 0x381F          # a1 = 0000381F
    mfc1    t1, $f4
    lh      t3, 0x001C(a3)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    addiu   t2, t1, 0x0003             # t2 = 00000003
    slti    $at, t3, 0x0006
    beq     $at, $zero, lbl_808B55E8
    sh      t2, 0x02BC(a3)             # 000002BC
    jal     func_80022FD0
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_808B55F4
    lw      $ra, 0x0014($sp)
lbl_808B55E8:
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lw      $ra, 0x0014($sp)
lbl_808B55F4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B5600:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x00B4          # a2 = 000000B4
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t8, 0x02BC(s0)             # 000002BC
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sh      t7, 0x02B4(s0)             # 000002B4
    beql    t8, $zero, lbl_808B5650
    lhu     t9, 0x0088(s0)             # 00000088
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t9, 0x0088(s0)             # 00000088
lbl_808B5650:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F00                 # a1 = 3F000000
    andi    t0, t9, 0x0001             # t0 = 00000000
    beql    t0, $zero, lbl_808B5678
    lh      v0, 0x02E8(s0)             # 000002E8
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x4000                 # a2 = 40000000
    jal     func_800642F0
    swc1    $f4, 0x0060(s0)            # 00000060
    lh      v0, 0x02E8(s0)             # 000002E8
lbl_808B5678:
    bne     v0, $zero, lbl_808B5690
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    jal     func_808B4F7C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808B56F0
    lw      $ra, 0x0024($sp)
lbl_808B5690:
    sh      t1, 0x02E8(s0)             # 000002E8
    lh      v0, 0x02E8(s0)             # 000002E8
    slti    $at, v0, 0x001E
    beq     $at, $zero, lbl_808B56EC
    andi    t2, v0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_808B56D0
    lui     $at, 0x3FC0                # $at = 3FC00000
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f0                   # $f0 = 1.50
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x002C(s0)           # 0000002C
    add.s   $f8, $f6, $f0
    add.s   $f16, $f10, $f0
    swc1    $f8, 0x0024(s0)            # 00000024
    b       lbl_808B56EC
    swc1    $f16, 0x002C(s0)           # 0000002C
lbl_808B56D0:
    mtc1    $at, $f0                   # $f0 = 1.50
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sub.s   $f4, $f18, $f0
    sub.s   $f8, $f6, $f0
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f8, 0x002C(s0)            # 0000002C
lbl_808B56EC:
    lw      $ra, 0x0024($sp)
lbl_808B56F0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B5700:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800213B4
    lw      a1, 0x1C44(t6)             # 00001C44
    lh      t7, 0x00B6(s0)             # 000000B6
    lw      t8, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    subu    s1, v0, t7
    sll     s1, s1, 16
    sra     s1, s1, 16
    jal     func_80021430
    lw      a1, 0x1C44(t8)             # 00001C44
    lh      t9, 0x00B4(s0)             # 000000B4
    slti    $at, s1, 0x1771
    addiu   a0, s0, 0x02AC             # a0 = 000002AC
    subu    t0, v0, t9
    bne     $at, $zero, lbl_808B5764
    sh      t0, 0x0026($sp)
    addiu   s1, $zero, 0x1770          # s1 = 00001770
lbl_808B5764:
    slti    $at, s1, 0xE890
    beq     $at, $zero, lbl_808B5774
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   s1, $zero, 0xE890          # s1 = FFFFE890
lbl_808B5774:
    sll     a1, s1, 16
    sra     a1, a1, 16
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    addiu   a0, s0, 0x02AA             # a0 = 000002AA
    lh      a1, 0x0026($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064624
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808B57AC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x02B2(s0)             # 000002B2
    lw      a3, 0x1C44(a2)             # 00001C44
    beq     v0, $zero, lbl_808B57D8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_808B59C8
    sh      t6, 0x02B2(s0)             # 000002B2
lbl_808B57D8:
    lbu     t7, 0x030C(s0)             # 0000030C
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_808B5824
    lbu     v0, 0x0359(s0)             # 00000359
    lw      t0, 0x02A0(s0)             # 000002A0
    lui     t9, %hi(func_808B5328)     # t9 = 808B0000
    addiu   t9, t9, %lo(func_808B5328) # t9 = 808B5328
    bne     t9, t0, lbl_808B5820
    or      a0, s0, $zero              # a0 = 00000000
    sw      a2, 0x003C($sp)
    jal     func_808B519C
    sw      a3, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      a2, 0x003C($sp)
    lw      a3, 0x0034($sp)
    swc1    $f4, 0x0068(s0)            # 00000068
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_808B5820:
    lbu     v0, 0x0359(s0)             # 00000359
lbl_808B5824:
    andi    t1, v0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_808B59CC
    lw      $ra, 0x0024($sp)
    lb      t2, 0x00AF(s0)             # 000000AF
    blezl   t2, lbl_808B59CC
    lw      $ra, 0x0024($sp)
    lh      t4, 0x02A8(s0)             # 000002A8
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    lw      v1, 0x0384(s0)             # 00000384
    bne     t4, $zero, lbl_808B5990
    sb      t3, 0x0359(s0)             # 00000359
    lw      a0, 0x0000(v1)             # 00000000
    sll     t5, a0, 11
    bgez    t5, lbl_808B58E4
    andi    t0, a0, 0x0001             # t0 = 00000000
    lw      t7, 0x02A0(s0)             # 000002A0
    lui     t6, %hi(func_808B5328)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B5328) # t6 = 808B5328
    bnel    t6, t7, lbl_808B5898
    lh      t8, 0x00B6(a3)             # 000000B6
    jal     func_808B519C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0xC0A0                # $at = C0A00000
    mtc1    $at, $f16                  # $f16 = -5.00
    swc1    $f18, 0x0060(s0)           # 00000060
    b       lbl_808B59C8
    swc1    $f16, 0x0068(s0)           # 00000068
    lh      t8, 0x00B6(a3)             # 000000B6
lbl_808B5898:
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t8, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_808B6910)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B6910)($at)
    cvt.s.w $f18, $f16
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lui     a0, %hi(var_808B6880)      # a0 = 808B0000
    addiu   a0, a0, %lo(var_808B6880)  # a0 = 808B6880
    jal     func_800AB958
    addiu   a1, s0, 0x02EC             # a1 = 000002EC
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sh      t9, 0x02BA(s0)             # 000002BA
    b       lbl_808B59CC
    lw      $ra, 0x0024($sp)
lbl_808B58E4:
    beq     t0, $zero, lbl_808B5914
    nop
    lw      t2, 0x02A0(s0)             # 000002A0
    lui     t1, %hi(func_808B5600)     # t1 = 808B0000
    addiu   t1, t1, %lo(func_808B5600) # t1 = 808B5600
    beq     t1, t2, lbl_808B59C8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B5564
    or      a1, a2, $zero              # a1 = 00000000
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    b       lbl_808B59C8
    sh      t3, 0x02B2(s0)             # 000002B2
lbl_808B5914:
    jal     func_80051A34
    sw      a2, 0x003C($sp)
    lw      a2, 0x003C($sp)
    beq     v0, $zero, lbl_808B5948
    andi    v1, v0, 0x00FF             # v1 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0038             # a1 = 00000038
    sb      v1, 0x002F($sp)
    jal     func_8001D4A8
    sw      a2, 0x003C($sp)
    lbu     v1, 0x002F($sp)
    b       lbl_808B594C
    lw      a2, 0x003C($sp)
lbl_808B5948:
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_808B594C:
    lbu     t4, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, a2, $zero              # a1 = 00000000
    subu    t5, t4, v1
    jal     func_808B4ABC
    sb      t5, 0x00AF(s0)             # 000000AF
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t7, $zero, 0x000D          # t7 = 0000000D
    sh      t7, 0x02B2(s0)             # 000002B2
    b       lbl_808B59CC
    lw      $ra, 0x0024($sp)
lbl_808B5990:
    lh      v1, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, v1, 0x0006
    beq     $at, $zero, lbl_808B59B8
    nop
    lw      v0, 0x0118(s0)             # 00000118
    sll     t9, v1,  1
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addu    t0, v0, t9
    sh      t8, 0x0194(t0)             # 00000194
lbl_808B59B8:
    jal     func_808B6448
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_808B59C8:
    lw      $ra, 0x0024($sp)
lbl_808B59CC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808B59DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x02B4(s0)             # 000002B4
    lui     a1, %hi(var_808B688C)      # a1 = 808B0000
    addiu   a0, s0, 0x02D0             # a0 = 000002D0
    sll     t7, t6,  2
    addu    a1, a1, t7
    lw      a1, %lo(var_808B688C)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t8, 0x02B4(s0)             # 000002B4
    lui     a1, %hi(var_808B6898)      # a1 = 808B0000
    addiu   a0, s0, 0x02D4             # a0 = 000002D4
    sll     t9, t8,  2
    addu    a1, a1, t9
    lw      a1, %lo(var_808B6898)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lh      t0, 0x02B4(s0)             # 000002B4
    lui     a1, %hi(var_808B68A4)      # a1 = 808B0000
    addiu   a0, s0, 0x02D8             # a0 = 000002D8
    sll     t1, t0,  2
    addu    a1, a1, t1
    lw      a1, %lo(var_808B68A4)(a1)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x41A0                 # a3 = 41A00000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B5A6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    lw      v0, 0x0078(t6)             # 00000078
    beql    v0, $zero, lbl_808B5B74
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0008(v0)             # 00000008
    lui     $at, %hi(var_808B6914)     # $at = 808B0000
    lwc1    $f2, %lo(var_808B6914)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f2
    swc1    $f8, 0x001C($sp)
    lh      t8, 0x000A(v0)             # 0000000A
    lh      t9, 0x000C(v0)             # 0000000C
    mtc1    t8, $f10                   # $f10 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f18, $f10
    cvt.s.w $f6, $f4
    mul.s   $f16, $f18, $f2
    nop
    mul.s   $f0, $f6, $f2
    swc1    $f16, 0x0018($sp)
    neg.s   $f8, $f0
    mul.s   $f12, $f8, $f16
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_808B6918)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B6918)($at)
    neg.s   $f10, $f0
    lw      a0, 0x0020($sp)
    mul.s   $f4, $f10, $f18
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   a0, a0, 0x02A4             # a0 = 000002A4
    trunc.w.s $f6, $f4
    mfc1    a1, $f6
    nop
    sll     a1, a1, 16
    jal     func_80064624
    sra     a1, a1, 16
    lwc1    $f8, 0x001C($sp)
    lwc1    $f18, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    neg.s   $f10, $f8
    mtc1    $at, $f14                  # $f14 = 1.00
    mul.s   $f12, $f10, $f18
    jal     func_800CD76C
    nop
    lui     $at, %hi(var_808B691C)     # $at = 808B0000
    lwc1    $f4, %lo(var_808B691C)($at)
    lw      a0, 0x0020($sp)
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f6, $f0, $f4
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    addiu   a0, a0, 0x02A6             # a0 = 000002A6
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    jal     func_80064624
    sra     a1, a1, 16
    lw      $ra, 0x0014($sp)
lbl_808B5B74:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B5B80:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    sw      t6, 0x0034($sp)
    lh      v0, 0x02BC(s0)             # 000002BC
    beq     v0, $zero, lbl_808B5BB0
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x02BC(s0)             # 000002BC
lbl_808B5BB0:
    lh      v0, 0x02BA(s0)             # 000002BA
    beq     v0, $zero, lbl_808B5BC0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x02BA(s0)             # 000002BA
lbl_808B5BC0:
    lw      t9, 0x02A0(s0)             # 000002A0
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x02EC(s0)            # 000002EC
    lwc1    $f10, 0x002C(s0)           # 0000002C
    lwc1    $f16, 0x02F4(s0)           # 000002F4
    add.s   $f8, $f4, $f6
    addiu   a0, s0, 0x02EC             # a0 = 000002EC
    lui     a1, 0x3F80                 # a1 = 3F800000
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0024(s0)            # 00000024
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_800642F0
    swc1    $f18, 0x002C(s0)           # 0000002C
    addiu   a0, s0, 0x02F4             # a0 = 000002F4
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_800642F0
    lui     a2, 0x4040                 # a2 = 40400000
    lh      t0, 0x001C(s0)             # 0000001C
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    slti    $at, t0, 0x000A
    beq     $at, $zero, lbl_808B5DB8
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lh      t1, 0x02B0(s0)             # 000002B0
    lui     $at, %hi(var_808B6920)     # $at = 808B0000
    lui     a3, 0x3A44                 # a3 = 3A440000
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sh      t2, 0x02B0(s0)             # 000002B0
    lwc1    $f4, %lo(var_808B6920)($at)
    ori     a3, a3, 0x9BA6             # a3 = 3A449BA6
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, %hi(var_808B6924)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B6924)($at)
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a3, 0x3A44                 # a3 = 3A440000
    ori     a3, a3, 0x9BA6             # a3 = 3A449BA6
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    addiu   a0, s0, 0x0054             # a0 = 00000054
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, %hi(var_808B6928)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B6928)($at)
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a3, 0x3A44                 # a3 = 3A440000
    ori     a3, a3, 0x9BA6             # a3 = 3A449BA6
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    addiu   a0, s0, 0x0058             # a0 = 00000058
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B57AC
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f0                   # $f0 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    addiu   t3, $zero, 0x0005          # t3 = 00000005
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t3, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
    jal     func_808B5A6C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x41A0                 # a1 = 41A00000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B5700
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_808B59DC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sh      t4, 0x02B4(s0)             # 000002B4
    lw      t5, 0x0034($sp)
    addiu   v0, $zero, 0x0023          # v0 = 00000023
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    lb      t6, 0x0833(t5)             # 00000833
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    beq     t6, $zero, lbl_808B5D48
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x0388(s0)             # 00000388
    sh      v0, 0x038A(s0)             # 0000038A
    b       lbl_808B5D54
    sh      $zero, 0x038C(s0)          # 0000038C
lbl_808B5D48:
    sh      t7, 0x0388(s0)             # 00000388
    sh      t8, 0x038A(s0)             # 0000038A
    sh      t9, 0x038C(s0)             # 0000038C
lbl_808B5D54:
    lh      t0, 0x02BA(s0)             # 000002BA
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    bnel    t0, $zero, lbl_808B5DBC
    lw      $ra, 0x0024($sp)
    jal     func_80050B00
    sw      a1, 0x002C($sp)
    addiu   a1, s0, 0x0348             # a1 = 00000348
    sw      a1, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x002C($sp)
lbl_808B5DB8:
    lw      $ra, 0x0024($sp)
lbl_808B5DBC:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_808B5DCC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a3, 0x0044($sp)
    lw      a3, 0x004C($sp)
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0040($sp)
    lui     t0, 0xFB00                 # t0 = FB000000
    lw      a2, 0x0000(a0)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lwc1    $f8, 0x02D0(a3)            # 000002D0
    lwc1    $f4, 0x02D8(a3)            # 000002D8
    lwc1    $f16, 0x02D4(a3)           # 000002D4
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    t8, $f10
    trunc.w.s $f18, $f16
    mfc1    t1, $f6
    sll     t9, t8, 24
    mfc1    t6, $f18
    andi    t2, t1, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sll     t8, t7, 16
    or      t1, t3, t9                 # t1 = 00000000
    or      t3, t1, t8                 # t3 = 00000000
    ori     t9, t3, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v1)             # 00000004
    bne     a1, $at, lbl_808B5E70
    lw      v0, 0x0048($sp)
    lh      t2, 0x0000(v0)             # 00000000
    lh      t4, 0x02AA(a3)             # 000002AA
    lh      t6, 0x0002(v0)             # 00000002
    addu    t5, t2, t4
    sh      t5, 0x0000(v0)             # 00000000
    lh      t7, 0x02AC(a3)             # 000002AC
    addu    t1, t6, t7
    b       lbl_808B5F14
    sh      t1, 0x0002(v0)             # 00000002
lbl_808B5E70:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    a1, $at, lbl_808B5F18
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x02B2(a3)             # 000002B2
    beql    t8, $zero, lbl_808B5F18
    or      v0, $zero, $zero           # v0 = 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x001C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    lwc1    $f8, 0x0020($sp)
    lwc1    $f18, 0x001C($sp)
    mul.s   $f4, $f0, $f2
    trunc.w.s $f6, $f4
    mul.s   $f10, $f8, $f2
    nop
    mul.s   $f4, $f18, $f2
    mfc1    t5, $f6
    nop
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t7, t6,  8
    trunc.w.s $f16, $f10
    lw      t6, 0x0024($sp)
    trunc.w.s $f6, $f4
    mfc1    t2, $f16
    mfc1    t3, $f6
    sll     t4, t2, 24
    or      t5, t7, t4                 # t5 = 00000000
    andi    t9, t3, 0x00FF             # t9 = 00000000
    sll     t2, t9, 16
    or      t7, t5, t2                 # t7 = 00000000
    ori     t4, t7, 0x00FF             # t4 = 000000FF
    sw      t4, 0x0004(t6)             # 00000004
lbl_808B5F14:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808B5F18:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808B5F28:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t7, 0xE200                 # t7 = E2000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    lui     t8, 0x0C19                 # t8 = 0C190000
    ori     t8, t8, 0x3078             # t8 = 0C193078
    ori     t7, t7, 0x001C             # t7 = E200001C
    sw      t7, 0x0008(v1)             # FFFFFFE8
    sw      t8, 0x000C(v1)             # FFFFFFEC
    lui     t9, 0xD9FF                 # t9 = D9FF0000
    ori     t9, t9, 0xFBFF             # t9 = D9FFFBFF
    sw      t9, 0x0010(v1)             # FFFFFFF0
    sw      $zero, 0x0014(v1)          # FFFFFFF4
    lui     t0, 0xDF00                 # t0 = DF000000
    sw      t0, 0x0018(v1)             # FFFFFFF8
    sw      $zero, 0x001C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra
    nop


func_808B5F80:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    lh      v0, 0x02A8(s0)             # 000002A8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_808B5FDC
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    beq     v0, $at, lbl_808B613C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808B6318
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_808B636C
    lw      t2, 0x02F8(s0)             # 000002F8
    b       lbl_808B63F4
    lw      $ra, 0x0024($sp)
    lwc1    $f4, 0x00BC(s0)            # 000000BC
lbl_808B5FDC:
    lwc1    $f6, 0x0054(s0)            # 00000054
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0117(s0)             # 00000117
    mul.s   $f8, $f4, $f6
    lw      t8, 0x005C($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f10, 0x0264(t8)           # 00000264
    lw      a2, 0x002C(s0)             # 0000002C
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f16, $f8, $f10
    jal     func_800AA7F4
    add.s   $f14, $f18, $f16
    lh      t9, 0x02A4(s0)             # 000002A4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_808B692C)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B692C)($at)
    cvt.s.w $f6, $f4
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f18
    jal     func_800AA9E0
    nop
    lh      t0, 0x02A6(s0)             # 000002A6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t0, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_808B6930)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B6930)($at)
    cvt.s.w $f4, $f16
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_808B6934)     # $at = 808B0000
    lwc1    $f8, %lo(var_808B6934)($at)
    cvt.s.w $f16, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f6, $f16, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t2, 0x00B4(s0)             # 000000B4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f16                  # $f16 = 32768.00
    mtc1    t2, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_808B6938)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B6938)($at)
    cvt.s.w $f18, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f18, $f16
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lh      t3, 0x00B8(s0)             # 000000B8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t3, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_808B693C)     # $at = 808B0000
    lwc1    $f4, %lo(var_808B693C)($at)
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f16, $f10, $f18
    mul.s   $f12, $f16, $f4
    jal     func_800AAD4C
    nop
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lui     a3, %hi(func_808B5DCC)     # a3 = 808B0000
    addiu   a3, a3, %lo(func_808B5DCC) # a3 = 808B5DCC
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x005C($sp)
    b       lbl_808B63F4
    lw      $ra, 0x0024($sp)
lbl_808B613C:
    lh      t5, 0x02B0(s0)             # 000002B0
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    mtc1    t5, $f6                    # $f6 = 0.00
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sb      t4, 0x0117(s0)             # 00000117
    cvt.s.w $f8, $f6
    lui     $at, %hi(var_808B6940)     # $at = 808B0000
    lwc1    $f16, %lo(var_808B6940)($at)
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f6                   # $f6 = 180.00
    mul.s   $f18, $f8, $f10
    nop
    mul.s   $f4, $f18, $f16
    jal     func_800CF470
    div.s   $f12, $f4, $f6
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    lui     $at, %hi(var_808B6944)     # $at = 808B0000
    sw      t7, 0x0000(v1)             # 00000000
    lwc1    $f8, %lo(var_808B6944)($at)
    lw      t8, 0x005C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f10, $f0, $f8
    lw      a0, 0x0000(t8)             # 00000000
    sw      v1, 0x0040($sp)
    trunc.w.s $f18, $f10
    mfc1    a2, $f18
    nop
    sll     a2, a2, 16
    sra     a2, a2, 16
    addiu   a2, a2, 0x001F             # a2 = 0000001F
    sll     a2, a2, 16
    jal     func_8007EADC
    sra     a2, a2, 16
    lw      a3, 0x0040($sp)
    sw      v0, 0x0004(a3)             # 00000004
    jal     func_800AA6EC
    nop
    lwc1    $f12, 0x02C0(s0)           # 000002C0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mfc1    a2, $f12
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    div.s   $f14, $f16, $f12
    lui     $at, %hi(var_808B6948)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B6948)($at)
    lwc1    $f4, 0x02C8(s0)            # 000002C8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_808B694C)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B694C)($at)
    lwc1    $f8, 0x02C8(s0)            # 000002C8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    lui     $at, %hi(var_808B6950)     # $at = 808B0000
    lwc1    $f18, %lo(var_808B6950)($at)
    lwc1    $f0, 0x02DC(s0)            # 000002DC
    lui     $at, %hi(var_808B6954)     # $at = 808B0000
    lwc1    $f16, %lo(var_808B6954)($at)
    sub.s   $f12, $f18, $f0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    add.s   $f14, $f0, $f16
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lui     $at, %hi(var_808B6958)     # $at = 808B0000
    lwc1    $f6, %lo(var_808B6958)($at)
    lwc1    $f4, 0x02C8(s0)            # 000002C8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    neg.s   $f12, $f12
    lui     $at, %hi(var_808B695C)     # $at = 808B0000
    lwc1    $f10, %lo(var_808B695C)($at)
    lwc1    $f8, 0x02C8(s0)            # 000002C8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    neg.s   $f12, $f12
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f14, 0x02E0(s0)           # 000002E0
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA7F4
    nop
    lwc1    $f12, 0x02C4(s0)           # 000002C4
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x005C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t2)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x2A70             # t5 = 06002A70
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    b       lbl_808B63F4
    lw      $ra, 0x0024($sp)
lbl_808B6318:
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x005C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t1, 0x0500                 # t1 = 05000000
    addiu   t1, t1, 0x0530             # t1 = 05000530
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    b       lbl_808B63F4
    lw      $ra, 0x0024($sp)
    lw      t2, 0x02F8(s0)             # 000002F8
lbl_808B636C:
    beql    t2, $zero, lbl_808B63F4
    lw      $ra, 0x0024($sp)
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x005C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_808B5F28
    sw      v1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x005C($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a2, 0x0028($sp)
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x02F8(s0)             # 000002F8
    sw      t1, 0x0004(v1)             # 00000004
    lw      $ra, 0x0024($sp)
lbl_808B63F4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_808B6404:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x00B6(a0)             # 000000B6
    lh      t8, 0x00B4(a0)             # 000000B4
    lh      t0, 0x02BC(a0)             # 000002BC
    addiu   t7, t6, 0x09C4             # t7 = 000009C4
    addiu   t9, t8, 0x0DAC             # t9 = 00000DAC
    sh      t7, 0x00B6(a0)             # 000000B6
    bne     t0, $zero, lbl_808B6438
    sh      t9, 0x00B4(a0)             # 000000B4
    jal     func_80020EB4
    nop
lbl_808B6438:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B6448:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s2, 0x006C($sp)
    sw      s1, 0x0068($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s3, 0x0070($sp)
    sw      s0, 0x0064($sp)
    sdc1    $f30, 0x0058($sp)
    sdc1    $f28, 0x0050($sp)
    sdc1    $f26, 0x0048($sp)
    sdc1    $f24, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    lh      t6, 0x001C(s1)             # 0000001C
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    slti    $at, t6, 0x0006
    beq     $at, $zero, lbl_808B64B4
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0028          # a2 = 00000028
    jal     func_80058FF8
    addiu   a3, $zero, 0x3815          # a3 = 00003815
    b       lbl_808B64C0
    lui     $at, 0x4170                # $at = 41700000
lbl_808B64B4:
    jal     func_80058FF8
    addiu   a3, $zero, 0x3962          # a3 = 00003962
    lui     $at, 0x4170                # $at = 41700000
lbl_808B64C0:
    mtc1    $at, $f30                  # $f30 = 15.00
    lui     $at, %hi(var_808B6960)     # $at = 808B0000
    lwc1    $f28, %lo(var_808B6960)($at)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s3, s2, 0x1C24             # s3 = 00001C24
lbl_808B64DC:
    jal     func_80026D90
    mov.s   $f12, $f26
    mov.s   $f20, $f0
    jal     func_80026D90
    mov.s   $f12, $f26
    mov.s   $f22, $f0
    jal     func_80026D90
    mov.s   $f12, $f26
    mov.s   $f24, $f0
    jal     func_80026D90
    mov.s   $f12, $f28
    lwc1    $f4, 0x0024(s1)            # 00000024
    addiu   t9, s0, 0x000A             # t9 = 0000000A
    or      a0, s3, $zero              # a0 = 00001C24
    add.s   $f6, $f20, $f4
    or      a1, s1, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x002B          # a3 = 0000002B
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0028(s1)            # 00000028
    trunc.w.s $f6, $f0
    add.s   $f10, $f22, $f8
    mfc1    t8, $f6
    add.s   $f16, $f10, $f30
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x002C(s1)           # 0000002C
    sw      t9, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    add.s   $f4, $f24, $f18
    sw      $zero, 0x001C($sp)
    sw      t8, 0x0020($sp)
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x000F
    bne     $at, $zero, lbl_808B64DC
    nop
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    ldc1    $f24, 0x0040($sp)
    ldc1    $f26, 0x0048($sp)
    ldc1    $f28, 0x0050($sp)
    ldc1    $f30, 0x0058($sp)
    lw      s0, 0x0064($sp)
    lw      s1, 0x0068($sp)
    lw      s2, 0x006C($sp)
    lw      s3, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_808B65AC:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    lui     $at, 0x4248                # $at = 42480000
    sw      s0, 0x0030($sp)
    mtc1    $at, $f0                   # $f0 = 50.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0074($sp)
    lui     t7, %hi(var_808B68B0)      # t7 = 808B0000
    addiu   t7, t7, %lo(var_808B68B0)  # t7 = 808B68B0
    lw      t9, 0x0000(t7)             # 808B68B0
    addiu   t6, $sp, 0x0064            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808B68B4
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808B68B8
    lui     t1, %hi(var_808B68BC)      # t1 = 808B0000
    addiu   t1, t1, %lo(var_808B68BC)  # t1 = 808B68BC
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t3, 0x0000(t1)             # 808B68BC
    addiu   t0, $sp, 0x0058            # t0 = FFFFFFE8
    lw      t2, 0x0004(t1)             # 808B68C0
    sw      t3, 0x0000(t0)             # FFFFFFE8
    lw      t3, 0x0008(t1)             # 808B68C4
    sw      t2, 0x0004(t0)             # FFFFFFEC
    lui     t4, %hi(var_808B68C8)      # t4 = 808B0000
    sw      t3, 0x0008(t0)             # FFFFFFF0
    lui     t5, %hi(var_808B68CC)      # t5 = 808B0000
    lw      t4, %lo(var_808B68C8)(t4)
    lw      t5, %lo(var_808B68CC)(t5)
    lui     $at, 0x40A0                # $at = 40A00000
    sw      t4, 0x0054($sp)
    sw      t5, 0x0050($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    sub.s   $f8, $f4, $f6
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    swc1    $f8, 0x0028(s0)            # 00000028
    sw      t6, 0x0014($sp)
    lw      a0, 0x0074($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lwc1    $f16, 0x0028(s0)           # 00000028
    lhu     t7, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0054             # a0 = 00000054
    add.s   $f4, $f16, $f18
    andi    t8, t7, 0x0001             # t8 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     t8, $zero, lbl_808B669C
    swc1    $f4, 0x0028(s0)            # 00000028
    mtc1    $zero, $f6                 # $f6 = 0.00
    lh      v0, 0x02BC(s0)             # 000002BC
    b       lbl_808B66BC
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_808B669C:
    lh      v0, 0x02BC(s0)             # 000002BC
    slti    $at, v0, 0x00FA
    beql    $at, $zero, lbl_808B66C0
    addiu   $at, $zero, 0x00FA         # $at = 000000FA
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      v0, 0x02BC(s0)             # 000002BC
    addiu   t0, t9, 0x07D0             # t0 = 000007D0
    sh      t0, 0x00B6(s0)             # 000000B6
lbl_808B66BC:
    addiu   $at, $zero, 0x00FA         # $at = 000000FA
lbl_808B66C0:
    bne     v0, $at, lbl_808B66D8
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    lh      v0, 0x02BC(s0)             # 000002BC
    swc1    $f8, 0x006C(s0)            # 0000006C
lbl_808B66D8:
    slti    $at, v0, 0x0079
    beq     $at, $zero, lbl_808B6724
    lui     a3, 0x3A44                 # a3 = 3A440000
    mtc1    $zero, $f10                # $f10 = 0.00
    ori     a3, a3, 0x9BA6             # a3 = 3A449BA6
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lui     $at, %hi(var_808B6964)     # $at = 808B0000
    lwc1    $f16, %lo(var_808B6964)($at)
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_808B6718
    lwc1    $f0, 0x0054(s0)            # 00000054
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f0, 0x0054(s0)            # 00000054
lbl_808B6718:
    lh      v0, 0x02BC(s0)             # 000002BC
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0050(s0)            # 00000050
lbl_808B6724:
    andi    t1, v0, 0x0007             # t1 = 00000000
    bnel    t1, $zero, lbl_808B67C0
    lw      $ra, 0x0034($sp)
    beq     v0, $zero, lbl_808B67BC
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f4, $f0, $f18
    jal     func_80026D90
    swc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f8, $f0, $f6
    jal     func_80026D90
    swc1    $f8, 0x0048($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    addiu   t2, $sp, 0x0054            # t2 = FFFFFFE4
    addiu   t3, $sp, 0x0050            # t3 = FFFFFFE0
    add.s   $f16, $f0, $f10
    addiu   t4, $zero, 0x01F4          # t4 = 000001F4
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    swc1    $f16, 0x004C($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x0074($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFD4
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFF4
    jal     func_8001BE64
    addiu   a3, $sp, 0x0058            # a3 = FFFFFFE8
lbl_808B67BC:
    lw      $ra, 0x0034($sp)
lbl_808B67C0:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop

.section .data

var_808B67D0: .word 0x00280500, 0x00000035, 0x001E0000, 0x00000394
.word func_808B3FC0
.word func_808B434C
.word func_808B5B80
.word func_808B5F80
var_808B67F0: .word \
0x03110039, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFDFFFFF, 0x00000000, 0x01000100, \
0x000F001E, 0x000A0000, 0x00000000
var_808B681C: .word \
0x03000900, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0xFFDFFFFF, 0x00000000, 0x00010000, \
0x000F001E, 0x000A0000, 0x00000000
var_808B6848: .word 0x00000000
var_808B684C: .word 0x00000000, 0x00000000, 0x00000000
var_808B6858: .word 0x801F0003, 0x89170003, 0xB86C0000, 0x304C0014
var_808B6868: .word 0x00000000, 0x00000000, 0x00000000
var_808B6874: .word 0x00000000, 0xBF000000, 0x00000000
var_808B6880: .word 0x00000000, 0x00000000, 0x41A00000
var_808B688C: .word 0x437F0000, 0x00000000, 0x42480000
var_808B6898: .word 0x41880000, 0x437F0000, 0x42480000
var_808B68A4: .word 0x00000000, 0x432A0000, 0x42480000
var_808B68B0: .word 0x00000000, 0x00000000, 0x00000000
var_808B68BC: .word 0x00000000, 0x3F800000, 0x00000000
var_808B68C8: .word 0xFFFFFFFF
var_808B68CC: .word 0x0064FFFF

.section .rodata

var_808B68D0: .word 0xBFA66666
var_808B68D4: .word 0x40133333
var_808B68D8: .word 0x3BA3D70A
var_808B68DC: .word 0x3C23D70A
var_808B68E0: .word 0x3BA3D70A
var_808B68E4: .word 0x3C23D70A
var_808B68E8: .word 0x3BA3D70A
var_808B68EC: .word 0x3C23D70A
var_808B68F0: .word 0xC4BB8000
var_808B68F4: .word 0x44BB8000
var_808B68F8: .word 0xBFA66666
var_808B68FC: .word 0x3CF5C28F
var_808B6900: .word 0x3DCCCCCD
var_808B6904: .word 0x3CF5C28F
var_808B6908: .word 0x3727C5AC
var_808B690C: .word 0x3A83126F
var_808B6910: .word 0x40490FDB
var_808B6914: .word 0x38000100
var_808B6918: .word 0x4622F983
var_808B691C: .word 0x4622F983
var_808B6920: .word 0x358637BD
var_808B6924: .word 0x358637BD
var_808B6928: .word 0x358637BD
var_808B692C: .word 0x40490FDB
var_808B6930: .word 0x40490FDB
var_808B6934: .word 0x40490FDB
var_808B6938: .word 0x40490FDB
var_808B693C: .word 0x40490FDB
var_808B6940: .word 0x40490E56
var_808B6944: .word 0x41FF3333
var_808B6948: .word 0x3E19999A
var_808B694C: .word 0x3DCCCCCD
var_808B6950: .word 0x3F733333
var_808B6954: .word 0x3F866666
var_808B6958: .word 0x3DCCCCCD
var_808B695C: .word 0x3E19999A
var_808B6960: .word 0x477FFFFD
var_808B6964: .word 0x3A83126F, 0x00000000, 0x00000000

