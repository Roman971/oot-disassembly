.section .text
func_80865520:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80865530:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80865540:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x013C(s0)             # 0000013C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0034($sp)
    lui     $at, %hi(var_808668F0)     # $at = 80860000
    lwc1    $f4, %lo(var_808668F0)($at)
    lhu     t9, 0x001C(s0)             # 0000001C
    lw      a0, 0x003C($sp)
    mul.s   $f6, $f0, $f4
    lwc1    $f2, 0x0034($sp)
    sltiu   $at, t9, 0x000F
    sll     t9, t9,  2
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    beq     $at, $zero, lbl_80865880
    sh      t8, 0x0032(s0)             # 00000032
    lui     $at, %hi(var_808668F4)     # $at = 80860000
    addu    $at, $at, t9
    lw      t9, %lo(var_808668F4)($at)
    jr      t9
    nop
var_808655B0:
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_80866930)     # $at = 80860000
    lwc1    $f10, %lo(var_80866930)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_80866934)     # $at = 80860000
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    mul.s   $f18, $f0, $f16
    sub.s   $f4, $f10, $f18
    swc1    $f4, 0x006C(s0)            # 0000006C
    lwc1    $f6, %lo(var_80866934)($at)
    sh      t0, 0x013E(s0)             # 0000013E
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0148(s0)            # 00000148
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    nop
    sub.s   $f2, $f0, $f8
    add.s   $f16, $f2, $f2
    b       lbl_80865880
    swc1    $f16, 0x0068(s0)           # 00000068
var_8086560C:
    addiu   t1, $zero, 0x0190          # t1 = 00000190
    sh      t1, 0x013E(s0)             # 0000013E
var_80865614:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    jal     func_80026D90
    nop
    lw      t3, 0x0024(s0)             # 00000024
    lh      t4, 0x013E(s0)             # 0000013E
    lw      t2, 0x0028(s0)             # 00000028
    sw      t3, 0x0008(s0)             # 00000008
    lw      t3, 0x002C(s0)             # 0000002C
    addiu   t5, t4, 0x003C             # t5 = 0000003C
    swc1    $f0, 0x0068(s0)            # 00000068
    sh      t5, 0x013E(s0)             # 0000013E
    sw      t2, 0x000C(s0)             # 0000000C
    jal     func_800CDCCC              # Rand.Next() float
    sw      t3, 0x0010(s0)             # 00000010
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    mul.s   $f18, $f0, $f10
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_80866938)     # $at = 80860000
    lwc1    $f8, %lo(var_80866938)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_8086693C)     # $at = 80860000
    mul.s   $f10, $f0, $f16
    sub.s   $f18, $f8, $f10
    swc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f4, %lo(var_8086693C)($at)
    b       lbl_80865880
    swc1    $f4, 0x0148(s0)            # 00000148
var_8086569C:
    addiu   t6, $zero, 0x8001          # t6 = FFFF8001
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    jal     func_8001DFEC
    sw      $zero, 0x0014($sp)
var_808656C0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f6                   # $f6 = 17.00
    lh      t8, 0x013E(s0)             # 0000013E
    mul.s   $f16, $f0, $f6
    trunc.w.s $f8, $f16
    mfc1    t2, $f8
    nop
    addu    t3, t8, t2
    addiu   t4, t3, 0x0005             # t4 = 00000005
    sh      t4, 0x013E(s0)             # 0000013E
var_808656F0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    mul.s   $f18, $f0, $f10
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0060(s0)            # 00000060
    lui     $at, %hi(var_80866940)     # $at = 80860000
    lwc1    $f16, %lo(var_80866940)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, %hi(var_80866944)     # $at = 80860000
    mul.s   $f10, $f0, $f8
    sub.s   $f18, $f16, $f10
    swc1    $f18, 0x006C(s0)           # 0000006C
    lwc1    $f4, %lo(var_80866944)($at)
    b       lbl_80865880
    swc1    $f4, 0x0148(s0)            # 00000148
var_80865744:
    addiu   t5, $zero, 0x8001          # t5 = FFFF8001
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x0018($sp)
    sw      t5, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    jal     func_8001DFEC
    sw      $zero, 0x0014($sp)
