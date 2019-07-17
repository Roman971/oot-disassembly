.section .text
func_809ECDF0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0198             # a1 = 00000198
    sw      a1, 0x001C($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004AB7C
    sw      a2, 0x0028($sp)
    lui     a3, %hi(var_809ED9F0)      # a3 = 809F0000
    lw      a1, 0x001C($sp)
    lw      a2, 0x0028($sp)
    addiu   a3, a3, %lo(var_809ED9F0)  # a3 = 809ED9F0
    jal     func_8004ACEC
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f4                   # $f4 = 2.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sh      t6, 0x014A(a2)             # 0000014A
    addiu   v1, a2, 0x0024             # v1 = 00000024
    swc1    $f4, 0x0144(a2)            # 00000144
    swc1    $f6, 0x0140(a2)            # 00000140
    lw      t8, 0x0000(v1)             # 00000024
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    sll     t1, a0,  2
    sw      t8, 0x0150(a2)             # 00000150
    lw      t7, 0x0004(v1)             # 00000028
    subu    t1, t1, a0
    sll     t1, t1,  2
    sw      t7, 0x0154(a2)             # 00000154
    lw      t8, 0x0008(v1)             # 0000002C
    addu    v0, a2, t1
    sw      t8, 0x0158(a2)             # 00000158
    lw      t0, 0x0000(v1)             # 00000024
    sw      t0, 0x015C(a2)             # 0000015C
    lw      t9, 0x0004(v1)             # 00000028
    sw      t9, 0x0160(a2)             # 00000160
    lw      t0, 0x0008(v1)             # 0000002C
    sw      t0, 0x0164(a2)             # 00000164
    lw      t3, 0x0000(v1)             # 00000024
    lui     t0, %hi(func_809ECF3C)     # t0 = 809F0000
    addiu   t0, t0, %lo(func_809ECF3C) # t0 = 809ECF3C
    sw      t3, 0x0150(v0)             # 00000150
    lw      t2, 0x0004(v1)             # 00000028
    sw      t2, 0x0154(v0)             # 00000154
    lw      t3, 0x0008(v1)             # 0000002C
    sw      t3, 0x0158(v0)             # 00000158
    lw      t5, 0x0000(v1)             # 00000024
    sw      t5, 0x015C(v0)             # 0000015C
    lw      t4, 0x0004(v1)             # 00000028
    sw      t4, 0x0160(v0)             # 00000160
    lw      t5, 0x0008(v1)             # 0000002C
    sw      t5, 0x0164(v0)             # 00000164
    lw      t7, 0x0000(v1)             # 00000024
    sw      t7, 0x0168(v0)             # 00000168
    lw      t6, 0x0004(v1)             # 00000028
    sw      t6, 0x016C(v0)             # 0000016C
    lw      t7, 0x0008(v1)             # 0000002C
    sw      t7, 0x0170(v0)             # 00000170
    lw      t9, 0x0000(v1)             # 00000024
    sw      t9, 0x0174(v0)             # 00000174
    lw      t8, 0x0004(v1)             # 00000028
    sw      t8, 0x0178(v0)             # 00000178
    lw      t9, 0x0008(v1)             # 0000002C
    sw      t9, 0x017C(v0)             # 0000017C
    sh      $zero, 0x014E(a2)          # 0000014E
    sw      t0, 0x013C(a2)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809ECF10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0198             # a1 = 00000198
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809ECF3C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     t7, %hi(var_809EDA1C)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809EDA1C)  # t7 = 809EDA1C
    lw      t9, 0x0000(t7)             # 809EDA1C
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 809EDA20
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 809EDA24
    sw      t8, 0x0004(t6)             # FFFFFFF8
    jal     func_800AA6EC
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lh      t0, 0x0032(s0)             # 00000032
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f8                   # $f8 = 32768.00
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_809EDAA0)     # $at = 809F0000
    lwc1    $f16, %lo(var_809EDAA0)($at)
    cvt.s.w $f6, $f4
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lh      t1, 0x0030(s0)             # 00000030
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_809EDAA4)     # $at = 809F0000
    lwc1    $f10, %lo(var_809EDAA4)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AA9E0
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    addiu   a1, s0, 0x005C             # a1 = 0000005C
    jal     func_800AB958
    swc1    $f16, 0x002C($sp)
    jal     func_800AA724
    nop
    sh      $zero, 0x0034(s0)          # 00000034
    lh      v0, 0x0034(s0)             # 00000034
    lui     t2, %hi(func_809ED028)     # t2 = 809F0000
    addiu   t2, t2, %lo(func_809ED028) # t2 = 809ED028
    sw      t2, 0x013C(s0)             # 0000013C
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x0030(s0)             # 00000030
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809ED028:
    addiu   $sp, $sp, 0xFF40           # $sp -= 0xC0
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    addiu   s0, $sp, 0x0084            # s0 = FFFFFFC4
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s2, $sp, 0x0078            # s2 = FFFFFFB8
    addiu   s6, $sp, 0x00B0            # s6 = FFFFFFF0
    addiu   s7, $sp, 0x00A4            # s7 = FFFFFFE4
    addiu   s8, $sp, 0x0094            # s8 = FFFFFFD4
    sw      $ra, 0x005C($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x00C4($sp)
    lui     t6, %hi(var_809EDA28)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809EDA28)  # t6 = 809EDA28
    lw      t8, 0x0000(t6)             # 809EDA28
    lui     t9, %hi(var_809EDA34)      # t9 = 809F0000
    addiu   t9, t9, %lo(var_809EDA34)  # t9 = 809EDA34
    sw      t8, 0x0000(s6)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 809EDA2C
    lui     t2, %hi(var_809EDA40)      # t2 = 809F0000
    addiu   t2, t2, %lo(var_809EDA40)  # t2 = 809EDA40
    sw      t7, 0x0004(s6)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 809EDA30
    lui     t5, %hi(var_809EDA44)      # t5 = 809F0000
    lui     t6, %hi(var_809EDA48)      # t6 = 809F0000
    sw      t8, 0x0008(s6)             # FFFFFFF8
    lw      t1, 0x0000(t9)             # 809EDA34
    addiu   t6, t6, %lo(var_809EDA48)  # t6 = 809EDA48
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    sw      t1, 0x0000(s7)             # FFFFFFE4
    lw      t0, 0x0004(t9)             # 809EDA38
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    sw      t0, 0x0004(s7)             # FFFFFFE8
    lw      t1, 0x0008(t9)             # 809EDA3C
    lui     t9, %hi(var_809EDA54)      # t9 = 809F0000
    addiu   t9, t9, %lo(var_809EDA54)  # t9 = 809EDA54
    sw      t1, 0x0008(s7)             # FFFFFFEC
    lw      t4, 0x0000(t2)             # 809EDA40
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s1, 0x0140             # a0 = 00000140
    sw      t4, 0x0000(s8)             # FFFFFFD4
    lw      t5, %lo(var_809EDA44)(t5)
    sw      t5, 0x0090($sp)
    lw      t8, 0x0000(t6)             # 809EDA48
    sw      t8, 0x0000(s0)             # FFFFFFC4
    lw      t7, 0x0004(t6)             # 809EDA4C
    sw      t7, 0x0004(s0)             # FFFFFFC8
    lw      t8, 0x0008(t6)             # 809EDA50
    sw      t8, 0x0008(s0)             # FFFFFFCC
    lw      t1, 0x0000(t9)             # 809EDA54
    sw      t1, 0x0000(s2)             # FFFFFFB8
    lw      t0, 0x0004(t9)             # 809EDA58
    sw      t0, 0x0004(s2)             # FFFFFFBC
    lw      t1, 0x0008(t9)             # 809EDA5C
    sw      t1, 0x0008(s2)             # FFFFFFC0
    lh      t2, 0x0034(s1)             # 00000034
    lh      t4, 0x014A(s1)             # 0000014A
    addiu   t3, t2, 0x1388             # t3 = 809EEDC8
    bne     t4, $zero, lbl_809ED148
    sh      t3, 0x0034(s1)             # 00000034
    mtc1    $zero, $f20                # $f20 = 0.00
    nop
    swc1    $f20, 0x0144(s1)           # 00000144
