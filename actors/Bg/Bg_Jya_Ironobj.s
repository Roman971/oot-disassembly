.section .text
func_80ADA5A0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a1, a2, 0x0158             # a1 = 00000158
    sw      a1, 0x0018($sp)
    lw      a0, 0x0024($sp)
    jal     func_8004AB7C
    sw      a2, 0x0020($sp)
    lui     a3, %hi(var_80ADB18C)      # a3 = 80AE0000
    lw      a2, 0x0020($sp)
    addiu   a3, a3, %lo(var_80ADB18C)  # a3 = 80ADB18C
    lw      a0, 0x0024($sp)
    jal     func_8004ACEC
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    lh      t6, 0x001C(a2)             # 0000001C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    or      a0, a2, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    bne     t7, $at, lbl_80ADA608
    nop
    sh      t8, 0x0198(a2)             # 00000198
    sh      t9, 0x019A(a2)             # 0000019A
lbl_80ADA608:
    jal     func_80050B00
    lw      a1, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80ADA620:
    addiu   $sp, $sp, 0xFF08           # $sp -= 0xF8
    sw      s5, 0x008C($sp)
    sw      s3, 0x0084($sp)
    sw      s0, 0x0078($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s4, 0x0088($sp)
    sw      s2, 0x0080($sp)
    sw      s1, 0x007C($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800213B4
    or      a1, s0, $zero              # a1 = 00000000
    lb      t6, 0x02EF(s0)             # 000002EF
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f30                  # $f30 = 9.00
    lui     $at, 0x4680                # $at = 46800000
    lui     t8, %hi(var_80ADB1B6)      # t8 = 80AE0000
    mtc1    $at, $f28                  # $f28 = 16384.00
    sll     t7, t6,  1
    addu    t8, t8, t7
    lui     $at, 0x4100                # $at = 41000000
    lh      t8, %lo(var_80ADB1B6)(t8)
    mtc1    $at, $f26                  # $f26 = 8.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f24                  # $f24 = 20.00
    lui     $at, 0x42A0                # $at = 42A00000
    addu    s6, t8, v0
    sll     s6, s6, 16
    mtc1    $at, $f22                  # $f22 = 80.00
    sra     s6, s6, 16
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s4, s5, 0x1C24             # s4 = 00001C24
    addiu   s2, $zero, 0x0008          # s2 = 00000008
lbl_80ADA6D0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    mul.s   $f4, $f20, $f22
    lwc1    $f6, 0x0028(s3)            # 00000028
    lw      a3, 0x0024(s3)             # 00000024
    mul.s   $f18, $f0, $f28
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x018F          # a2 = 0000018F
    add.s   $f8, $f4, $f6
    trunc.w.s $f4, $f18
    add.s   $f10, $f8, $f24
    mfc1    t0, $f4
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x002C(s3)           # 0000002C
    sll     t1, t0, 16
    sra     t2, t1, 16
    addu    t3, t2, s6
    addiu   t4, t3, 0xE000             # t4 = FFFFE000
    sw      t4, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     v0, $zero, lbl_80ADA778
    or      s0, v0, $zero              # s0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f26
    add.s   $f8, $f6, $f30
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0068(s0)            # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    mul.s   $f16, $f0, $f10
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80ADA778:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s2, lbl_80ADA6D0
    nop
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f8                   # $f8 = 150.00
    lwc1    $f6, 0x0028(s3)            # 00000028
    lw      a3, 0x0024(s3)             # 00000024
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    add.s   $f10, $f6, $f8
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x018F          # a2 = 0000018F
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x002C(s3)           # 0000002C
    sw      t5, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    lwc1    $f18, 0x0028(s3)           # 00000028
    lw      a3, 0x0024(s3)             # 00000024
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x002C(s3)            # 0000002C
    sw      t6, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    or      a0, s4, $zero              # a0 = 00001C24
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x018F          # a2 = 0000018F
    jal     func_80025110              # ActorSpawn
    swc1    $f4, 0x0014($sp)
    sll     a0, s6, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    sll     a0, s6, 16
    swc1    $f0, 0x00C4($sp)
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x408C                # $at = 408C0000
    mtc1    $at, $f30                  # $f30 = 4.38
    lui     $at, %hi(var_80ADB240)     # $at = 80AE0000
    lwc1    $f28, %lo(var_80ADB240)($at)
    lui     $at, 0x4040                # $at = 40400000
    lui     s8, %hi(var_80ADB1C0)      # s8 = 80AE0000
    lui     s7, %hi(var_80ADB1E0)      # s7 = 80AE0000
    mtc1    $at, $f24                  # $f24 = 3.00
    swc1    $f0, 0x00CC($sp)
    addiu   s7, s7, %lo(var_80ADB1E0)  # s7 = 80ADB1E0
    addiu   s8, s8, %lo(var_80ADB1C0)  # s8 = 80ADB1C0
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s6, $sp, 0x00D0            # s6 = FFFFFFD8
    addiu   s4, $sp, 0x00DC            # s4 = FFFFFFE4
lbl_80ADA854:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    c.lt.s  $f0, $f28
    mtc1    s2, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80ADB244)     # $at = 80AE0000
    bc1f    lbl_80ADA878
    cvt.s.w $f2, $f10
    beq     $zero, $zero, lbl_80ADA898
    addiu   s1, $zero, 0x0060          # s1 = 00000060
lbl_80ADA878:
    lwc1    $f6, %lo(var_80ADB244)($at)
    addiu   s1, $zero, 0x0020          # s1 = 00000020
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80ADA898
    nop
    beq     $zero, $zero, lbl_80ADA898
    addiu   s1, $zero, 0x0040          # s1 = 00000040
lbl_80ADA898:
    mul.s   $f16, $f30, $f2
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lui     $at, 0x4178                # $at = 41780000
    lwc1    $f8, 0x0024(s3)            # 00000024
    add.s   $f4, $f16, $f18
    mtc1    $at, $f16                  # $f16 = 15.50
    swc1    $f8, 0x00DC($sp)
    lwc1    $f6, 0x0028(s3)            # 00000028
    sub.s   $f0, $f2, $f16
    lui     $at, %hi(var_80ADB248)     # $at = 80AE0000
    lwc1    $f18, %lo(var_80ADB248)($at)
    add.s   $f8, $f6, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    abs.s   $f0, $f0
    swc1    $f8, 0x00E0($sp)
    mul.s   $f6, $f0, $f18
    lwc1    $f10, 0x002C(s3)           # 0000002C
    swc1    $f10, 0x00E4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    add.s   $f22, $f6, $f4
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lwc1    $f16, 0x00C4($sp)
    mul.s   $f10, $f20, $f8
    nop
    mul.s   $f18, $f0, $f16
    sub.s   $f2, $f10, $f24
    mul.s   $f6, $f18, $f26
    add.s   $f8, $f2, $f2
    mul.s   $f4, $f6, $f22
    add.s   $f10, $f4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00D0($sp)
    mul.s   $f16, $f0, $f26
    sub.s   $f18, $f16, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00D4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f6                   # $f6 = 6.00
    lwc1    $f8, 0x00CC($sp)
    andi    v0, s2, 0x0007             # v0 = 00000000
    mul.s   $f4, $f20, $f6
    sll     v0, v0,  1
    addu    t8, s7, v0
    mul.s   $f10, $f0, $f8
    lh      t9, 0x0000(t8)             # 00000000
    lui     t3, %hi(var_80ADB1D0)      # t3 = 80AE0000
    addu    t3, t3, v0
    addu    s0, s8, v0
    sub.s   $f2, $f4, $f24
    lh      t1, 0x0000(s0)             # 00000000
    mul.s   $f16, $f10, $f26
    lh      t3, %lo(var_80ADB1D0)(t3)
    add.s   $f6, $f2, $f2
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x0880             # t6 = 06000880
    addiu   t7, $zero, 0xFEA2          # t7 = FFFFFEA2
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    mul.s   $f18, $f16, $f22
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    addiu   t5, $zero, 0x016C          # t5 = 0000016C
    sw      t5, 0x0038($sp)
    sw      t4, 0x0034($sp)
    sw      t2, 0x002C($sp)
    add.s   $f4, $f18, $f6
    sw      t0, 0x001C($sp)
    sw      t7, 0x0010($sp)
    sw      t6, 0x003C($sp)
    swc1    $f4, 0x00D8($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE4
    or      a2, s6, $zero              # a2 = FFFFFFD8
    or      a3, s4, $zero              # a3 = FFFFFFE4
    sw      s1, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t1, 0x0024($sp)
    jal     func_8001D998
    sw      t3, 0x0030($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80ADB24C)     # $at = 80AE0000
    lwc1    $f8, %lo(var_80ADB24C)($at)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE4
    c.lt.s  $f0, $f8
    lui     a2, 0x4348                 # a2 = 43480000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    bc1fl   lbl_80ADAA48
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lh      v0, 0x0000(s0)             # 00000000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0018($sp)
    sll     v0, v0,  2
    addiu   t7, v0, 0x003C             # t7 = 0000003C
    addiu   t8, v0, 0x0050             # t8 = 00000050
    sw      t8, 0x0014($sp)
    jal     func_80026308
    sw      t7, 0x0010($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80ADAA48:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     s2, $at, lbl_80ADA854
    nop
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
    addiu   $sp, $sp, 0x00F8           # $sp += 0xF8


func_80ADAA9C:
    addiu   $sp, $sp, 0xFF08           # $sp -= 0xF8
    sw      s5, 0x008C($sp)
    sw      s3, 0x0084($sp)
    sw      s0, 0x0078($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x009C($sp)
    sw      s8, 0x0098($sp)
    sw      s7, 0x0094($sp)
    sw      s6, 0x0090($sp)
    sw      s4, 0x0088($sp)
    sw      s2, 0x0080($sp)
    sw      s1, 0x007C($sp)
    sdc1    $f30, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800213B4
    or      a1, s0, $zero              # a1 = 00000000
    lb      t6, 0x02EF(s0)             # 000002EF
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f30                  # $f30 = 9.00
    lui     $at, 0x4680                # $at = 46800000
    lui     t8, %hi(var_80ADB1B6)      # t8 = 80AE0000
    mtc1    $at, $f28                  # $f28 = 16384.00
    sll     t7, t6,  1
    addu    t8, t8, t7
    lui     $at, 0x4100                # $at = 41000000
    lh      t8, %lo(var_80ADB1B6)(t8)
    mtc1    $at, $f26                  # $f26 = 8.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f24                  # $f24 = 80.00
    lui     $at, 0x4120                # $at = 41200000
    addu    s6, t8, v0
    sll     s6, s6, 16
    mtc1    $at, $f22                  # $f22 = 10.00
    sra     s6, s6, 16
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, s5, 0x1C24             # s2 = 00001C24
    addiu   s4, $zero, 0x0008          # s4 = 00000008
lbl_80ADAB4C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    mul.s   $f4, $f20, $f24
    lwc1    $f6, 0x0028(s3)            # 00000028
    lw      a3, 0x0024(s3)             # 00000024
    mul.s   $f18, $f0, $f28
    or      a0, s2, $zero              # a0 = 00001C24
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x018F          # a2 = 0000018F
    add.s   $f8, $f4, $f6
    trunc.w.s $f4, $f18
    add.s   $f10, $f8, $f22
    mfc1    t0, $f4
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x002C(s3)           # 0000002C
    sll     t1, t0, 16
    sra     t2, t1, 16
    addu    t3, t2, s6
    addiu   t4, t3, 0xE000             # t4 = FFFFE000
    sw      t4, 0x001C($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     v0, $zero, lbl_80ADABF0
    or      s0, v0, $zero              # s0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f6, $f0, $f26
    add.s   $f8, $f6, $f30
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0068(s0)            # 00000068
    mul.s   $f10, $f0, $f22
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    nop
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0060(s0)           # 00000060
lbl_80ADABF0:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s4, lbl_80ADAB4C
    nop
    sll     a0, s6, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    sll     a0, s6, 16
    swc1    $f0, 0x00C4($sp)
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f30                  # $f30 = 20.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f28                  # $f28 = 40.00
    lui     $at, 0x4040                # $at = 40400000
    lui     s8, %hi(var_80ADB1F0)      # s8 = 80AE0000
    lui     s7, %hi(var_80ADB210)      # s7 = 80AE0000
    mtc1    $at, $f24                  # $f24 = 3.00
    swc1    $f0, 0x00CC($sp)
    addiu   s7, s7, %lo(var_80ADB210)  # s7 = 80ADB210
    addiu   s8, s8, %lo(var_80ADB1F0)  # s8 = 80ADB1F0
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s6, $sp, 0x00D0            # s6 = FFFFFFD8
    addiu   s4, $sp, 0x00DC            # s4 = FFFFFFE4
lbl_80ADAC50:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80ADB250)     # $at = 80AE0000
    lwc1    $f4, %lo(var_80ADB250)($at)
    lui     $at, %hi(var_80ADB254)     # $at = 80AE0000
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_80ADAC7C
    nop
    beq     $zero, $zero, lbl_80ADAC9C
    addiu   s1, $zero, 0x0060          # s1 = 00000060
lbl_80ADAC7C:
    lwc1    $f6, %lo(var_80ADB254)($at)
    addiu   s1, $zero, 0x0020          # s1 = 00000020
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_80ADAC9C
    nop
    beq     $zero, $zero, lbl_80ADAC9C
    addiu   s1, $zero, 0x0040          # s1 = 00000040
lbl_80ADAC9C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f28
    mtc1    s2, $f4                    # $f4 = 0.00
    lwc1    $f16, 0x0024(s3)           # 00000024
    lui     $at, 0x4070                # $at = 40700000
    cvt.s.w $f20, $f4
    sub.s   $f10, $f8, $f30
    mtc1    $at, $f8                   # $f8 = 3.75
    add.s   $f18, $f10, $f16
    mul.s   $f10, $f8, $f20
    swc1    $f18, 0x00DC($sp)
    lwc1    $f6, 0x0028(s3)            # 00000028
    add.s   $f16, $f6, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00E0($sp)
    lui     $at, 0x4178                # $at = 41780000
    mul.s   $f18, $f0, $f28
    mtc1    $at, $f10                  # $f10 = 15.50
    lui     $at, %hi(var_80ADB258)     # $at = 80AE0000
    lwc1    $f16, %lo(var_80ADB258)($at)
    lwc1    $f8, 0x002C(s3)            # 0000002C
    sub.s   $f0, $f20, $f10
    lui     $at, 0x3F00                # $at = 3F000000
    sub.s   $f4, $f18, $f30
    abs.s   $f0, $f0
    add.s   $f6, $f4, $f8
    mul.s   $f18, $f0, $f16
    mtc1    $at, $f4                   # $f4 = 0.50
    swc1    $f6, 0x00E4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    add.s   $f22, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lwc1    $f10, 0x00C4($sp)
    mul.s   $f6, $f20, $f8
    nop
    mul.s   $f16, $f0, $f10
    sub.s   $f2, $f6, $f24
    mul.s   $f18, $f16, $f26
    add.s   $f8, $f2, $f2
    mul.s   $f4, $f18, $f22
    add.s   $f6, $f4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x00D0($sp)
    mul.s   $f10, $f0, $f26
    sub.s   $f16, $f10, $f24
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x00D4($sp)
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f18                  # $f18 = 6.00
    lwc1    $f8, 0x00CC($sp)
    andi    v0, s2, 0x0007             # v0 = 00000000
    mul.s   $f4, $f20, $f18
    sll     v0, v0,  1
    addu    t6, s7, v0
    mul.s   $f6, $f0, $f8
    lh      t7, 0x0000(t6)             # 00000000
    lui     t1, %hi(var_80ADB200)      # t1 = 80AE0000
    addu    t1, t1, v0
    addu    s0, s8, v0
    sub.s   $f2, $f4, $f24
    lh      t9, 0x0000(s0)             # 00000000
    mul.s   $f10, $f6, $f26
    lh      t1, %lo(var_80ADB200)(t1)
    add.s   $f18, $f2, $f2
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x0880             # t4 = 06000880
    addiu   t5, $zero, 0xFEA2          # t5 = FFFFFEA2
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    mul.s   $f16, $f10, $f22
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t3, $zero, 0x016C          # t3 = 0000016C
    sw      t3, 0x0038($sp)
    sw      t2, 0x0034($sp)
    sw      t0, 0x002C($sp)
    add.s   $f4, $f16, $f18
    sw      t8, 0x001C($sp)
    sw      t5, 0x0010($sp)
    sw      t4, 0x003C($sp)
    swc1    $f4, 0x00D8($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0020($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE4
    or      a2, s6, $zero              # a2 = FFFFFFD8
    or      a3, s4, $zero              # a3 = FFFFFFE4
    sw      s1, 0x0014($sp)
    sw      t7, 0x0018($sp)
    sw      t9, 0x0024($sp)
    jal     func_8001D998
    sw      t1, 0x0030($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80ADB25C)     # $at = 80AE0000
    lwc1    $f8, %lo(var_80ADB25C)($at)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFE4
    c.lt.s  $f0, $f8
    lui     a2, 0x4348                 # a2 = 43480000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    bc1fl   lbl_80ADAE74
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lh      v0, 0x0000(s0)             # 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0018($sp)
    sll     v0, v0,  2
    addiu   t5, v0, 0x003C             # t5 = 0000003C
    addiu   t6, v0, 0x0050             # t6 = 00000050
    sw      t6, 0x0014($sp)
    jal     func_80026308
    sw      t5, 0x0010($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000002
lbl_80ADAE74:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bne     s2, $at, lbl_80ADAC50
    nop
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
    addiu   $sp, $sp, 0x00F8           # $sp += 0xF8


func_80ADAEC8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, %hi(var_80ADB220)      # a1 = 80AE0000
    addiu   a1, a1, %lo(var_80ADB220)  # a1 = 80ADB220
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80ADA5A0
    lw      a1, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a0, %hi(var_80ADB230)      # a0 = 80AE0000
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  2
    addu    a0, a0, t8
    jal     func_80033EF4
    lw      a0, %lo(var_80ADB230)(a0)
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    jal     func_80ADAFA4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80ADAF5C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a1, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    sw      a3, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0158             # a1 = 00000158
    lw      a0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADAFA4:
    lui     t6, %hi(func_80ADAFB8)     # t6 = 80AE0000
    addiu   t6, t6, %lo(func_80ADAFB8) # t6 = 80ADAFB8
    sw      t6, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80ADAFB8:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lbu     v0, 0x0169(s4)             # 00000169
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80ADB0C8
    or      a0, s3, $zero              # a0 = 00000000
    lw      a2, 0x0160(s4)             # 00000160
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0169(s4)             # 00000169
    beql    a2, $zero, lbl_80ADB0D8
    lw      $ra, 0x0034($sp)
    lh      t8, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0x0113         # $at = 00000113
    bnel    t8, $at, lbl_80ADB0D8
    lw      $ra, 0x0034($sp)
    lh      t9, 0x001C(s4)             # 0000001C
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    andi    t0, t9, 0x0001             # t0 = 00000000
    sll     t1, t0,  2
    lui     t9, %hi(var_80ADB238)      # t9 = 80AE0000
    addu    t9, t9, t1
    lw      t9, %lo(var_80ADB238)(t9)
    jalr    $ra, t9
    nop
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, s4, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80058FF8
    addiu   a3, $zero, 0x39AD          # a3 = 000039AD
    lwc1    $f4, 0x0024(s4)            # 00000024
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    swc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0028(s4)            # 00000028
    lui     $at, 0x4190                # $at = 41900000
    mtc1    $at, $f20                  # $f20 = 18.00
    add.s   $f10, $f6, $f8
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0003          # s2 = 00000003
    addiu   s1, $sp, 0x0040            # s1 = FFFFFFF0
    swc1    $f10, 0x0044($sp)
    lwc1    $f16, 0x002C(s4)           # 0000002C
    swc1    $f16, 0x0048($sp)
lbl_80ADB090:
    sll     a2, s2, 16
    sra     a2, a2, 16
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80013678
    or      a1, s1, $zero              # a1 = FFFFFFF0
    lwc1    $f18, 0x0044($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    add.s   $f4, $f18, $f20
    bne     s0, s2, lbl_80ADB090
    swc1    $f4, 0x0044($sp)
    jal     func_80020EB4
    or      a0, s4, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ADB0D8
    lw      $ra, 0x0034($sp)
lbl_80ADB0C8:
    addu    a1, s3, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s4, 0x0158             # a2 = 00000158
    lw      $ra, 0x0034($sp)
lbl_80ADB0D8:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80ADB0F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB11C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lh      t6, 0x001C(a3)             # 0000001C
    lui     a1, %hi(var_80ADB184)      # a1 = 80AE0000
    or      a0, a2, $zero              # a0 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    sll     t8, t7,  2
    addu    a1, a1, t8
    jal     func_80028048
    lw      a1, %lo(var_80ADB184)(a1)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

.word 0x00000000
var_80ADB164: .word 0x01690600, 0x00000000, 0x016C0000, 0x000001A4
.word func_80ADAEC8
.word func_80ADAF5C
.word func_80ADB0F8
.word func_80ADB11C
var_80ADB184: .word 0x06000240, 0x06001050
var_80ADB18C: .byte \
0x0A, 0x00, 0x11, 0x00, 0x20, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, \
0x00, 0x00, 0x00, 0x00, 0xFF, 0xCF, 0xFF, 0xFF, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, \
0x00, 0x1E, 0x00, 0x96, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
var_80ADB1B6: .byte 0x00, 0x00, 0x87, 0x00, 0x40, 0x00, 0xC0, 0x00, 0x00, 0x00
var_80ADB1C0: .word 0x00050008, 0x000B000E, 0x00110014, 0x0017001A
var_80ADB1D0: .word 0x0012001A, 0x0022002A, 0x0032003C, 0x00460050
var_80ADB1E0: .word 0x0030002A, 0x00240020, 0x001C0018, 0x00140010
var_80ADB1F0: .word 0x00050008, 0x000B000E, 0x00110014, 0x0017001A
var_80ADB200: .word 0x0012001A, 0x0022002A, 0x0032003C, 0x00460050
var_80ADB210: .word 0x0030002A, 0x00240020, 0x001C0018, 0x00140010
var_80ADB220: .word 0xC8500064, 0xB0F403E8, 0xB0F801F4, 0x30FC03E8
var_80ADB230: .word 0x06000D48, 0x06001430
var_80ADB238: .word func_80ADA620
.word func_80ADAA9C

.section .rodata

var_80ADB240: .word 0x3DCCCCCD
var_80ADB244: .word 0x3F4CCCCD
var_80ADB248: .word 0x3D042108
var_80ADB24C: .word 0x3E851EB8
var_80ADB250: .word 0x3DCCCCCD
var_80ADB254: .word 0x3F4CCCCD
var_80ADB258: .word 0x3D042108
var_80ADB25C: .word 0x3E851EB8