var_80865768:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    sub.s   $f8, $f0, $f6
    mul.s   $f10, $f8, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0068(s0)           # 00000068
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f18                  # $f18 = 17.00
    nop
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    addiu   t8, t1, 0x000A             # t8 = 0000000A
    jal     func_800CDCCC              # Rand.Next() float
    sh      t8, 0x013E(s0)             # 0000013E
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f10                  # $f10 = 8.00
    mul.s   $f16, $f0, $f8
    add.s   $f18, $f16, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0060(s0)           # 00000060
    lui     $at, %hi(var_80866948)     # $at = 80860000
    lwc1    $f4, %lo(var_80866948)($at)
    lui     $at, %hi(var_8086694C)     # $at = 80860000
    lwc1    $f6, %lo(var_8086694C)($at)
    lui     $at, %hi(var_80866950)     # $at = 80860000
    mul.s   $f8, $f0, $f6
    sub.s   $f16, $f4, $f8
    swc1    $f16, 0x006C(s0)           # 0000006C
    lwc1    $f10, %lo(var_80866950)($at)
    b       lbl_80865880
    swc1    $f10, 0x0148(s0)           # 00000148
var_80865804:
    lw      t2, 0x0118(s0)             # 00000118
    lw      t5, 0x0140(s0)             # 00000140
    lui     t4, 0x0601                 # t4 = 06010000
    lh      t3, 0x00B6(t2)             # 000000B6
    addiu   t4, t4, 0x5380             # t4 = 06015380
    bne     t4, t5, lbl_8086582C
    sh      t3, 0x0032(s0)             # 00000032
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f2                   # $f2 = -1.00
    nop