lbl_809ED148:
    mtc1    $zero, $f20                # $f20 = 0.00
    jal     func_80064280
    lw      a1, 0x0144(s1)             # 00000144
    lh      t5, 0x014A(s1)             # 0000014A
    lui     $at, %hi(var_809EDAA8)     # $at = 809F0000
    bnel    t5, $zero, lbl_809ED190
    lh      t6, 0x001C(s1)             # 0000001C
    lwc1    $f4, 0x0140(s1)            # 00000140
    lwc1    $f6, %lo(var_809EDAA8)($at)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809ED190
    lh      t6, 0x001C(s1)             # 0000001C
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_809ED364
    lw      $ra, 0x005C($sp)
    lh      t6, 0x001C(s1)             # 0000001C
lbl_809ED190:
    lui     $at, %hi(var_809EDAAC)     # $at = 809F0000
    bnel    t6, $zero, lbl_809ED27C
    lwc1    $f10, 0x0140(s1)           # 00000140
    lbu     t7, 0x01A8(s1)             # 000001A8
    andi    t8, t7, 0x0004             # t8 = 00000000
    beql    t8, $zero, lbl_809ED27C
    lwc1    $f10, 0x0140(s1)           # 00000140
    jal     func_80079B64
    lw      a0, 0x00C4($sp)
    beq     v0, $zero, lbl_809ED22C
    addiu   a1, s1, 0x0024             # a1 = 00000024
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x1808          # a1 = 00001808
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f0                   # $f0 = -1.00
    lwc1    $f8, 0x005C(s1)            # 0000005C
    lui     $at, 0xBF00                # $at = BF000000
    mtc1    $at, $f18                  # $f18 = -0.50
    mul.s   $f10, $f8, $f0
    lwc1    $f16, 0x0060(s1)           # 00000060
    lwc1    $f6, 0x0064(s1)            # 00000064
    lbu     t9, 0x01A8(s1)             # 000001A8
    mul.s   $f4, $f16, $f18
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    andi    t1, t9, 0xFFE9             # t1 = 00000000
    mul.s   $f8, $f6, $f0
    sb      t1, 0x01A8(s1)             # 000001A8
    ori     t2, t1, 0x0008             # t2 = 00000008
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t2, 0x01A8(s1)             # 000001A8
    sw      t3, 0x01B0(s1)             # 000001B0
    sh      t4, 0x014A(s1)             # 0000014A
    sh      t5, 0x001C(s1)             # 0000001C
    swc1    $f10, 0x005C(s1)           # 0000005C
    swc1    $f4, 0x0060(s1)            # 00000060
    beq     $zero, $zero, lbl_809ED360
    swc1    $f8, 0x0064(s1)            # 00000064
