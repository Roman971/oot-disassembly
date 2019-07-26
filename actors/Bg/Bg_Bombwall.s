.section .text
func_809C7010:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      $zero, 0x001C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0500                 # a0 = 05000000
    addiu   a0, a0, 0x41B0             # a0 = 050041B0
    jal     func_80033EF4
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x001C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0028($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809C7068:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    nop
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f8, 0x0000(a1)            # 00000000
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f10, $f8, $f14
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(a0)           # 00000000
    lwc1    $f18, 0x0004(a1)           # 00000004
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0008(a1)            # 00000008
    lwc1    $f6, 0x0000(a1)            # 00000000
    mul.s   $f8, $f4, $f14
    nop
    mul.s   $f10, $f6, $f12
    sub.s   $f16, $f8, $f10
    swc1    $f16, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_809C70BC:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s2, 0x0040($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00BC($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     a1, %hi(var_809C7814)      # a1 = 809C0000
    mov.s   $f24, $f0
    addiu   a1, a1, %lo(var_809C7814)  # a1 = 809C7814
    jal     func_80063F7C
    or      a0, s2, $zero              # a0 = 00000000
    lui     a1, 0x3DCC                 # a1 = 3DCC0000
    ori     a1, a1, 0xCCCD             # a1 = 3DCCCCCD
    jal     func_80020F88
    or      a0, s2, $zero              # a0 = 00000000
    lh      a1, 0x001C(s2)             # 0000001C
    lw      a0, 0x00BC($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beq     v0, $zero, lbl_809C7160
    or      a0, s2, $zero              # a0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_809C76A8
    lw      a1, 0x00BC($sp)
    b       lbl_809C7294
    lw      $ra, 0x005C($sp)
lbl_809C7160:
    jal     func_809C7010
    lw      a1, 0x00BC($sp)
    lbu     t6, 0x0292(s2)             # 00000292
    addiu   s7, s2, 0x0154             # s7 = 00000154
    or      a1, s7, $zero              # a1 = 00000154
    ori     t7, t6, 0x0002             # t7 = 00000002
    sb      t7, 0x0292(s2)             # 00000292
    jal     func_8004B064
    lw      a0, 0x00BC($sp)
    lui     s4, %hi(var_809C77E4)      # s4 = 809C0000
    addiu   s4, s4, %lo(var_809C77E4)  # s4 = 809C77E4
    addiu   t8, s2, 0x0174             # t8 = 00000174
    sw      t8, 0x0010($sp)
    or      a3, s4, $zero              # a3 = 809C77E4
    lw      a0, 0x00BC($sp)
    or      a1, s7, $zero              # a1 = 00000154
    jal     func_8004B3EC
    or      a2, s2, $zero              # a2 = 00000000
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f20                  # $f20 = 2.00
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $sp, 0x008C            # s8 = FFFFFFD4
    addiu   s6, $sp, 0x00B0            # s6 = FFFFFFF8
    addiu   s5, $sp, 0x0080            # s5 = FFFFFFC8
    or      s1, $zero, $zero           # s1 = 00000000
lbl_809C71C4:
    addiu   s0, $sp, 0x008C            # s0 = FFFFFFD4
lbl_809C71C8:
    lw      t9, 0x000C(s4)             # 809C77F0
    sll     t0, s3,  4
    subu    t0, t0, s3
    sll     t0, t0,  2
    addu    t1, t9, t0
    addu    v0, t1, s1
    lwc1    $f4, 0x0018(v0)            # 00000018
    mfc1    a2, $f22
    mfc1    a3, $f24
    swc1    $f4, 0x0080($sp)
    lwc1    $f6, 0x001C(v0)            # 0000001C
    or      a0, s0, $zero              # a0 = FFFFFFD4
    or      a1, s5, $zero              # a1 = FFFFFFC8
    swc1    $f6, 0x0084($sp)
    lwc1    $f8, 0x0020(v0)            # 00000020
    add.s   $f10, $f8, $f20
    jal     func_809C7068
    swc1    $f10, 0x0088($sp)
    lwc1    $f16, 0x0000(s0)           # FFFFFFD4
    lwc1    $f18, 0x0024(s2)           # 00000024
    lwc1    $f6, 0x0004(s0)            # FFFFFFD8
    addiu   s0, s0, 0x000C             # s0 = FFFFFFE0
    add.s   $f4, $f16, $f18
    lwc1    $f16, -0x0004(s0)          # FFFFFFDC
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    swc1    $f4, -0x000C(s0)           # FFFFFFD4
    lwc1    $f8, 0x0028(s2)            # 00000028
    add.s   $f10, $f6, $f8
    swc1    $f10, -0x0008(s0)          # FFFFFFD8
    lwc1    $f18, 0x002C(s2)           # 0000002C
    add.s   $f4, $f16, $f18
    bne     s0, s6, lbl_809C71C8
    swc1    $f4, -0x0004(s0)           # FFFFFFDC
    addiu   t2, $sp, 0x00A4            # t2 = FFFFFFEC
    sw      t2, 0x0010($sp)
    or      a0, s7, $zero              # a0 = 00000154
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s8, $zero              # a2 = FFFFFFD4
    jal     func_80050BD4
    addiu   a3, $sp, 0x0098            # a3 = FFFFFFE0
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    s3, $at, lbl_809C71C4
    or      s1, $zero, $zero           # s1 = 00000000
    lbu     t3, 0x0292(s2)             # 00000292
    or      a0, s2, $zero              # a0 = 00000000
    ori     t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0292(s2)             # 00000292
    jal     func_809C755C
    lw      a1, 0x00BC($sp)
    lw      $ra, 0x005C($sp)
lbl_809C7294:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_809C72CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0292(a3)             # 00000292
    lw      a0, 0x001C($sp)
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809C7310
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(a3)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lbu     t8, 0x0292(a3)             # 00000292
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    andi    v0, t9, 0x00FF             # v0 = 00000000
    sb      t9, 0x0292(a3)             # 00000292
lbl_809C7310:
    andi    t0, v0, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_809C7338
    lw      a0, 0x001C($sp)
    addiu   a1, a3, 0x0154             # a1 = 00000154
    jal     func_8004B148
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lbu     t1, 0x0292(a3)             # 00000292
    andi    t2, t1, 0xFFFE             # t2 = 00000000
    sb      t2, 0x0292(a3)             # 00000292
lbl_809C7338:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C7348:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_809C72CC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C7368:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s4, 0x005C($sp)
    sw      s2, 0x0054($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s5, 0x0060($sp)
    sw      s3, 0x0058($sp)
    sw      s1, 0x0050($sp)
    sw      s0, 0x004C($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s2)             # 000000B6
    mov.s   $f22, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s2)             # 000000B6
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f28                  # $f28 = 240.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f26                  # $f26 = 50.00
    lui     $at, 0x42F0                # $at = 42F00000
    lui     s0, %hi(var_809C7820)      # s0 = 809C0000
    lui     s3, %hi(var_809C784A)      # s3 = 809C0000
    mtc1    $at, $f24                  # $f24 = 120.00
    mov.s   $f20, $f0
    addiu   s3, s3, %lo(var_809C784A)  # s3 = 809C784A
    addiu   s0, s0, %lo(var_809C7820)  # s0 = 809C7820
    addiu   s1, s2, 0x0024             # s1 = 00000024
    addiu   s5, $sp, 0x0088            # s5 = FFFFFFF0
    lh      t7, 0x0004(s0)             # 809C7824
lbl_809C73F0:
    lh      t6, 0x0000(s0)             # 809C7820
    lwc1    $f18, 0x0000(s1)           # 00000024
    mtc1    t7, $f6                    # $f6 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lh      t8, 0x0002(s0)             # 809C7822
    cvt.s.w $f2, $f6
    mtc1    t8, $f6                    # $f6 = 0.00
    cvt.s.w $f0, $f4
    mul.s   $f8, $f2, $f22
    nop
    mul.s   $f10, $f0, $f20
    add.s   $f16, $f8, $f10
    cvt.s.w $f8, $f6
    add.s   $f4, $f16, $f18
    mul.s   $f18, $f2, $f20
    swc1    $f4, 0x0088($sp)
    mul.s   $f4, $f0, $f22
    lwc1    $f10, 0x0004(s1)           # 00000028
    add.s   $f16, $f8, $f10
    sub.s   $f6, $f18, $f4
    swc1    $f16, 0x008C($sp)
    lwc1    $f8, 0x0008(s1)            # 0000002C
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0090($sp)
    mul.s   $f16, $f0, $f24
    trunc.w.s $f18, $f16
    mfc1    s2, $f18
    nop
    sll     s2, s2, 16
    sra     s2, s2, 16
    addiu   s2, s2, 0x0014             # s2 = 00000014
    sll     s2, s2, 16
    jal     func_800CDCCC              # Rand.Next() float
    sra     s2, s2, 16
    mul.s   $f4, $f0, $f28
    mfc1    a2, $f26
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF0
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    trunc.w.s $f6, $f4
    sw      s2, 0x0010($sp)
    mfc1    t1, $f6
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    addiu   t4, t3, 0x0014             # t4 = 00000014
    jal     func_80026308
    sw      t4, 0x0014($sp)
    addiu   s0, s0, 0x0006             # s0 = 809C7826
    bnel    s0, s3, lbl_809C73F0
    lh      t7, 0x0004(s0)             # 809C782A
    lwc1    $f8, 0x0000(s1)            # 00000024
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    swc1    $f8, 0x0088($sp)
    lwc1    $f10, 0x0004(s1)           # 00000028
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    add.s   $f18, $f10, $f16
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    swc1    $f18, 0x008C($sp)
    lwc1    $f4, 0x0008(s1)            # 0000002C
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      t6, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF0
    swc1    $f8, 0x0090($sp)
    lui     a2, 0x4220                 # a2 = 42200000
    jal     func_80026308
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_809C755C:
    sw      a1, 0x0004($sp)
    lui     t6, 0x0500                 # t6 = 05000000
    lui     t7, %hi(func_809C7580)     # t7 = 809C0000
    addiu   t6, t6, 0x3FC0             # t6 = 05003FC0
    addiu   t7, t7, %lo(func_809C7580) # t7 = 809C7580
    sw      t6, 0x028C(a0)             # 0000028C
    sw      t7, 0x0288(a0)             # 00000288
    jr      $ra
    nop


func_809C7580:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0165(a3)             # 00000165
    or      a0, a3, $zero              # a0 = 00000000
    lui     $at, 0x4416                # $at = 44160000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_809C75D4
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0165(a3)             # 00000165
    sw      a3, 0x0018($sp)
    jal     func_809C7610
    lw      a1, 0x001C($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lh      a1, 0x001C(a3)             # 0000001C
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    b       lbl_809C7604
    lw      $ra, 0x0014($sp)
lbl_809C75D4:
    lwc1    $f4, 0x0090(a3)            # 00000090
    mtc1    $at, $f6                   # $f6 = 0.00
    lw      a0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f4, $f6
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    bc1fl   lbl_809C7604
    lw      $ra, 0x0014($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, a3, 0x0154             # a2 = 00000154
    lw      $ra, 0x0014($sp)
lbl_809C7604:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C7610:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0500                 # t6 = 05000000
    addiu   t6, t6, 0x3FC0             # t6 = 05003FC0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x028C(a0)             # 0000028C
    sh      t7, 0x0290(a0)             # 00000290
    jal     func_809C7368
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t8, %hi(func_809C7654)     # t8 = 809C0000
    addiu   t8, t8, %lo(func_809C7654) # t8 = 809C7654
    sw      t8, 0x0288(a0)             # 00000288
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C7654:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0290(a0)             # 00000290
    blez    v0, lbl_809C7670
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_809C7698
    sh      t6, 0x0290(a0)             # 00000290
lbl_809C7670:
    jal     func_809C76A8
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lh      t7, 0x001C(a0)             # 0000001C
    sra     t8, t7, 15
    andi    t9, t8, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_809C769C
    lw      $ra, 0x0014($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
lbl_809C7698:
    lw      $ra, 0x0014($sp)
lbl_809C769C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C76A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0500                 # t6 = 05000000
    addiu   t6, t6, 0x4088             # t6 = 05004088
    sw      t6, 0x028C(a0)             # 0000028C
    jal     func_809C72CC
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    sw      $zero, 0x0288(a0)          # 00000288
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_809C76D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0288(a0)             # 00000288
    beql    v0, $zero, lbl_809C76F8
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_809C76F8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809C7704:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80028048
    lw      a1, 0x028C(a2)             # 0000028C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_809C7730: .word \
0x00000000, 0x00000000, 0x00000000, 0x40000048, \
0x00000000, 0x00010000, 0xC28C0000, 0x43300000, \
0x00000000, 0xC28C0000, 0xC0800000, 0x00000000, \
0x00000000, 0xC0800000, 0x41F00000, 0x00000000, \
0x00000000, 0x00000000, 0x40000048, 0x00000000, \
0x00010000, 0x428C0000, 0x43300000, 0x00000000, \
0xC28C0000, 0x43300000, 0x00000000, 0x00000000, \
0xC0800000, 0x41F00000, 0x00000000, 0x00000000, \
0x00000000, 0x40000048, 0x00000000, 0x00010000, \
0x428C0000, 0xC0800000, 0x00000000, 0x428C0000, \
0x43300000, 0x00000000, 0x00000000, 0xC0800000, \
0x41F00000
var_809C77E4: .word 0x0A000900, 0x00020000, 0x00000003
.word var_809C7730
var_809C77F4: .word 0x00D00100, 0x00400000, 0x00020000, 0x00000294
.word func_809C70BC
.word func_809C7348
.word func_809C76D8
.word func_809C7704
var_809C7814: .word 0xB0F40708, 0xB0F8012C, 0x30FC03E8
var_809C7820: .byte \
0x00, 0x28, 0x00, 0x55, 0x00, 0x15, 0xFF, 0xD5, 0x00, 0x6B, 0x00, 0x0E, 0xFF, 0xFF, 0x00, 0x8E, \
0x00, 0x0E, 0xFF, 0xE5, 0x00, 0x2C, 0x00, 0x1B, 0x00, 0x1C, 0x00, 0x18, 0x00, 0x14, 0xFF, 0xD9, \
0x00, 0x36, 0x00, 0x15, 0x00, 0x31, 0x00, 0x32, 0x00, 0x14
var_809C784A: .byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

.section .rodata


