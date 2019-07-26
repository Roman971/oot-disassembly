.section .text
func_808F9080:
    sw      a1, 0x0244(a0)             # 00000244
    jr      $ra
    nop


func_808F908C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    addiu   v0, s0, 0x0024             # v0 = 00000024
    lw      t8, 0x0000(v0)             # 00000024
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFE8
    sw      t8, 0x0000(t6)             # FFFFFFE8
    lw      t7, 0x0004(v0)             # 00000028
    sw      t7, 0x0004(t6)             # FFFFFFEC
    lw      t8, 0x0008(v0)             # 0000002C
    sw      t8, 0x0008(t6)             # FFFFFFF0
    lhu     t9, 0x0088(s0)             # 00000088
    sw      v0, 0x002C($sp)
    lh      a0, 0x0056($sp)
    jal     func_800636C4              # sins?
    sh      t9, 0x0044($sp)
    lwc1    $f4, 0x0050($sp)
    lh      a0, 0x0056($sp)
    mul.s   $f6, $f0, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0040($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    add.s   $f16, $f8, $f10
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    mfc1    a2, $f2
    mfc1    a3, $f2
    swc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    mul.s   $f6, $f0, $f4
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x002C(s0)            # 0000002C
    sw      t0, 0x0014($sp)
    lw      a0, 0x004C($sp)
    jal     func_80021E6C
    swc1    $f2, 0x0010($sp)
    addiu   t2, $sp, 0x0030            # t2 = FFFFFFE8
    lw      t4, 0x0000(t2)             # FFFFFFE8
    lw      t1, 0x002C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    sw      t4, 0x0000(t1)             # 00000000
    lw      t3, 0x0004(t2)             # FFFFFFEC
    sw      t3, 0x0004(t1)             # 00000004
    lw      t4, 0x0008(t2)             # FFFFFFF0
    sw      t4, 0x0008(t1)             # 00000008
    lhu     v1, 0x0088(s0)             # 00000088
    lh      t5, 0x0044($sp)
    andi    v1, v1, 0x0001             # v1 = 00000000
    sll     v1, v1, 16
    sra     v1, v1, 16
    bnel    v1, $zero, lbl_808F91A0
    sh      t5, 0x0088(s0)             # 00000088
    lwc1    $f16, 0x000C(s0)           # 0000000C
    mtc1    $at, $f4                   # $f4 = 20.00
    lwc1    $f10, 0x0080(s0)           # 00000080
    sub.s   $f18, $f16, $f4
    c.le.s  $f18, $f10
    nop
    bc1fl   lbl_808F91A0
    sh      t5, 0x0088(s0)             # 00000088
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sh      t5, 0x0088(s0)             # 00000088
lbl_808F91A0:
    or      v0, v1, $zero              # v0 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_808F91B8:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_808FB188)      # a1 = 80900000
    sw      $zero, 0x0044($sp)
    addiu   a1, a1, %lo(var_808FB188)  # a1 = 808FB188
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4240                 # a3 = 42400000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x019C             # t6 = 0000019C
    addiu   t7, s0, 0x01F0             # t7 = 000001F0
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x033C             # a3 = 0600033C
    addiu   a2, a2, 0x5948             # a2 = 06005948
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x0154             # a1 = 00000154
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a1, s0, 0x0264             # a1 = 00000264
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02B0             # a1 = 000002B0
    sw      a1, 0x0038($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808FB0C0)      # a3 = 80900000
    addiu   a3, a3, %lo(var_808FB0C0)  # a3 = 808FB0C0
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0038($sp)
    bne     t9, $zero, lbl_808F9314
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x00AF(s0)             # 000000AF
    lui     a3, %hi(var_808FB0C0)      # a3 = 80900000
    addiu   a3, a3, %lo(var_808FB0C0)  # a3 = 808FB0C0
    lw      a1, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t1, $zero, 0x0035          # t1 = 00000035
    addiu   t2, $zero, 0x000D          # t2 = 0000000D
    lui     a0, 0x0600                 # a0 = 06000000
    sb      t1, 0x0276(s0)             # 00000276
    sb      t2, 0x02C2(s0)             # 000002C2
    addiu   a0, a0, 0x0118             # a0 = 06000118
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFFC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0810             # a1 = 00000810
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    lw      a3, 0x0044($sp)
    sw      v0, 0x013C(s0)             # 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_808F9614
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808F936C
    addiu   t5, $zero, 0x00FE          # t5 = 000000FE
lbl_808F9314:
    lui     a3, %hi(var_808FB0EC)      # a3 = 80900000
    jal     func_8004ACEC
    addiu   a3, a3, %lo(var_808FB0EC)  # a3 = 808FB0EC
    addiu   a1, s0, 0x02FC             # a1 = 000002FC
    sw      a1, 0x0038($sp)
    jal     func_8004B858
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_808FB118)      # a3 = 80900000
    lw      a1, 0x0038($sp)
    addiu   a3, a3, %lo(var_808FB118)  # a3 = 808FB118
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004B960
    or      a2, s0, $zero              # a2 = 00000000
    lui     t4, %hi(var_808FB168)      # t4 = 80900000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, t4, %lo(var_808FB168)  # t4 = 808FB168
    sb      t3, 0x00AF(s0)             # 000000AF
    sw      t4, 0x0098(s0)             # 00000098
    jal     func_808F9578
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x0248(s0)          # 00000248
    addiu   t5, $zero, 0x00FE          # t5 = 000000FE
