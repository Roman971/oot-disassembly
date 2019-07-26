.section .text
func_80AF2760:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x001C(a3)             # 0000001C
    lw      a0, 0x001C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80AF2790
    addiu   a1, a0, 0x0810             # a1 = 00000810
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80AF279C
    lw      $ra, 0x0014($sp)
lbl_80AF2790:
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(a3)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80AF279C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF27A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x2098          # a0 = 00002098
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF27C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_80058FF8
    addiu   a3, $zero, 0x180E          # a3 = 0000180E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF27EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    jal     func_80058FF8
    addiu   a3, $zero, 0x28C2          # a3 = 000028C2
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF2810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_800915CC
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF2840:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80AF75B0)     # $at = 80AF0000
    lwc1    $f4, %lo(var_80AF75B0)($at)
    lwc1    $f2, 0x0040($sp)
    lh      t0, 0x0046($sp)
    lh      t1, 0x004A($sp)
    mul.s   $f6, $f2, $f4
    lui     t6, %hi(var_80AF73F0)      # t6 = 80AF0000
    lui     t7, %hi(var_80AF73F4)      # t7 = 80AF0000
    addiu   t7, t7, %lo(var_80AF73F4)  # t7 = 80AF73F4
    addiu   t6, t6, %lo(var_80AF73F0)  # t6 = 80AF73F0
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    mul.s   $f8, $f0, $f6
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x0038($sp)
    lw      a3, 0x003C($sp)
    sw      t0, 0x001C($sp)
    sw      t1, 0x0020($sp)
    add.s   $f10, $f8, $f2
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    jal     func_8001BF34
    sw      t9, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF28D0:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      $ra, 0x0024($sp)
    sw      a1, 0x005C($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    jal     func_8009DB54
    swc1    $f12, 0x0064($sp)
    lw      a0, 0x0058($sp)
    lw      a2, 0x0060($sp)
    bne     v0, $zero, lbl_80AF2A48
    lwc1    $f12, 0x0064($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lw      t6, 0x0068($sp)
    lw      t7, 0x006C($sp)
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFD8
    div     $zero, v0, t6
    mfhi    v1
    addiu   t8, $sp, 0x003C            # t8 = FFFFFFE4
    bne     t6, $zero, lbl_80AF2930
    nop
    break   # 0x01C00
lbl_80AF2930:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t6, $at, lbl_80AF2948
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_80AF2948
    nop
    break   # 0x01800
lbl_80AF2948:
    subu    v0, $zero, v1
    bltz    v1, lbl_80AF295C
    lui     t9, %hi(var_80AF73F8)      # t9 = 80AF0000
    b       lbl_80AF295C
    or      v0, v1, $zero              # v0 = 00000000
lbl_80AF295C:
    bne     v0, t7, lbl_80AF2A48
    addiu   t9, t9, %lo(var_80AF73F8)  # t9 = 80AF73F8
    lw      t1, 0x0000(t9)             # 80AF73F8
    lw      t0, 0x0004(t9)             # 80AF73FC
    lui     t2, %hi(var_80AF7404)      # t2 = 80AF0000
    sw      t1, 0x0000(t8)             # FFFFFFE4
    lw      t1, 0x0008(t9)             # 80AF7400
    addiu   t2, t2, %lo(var_80AF7404)  # t2 = 80AF7404
    sw      t0, 0x0004(t8)             # FFFFFFE8
    sw      t1, 0x0008(t8)             # FFFFFFEC
    lw      t4, 0x0000(t2)             # 80AF7404
    lui     $at, 0x4396                # $at = 43960000
    sw      t4, 0x0000(a3)             # FFFFFFD8
    lw      t3, 0x0004(t2)             # 80AF7408
    sw      t3, 0x0004(a3)             # FFFFFFDC
    lw      t4, 0x0008(t2)             # 80AF740C
    sw      t4, 0x0008(a3)             # FFFFFFE0
    lwc1    $f4, 0x003C($sp)
    lwc1    $f8, 0x0040($sp)
    lwc1    $f16, 0x0044($sp)
    mul.s   $f6, $f4, $f12
    lh      t7, 0x0072($sp)
    lw      a1, 0x005C($sp)
    mul.s   $f10, $f8, $f12
    nop
    mul.s   $f18, $f16, $f12
    swc1    $f6, 0x003C($sp)
    swc1    $f10, 0x0040($sp)
    swc1    $f18, 0x0044($sp)
    lwc1    $f4, 0x0000(a2)            # 00000000
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x003C($sp)
    lwc1    $f16, 0x0004(a2)           # 00000004
    add.s   $f6, $f10, $f16
    lwc1    $f10, 0x0030($sp)
    swc1    $f6, 0x0040($sp)
    lwc1    $f4, 0x0008(a2)            # 00000008
    mul.s   $f16, $f10, $f12
    lwc1    $f6, 0x0034($sp)
    add.s   $f8, $f18, $f4
    lwc1    $f4, 0x0038($sp)
    mul.s   $f18, $f6, $f12
    mtc1    $at, $f10                  # $f10 = 300.00
    swc1    $f8, 0x0044($sp)
    mul.s   $f8, $f4, $f12
    swc1    $f16, 0x0030($sp)
    lui     $at, 0x4170                # $at = 41700000
    mul.s   $f16, $f10, $f12
    mtc1    $at, $f6                   # $f6 = 15.00
    swc1    $f18, 0x0034($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFE4
    mul.s   $f18, $f6, $f12
    swc1    $f8, 0x0038($sp)
    sw      t7, 0x0018($sp)
    swc1    $f16, 0x0010($sp)
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    jal     func_80AF2840
    sw      t6, 0x0014($sp)
lbl_80AF2A48:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80AF2A58:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x0034($sp)
    lh      t7, 0x003A($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    lwc1    $f4, 0x0004(t6)            # 00000004
    lw      a3, 0x0000(t6)             # 00000000
    addiu   a2, $zero, 0x00E5          # a2 = 000000E5
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0008(t6)            # 00000008
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0024($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f6, 0x0014($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80AF2AB8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    mtc1    a2, $f12                   # $f12 = 0.00
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFE4
    lui     t6, %hi(var_80AF7410)      # t6 = 80AF0000
    addiu   t6, t6, %lo(var_80AF7410)  # t6 = 80AF7410
    lw      t8, 0x0000(t6)             # 80AF7410
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    sw      t8, 0x0000(a2)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80AF7414
    lui     $at, 0x4170                # $at = 41700000
    mul.s   $f6, $f4, $f12
    sw      t7, 0x0004(a2)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80AF7418
    mtc1    $at, $f10                  # $f10 = 15.00
    lui     t9, %hi(var_80AF741C)      # t9 = 80AF0000
    addiu   t9, t9, %lo(var_80AF741C)  # t9 = 80AF741C
    sw      t8, 0x0008(a2)             # FFFFFFF8
    lw      t1, 0x0000(t9)             # 80AF741C
    mul.s   $f16, $f10, $f12
    trunc.w.s $f8, $f6
    sw      t1, 0x0000(a3)             # FFFFFFE4
    lw      t0, 0x0004(t9)             # 80AF7420
    mfc1    t3, $f8
    sw      t0, 0x0004(a3)             # FFFFFFE8
    trunc.w.s $f18, $f16
    lw      t1, 0x0008(t9)             # 80AF7424
    sw      t1, 0x0008(a3)             # FFFFFFEC
    mfc1    t5, $f18
    lw      a1, 0x0044($sp)
    lw      a0, 0x0040($sp)
    sw      t3, 0x0010($sp)
    jal     func_8001C97C
    sw      t5, 0x0014($sp)
    lw      a0, 0x0040($sp)
    jal     func_80AF27C8
    lw      a1, 0x0044($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF2B6C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lwc1    $f12, 0x0030($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f16, $f10, $f12
    trunc.w.s $f8, $f6
    trunc.w.s $f18, $f16
    mfc1    t7, $f8
    mfc1    t9, $f18
    sw      t7, 0x0010($sp)
    jal     func_8001C97C
    sw      t9, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF2BC0:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s5, 0x008C($sp)
    sw      s2, 0x0080($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s4, 0x0088($sp)
    sw      s3, 0x0084($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a0, 0x00D0($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f30                  # $f30 = 20.00
    trunc.w.s $f6, $f4
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f28                  # $f28 = 2.00
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f26                  # $f26 = 75.00
    mfc1    s4, $f6
    lui     $at, 0x4238                # $at = 42380000
    mtc1    $at, $f24                  # $f24 = 46.00
    lui     $at, %hi(var_80AF75B4)     # $at = 80AF0000
    lui     s8, 0x0600                 # s8 = 06000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, s8, 0x0EA0             # s8 = 06000EA0
    lwc1    $f22, %lo(var_80AF75B4)($at)
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x00B8            # s7 = FFFFFFE8
    addiu   s6, $sp, 0x00C4            # s6 = FFFFFFF4
    addiu   s4, s4, 0x001E             # s4 = 0000001E
lbl_80AF2C60:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00C4($sp)
    mul.s   $f10, $f0, $f26
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f16, $f10, $f28
    jal     func_80063684              # coss?
    swc1    $f16, 0x00C8($sp)
    mul.s   $f18, $f0, $f24
    lwc1    $f4, 0x00C4($sp)
    mul.s   $f6, $f4, $f22
    swc1    $f18, 0x00CC($sp)
    add.s   $f8, $f6, $f30
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B8($sp)
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f10                  # $f10 = 16.00
    lwc1    $f18, 0x00CC($sp)
    lwc1    $f6, 0x00C4($sp)
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f4, $f18, $f22
    swc1    $f16, 0x00BC($sp)
    lwc1    $f16, 0x00C8($sp)
    swc1    $f4, 0x00C0($sp)
    lwc1    $f8, 0x0000(s2)            # 00000000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x00C4($sp)
    lwc1    $f4, 0x0004(s2)            # 00000004
    add.s   $f6, $f16, $f4
    swc1    $f6, 0x00C8($sp)
    lwc1    $f8, 0x0008(s2)            # 00000008
    add.s   $f10, $f18, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00CC($sp)
    c.lt.s  $f0, $f22
    lui     $at, %hi(var_80AF75B8)     # $at = 80AF0000
    bc1f    lbl_80AF2D14
    nop
    b       lbl_80AF2D34
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80AF2D14:
    lwc1    $f16, %lo(var_80AF75B8)($at)
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80AF2D34
    nop
    b       lbl_80AF2D34
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80AF2D34:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    mul.s   $f6, $f20, $f4
    addiu   t7, $zero, 0xFF09          # t7 = FFFFFF09
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x0186          # t4 = 00000186
    add.s   $f8, $f6, $f18
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    sw      t2, 0x002C($sp)
    trunc.w.s $f10, $f8
    sw      t1, 0x0028($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0010($sp)
    mfc1    t0, $f10
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF4
    or      a2, s7, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      s4, 0x0030($sp)
    sw      s8, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s1, s1, 0x1555             # s1 = 00001555
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    sll     s1, s1, 16
    bne     s3, $at, lbl_80AF2C60
    sra     s1, s1, 16
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80AF2E20:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s5, 0x008C($sp)
    sw      s2, 0x0080($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s4, 0x0088($sp)
    sw      s3, 0x0084($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a0, 0x00D0($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f28                  # $f28 = 2.00
    trunc.w.s $f6, $f4
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f26                  # $f26 = 75.00
    lui     $at, %hi(var_80AF75BC)     # $at = 80AF0000
    mfc1    s4, $f6
    lwc1    $f24, %lo(var_80AF75BC)($at)
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s8, 0x0600                 # s8 = 06000000
    mtc1    $at, $f22                  # $f22 = 30.00
    mtc1    $zero, $f30                # $f30 = 0.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, s8, 0x0EA0             # s8 = 06000EA0
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s7, $sp, 0x00B8            # s7 = FFFFFFE8
    addiu   s6, $sp, 0x00C4            # s6 = FFFFFFF4
    addiu   s4, s4, 0x001E             # s4 = 0000001E
lbl_80AF2EBC:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00C4($sp)
    mul.s   $f10, $f0, $f26
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f16, $f10, $f28
    jal     func_80063684              # coss?
    swc1    $f16, 0x00C8($sp)
    mul.s   $f18, $f0, $f22
    swc1    $f30, 0x00B8($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00CC($sp)
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    lwc1    $f8, 0x00CC($sp)
    lwc1    $f16, 0x00C4($sp)
    mul.s   $f6, $f0, $f4
    nop
    mul.s   $f10, $f8, $f24
    swc1    $f6, 0x00BC($sp)
    lwc1    $f6, 0x00C8($sp)
    swc1    $f10, 0x00C0($sp)
    lwc1    $f18, 0x0000(s2)           # 00000000
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x00C4($sp)
    lwc1    $f10, 0x0004(s2)           # 00000004
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x00C8($sp)
    lwc1    $f18, 0x0008(s2)           # 00000008
    add.s   $f4, $f8, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00CC($sp)
    c.lt.s  $f0, $f24
    lui     $at, %hi(var_80AF75C0)     # $at = 80AF0000
    bc1f    lbl_80AF2F64
    nop
    b       lbl_80AF2F84
    addiu   s0, $zero, 0x0060          # s0 = 00000060
lbl_80AF2F64:
    lwc1    $f6, %lo(var_80AF75C0)($at)
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80AF2F84
    nop
    b       lbl_80AF2F84
    addiu   s0, $zero, 0x0040          # s0 = 00000040
lbl_80AF2F84:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    addiu   t7, $zero, 0xFF09          # t7 = FFFFFF09
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    mul.s   $f16, $f20, $f10
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x0186          # t4 = 00000186
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    add.s   $f8, $f16, $f22
    sw      t2, 0x002C($sp)
    sw      t1, 0x0028($sp)
    sw      t8, 0x0018($sp)
    trunc.w.s $f18, $f8
    sw      t7, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF4
    mfc1    t0, $f18
    or      a2, s7, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      s4, 0x0030($sp)
    sw      s8, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s1, s1, 0x2000             # s1 = 00002000
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   $at, $zero, 0x0008         # $at = 00000008
    sll     s1, s1, 16
    bne     s3, $at, lbl_80AF2EBC
    sra     s1, s1, 16
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80AF3068:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s4, 0x0088($sp)
    sw      s2, 0x0080($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s5, 0x008C($sp)
    sw      s3, 0x0084($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a0, 0x00D0($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f30                  # $f30 = 2.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f28                  # $f28 = 5.00
    lui     $at, %hi(var_80AF75C4)     # $at = 80AF0000
    lwc1    $f26, %lo(var_80AF75C4)($at)
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f24                  # $f24 = 16.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s7, 0x0600                 # s7 = 06000000
    mtc1    $at, $f22                  # $f22 = 30.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s7, s7, 0x0EA0             # s7 = 06000EA0
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $zero, 0x000C          # s8 = 0000000C
    addiu   s6, $sp, 0x00B8            # s6 = FFFFFFE8
    addiu   s5, $sp, 0x00C4            # s5 = FFFFFFF4
lbl_80AF30FC:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f4, $f0, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00C4($sp)
    mul.s   $f6, $f0, $f28
    sll     a0, s1, 16
    sra     a0, a0, 16
    add.s   $f8, $f6, $f30
    jal     func_80063684              # coss?
    swc1    $f8, 0x00C8($sp)
    mul.s   $f10, $f0, $f24
    lwc1    $f16, 0x00C4($sp)
    mul.s   $f18, $f16, $f26
    swc1    $f10, 0x00CC($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00B8($sp)
    lui     $at, 0x4210                # $at = 42100000
    mtc1    $at, $f4                   # $f4 = 36.00
    lwc1    $f16, 0x00CC($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 6.00
    lwc1    $f4, 0x00C4($sp)
    mul.s   $f18, $f16, $f26
    add.s   $f10, $f6, $f8
    swc1    $f18, 0x00C0($sp)
    swc1    $f10, 0x00BC($sp)
    lwc1    $f6, 0x0000(s2)            # 00000000
    lwc1    $f10, 0x00C8($sp)
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x00C4($sp)
    lwc1    $f18, 0x0004(s2)           # 00000004
    add.s   $f4, $f10, $f18
    swc1    $f4, 0x00C8($sp)
    lwc1    $f6, 0x0008(s2)            # 00000008
    add.s   $f8, $f16, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00CC($sp)
    lui     $at, %hi(var_80AF75C8)     # $at = 80AF0000
    lwc1    $f10, %lo(var_80AF75C8)($at)
    lui     $at, %hi(var_80AF75CC)     # $at = 80AF0000
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_80AF31C0
    nop
    b       lbl_80AF31E0
    addiu   s0, $zero, 0x0061          # s0 = 00000061
lbl_80AF31C0:
    lwc1    $f18, %lo(var_80AF75CC)($at)
    addiu   s0, $zero, 0x0021          # s0 = 00000021
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_80AF31E0
    nop
    b       lbl_80AF31E0
    addiu   s0, $zero, 0x0041          # s0 = 00000041
lbl_80AF31E0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    mul.s   $f4, $f20, $f22
    addiu   t6, $zero, 0xFF38          # t6 = FFFFFF38
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    mul.s   $f8, $f0, $f22
    sw      t7, 0x0018($sp)
    sw      t6, 0x0010($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x0186          # t7 = 00000186
    add.s   $f16, $f4, $f22
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    trunc.w.s $f10, $f8
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    sw      t2, 0x002C($sp)
    trunc.w.s $f6, $f16
    mfc1    t4, $f10
    sw      t1, 0x0028($sp)
    sw      t8, 0x001C($sp)
    mfc1    t0, $f6
    addiu   t5, t4, 0x001E             # t5 = 0000001E
    sw      t5, 0x0030($sp)
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = FFFFFFF4
    or      a2, s6, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    sw      s7, 0x003C($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    addiu   s1, s1, 0x1555             # s1 = 00001555
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s1, s1, 16
    bne     s3, s8, lbl_80AF30FC
    sra     s1, s1, 16
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80AF32CC:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s4, 0x0088($sp)
    sll     s4, a2, 16
    sw      s6, 0x0090($sp)
    sw      s2, 0x0080($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s6, a0, $zero              # s6 = 00000000
    sra     s4, s4, 16
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s5, 0x008C($sp)
    sw      s3, 0x0084($sp)
    sw      s1, 0x007C($sp)
    sw      s0, 0x0078($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    sw      a2, 0x00D8($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x41E0                # $at = 41E00000
    mtc1    $at, $f30                  # $f30 = 28.00
    lui     $at, 0x4296                # $at = 42960000
    trunc.w.s $f6, $f4
    mtc1    $at, $f28                  # $f28 = 75.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    lui     $at, 0x4040                # $at = 40400000
    mfc1    s5, $f6
    mtc1    $at, $f24                  # $f24 = 3.00
    lui     $at, 0x4238                # $at = 42380000
    mtc1    $at, $f22                  # $f22 = 46.00
    or      s1, $zero, $zero           # s1 = 00000000
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   s8, $sp, 0x00B8            # s8 = FFFFFFE8
    addiu   s7, $sp, 0x00C4            # s7 = FFFFFFF4
    addiu   s5, s5, 0x001E             # s5 = 0000001E
lbl_80AF336C:
    sll     a0, s1, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00C4($sp)
    mul.s   $f10, $f0, $f28
    sll     a0, s1, 16
    sra     a0, a0, 16
    sub.s   $f16, $f10, $f30
    jal     func_80063684              # coss?
    swc1    $f16, 0x00C8($sp)
    mul.s   $f18, $f0, $f22
    sll     a0, s4, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x00CC($sp)
    mul.s   $f4, $f0, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00B8($sp)
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f6                   # $f6 = -4.00
    sll     a0, s4, 16
    sra     a0, a0, 16
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f8, $f26
    jal     func_80063684              # coss?
    swc1    $f10, 0x00BC($sp)
    mul.s   $f16, $f0, $f24
    lwc1    $f18, 0x00C4($sp)
    lwc1    $f8, 0x00C8($sp)
    swc1    $f16, 0x00C0($sp)
    lwc1    $f4, 0x0000(s2)            # 00000000
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x00CC($sp)
    swc1    $f6, 0x00C4($sp)
    lwc1    $f10, 0x0004(s2)           # 00000004
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x00C8($sp)
    lwc1    $f4, 0x0008(s2)            # 00000008
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00CC($sp)
    lui     $at, %hi(var_80AF75D0)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF75D0)($at)
    lui     $at, %hi(var_80AF75D4)     # $at = 80AF0000
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80AF343C
    nop
    b       lbl_80AF345C
    addiu   s0, $zero, 0x0061          # s0 = 00000061
lbl_80AF343C:
    lwc1    $f10, %lo(var_80AF75D4)($at)
    addiu   s0, $zero, 0x0021          # s0 = 00000021
    c.lt.s  $f0, $f10
    nop
    bc1f    lbl_80AF345C
    nop
    b       lbl_80AF345C
    addiu   s0, $zero, 0x0041          # s0 = 00000041
lbl_80AF345C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    mul.s   $f16, $f20, $f26
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x0EA0             # t5 = 06000EA0
    addiu   t7, $zero, 0xFF09          # t7 = FFFFFF09
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    add.s   $f4, $f16, $f18
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x012C          # t2 = 0000012C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    trunc.w.s $f6, $f4
    addiu   t4, $zero, 0x0186          # t4 = 00000186
    sw      t4, 0x0038($sp)
    sw      t3, 0x0034($sp)
    mfc1    t0, $f6
    sw      t2, 0x002C($sp)
    sw      t1, 0x0028($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0010($sp)
    sw      t5, 0x003C($sp)
    or      a0, s6, $zero              # a0 = 00000000
    or      a1, s7, $zero              # a1 = FFFFFFF4
    or      a2, s8, $zero              # a2 = FFFFFFE8
    or      a3, s2, $zero              # a3 = 00000000
    sw      s0, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    sw      s5, 0x0030($sp)
    jal     func_8001D998
    sw      t0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    s1, s1, $at
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s3, s3, 0x0001             # s3 = 00000001
    sll     s1, s1, 16
    bne     s3, $at, lbl_80AF336C
    sra     s1, s1, 16
    lw      $ra, 0x009C($sp)
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    ldc1    $f30, 0x0070($sp)
    lw      s0, 0x0078($sp)
    lw      s1, 0x007C($sp)
    lw      s2, 0x0080($sp)
    lw      s3, 0x0084($sp)
    lw      s4, 0x0088($sp)
    lw      s5, 0x008C($sp)
    lw      s6, 0x0090($sp)
    lw      s7, 0x0094($sp)
    lw      s8, 0x0098($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80AF354C:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a2, 0x00B0($sp)
    sw      a3, 0x00B4($sp)
    jal     func_8009DB54
    or      a0, s4, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80AF3760
    lw      a1, 0x00C4($sp)
    blez    a1, lbl_80AF3760
    lw      s8, 0x00C0($sp)
    blez    s8, lbl_80AF3760
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s4
    lw      v0, 0x1DE4(v0)             # 00011DE4
    lwc1    $f0, 0x00BC($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    bltz    v0, lbl_80AF35D4
    subu    v1, $zero, v0
    b       lbl_80AF35D4
    or      v1, v0, $zero              # v1 = 00010000
lbl_80AF35D4:
    div     $zero, v1, a1
    mfhi    v0
    sll     t6, v0, 16
    bne     a1, $zero, lbl_80AF35EC
    nop
    break   # 0x01C00
lbl_80AF35EC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_80AF3604
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_80AF3604
    nop
    break   # 0x01800
lbl_80AF3604:
    div     $zero, t6, s8
    bne     s8, $zero, lbl_80AF3614
    nop
    break   # 0x01C00
lbl_80AF3614:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s8, $at, lbl_80AF362C
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80AF362C
    nop
    break   # 0x01800
lbl_80AF362C:
    mflo    s0
    sll     s0, s0, 16
    slt     $at, v0, s8
    sra     s0, s0, 16
    beq     $at, $zero, lbl_80AF3760
    or      s1, v0, $zero              # s1 = 00010000
    div     $zero, t7, s8
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    mflo    s5
    sll     s5, s5, 16
    mul.s   $f22, $f4, $f0
    bne     s8, $zero, lbl_80AF3668
    nop
    break   # 0x01C00
lbl_80AF3668:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s8, $at, lbl_80AF3680
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_80AF3680
    nop
    break   # 0x01800
lbl_80AF3680:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    lui     $at, %hi(var_80AF75D8)     # $at = 80AF0000
    lwc1    $f24, %lo(var_80AF75D8)($at)
    mul.s   $f8, $f6, $f0
    sra     s5, s5, 16
    lwc1    $f20, 0x00B8($sp)
    lh      s7, 0x00CA($sp)
    addiu   s2, $sp, 0x007C            # s2 = FFFFFFD4
    trunc.w.s $f10, $f8
    mfc1    s6, $f10
    nop
    sll     s6, s6, 16
    sra     s6, s6, 16
lbl_80AF36B8:
    sll     a0, s0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mul.s   $f16, $f0, $f20
    lwc1    $f18, 0x0000(s3)           # 00000000
    sll     a0, s0, 16
    sra     a0, a0, 16
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x007C($sp)
    lwc1    $f6, 0x0004(s3)            # 00000004
    jal     func_80063684              # coss?
    swc1    $f6, 0x0080($sp)
    mul.s   $f8, $f0, $f20
    lwc1    $f10, 0x0008(s3)           # 00000008
    sw      s7, 0x0018($sp)
    sw      s6, 0x0014($sp)
    swc1    $f22, 0x0010($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFD4
    add.s   $f16, $f8, $f10
    lw      a2, 0x00B0($sp)
    lw      a3, 0x00B4($sp)
    jal     func_80AF2840
    swc1    $f16, 0x0084($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.le.s  $f0, $f24
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = FFFFFFD4
    sll     a2, s0, 16
    bc1fl   lbl_80AF3744
    addu    s0, s0, s5
    jal     func_80AF32CC
    sra     a2, a2, 16
    addu    s0, s0, s5
lbl_80AF3744:
    sll     s0, s0, 16
    sra     s0, s0, 16
    lw      t9, 0x00C4($sp)
    addu    s1, s1, t9
    slt     $at, s1, s8
    bne     $at, $zero, lbl_80AF36B8
    nop
lbl_80AF3760:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
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
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80AF379C:
    lbu     t6, 0x1D6C(a0)             # 00001D6C
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80AF37B4
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AF37B4:
    jr      $ra
    nop


func_80AF37BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      a0, 0x0028($sp)
    jal     func_80AF379C
    sw      $zero, 0x001C($sp)
    bne     v0, $zero, lbl_80AF37F4
    lw      v1, 0x001C($sp)
    lw      t7, 0x002C($sp)
    lw      t6, 0x0028($sp)
    sll     t8, t7,  2
    addu    t9, t6, t8
    lw      v1, 0x1D8C(t9)             # 00001D8C
lbl_80AF37F4:
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF3808:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80AF37BC
    or      a1, a2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80AF383C
    lw      $ra, 0x0014($sp)
    lhu     t6, 0x001E($sp)
    lhu     t7, 0x0000(v0)             # 00000000
    bnel    t6, t7, lbl_80AF3840
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80AF3840
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AF383C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AF3840:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80AF3848:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    jal     func_80AF37BC
    or      a1, a2, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80AF3918
    lw      t6, 0x0044($sp)
    lhu     a0, 0x0004(v0)             # 00000004
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a2, 0x1D74(t6)             # 00001D74
    sw      v0, 0x003C($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8005C714
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    lw      v1, 0x003C($sp)
    lw      v0, 0x0040($sp)
    lw      t8, 0x0010(v1)             # 00000010
    lw      t7, 0x000C(v1)             # 0000000C
    lw      t0, 0x0018(v1)             # 00000018
    lw      t9, 0x0014(v1)             # 00000014
    mtc1    t8, $f6                    # $f6 = 0.00
    lw      t2, 0x0020(v1)             # 00000020
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      t1, 0x001C(v1)             # 0000001C
    mtc1    t0, $f10                   # $f10 = 0.00
    cvt.s.w $f12, $f6
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    addiu   v0, v0, 0x0024             # v0 = 00000024
    cvt.s.w $f2, $f4
    mtc1    t1, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f14, $f8
    cvt.s.w $f8, $f6
    cvt.s.w $f18, $f4
    swc1    $f8, 0x0020($sp)
    sub.s   $f10, $f16, $f2
    sub.s   $f8, $f18, $f12
    mul.s   $f4, $f10, $f0
    nop
    mul.s   $f10, $f8, $f0
    add.s   $f6, $f4, $f2
    add.s   $f4, $f10, $f12
    swc1    $f6, 0x0000(v0)            # 00000024
    swc1    $f4, 0x0004(v0)            # 00000028
    lwc1    $f6, 0x0020($sp)
    sub.s   $f8, $f6, $f14
    mul.s   $f10, $f8, $f0
    add.s   $f4, $f10, $f14
    swc1    $f4, 0x0008(v0)            # 0000002C
lbl_80AF3918:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF3928:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_80AF39C4
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75DC)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75DC)($at)
    lh      t9, 0x1474(v0)             # 80121474
    lh      t0, 0x1476(v0)             # 80121476
    lh      t1, 0x1478(v0)             # 80121478
    mtc1    t9, $f4                    # $f4 = 0.00
    mtc1    t0, $f8                    # $f8 = 0.00
    lh      t6, 0x147A(v0)             # 8012147A
    cvt.s.w $f6, $f4
    mtc1    t1, $f4                    # $f4 = 0.00
    lh      t7, 0x147C(v0)             # 8012147C
    lh      t8, 0x147E(v0)             # 8012147E
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f10, $f8
    mul.s   $f2, $f6, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    addu    a1, t6, v1
    addu    a2, t7, v1
    mul.s   $f16, $f10, $f0
    addu    a3, t8, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f6, $f4
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f16, $f18
    mul.s   $f14, $f6, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF39C4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_80AF3A54
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75E0)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75E0)($at)
    lh      t5, 0x1480(v0)             # 80121480
    lh      t6, 0x1482(v0)             # 80121482
    lh      t7, 0x1484(v0)             # 80121484
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    lh      t2, 0x1486(v0)             # 80121486
    cvt.s.w $f10, $f8
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      t3, 0x1488(v0)             # 80121488
    lh      t4, 0x148A(v0)             # 8012148A
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f18, $f16
    mul.s   $f2, $f10, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addu    a1, t2, v1
    addu    a2, t3, v1
    mul.s   $f4, $f18, $f0
    addu    a3, t4, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f10, $f8
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f4, $f6
    mul.s   $f14, $f10, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3A54:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_80AF3AE4
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75E4)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75E4)($at)
    lh      t1, 0x148C(v0)             # 8012148C
    lh      t2, 0x148E(v0)             # 8012148E
    lh      t3, 0x1490(v0)             # 80121490
    mtc1    t1, $f16                   # $f16 = 0.00
    mtc1    t2, $f4                    # $f4 = 0.00
    lh      t8, 0x1492(v0)             # 80121492
    cvt.s.w $f18, $f16
    mtc1    t3, $f16                   # $f16 = 0.00
    lh      t9, 0x1494(v0)             # 80121494
    lh      t0, 0x1496(v0)             # 80121496
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f6, $f4
    mul.s   $f2, $f18, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    addu    a1, t8, v1
    addu    a2, t9, v1
    mul.s   $f8, $f6, $f0
    addu    a3, t0, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f18, $f16
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f8, $f10
    mul.s   $f14, $f18, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3AE4:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_80AF3B74
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75E8)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75E8)($at)
    lh      t7, 0x1498(v0)             # 80121498
    lh      t8, 0x149A(v0)             # 8012149A
    lh      t9, 0x149C(v0)             # 8012149C
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lh      t4, 0x149E(v0)             # 8012149E
    cvt.s.w $f6, $f4
    mtc1    t9, $f4                    # $f4 = 0.00
    lh      t5, 0x14A0(v0)             # 801214A0
    lh      t6, 0x14A2(v0)             # 801214A2
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f10, $f8
    mul.s   $f2, $f6, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    addu    a1, t4, v1
    addu    a2, t5, v1
    mul.s   $f16, $f10, $f0
    addu    a3, t6, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f6, $f4
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f16, $f18
    mul.s   $f14, $f6, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3B74:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     a1, $at, lbl_80AF3C04
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75EC)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75EC)($at)
    lh      t3, 0x14A4(v0)             # 801214A4
    lh      t4, 0x14A6(v0)             # 801214A6
    lh      t5, 0x14A8(v0)             # 801214A8
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f16                   # $f16 = 0.00
    lh      t0, 0x14AA(v0)             # 801214AA
    cvt.s.w $f10, $f8
    mtc1    t5, $f8                    # $f8 = 0.00
    lh      t1, 0x14AC(v0)             # 801214AC
    lh      t2, 0x14AE(v0)             # 801214AE
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f18, $f16
    mul.s   $f2, $f10, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addu    a1, t0, v1
    addu    a2, t1, v1
    mul.s   $f4, $f18, $f0
    addu    a3, t2, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f10, $f8
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f4, $f6
    mul.s   $f14, $f10, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3C04:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a1, $at, lbl_80AF3C94
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75F0)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75F0)($at)
    lh      t9, 0x14B0(v0)             # 801214B0
    lh      t0, 0x14B2(v0)             # 801214B2
    lh      t1, 0x14B4(v0)             # 801214B4
    mtc1    t9, $f16                   # $f16 = 0.00
    mtc1    t0, $f4                    # $f4 = 0.00
    lh      t6, 0x14B6(v0)             # 801214B6
    cvt.s.w $f18, $f16
    mtc1    t1, $f16                   # $f16 = 0.00
    lh      t7, 0x14B8(v0)             # 801214B8
    lh      t8, 0x14BA(v0)             # 801214BA
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f6, $f4
    mul.s   $f2, $f18, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    addu    a1, t6, v1
    addu    a2, t7, v1
    mul.s   $f8, $f6, $f0
    addu    a3, t8, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f18, $f16
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f8, $f10
    mul.s   $f14, $f18, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3C94:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_80AF3D28
    lui     v0, 0x8012                 # v0 = 80120000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75F4)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75F4)($at)
    lh      t5, 0x14F8(v0)             # 801214F8
    lh      t6, 0x14FA(v0)             # 801214FA
    lh      t7, 0x14FC(v0)             # 801214FC
    mtc1    t5, $f4                    # $f4 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    lh      t2, 0x14FE(v0)             # 801214FE
    cvt.s.w $f6, $f4
    mtc1    t7, $f4                    # $f4 = 0.00
    lh      t3, 0x1500(v0)             # 80121500
    lh      t4, 0x1502(v0)             # 80121502
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f10, $f8
    mul.s   $f2, $f6, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    addu    a1, t2, v1
    addu    a2, t3, v1
    mul.s   $f16, $f10, $f0
    addu    a3, t4, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f6, $f4
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f16, $f18
    mul.s   $f14, $f6, $f0
    b       lbl_80AF3DAC
    lw      v0, 0x0048($sp)
lbl_80AF3D28:
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, %hi(var_80AF75F8)     # $at = 80AF0000
    lwc1    $f0, %lo(var_80AF75F8)($at)
    lh      t1, 0x1504(v0)             # 80121504
    lh      t2, 0x1506(v0)             # 80121506
    lh      t3, 0x1508(v0)             # 80121508
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    lh      t8, 0x150A(v0)             # 8012150A
    cvt.s.w $f10, $f8
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      t9, 0x150C(v0)             # 8012150C
    lh      t0, 0x150E(v0)             # 8012150E
    ori     v1, $zero, 0x8000          # v1 = 00008000
    cvt.s.w $f18, $f16
    mul.s   $f2, $f10, $f0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addu    a1, t8, v1
    addu    a2, t9, v1
    mul.s   $f4, $f18, $f0
    addu    a3, t0, v1
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a1, a1, 16
    cvt.s.w $f10, $f8
    sra     a2, a2, 16
    sra     a3, a3, 16
    add.s   $f12, $f4, $f6
    mul.s   $f14, $f10, $f0
    nop
    lw      v0, 0x0048($sp)
lbl_80AF3DAC:
    lh      t4, 0x015C(v0)             # 8012015C
    lh      t6, 0x015E(v0)             # 8012015E
    lh      t8, 0x0160(v0)             # 80120160
    addu    t5, t4, a1
    sh      t5, 0x015C(v0)             # 8012015C
    addu    t7, t6, a2
    addu    t9, t8, a3
    sh      t7, 0x015E(v0)             # 8012015E
    sh      t9, 0x0160(v0)             # 80120160
    lh      a0, 0x015C(v0)             # 8012015C
    addiu   v0, v0, 0x015C             # v0 = 8012015C
    sw      v0, 0x0018($sp)
    swc1    $f14, 0x0024($sp)
    swc1    $f12, 0x0020($sp)
    jal     func_80063684              # coss?
    swc1    $f2, 0x001C($sp)
    lwc1    $f2, 0x001C($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f16, $f0, $f2
    swc1    $f16, 0x0028($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0002(v0)             # 00000002
    lwc1    $f12, 0x0020($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f18, $f0, $f12
    swc1    $f18, 0x002C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0004(v0)             # 00000004
    lw      v0, 0x0048($sp)
    lwc1    $f6, 0x0028($sp)
    lwc1    $f14, 0x0024($sp)
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   v0, v0, 0x0024             # v0 = 00000024
    add.s   $f8, $f4, $f6
    mul.s   $f6, $f0, $f14
    lwc1    $f4, 0x0008(v0)            # 0000002C
    swc1    $f8, 0x0000(v0)            # 00000024
    lwc1    $f16, 0x002C($sp)
    add.s   $f8, $f4, $f6
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0008(v0)            # 0000002C
    swc1    $f18, 0x0004(v0)           # 00000028
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80AF3E64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3848
    lw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    lw      a1, 0x0020($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF3E9C:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D0(t6)            # 8011B930
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    slti    $at, t6, 0x0004
    beq     $at, $zero, lbl_80AF3EBC
    nop
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AF3EBC:
    jr      $ra
    nop


func_80AF3EC4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lw      a0, 0x0028($sp)
    lui     a1, %hi(var_80AF7428)      # a1 = 80AF0000
    beql    t6, $zero, lbl_80AF3F30
    lw      $ra, 0x0014($sp)
    jal     func_80063F7C
    addiu   a1, a1, %lo(var_80AF7428)  # a1 = 80AF7428
    lw      a0, 0x0028($sp)
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0030($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t7, 0x0028($sp)
    sw      v0, 0x013C(t7)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_80AF3F30:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF3F3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_80AF3E9C
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80AF3F84
    lw      a0, 0x0018($sp)
    lw      t6, 0x0020($sp)
    sw      t6, 0x0154(a0)             # 00000154
    lw      t7, 0x0024($sp)
    sw      t7, 0x0158(a0)             # 00000158
    lw      a2, 0x0028($sp)
    jal     func_80AF3EC4
    lw      a1, 0x001C($sp)
    b       lbl_80AF3F90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AF3F84:
    jal     func_80020EB4
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AF3F90:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF3FA0:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF3FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x020F         # $at = 0000020F
    bnel    v0, $at, lbl_80AF4020
    lw      $ra, 0x0014($sp)
    jal     func_800C4C84
    addiu   a0, $zero, 0x000D          # a0 = 0000000D
    lw      $ra, 0x0014($sp)
lbl_80AF4020:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF402C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AF403C:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFD8
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFCC
    lui     t7, %hi(var_80AF742C)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF742C)  # t7 = 80AF742C
    lw      t9, 0x0000(t7)             # 80AF742C
    lhu     v0, 0x1D74(t6)             # 00001D74
    lui     t0, %hi(var_80AF7438)      # t0 = 80AF0000
    sw      t9, 0x0000(a2)             # FFFFFFD8
    lw      t8, 0x0004(t7)             # 80AF7430
    addiu   t0, t0, %lo(var_80AF7438)  # t0 = 80AF7438
    addiu   $at, $zero, 0x00DC         # $at = 000000DC
    sw      t8, 0x0004(a2)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 80AF7434
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFE4
    sw      t9, 0x0008(a2)             # FFFFFFE0
    lw      t2, 0x0000(t0)             # 80AF7438
    sw      t2, 0x0000(a3)             # FFFFFFCC
    lw      t1, 0x0004(t0)             # 80AF743C
    sw      t1, 0x0004(a3)             # FFFFFFD0
    lw      t2, 0x0008(t0)             # 80AF7440
    bne     v0, $at, lbl_80AF4184
    sw      t2, 0x0008(a3)             # FFFFFFD4
    lw      v0, 0x0068($sp)
    lui     $at, 0x4380                # $at = 43800000
    mtc1    $at, $f6                   # $f6 = 256.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, %hi(var_80AF75FC)     # $at = 80AF0000
    lwc1    $f16, %lo(var_80AF75FC)($at)
    add.s   $f8, $f4, $f6
    lui     $at, 0x42A4                # $at = 42A40000
    mtc1    $at, $f6                   # $f6 = 82.00
    lui     $at, %hi(var_80AF7600)     # $at = 80AF0000
    swc1    $f8, 0x004C($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t3, $zero, 0x000F          # t3 = 0000000F
    addiu   t4, $zero, 0x001E          # t4 = 0000001E
    add.s   $f18, $f10, $f16
    lwc1    $f10, %lo(var_80AF7600)($at)
    addiu   v0, v0, 0x0024             # v0 = 00000024
    lw      a0, 0x006C($sp)
    swc1    $f18, 0x0050($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sw      v0, 0x0028($sp)
    sw      t4, 0x0018($sp)
    add.s   $f8, $f4, $f6
    sw      t3, 0x0014($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_80AF2840
    swc1    $f8, 0x0054($sp)
    lw      v0, 0x0028($sp)
    lui     $at, 0x4380                # $at = 43800000
    mtc1    $at, $f18                  # $f18 = 256.00
    lwc1    $f16, 0x0000(v0)           # 00000000
    lui     $at, %hi(var_80AF7604)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF7604)($at)
    add.s   $f4, $f16, $f18
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f18                  # $f18 = 60.00
    lui     $at, %hi(var_80AF7608)     # $at = 80AF0000
    swc1    $f4, 0x004C($sp)
    lwc1    $f6, 0x0004(v0)            # 00000004
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    add.s   $f10, $f6, $f8
    lwc1    $f6, %lo(var_80AF7608)($at)
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFE4
    swc1    $f10, 0x0050($sp)
    lwc1    $f16, 0x0008(v0)           # 00000008
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sub.s   $f4, $f16, $f18
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFD8
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFCC
    swc1    $f6, 0x0010($sp)
    jal     func_80AF2840
    swc1    $f4, 0x0054($sp)
lbl_80AF4184:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF4194:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0054($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0054($sp)
    addiu   $at, $zero, 0x008C         # $at = 0000008C
    lhu     v0, 0x1D74(t6)             # 00001D74
    bne     v0, $at, lbl_80AF4214
    or      v1, v0, $zero              # v1 = 00000000
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f6                   # $f6 = 260.00
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x43AA                # $at = 43AA0000
    mtc1    $at, $f16                  # $f16 = 340.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f6                   # $f6 = 45.00
    or      a0, t6, $zero              # a0 = 00000000
    swc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x0028(a3)           # 00000028
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lui     a2, 0x4000                 # a2 = 40000000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x003C($sp)
    lwc1    $f4, 0x002C(a3)            # 0000002C
    sw      a3, 0x0050($sp)
    sw      v0, 0x0018($sp)
    add.s   $f8, $f4, $f6
    jal     func_80AF2AB8
    swc1    $f8, 0x0040($sp)
    lw      v1, 0x0018($sp)
    lw      a3, 0x0050($sp)
lbl_80AF4214:
    addiu   $at, $zero, 0x00B0         # $at = 000000B0
    bne     v1, $at, lbl_80AF4268
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f16                  # $f16 = 260.00
    lwc1    $f10, 0x0024(a3)           # 00000024
    lui     $at, 0x4452                # $at = 44520000
    mtc1    $at, $f6                   # $f6 = 840.00
    add.s   $f18, $f10, $f16
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f16                  # $f16 = 45.00
    lw      a0, 0x0054($sp)
    swc1    $f18, 0x0024($sp)
    lwc1    $f4, 0x0028(a3)            # 00000028
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFD4
    lui     a2, 0x4000                 # a2 = 40000000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028($sp)
    lwc1    $f10, 0x002C(a3)           # 0000002C
    add.s   $f18, $f10, $f16
    jal     func_80AF2AB8
    swc1    $f18, 0x002C($sp)
lbl_80AF4268:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80AF4278:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF402C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF403C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF4194
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF42BC:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBA00             # a2 = 8011BA00
    lw      v1, 0x0000(a2)             # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x4120                # $at = 41200000
    lh      t6, 0x14E4(v1)             # 000014E4
    lh      t7, 0x14D4(v1)             # 000014D4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, %hi(var_80AF760C)     # $at = 80AF0000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF760C)($at)
    lui     $at, %hi(var_80AF7610)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF7610)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t5, 0x0162(a0)             # 00000162
    lh      a1, 0x14E6(t2)             # 000014E6
    addiu   a1, a1, 0x0250             # a1 = 00000250
    sll     t3, a1, 16
    sra     t4, t3, 16
    slt     $at, t4, t5
    beq     $at, $zero, lbl_80AF435C
    nop
    sh      a1, 0x0162(a0)             # 00000162
lbl_80AF435C:
    jr      $ra
    nop


func_80AF4364:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lhu     a2, 0x1D74(a1)             # 00001D74
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    slti    $at, a2, 0x00A0
    beq     $at, $zero, lbl_80AF43D4
    or      v0, a2, $zero              # v0 = 00000000
    addiu   v0, s0, 0x0168             # v0 = 00000168
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sw      a1, 0x0000(v0)             # 00000168
    sw      a2, 0x0004(v0)             # 0000016C
    sw      t6, 0x0008(v0)             # 00000170
    addiu   v1, s0, 0x0178             # v1 = 00000178
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    sw      a2, 0x0000(v1)             # 00000178
    sw      t7, 0x0004(v1)             # 0000017C
    sw      a1, 0x0008(v1)             # 00000180
    addiu   a0, s0, 0x0188             # a0 = 00000188
    lw      t8, 0x0000(a0)             # 00000188
    lw      t0, 0x0004(a0)             # 0000018C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sw      t9, 0x0000(a0)             # 00000188
    b       lbl_80AF44C4
    sw      t1, 0x0004(a0)             # 0000018C
lbl_80AF43D4:
    slti    $at, v0, 0x00AA
    beq     $at, $zero, lbl_80AF44A4
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    addiu   a0, $zero, 0x00AA          # a0 = 000000AA
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8005C714
    sw      $zero, 0x0010($sp)
    lui     $at, 0xC27C                # $at = C27C0000
    mtc1    $at, $f4                   # $f4 = -63.00
    lui     $at, 0x4323                # $at = 43230000
    mtc1    $at, $f8                   # $f8 = 163.00
    mul.s   $f6, $f0, $f4
    lui     $at, 0xC31B                # $at = C31B0000
    mtc1    $at, $f18                  # $f18 = -155.00
    lui     $at, 0x437F                # $at = 437F0000
    addiu   v0, s0, 0x0168             # v0 = 00000168
    mul.s   $f4, $f0, $f18
    addiu   v1, s0, 0x0178             # v1 = 00000178
    add.s   $f10, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 255.00
    lui     $at, 0xC2C8                # $at = C2C80000
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    trunc.w.s $f16, $f10
    add.s   $f8, $f4, $f6
    mfc1    t3, $f16
    mtc1    $at, $f16                  # $f16 = -100.00
    lui     $at, 0x4348                # $at = 43480000
    trunc.w.s $f10, $f8
    mtc1    $at, $f4                   # $f4 = 200.00
    mul.s   $f18, $f0, $f16
    lui     $at, 0xC1A0                # $at = C1A00000
    mfc1    a0, $f10
    mtc1    $at, $f10                  # $f10 = -20.00
    lui     $at, 0x42F0                # $at = 42F00000
    sw      t3, 0x0000(v0)             # 00000168
    mul.s   $f16, $f0, $f10
    add.s   $f6, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 120.00
    sw      a0, 0x0004(v0)             # 0000016C
    trunc.w.s $f8, $f6
    add.s   $f4, $f16, $f18
    mfc1    t6, $f8
    trunc.w.s $f6, $f4
    sw      t6, 0x0008(v0)             # 00000170
    sw      a1, 0x0008(v1)             # 00000180
    sw      a0, 0x0000(v1)             # 00000178
    mfc1    t8, $f6
    nop
    sw      t8, 0x0004(v1)             # 0000017C
    b       lbl_80AF44C8
    lw      $ra, 0x0024($sp)
lbl_80AF44A4:
    addiu   v0, s0, 0x0168             # v0 = 00000168
    sw      a1, 0x0000(v0)             # 00000168
    sw      a1, 0x0004(v0)             # 0000016C
    sw      a1, 0x0008(v0)             # 00000170
    addiu   v1, s0, 0x0178             # v1 = 00000178
    sw      a1, 0x0000(v1)             # 00000178
    sw      a1, 0x0004(v1)             # 0000017C
    sw      a1, 0x0008(v1)             # 00000180
lbl_80AF44C4:
    lw      $ra, 0x0024($sp)
lbl_80AF44C8:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF44D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     v0, $zero, lbl_80AF4508
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF4508:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF4518:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4364
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF3928
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4278
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF44D8
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AF27A8
    nop
    jal     func_80AF2810
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF3FF8
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AF4590:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4364
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AF42BC
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4278
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80AF27A8
    nop
    jal     func_80AF2810
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF3FF8
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AF4608:
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1DE4(t6)             # 00011DE4
    lw      s0, 0x0000(a1)             # 00000000
    lui     $at, %hi(var_80AF7614)     # $at = 80AF0000
    sw      t6, 0x00CC($sp)
    lh      a0, 0x0162(s1)             # 00000162
    lwc1    $f8, %lo(var_80AF7614)($at)
    lui     v0, 0x8012                 # v0 = 80120000
    mtc1    a0, $f4                    # $f4 = 0.00
    lw      v0, -0x4600(v0)            # 8011BA00
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x00C0($sp)
    lh      t7, 0x14E2(v0)             # 801214E2
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x00BC($sp)
    lh      t9, 0x14E0(v0)             # 801214E0
    addiu   t4, t9, 0x4000             # t4 = 00004000
    sh      t4, 0x00B8($sp)
    sh      t9, 0x00BA($sp)
    lw      s2, 0x02C4(s0)             # 000002C4
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFFC0
    sw      s2, 0x02C4(s0)             # 000002C4
    jal     func_80063684              # coss?
    sh      a0, 0x00C6($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x0098($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B8($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x00A8($sp)
    lh      a0, 0x00B8($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x00AC($sp)
    swc1    $f0, 0x00B0($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00BA($sp)
    lwc1    $f8, 0x00BC($sp)
    lwc1    $f16, 0x0098($sp)
    lh      a0, 0x00C6($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x009C($sp)
    lwc1    $f4, 0x00BC($sp)
    lh      a0, 0x00BA($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x00A0($sp)
    lwc1    $f8, 0x00BC($sp)
    lwc1    $f16, 0x0098($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x00A4($sp)
    lwc1    $f12, 0x00C0($sp)
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFD0
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x009C($sp)
    lwc1    $f14, 0x00A0($sp)
    lw      a2, 0x00A4($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    or      a0, s2, $zero              # a0 = FFFFFFC0
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    addiu   t1, s1, 0x0188             # t1 = 00000188
    lw      a3, 0x0000(t1)             # 00000188
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t4, 0x0004(t1)             # 0000018C
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    addiu   v0, s1, 0x0168             # v0 = 00000168
    sw      t4, 0x0020($sp)
    lw      t7, 0x0000(v0)             # 00000168
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x002C($sp)
    lw      t8, 0x0004(v0)             # 0000016C
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t8, 0x0030($sp)
    lw      t9, 0x0008(v0)             # 00000170
    sw      t1, 0x005C($sp)
    sw      t4, 0x0038($sp)
    sw      v1, 0x0080($sp)
    jal     func_8007ECA4
    sw      t9, 0x0034($sp)
    lw      t2, 0x0080($sp)
    lw      t1, 0x005C($sp)
    lui     t6, 0xDB06                 # t6 = DB060000
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t6, t6, 0x0028             # t6 = DB060028
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v1)             # 00000000
    lw      a3, 0x0000(t1)             # 00000000
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      $zero, 0x001C($sp)
    sw      t7, 0x0010($sp)
    lw      t4, 0x0004(t1)             # 00000004
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    addiu   t0, s1, 0x0178             # t0 = 00000178
    sw      t4, 0x0020($sp)
    lw      t7, 0x0000(t0)             # 00000178
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x002C($sp)
    lw      t8, 0x0004(t0)             # 0000017C
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t8, 0x0030($sp)
    lw      t9, 0x0008(t0)             # 00000180
    sw      t4, 0x0038($sp)
    sw      v1, 0x007C($sp)
    jal     func_8007ECA4
    sw      t9, 0x0034($sp)
    lw      t3, 0x007C($sp)
    lui     s1, 0xDA38                 # s1 = DA380000
    ori     s1, s1, 0x0003             # s1 = DA380003
    sw      v0, 0x0004(t3)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      s2, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x2910             # t8 = 06002910
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    jal     func_8007E2C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x00CC($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x8080                 # t5 = 80800000
    ori     t5, t5, 0x8080             # t5 = 80808080
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    sll     t5, t1,  4
    subu    t5, t5, t1
    sll     a3, t1,  2
    addu    a3, a3, t1
    sll     t5, t5,  1
    addiu   t7, $zero, 0x0200          # t7 = 00000200
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    addiu   t9, $zero, 0x0200          # t9 = 00000200
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      t6, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t5, 0x0020($sp)
    sll     a3, a3,  2
    sw      $zero, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x006C($sp)
    lw      t0, 0x006C($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      s2, 0x0004(v1)             # 00000004
    sw      s1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x41A0             # t5 = 060041A0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      $ra, 0x0054($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8


func_80AF49B8:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x5CB8             # t6 = 06005CB8
    mul.s   $f10, $f8, $f0
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF4A14:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AF4A24:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    slti    $at, v0, 0x0424
    bne     $at, $zero, lbl_80AF4AA8
    slti    $at, v0, 0x0426
    beq     $at, $zero, lbl_80AF4AA8
    lui     v1, %hi(var_80AF7444)      # v1 = 80AF0000
    lw      v1, %lo(var_80AF7444)(v1)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4419                # $at = 44190000
    mtc1    $at, $f8                   # $f8 = 612.00
    swc1    $f4, 0x0024($sp)
    lwc1    $f6, 0x0028(a0)            # 00000028
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFE4
    lwc1    $f18, 0x0024($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x002C(a0)           # 0000002C
    or      a0, a3, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80AF4A94
    swc1    $f16, 0x002C($sp)
    jal     func_80AF2A58
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     $at, %hi(var_80AF7444)     # $at = 80AF0000
    b       lbl_80AF4AA8
    sw      v0, %lo(var_80AF7444)($at)
lbl_80AF4A94:
    swc1    $f18, 0x0024(v1)           # 00000024
    lwc1    $f4, 0x0028($sp)
    swc1    $f4, 0x0028(v1)            # 00000028
    lwc1    $f6, 0x002C($sp)
    swc1    $f6, 0x002C(v1)            # 0000002C
lbl_80AF4AA8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF4AB8:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF7448)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF7448)  # t7 = 80AF7448
    lw      t9, 0x0000(t7)             # 80AF7448
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF744C
    slti    $at, v0, 0x01F7
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF7450
    bne     $at, $zero, lbl_80AF4B70
    sw      t9, 0x0008(a2)             # FFFFFFDC
    slti    $at, v0, 0x0245
    beq     $at, $zero, lbl_80AF4B70
    lw      v0, 0x0068($sp)
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f16                  # $f16 = 360.00
    add.s   $f8, $f4, $f6
    lui     $at, %hi(var_80AF7618)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7618)($at)
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    add.s   $f18, $f10, $f16
    addiu   v0, v0, 0x0024             # v0 = 00000024
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF4B70:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF4B80:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0054($sp)
    lw      t6, 0x0054($sp)
    lhu     v1, 0x1D74(t6)             # 00001D74
    slti    $at, v1, 0x0247
    bne     $at, $zero, lbl_80AF4C78
    or      v0, v1, $zero              # v0 = 00000000
    slti    $at, v1, 0x02AB
    beq     $at, $zero, lbl_80AF4C78
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lw      t8, 0x0024(a0)             # 00000024
    lui     $at, 0x442A                # $at = 442A0000
    mtc1    $at, $f6                   # $f6 = 680.00
    sw      t8, 0x0000(a1)             # FFFFFFE8
    lw      t7, 0x0028(a0)             # 00000028
    addiu   $at, $zero, 0x02AA         # $at = 000002AA
    lui     a2, %hi(var_80AF7454)      # a2 = 80AF0000
    sw      t7, 0x0004(a1)             # FFFFFFEC
    lw      t8, 0x002C(a0)             # 0000002C
    lui     a3, %hi(var_80AF7460)      # a3 = 80AF0000
    addiu   a3, a3, %lo(var_80AF7460)  # a3 = 80AF7460
    sw      t8, 0x0008(a1)             # FFFFFFF0
    lwc1    $f4, 0x003C($sp)
    addiu   a2, a2, %lo(var_80AF7454)  # a2 = 80AF7454
    lui     t9, %hi(var_80AF7474)      # t9 = 80AF0000
    add.s   $f8, $f4, $f6
    lui     t0, %hi(var_80AF7478)      # t0 = 80AF0000
    lui     t1, %hi(var_80AF747C)      # t1 = 80AF0000
    bne     v0, $at, lbl_80AF4C1C
    swc1    $f8, 0x003C($sp)
    lui     $at, %hi(var_80AF7458)     # $at = 80AF0000
    lwc1    $f10, %lo(var_80AF7458)($at)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f16                  # $f16 = -200.00
    lui     $at, %hi(var_80AF7458)     # $at = 80AF0000
    add.s   $f18, $f10, $f16
    b       lbl_80AF4C40
    swc1    $f18, %lo(var_80AF7458)($at)
lbl_80AF4C1C:
    addiu   $at, $zero, 0x02A9         # $at = 000002A9
    bne     v0, $at, lbl_80AF4C40
    lui     $at, %hi(var_80AF7464)     # $at = 80AF0000
    lwc1    $f4, %lo(var_80AF7464)($at)
    lui     $at, 0xC348                # $at = C3480000
    mtc1    $at, $f6                   # $f6 = -200.00
    lui     $at, %hi(var_80AF7464)     # $at = 80AF0000
    add.s   $f8, $f4, $f6
    swc1    $f8, %lo(var_80AF7464)($at)
lbl_80AF4C40:
    lui     $at, %hi(var_80AF746C)     # $at = 80AF0000
    lwc1    $f10, %lo(var_80AF746C)($at)
    lui     $at, %hi(var_80AF7470)     # $at = 80AF0000
    lwc1    $f16, %lo(var_80AF7470)($at)
    lw      t9, %lo(var_80AF7474)(t9)
    lw      t0, %lo(var_80AF7478)(t0)
    lh      t1, %lo(var_80AF747C)(t1)
    lw      a0, 0x0054($sp)
    swc1    $f10, 0x0010($sp)
    swc1    $f16, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t0, 0x001C($sp)
    jal     func_80AF354C
    sw      t1, 0x0020($sp)
lbl_80AF4C78:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80AF4C88:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF7480)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF7480)  # t7 = 80AF7480
    lw      t9, 0x0000(t7)             # 80AF7480
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF7484
    slti    $at, v0, 0x02AB
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF7488
    bne     $at, $zero, lbl_80AF4D2C
    sw      t9, 0x0008(a2)             # FFFFFFDC
    lw      v0, 0x0068($sp)
    lui     $at, 0x4382                # $at = 43820000
    mtc1    $at, $f0                   # $f0 = 260.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f10                  # $f10 = 360.00
    add.s   $f6, $f4, $f0
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    lw      a0, 0x006C($sp)
    swc1    $f6, 0x0050($sp)
    lwc1    $f8, 0x0028(v0)            # 00000028
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x40C0                 # a3 = 40C00000
    add.s   $f16, $f8, $f10
    addiu   v0, v0, 0x0024             # v0 = 00000024
    swc1    $f16, 0x0054($sp)
    lwc1    $f18, 0x0008(v0)           # 0000002C
    sw      t1, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    add.s   $f4, $f18, $f0
    sw      t0, 0x0010($sp)
    jal     func_80AF28D0
    swc1    $f4, 0x0058($sp)
lbl_80AF4D2C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF4D3C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x01F7         # $at = 000001F7
    lhu     v0, 0x1D74(t6)             # 00001D74
    bne     v0, $at, lbl_80AF4DA8
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f6                   # $f6 = 300.00
    lwc1    $f4, 0x0024(a3)            # 00000024
    lui     $at, 0x440C                # $at = 440C0000
    mtc1    $at, $f16                  # $f16 = 560.00
    add.s   $f8, $f4, $f6
    lui     $at, %hi(var_80AF761C)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF761C)($at)
    or      a0, t6, $zero              # a0 = 00000000
    swc1    $f8, 0x0020($sp)
    lwc1    $f10, 0x0028(a3)           # 00000028
    addiu   a1, $sp, 0x0020            # a1 = FFFFFFE8
    lui     a2, 0x4000                 # a2 = 40000000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0024($sp)
    lwc1    $f4, 0x002C(a3)            # 0000002C
    sub.s   $f8, $f4, $f6
    jal     func_80AF2AB8
    swc1    $f8, 0x0028($sp)
lbl_80AF4DA8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AF4DB8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4A14
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4A24
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4AB8
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4B80
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4C88
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF4D3C
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AF4E2C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lhu     a2, 0x1D74(a1)             # 00001D74
    slti    $at, a2, 0x0262
    beq     $at, $zero, lbl_80AF4E88
    or      v0, a2, $zero              # v0 = 00000000
    lw      v0, 0x0020($sp)
    addiu   a0, $zero, 0x00C1          # a0 = 000000C1
    addiu   t6, $zero, 0x00A3          # t6 = 000000A3
    sw      t6, 0x0168(v0)             # 00000168
    sw      a0, 0x016C(v0)             # 0000016C
    sw      a0, 0x0170(v0)             # 00000170
    lw      v1, 0x0020($sp)
    addiu   v0, v0, 0x0168             # v0 = 00000168
    lw      t7, 0x0188(v1)             # 00000188
    lw      t9, 0x018C(v1)             # 0000018C
    addiu   v1, v1, 0x0188             # v1 = 00000188
    addiu   t8, t7, 0x0001             # t8 = 00000001
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sw      t8, 0x0000(v1)             # 00000188
    b       lbl_80AF4F1C
    sw      t0, 0x0004(v1)             # 0000018C
lbl_80AF4E88:
    slti    $at, v0, 0x026C
    beq     $at, $zero, lbl_80AF4F08
    lw      v0, 0x0020($sp)
    addiu   a0, $zero, 0x026C          # a0 = 0000026C
    addiu   a1, $zero, 0x0262          # a1 = 00000262
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8005C714
    sw      $zero, 0x0010($sp)
    lui     $at, 0xC150                # $at = C1500000
    mtc1    $at, $f4                   # $f4 = -13.00
    lui     $at, 0x4323                # $at = 43230000
    mtc1    $at, $f8                   # $f8 = 163.00
    mul.s   $f6, $f0, $f4
    lui     $at, 0xC22C                # $at = C22C0000
    mtc1    $at, $f18                  # $f18 = -43.00
    lui     $at, 0x4341                # $at = 43410000
    lw      v0, 0x0020($sp)
    mul.s   $f4, $f0, $f18
    add.s   $f10, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 193.00
    addiu   v0, v0, 0x0168             # v0 = 00000168
    trunc.w.s $f16, $f10
    add.s   $f8, $f4, $f6
    mfc1    t2, $f16
    trunc.w.s $f10, $f8
    sw      t2, 0x0000(v0)             # 00000168
    mfc1    v1, $f10
    nop
    sw      v1, 0x0004(v0)             # 0000016C
    sw      v1, 0x0008(v0)             # 00000170
    b       lbl_80AF4F20
    lw      $ra, 0x001C($sp)
lbl_80AF4F08:
    addiu   v1, $zero, 0x0096          # v1 = 00000096
    sw      v1, 0x0168(v0)             # 000002D0
    addiu   v0, v0, 0x0168             # v0 = 000002D0
    sw      v1, 0x0004(v0)             # 000002D4
    sw      v1, 0x0008(v0)             # 000002D8
lbl_80AF4F1C:
    lw      $ra, 0x001C($sp)
lbl_80AF4F20:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF4F2C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    beq     v0, $zero, lbl_80AF4F5C
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF4F5C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF4F6C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF4E2C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      a0, 0x0018($sp)
    jal     func_80AF4DB8
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF4F2C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF4FBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF4E2C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      a0, 0x0018($sp)
    jal     func_80AF4DB8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5004:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sw      a0, 0x0070($sp)
    lw      s0, 0x0000(a1)             # 00000000
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      t2, 0x0070($sp)
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    addiu   t0, t2, 0x0188             # t0 = 00000188
    sw      t7, 0x0000(v1)             # 00000000
    lw      a3, 0x0000(t0)             # 00000188
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t4, 0x0004(t0)             # 0000018C
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0024($sp)
    sw      t6, 0x0028($sp)
    addiu   v0, t2, 0x0168             # v0 = 00000168
    sw      t4, 0x0020($sp)
    lw      t7, 0x0000(v0)             # 00000168
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    or      a0, s0, $zero              # a0 = 00000000
    sw      t7, 0x002C($sp)
    lw      t8, 0x0004(v0)             # 0000016C
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t8, 0x0030($sp)
    lw      t9, 0x0008(v0)             # 00000170
    sw      t3, 0x0038($sp)
    sw      v1, 0x0054($sp)
    jal     func_8007ECA4
    sw      t9, 0x0034($sp)
    lw      t1, 0x0054($sp)
    lui     t5, 0xDA38                 # t5 = DA380000
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t5, t5, 0x0002             # t5 = DA380002
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0050($sp)
    lw      a2, 0x0050($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t3, 0xD838                 # t3 = D8380000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x4F90             # t8 = 06004F90
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t3, t3, 0x0002             # t3 = D8380002
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0048($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF5138:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x91E4             # t6 = 060091E4
    mul.s   $f10, $f8, $f0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0003          # a3 = 00000003
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF5194:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AF51A4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AF51B4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    slti    $at, v0, 0x0404
    bne     $at, $zero, lbl_80AF5238
    slti    $at, v0, 0x0407
    beq     $at, $zero, lbl_80AF5238
    lui     v1, %hi(var_80AF748C)      # v1 = 80AF0000
    lw      v1, %lo(var_80AF748C)(v1)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4377                # $at = 43770000
    mtc1    $at, $f8                   # $f8 = 247.00
    swc1    $f4, 0x0024($sp)
    lwc1    $f6, 0x0028(a0)            # 00000028
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFE4
    lwc1    $f18, 0x0024($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x002C(a0)           # 0000002C
    or      a0, a3, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80AF5224
    swc1    $f16, 0x002C($sp)
    jal     func_80AF2A58
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lui     $at, %hi(var_80AF748C)     # $at = 80AF0000
    b       lbl_80AF5238
    sw      v0, %lo(var_80AF748C)($at)
lbl_80AF5224:
    swc1    $f18, 0x0024(v1)           # 00000024
    lwc1    $f4, 0x0028($sp)
    swc1    $f4, 0x0028(v1)            # 00000028
    lwc1    $f6, 0x002C($sp)
    swc1    $f6, 0x002C(v1)            # 0000002C
lbl_80AF5238:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF5248:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    slti    $at, v0, 0x03E6
    bne     $at, $zero, lbl_80AF52CC
    slti    $at, v0, 0x03E9
    beq     $at, $zero, lbl_80AF52CC
    lui     v1, %hi(var_80AF7490)      # v1 = 80AF0000
    lw      v1, %lo(var_80AF7490)(v1)
    lwc1    $f4, 0x0008(a0)            # 00000008
    lui     $at, 0x4218                # $at = 42180000
    mtc1    $at, $f8                   # $f8 = 38.00
    swc1    $f4, 0x0024($sp)
    lwc1    $f6, 0x000C(a0)            # 0000000C
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFE4
    lwc1    $f18, 0x0024($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028($sp)
    lwc1    $f16, 0x0010(a0)           # 00000010
    or      a0, a3, $zero              # a0 = 00000000
    bne     v1, $zero, lbl_80AF52B8
    swc1    $f16, 0x002C($sp)
    jal     func_80AF2A58
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     $at, %hi(var_80AF7490)     # $at = 80AF0000
    b       lbl_80AF52CC
    sw      v0, %lo(var_80AF7490)($at)
lbl_80AF52B8:
    swc1    $f18, 0x0024(v1)           # 00000024
    lwc1    $f4, 0x0028($sp)
    swc1    $f4, 0x0028(v1)            # 00000028
    lwc1    $f6, 0x002C($sp)
    swc1    $f6, 0x002C(v1)            # 0000002C
lbl_80AF52CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF52DC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF7494)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF7494)  # t7 = 80AF7494
    lw      t9, 0x0000(t7)             # 80AF7494
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF7498
    slti    $at, v0, 0x006E
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF749C
    bne     $at, $zero, lbl_80AF5390
    sw      t9, 0x0008(a2)             # FFFFFFDC
    slti    $at, v0, 0x008C
    beq     $at, $zero, lbl_80AF5390
    lw      v0, 0x0068($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, %hi(var_80AF7620)     # $at = 80AF0000
    lwc1    $f16, %lo(var_80AF7620)($at)
    sub.s   $f8, $f4, $f6
    lui     $at, %hi(var_80AF7624)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7624)($at)
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    addiu   v0, v0, 0x0024             # v0 = 00000024
    add.s   $f18, $f10, $f16
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x4080                 # a3 = 40800000
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sw      t1, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF5390:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF53A0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74A0)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74A0)  # t7 = 80AF74A0
    lw      t9, 0x0000(t7)             # 80AF74A0
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74A4
    slti    $at, v0, 0x011D
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74A8
    bne     $at, $zero, lbl_80AF5458
    sw      t9, 0x0008(a2)             # FFFFFFDC
    slti    $at, v0, 0x01A5
    beq     $at, $zero, lbl_80AF5458
    lw      v0, 0x0068($sp)
    lui     $at, 0x443E                # $at = 443E0000
    mtc1    $at, $f6                   # $f6 = 760.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f6                   # $f6 = 240.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    sub.s   $f18, $f10, $f16
    addiu   v0, v0, 0x0024             # v0 = 00000024
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF5458:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF5468:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74AC)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74AC)  # t7 = 80AF74AC
    lw      t9, 0x0000(t7)             # 80AF74AC
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74B0
    slti    $at, v0, 0x02C6
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74B4
    bne     $at, $zero, lbl_80AF5518
    sw      t9, 0x0008(a2)             # FFFFFFDC
    lw      v0, 0x0068($sp)
    lui     $at, 0x443E                # $at = 443E0000
    mtc1    $at, $f6                   # $f6 = 760.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f6                   # $f6 = 240.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    sub.s   $f18, $f10, $f16
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x40C0                 # a3 = 40C00000
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x002C(v0)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    addiu   v0, v0, 0x0024             # v0 = 00000024
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF5518:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF5528:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74B8)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74B8)  # t7 = 80AF74B8
    lw      t9, 0x0000(t7)             # 80AF74B8
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74BC
    slti    $at, v0, 0x02C1
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74C0
    bne     $at, $zero, lbl_80AF55D8
    sw      t9, 0x0008(a2)             # FFFFFFDC
    lw      v0, 0x0068($sp)
    lui     $at, %hi(var_80AF7628)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7628)($at)
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x43C3                # $at = 43C30000
    mtc1    $at, $f6                   # $f6 = 390.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    add.s   $f18, $f10, $f16
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x40C0                 # a3 = 40C00000
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x002C(v0)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    addiu   v0, v0, 0x0024             # v0 = 00000024
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF55D8:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF55E8:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74C4)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74C4)  # t7 = 80AF74C4
    lw      t9, 0x0000(t7)             # 80AF74C4
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74C8
    slti    $at, v0, 0x02E4
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74CC
    bne     $at, $zero, lbl_80AF56A0
    sw      t9, 0x0008(a2)             # FFFFFFDC
    slti    $at, v0, 0x030D
    beq     $at, $zero, lbl_80AF56A0
    lw      v0, 0x0068($sp)
    lui     $at, %hi(var_80AF762C)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF762C)($at)
    lwc1    $f4, 0x0008(v0)            # 00000008
    lui     $at, 0x42DC                # $at = 42DC0000
    mtc1    $at, $f16                  # $f16 = 110.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x000C(v0)           # 0000000C
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    sub.s   $f18, $f10, $f16
    addiu   v0, v0, 0x0008             # v0 = 00000008
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x0008(v0)            # 00000010
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    lui     a3, 0x40C0                 # a3 = 40C00000
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF56A0:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF56B0:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74D0)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74D0)  # t7 = 80AF74D0
    lw      t9, 0x0000(t7)             # 80AF74D0
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74D4
    slti    $at, v0, 0x03C5
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74D8
    bne     $at, $zero, lbl_80AF5760
    sw      t9, 0x0008(a2)             # FFFFFFDC
    lw      v0, 0x0068($sp)
    lui     $at, 0x43E6                # $at = 43E60000
    mtc1    $at, $f6                   # $f6 = 460.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x443E                # $at = 443E0000
    mtc1    $at, $f6                   # $f6 = 760.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t2, $zero, 0x0023          # t2 = 00000023
    add.s   $f18, $f10, $f16
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x40C0                 # a3 = 40C00000
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x002C(v0)            # 0000002C
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    add.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    addiu   v0, v0, 0x0024             # v0 = 00000024
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF5760:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF5770:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFD4
    lui     t7, %hi(var_80AF74DC)      # t7 = 80AF0000
    lw      t6, 0x006C($sp)
    addiu   t7, t7, %lo(var_80AF74DC)  # t7 = 80AF74DC
    lw      t9, 0x0000(t7)             # 80AF74DC
    lhu     v0, 0x1D74(t6)             # 00001D74
    sw      t9, 0x0000(a2)             # FFFFFFD4
    lw      t8, 0x0004(t7)             # 80AF74E0
    slti    $at, v0, 0x03AC
    sw      t8, 0x0004(a2)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 80AF74E4
    bne     $at, $zero, lbl_80AF581C
    sw      t9, 0x0008(a2)             # FFFFFFDC
    lw      v0, 0x0068($sp)
    lui     $at, 0x43B4                # $at = 43B40000
    mtc1    $at, $f6                   # $f6 = 360.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f16                  # $f16 = 70.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4420                # $at = 44200000
    mtc1    $at, $f6                   # $f6 = 640.00
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    swc1    $f8, 0x0050($sp)
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   t1, $zero, 0x0023          # t1 = 00000023
    lw      a0, 0x006C($sp)
    add.s   $f18, $f10, $f16
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFE8
    lui     a3, 0x40C0                 # a3 = 40C00000
    addiu   v0, v0, 0x0024             # v0 = 00000024
    swc1    $f18, 0x0054($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sw      t1, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sub.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    jal     func_80AF28D0
    swc1    $f8, 0x0058($sp)
lbl_80AF581C:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80AF582C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v1, 0x1D74(a3)             # 00001D74
    addiu   $at, $zero, 0x003A         # $at = 0000003A
    lw      v0, 0x0040($sp)
    bne     v1, $at, lbl_80AF58A4
    lui     $at, 0x4461                # $at = 44610000
    mtc1    $at, $f6                   # $f6 = 900.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x42BA                # $at = 42BA0000
    mtc1    $at, $f6                   # $f6 = 93.00
    addiu   v0, v0, 0x0024             # v0 = 00000024
    swc1    $f8, 0x0028($sp)
    lwc1    $f10, 0x0004(v0)           # 00000028
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    sub.s   $f18, $f10, $f16
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f18, 0x002C($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    add.s   $f8, $f4, $f6
    jal     func_80AF2AB8
    swc1    $f8, 0x0030($sp)
    b       lbl_80AF596C
    lw      $ra, 0x0014($sp)
lbl_80AF58A4:
    addiu   $at, $zero, 0x0050         # $at = 00000050
    bne     v1, $at, lbl_80AF590C
    lw      v0, 0x0040($sp)
    lui     $at, %hi(var_80AF7630)     # $at = 80AF0000
    lwc1    $f16, %lo(var_80AF7630)($at)
    lwc1    $f10, 0x0024(v0)           # 00000024
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    add.s   $f18, $f10, $f16
    lui     $at, 0x4214                # $at = 42140000
    mtc1    $at, $f16                  # $f16 = 37.00
    lui     a2, 0x3F66                 # a2 = 3F660000
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0028(v0)            # 00000028
    addiu   v0, v0, 0x0024             # v0 = 00000024
    ori     a2, a2, 0x6666             # a2 = 3F666666
    add.s   $f8, $f4, $f6
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    swc1    $f8, 0x002C($sp)
    lwc1    $f10, 0x0008(v0)           # 0000002C
    sub.s   $f18, $f10, $f16
    jal     func_80AF2AB8
    swc1    $f18, 0x0030($sp)
    b       lbl_80AF596C
    lw      $ra, 0x0014($sp)
lbl_80AF590C:
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    bne     v1, $at, lbl_80AF5968
    lw      v0, 0x0040($sp)
    lui     $at, 0x435C                # $at = 435C0000
    mtc1    $at, $f6                   # $f6 = 220.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     $at, %hi(var_80AF7634)     # $at = 80AF0000
    lwc1    $f16, %lo(var_80AF7634)($at)
    sub.s   $f8, $f4, $f6
    lui     $at, %hi(var_80AF7638)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7638)($at)
    addiu   v0, v0, 0x0024             # v0 = 00000024
    swc1    $f8, 0x0028($sp)
    lwc1    $f10, 0x0004(v0)           # 00000028
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFE8
    add.s   $f18, $f10, $f16
    lui     a2, 0x4000                 # a2 = 40000000
    swc1    $f18, 0x002C($sp)
    lwc1    $f4, 0x0008(v0)            # 0000002C
    sub.s   $f8, $f4, $f6
    jal     func_80AF2AB8
    swc1    $f8, 0x0030($sp)
lbl_80AF5968:
    lw      $ra, 0x0014($sp)
lbl_80AF596C:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80AF5978:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0074($sp)
    lw      t6, 0x0074($sp)
    lui     a2, 0x0001                 # a2 = 00010000
    lhu     v0, 0x1D74(t6)             # 00001D74
    addu    a2, a2, t6
    lw      a2, 0x1DE4(a2)             # 00011DE4
    slti    $at, v0, 0x01D6
    bne     $at, $zero, lbl_80AF5A6C
    slti    $at, v0, 0x01E1
    beq     $at, $zero, lbl_80AF5A6C
    addiu   a3, $sp, 0x0034            # a3 = FFFFFFC4
    lui     t8, %hi(var_80AF74E8)      # t8 = 80AF0000
    addiu   t8, t8, %lo(var_80AF74E8)  # t8 = 80AF74E8
    lw      t0, 0x0000(t8)             # 80AF74E8
    addiu   t7, $sp, 0x0040            # t7 = FFFFFFD0
    lw      t9, 0x0004(t8)             # 80AF74EC
    sw      t0, 0x0000(t7)             # FFFFFFD0
    lw      t0, 0x0008(t8)             # 80AF74F0
    lui     t1, %hi(var_80AF74F4)      # t1 = 80AF0000
    addiu   t1, t1, %lo(var_80AF74F4)  # t1 = 80AF74F4
    sw      t9, 0x0004(t7)             # FFFFFFD4
    sw      t0, 0x0008(t7)             # FFFFFFD8
    lw      t3, 0x0000(t1)             # 80AF74F4
    lui     $at, %hi(var_80AF763C)     # $at = 80AF0000
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFE4
    sw      t3, 0x0000(a3)             # FFFFFFC4
    lw      t2, 0x0004(t1)             # 80AF74F8
    sw      t2, 0x0004(a3)             # FFFFFFC8
    lw      t3, 0x0008(t1)             # 80AF74FC
    sw      t3, 0x0008(a3)             # FFFFFFCC
    lwc1    $f6, %lo(var_80AF763C)($at)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f6                   # $f6 = 23.00
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    div     $zero, a2, $at
    swc1    $f8, 0x0054($sp)
    lwc1    $f10, 0x0028(a0)           # 00000028
    mfhi    v0
    subu    v1, $zero, v0
    add.s   $f18, $f10, $f16
    lui     $at, 0x4000                # $at = 40000000
    swc1    $f18, 0x0058($sp)
    lwc1    $f4, 0x002C(a0)            # 0000002C
    lw      a0, 0x0074($sp)
    add.s   $f8, $f4, $f6
    bltz    v0, lbl_80AF5A54
    swc1    $f8, 0x005C($sp)
    b       lbl_80AF5A54
    or      v1, v0, $zero              # v1 = 00000000
lbl_80AF5A54:
    bnel    v1, $zero, lbl_80AF5A70
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f10                  # $f10 = 2.00
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFD0
    jal     func_80AF2B6C
    swc1    $f10, 0x0010($sp)
lbl_80AF5A6C:
    lw      $ra, 0x001C($sp)
lbl_80AF5A70:
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF5A7C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    addiu   $at, $zero, 0x01DD         # $at = 000001DD
    bne     v0, $at, lbl_80AF5AEC
    lui     $at, %hi(var_80AF7640)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7640)($at)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f6                   # $f6 = 23.00
    or      a1, a3, $zero              # a1 = 00000000
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0028(a0)           # 00000028
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFE4
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x002C(a0)            # 0000002C
    sw      a3, 0x003C($sp)
    add.s   $f8, $f4, $f6
    jal     func_80AF2BC0
    swc1    $f8, 0x0024($sp)
    lw      a0, 0x003C($sp)
    jal     func_80AF27EC
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
lbl_80AF5AEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AF5AFC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    addiu   $at, $zero, 0x013D         # $at = 0000013D
    bne     v0, $at, lbl_80AF5B6C
    lui     $at, 0x4475                # $at = 44750000
    mtc1    $at, $f6                   # $f6 = 980.00
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x43CD                # $at = 43CD0000
    mtc1    $at, $f16                  # $f16 = 410.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x4331                # $at = 43310000
    mtc1    $at, $f6                   # $f6 = 177.00
    or      a1, a3, $zero              # a1 = 00000000
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0028(a0)           # 00000028
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFE4
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x002C(a0)            # 0000002C
    sw      a3, 0x003C($sp)
    sub.s   $f8, $f4, $f6
    jal     func_80AF2E20
    swc1    $f8, 0x0024($sp)
    lw      a0, 0x003C($sp)
    jal     func_80AF27EC
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
lbl_80AF5B6C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AF5B7C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x1D74(a3)             # 00001D74
    addiu   $at, $zero, 0x02E4         # $at = 000002E4
    bne     v0, $at, lbl_80AF5BEC
    lui     $at, %hi(var_80AF7644)     # $at = 80AF0000
    lwc1    $f6, %lo(var_80AF7644)($at)
    lwc1    $f4, 0x0024(a0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f6                   # $f6 = 23.00
    or      a1, a3, $zero              # a1 = 00000000
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0028(a0)           # 00000028
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFE4
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0020($sp)
    lwc1    $f4, 0x002C(a0)            # 0000002C
    sw      a3, 0x003C($sp)
    add.s   $f8, $f4, $f6
    jal     func_80AF3068
    swc1    $f8, 0x0024($sp)
    lw      a0, 0x003C($sp)
    jal     func_80AF27EC
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
lbl_80AF5BEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80AF5BFC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5194
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF51A4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF51B4
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5248
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF52DC
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF53A0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5468
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5528
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF55E8
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF56B0
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5770
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF582C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5978
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5A7C
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5AFC
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AF5B7C
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80AF5CE8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    beq     v0, $zero, lbl_80AF5D18
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000A          # t6 = 0000000A
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF5D18:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5D28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      a0, 0x0018($sp)
    jal     func_80AF5BFC
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF5CE8
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5D6C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lw      a0, 0x0018($sp)
    jal     func_80AF5BFC
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5DA8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a0, 0x0024($sp)
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0002             # t7 = DA380002
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lw      a0, 0x0024($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x7630             # t0 = 06007630
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(a0)             # 000002C0
    lui     t2, 0xD838                 # t2 = D8380000
    ori     t2, t2, 0x0002             # t2 = D8380002
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a0)             # 000002C0
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80AF5E40:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   a3, $zero, 0x0004          # a3 = 00000004
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF5E98:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x00F4         # $at = 000000F4
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    v0, $at, lbl_80AF5EC4
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x20DE          # a1 = 000020DE
    lw      $ra, 0x0014($sp)
lbl_80AF5EC4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5ED0:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    lw      t6, 0x0074($sp)
    lhu     v0, 0x1D74(t6)             # 00001D74
    slti    $at, v0, 0x0104
    bne     $at, $zero, lbl_80AF5F74
    slti    $at, v0, 0x0121
    beq     $at, $zero, lbl_80AF5F74
    addiu   t7, $sp, 0x003C            # t7 = FFFFFFCC
    lui     t8, %hi(var_80AF7500)      # t8 = 80AF0000
    addiu   t8, t8, %lo(var_80AF7500)  # t8 = 80AF7500
    lw      t0, 0x0000(t8)             # 80AF7500
    lw      t9, 0x0004(t8)             # 80AF7504
    lui     $at, 0x4420                # $at = 44200000
    sw      t0, 0x0000(t7)             # FFFFFFCC
    lw      t0, 0x0008(t8)             # 80AF7508
    mtc1    $at, $f4                   # $f4 = 640.00
    lui     $at, %hi(var_80AF7648)     # $at = 80AF0000
    sw      t9, 0x0004(t7)             # FFFFFFD0
    sw      t0, 0x0008(t7)             # FFFFFFD4
    lwc1    $f6, %lo(var_80AF7648)($at)
    lui     $at, 0xC32A                # $at = C32A0000
    mtc1    $at, $f8                   # $f8 = -170.00
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    swc1    $f4, 0x0058($sp)
    swc1    $f6, 0x005C($sp)
    jal     func_800AB958
    swc1    $f8, 0x0060($sp)
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sw      t2, 0x0018($sp)
    sw      t1, 0x0010($sp)
    lw      a0, 0x0074($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFCC
    lui     a3, 0x4040                 # a3 = 40400000
    jal     func_80AF28D0
    sw      $zero, 0x0014($sp)
lbl_80AF5F74:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF5F84:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     v0, $zero, lbl_80AF5FBC
    lw      a0, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000B          # t6 = 0000000B
    b       lbl_80AF5FD8
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF5FBC:
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80AF3808
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     v0, $zero, lbl_80AF5FD8
    lw      t9, 0x0018($sp)
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0154(t9)             # 00000154
lbl_80AF5FD8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF5FE8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lw      a0, 0x0018($sp)
    jal     func_80AF5E98
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF5F84
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF602C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a0, 0x0018($sp)
    jal     func_80AF5E98
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6068:
    sw      a1, 0x0004($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x42C4                # $at = 42C40000
    lh      t6, 0x14D6(v1)             # 801214D6
    lh      t7, 0x14D4(v1)             # 801214D4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 98.00
    lui     $at, %hi(var_80AF764C)     # $at = 80AF0000
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF764C)($at)
    lui     $at, %hi(var_80AF7650)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF7650)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lh      t2, 0x0162(a0)             # 00000162
    slti    $at, t2, 0x4001
    bne     $at, $zero, lbl_80AF60F8
    nop
    sh      t3, 0x0162(a0)             # 00000162
lbl_80AF60F8:
    jr      $ra
    nop


func_80AF6100:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0080($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a2)             # 00001D74
    lw      t6, 0x0080($sp)
    slti    $at, v0, 0x012D
    beql    $at, $zero, lbl_80AF62D8
    lw      $ra, 0x001C($sp)
    lh      a0, 0x0162(t6)             # 00000162
    lui     $at, %hi(var_80AF7654)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF7654)($at)
    mtc1    a0, $f4                    # $f4 = 0.00
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x0068($sp)
    lh      t7, 0x14CE(v0)             # 801214CE
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0064($sp)
    lh      t9, 0x14C8(v0)             # 801214C8
    addiu   t0, t9, 0x4000             # t0 = 00004000
    sh      t0, 0x0060($sp)
    sh      t9, 0x0062($sp)
    lw      s0, 0x0000(a2)             # 00000000
    lw      a1, 0x02C4(s0)             # 000002C4
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    sw      a1, 0x02C4(s0)             # 000002C4
    sw      a2, 0x0084($sp)
    sw      a1, 0x0024($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x006E($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x003C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0060($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x004C($sp)
    lh      a0, 0x0060($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0050($sp)
    swc1    $f0, 0x0054($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0062($sp)
    lwc1    $f8, 0x0064($sp)
    lwc1    $f16, 0x003C($sp)
    lh      a0, 0x006E($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0040($sp)
    lwc1    $f4, 0x0064($sp)
    lh      a0, 0x0062($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0044($sp)
    lwc1    $f8, 0x0064($sp)
    lwc1    $f16, 0x003C($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0048($sp)
    lwc1    $f12, 0x0068($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFCC
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0040($sp)
    lwc1    $f14, 0x0044($sp)
    lw      a2, 0x0048($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0024($sp)
    jal     func_8009DB54
    lw      a0, 0x0084($sp)
    bne     v0, $zero, lbl_80AF6264
    lw      a0, 0x0080($sp)
    jal     func_80AF5ED0
    lw      a1, 0x0084($sp)
lbl_80AF6264:
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0002             # t2 = DA380002
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t3, 0x0024($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    lui     t8, 0xD838                 # t8 = D8380000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x9610             # t6 = 06009610
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t8, t8, 0x0002             # t8 = D8380002
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_80AF62D8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop


func_80AF62E8:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF6340:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x0315         # $at = 00000315
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    v0, $at, lbl_80AF636C
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x20DE          # a1 = 000020DE
    lw      $ra, 0x0014($sp)
lbl_80AF636C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6378:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    lw      t6, 0x0074($sp)
    lhu     v0, 0x1D74(t6)             # 00001D74
    slti    $at, v0, 0x0358
    bne     $at, $zero, lbl_80AF6420
    slti    $at, v0, 0x037B
    beq     $at, $zero, lbl_80AF6420
    addiu   t7, $sp, 0x003C            # t7 = FFFFFFCC
    lui     t8, %hi(var_80AF750C)      # t8 = 80AF0000
    addiu   t8, t8, %lo(var_80AF750C)  # t8 = 80AF750C
    lw      t0, 0x0000(t8)             # 80AF750C
    lw      t9, 0x0004(t8)             # 80AF7510
    lui     $at, %hi(var_80AF7658)     # $at = 80AF0000
    sw      t0, 0x0000(t7)             # FFFFFFCC
    lw      t0, 0x0008(t8)             # 80AF7514
    sw      t9, 0x0004(t7)             # FFFFFFD0
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      t0, 0x0008(t7)             # FFFFFFD4
    lwc1    $f6, %lo(var_80AF7658)($at)
    lui     $at, %hi(var_80AF765C)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF765C)($at)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    swc1    $f4, 0x0058($sp)
    swc1    $f6, 0x005C($sp)
    jal     func_800AB958
    swc1    $f8, 0x0060($sp)
    lui     a3, 0x40E3                 # a3 = 40E30000
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, $zero, 0x001E          # t3 = 0000001E
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    ori     a3, a3, 0x3333             # a3 = 40E33333
    lw      a0, 0x0074($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    jal     func_80AF28D0
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFCC
lbl_80AF6420:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF6430:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     v0, $zero, lbl_80AF6468
    lw      a0, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    b       lbl_80AF6484
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF6468:
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80AF3808
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    beq     v0, $zero, lbl_80AF6484
    lw      t9, 0x0018($sp)
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    sw      t8, 0x0154(t9)             # 00000154
lbl_80AF6484:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6494:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      a0, 0x0018($sp)
    jal     func_80AF6340
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF6430
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF64D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lw      a0, 0x0018($sp)
    jal     func_80AF6340
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6514:
    sw      a1, 0x0004($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x4248                # $at = 42480000
    lh      t6, 0x14DA(v1)             # 801214DA
    lh      t7, 0x14D8(v1)             # 801214D8
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 50.00
    lui     $at, %hi(var_80AF7660)     # $at = 80AF0000
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF7660)($at)
    lui     $at, %hi(var_80AF7664)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF7664)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lh      t2, 0x0162(a0)             # 00000162
    slti    $at, t2, 0x4001
    bne     $at, $zero, lbl_80AF65A4
    nop
    sh      t3, 0x0162(a0)             # 00000162
lbl_80AF65A4:
    jr      $ra
    nop


func_80AF65AC:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0078($sp)
    sw      a1, 0x007C($sp)
    lw      t6, 0x0078($sp)
    lui     $at, %hi(var_80AF7668)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF7668)($at)
    lh      a0, 0x0162(t6)             # 00000162
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    mtc1    a0, $f4                    # $f4 = 0.00
    lw      t1, 0x007C($sp)
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x0068($sp)
    lh      t7, 0x14D0(v0)             # 801214D0
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0064($sp)
    lh      v1, 0x14CA(v0)             # 801214CA
    addiu   t9, v1, 0xC000             # t9 = FFFFC000
    addiu   t0, t9, 0x4000             # t0 = 00000000
    sh      t9, 0x0062($sp)
    sh      t0, 0x0060($sp)
    lw      s0, 0x0000(t1)             # 00000000
    lw      a2, 0x02C4(s0)             # 000002C4
    addiu   a2, a2, 0xFFC0             # a2 = FFFFFFC0
    sw      a2, 0x02C4(s0)             # 000002C4
    sw      a2, 0x0024($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x006E($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x003C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0060($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x004C($sp)
    lh      a0, 0x0060($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0050($sp)
    swc1    $f0, 0x0054($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0062($sp)
    lwc1    $f8, 0x0064($sp)
    lwc1    $f16, 0x003C($sp)
    lh      a0, 0x006E($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0040($sp)
    lwc1    $f4, 0x0064($sp)
    lh      a0, 0x0062($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0044($sp)
    lwc1    $f8, 0x0064($sp)
    lwc1    $f16, 0x003C($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0048($sp)
    lwc1    $f12, 0x0068($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFD4
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0040($sp)
    lwc1    $f14, 0x0044($sp)
    lw      a2, 0x0048($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0024($sp)
    jal     func_8009DB54
    lw      a0, 0x007C($sp)
    bne     v0, $zero, lbl_80AF6704
    lw      a0, 0x0078($sp)
    jal     func_80AF6378
    lw      a1, 0x007C($sp)
lbl_80AF6704:
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0002             # t3 = DA380002
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, 0x0024($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    lui     t9, 0xD838                 # t9 = D8380000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x9610             # t7 = 06009610
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t9, t9, 0x0002             # t9 = D8380002
    addiu   t0, $zero, 0x0040          # t0 = 00000040
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80AF6788:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF67E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x034D         # $at = 0000034D
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    v0, $at, lbl_80AF680C
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x20DE          # a1 = 000020DE
    lw      $ra, 0x0014($sp)
lbl_80AF680C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6818:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beq     v0, $zero, lbl_80AF6850
    lw      a0, 0x001C($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    b       lbl_80AF686C
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF6850:
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_80AF3808
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    beq     v0, $zero, lbl_80AF686C
    lw      t9, 0x0018($sp)
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    sw      t8, 0x0154(t9)             # 00000154
lbl_80AF686C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF687C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    lw      a0, 0x0018($sp)
    jal     func_80AF67E0
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF6818
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF68C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      a0, 0x0018($sp)
    jal     func_80AF67E0
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF68FC:
    sw      a1, 0x0004($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x4248                # $at = 42480000
    lh      t6, 0x14DE(v1)             # 801214DE
    lh      t7, 0x14DC(v1)             # 801214DC
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 50.00
    lui     $at, %hi(var_80AF766C)     # $at = 80AF0000
    addiu   t3, $zero, 0x4000          # t3 = 00004000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF766C)($at)
    lui     $at, %hi(var_80AF7670)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF7670)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lh      t2, 0x0162(a0)             # 00000162
    slti    $at, t2, 0x4001
    bne     $at, $zero, lbl_80AF698C
    nop
    sh      t3, 0x0162(a0)             # 00000162
lbl_80AF698C:
    jr      $ra
    nop


func_80AF6994:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      a0, 0x0162(a2)             # 00000162
    lui     $at, %hi(var_80AF7674)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF7674)($at)
    mtc1    a0, $f4                    # $f4 = 0.00
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x006C($sp)
    lh      t6, 0x14D2(v0)             # 801214D2
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0068($sp)
    lh      v1, 0x14CC(v0)             # 801214CC
    addiu   t8, v1, 0x4000             # t8 = 00004000
    addiu   t9, t8, 0x4000             # t9 = 00008000
    sh      t8, 0x0066($sp)
    sh      t9, 0x0064($sp)
    lw      s0, 0x0000(a1)             # 00000000
    lw      a3, 0x02C4(s0)             # 000002C4
    addiu   a3, a3, 0xFFC0             # a3 = FFFFFFC0
    sw      a3, 0x02C4(s0)             # 000002C4
    sw      a3, 0x0028($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x0072($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x0040($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0064($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x0050($sp)
    lh      a0, 0x0064($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0054($sp)
    swc1    $f0, 0x0058($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0066($sp)
    lwc1    $f8, 0x0068($sp)
    lwc1    $f16, 0x0040($sp)
    lh      a0, 0x0072($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x0044($sp)
    lwc1    $f4, 0x0068($sp)
    lh      a0, 0x0066($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0048($sp)
    lwc1    $f8, 0x0068($sp)
    lwc1    $f16, 0x0040($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x004C($sp)
    lwc1    $f12, 0x006C($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFD8
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x0044($sp)
    lwc1    $f14, 0x0048($sp)
    lw      a2, 0x004C($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0028($sp)
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0002             # t1 = DA380002
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t2, 0x0028($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t7, 0xD838                 # t7 = D8380000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x9610             # t5 = 06009610
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    ori     t7, t7, 0x0002             # t7 = D8380002
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_80AF6B4C:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF6BA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x00B7         # $at = 000000B7
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    v0, $at, lbl_80AF6BD0
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x20DE          # a1 = 000020DE
    lw      $ra, 0x0014($sp)
lbl_80AF6BD0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6BDC:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBA00             # a2 = 8011BA00
    lw      v1, 0x0000(a2)             # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t6, 0x14EC(v1)             # 000014EC
    lh      t7, 0x14D4(v1)             # 000014D4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     $at, %hi(var_80AF7678)     # $at = 80AF0000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF7678)($at)
    lui     $at, %hi(var_80AF767C)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF767C)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t5, 0x0162(a0)             # 00000162
    lh      a1, 0x14F4(t2)             # 000014F4
    addiu   a1, a1, 0x4000             # a1 = 00004000
    sll     t3, a1, 16
    sra     t4, t3, 16
    slt     $at, t4, t5
    beq     $at, $zero, lbl_80AF6C7C
    nop
    sh      a1, 0x0162(a0)             # 00000162
lbl_80AF6C7C:
    jr      $ra
    nop


func_80AF6C84:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    beq     v0, $zero, lbl_80AF6CB4
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF6CB4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6CC4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    lw      a0, 0x0018($sp)
    jal     func_80AF6BA4
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF6C84
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6D08:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80AF6BDC
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      a0, 0x0018($sp)
    jal     func_80AF6BA4
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6D4C:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      a0, 0x0162(a2)             # 00000162
    lui     $at, %hi(var_80AF7680)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF7680)($at)
    mtc1    a0, $f4                    # $f4 = 0.00
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    cvt.s.w $f6, $f4
    lw      s0, 0x0000(a1)             # 00000000
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x0060($sp)
    lh      t6, 0x14EA(v0)             # 801214EA
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x005C($sp)
    lh      v1, 0x14E8(v0)             # 801214E8
    addiu   t8, v1, 0x7FEC             # t8 = 00007FEC
    addiu   t9, t8, 0x4000             # t9 = 0000BFEC
    sh      t8, 0x005A($sp)
    sh      t9, 0x0058($sp)
    lw      a3, 0x02C4(s0)             # 000002C4
    addiu   a3, a3, 0xFFC0             # a3 = FFFFFFC0
    sw      a3, 0x02C4(s0)             # 000002C4
    sw      a3, 0x0024($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x0066($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0058($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x0048($sp)
    lh      a0, 0x0058($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x004C($sp)
    swc1    $f0, 0x0050($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x005A($sp)
    lwc1    $f8, 0x005C($sp)
    lwc1    $f16, 0x0038($sp)
    lh      a0, 0x0066($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x003C($sp)
    lwc1    $f4, 0x005C($sp)
    lh      a0, 0x005A($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x005C($sp)
    lwc1    $f16, 0x0038($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0044($sp)
    lwc1    $f12, 0x0060($sp)
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFD8
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x003C($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x0044($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0024($sp)
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t2, 0x0024($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x9970             # t5 = 06009970
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF6EE4:
    lui     $at, 0x4120                # $at = 41200000
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    mul.s   $f6, $f4, $f0
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    jal     func_80AF3F3C
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80AF6F3C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lhu     v0, 0x1D74(a1)             # 00001D74
    addiu   $at, $zero, 0x009A         # $at = 0000009A
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    bnel    v0, $at, lbl_80AF6F68
    lw      $ra, 0x0014($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x20DE          # a1 = 000020DE
    lw      $ra, 0x0014($sp)
lbl_80AF6F68:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF6F74:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBA00             # a2 = 8011BA00
    lw      v1, 0x0000(a2)             # 8011BA00
    lh      v0, 0x0162(a0)             # 00000162
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t6, 0x14F2(v1)             # 000014F2
    lh      t7, 0x14D4(v1)             # 000014D4
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f0, $f4
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     $at, %hi(var_80AF7684)     # $at = 80AF0000
    cvt.s.w $f8, $f6
    lwc1    $f6, %lo(var_80AF7684)($at)
    lui     $at, %hi(var_80AF7688)     # $at = 80AF0000
    cvt.s.w $f4, $f18
    add.s   $f16, $f8, $f10
    mul.s   $f8, $f4, $f6
    lwc1    $f10, %lo(var_80AF7688)($at)
    add.s   $f18, $f8, $f10
    mul.s   $f4, $f0, $f18
    add.s   $f6, $f16, $f4
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sh      t9, 0x0164(a0)             # 00000164
    lh      t0, 0x0164(a0)             # 00000164
    addu    t1, v0, t0
    sh      t1, 0x0162(a0)             # 00000162
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t5, 0x0162(a0)             # 00000162
    lh      a1, 0x14F6(t2)             # 000014F6
    addiu   a1, a1, 0x4000             # a1 = 00004000
    sll     t3, a1, 16
    sra     t4, t3, 16
    slt     $at, t4, t5
    beq     $at, $zero, lbl_80AF7014
    nop
    sh      a1, 0x0162(a0)             # 00000162
lbl_80AF7014:
    jr      $ra
    nop


func_80AF701C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80AF3808
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    beq     v0, $zero, lbl_80AF704C
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sw      t6, 0x0154(t7)             # 00000154
lbl_80AF704C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF705C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF3928
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80AF6F3C
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80AF701C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF70A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80AF6F74
    lw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jal     func_80AF3E64
    addiu   a2, $zero, 0x0009          # a2 = 00000009
    lw      a0, 0x0018($sp)
    jal     func_80AF6F3C
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF70E4:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      a0, 0x0162(a2)             # 00000162
    lui     $at, %hi(var_80AF768C)     # $at = 80AF0000
    lwc1    $f8, %lo(var_80AF768C)($at)
    mtc1    a0, $f4                    # $f4 = 0.00
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    cvt.s.w $f6, $f4
    lw      s0, 0x0000(a1)             # 00000000
    ori     $at, $zero, 0xBE80         # $at = 0000BE80
    mul.s   $f0, $f6, $f8
    abs.s   $f0, $f0
    swc1    $f0, 0x0060($sp)
    lh      t6, 0x14F0(v0)             # 801214F0
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x005C($sp)
    lh      v1, 0x14EE(v0)             # 801214EE
    addu    t8, v1, $at
    addiu   t9, t8, 0x4000             # t9 = 00004000
    sh      t8, 0x005A($sp)
    sh      t9, 0x0058($sp)
    lw      a3, 0x02C4(s0)             # 000002C4
    addiu   a3, a3, 0xFFC0             # a3 = FFFFFFC0
    sw      a3, 0x02C4(s0)             # 000002C4
    sw      a3, 0x0024($sp)
    jal     func_80063684              # coss?
    sh      a0, 0x0066($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    nop
    sub.s   $f4, $f18, $f0
    swc1    $f4, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0058($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    swc1    $f0, 0x0048($sp)
    lh      a0, 0x0058($sp)
    jal     func_800636C4              # sins?
    swc1    $f6, 0x004C($sp)
    swc1    $f0, 0x0050($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x005A($sp)
    lwc1    $f8, 0x005C($sp)
    lwc1    $f16, 0x0038($sp)
    lh      a0, 0x0066($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800636C4              # sins?
    swc1    $f18, 0x003C($sp)
    lwc1    $f4, 0x005C($sp)
    lh      a0, 0x005A($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x005C($sp)
    lwc1    $f16, 0x0038($sp)
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    jal     func_800AA6EC
    swc1    $f18, 0x0044($sp)
    lwc1    $f12, 0x0060($sp)
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFD8
    jal     func_800AC280
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lwc1    $f12, 0x003C($sp)
    lwc1    $f14, 0x0040($sp)
    lw      a2, 0x0044($sp)
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AB8D8
    lw      a0, 0x0024($sp)
    jal     func_800AA724
    nop
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t2, 0x0024($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t5, 0x0601                 # t5 = 06010000
    addiu   t5, t5, 0x9B80             # t5 = 06009B80
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    jr      $ra
    nop


func_80AF7280:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0154(a0)             # 00000154
    bltz    v0, lbl_80AF72B8
    slti    $at, v0, 0x0013
    beq     $at, $zero, lbl_80AF72B8
    sll     t6, v0,  2
    lui     v1, %hi(var_80AF7518)      # v1 = 80AF0000
    addu    v1, v1, t6
    lw      v1, %lo(var_80AF7518)(v1)
    beql    v1, $zero, lbl_80AF72BC
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80AF72B8:
    lw      $ra, 0x0014($sp)
lbl_80AF72BC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF72C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x001C(a0)             # 0000001C
    sltiu   $at, t6, 0x0019
    beq     $at, $zero, lbl_80AF7374
    sll     t6, t6,  2
    lui     $at, %hi(var_80AF7690)     # $at = 80AF0000
    addu    $at, $at, t6
    lw      t6, %lo(var_80AF7690)($at)
    jr      t6
    nop
var_80AF72F4:
    jal     func_80AF3FA0
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7304:
    jal     func_80AF49B8
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7314:
    jal     func_80AF5138
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7324:
    jal     func_80AF5E40
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7334:
    jal     func_80AF62E8
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7344:
    jal     func_80AF6788
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7354:
    jal     func_80AF6B4C
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
var_80AF7364:
    jal     func_80AF6EE4
    nop
    b       lbl_80AF7380
    lw      $ra, 0x0014($sp)
lbl_80AF7374:
    jal     func_80020EB4
    nop
    lw      $ra, 0x0014($sp)
lbl_80AF7380:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80AF738C:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AF739C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x0158(a0)             # 00000158
    bltz    v0, lbl_80AF73D4
    slti    $at, v0, 0x0009
    beq     $at, $zero, lbl_80AF73D4
    sll     t6, v0,  2
    lui     v1, %hi(var_80AF7564)      # v1 = 80AF0000
    addu    v1, v1, t6
    lw      v1, %lo(var_80AF7564)(v1)
    beql    v1, $zero, lbl_80AF73D8
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
lbl_80AF73D4:
    lw      $ra, 0x0014($sp)
lbl_80AF73D8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80AF73F0: .word 0x64506400
var_80AF73F4: .word 0xFF6E6000
var_80AF73F8: .word 0x00000000, 0x40C00000, 0x00000000
var_80AF7404: .word 0x00000000, 0x00000000, 0x00000000
var_80AF7410: .word 0x00000000, 0x00000000, 0x00000000
var_80AF741C: .word 0x00000000, 0x00000000, 0x00000000
var_80AF7428: .word 0x48500064
var_80AF742C: .word 0x00000000, 0xC1800000, 0x00000000
var_80AF7438: .word 0x00000000, 0x3F99999A, 0x00000000
var_80AF7444: .word 0x00000000
var_80AF7448: .word 0xC1400000, 0xC1880000, 0x40A00000
var_80AF7454: .word 0x00000000
var_80AF7458: .word 0x3F800000, 0x00000000
var_80AF7460: .word 0x00000000
var_80AF7464: .word 0x00000000, 0x00000000
var_80AF746C: .word 0x438C0000
var_80AF7470: .word 0x41000000
var_80AF7474: .word 0x0000000B
var_80AF7478: .word 0x00000001
var_80AF747C: .word 0x00030000
var_80AF7480: .word 0x40A00000, 0xC1800000, 0xC1800000
var_80AF748C: .word 0x00000000
var_80AF7490: .word 0x00000000
var_80AF7494: .word 0x00000000, 0x00000000, 0xC1200000
var_80AF74A0: .word 0x40A00000, 0xC0400000, 0x00000000
var_80AF74AC: .word 0x40A00000, 0xC0400000, 0x00000000
var_80AF74B8: .word 0x40A00000, 0xC1800000, 0xC1800000
var_80AF74C4: .word 0x41700000, 0xC1D00000, 0x00000000
var_80AF74D0: .word 0x40A00000, 0xC1800000, 0xC1800000
var_80AF74DC: .word 0x40A00000, 0xC1800000, 0xC1800000
var_80AF74E8: .word 0x41A00000, 0x40C00000, 0x00000000
var_80AF74F4: .word 0x00000000, 0x00000000, 0x00000000
var_80AF7500: .word 0x00000000, 0xC1880000, 0x00000000
var_80AF750C: .word 0x00000000, 0xC1F00000, 0x00000000
var_80AF7518: .word func_80AF4518
.word func_80AF4F6C
.word func_80AF5D28
.word func_80AF5FE8
.word func_80AF6494
.word func_80AF687C
.word func_80AF6CC4
.word func_80AF705C
.word func_80AF4590
.word func_80AF4FBC
.word func_80AF5D6C
.word func_80AF602C
.word func_80AF64D8
.word func_80AF68C0
.word func_80AF6D08
.word func_80AF70A0
.word func_80AF6068
.word func_80AF6514
.word func_80AF68FC
var_80AF7564: .word func_80AF738C
.word func_80AF4608
.word func_80AF5004
.word func_80AF5DA8
.word func_80AF6100
.word func_80AF65AC
.word func_80AF6994
.word func_80AF6D4C
.word func_80AF70E4
var_80AF7588: .word 0x01740600, 0x00000030, 0x014C0000, 0x00000198
.word func_80AF72C8
.word func_80AF2760
.word func_80AF7280
.word func_80AF739C
.word 0x00000000, 0x00000000

.section .rodata

var_80AF75B0: .word 0x3E4CCCCD
var_80AF75B4: .word 0x3DCCCCCD
var_80AF75B8: .word 0x3F333333
var_80AF75BC: .word 0x3DCCCCCD
var_80AF75C0: .word 0x3F333333
var_80AF75C4: .word 0x3F19999A
var_80AF75C8: .word 0x3DCCCCCD
var_80AF75CC: .word 0x3F333333
var_80AF75D0: .word 0x3DCCCCCD
var_80AF75D4: .word 0x3F333333
var_80AF75D8: .word 0x3D4CCCCD
var_80AF75DC: .word 0x3DCCCCCD
var_80AF75E0: .word 0x3DCCCCCD
var_80AF75E4: .word 0x3DCCCCCD
var_80AF75E8: .word 0x3DCCCCCD
var_80AF75EC: .word 0x3DCCCCCD
var_80AF75F0: .word 0x3DCCCCCD
var_80AF75F4: .word 0x3DCCCCCD
var_80AF75F8: .word 0x3DCCCCCD
var_80AF75FC: .word 0x4429C000
var_80AF7600: .word 0x44D48000
var_80AF7604: .word 0x4429C000
var_80AF7608: .word 0x44D48000
var_80AF760C: .word 0x3A83126F
var_80AF7610: .word 0x3D449BA6
var_80AF7614: .word 0x38C90FDB
var_80AF7618: .word 0x43BC8000
var_80AF761C: .word 0x43BC8000
var_80AF7620: .word 0x449D8000
var_80AF7624: .word 0x43A18000
var_80AF7628: .word 0x444F8000
var_80AF762C: .word 0x44098000
var_80AF7630: .word 0x444A8000
var_80AF7634: .word 0x44A8C000
var_80AF7638: .word 0x438F8000
var_80AF763C: .word 0x44458000
var_80AF7640: .word 0x44458000
var_80AF7644: .word 0x44458000
var_80AF7648: .word 0x45034000
var_80AF764C: .word 0x3A83126F
var_80AF7650: .word 0x3D449BA6
var_80AF7654: .word 0x38C90FDB
var_80AF7658: .word 0x44924000
var_80AF765C: .word 0xC4898000
var_80AF7660: .word 0x3A83126F
var_80AF7664: .word 0x3D449BA6
var_80AF7668: .word 0x38C90FDB
var_80AF766C: .word 0x3A83126F
var_80AF7670: .word 0x3BA3D70A
var_80AF7674: .word 0x38C90FDB
var_80AF7678: .word 0x3A83126F
var_80AF767C: .word 0x3D449BA6
var_80AF7680: .word 0x38C90FDB
var_80AF7684: .word 0x3A83126F
var_80AF7688: .word 0x3D449BA6
var_80AF768C: .word 0x38C90FDB
var_80AF7690: .word var_80AF72F4
.word var_80AF7304
.word var_80AF7314
.word lbl_80AF7374
.word lbl_80AF7374
.word var_80AF7324
.word var_80AF7334
.word var_80AF7344
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word lbl_80AF7374
.word var_80AF7354
.word var_80AF7364
.word 0x00000000, 0x00000000, 0x00000000

