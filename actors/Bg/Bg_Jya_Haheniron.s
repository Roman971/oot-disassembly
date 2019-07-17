.section .text
func_80B3CDC0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    sw      a1, 0x0020($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004A484
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lui     a3, %hi(var_80B3D474)      # a3 = 80B40000
    lw      a1, 0x0020($sp)
    addiu   t6, a2, 0x0160             # t6 = 00000160
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_80B3D474)  # a3 = 80B3D474
    jal     func_8004A874
    lw      a0, 0x002C($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B3CE14:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s8, 0x0088($sp)
    sw      s4, 0x0078($sp)
    sw      s3, 0x0074($sp)
    or      s3, a2, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x008C($sp)
    sw      s7, 0x0084($sp)
    sw      s6, 0x0080($sp)
    sw      s5, 0x007C($sp)
    sw      s2, 0x0070($sp)
    sw      s1, 0x006C($sp)
    sw      s0, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     $at, %hi(var_80B3D4E0)     # $at = 80B40000
    lwc1    $f26, %lo(var_80B3D4E0)($at)
    lui     $at, %hi(var_80B3D4E4)     # $at = 80B40000
    lwc1    $f24, %lo(var_80B3D4E4)($at)
    lui     $at, 0x4120                # $at = 41200000
    lui     s1, %hi(var_80B3D484)      # s1 = 80B40000
    lui     s7, %hi(var_80B3D48E)      # s7 = 80B40000
    lui     s6, 0x0600                 # s6 = 06000000
    mtc1    $at, $f22                  # $f22 = 10.00
    addiu   s6, s6, 0x0880             # s6 = 06000880
    addiu   s7, s7, %lo(var_80B3D48E)  # s7 = 80B3D48E
    addiu   s1, s1, %lo(var_80B3D484)  # s1 = 80B3D484
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s5, $sp, 0x00B4            # s5 = FFFFFFF4
lbl_80B3CE94:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sll     s0, s2, 16
    sra     s0, s0, 16
    mul.s   $f20, $f0, $f22
    sll     a0, s0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f4, $f0, $f20
    lwc1    $f6, 0x0000(s3)            # 00000000
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B4($sp)
    mul.s   $f10, $f0, $f22
    lwc1    $f16, 0x0004(s3)           # 00000004
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x00B8($sp)
    mul.s   $f4, $f0, $f20
    lwc1    $f6, 0x0008(s3)            # 00000008
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00BC($sp)
    c.lt.s  $f0, $f24
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = FFFFFFF4
    bc1f    lbl_80B3CF18
    or      a3, s4, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_80B3CF30
    addiu   v0, $zero, 0x0060          # v0 = 00000060
lbl_80B3CF18:
    c.lt.s  $f0, $f26
    addiu   v0, $zero, 0x0020          # v0 = 00000020
    bc1f    lbl_80B3CF30
    nop
    beq     $zero, $zero, lbl_80B3CF30
    addiu   v0, $zero, 0x0040          # v0 = 00000040
lbl_80B3CF30:
    lh      t9, 0x0000(s1)             # 80B3D484
    addiu   t6, $zero, 0xFEA2          # t6 = FFFFFEA2
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x016C          # t3 = 0000016C
    sw      t3, 0x0038($sp)
    sw      t2, 0x0034($sp)
    sw      t1, 0x0030($sp)
    sw      t0, 0x002C($sp)
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0028($sp)
    sw      s6, 0x003C($sp)
    jal     func_8001D998
    sw      t9, 0x0024($sp)
    addiu   s1, s1, 0x0002             # s1 = 80B3D486
    bne     s1, s7, lbl_80B3CE94
    addiu   s2, s2, 0x3333             # s2 = 00003333
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lwc1    $f16, 0x0000(s3)           # 00000000
    lwc1    $f10, 0x0000(s4)           # 00000000
    addiu   t4, $zero, 0x0064          # t4 = 00000064
    mul.s   $f18, $f16, $f0
    addiu   t5, $zero, 0x00A0          # t5 = 000000A0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    or      a0, s8, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFE8
    lui     a2, 0x42C8                 # a2 = 42C80000
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x00A8($sp)
    lwc1    $f8, 0x0004(s3)            # 00000004
    lwc1    $f6, 0x0004(s4)            # 00000004
    mul.s   $f16, $f8, $f0
    add.s   $f10, $f6, $f16
    swc1    $f10, 0x00AC($sp)
    lwc1    $f4, 0x0008(s3)            # 00000008
    lwc1    $f18, 0x0008(s4)           # 00000008
    sw      t6, 0x0018($sp)
    mul.s   $f8, $f4, $f0
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    add.s   $f6, $f18, $f8
    jal     func_80026308
    swc1    $f6, 0x00B0($sp)
    lw      $ra, 0x008C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    lw      s0, 0x0068($sp)
    lw      s1, 0x006C($sp)
    lw      s2, 0x0070($sp)
    lw      s3, 0x0074($sp)
    lw      s4, 0x0078($sp)
    lw      s5, 0x007C($sp)
    lw      s6, 0x0080($sp)
    lw      s7, 0x0084($sp)
    lw      s8, 0x0088($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0


func_80B3D040:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a1, %hi(var_80B3D490)      # a1 = 80B40000
    addiu   a1, a1, %lo(var_80B3D490)  # a1 = 80B3D490
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a1, %hi(var_80B3D4A4)      # a1 = 80B40000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    a1, a1, t7
    jal     func_80020F88
    lw      a1, %lo(var_80B3D4A4)(a1)
    lh      v0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80B3D0CC
    nop
    jal     func_80B3CDC0
    lw      a1, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80B3D4E8)     # $at = 80B40000
    lwc1    $f4, %lo(var_80B3D4E8)($at)
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    jal     func_80B3D144
    sh      t9, 0x00B8(s0)             # 000000B8
    beq     $zero, $zero, lbl_80B3D0FC
    lw      $ra, 0x001C($sp)
lbl_80B3D0CC:
    bnel    v0, $at, lbl_80B3D0E8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    jal     func_80B3D294
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3D0FC
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80B3D0E8:
    bnel    v0, $at, lbl_80B3D0FC
    lw      $ra, 0x001C($sp)
    jal     func_80B3D328
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80B3D0FC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B3D10C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    bnel    t6, $zero, lbl_80B3D138
    lw      $ra, 0x0014($sp)
    jal     func_8004A550
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
lbl_80B3D138:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B3D144:
    lui     t6, %hi(func_80B3D158)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D158) # t6 = 80B3D158
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B3D158:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0085          # t6 = 00000085
    sw      t6, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0009             # t8 = 00000000
    bne     t8, $zero, lbl_80B3D1D4
    nop
    lbu     t9, 0x0150(s0)             # 00000150
    andi    t0, t9, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80B3D238
    lh      t2, 0x01A0(s0)             # 000001A0
    lw      v0, 0x0144(s0)             # 00000144
    beql    v0, $zero, lbl_80B3D238
    lh      t2, 0x01A0(s0)             # 000001A0
    lbu     t1, 0x0002(v0)             # 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t1, $at, lbl_80B3D238
    lh      t2, 0x01A0(s0)             # 000001A0