lbl_808F936C:
    sb      t5, 0x00AE(s0)             # 000000AE
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_808F9384:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
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
    addiu   a1, a1, 0x0264             # a1 = 00000264
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x02B0             # a1 = 000002B0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F93DC:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s7, 0x0068($sp)
    sw      s6, 0x0064($sp)
    sw      s5, 0x0060($sp)
    sw      s0, 0x004C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    addiu   s6, $sp, 0x007C            # s6 = FFFFFFEC
    addiu   s7, $sp, 0x0078            # s7 = FFFFFFE8
    sw      $ra, 0x006C($sp)
    sw      s4, 0x005C($sp)
    sw      s3, 0x0058($sp)
    sw      s2, 0x0054($sp)
    sw      s1, 0x0050($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     t6, %hi(var_808FB194)      # t6 = 80900000
    addiu   t6, t6, %lo(var_808FB194)  # t6 = 808FB194
    lui     $at, 0x4220                # $at = 42200000
    lw      t8, 0x0000(t6)             # 808FB194
    mtc1    $at, $f26                  # $f26 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    lui     t9, %hi(var_808FB198)      # t9 = 80900000
    mtc1    $at, $f24                  # $f24 = 10.00
    addiu   t9, t9, %lo(var_808FB198)  # t9 = 808FB198
    lui     $at, 0x4282                # $at = 42820000
    sw      t8, 0x0000(s6)             # FFFFFFEC
    lw      t1, 0x0000(t9)             # 808FB198
    mtc1    $at, $f22                  # $f22 = 65.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s4, %hi(var_808FB1A8)      # s4 = 80900000
    lui     s3, %hi(var_808FB19C)      # s3 = 80900000
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   s3, s3, %lo(var_808FB19C)  # s3 = 808FB19C
    addiu   s4, s4, %lo(var_808FB1A8)  # s4 = 808FB1A8
    addiu   s1, $zero, 0x0004          # s1 = 00000004
    addiu   s2, $sp, 0x0080            # s2 = FFFFFFF0
    sw      t1, 0x0000(s7)             # FFFFFFE8
lbl_808F947C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f20
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f6, $f4, $f22
    add.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0080($sp)
    sub.s   $f16, $f0, $f20
    lwc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f18, $f16, $f24
    add.s   $f6, $f4, $f26
    add.s   $f8, $f18, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0084($sp)
    sub.s   $f10, $f0, $f20
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      s7, 0x0014($sp)
    sw      s6, 0x0010($sp)
    mul.s   $f16, $f10, $f22
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF0
    or      a2, s3, $zero              # a2 = 808FB19C
    or      a3, s4, $zero              # a3 = 808FB1A8
    add.s   $f18, $f16, $f4
    jal     func_8001C66C
    swc1    $f18, 0x0088($sp)
    addiu   s1, s1, 0xFFFF             # s1 = 00000003
    bne     s1, $zero, lbl_808F947C
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3844          # a1 = 00003844
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f6                   # $f6 = 8.00
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    addiu   t3, $zero, 0x012C          # t3 = 0000012C
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t2, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x4080                 # a3 = 40800000
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f6, 0x0014($sp)
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    lw      s6, 0x0064($sp)
    lw      s7, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_808F9578:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x033C             # a0 = 0600033C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f0, $f4
    mfc1    a2, $f2
    addiu   a1, a1, 0x033C             # a1 = 0600033C
    addiu   a0, s0, 0x0154             # a0 = 00000154
    sw      $zero, 0x0014($sp)
    swc1    $f2, 0x0018($sp)
    mfc1    a3, $f0
    jal     func_8008D17C
    swc1    $f0, 0x0010($sp)
    lbu     t7, 0x0256(s0)             # 00000256
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sw      t6, 0x0198(s0)             # 00000198
    bne     t7, $at, lbl_808F95E8
    swc1    $f6, 0x0068(s0)            # 00000068
    b       lbl_808F95F0
    sh      $zero, 0x0248(s0)          # 00000248
lbl_808F95E8:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0248(s0)             # 00000248
lbl_808F95F0:
    lui     a1, %hi(func_808F9A14)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808F9A14) # a1 = 808F9A14
    jal     func_808F9080
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808F9614:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x033C             # a0 = 0600033C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f0, $f4
    mfc1    a2, $f2
    addiu   a1, a1, 0x033C             # a1 = 0600033C
    addiu   a0, s0, 0x0154             # a0 = 00000154
    sw      $zero, 0x0014($sp)
    swc1    $f2, 0x0018($sp)
    mfc1    a3, $f0
    jal     func_8008D17C
    swc1    $f0, 0x0010($sp)
    lw      t6, 0x0004(s0)             # 00000004
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     a1, %hi(func_808FA470)     # a1 = 80900000
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    sw      t8, 0x0198(s0)             # 00000198
    addiu   a1, a1, %lo(func_808FA470) # a1 = 808FA470
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F9080
    swc1    $f6, 0x0068(s0)            # 00000068
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808F96A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0238             # a1 = 06000238
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D360
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lh      t8, 0x00B6(a0)             # 000000B6
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    lui     a1, %hi(func_808FA23C)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FA23C) # a1 = 808FA23C
    sh      t6, 0x0248(a0)             # 00000248
    sw      t7, 0x0198(a0)             # 00000198
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_808F9080
    sh      t8, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F9708:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0238             # a1 = 06000238
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D360
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lh      t9, 0x00B6(a0)             # 000000B6
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lui     a1, %hi(func_808FA104)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FA104) # a1 = 808FA104
    sh      t6, 0x0248(a0)             # 00000248
    sh      t7, 0x024A(a0)             # 0000024A
    sw      t8, 0x0198(a0)             # 00000198
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_808F9080
    sh      t9, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F9774:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0238             # a1 = 06000238
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D360
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     a1, %hi(func_808F9EF0)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808F9EF0) # a1 = 808F9EF0
    sw      t6, 0x0198(a0)             # 00000198
    sh      t7, 0x0248(a0)             # 00000248
    jal     func_808F9080
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F97D0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0238             # a1 = 06000238
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D360
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     a1, %hi(func_808F9D84)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808F9D84) # a1 = 808F9D84
    sw      t6, 0x0198(a0)             # 00000198
    sh      t7, 0x0248(a0)             # 00000248
    jal     func_808F9080
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F982C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0238             # a1 = 06000238
    addiu   a0, a3, 0x0154             # a0 = 00000154
    lui     a2, 0x4080                 # a2 = 40800000
    jal     func_8008D360
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    lh      t7, 0x00B6(a0)             # 000000B6
    lui     a1, %hi(func_808F9C80)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808F9C80) # a1 = 808F9C80
    sw      t6, 0x0198(a0)             # 00000198
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_808F9080
    sh      t7, 0x0032(a0)             # 00000032
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808F9888:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5B3C             # a0 = 06005B3C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    cvt.s.w $f6, $f4
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5B3C             # a1 = 06005B3C
    sub.s   $f10, $f6, $f8
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4080                 # a3 = 40800000
    swc1    $f10, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f16, 0x0018($sp)
    lh      t8, 0x008A(s0)             # 0000008A
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0198(s0)             # 00000198
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3847          # a1 = 00003847
    jal     func_80022FD0
    sh      t8, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_808F908C
    lh      a3, 0x0032(s0)             # 00000032
    beq     v0, $zero, lbl_808F9930
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f18                  # $f18 = -6.00
    nop
    swc1    $f18, 0x0068(s0)           # 00000068
lbl_808F9930:
    sb      $zero, 0x0114(s0)          # 00000114
    jal     func_80025B4C
    lw      a0, 0x0034($sp)
    lui     a1, %hi(func_808FA060)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FA060) # a1 = 808FA060
    jal     func_808F9080
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808F9960:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x033C             # a1 = 0600033C
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x0018($sp)
    jal     func_8008D17C
    swc1    $f4, 0x0010($sp)
    lh      t7, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0xC0C0                 # a2 = C0C00000
    sh      t7, 0x0032(s0)             # 00000032
    lh      a3, 0x0032(s0)             # 00000032
    jal     func_808F908C
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_808F99DC
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f6                   # $f6 = -6.00
    nop
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_808F99DC:
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    lui     a1, %hi(func_808FA880)     # a1 = 80900000
    sh      $zero, 0x0254(s0)          # 00000254
    sh      $zero, 0x0248(s0)          # 00000248
    sh      t8, 0x024A(s0)             # 0000024A
    sw      t9, 0x0198(s0)             # 00000198
    addiu   a1, a1, %lo(func_808FA880) # a1 = 808FA880
    jal     func_808F9080
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808F9A14:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x0248(s0)             # 00000248
    lw      v0, 0x1C44(a1)             # 00001C44
    bnel    t6, $zero, lbl_808F9A64
    lbu     t2, 0x0275(s0)             # 00000275
    lbu     t7, 0x0276(s0)             # 00000276
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_808F9A54
    lbu     t0, 0x0275(s0)             # 00000275
    lw      t9, 0x0270(s0)             # 00000270
    beql    v0, t9, lbl_808F9A64
    lbu     t2, 0x0275(s0)             # 00000275
    lbu     t0, 0x0275(s0)             # 00000275
lbl_808F9A54:
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_808F9B68
    lbu     v0, 0x0256(s0)             # 00000256
    lbu     t2, 0x0275(s0)             # 00000275
lbl_808F9A64:
    lbu     v0, 0x0256(s0)             # 00000256
    or      a0, s0, $zero              # a0 = 00000000
    andi    t3, t2, 0xFFFD             # t3 = 00000000
    bne     v0, $zero, lbl_808F9AAC
    sb      t3, 0x0275(s0)             # 00000275
    jal     func_80022FD0
    addiu   a1, $zero, 0x3845          # a1 = 00003845
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3848          # a1 = 00003848
    addiu   t4, $zero, 0x0008          # t4 = 00000008
    sw      t4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     v0, 0x0256(s0)             # 00000256
