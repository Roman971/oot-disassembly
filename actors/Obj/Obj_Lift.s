.section .text
func_80A85C10:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80A85C1C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      $zero, 0x0018($sp)
    lw      a0, 0x0020($sp)
    jal     func_80035260
    or      a1, a3, $zero              # a1 = 00000000
    lw      a0, 0x0028($sp)
    jal     func_80033EF4
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF8
    lw      a0, 0x0024($sp)
    lw      a2, 0x0020($sp)
    lw      a3, 0x0018($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0020($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A85C74:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s8, 0x0090($sp)
    sw      s2, 0x0078($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0094($sp)
    sw      s7, 0x008C($sp)
    sw      s6, 0x0088($sp)
    sw      s5, 0x0084($sp)
    sw      s4, 0x0080($sp)
    sw      s3, 0x007C($sp)
    sw      s1, 0x0074($sp)
    sw      s0, 0x0070($sp)
    sdc1    $f28, 0x0068($sp)
    sdc1    $f26, 0x0060($sp)
    sdc1    $f24, 0x0058($sp)
    sdc1    $f22, 0x0050($sp)
    sdc1    $f20, 0x0048($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f28                  # $f28 = 0.50
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f26                  # $f26 = 6.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f22                  # $f22 = 50.00
    lui     $at, %hi(var_80A86540)     # $at = 80A80000
    lui     s0, %hi(var_80A864F0)      # s0 = 80A80000
    lui     s7, %hi(var_80A86514)      # s7 = 80A80000
    lui     s6, 0x0600                 # s6 = 06000000
    addiu   s6, s6, 0x0140             # s6 = 06000140
    addiu   s7, s7, %lo(var_80A86514)  # s7 = 80A86514
    addiu   s0, s0, %lo(var_80A864F0)  # s0 = 80A864F0
    lwc1    $f20, %lo(var_80A86540)($at)
    addiu   s3, s2, 0x0024             # s3 = 00000024
    addiu   s5, $sp, 0x00B8            # s5 = FFFFFFE8
    addiu   s4, $sp, 0x00C4            # s4 = FFFFFFF4
    lh      t6, 0x0000(s0)             # 80A864F0
lbl_80A85D0C:
    lwc1    $f6, 0x0050(s2)            # 00000050
    lwc1    $f10, 0x0000(s3)           # 00000024
    mtc1    t6, $f4                    # $f4 = 0.00
    lh      t7, 0x0002(s0)             # 80A864F2
    cvt.s.w $f0, $f4
    mtc1    t7, $f4                    # $f4 = 0.00
    mul.s   $f8, $f0, $f6
    cvt.s.w $f6, $f4
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x00C4($sp)
    lwc1    $f18, 0x0004(s3)           # 00000028
    swc1    $f18, 0x00C8($sp)
    lwc1    $f8, 0x0058(s2)            # 00000058
    lwc1    $f16, 0x0008(s3)           # 0000002C
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x00CC($sp)
    lwc1    $f4, 0x0050(s2)            # 00000050
    mul.s   $f6, $f0, $f4
    nop
    mul.s   $f8, $f6, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00B8($sp)
    mul.s   $f10, $f0, $f24
    lh      t8, 0x0002(s0)             # 80A864F2
    mtc1    t8, $f18                   # $f18 = 0.00
    add.s   $f16, $f10, $f26
    cvt.s.w $f4, $f18
    swc1    $f16, 0x00BC($sp)
    lwc1    $f6, 0x0058(s2)            # 00000058
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f10, $f8, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00C0($sp)
    c.lt.s  $f0, $f28
    addiu   s1, $zero, 0x0020          # s1 = 00000020
    bc1f    lbl_80A85DB0
    nop
    beq     $zero, $zero, lbl_80A85DB0
    addiu   s1, $zero, 0x0040          # s1 = 00000040
lbl_80A85DB0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f16, $f0, $f22
    addiu   t9, $zero, 0xFF00          # t9 = FFFFFF00
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x000F          # t1 = 0000000F
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0010($sp)
    add.s   $f18, $f16, $f22
    sw      s1, 0x0014($sp)
    sw      $zero, 0x0020($sp)
    lwc1    $f4, 0x0050(s2)            # 00000050
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    mul.s   $f6, $f18, $f4
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t7, $zero, 0x011D          # t7 = 0000011D
    sw      t7, 0x0038($sp)
    sw      t6, 0x0034($sp)
    sw      t5, 0x0030($sp)
    sw      t4, 0x002C($sp)
    trunc.w.s $f8, $f6
    sw      s6, 0x003C($sp)
    sw      $zero, 0x0028($sp)
    or      a0, s8, $zero              # a0 = 00000000
    mfc1    t3, $f8
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a2, s5, $zero              # a2 = FFFFFFE8
    or      a3, s3, $zero              # a3 = 00000024
    jal     func_8001D998
    sw      t3, 0x0024($sp)
    addiu   s0, s0, 0x0004             # s0 = 80A864F4
    bnel    s0, s7, lbl_80A85D0C
    lh      t6, 0x0000(s0)             # 80A864F4
    lh      v0, 0x001C(s2)             # 0000001C
    or      a0, s8, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000024
    sra     v0, v0,  1
    andi    v0, v0, 0x0001             # v0 = 00000000
    bne     v0, $zero, lbl_80A85E84
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lui     a2, 0x42F0                 # a2 = 42F00000
    jal     func_80026308
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    beq     $zero, $zero, lbl_80A85EB8
    lw      $ra, 0x0094($sp)
lbl_80A85E84:
    bne     v0, $at, lbl_80A85EB4
    or      a0, s8, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    or      a1, s3, $zero              # a1 = 00000024
    lui     a2, 0x4270                 # a2 = 42700000
    jal     func_80026308
    addiu   a3, $zero, 0x0008          # a3 = 00000008
lbl_80A85EB4:
    lw      $ra, 0x0094($sp)
lbl_80A85EB8:
    ldc1    $f20, 0x0048($sp)
    ldc1    $f22, 0x0050($sp)
    ldc1    $f24, 0x0058($sp)
    ldc1    $f26, 0x0060($sp)
    ldc1    $f28, 0x0068($sp)
    lw      s0, 0x0070($sp)
    lw      s1, 0x0074($sp)
    lw      s2, 0x0078($sp)
    lw      s3, 0x007C($sp)
    lw      s4, 0x0080($sp)
    lw      s5, 0x0084($sp)
    lw      s6, 0x0088($sp)
    lw      s7, 0x008C($sp)
    lw      s8, 0x0090($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_80A85EF8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   a2, a2, 0x03D0             # a2 = 060003D0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jal     func_80A85C1C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    sra     a1, a1,  2
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    beql    v0, $zero, lbl_80A85F54
    lh      t6, 0x001C(s0)             # 0000001C
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A85FE8
    lw      $ra, 0x001C($sp)
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80A85F54:
    lui     a1, %hi(var_80A86528)      # a1 = 80A80000
    or      a0, s0, $zero              # a0 = 00000000
    sra     t7, t6,  1
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  2
    addu    a1, a1, t9
    jal     func_80020F88
    lw      a1, %lo(var_80A86528)(a1)
    lui     a1, %hi(var_80A86514)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A86514)  # a1 = 80A86514
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80A86544)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A86544)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t1, 0x0158(s0)             # 00000158
    lui     $at, %hi(var_80A86548)     # $at = 80A80000
    lwc1    $f10, %lo(var_80A86548)($at)
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    jal     func_800CDCCC              # Rand.Next() float
    sh      t3, 0x015A(s0)             # 0000015A
    lui     $at, %hi(var_80A8654C)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A8654C)($at)
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    jal     func_80A8602C
    sh      t5, 0x015C(s0)             # 0000015C
    lw      $ra, 0x001C($sp)
lbl_80A85FE8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A85FF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8602C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     t0, %hi(var_80A864E0)      # t0 = 80A80000
    lui     a1, %hi(func_80A86070)     # a1 = 80A80000
    sra     t7, t6,  8
    andi    t8, t7, 0x0007             # t8 = 00000000
    sll     t9, t8,  1
    addu    t0, t0, t9
    lh      t0, %lo(var_80A864E0)(t0)
    addiu   a1, a1, %lo(func_80A86070) # a1 = 80A86070
    jal     func_80A85C10
    sh      t0, 0x015E(a0)             # 0000015E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A86070:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    jal     func_80035364
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80A8612C
    lw      v1, 0x003C($sp)
    lh      t6, 0x015E(s0)             # 0000015E
    bgtzl   t6, lbl_80A86150
    lw      $ra, 0x0024($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    sra     t8, t7,  8
    andi    t9, t8, 0x0007             # t9 = 00000000
    bnel    t9, $at, lbl_80A860CC
    lh      t0, 0x07A0(v1)             # 000007A0
    jal     func_80A862D4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A86150
    lw      $ra, 0x0024($sp)
    lh      t0, 0x07A0(v1)             # 000007A0
lbl_80A860CC:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     t1, t0,  2
    addu    t2, v1, t1
    jal     func_8007D85C
    lw      a0, 0x0790(t2)             # 00000790
    sll     a0, v0, 16
    sw      v0, 0x0030($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2710          # a1 = 00002710
    lh      a0, 0x0032($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8007D738
    sw      a0, 0x002C($sp)
    lw      a0, 0x002C($sp)
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    jal     func_80A86160
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A86150
    lw      $ra, 0x0024($sp)
lbl_80A8612C:
    lh      t3, 0x001C(s0)             # 0000001C
    lui     t7, %hi(var_80A864E0)      # t7 = 80A80000
    sra     t4, t3,  8
    andi    t5, t4, 0x0007             # t5 = 00000000
    sll     t6, t5,  1
    addu    t7, t7, t6
    lh      t7, %lo(var_80A864E0)(t7)
    sh      t7, 0x015E(s0)             # 0000015E
    lw      $ra, 0x0024($sp)
lbl_80A86150:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80A86160:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    lui     a1, %hi(func_80A8618C)     # a1 = 80A80000
    sh      t6, 0x015E(a0)             # 0000015E
    jal     func_80A85C10
    addiu   a1, a1, %lo(func_80A8618C) # a1 = 80A8618C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8618C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x015E(s0)             # 0000015E
    bgtzl   t6, lbl_80A861C0
    lh      t7, 0x0158(s0)             # 00000158
    jal     func_80A862D4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A862A0
    lh      t7, 0x015E(s0)             # 0000015E
    lh      t7, 0x0158(s0)             # 00000158
lbl_80A861C0:
    addiu   t8, t7, 0x2710             # t8 = 00002710
    sh      t8, 0x0158(s0)             # 00000158
    jal     func_800636C4              # sins?
    lh      a0, 0x0158(s0)             # 00000158
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    lh      t3, 0x0014(s0)             # 00000014
    lh      a0, 0x0158(s0)             # 00000158
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    addu    t4, t2, t3
    jal     func_80063684              # coss?
    sh      t4, 0x0030(s0)             # 00000030
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    lh      t9, 0x0018(s0)             # 00000018
    lh      t3, 0x015A(s0)             # 0000015A
    mul.s   $f16, $f0, $f10
    lh      t1, 0x0030(s0)             # 00000030
    addiu   t4, t3, 0x4650             # t4 = 00004650
    sh      t4, 0x015A(s0)             # 0000015A
    lh      a0, 0x015A(s0)             # 0000015A
    sh      t1, 0x00B4(s0)             # 000000B4
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    addu    t0, t8, t9
    sh      t0, 0x0034(s0)             # 00000034
    lh      t2, 0x0034(s0)             # 00000034
    jal     func_800636C4              # sins?
    sh      t2, 0x00B8(s0)             # 000000B8
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lh      t5, 0x015C(s0)             # 0000015C
    add.s   $f6, $f0, $f4
    addiu   t6, t5, 0x4650             # t6 = 00004650
    sh      t6, 0x015C(s0)             # 0000015C
    lh      a0, 0x015C(s0)             # 0000015C
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0028(s0)            # 00000028
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    lwc1    $f16, 0x0008(s0)           # 00000008
    lh      a0, 0x015C(s0)             # 0000015C
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    lwc1    $f8, 0x0010(s0)            # 00000010
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x002C(s0)           # 0000002C
    lh      t7, 0x015E(s0)             # 0000015E
lbl_80A862A0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a0, 0x0024($sp)
    andi    t8, t7, 0x0003             # t8 = 00000000
    bne     t8, $at, lbl_80A862C0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    jal     func_80058FF8
    addiu   a3, $zero, 0x2838          # a3 = 00002838
lbl_80A862C0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80A862D4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, %hi(func_80A86358)     # a1 = 80A80000
    addiu   a1, a1, %lo(func_80A86358) # a1 = 80A86358
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80A85C10
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a2, 0x0008             # a1 = 00000008
    lw      a2, 0x0020($sp)
    addiu   v0, $sp, 0x0018            # v0 = FFFFFFF8
    lwl     t7, 0x0014(a2)             # 00000014
    lwr     t7, 0x0017(a2)             # 00000017
    sw      t7, 0x0000(v0)             # FFFFFFF8
    lhu     t7, 0x0018(a2)             # 00000018
    lw      t9, 0x0000(v0)             # FFFFFFF8
    sh      t7, 0x0004(v0)             # FFFFFFFC
    swl     t9, 0x0030(a2)             # 00000030
    swr     t9, 0x0033(a2)             # 00000033
    lhu     t9, 0x0004(v0)             # FFFFFFFC
    sh      t9, 0x0034(a2)             # 00000034
    lwl     t1, 0x0000(v0)             # FFFFFFF8
    lwr     t1, 0x0003(v0)             # FFFFFFFB
    swl     t1, 0x00B4(a2)             # 000000B4
    swr     t1, 0x00B7(a2)             # 000000B7
    lhu     t1, 0x0004(v0)             # FFFFFFFC
    sh      t1, 0x00B8(a2)             # 000000B8
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80A86358:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0100             # a1 = 00000100
    lh      t6, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A86530)     # $at = 80A80000
    lwc1    $f4, 0x0030($sp)
    sra     t7, t6,  1
    andi    t8, t7, 0x0001             # t8 = 00000000
    sll     t9, t8,  2
    addu    $at, $at, t9
    lwc1    $f6, %lo(var_80A86530)($at)
    lw      a0, 0x0044($sp)
    addiu   t0, $sp, 0x002C            # t0 = FFFFFFEC
    add.s   $f8, $f4, $f6
    sw      t0, 0x0010($sp)
    addiu   a1, s0, 0x0078             # a1 = 00000078
    addiu   a2, $sp, 0x0038            # a2 = FFFFFFF8
    swc1    $f8, 0x0030($sp)
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lh      t1, 0x001C(s0)             # 0000001C
    lui     $at, %hi(var_80A86530)     # $at = 80A80000
    swc1    $f0, 0x0080(s0)            # 00000080
    sra     t2, t1,  1
    andi    t3, t2, 0x0001             # t3 = 00000000
    sll     t4, t3,  2
    addu    $at, $at, t4
    lwc1    $f18, %lo(var_80A86530)($at)
    lui     $at, %hi(var_80A86550)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A86550)($at)
    lwc1    $f10, 0x0028(s0)           # 00000028
    or      a0, s0, $zero              # a0 = 00000000
    sub.s   $f6, $f18, $f4
    sub.s   $f16, $f0, $f10
    c.le.s  $f6, $f16
    nop
    bc1fl   lbl_80A8644C
    lw      $ra, 0x0024($sp)
    jal     func_80A85C74
    lw      a1, 0x0044($sp)
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_80058FF8
    addiu   a3, $zero, 0x2839          # a3 = 00002839
    lh      a1, 0x001C(s0)             # 0000001C
    lw      a0, 0x0044($sp)
    sra     a1, a1,  2
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80A8644C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80A8645C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x015E(a0)             # 0000015E
    blez    v0, lbl_80A86474
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015E(a0)             # 0000015E
lbl_80A86474:
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A86490:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0140             # a1 = 06000140
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_80A864C0: .word 0x012C0100, 0x00000010, 0x011D0000, 0x00000160
.word func_80A85EF8
.word func_80A85FF8
.word func_80A8645C
.word func_80A86490
var_80A864E0: .word 0x0000000A, 0x0014001E, 0x00280032, 0x003C0000
var_80A864F0: .word \
0x0078FF88, 0x00780000, 0x00780078, 0x0000FF88, \
0x00000000, 0x00000078, 0xFF88FF88, 0xFF880000, \
0xFF880078
var_80A86514: .word \
0xB86CFDA8, 0xB870C568, 0xB0F407D0, 0xB0F801F4, \
0x30FC07D0
var_80A86528: .word 0x3DCCCCCD, 0x3D4CCCCD
var_80A86530: .word 0xC1900000, 0xC1100000, 0x00000000, 0x00000000

.section .rodata

var_80A86540: .word 0x3F4CCCCD
var_80A86544: .word 0x477FFF80
var_80A86548: .word 0x477FFF80
var_80A8654C: .word 0x477FFF80
var_80A86550: .word 0x3A83126F, 0x00000000, 0x00000000, 0x00000000