lbl_8086582C:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, %hi(var_80866954)     # $at = 80860000
    mul.s   $f6, $f18, $f2
    swc1    $f0, 0x0060(s0)            # 00000060
    lui     a2, 0x8002                 # a2 = 80020000
    mfc1    a1, $f0
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a3, 0x41F0                 # a3 = 41F00000
    swc1    $f6, 0x0068(s0)            # 00000068
    lwc1    $f4, %lo(var_80866954)($at)
    lui     $at, %hi(var_80866958)     # $at = 80860000
    swc1    $f4, 0x006C(s0)            # 0000006C
    lwc1    $f8, %lo(var_80866958)($at)
    mul.s   $f16, $f8, $f2
    jal     func_8001EC20
    swc1    $f16, 0x0148(s0)           # 00000148
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    sh      t6, 0x013E(s0)             # 0000013E
lbl_80865880:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80865894:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s1, 0x0054($sp)
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s3, $sp, 0x0074            # s3 = FFFFFFCC
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s2, 0x0058($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     t7, %hi(var_80866890)      # t7 = 80860000
    addiu   t7, t7, %lo(var_80866890)  # t7 = 80866890
    lw      t9, 0x0000(t7)             # 80866890
    addiu   t6, $sp, 0x008C            # t6 = FFFFFFE4
    lw      t8, 0x0004(t7)             # 80866894
    sw      t9, 0x0000(t6)             # FFFFFFE4
    lw      t9, 0x0008(t7)             # 80866898
    lui     t1, %hi(var_8086689C)      # t1 = 80860000
    addiu   t1, t1, %lo(var_8086689C)  # t1 = 8086689C
    sw      t8, 0x0004(t6)             # FFFFFFE8
    sw      t9, 0x0008(t6)             # FFFFFFEC
    lw      t3, 0x0000(t1)             # 8086689C
    addiu   t0, $sp, 0x0080            # t0 = FFFFFFD8
    lw      t2, 0x0004(t1)             # 808668A0
    sw      t3, 0x0000(t0)             # FFFFFFD8
    lw      t3, 0x0008(t1)             # 808668A4
    lui     t4, %hi(var_808668A8)      # t4 = 80860000
    addiu   t4, t4, %lo(var_808668A8)  # t4 = 808668A8
    sw      t2, 0x0004(t0)             # FFFFFFDC
    sw      t3, 0x0008(t0)             # FFFFFFE0
    lw      t6, 0x0000(t4)             # 808668A8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    sw      t6, 0x0000(s3)             # FFFFFFCC
    lw      t5, 0x0004(t4)             # 808668AC
    sw      t5, 0x0004(s3)             # FFFFFFD0
    lw      t6, 0x0008(t4)             # 808668B0
    sw      t6, 0x0008(s3)             # FFFFFFD4
    lh      v0, 0x001C(s1)             # 0000001C
    beq     v0, $at, lbl_80865944
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bnel    v0, $at, lbl_808659DC
    lh      v1, 0x013E(s1)             # 0000013E
lbl_80865944:
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   t7, $zero, 0x001D          # t7 = 0000001D
    sw      t7, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C
    swc1    $f20, 0x0010($sp)
    lhu     t8, 0x0088(s1)             # 00000088
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    andi    t9, t8, 0x0001             # t9 = 00000000
    bnel    t9, $zero, lbl_80865998
    sb      t0, 0x013C(s1)             # 0000013C
    lwc1    $f4, 0x0080(s1)            # 00000080
    lwc1    $f6, 0x0028(s1)            # 00000028
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_808659A8
    lh      t1, 0x001C(s1)             # 0000001C
    sb      t0, 0x013C(s1)             # 0000013C
lbl_80865998:
    swc1    $f20, 0x0068(s1)           # 00000068
    swc1    $f20, 0x006C(s1)           # 0000006C
    swc1    $f20, 0x0060(s1)           # 00000060
    lh      t1, 0x001C(s1)             # 0000001C
lbl_808659A8:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     t1, $at, lbl_808659D0
    nop
    lw      v0, 0x0118(s1)             # 00000118
    beq     v0, $zero, lbl_808659D0
    nop
    lw      t2, 0x0130(v0)             # 00000130
    bne     t2, $zero, lbl_808659D0
    nop
    sw      $zero, 0x0118(s1)          # 00000118
lbl_808659D0:
    b       lbl_80865CD4
    lh      v1, 0x013E(s1)             # 0000013E
    lh      v1, 0x013E(s1)             # 0000013E
lbl_808659DC:
    sltiu   $at, t3, 0x000E
    sll     t3, t3,  2
    bgtzl   v1, lbl_80865CD8
    lwc1    $f16, 0x0144(s1)           # 00000144
    beq     $at, $zero, lbl_80865CC4
    lui     $at, %hi(var_8086695C)     # $at = 80860000
    addu    $at, $at, t3
    lw      t3, %lo(var_8086695C)($at)
    jr      t3
    nop
var_80865A04:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f8, 0x0054(s1)            # 00000054
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    mul.s   $f16, $f8, $f10
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sw      t4, 0x002C($sp)
    sw      t3, 0x0024($sp)
    trunc.w.s $f18, $f16
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    mfc1    t5, $f18
    sw      t9, 0x0014($sp)
    sw      $zero, 0x0030($sp)
    sll     t6, t5, 16
    sra     t7, t6, 16
    sll     t8, t7,  2
    addu    t8, t8, t7
    sll     t8, t8,  3
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0034($sp)
    sw      t6, 0x0038($sp)
    sw      t7, 0x003C($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x0028($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    or      a2, s3, $zero              # a2 = FFFFFFCC
    jal     func_8001E1D4
    or      a3, s3, $zero              # a3 = FFFFFFCC
    b       lbl_80865CC4
    nop
var_80865AA0:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0054(s1)            # 00000054
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    mul.s   $f8, $f4, $f6
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sw      t8, 0x0030($sp)
    sw      t7, 0x0024($sp)
    trunc.w.s $f10, $f8
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    mfc1    t9, $f10
    sw      t3, 0x0014($sp)
    sw      $zero, 0x002C($sp)
    sll     t0, t9, 16
    sra     t1, t0, 16
    sll     t2, t1,  2
    addu    t2, t2, t1
    sll     t2, t2,  3
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0034($sp)
    sw      t0, 0x0038($sp)
    sw      t1, 0x003C($sp)
    sw      t2, 0x0010($sp)
    sw      $zero, 0x0028($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   a1, s1, 0x0024             # a1 = 00000024
    or      a2, s3, $zero              # a2 = FFFFFFCC
    jal     func_8001E1D4
    or      a3, s3, $zero              # a3 = FFFFFFCC
    b       lbl_80865CC4
    nop
var_80865B3C:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    addiu   s0, $zero, 0x0007          # s0 = 00000007
    addiu   s2, $sp, 0x0098            # s2 = FFFFFFF0
lbl_80865B4C:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f16, 0x0024(s1)           # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0098($sp)
    lwc1    $f4, 0x00BC(s1)            # 000000BC
    lwc1    $f6, 0x0054(s1)            # 00000054
    lwc1    $f10, 0x0028(s1)           # 00000028
    mov.s   $f12, $f20
    mul.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f8
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x009C($sp)
    lwc1    $f4, 0x002C(s1)            # 0000002C
    add.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00A0($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   a0, $zero, 0x0050          # a0 = 00000050
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    add.s   $f8, $f0, $f10
    jal     func_80063BF0
    swc1    $f8, 0x0090($sp)
    addiu   t2, $zero, 0x0019          # t2 = 00000019
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x001C($sp)
    sw      t2, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF0
    addiu   a2, $sp, 0x008C            # a2 = FFFFFFE4
    addiu   a3, $sp, 0x0080            # a3 = FFFFFFD8
    sw      v0, 0x0010($sp)
    jal     func_8001D110
    sw      $zero, 0x0018($sp)
    addiu   s0, s0, 0xFFFF             # s0 = 00000006
    bgez    s0, lbl_80865B4C
    nop
    b       lbl_80865CC4
    nop
var_80865BFC:
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f20                  # $f20 = 25.00
    addiu   s0, $zero, 0x0004          # s0 = 00000004
    addiu   s2, $sp, 0x0098            # s2 = FFFFFFF0
lbl_80865C0C:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f16, 0x0024(s1)           # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0098($sp)
    lwc1    $f4, 0x0028(s1)            # 00000028
    mov.s   $f12, $f20
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x009C($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    add.s   $f8, $f0, $f10
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    swc1    $f8, 0x00A0($sp)
    sw      t3, 0x003C($sp)
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0030($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFF0
    or      a2, s3, $zero              # a2 = FFFFFFCC
    jal     func_8001E1D4
    or      a3, s3, $zero              # a3 = FFFFFFCC
    addiu   s0, s0, 0xFFFF             # s0 = 00000003
    bgez    s0, lbl_80865C0C
    nop
lbl_80865CC4:
    jal     func_80020EB4
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_80865CF0
    lw      $ra, 0x0064($sp)
lbl_80865CD4:
    lwc1    $f16, 0x0144(s1)           # 00000144
lbl_80865CD8:
    lwc1    $f18, 0x0148(s1)           # 00000148
    addiu   t4, v1, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x013E(s1)             # 0000013E
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0144(s1)            # 00000144
    lw      $ra, 0x0064($sp)
lbl_80865CF0:
    ldc1    $f20, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80865D10:
    sw      a1, 0x0004($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80865D24:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lh      t6, 0x013E(s0)             # 0000013E
    lw      v1, 0x1C44(s1)             # 00001C44
    lui     t0, %hi(var_808668B4)      # t0 = 80860000
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x013E(s0)             # 0000013E
    lh      t8, 0x013E(s0)             # 0000013E
    addiu   t0, t0, %lo(var_808668B4)  # t0 = 808668B4
    addiu   t9, $sp, 0x0050            # t9 = FFFFFFF0
    bnel    t8, $zero, lbl_80865D78
    lw      t2, 0x0000(t0)             # 808668B4
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80865F38
    lw      $ra, 0x0034($sp)
    lw      t2, 0x0000(t0)             # 00000000
lbl_80865D78:
    lw      t1, 0x0004(t0)             # 00000004
    lui     t4, %hi(var_808668C0)      # t4 = 80860000
    sw      t2, 0x0000(t9)             # 00000000
    lw      t2, 0x0008(t0)             # 00000008
    addiu   t4, t4, %lo(var_808668C0)  # t4 = 808668C0
    sw      t1, 0x0004(t9)             # 00000004
    sw      t2, 0x0008(t9)             # 00000008
    lw      t6, 0x0000(t4)             # 808668C0
    addiu   t3, $sp, 0x0044            # t3 = FFFFFFE4
    lw      t5, 0x0004(t4)             # 808668C4
    sw      t6, 0x0000(t3)             # FFFFFFE4
    lw      t6, 0x0008(t4)             # 808668C8
    sw      t5, 0x0004(t3)             # FFFFFFE8
    lui     $at, 0x4044                # $at = 40440000
    sw      t6, 0x0008(t3)             # FFFFFFEC
    lwc1    $f4, 0x008C(s0)            # 0000008C
    mtc1    $at, $f7                   # $f7 = 3.06
    mtc1    $zero, $f6                 # $f6 = 0.00
    cvt.d.s $f0, $f4
    sqrt.d  $f0, $f0
    c.le.d  $f0, $f6
    nop
    bc1fl   lbl_80865E84
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lb      v0, 0x0A68(v1)             # 00000A68
    bgtz    v0, lbl_80865E1C
    sb      v0, 0x0043($sp)
    slti    $at, v0, 0xFFD9
    beq     $at, $zero, lbl_80865DF8
    lui     t9, 0x0001                 # t9 = 00010000
    b       lbl_80865E1C
    sb      $zero, 0x0A68(v1)          # 00000A68
lbl_80865DF8:
    sb      $zero, 0x0A68(v1)          # 00000A68
    sw      v1, 0x005C($sp)
    addu    t9, t9, s1
    lw      t9, 0x1D58(t9)             # 00011D58
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0xFFF8          # a1 = FFFFFFF8
    jalr    $ra, t9
    nop
    lw      v1, 0x005C($sp)
lbl_80865E1C:
    lw      a1, 0x0118(s0)             # 00000118
    lui     $at, %hi(var_80866994)     # $at = 80860000
    lwc1    $f8, %lo(var_80866994)($at)
    lwc1    $f10, 0x0090(a1)           # 00000090
    lui     $at, %hi(var_80866998)     # $at = 80860000
    lwc1    $f18, %lo(var_80866998)($at)
    sub.s   $f16, $f8, $f10
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    lui     $at, 0x4100                # $at = 41000000
    mul.s   $f4, $f16, $f18
    mtc1    $at, $f10                  # $f10 = 8.00
    lh      a3, 0x0032(a1)             # 00000032
    sw      v1, 0x005C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f10, 0x0010($sp)
    add.s   $f8, $f4, $f6
    mfc1    a2, $f8
    jal     func_80022EC4
    nop
    lw      v1, 0x005C($sp)
    lbu     t7, 0x0043($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t7, 0x0A68(v1)             # 00000A68
    sh      t8, 0x013E(s0)             # 0000013E
    addiu   a1, s0, 0x0024             # a1 = 00000024
lbl_80865E84:
    addiu   t0, $zero, 0x012C          # t0 = 0000012C
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    sw      a1, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_80026308
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f12                  # $f12 = 16.00
    jal     func_80026D90
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    mul.s   $f18, $f0, $f16
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f8                   # $f8 = 2.00
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x001C($sp)
    add.s   $f6, $f18, $f4
    sw      t6, 0x0018($sp)
    sw      t3, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    mul.s   $f10, $f6, $f8
    lw      a1, 0x0038($sp)
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFF0
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFE4
    sw      $zero, 0x0020($sp)
    trunc.w.s $f16, $f10
    mfc1    t5, $f16
    jal     func_8001D21C
    sw      t5, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x30E0          # a1 = 000030E0
    lw      $ra, 0x0034($sp)
lbl_80865F38:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80865F48:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0050($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a1, 0x007C($sp)
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFF4
    lui     t6, %hi(var_808668CC)      # t6 = 80860000
    addiu   t6, t6, %lo(var_808668CC)  # t6 = 808668CC
    lw      t8, 0x0000(t6)             # 808668CC
    addiu   a1, s0, 0x0024             # a1 = 00000024
    or      a3, a2, $zero              # a3 = FFFFFFF4
    sw      t8, 0x0000(a2)             # FFFFFFF4
    lw      t7, 0x0004(t6)             # 808668D0
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    sw      t7, 0x0004(a2)             # FFFFFFF8
    lw      t8, 0x0008(t6)             # 808668D4
    sw      t8, 0x0008(a2)             # FFFFFFFC
    lw      v0, 0x0118(s0)             # 00000118
    lw      a0, 0x007C($sp)
    beql    v0, $zero, lbl_80865FB4
    lwc1    $f4, 0x0054(s0)            # 00000054
    lw      t9, 0x0130(v0)             # 00000130
    bnel    t9, $zero, lbl_80866040
    lh      v1, 0x013E(s0)             # 0000013E
    lwc1    $f4, 0x0054(s0)            # 00000054
lbl_80865FB4:
    mtc1    $at, $f6                   # $f6 = 100.00
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    mul.s   $f8, $f4, $f6
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    sw      t0, 0x002C($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    trunc.w.s $f10, $f8
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0030($sp)
    mfc1    t1, $f10
    sw      $zero, 0x0028($sp)
    sw      t5, 0x0014($sp)
    sll     t2, t1, 16
    sra     t3, t2, 16
    sll     t4, t3,  2
    addu    t4, t4, t3
    sll     t4, t4,  3
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0034($sp)
    sw      t2, 0x0038($sp)
    sw      t3, 0x003C($sp)
    jal     func_8001E1D4
    sw      t4, 0x0010($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80866134
    lw      $ra, 0x0054($sp)
    lh      v1, 0x013E(s0)             # 0000013E
lbl_80866040:
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lui     a2, 0x3F80                 # a2 = 3F800000
    bne     v1, $zero, lbl_8086610C
    lui     a3, 0x40A0                 # a3 = 40A00000
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      a1, 0x000C(s0)             # 0000000C
    mov.s   $f20, $f0
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064178
    swc1    $f18, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      a1, 0x0010(s0)             # 00000010
    add.s   $f20, $f20, $f0
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x40A0                 # a3 = 40A00000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    add.s   $f20, $f20, $f0
    addiu   a0, s0, 0x0144             # a0 = 00000144
    mfc1    a1, $f2
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3E80                 # a3 = 3E800000
    jal     func_80064178
    swc1    $f2, 0x0010($sp)
    add.s   $f20, $f20, $f0
    mtc1    $zero, $f6                 # $f6 = 0.00
    nop
    c.eq.s  $f20, $f6
    nop
    bc1f    lbl_80866104
    nop
    lw      v0, 0x0118(s0)             # 00000118
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x383A          # a1 = 0000383A
    lh      t4, 0x0014(v0)             # 00000014
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0014(v0)             # 00000014
    lh      t6, 0x013E(s0)             # 0000013E
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    jal     func_80022FD0
    sh      t7, 0x013E(s0)             # 0000013E
lbl_80866104:
    b       lbl_8086611C
    lw      v0, 0x0118(s0)             # 00000118
lbl_8086610C:
    blez    v1, lbl_8086611C
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x013E(s0)             # 0000013E
    lw      v0, 0x0118(s0)             # 00000118
lbl_8086611C:
    lbu     t9, 0x00AF(v0)             # 000000AF
    beql    t9, $zero, lbl_80866134
    lw      $ra, 0x0054($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0054($sp)
lbl_80866134:
    ldc1    $f20, 0x0048($sp)
    lw      s0, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_80866144:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80866178
    slti    $at, v0, 0x0009
    bnel    $at, $zero, lbl_80866184
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80866178:
    bgezl   v0, lbl_808661F0
    lbu     t0, 0x013C(s0)             # 0000013C
    mtc1    $zero, $f4                 # $f4 = 0.00
lbl_80866184:
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x0068             # a0 = 00000068
    bltz    t7, lbl_808661EC
    lui     a2, 0x3F80                 # a2 = 3F800000
    mfc1    a1, $f0
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    lui     $at, 0x40C0                # $at = 40C00000
    andi    t8, v0, 0x0001             # t8 = 00000000
    beql    t8, $zero, lbl_808661F0
    lbu     t0, 0x013C(s0)             # 0000013C
    mtc1    $at, $f6                   # $f6 = 6.00
    andi    t9, v0, 0xFFFE             # t9 = 00000000
    sh      t9, 0x0088(s0)             # 00000088
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_808661EC:
    lbu     t0, 0x013C(s0)             # 0000013C
lbl_808661F0:
    lui     t9, %hi(var_808668D8)      # t9 = 80860000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t1, t0,  2
    addu    t9, t9, t1
    lw      t9, %lo(var_808668D8)(t9)
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80866224:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   v1, v1, 0xFFE0             # v1 = FFFFFFE0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFE0
    sw      $zero, 0x0004(v1)          # FFFFFFE4
    andi    t0, a2, 0x00FF             # t0 = 00000000
    sll     t1, t0, 16
    sll     t9, a1, 24
    andi    t3, a3, 0x00FF             # t3 = 00000000
    sll     t4, t3,  8
    or      t2, t9, t1                 # t2 = 00000000
    or      t5, t2, t4                 # t5 = 00000000
    ori     t6, t5, 0x00FF             # t6 = 000000FF
    sw      t6, 0x000C(v1)             # FFFFFFEC
    sw      t7, 0x0008(v1)             # FFFFFFE8
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0010(v1)             # FFFFFFF0
    lbu     t3, 0x0017($sp)
    lbu     t0, 0x0013($sp)
    lbu     t6, 0x001B($sp)
    sll     t2, t3, 16
    sll     t9, t0, 24
    or      t4, t9, t2                 # t4 = 00000000
    sll     t7, t6,  8
    or      t8, t4, t7                 # t8 = FB000000
    ori     t0, t8, 0x00FF             # t0 = FB0000FF
    sw      t0, 0x0014(v1)             # FFFFFFF4
    lui     t1, 0xDF00                 # t1 = DF000000
    sw      t1, 0x0018(v1)             # FFFFFFF8
    sw      $zero, 0x001C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFE0
    jr      $ra
    nop


func_808662C8:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    lw      a2, 0x0000(s3)             # 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    blez    t6, lbl_80866308
    or      s1, a2, $zero              # s1 = 00000000
    jal     func_800AAD4C
    lwc1    $f12, 0x0144(s2)           # 00000144
    lw      a2, 0x0000(s3)             # 00000000
lbl_80866308:
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lh      v0, 0x001C(s2)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t8, 0xDB06                 # t8 = DB060000
    bne     v0, $at, lbl_8086641C
    ori     t8, t8, 0x0020             # t8 = DB060020
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t4, $zero, 0x0023          # t4 = 00000023
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t9, 0x0010($sp)
    addiu   a1, $zero, 0x00F5          # a1 = 000000F5
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00CD          # a3 = 000000CD
    jal     func_80866224
    sw      s0, 0x0078($sp)
    lw      v1, 0x0078($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x00B9          # a1 = 000000B9
    addiu   a2, $zero, 0x0087          # a2 = 00000087
    addiu   a3, $zero, 0x0019          # a3 = 00000019
    jal     func_80866224
    sw      s0, 0x0074($sp)
    lw      t0, 0x0074($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80866224
    sw      s0, 0x0070($sp)
    lw      v1, 0x0070($sp)
    sw      v0, 0x0004(v1)             # 00000004
    b       lbl_80866800
    lw      t0, 0x0140(s2)             # 00000140
lbl_8086641C:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80866508
    lui     t9, 0xDB06                 # t9 = DB060000
    lw      s0, 0x02C0(s1)             # 000002C0
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   a1, $zero, 0x0037          # a1 = 00000037
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    addiu   a2, $zero, 0x0041          # a2 = 00000041
    addiu   a3, $zero, 0x0037          # a3 = 00000037
    jal     func_80866224
    sw      s0, 0x006C($sp)
    lw      v1, 0x006C($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, $zero, 0x0019          # t6 = 00000019
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a1, $zero, 0x00CD          # a1 = 000000CD
    addiu   a2, $zero, 0x00A5          # a2 = 000000A5
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    jal     func_80866224
    sw      s0, 0x0068($sp)
    lw      t0, 0x0068($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t4, $zero, 0x0019          # t4 = 00000019
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    addiu   a1, $zero, 0x00CD          # a1 = 000000CD
    addiu   a2, $zero, 0x00A5          # a2 = 000000A5
    addiu   a3, $zero, 0x004B          # a3 = 0000004B
    jal     func_80866224
    sw      s0, 0x0064($sp)
    lw      v1, 0x0064($sp)
    sw      v0, 0x0004(v1)             # 00000004
    b       lbl_80866800
    lw      t0, 0x0140(s2)             # 00000140
lbl_80866508:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     v0, $at, lbl_80866600
    lui     t7, 0xDB06                 # t7 = DB060000
    lw      s0, 0x02C0(s1)             # 000002C0
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t8, $zero, 0x00B4          # t8 = 000000B4
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t9, $zero, 0x00B4          # t9 = 000000B4
    addiu   t4, $zero, 0x00B4          # t4 = 000000B4
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80866224
    sw      s0, 0x0060($sp)
    lw      v1, 0x0060($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0024             # t6 = DB060024
    sw      v0, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x0019          # t7 = 00000019
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    addiu   a3, $zero, 0x0073          # a3 = 00000073
    jal     func_80866224
    sw      s0, 0x005C($sp)
    lw      t0, 0x005C($sp)
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t5, $zero, 0x0019          # t5 = 00000019
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    sw      $zero, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    addiu   a1, $zero, 0x00E1          # a1 = 000000E1
    addiu   a2, $zero, 0x00CD          # a2 = 000000CD
    addiu   a3, $zero, 0x0073          # a3 = 00000073
    jal     func_80866224
    sw      s0, 0x0058($sp)
    lw      v1, 0x0058($sp)
    sw      v0, 0x0004(v1)             # 00000004
    b       lbl_80866800
    lw      t0, 0x0140(s2)             # 00000140
lbl_80866600:
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_80866708
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      t8, 0x0140(s2)             # 00000140
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x2FF0             # t7 = 06002FF0
    bne     t7, t8, lbl_80866704
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x1300             # v1 = 06001300
    sll     t5, v1,  4
    srl     t6, t5, 28
    lui     t4, 0xDB06                 # t4 = DB060000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    ori     t4, t4, 0x0020             # t4 = DB060020
    sll     t7, t6,  2
    addu    t8, t1, t7
    sw      t4, 0x0000(s0)             # 00000000
    lw      t9, 0x0000(t8)             # 00000000
    and     t4, v1, t2
    lui     t8, 0xDB06                 # t8 = DB060000
    addu    t5, t9, t4
    addu    t6, t5, t3
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1700             # a1 = 06001700
    sll     t9, a1,  4
    srl     t4, t9, 28
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sll     t5, t4,  2
    ori     t8, t8, 0x0024             # t8 = DB060024
    addu    t6, t1, t5
    sw      t8, 0x0000(s0)             # 00000000
    lw      t7, 0x0000(t6)             # 00000000
    and     t8, a1, t2
    lui     t6, 0xDB06                 # t6 = DB060000
    addu    t9, t7, t8
    addu    t4, t9, t3
    sw      t4, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x1900             # a3 = 06001900
    sll     t7, a3,  4
    srl     t8, t7, 28
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sll     t9, t8,  2
    ori     t6, t6, 0x0028             # t6 = DB060028
    addu    t4, t1, t9
    sw      t6, 0x0000(s0)             # 00000000
    lw      t5, 0x0000(t4)             # DB060020
    and     t6, a3, t2
    addu    t7, t5, t6
    addu    t8, t7, t3
    sw      t8, 0x0004(s0)             # 00000004
    b       lbl_80866800
    lw      t0, 0x0140(s2)             # 00000140
lbl_80866704:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_80866708:
    bne     v0, $at, lbl_80866800
    lw      t0, 0x0140(s2)             # 00000140
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x2FF0             # t9 = 06002FF0
    bne     t9, t0, lbl_80866800
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x00FF                 # t2 = 00FF0000
    ori     t2, t2, 0xFFFF             # t2 = 00FFFFFF
    addiu   t1, t1, 0x0C38             # t1 = 80120C38
    lui     t3, 0x8000                 # t3 = 80000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x1B00             # v1 = 06001B00
    sll     t6, v1,  4
    srl     t7, t6, 28
    lui     t5, 0xDB06                 # t5 = DB060000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    ori     t5, t5, 0x0020             # t5 = DB060020
    sll     t8, t7,  2
    addu    t9, t1, t8
    sw      t5, 0x0000(s0)             # 00000000
    lw      t4, 0x0000(t9)             # 06002FF0
    and     t5, v1, t2
    lui     t9, 0xDB06                 # t9 = DB060000
    addu    t6, t4, t5
    addu    t7, t6, t3
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1F00             # a1 = 06001F00
    sll     t4, a1,  4
    srl     t5, t4, 28
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sll     t6, t5,  2
    ori     t9, t9, 0x0024             # t9 = DB060024
    addu    t7, t1, t6
    sw      t9, 0x0000(s0)             # 00000000
    lw      t8, 0x0000(t7)             # 00000008
    and     t9, a1, t2
    lui     t7, 0xDB06                 # t7 = DB060000
    addu    t4, t8, t9
    addu    t5, t4, t3
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x2100             # a3 = 06002100
    sll     t8, a3,  4
    srl     t9, t8, 28
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sll     t4, t9,  2
    ori     t7, t7, 0x0028             # t7 = DB060028
    addu    t5, t1, t4
    sw      t7, 0x0000(s0)             # 00000000
    lw      t6, 0x0000(t5)             # DB060020
    and     t7, a3, t2
    addu    t8, t6, t7
    addu    t9, t8, t3
    sw      t9, 0x0004(s0)             # 00000004
    lw      t0, 0x0140(s2)             # 00000140
lbl_80866800:
    beql    t0, $zero, lbl_80866854
    lw      $ra, 0x0034($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x003C($sp)
    lw      a1, 0x003C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0140(s2)             # 00000140
    sw      t8, 0x0004(s0)             # 00000004
    lw      $ra, 0x0034($sp)
lbl_80866854:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88
    nop

.section .data

var_80866870: .word 0x00070700, 0x00000010, 0x00010000, 0x0000014C
.word func_80865520
.word func_80865530
.word func_80866144
.word func_808662C8
var_80866890: .word 0x00000000, 0x00000000, 0x00000000
var_8086689C: .word 0x00000000, 0x00000000, 0x00000000
var_808668A8: .word 0x00000000, 0x00000000, 0x00000000
var_808668B4: .word 0x00000000, 0x41000000, 0x00000000
var_808668C0: .word 0x00000000, 0xBFC00000, 0x00000000
var_808668CC: .word 0x00000000, 0x00000000, 0x00000000
var_808668D8: .word func_80865540
.word func_80865894
.word func_80865D10
.word func_80865D24
.word func_80865F48
.word 0x00000000

.section .rodata

var_808668F0: .word 0x469C4000
var_808668F4: .word var_808655B0
.word var_808656C0
.word var_808656F0
.word var_80865768
.word var_808656C0
.word var_80865804
.word var_80865804
.word var_80865804
.word var_80865804
.word var_808656C0
.word var_808656C0
.word var_80865744
.word var_80865614
.word var_8086560C
.word var_8086569C
var_80866930: .word 0xBE99999A
var_80866934: .word 0x3E99999A
var_80866938: .word 0xBF19999A
var_8086693C: .word 0x3E19999A
var_80866940: .word 0xBF19999A
var_80866944: .word 0x3E19999A
var_80866948: .word 0xBF19999A
var_8086694C: .word 0x3E99999A
var_80866950: .word 0x3E19999A
var_80866954: .word 0xBF99999A
var_80866958: .word 0x3E19999A
var_8086695C: .word var_80865A04
.word lbl_80865CC4
.word var_80865AA0
.word var_80865B3C
.word var_80865BFC
.word var_80865BFC
.word var_80865BFC
.word var_80865BFC
.word var_80865A04
.word var_80865A04
.word var_80865AA0
.word lbl_80865CC4
.word lbl_80865CC4
.word var_80865A04
var_80866994: .word 0x44228000
var_80866998: .word 0x3D23D70A, 0x00000000