lbl_808F9AAC:
    slti    $at, v0, 0x00F0
    bne     $at, $zero, lbl_808F9AE8
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    lw      t7, 0x0004(s0)             # 00000004
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    ori     t8, t7, 0x0001             # t8 = 00000001
    sh      t5, 0x024C(s0)             # 0000024C
    sb      t6, 0x0256(s0)             # 00000256
    sw      t8, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F96A4
    swc1    $f2, 0x00BC(s0)            # 000000BC
    b       lbl_808F9C70
    lw      $ra, 0x0024($sp)
lbl_808F9AE8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    sub.s   $f6, $f0, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x002C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f16, 0x002C($sp)
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x0034($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x0258(s0)            # 00000258
    lwc1    $f6, 0x0034($sp)
    lwc1    $f10, 0x0260(s0)           # 00000260
    lbu     t9, 0x0256(s0)             # 00000256
    add.s   $f8, $f4, $f6
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t0, t9, 0x0014             # t0 = 00000014
    swc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x002C($sp)
    sb      t0, 0x0256(s0)             # 00000256
    sh      t1, 0x0248(s0)             # 00000248
    mul.s   $f18, $f0, $f16
    add.s   $f4, $f10, $f18
    b       lbl_808F9C6C
    swc1    $f4, 0x002C(s0)            # 0000002C
    lbu     v0, 0x0256(s0)             # 00000256
lbl_808F9B68:
    slti    $at, v0, 0x000B
    bne     $at, $zero, lbl_808F9B7C
    addiu   t2, v0, 0xFFF6             # t2 = FFFFFFF6
    b       lbl_808F9C6C
    sb      t2, 0x0256(s0)             # 00000256
lbl_808F9B7C:
    lw      t3, 0x0004(s0)             # 00000004
    lw      t5, 0x013C(s0)             # 0000013C
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t4, t3, $at
    sb      $zero, 0x0256(s0)          # 00000256
    bgez    t5, lbl_808F9B9C
    sw      t4, 0x0004(s0)             # 00000004
    sh      $zero, 0x0254(s0)          # 00000254
lbl_808F9B9C:
    lwc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0140(s0)            # 00000140
    lui     $at, 0xC020                # $at = C0200000
    mtc1    $at, $f2                   # $f2 = -2.50
    add.s   $f16, $f6, $f8
    lw      t7, 0x0024(s0)             # 00000024
    lw      t6, 0x0028(s0)             # 00000028
    lh      t8, 0x0148(s0)             # 00000148
    swc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f0, 0x0068(s0)            # 00000068
    sw      t7, 0x0258(s0)             # 00000258
    lw      t7, 0x002C(s0)             # 0000002C
    c.lt.s  $f0, $f2
    lui     $at, 0x4020                # $at = 40200000
    sw      t6, 0x025C(s0)             # 0000025C
    sh      t8, 0x0032(s0)             # 00000032
    bc1f    lbl_808F9BEC
    sw      t7, 0x0260(s0)             # 00000260
    b       lbl_808F9C14
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808F9BEC:
    mtc1    $at, $f12                  # $f12 = 2.50
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_808F9C10
    mov.s   $f2, $f0
    b       lbl_808F9C10
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_808F9C10:
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808F9C14:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a2, $f0
    mfc1    a3, $f0
    mfc1    a1, $f2
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f2, $f10
    nop
    bc1tl   lbl_808F9C68
    swc1    $f2, 0x0144(s0)            # 00000144
    jal     func_80022FD0
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    swc1    $f2, 0x0144(s0)            # 00000144
lbl_808F9C68:
    swc1    $f2, 0x0140(s0)            # 00000140
lbl_808F9C6C:
    lw      $ra, 0x0024($sp)
lbl_808F9C70:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808F9C80:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    addiu   a0, s0, 0x0024             # a0 = 00000024
    jal     func_80063F00
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sh      v0, 0x002E($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f0, 0x016C(s0)            # 0000016C
    lh      a1, 0x002E($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    c.eq.s  $f4, $f0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x1F40          # a3 = 00001F40
    lui     $at, 0x4130                # $at = 41300000
    bc1fl   lbl_808F9CEC
    mtc1    $at, $f8                   # $f8 = 11.00
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    b       lbl_808F9D50
    swc1    $f6, 0x0060(s0)            # 00000060
    mtc1    $at, $f8                   # $f8 = 12.00
lbl_808F9CEC:
    nop
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_808F9D50
    nop
    lhu     t6, 0x0088(s0)             # 00000088
    lui     $at, 0x4130                # $at = 41300000
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_808F9D24
    nop
    mtc1    $at, $f10                  # $f10 = 11.00
    b       lbl_808F9D50
    swc1    $f10, 0x016C(s0)           # 0000016C
lbl_808F9D24:
    jal     func_808F93DC
    lw      a1, 0x0034($sp)
    lh      t8, 0x002E($sp)
    lh      t9, 0x0032(s0)             # 00000032
    mtc1    $zero, $f16                # $f16 = 0.00
    bnel    t8, t9, lbl_808F9D48
    lwc1    $f18, 0x0080(s0)           # 00000080
    sh      $zero, 0x0248(s0)          # 00000248
    lwc1    $f18, 0x0080(s0)           # 00000080
lbl_808F9D48:
    swc1    $f16, 0x0060(s0)           # 00000060
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_808F9D50:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      t0, 0x0248(s0)             # 00000248
    bnel    t0, $zero, lbl_808F9D70
    lh      t1, 0x0032(s0)             # 00000032
    jal     func_808F9774
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x0032(s0)             # 00000032
lbl_808F9D70:
    sh      t1, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808F9D84:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f0, 0x016C(s0)            # 0000016C
    lui     $at, 0x4130                # $at = 41300000
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_808F9E14
    mtc1    $at, $f4                   # $f4 = 11.00
    lwc1    $f6, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x0024(s0)            # 00000024
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_808F9DFC
    lui     $at, 0x4140                # $at = 41400000
    lwc1    $f10, 0x0010(s0)           # 00000010
    lwc1    $f16, 0x002C(s0)           # 0000002C
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.eq.s  $f10, $f16
    addiu   a3, $zero, 0x1F40          # a3 = 00001F40
    bc1fl   lbl_808F9DFC
    lui     $at, 0x4140                # $at = 41400000
    lh      a1, 0x0016(s0)             # 00000016
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lui     $at, 0x4140                # $at = 41400000
lbl_808F9DFC:
    mtc1    $at, $f18                  # $f18 = 12.00
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sh      t6, 0x0248(s0)             # 00000248
    b       lbl_808F9E78
    swc1    $f18, 0x0060(s0)           # 00000060
    mtc1    $at, $f4                   # $f4 = 12.00
lbl_808F9E14:
    nop
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_808F9E7C
    lh      t2, 0x0248(s0)             # 00000248
    lhu     t7, 0x0088(s0)             # 00000088
    lui     $at, 0x4130                # $at = 41300000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_808F9E4C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f6                   # $f6 = 11.00
    b       lbl_808F9E78
    swc1    $f6, 0x016C(s0)            # 0000016C
lbl_808F9E4C:
    jal     func_808F93DC
    sh      t9, 0x0248(s0)             # 00000248
    lh      t0, 0x0032(s0)             # 00000032
    lh      t1, 0x0016(s0)             # 00000016
    mtc1    $zero, $f8                 # $f8 = 0.00
    bnel    t0, t1, lbl_808F9E70
    lwc1    $f10, 0x0080(s0)           # 00000080
    sh      $zero, 0x0248(s0)          # 00000248
    lwc1    $f10, 0x0080(s0)           # 00000080
lbl_808F9E70:
    swc1    $f8, 0x0060(s0)            # 00000060
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_808F9E78:
    lh      t2, 0x0248(s0)             # 00000248
lbl_808F9E7C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bne     t2, $at, lbl_808F9EBC
    lui     a2, 0x3F80                 # a2 = 3F800000
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      a1, 0x0008(s0)             # 00000008
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a1, 0x0010(s0)             # 00000010
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4100                 # a3 = 41000000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
lbl_808F9EBC:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      t3, 0x0248(s0)             # 00000248
    bnel    t3, $zero, lbl_808F9EDC
    lh      t4, 0x0032(s0)             # 00000032
    jal     func_808F9578
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x0032(s0)             # 00000032
lbl_808F9EDC:
    sh      t4, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808F9EF0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    addiu   a1, s0, 0x0008             # a1 = 00000008
    sw      a1, 0x0028($sp)
    jal     func_80063F00
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f0, 0x016C(s0)            # 0000016C
    sll     a1, v0, 16
    sra     a1, a1, 16
    c.eq.s  $f4, $f0
    lui     $at, 0x4130                # $at = 41300000
    bc1fl   lbl_808F9F58
    mtc1    $at, $f10                  # $f10 = 11.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    swc1    $f6, 0x0060(s0)            # 00000060
    b       lbl_808FA008
    swc1    $f8, 0x0068(s0)            # 00000068
    mtc1    $at, $f10                  # $f10 = 6.00
lbl_808F9F58:
    nop
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_808FA00C
    mtc1    $zero, $f6                 # $f6 = 0.00
    lhu     t6, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_808F9F94
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f16                  # $f16 = 11.00
    b       lbl_808FA008
    swc1    $f16, 0x016C(s0)           # 0000016C
lbl_808F9F94:
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lhu     t8, 0x0088(s0)             # 00000088
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_808F9FC4
    lwc1    $f18, 0x0080(s0)           # 00000080
    lh      t0, 0x0248(s0)             # 00000248
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0248(s0)             # 00000248
    lwc1    $f18, 0x0080(s0)           # 00000080
lbl_808F9FC4:
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f18, 0x0028(s0)           # 00000028
    jal     func_808F93DC
    lw      a1, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214D8
    lw      a1, 0x0028($sp)
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    nop
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808FA00C
    mtc1    $zero, $f6                 # $f6 = 0.00
    jal     func_808F97D0
    or      a0, s0, $zero              # a0 = 00000000
lbl_808FA008:
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_808FA00C:
    lwc1    $f8, 0x0068(s0)            # 00000068
    c.eq.s  $f6, $f8
    nop
    bc1t    lbl_808FA040
    nop
    lhu     t2, 0x0088(s0)             # 00000088
    andi    t3, t2, 0x0008             # t3 = 00000000
    beq     t3, $zero, lbl_808FA040
    nop
    lh      t4, 0x007E(s0)             # 0000007E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C
    sh      t4, 0x0032(s0)             # 00000032
lbl_808FA040:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      t5, 0x0032(s0)             # 00000032
    sh      t5, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_808FA060:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f2
    lui     a2, 0xC100                 # a2 = C1000000
    bc1fl   lbl_808FA0A4
    lwc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0060(s0)            # 00000060
lbl_808FA0A4:
    c.le.s  $f8, $f2
    nop
    bc1f    lbl_808FA0CC
    nop
    jal     func_808F908C
    lh      a3, 0x0032(s0)             # 00000032
    mtc1    $zero, $f2                 # $f2 = 0.00
    bne     v0, $zero, lbl_808FA0CC
    nop
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808FA0CC:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    beql    v0, $zero, lbl_808FA0F4
    lw      $ra, 0x001C($sp)
    jal     func_808F96A4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sh      t6, 0x0250(s0)             # 00000250
    sh      $zero, 0x0252(s0)          # 00000252
    lw      $ra, 0x001C($sp)
lbl_808FA0F4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808FA104:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      t6, 0x008A(s0)             # 0000008A
    lui     $at, 0x4100                # $at = 41000000
    sw      t6, 0x0028($sp)
    lh      t8, 0x0032(s0)             # 00000032
    subu    v0, t6, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bgezl   v0, lbl_808FA148
    lh      v1, 0x024A(s0)             # 0000024A
    subu    v0, $zero, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    lh      v1, 0x024A(s0)             # 0000024A
lbl_808FA148:
    beq     v1, $zero, lbl_808FA158
    addiu   t9, v1, 0xFFFF             # t9 = FFFFFFFF
    b       lbl_808FA228
    sh      t9, 0x024A(s0)             # 0000024A
lbl_808FA158:
    lwc1    $f0, 0x016C(s0)            # 0000016C
    mtc1    $at, $f4                   # $f4 = 8.00
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    c.eq.s  $f4, $f0
    addiu   a3, $zero, 0x1F40          # a3 = 00001F40
    lui     $at, 0x4130                # $at = 41300000
    bc1fl   lbl_808FA19C
    mtc1    $at, $f8                   # $f8 = 11.00
    lh      a1, 0x002A($sp)
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    b       lbl_808FA1F8
    swc1    $f6, 0x0060(s0)            # 00000060
    mtc1    $at, $f8                   # $f8 = 12.00
lbl_808FA19C:
    nop
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_808FA1F8
    nop
    lhu     t0, 0x0088(s0)             # 00000088
    slti    $at, v0, 0x0DAC
    andi    t1, t0, 0x0001             # t1 = 00000000
    bne     t1, $zero, lbl_808FA1D4
    nop
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f10                  # $f10 = 11.00
    b       lbl_808FA1F8
    swc1    $f10, 0x016C(s0)           # 0000016C
lbl_808FA1D4:
    beql    $at, $zero, lbl_808FA1E4
    mtc1    $zero, $f16                # $f16 = 0.00
    sh      $zero, 0x0248(s0)          # 00000248
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808FA1E4:
    lwc1    $f18, 0x0080(s0)           # 00000080
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f16, 0x0060(s0)           # 00000060
    jal     func_808F93DC
    swc1    $f18, 0x0028(s0)           # 00000028
lbl_808FA1F8:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      t2, 0x0248(s0)             # 00000248
    bnel    t2, $zero, lbl_808FA224
    lh      t3, 0x0032(s0)             # 00000032
    jal     func_808F96A4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3848          # a1 = 00003848
    lh      t3, 0x0032(s0)             # 00000032
lbl_808FA224:
    sh      t3, 0x00B6(s0)             # 000000B6
lbl_808FA228:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808FA23C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x0250(s0)             # 00000250
    slti    $at, t6, 0x0034
    beq     $at, $zero, lbl_808FA45C
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f4                   # $f4 = 8.00
    lwc1    $f0, 0x016C(s0)            # 0000016C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4130                # $at = 41300000
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_808FA2D8
    mtc1    $at, $f16                  # $f16 = 11.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f6                   # $f6 = 12.00
    lui     a2, 0x42A0                 # a2 = 42A00000
    lh      a3, 0x0032(s0)             # 00000032
    swc1    $f6, 0x0060(s0)            # 00000060
    jal     func_808F908C
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_808FA2B0
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    b       lbl_808FA2BC
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_808FA2B0:
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_808FA2BC:
    lbu     t8, 0x030C(s0)             # 0000030C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0254(s0)             # 00000254
    andi    t9, t8, 0xFFF9             # t9 = 00000000
    b       lbl_808FA3A8
    sb      t9, 0x030C(s0)             # 0000030C
    mtc1    $at, $f16                  # $f16 = 6.00
lbl_808FA2D8:
    nop
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_808FA3AC
    mtc1    $zero, $f16                # $f16 = 0.00
    lhu     t0, 0x0088(s0)             # 00000088
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    andi    t1, t0, 0x0001             # t1 = 00000000
    bne     t1, $zero, lbl_808FA314
    addiu   a3, $zero, 0x1770          # a3 = 00001770
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f18                  # $f18 = 11.00
    b       lbl_808FA3A8
    swc1    $f18, 0x016C(s0)           # 0000016C
lbl_808FA314:
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    lhu     t2, 0x0088(s0)             # 00000088
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_808FA344
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x0248(s0)             # 00000248
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0248(s0)             # 00000248
lbl_808FA344:
    lwc1    $f8, 0x0080(s0)            # 00000080
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0068(s0)            # 00000068
    sh      $zero, 0x0254(s0)          # 00000254
    swc1    $f8, 0x0028(s0)            # 00000028
    jal     func_808F93DC
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f10                  # $f10 = 240.00
    nop
    c.lt.s  $f10, $f0
    nop
    bc1tl   lbl_808FA398
    lh      t7, 0x0250(s0)             # 00000250
    lh      t6, 0x024C(s0)             # 0000024C
    bnel    t6, $zero, lbl_808FA3AC
    mtc1    $zero, $f16                # $f16 = 0.00
    lh      t7, 0x0250(s0)             # 00000250
lbl_808FA398:
    bnel    t7, $zero, lbl_808FA3AC
    mtc1    $zero, $f16                # $f16 = 0.00
    jal     func_808F982C
    or      a0, s0, $zero              # a0 = 00000000
lbl_808FA3A8:
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808FA3AC:
    lwc1    $f18, 0x0068(s0)           # 00000068
    c.eq.s  $f16, $f18
    nop
    bc1t    lbl_808FA3F8
    nop
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t9, t8, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_808FA3F8
    nop
    lh      v0, 0x007E(s0)             # 0000007E
    lh      t0, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    subu    t1, v0, t0
    addu    t2, t1, v0
    jal     func_8002121C
    sh      t2, 0x0032(s0)             # 00000032
    lhu     t3, 0x0088(s0)             # 00000088
    andi    t4, t3, 0xFFF7             # t4 = 00000000
    sh      t4, 0x0088(s0)             # 00000088
lbl_808FA3F8:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    lh      t5, 0x0248(s0)             # 00000248
    bnel    t5, $zero, lbl_808FA424
    lh      t7, 0x0250(s0)             # 00000250
    lh      t6, 0x0250(s0)             # 00000250
    bnel    t6, $zero, lbl_808FA424
    lh      t7, 0x0250(s0)             # 00000250
    jal     func_808F9708
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0250(s0)             # 00000250
lbl_808FA424:
    bnel    t7, $zero, lbl_808FA43C
    lh      v0, 0x0252(s0)             # 00000252
    lh      t8, 0x0032(s0)             # 00000032
    b       lbl_808FA45C
    sh      t8, 0x00B6(s0)             # 000000B6
    lh      v0, 0x0252(s0)             # 00000252
lbl_808FA43C:
    slti    $at, v0, 0x1F40
    beq     $at, $zero, lbl_808FA450
    addiu   t9, v0, 0x0320             # t9 = 00000320
    sh      t9, 0x0252(s0)             # 00000252
    lh      v0, 0x0252(s0)             # 00000252
lbl_808FA450:
    lh      t0, 0x00B6(s0)             # 000000B6
    addu    t1, t0, v0
    sh      t1, 0x00B6(s0)             # 000000B6
lbl_808FA45C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808FA470:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      t7, 0x1C44(t6)             # 00001C44
    addiu   a1, $zero, 0x200A          # a1 = 0000200A
    sw      t7, 0x0034($sp)
    lh      t8, 0x0148(s0)             # 00000148
    lh      a2, 0x0248(s0)             # 00000248
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   t0, a2, 0xF800             # t0 = FFFFF800
    bne     a2, $zero, lbl_808FA4D8
    cvt.s.w $f2, $f4
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f6, 0x0140(s0)            # 00000140
    addiu   t9, $zero, 0x8000          # t9 = FFFF8000
    c.eq.s  $f12, $f6
    nop
    bc1tl   lbl_808FA684
    lhu     t5, 0x0088(s0)             # 00000088
    b       lbl_808FA680
    sh      t9, 0x0248(s0)             # 00000248
lbl_808FA4D8:
    sh      t0, 0x0248(s0)             # 00000248
    swc1    $f2, 0x0030($sp)
    jal     func_80022FD0
    sh      v1, 0x002E($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lwc1    $f0, 0x0140(s0)            # 00000140
    lh      v1, 0x002E($sp)
    lwc1    $f2, 0x0030($sp)
    c.lt.s  $f0, $f12
    addiu   a0, s0, 0x0024             # a0 = 00000024
    bc1fl   lbl_808FA524
    lbu     t3, 0x0276(s0)             # 00000276
    lh      t1, 0x0148(s0)             # 00000148
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, t1, $at
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f2, $f8
    lbu     t3, 0x0276(s0)             # 00000276
lbl_808FA524:
    andi    t4, t3, 0x0002             # t4 = 00000000
    beql    t4, $zero, lbl_808FA570
    c.eq.s  $f12, $f0
    lw      a1, 0x0270(s0)             # 00000270
    swc1    $f2, 0x0030($sp)
    jal     func_80063F00
    addiu   a1, a1, 0x0024             # a1 = 00000024
    mtc1    v0, $f10                   # $f10 = 0.00
    lwc1    $f2, 0x0030($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    cvt.s.w $f16, $f10
    lwc1    $f0, 0x0140(s0)            # 00000140
    sub.s   $f18, $f16, $f2
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    c.eq.s  $f12, $f0
lbl_808FA570:
    nop
    bc1tl   lbl_808FA630
    lw      v0, 0x0034($sp)
    lh      a2, 0x0248(s0)             # 00000248
    beql    a2, $zero, lbl_808FA630
    lw      v0, 0x0034($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    sll     a0, a2, 16
    sra     a0, a0, 16
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_808FA630
    lw      v0, 0x0034($sp)
    jal     func_800636C4              # sins?
    sh      v1, 0x002E($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lwc1    $f6, 0x0140(s0)            # 00000140
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    mul.s   $f10, $f6, $f8
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x0010($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_800353D0
    sra     a3, a3, 16
    mtc1    $zero, $f12                # $f12 = 0.00
    beq     v0, $zero, lbl_808FA62C
    lh      v1, 0x002E($sp)
    lbu     t0, 0x0276(s0)             # 00000276
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_808FA654
    lh      t4, 0x0148(s0)             # 00000148
    bltz    v1, lbl_808FA620
    subu    v0, $zero, v1
    b       lbl_808FA620
    or      v0, v1, $zero              # v0 = 00000000
lbl_808FA620:
    slti    $at, v0, 0x2001
    beql    $at, $zero, lbl_808FA654
    lh      t4, 0x0148(s0)             # 00000148
lbl_808FA62C:
    lw      v0, 0x0034($sp)
lbl_808FA630:
    sh      $zero, 0x0248(s0)          # 00000248
    addiu   $at, $zero, 0xFEAE         # $at = FFFFFEAE
    lw      t2, 0x0670(v0)             # 00000670
    swc1    $f12, 0x0068(v0)           # 00000068
    and     t3, t2, $at
    sw      t3, 0x0670(v0)             # 00000670
    swc1    $f12, 0x0140(s0)           # 00000140
    swc1    $f12, 0x0144(s0)           # 00000144
    lh      t4, 0x0148(s0)             # 00000148
lbl_808FA654:
    lh      a0, 0x0248(s0)             # 00000248
    jal     func_800636C4              # sins?
    sh      t4, 0x0032(s0)             # 00000032
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lwc1    $f8, 0x0140(s0)            # 00000140
    mtc1    $zero, $f12                # $f12 = 0.00
    mul.s   $f16, $f8, $f10
    nop
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x0068(s0)           # 00000068
lbl_808FA680:
    lhu     t5, 0x0088(s0)             # 00000088
lbl_808FA684:
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_808FA6A8
    swc1    $f12, 0x0144(s0)           # 00000144
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
    swc1    $f12, 0x0144(s0)           # 00000144
lbl_808FA6A8:
    swc1    $f12, 0x0140(s0)           # 00000140
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808FA6C0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5B3C             # a0 = 06005B3C
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x5B3C             # a1 = 06005B3C
    addiu   a0, s0, 0x0154             # a0 = 00000154
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lh      t7, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0xC0C0                 # a2 = C0C00000
    sh      t7, 0x0032(s0)             # 00000032
    lh      a3, 0x0032(s0)             # 00000032
    jal     func_808F908C
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_808FA748
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC0C0                # $at = C0C00000
    mtc1    $at, $f8                   # $f8 = -6.00
    nop
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_808FA748:
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t9, 0x0257(s0)             # 00000257
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    bne     t9, $at, lbl_808FA77C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, $zero, 0x0030          # t0 = 00000030
    sh      t0, 0x024E(s0)             # 0000024E
lbl_808FA77C:
    sw      t1, 0x0198(s0)             # 00000198
    jal     func_80022FD0
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    lui     a1, %hi(func_808FA7AC)     # a1 = 80900000
    addiu   a1, a1, %lo(func_808FA7AC) # a1 = 808FA7AC
    jal     func_808F9080
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808FA7AC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x0032(s0)             # 00000032
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f2
    lui     a2, 0xC110                 # a2 = C1100000
    bc1fl   lbl_808FA80C
    lwc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0060(s0)            # 00000060
lbl_808FA80C:
    lw      a1, 0x002C($sp)
    c.le.s  $f8, $f2
    nop
    bc1fl   lbl_808FA83C
    lbu     t6, 0x0114(s0)             # 00000114
    jal     func_808F908C
    lh      a3, 0x0032(s0)             # 00000032
    mtc1    $zero, $f2                 # $f2 = 0.00
    bnel    v0, $zero, lbl_808FA83C
    lbu     t6, 0x0114(s0)             # 00000114
    swc1    $f2, 0x0068(s0)            # 00000068
    lbu     t6, 0x0114(s0)             # 00000114
lbl_808FA83C:
    bnel    t6, $zero, lbl_808FA870
    lw      $ra, 0x0024($sp)
    lbu     t7, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    beq     t7, $zero, lbl_808FA864
    nop
    jal     func_808F96A4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_808FA870
    lw      $ra, 0x0024($sp)
lbl_808FA864:
    jal     func_808F9888
    lw      a1, 0x002C($sp)
    lw      $ra, 0x0024($sp)
lbl_808FA870:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808FA880:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lwc1    $f0, 0x0068(s0)            # 00000068
    lui     $at, 0x3F00                # $at = 3F000000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_808FA8C0
    lwc1    $f8, 0x0060(s0)            # 00000060
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f8, 0x0060(s0)            # 00000060
lbl_808FA8C0:
    lui     $at, 0x3FC0                # $at = 3FC00000
    c.le.s  $f8, $f2
    nop
    bc1f    lbl_808FA904
    nop
    lwc1    $f10, 0x0068(s0)           # 00000068
    mtc1    $at, $f16                  # $f16 = 1.50
    or      a0, s0, $zero              # a0 = 00000000
    lh      a3, 0x0032(s0)             # 00000032
    mul.s   $f18, $f10, $f16
    mfc1    a2, $f18
    jal     func_808F908C
    nop
    mtc1    $zero, $f2                 # $f2 = 0.00
    bne     v0, $zero, lbl_808FA904
    nop
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808FA904:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0154             # a0 = 00000154
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     v0, $zero, lbl_808FA920
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808F96A4
    swc1    $f2, 0x0068(s0)            # 00000068
lbl_808FA920:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808FA934:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lui     a0, %hi(var_808FB1B4)      # a0 = 80900000
    addiu   a1, s0, 0x0348             # a1 = 00000348
    sw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808FB1B4)  # a0 = 808FB1B4
    lui     a0, %hi(var_808FB1C0)      # a0 = 80900000
    addiu   a1, s0, 0x033C             # a1 = 0000033C
    sw      a1, 0x0034($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808FB1C0)  # a0 = 808FB1C0
    lui     a0, %hi(var_808FB1CC)      # a0 = 80900000
    addiu   a1, s0, 0x0360             # a1 = 00000360
    sw      a1, 0x002C($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808FB1CC)  # a0 = 808FB1CC
    lui     a0, %hi(var_808FB1D8)      # a0 = 80900000
    addiu   a3, s0, 0x0354             # a3 = 00000354
    or      a1, a3, $zero              # a1 = 00000354
    sw      a3, 0x0030($sp)
    jal     func_800AB958
    addiu   a0, a0, %lo(var_808FB1D8)  # a0 = 808FB1D8
    lw      t6, 0x002C($sp)
    lw      a3, 0x0030($sp)
    addiu   a0, s0, 0x02FC             # a0 = 000002FC
    lw      a1, 0x0034($sp)
    lw      a2, 0x0038($sp)
    jal     func_80050B64
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808FA9CC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0034($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0250(a3)             # 00000250
    bnel    t6, $zero, lbl_808FAB58
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x02C1(a3)             # 000002C1
    andi    t7, v0, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_808FAA28
    andi    t8, v0, 0xFF7D             # t8 = 00000000
    lbu     t9, 0x0275(a3)             # 00000275
    lw      t1, 0x0198(a3)             # 00000198
    sb      t8, 0x02C1(a3)             # 000002C1
    andi    t0, t9, 0xFFFD             # t0 = 00000000
    slti    $at, t1, 0x0005
    bne     $at, $zero, lbl_808FAB54
    sb      t0, 0x0275(a3)             # 00000275
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_808F9960
    lw      a1, 0x0034($sp)
    b       lbl_808FAB58
    lw      $ra, 0x0014($sp)
lbl_808FAA28:
    lbu     v0, 0x0275(a3)             # 00000275
    andi    t2, v0, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_808FAB58
    lw      $ra, 0x0014($sp)
    lw      t3, 0x0198(a3)             # 00000198
    slti    $at, t3, 0x0005
    bnel    $at, $zero, lbl_808FAB58
    lw      $ra, 0x0014($sp)
    lbu     v1, 0x00B1(a3)             # 000000B1
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v1, $at, lbl_808FAB54
    sb      t4, 0x0275(a3)             # 00000275
    sh      $zero, 0x0254(a3)          # 00000254
    sb      v1, 0x0257(a3)             # 00000257
    sw      a3, 0x0030($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x027C             # a1 = 0000027C
    jal     func_800283BC
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x0030($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a2, 0x0034($sp)
    lbu     v0, 0x00B1(a3)             # 000000B1
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    beql    v0, $at, lbl_808FAAA8
    lw      t5, 0x0198(a3)             # 00000198
    beq     v1, v0, lbl_808FAAA4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    v0, $at, lbl_808FAB20
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_808FAAA4:
    lw      t5, 0x0198(a3)             # 00000198
lbl_808FAAA8:
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    or      a0, a3, $zero              # a0 = 00000000
    beq     v1, t5, lbl_808FAAD8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_808FA6C0
    sw      a3, 0x0030($sp)
    lw      a3, 0x0030($sp)
    lbu     t6, 0x00B0(a3)             # 000000B0
    beql    t6, $zero, lbl_808FAB58
    lw      $ra, 0x0014($sp)
    b       lbl_808FAB54
    sb      $zero, 0x00AF(a3)          # 000000AF
lbl_808FAAD8:
    bne     v1, v0, lbl_808FAB54
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFF0
    lw      t8, 0x0024(a3)             # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    sw      t8, 0x0000(a1)             # FFFFFFF0
    lw      t7, 0x0028(a3)             # 00000028
    or      a0, a2, $zero              # a0 = 00000000
    sw      t7, 0x0004(a1)             # FFFFFFF4
    lw      t8, 0x002C(a3)             # 0000002C
    sw      t8, 0x0008(a1)             # FFFFFFF8
    lwc1    $f4, 0x0024($sp)
    add.s   $f8, $f4, $f6
    jal     func_800511B8
    swc1    $f8, 0x0024($sp)
    b       lbl_808FAB58
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_808FAB20:
    beq     v0, $at, lbl_808FAB38
    or      a0, a3, $zero              # a0 = 00000000
    lw      t9, 0x0198(a3)             # 00000198
    or      a1, a2, $zero              # a1 = 00000000
    bne     v1, t9, lbl_808FAB4C
    nop
lbl_808FAB38:
    sb      $zero, 0x00AF(a3)          # 000000AF
    jal     func_808F9888
    or      a1, a2, $zero              # a1 = 00000000
    b       lbl_808FAB58
    lw      $ra, 0x0014($sp)
lbl_808FAB4C:
    jal     func_808F9960
    or      a0, a3, $zero              # a0 = 00000000
lbl_808FAB54:
    lw      $ra, 0x0014($sp)
lbl_808FAB58:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_808FAB64:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    or      a0, s2, $zero              # a0 = 00000000
    beql    t6, $zero, lbl_808FABA8
    lbu     t7, 0x00B1(s2)             # 000000B1
    jal     func_808FA9CC
    or      a1, s3, $zero              # a1 = 00000000
    lbu     t7, 0x00B1(s2)             # 000000B1
lbl_808FABA8:
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beql    t7, $at, lbl_808FADC4
    addiu   s1, s2, 0x0264             # s1 = 00000264
    lh      v0, 0x024C(s2)             # 0000024C
    beq     v0, $zero, lbl_808FABC4
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x024C(s2)             # 0000024C
lbl_808FABC4:
    lw      t9, 0x0244(s2)             # 00000244
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      v0, 0x0250(s2)             # 00000250
    beq     v0, $zero, lbl_808FAD90
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0250(s2)             # 00000250
    lh      v0, 0x0250(s2)             # 00000250
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s3
    bne     v0, $zero, lbl_808FAD6C
    or      a0, s2, $zero              # a0 = 00000000
    lw      t1, 0x1DE4(t1)             # 00011DE4
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t2, t1,  2
    addu    t2, t2, t1
    sll     t2, t2,  1
    mtc1    t2, $f4                    # $f4 = 0.00
    bgez    t2, lbl_808FAC28
    cvt.s.w $f20, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f20, $f20, $f6
lbl_808FAC28:
    jal     func_808F93DC
    or      a1, s3, $zero              # a1 = 00000000
    lwc1    $f8, 0x0028(s2)            # 00000028
    lw      a3, 0x0024(s2)             # 00000024
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x002C(s2)           # 0000002C
    sw      $zero, 0x0024($sp)
    sw      t3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_80025110              # ActorSpawn
    swc1    $f10, 0x0014($sp)
    beq     v0, $zero, lbl_808FAC74
    or      a0, s2, $zero              # a0 = 00000000
    sh      $zero, 0x01E8(v0)          # 000001E8
lbl_808FAC74:
    jal     func_80022FD0
    addiu   a1, $zero, 0x3846          # a1 = 00003846
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, s2, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    lui     $at, 0x40E0                # $at = 40E00000
    lui     s1, %hi(var_808FB1E4)      # s1 = 80900000
    mtc1    $at, $f22                  # $f22 = 7.00
    addiu   s1, s1, %lo(var_808FB1E4)  # s1 = 808FB1E4
    addiu   s0, $zero, 0x0009          # s0 = 00000009
lbl_808FACA4:
    jal     func_800CF470
    mov.s   $f12, $f20
    mul.s   $f16, $f0, $f22
    lwc1    $f18, 0x0024(s2)           # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    add.s   $f4, $f16, $f18
    jal     func_80026D90
    swc1    $f4, 0x0070($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lwc1    $f6, 0x0028(s2)            # 00000028
    mov.s   $f12, $f20
    mul.s   $f18, $f0, $f16
    add.s   $f10, $f6, $f8
    add.s   $f4, $f18, $f10
    jal     func_800D2CD0
    swc1    $f4, 0x0074($sp)
    mul.s   $f6, $f0, $f22
    lwc1    $f8, 0x002C(s2)            # 0000002C
    lui     t4, %hi(var_808FB1F0)      # t4 = 80900000
    lui     t5, %hi(var_808FB1F4)      # t5 = 80900000
    addiu   t5, t5, %lo(var_808FB1F4)  # t5 = 808FB1F4
    addiu   t4, t4, %lo(var_808FB1F0)  # t4 = 808FB1F0
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    add.s   $f16, $f6, $f8
    addiu   t7, $zero, 0x002D          # t7 = 0000002D
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t8, 0x0020($sp)
    swc1    $f16, 0x0078($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t4, 0x0010($sp)
    sw      t5, 0x0014($sp)
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0070            # a1 = FFFFFFE8
    or      a2, s1, $zero              # a2 = 808FB1E4
    jal     func_8001BE64
    or      a3, s1, $zero              # a3 = 808FB1E4
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f18                  # $f18 = 60.00
    addiu   s0, s0, 0xFFFF             # s0 = 00000008
    bgez    s0, lbl_808FACA4
    add.s   $f20, $f20, $f18
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
    b       lbl_808FAEE8
    lw      $ra, 0x004C($sp)
lbl_808FAD6C:
    andi    t9, v0, 0x0003             # t9 = 00000000
    bne     t9, $zero, lbl_808FAD90
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
lbl_808FAD90:
    jal     func_8002121C
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    addiu   t1, $zero, 0x001D          # t1 = 0000001D
    sw      t1, 0x0014($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a3, 0x41E0                 # a3 = 41E00000
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
    addiu   s1, s2, 0x0264             # s1 = 00000264
lbl_808FADC4:
    or      a1, s1, $zero              # a1 = 00000264
    jal     func_80050B00
    or      a0, s2, $zero              # a0 = 00000000
    addiu   s0, s2, 0x02B0             # s0 = 000002B0
    or      a1, s0, $zero              # a1 = 000002B0
    jal     func_80050B00
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s3, $at
    sw      a1, 0x005C($sp)
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s1, $zero              # a2 = 00000264
    lh      t2, 0x001C(s2)             # 0000001C
    lui     $at, %hi(var_808FB2A0)     # $at = 80900000
    or      a0, s3, $zero              # a0 = 00000000
    beq     t2, $zero, lbl_808FAEDC
    lw      a1, 0x005C($sp)
    lwc1    $f4, 0x0050(s2)            # 00000050
    lwc1    $f6, %lo(var_808FB2A0)($at)
    or      a0, s2, $zero              # a0 = 00000000
    mul.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_80020F04
    nop
    lbu     t3, 0x0114(s2)             # 00000114
    or      a0, s3, $zero              # a0 = 00000000
    lw      a1, 0x005C($sp)
    bnel    t3, $zero, lbl_808FAE4C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s0, $zero              # a2 = 000002B0
    or      a0, s3, $zero              # a0 = 00000000
lbl_808FAE4C:
    lw      a1, 0x005C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a2, s1, $zero              # a2 = 00000264
    lw      t4, 0x0198(s2)             # 00000198
    slti    $at, t4, 0x0004
    bnel    $at, $zero, lbl_808FAEE8
    lw      $ra, 0x004C($sp)
    lh      t5, 0x0254(s2)             # 00000254
    blezl   t5, lbl_808FAEE8
    lw      $ra, 0x004C($sp)
    lbu     v0, 0x030C(s2)             # 0000030C
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    andi    t6, v0, 0x0004             # t6 = 00000000
    bne     t6, $zero, lbl_808FAEC8
    andi    t9, v0, 0xFFF9             # t9 = 00000000
    andi    t7, v0, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_808FAEB4
    or      a0, s3, $zero              # a0 = 00000000
    lw      a0, 0x1C44(s3)             # 00001C44
    lw      t8, 0x0300(s2)             # 00000300
    bnel    a0, t8, lbl_808FAEB4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
    or      a0, s3, $zero              # a0 = 00000000
lbl_808FAEB4:
    lw      a1, 0x005C($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s2, 0x02FC             # a2 = 000002FC
    b       lbl_808FAEE8
    lw      $ra, 0x004C($sp)
lbl_808FAEC8:
    sb      t9, 0x030C(s2)             # 0000030C
    jal     func_808F9960
    sw      $zero, 0x0300(s2)          # 00000300
    b       lbl_808FAEE8
    lw      $ra, 0x004C($sp)
lbl_808FAEDC:
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s0, $zero              # a2 = 000002B0
    lw      $ra, 0x004C($sp)
lbl_808FAEE8:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_808FAF08:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_808FAF40
    lw      a0, 0x0028($sp)
    lh      t6, 0x0254(a0)             # 00000254
    beql    t6, $zero, lbl_808FAF44
    lw      $ra, 0x0014($sp)
    jal     func_808FA934
    or      a1, a2, $zero              # a1 = 00000000
lbl_808FAF40:
    lw      $ra, 0x0014($sp)
lbl_808FAF44:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808FAF50:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x006C($sp)
    lw      t6, 0x006C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0050($sp)
    lw      t0, 0x0050($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     t2, %hi(func_808FAF08)     # t2 = 80900000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t1, 0x0256(s0)             # 00000256
    addiu   t2, t2, %lo(func_808FAF08) # t2 = 808FAF08
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      a1, 0x0158(s0)             # 00000158
    lw      a2, 0x0174(s0)             # 00000174
    sw      s0, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x006C($sp)
    lh      t3, 0x024E(s0)             # 0000024E
    beql    t3, $zero, lbl_808FB088
    lw      $ra, 0x003C($sp)
    lh      t6, 0x024E(s0)             # 0000024E
    lbu     t4, 0x0114(s0)             # 00000114
    lui     t1, %hi(var_808FB210)      # t1 = 80900000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x024E(s0)             # 0000024E
    lh      t0, 0x024E(s0)             # 0000024E
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0114(s0)             # 00000114
    andi    t8, t0, 0x0003             # t8 = 00000000
    bne     t8, $zero, lbl_808FB084
    sra     v1, t0,  2
    sll     t9, v1,  2
    subu    t9, t9, v1
    sll     t9, t9,  2
    addiu   t1, t1, %lo(var_808FB210)  # t1 = 808FB210
    addu    v0, t9, t1
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000004
    lui     $at, %hi(var_808FB2A4)     # $at = 80900000
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(v0)            # 00000008
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    swc1    $f8, 0x0058($sp)
    lwc1    $f16, 0x0028(s0)           # 00000028
    addiu   t4, $zero, 0x00FA          # t4 = 000000FA
    addiu   t5, $zero, 0x00EB          # t5 = 000000EB
    add.s   $f18, $f10, $f16
    lwc1    $f10, %lo(var_808FB2A4)($at)
    addiu   t6, $zero, 0x00F5          # t6 = 000000F5
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f18, 0x005C($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    add.s   $f8, $f4, $f6
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    swc1    $f8, 0x0060($sp)
    sw      t2, 0x0010($sp)
    lw      a0, 0x006C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0058            # a2 = FFFFFFF0
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C
    swc1    $f10, 0x0028($sp)
lbl_808FB084:
    lw      $ra, 0x003C($sp)
lbl_808FB088:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop
    nop
    nop

.section .data

var_808FB0A0: .word 0x00540500, 0x04000015, 0x00380000, 0x0000037C
.word func_808F91B8
.word func_808F9384
.word func_808FAB64
.word func_808FAF50
var_808FB0C0: .word \
0x05000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x000F0046, 0x00000000, 0x00000000
var_808FB0EC: .word \
0x09000D00, 0x00010000, 0x00000000, 0x00000000, \
0x00000000, 0x00400106, 0x00000000, 0x00010000, \
0x000F0046, 0x00000000, 0x00000000
var_808FB118: .word \
0x0A110000, 0x00030000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x00000000, 0x00000000, 0x01000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_808FB168: .word \
0x100201F2, 0x60F2F260, 0x01F2F4F2, 0xD4F20202, \
0x02E0D3E0, 0x000001F4, 0xF202F8F4, 0x0000F400
var_808FB188: .word 0x89170013, 0xB86CF060, 0x304C14B4
var_808FB194: .word 0x64646400
var_808FB198: .word 0x28282800
var_808FB19C: .word 0x00000000, 0xBFC00000, 0x00000000
var_808FB1A8: .word 0x00000000, 0xBE4CCCCD, 0x00000000
var_808FB1B4: .word 0x451C4000, 0x45DAC000, 0x00000000
var_808FB1C0: .word 0xC51C4000, 0x00000000, 0x00000000
var_808FB1CC: .word 0x451C4000, 0x45DAC000, 0x457A0000
var_808FB1D8: .word 0xC51C4000, 0x00000000, 0x457A0000
var_808FB1E4: .word 0x00000000, 0x00000000, 0x00000000
var_808FB1F0: .word 0x969696FF
var_808FB1F4: .word \
0x64646496, 0x44898000, 0xC42F0000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000
var_808FB210: .word \
0x41A00000, 0x42200000, 0x00000000, 0x41200000, \
0x42700000, 0x41200000, 0xC1200000, 0x42700000, \
0x41200000, 0xC1A00000, 0x42200000, 0x00000000, \
0x41200000, 0x42700000, 0xC1200000, 0xC1200000, \
0x42700000, 0xC1200000, 0x00000000, 0x42200000, \
0xC1A00000, 0x41200000, 0x41A00000, 0x41200000, \
0x41200000, 0x41A00000, 0xC1200000, 0x00000000, \
0x42200000, 0x41A00000, 0xC1200000, 0x41A00000, \
0x41200000, 0xC1200000, 0x41A00000, 0xC1200000

.section .rodata

var_808FB2A0: .word 0x458CA000
var_808FB2A4: .word 0x3FB33333, 0x00000000, 0x00000000

