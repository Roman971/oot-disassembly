.section .text
func_80903C30:
    sw      a1, 0x01B4(a0)             # 000001B4
    jr      $ra
    nop


func_80903C3C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    lui     a1, %hi(var_8090441C)      # a1 = 80900000
    sw      $zero, 0x0154(s0)          # 00000154
    addiu   a1, a1, %lo(var_8090441C)  # a1 = 8090441C
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a1, s0, 0x0168             # a1 = 00000168
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809043F0)      # a3 = 80900000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_809043F0)  # a3 = 809043F0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x4F30             # a0 = 06004F30
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0024($sp)
    sw      v0, 0x013C(s0)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002049C
    lh      a1, 0x001C(s0)             # 0000001C
    bne     v0, $zero, lbl_80903CF4
    lui     $at, 0x4348                # $at = 43480000
    lui     a1, %hi(func_80903D7C)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80903D7C) # a1 = 80903D7C
    jal     func_80903C30
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80903D24
    lw      $ra, 0x001C($sp)
lbl_80903CF4:
    lwc1    $f4, 0x000C(s0)            # 0000000C
    mtc1    $at, $f6                   # $f6 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    sub.s   $f8, $f4, $f6
    lui     a1, %hi(func_80904368)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80904368) # a1 = 80904368
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f16, $f8, $f10
    jal     func_80903C30
    swc1    $f16, 0x0028(s0)           # 00000028
    lw      $ra, 0x001C($sp)
lbl_80903D24:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80903D34:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    lw      a2, 0x013C(t6)             # 0000013C
    jal     func_80031638              # DynaPolyInfo_delReserve
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0168             # a1 = 00000168
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80903D7C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    addiu   a1, s0, 0x0168             # a1 = 00000168
    sw      a1, 0x0028($sp)
    jal     func_800264C8
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80903DB0
    or      a2, v0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t6, 0x001C(v0)             # 0000001C