lbl_80B3D1D4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f8, 0x005C(s0)            # 0000005C
    neg.s   $f6, $f0
    mul.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x002C($sp)
    lwc1    $f18, 0x0060(s0)           # 00000060
    neg.s   $f16, $f0
    mul.s   $f4, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0030($sp)
    lwc1    $f8, 0x0064(s0)            # 00000064
    neg.s   $f6, $f0
    lw      a0, 0x003C($sp)
    mul.s   $f10, $f6, $f8
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFF4
    jal     func_80B3CE14
    swc1    $f10, 0x0034($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3D270
    lh      t3, 0x00B6(s0)             # 000000B6
    lh      t2, 0x01A0(s0)             # 000001A0
lbl_80B3D238:
    lw      a0, 0x003C($sp)
    addiu   a2, s0, 0x0140             # a2 = 00000140
    slti    $at, t2, 0x003D
    bnel    $at, $zero, lbl_80B3D260
    lui     $at, 0x0001                # $at = 00010000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3D270
    lh      t3, 0x00B6(s0)             # 000000B6
    lui     $at, 0x0001                # $at = 00010000
lbl_80B3D260:
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
    lh      t3, 0x00B6(s0)             # 000000B6
lbl_80B3D270:
    lh      t5, 0x00B4(s0)             # 000000B4
    addiu   t4, t3, 0x04B0             # t4 = 000004B0
    addiu   t6, t5, 0x0FA0             # t6 = 00000FA0
    sh      t4, 0x00B6(s0)             # 000000B6
    sh      t6, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B3D294:
    lui     t6, %hi(func_80B3D2A8)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D2A8) # t6 = 80B3D2A8
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B3D2A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lh      v0, 0x01A0(s0)             # 000001A0
    slti    $at, v0, 0x0008
    bnel    $at, $zero, lbl_80B3D2E0
    slti    $at, v0, 0x0011
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B3D304
    lh      t6, 0x00B6(s0)             # 000000B6
    slti    $at, v0, 0x0011