lbl_809ED22C:
    sh      $zero, 0x014A(s1)          # 0000014A
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lw      a0, 0x00C4($sp)
    or      a2, s2, $zero              # a2 = FFFFFFB8
    jal     func_8001C97C
    or      a3, s0, $zero              # a3 = FFFFFFC4
    swc1    $f20, 0x0064(s1)           # 00000064
    swc1    $f20, 0x0060(s1)           # 00000060
    swc1    $f20, 0x005C(s1)           # 0000005C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x399D          # a1 = 0000399D
    lui     t8, %hi(func_809ED398)     # t8 = 809F0000
    addiu   t8, t8, %lo(func_809ED398) # t8 = 809ED398
    beq     $zero, $zero, lbl_809ED360
    sw      t8, 0x013C(s1)             # 0000013C
    lwc1    $f10, 0x0140(s1)           # 00000140
lbl_809ED27C:
    lwc1    $f16, %lo(var_809EDAAC)($at)
    lui     $at, 0x447A                # $at = 447A0000
    or      s0, $zero, $zero           # s0 = 00000000
    c.lt.s  $f10, $f16
    addiu   s5, $zero, 0x000A          # s5 = 0000000A
    addiu   s4, $sp, 0x0098            # s4 = FFFFFFD8
    bc1tl   lbl_809ED364
    lw      $ra, 0x005C($sp)
    mtc1    $at, $f18                  # $f18 = 1000.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    trunc.w.s $f4, $f18
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f22                  # $f22 = 20.00
    trunc.w.s $f8, $f6
    mfc1    s2, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    sll     s2, s2, 16
    mfc1    s3, $f8
    sra     s2, s2, 16