lbl_80903DB0:
    beql    v0, $zero, lbl_80903E24
    lh      v0, 0x0158(s0)             # 00000158
    lw      v1, 0x0154(s0)             # 00000154
    beql    v1, $zero, lbl_80903E24
    lh      v0, 0x0158(s0)             # 00000158
    beq     v0, v1, lbl_80903E20
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    addiu   a1, a2, 0x0024             # a1 = 00000024
    jal     func_80063EB8
    sw      a2, 0x002C($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lw      a2, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0
    lui     a1, %hi(func_80903E94)     # a1 = 80900000
    bc1fl   lbl_80903E24
    lh      v0, 0x0158(s0)             # 00000158
    jal     func_80903C30
    addiu   a1, a1, %lo(func_80903E94) # a1 = 80903E94
    lw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x0BEA          # a1 = 00000BEA
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    beq     $zero, $zero, lbl_80903E84
    lw      $ra, 0x0024($sp)
lbl_80903E20:
    lh      v0, 0x0158(s0)             # 00000158
lbl_80903E24:
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80903E38
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80903E60
    sh      t7, 0x0158(s0)             # 00000158
lbl_80903E38:
    beq     a2, $zero, lbl_80903E60
    sw      a2, 0x0154(s0)             # 00000154
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sh      t8, 0x0158(s0)             # 00000158
    lw      t0, 0x0024(a2)             # 00000024
    sw      t0, 0x015C(s0)             # 0000015C
    lw      t9, 0x0028(a2)             # 00000028
    sw      t9, 0x0160(s0)             # 00000160
    lw      t0, 0x002C(a2)             # 0000002C
    sw      t0, 0x0164(s0)             # 00000164
lbl_80903E60:
    jal     func_80050B00
    lw      a1, 0x0028($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0028($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0024($sp)
lbl_80903E84:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80903E94:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a3, 0x3CCC                 # a3 = 3CCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3CCCCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4080                 # a1 = 40800000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    addiu   a1, $zero, 0x0078          # a1 = 00000078
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lwc1    $f6, 0x000C(s0)            # 0000000C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    sub.s   $f10, $f6, $f8
    lui     $at, %hi(var_80904450)     # $at = 80900000
    lwc1    $f4, %lo(var_80904450)($at)
    lui     a2, 0x3D99                 # a2 = 3D990000
    sub.s   $f18, $f10, $f16
    lw      a3, 0x0068(s0)             # 00000068
    ori     a2, a2, 0x999A             # a2 = 3D99999A
    addiu   a0, s0, 0x0028             # a0 = 00000028
    mfc1    a1, $f18
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x3E80                # $at = 3E800000
    c.eq.s  $f0, $f6
    nop
    bc1fl   lbl_80903F64
    lwc1    $f18, 0x0068(s0)           # 00000068
    jal     func_800204D0
    lh      a1, 0x001C(s0)             # 0000001C
    lui     a1, %hi(func_80904368)     # a1 = 80900000
    addiu   a1, a1, %lo(func_80904368) # a1 = 80904368
    jal     func_80903C30
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80904358
    lw      $ra, 0x002C($sp)
    lwc1    $f18, 0x0068(s0)           # 00000068
lbl_80903F64:
    mtc1    $at, $f4                   # $f4 = 0.00
    lwc1    $f8, 0x0104(s0)            # 00000104
    lwc1    $f10, 0x0028(s0)           # 00000028
    mul.s   $f6, $f18, $f4
    addiu   t8, s0, 0x0024             # t8 = 00000024
    sub.s   $f16, $f8, $f10
    add.s   $f8, $f16, $f6
    swc1    $f8, 0x004C($sp)
    lw      t6, 0x009C(s1)             # 0000009C
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809042F8
    nop
    sw      t8, 0x0038($sp)
    lw      t1, 0x0000(t8)             # 00000024
    addiu   v0, $sp, 0x0040            # v0 = FFFFFFD8
    addiu   t2, $sp, 0x0050            # t2 = FFFFFFE8
    sw      t1, 0x0000(v0)             # FFFFFFD8
    lw      t0, 0x0004(t8)             # 00000028
    lw      t4, 0x0000(v0)             # FFFFFFD8
    addiu   t5, $sp, 0x005C            # t5 = FFFFFFF4
    sw      t0, 0x0004(v0)             # FFFFFFDC
    lw      t1, 0x0008(t8)             # 0000002C
    sw      t1, 0x0008(v0)             # FFFFFFE0
    sw      t4, 0x0000(t2)             # FFFFFFE8
    lw      t3, 0x0004(v0)             # FFFFFFDC
    sw      t3, 0x0004(t2)             # FFFFFFEC
    lw      t4, 0x0008(v0)             # FFFFFFE0
    sw      t4, 0x0008(t2)             # FFFFFFF0
    lw      t7, 0x0000(v0)             # FFFFFFD8
    sw      t7, 0x0000(t5)             # FFFFFFF4
    lw      t6, 0x0004(v0)             # FFFFFFDC
    sw      t6, 0x0004(t5)             # FFFFFFF8
    lw      t7, 0x0008(v0)             # FFFFFFE0
    sw      t7, 0x0008(t5)             # FFFFFFFC
    lw      t8, 0x009C(s1)             # 0000009C
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80904054
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4352                # $at = 43520000
    mtc1    $at, $f10                  # $f10 = 210.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f18                  # $f18 = 230.00
    lwc1    $f6, 0x0064($sp)
    mul.s   $f4, $f0, $f18
    add.s   $f16, $f10, $f4
    add.s   $f8, $f6, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0064($sp)
    lui     $at, 0x4352                # $at = 43520000
    mtc1    $at, $f18                  # $f18 = 210.00
    lui     $at, 0x4366                # $at = 43660000
    mtc1    $at, $f10                  # $f10 = 230.00
    lwc1    $f16, 0x0058($sp)
    mul.s   $f4, $f0, $f10
    add.s   $f6, $f18, $f4
    add.s   $f8, $f16, $f6
    beq     $zero, $zero, lbl_809040A8
    swc1    $f8, 0x0058($sp)
lbl_80904054:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x43A5                # $at = 43A50000
    mtc1    $at, $f10                  # $f10 = 330.00
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f18                  # $f18 = 240.00
    lwc1    $f6, 0x0064($sp)
    mul.s   $f4, $f0, $f18
    add.s   $f16, $f10, $f4
    add.s   $f8, $f6, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0064($sp)
    lui     $at, 0x43A5                # $at = 43A50000
    mtc1    $at, $f18                  # $f18 = 330.00
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f10                  # $f10 = 240.00
    lwc1    $f16, 0x0058($sp)
    mul.s   $f4, $f0, $f10
    add.s   $f6, $f18, $f4
    add.s   $f8, $f16, $f6
    swc1    $f8, 0x0058($sp)
lbl_809040A8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lwc1    $f6, 0x005C($sp)
    mul.s   $f4, $f0, $f18
    add.s   $f16, $f10, $f4
    add.s   $f8, $f6, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x005C($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f16, 0x0050($sp)
    mul.s   $f4, $f0, $f10
    add.s   $f6, $f18, $f4
    sub.s   $f8, $f16, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0050($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lwc1    $f10, 0x0080(s0)           # 00000080
    add.s   $f4, $f10, $f18
    add.s   $f16, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0060($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x4307                # $at = 43070000
    mtc1    $at, $f4                   # $f4 = 135.00
    lwc1    $f18, 0x004C($sp)
    lwc1    $f6, 0x0080(s0)            # 00000080
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    mul.s   $f16, $f18, $f4
    add.s   $f8, $f6, $f2
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mfc1    a2, $f2
    sw      t2, 0x0018($sp)
    add.s   $f10, $f0, $f8
    sw      t1, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    trunc.w.s $f6, $f16
    swc1    $f10, 0x0054($sp)
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    sw      v0, 0x0010($sp)
    jal     func_80026308
    sw      v0, 0x0034($sp)
    lw      t3, 0x0034($sp)
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a2, 0x41A0                 # a2 = 41A00000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80026308
    sw      t3, 0x0010($sp)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90
    nop
    lui     $at, %hi(var_8090442C)     # $at = 80900000
    swc1    $f0, %lo(var_8090442C)($at)
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f12                  # $f12 = 3.00
    jal     func_80026D90
    nop
    lui     $at, %hi(var_80904434)     # $at = 80900000
    lui     a2, %hi(var_8090442C)      # a2 = 80900000
    lui     a3, %hi(var_80904438)      # a3 = 80900000
    swc1    $f0, %lo(var_80904434)($at)
    addiu   a3, a3, %lo(var_80904438)  # a3 = 80904438
    addiu   a2, a2, %lo(var_8090442C)  # a2 = 8090442C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800282C4
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
    lui     a2, %hi(var_8090442C)      # a2 = 80900000
    lui     a3, %hi(var_80904438)      # a3 = 80900000
    addiu   a3, a3, %lo(var_80904438)  # a3 = 80904438
    addiu   a2, a2, %lo(var_8090442C)  # a2 = 8090442C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800282C4
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lw      t7, 0x0038($sp)
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFF4
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lw      t9, 0x0008(t7)             # 00000008
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lui     $at, 0x440C                # $at = 440C0000
    mtc1    $at, $f8                   # $f8 = 560.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lwc1    $f16, 0x0064($sp)
    mul.s   $f18, $f0, $f10
    add.s   $f4, $f8, $f18
    add.s   $f6, $f16, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0064($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f18                  # $f18 = 160.00
    sub.s   $f8, $f0, $f10
    lwc1    $f4, 0x005C($sp)
    mul.s   $f16, $f8, $f18
    add.s   $f6, $f4, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x005C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f10, 0x0080(s0)           # 00000080
    lw      t0, 0x0034($sp)
    mul.s   $f16, $f0, $f4
    add.s   $f18, $f10, $f8
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    add.s   $f6, $f16, $f18
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
    lui     a2, 0x41A0                 # a2 = 41A00000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    swc1    $f6, 0x0060($sp)
    jal     func_80026308
    sw      t0, 0x0010($sp)
    lui     a2, %hi(var_8090442C)      # a2 = 80900000
    lui     a3, %hi(var_80904438)      # a3 = 80900000
    addiu   a3, a3, %lo(var_80904438)  # a3 = 80904438
    addiu   a2, a2, %lo(var_8090442C)  # a2 = 8090442C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800282C4
    addiu   a1, $sp, 0x005C            # a1 = FFFFFFF4
lbl_809042F8:
    lui     $at, %hi(var_80904454)     # $at = 80900000
    lwc1    $f8, %lo(var_80904454)($at)
    lwc1    $f10, 0x004C($sp)
    addiu   a0, s1, 0x01E0             # a0 = 000001E0
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f4, $f10, $f8
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    trunc.w.s $f16, $f4
    mfc1    a2, $f16
    nop
    sll     a2, a2, 16
    jal     func_800497A4
    sra     a2, a2, 16
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    sw      t4, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x2027          # a0 = 00002027
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x002C($sp)
lbl_80904358:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp = 00000000


func_80904368:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80904378:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x01B4(a0)             # 000001B4
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8090439C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x48A8             # a1 = 060048A8
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_809043D0: .word 0x005C0100, 0x00000010, 0x002B0000, 0x000001B8
.word func_80903C3C
.word func_80903D34
.word func_80904378
.word func_8090439C
var_809043F0: .word \
0x0A003900, 0x00010000, 0x02000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x00F500B4, 0xFE700000, 0x00000000
var_8090441C: .word 0xC8500064, 0xB0F87FFF, 0xB0FC7FFF, 0x30F47FFF
var_8090442C: .word 0x00000000, 0x40A00000
var_80904434: .word 0x00000000
var_80904438: .word \
0x00000000, 0xBEE66666, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80904450: .word 0x3BF5C28F
var_80904454: .word 0x3F19999A, 0x00000000, 0x00000000