lbl_80B3D2E0:
    bne     $at, $zero, lbl_80B3D300
    or      a0, a3, $zero              # a0 = 00000000
    lui     a2, %hi(var_80B3D4B0)      # a2 = 80B40000
    addiu   a2, a2, %lo(var_80B3D4B0)  # a2 = 80B3D4B0
    jal     func_80B3CE14
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B3D300:
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_80B3D304:
    lh      t8, 0x00B4(s0)             # 000000B4
    addiu   t7, t6, 0x0258             # t7 = 00000258
    addiu   t9, t8, 0x03E8             # t9 = 000003E8
    sh      t7, 0x00B6(s0)             # 000000B6
    sh      t9, 0x00B4(s0)             # 000000B4
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B3D328:
    lui     t6, %hi(func_80B3D33C)     # t6 = 80B40000
    addiu   t6, t6, %lo(func_80B3D33C) # t6 = 80B3D33C
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80B3D33C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x01A0(a3)             # 000001A0
    lw      a0, 0x0024($sp)
    addiu   a1, a3, 0x0024             # a1 = 00000024
    slti    $at, t6, 0x0011
    bne     $at, $zero, lbl_80B3D390
    lui     a2, %hi(var_80B3D4BC)      # a2 = 80B40000
    addiu   a2, a2, %lo(var_80B3D4BC)  # a2 = 80B3D4BC
    sw      a1, 0x001C($sp)
    jal     func_80B3CE14
    sw      a3, 0x0020($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0024($sp)
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80058FF8
    addiu   a3, $zero, 0x39AC          # a3 = 000039AC
    jal     func_80020EB4
    lw      a0, 0x0020($sp)
lbl_80B3D390:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B3D3A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x01A0(a0)             # 000001A0
    lw      t9, 0x013C(a0)             # 0000013C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jalr    $ra, t9
    sh      t7, 0x01A0(a0)             # 000001A0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B3D3CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x001C(a2)             # 0000001C
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, a2, 0x0140             # a1 = 00000140
    bnel    v0, $zero, lbl_80B3D404
    sll     t6, v0,  2
    jal     func_80050CE4
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      v0, 0x001C(a2)             # 0000001C
    sll     t6, v0,  2
lbl_80B3D404:
    lui     a1, %hi(var_80B3D4C8)      # a1 = 80B40000
    addu    a1, a1, t6
    lw      a1, %lo(var_80B3D4C8)(a1)
    jal     func_80028048
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B3D430: .word 0x018F0600, 0x00000010, 0x016C0000, 0x000001A4
.word func_80B3D040
.word func_80B3D10C
.word func_80B3D3A0
.word func_80B3D3CC
var_80B3D450: .word \
0x00000000, 0xFFCFFFFF, 0x00040000, 0x00000000, \
0x00000000, 0x01000000, 0x00000000, 0x00000000, \
0x000A0064
var_80B3D474: .word 0x0A110100, 0x00000000, 0x00000001
.word var_80B3D450
var_80B3D484: .byte 0x00, 0x05, 0x00, 0x08, 0x00, 0x0B, 0x00, 0x0E, 0x00, 0x11
var_80B3D48E: .byte 0x00, 0x00
var_80B3D490: .word \
0xB86CF830, 0xB870C568, 0xB0F403E8, 0xB0F801F4, \
0x30FC03E8
var_80B3D4A4: .word 0x3E051EB8, 0x3DCCCCCD, 0x3DCCCCCD
var_80B3D4B0: .word 0x00000000, 0x41600000, 0x00000000
var_80B3D4BC: .word 0x00000000, 0x41000000, 0x00000000
var_80B3D4C8: .word \
0x06000880, 0x06000AE0, 0x06000600, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B3D4E0: .word 0x3F4CCCCD
var_80B3D4E4: .word 0x3E4CCCCD
var_80B3D4E8: .word 0x477FFF00, 0x00000000