lbl_809ED2D0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f16, 0x0140(s1)           # 00000140
    sub.s   $f10, $f0, $f20
    lwc1    $f6, 0x0024(s1)            # 00000024
    mul.s   $f18, $f16, $f22
    nop
    mul.s   $f4, $f10, $f18
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0098($sp)
    lwc1    $f10, 0x0140(s1)           # 00000140
    sub.s   $f16, $f0, $f20
    lwc1    $f6, 0x0028(s1)            # 00000028
    mul.s   $f18, $f10, $f22
    addiu   t1, $sp, 0x0090            # t1 = FFFFFFD0
    lw      a0, 0x00C4($sp)
    or      a1, s4, $zero              # a1 = FFFFFFD8
    or      a2, s6, $zero              # a2 = FFFFFFF0
    or      a3, s7, $zero              # a3 = FFFFFFE4
    mul.s   $f4, $f16, $f18
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x009C($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    sw      s3, 0x001C($sp)
    sw      s2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      s8, 0x0010($sp)
    jal     func_8001C6A8
    swc1    $f10, 0x00A0($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_809ED2D0
    nop
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x319C          # a1 = 0000319C
lbl_809ED360:
    lw      $ra, 0x005C($sp)
lbl_809ED364:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
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
    addiu   $sp, $sp, 0x00C0           # $sp += 0xC0


func_809ED398:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s1, 0x003C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    addiu   s5, $sp, 0x008C            # s5 = FFFFFFF4
    addiu   s6, $sp, 0x0080            # s6 = FFFFFFE8
    addiu   s7, $sp, 0x0070            # s7 = FFFFFFD8
    addiu   s8, $sp, 0x006C            # s8 = FFFFFFD4
    sw      $ra, 0x005C($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     t6, %hi(var_809EDA60)      # t6 = 809F0000
    addiu   t6, t6, %lo(var_809EDA60)  # t6 = 809EDA60
    lw      t8, 0x0000(t6)             # 809EDA60
    lui     t9, %hi(var_809EDA6C)      # t9 = 809F0000
    addiu   t9, t9, %lo(var_809EDA6C)  # t9 = 809EDA6C
    sw      t8, 0x0000(s5)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 809EDA64
    lui     t2, %hi(var_809EDA78)      # t2 = 809F0000
    addiu   t2, t2, %lo(var_809EDA78)  # t2 = 809EDA78
    sw      t7, 0x0004(s5)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 809EDA68
    lui     t5, %hi(var_809EDA7C)      # t5 = 809F0000
    addiu   t5, t5, %lo(var_809EDA7C)  # t5 = 809EDA7C
    sw      t8, 0x0008(s5)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 809EDA6C
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0x4000                # $at = 40000000
    sw      t1, 0x0000(s6)             # FFFFFFE8
    lw      t0, 0x0004(t9)             # 809EDA70
    addiu   s3, $zero, 0x0014          # s3 = 00000014
    sw      t0, 0x0004(s6)             # FFFFFFEC
    lw      t1, 0x0008(t9)             # 809EDA74
    sw      t1, 0x0008(s6)             # FFFFFFF0
    lw      t4, 0x0000(t2)             # 809EDA78
    sw      t4, 0x0000(s7)             # FFFFFFD8
    lw      t7, 0x0000(t5)             # 809EDA7C
    sw      t7, 0x0000(s8)             # FFFFFFD4
    lh      t8, 0x014C(s1)             # 0000014C
    bnel    t8, $zero, lbl_809ED510
    lw      $ra, 0x005C($sp)
    mtc1    $at, $f22                  # $f22 = 2.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f20                  # $f20 = 8.00
    addiu   s2, $sp, 0x0074            # s2 = FFFFFFDC
    lwc1    $f4, 0x0024(s1)            # 00000024
lbl_809ED470:
    mov.s   $f12, $f20
    swc1    $f4, 0x0074($sp)
    lwc1    $f6, 0x0028(s1)            # 00000028
    swc1    $f6, 0x0078($sp)
    lwc1    $f8, 0x002C(s1)            # 0000002C
    jal     func_80026D90
    swc1    $f8, 0x007C($sp)
    swc1    $f0, 0x0080($sp)
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x0084($sp)
    jal     func_80026D90
    mov.s   $f12, $f20
    addiu   t9, $zero, 0x07D0          # t9 = 000007D0
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    swc1    $f0, 0x0088($sp)
    sw      t0, 0x001C($sp)
    sw      t9, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFDC
    or      a2, s5, $zero              # a2 = FFFFFFF4
    or      a3, s6, $zero              # a3 = FFFFFFE8
    sw      s7, 0x0010($sp)
    jal     func_8001C6A8
    sw      s8, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s3, lbl_809ED470
    lwc1    $f4, 0x0024(s1)            # 00000024
    lh      t2, 0x014E(s1)             # 0000014E
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x014C(s1)             # 0000014C
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x014E(s1)             # 0000014E
    lh      t4, 0x014E(s1)             # 0000014E
    slti    $at, t4, 0x0006
    bnel    $at, $zero, lbl_809ED510
    lw      $ra, 0x005C($sp)
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x005C($sp)
lbl_809ED510:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
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
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_809ED544:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    lw      a1, 0x0140(s0)             # 00000140
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jalr    $ra, t9
    nop
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t0, s0, 0x0024             # t0 = 00000024
    lw      t7, 0x0000(t0)             # 00000024
    addiu   a1, s0, 0x0030             # a1 = 00000030
    lui     $at, 0x40A0                # $at = 40A00000
    sw      t7, 0x0150(s0)             # 00000150
    lw      t6, 0x0004(t0)             # 00000028
    mtc1    $at, $f0                   # $f0 = 5.00
    addiu   v1, a1, 0x015C             # v1 = 0000018C
    sw      t6, 0x0154(s0)             # 00000154
    lw      t7, 0x0008(t0)             # 0000002C
    addiu   a0, a1, 0x0150             # a0 = 00000180
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    sw      t7, 0x0158(s0)             # 00000158
lbl_809ED5B4:
    lw      t1, 0x0000(a0)             # 00000180
    addiu   v0, v0, 0xFFFF             # v0 = 00000003
    addiu   v1, v1, 0xFFF4             # v1 = 00000180
    sw      t1, 0x000C(v1)             # 0000018C
    lw      t8, 0x0004(a0)             # 00000184
    addiu   a0, a0, 0xFFF4             # a0 = 00000174
    sw      t8, 0x0010(v1)             # 00000190
    lw      t1, 0x0014(a0)             # 00000188
    bgez    v0, lbl_809ED5B4
    sw      t1, 0x0014(v1)             # 00000194
    lh      v0, 0x014A(s0)             # 0000014A
    mfc1    a2, $f0
    mfc1    a3, $f0
    beq     v0, $zero, lbl_809ED5F8
    or      a1, s0, $zero              # a1 = 00000000
    addiu   t2, v0, 0xFFFF             # t2 = 00000002
    sh      t2, 0x014A(s0)             # 0000014A
lbl_809ED5F8:
    lh      v0, 0x014C(s0)             # 0000014C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    beq     v0, $zero, lbl_809ED614
    addiu   t4, $zero, 0x001D          # t4 = 0000001D
    addiu   t3, v0, 0xFFFF             # t3 = 00000002
    sh      t3, 0x014C(s0)             # 0000014C
lbl_809ED614:
    lw      a0, 0x004C($sp)
    swc1    $f4, 0x0010($sp)
    sw      t4, 0x0014($sp)
    jal     func_80021E6C
    sw      t0, 0x002C($sp)
    lui     $at, %hi(var_809EDAB0)     # $at = 809F0000
    lwc1    $f6, %lo(var_809EDAB0)($at)
    lwc1    $f0, 0x0140(s0)            # 00000140
    lui     t5, %hi(func_809ED398)     # t5 = 809F0000
    addiu   t5, t5, %lo(func_809ED398) # t5 = 809ED398
    c.lt.s  $f0, $f6
    nop
    bc1tl   lbl_809ED730
    lw      $ra, 0x0024($sp)
    sw      t5, 0x0030($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    lui     $at, 0x4170                # $at = 41700000
    beql    t5, t9, lbl_809ED730
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f8                   # $f8 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0xBF40                # $at = BF400000
    mtc1    $at, $f6                   # $f6 = -0.75
    lui     $at, 0xC170                # $at = C1700000
    lh      t1, 0x014A(s0)             # 0000014A
    mul.s   $f8, $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f18, $f10, $f16
    mtc1    $at, $f10                  # $f10 = -15.00
    addiu   a1, s0, 0x0198             # a1 = 00000198
    trunc.w.s $f4, $f18
    add.s   $f16, $f8, $f10
    mfc1    v0, $f4
    trunc.w.s $f18, $f16
    sh      v0, 0x01D8(s0)             # 000001D8
    sh      v0, 0x01DA(s0)             # 000001DA
    mfc1    t8, $f18
    beq     t1, $zero, lbl_809ED6EC
    sh      t8, 0x01DC(s0)             # 000001DC
    jal     func_80050B00
    sw      a1, 0x0028($sp)
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0034($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0028($sp)
    lw      a1, 0x0034($sp)
    lw      a0, 0x004C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0028($sp)
lbl_809ED6EC:
    lw      a0, 0x004C($sp)
    lw      a1, 0x002C($sp)
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_80030D08
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beql    v0, $zero, lbl_809ED730
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x399D          # a1 = 0000399D
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x0060(s0)            # 00000060
    jal     func_80022FD0
    swc1    $f0, 0x005C(s0)            # 0000005C
    lw      t2, 0x0030($sp)
    sw      t2, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0024($sp)
lbl_809ED730:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_809ED740:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s6, a1, $zero              # s6 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lw      a0, 0x0000(s6)             # 00000000
    jal     func_8007E2C0
    or      s3, a0, $zero              # s3 = 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0xFFFF                 # t8 = FFFF0000
    ori     t8, t8, 0x00FF             # t8 = FFFF00FF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s3)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    lui     t1, 0xFF00                 # t1 = FF000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s3)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t5, 0xDB06                 # t5 = DB060000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s3)             # 000002D0
    ori     t5, t5, 0x0020             # t5 = DB060020
    lui     a2, %hi(var_809EDA80)      # a2 = 809F0000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a2, %lo(var_809EDA80)(a2)
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t7, a2,  4
    srl     t8, t7, 28
    sll     t9, t8,  2
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t0
    addu    t2, t1, $at
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_800AA6EC
    nop
    lh      s2, 0x014E(s4)             # 0000014E
    addiu   s7, $zero, 0x000C          # s7 = 0000000C
    slti    $at, s2, 0x0006
    beq     $at, $zero, lbl_809ED97C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f30                  # $f30 = 1000.00
    lui     $at, %hi(var_809EDAB4)     # $at = 809F0000
    lwc1    $f28, %lo(var_809EDAB4)($at)
    lui     $at, %hi(var_809EDAB8)     # $at = 809F0000
    lui     s8, 0xDA38                 # s8 = DA380000
    mtc1    $zero, $f24                # $f24 = 0.00
    ori     s8, s8, 0x0003             # s8 = DA380003
    lwc1    $f26, %lo(var_809EDAB8)($at)
    mtc1    s2, $f4                    # $f4 = 0.00
lbl_809ED880:
    lwc1    $f6, 0x0050(s4)            # 00000050
    cvt.s.w $f22, $f4
    mul.s   $f8, $f22, $f28
    sub.s   $f20, $f6, $f8
    c.lt.s  $f20, $f24
    nop
    bc1fl   lbl_809ED8A8
    c.le.s  $f26, $f20
    mov.s   $f20, $f24
    c.le.s  $f26, $f20
lbl_809ED8A8:
    nop
    bc1fl   lbl_809ED95C
    lwc1    $f4, 0x0140(s4)            # 00000140
    multu   s2, s7
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     s5, 0x0600                 # s5 = 06000000
    addiu   s5, s5, 0x3510             # s5 = 06003510
    addu    s0, s6, $at
    or      a3, $zero, $zero           # a3 = 00000000
    mflo    t3
    addu    v0, s4, t3
    lwc1    $f12, 0x0150(v0)           # 00000150
    lwc1    $f14, 0x0154(v0)           # 00000154
    jal     func_800AA7F4
    lw      a2, 0x0158(v0)             # 00000158
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800ABE54
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x0034(s4)             # 00000034
    mul.s   $f18, $f22, $f30
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_800AAD4C
    add.s   $f12, $f16, $f18
    lw      s1, 0x02D0(s3)             # 000002D0
    addiu   t5, s1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s6)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02D0(s3)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s3)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x0140(s4)            # 00000140
lbl_809ED95C:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    slti    $at, s2, 0x0006
    c.lt.s  $f4, $f26
    nop
    bc1t    lbl_809ED97C
    nop
    bnel    $at, $zero, lbl_809ED880
    mtc1    s2, $f4                    # $f4 = 0.00
lbl_809ED97C:
    jal     func_800AA724
    nop
    lw      $ra, 0x006C($sp)
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
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    nop

.section .data

var_809ED9D0: .word 0x00E10500, 0x00000010, 0x00D60000, 0x000001E4
.word func_809ECDF0
.word func_809ECF10
.word func_809ED544
.word func_809ED740
var_809ED9F0: .word \
0x0A110900, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x01040000, 0xFFCFFFFF, 0x00000000, 0x01010000, \
0x00000000, 0x00000000, 0x00000000
var_809EDA1C: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA28: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA34: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA40: .word 0xFFFF00FF
var_809EDA44: .word 0xFF0000FF
var_809EDA48: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA54: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA60: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA6C: .word 0x00000000, 0x00000000, 0x00000000
var_809EDA78: .word 0xFFFF00FF
var_809EDA7C: .word 0xFF0000FF
var_809EDA80: .word \
0x04057EE0, 0x040582E0, 0x040586E0, 0x04058AE0, \
0x04058EE0, 0x04058AE0, 0x040586E0, 0x040582E0

.section .rodata

var_809EDAA0: .word 0x40490FDB
var_809EDAA4: .word 0x40490FDB
var_809EDAA8: .word 0x3DCCCCCD
var_809EDAAC: .word 0x3ECCCCCD
var_809EDAB0: .word 0x3F19999A
var_809EDAB4: .word 0x3E4CCCCD
var_809EDAB8: .word 0x3DCCCCCD, 0x00000000

