.section .text
func_809CC270:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_809CCF34)      # a1 = 809D0000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_809CCF34)  # a1 = 809CCF34
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x03F0             # a0 = 060003F0
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    addiu   a0, s0, 0x0158             # a0 = 00000158
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lw      a0, 0x0034($sp)
    lui     t6, %hi(func_809CC938)     # t6 = 809D0000
    addiu   t6, t6, %lo(func_809CC938) # t6 = 809CC938
    sw      t6, 0x0154(s0)             # 00000154
    lw      a3, 0x0024($sp)
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    sh      $zero, 0x001C(s0)          # 0000001C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809CC2FC:
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


func_809CC330:
    sw      a1, 0x0004($sp)
    lh      v1, 0x0148(a0)             # 00000148
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    beql    v1, $zero, lbl_809CC350
    lwc1    $f4, 0x0024(a0)            # 00000024
    bnel    v1, $at, lbl_809CC570
    lwc1    $f4, 0x002C(a0)            # 0000002C
    lwc1    $f4, 0x0024(a0)            # 00000024
lbl_809CC350:
    lui     t7, %hi(var_809CCF38)      # t7 = 809D0000
    lh      t7, %lo(var_809CCF38)(t7)
    trunc.w.s $f6, $f4
    lui     t8, %hi(var_809CCF3A)      # t8 = 809D0000
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bne     v0, t7, lbl_809CC3A4
    nop
    bne     v1, $zero, lbl_809CC38C
    lui     v0, %hi(var_809CCF5A)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF58)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC390
    lh      v0, %lo(var_809CCF58)(v0)
lbl_809CC38C:
    lh      v0, %lo(var_809CCF5A)(v0)
lbl_809CC390:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0160(a0)           # 00000160
lbl_809CC3A4:
    lh      t8, %lo(var_809CCF3A)(t8)
    lui     t9, %hi(var_809CCF3C)      # t9 = 809D0000
    bne     v0, t8, lbl_809CC3E0
    nop
    bne     v1, $zero, lbl_809CC3C8
    lui     v0, %hi(var_809CCF5E)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF5C)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC3CC
    lh      v0, %lo(var_809CCF5C)(v0)
lbl_809CC3C8:
    lh      v0, %lo(var_809CCF5E)(v0)
lbl_809CC3CC:
    mtc1    v0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jr      $ra
    swc1    $f18, 0x0160(a0)           # 00000160
lbl_809CC3E0:
    lh      t9, %lo(var_809CCF3C)(t9)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t0, a1,  1
    bne     v0, t9, lbl_809CC420
    lui     t1, %hi(var_809CCF38)      # t1 = 809D0000
    bne     v1, $zero, lbl_809CC408
    lui     v0, %hi(var_809CCF62)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF60)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC40C
    lh      v0, %lo(var_809CCF60)(v0)
lbl_809CC408:
    lh      v0, %lo(var_809CCF62)(v0)
lbl_809CC40C:
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jr      $ra
    swc1    $f6, 0x0160(a0)            # 00000160
lbl_809CC420:
    addiu   t1, t1, %lo(var_809CCF38)  # t1 = 809CCF38
    addu    a2, t0, t1
    lh      t2, 0x0000(a2)             # 00000000
    bnel    v0, t2, lbl_809CC474
    lh      t5, 0x0002(a2)             # 00000002
    bne     v1, $zero, lbl_809CC450
    sll     t4, a1,  2
    sll     t3, a1,  2
    lui     v0, %hi(var_809CCF58)      # v0 = 809D0000
    addu    v0, v0, t3
    beq     $zero, $zero, lbl_809CC45C
    lh      v0, %lo(var_809CCF58)(v0)
lbl_809CC450:
    lui     v0, %hi(var_809CCF5A)      # v0 = 809D0000
    addu    v0, v0, t4
    lh      v0, %lo(var_809CCF5A)(v0)
lbl_809CC45C:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0160(a0)           # 00000160
lbl_809CC470:
    lh      t5, 0x0002(a2)             # 00000002
lbl_809CC474:
    bnel    v0, t5, lbl_809CC4BC
    lh      t8, 0x0004(a2)             # 00000004
    bne     v1, $zero, lbl_809CC498
    sll     t7, a1,  2
    sll     t6, a1,  2
    lui     v0, %hi(var_809CCF5C)      # v0 = 809D0000
    addu    v0, v0, t6
    beq     $zero, $zero, lbl_809CC4A4
    lh      v0, %lo(var_809CCF5C)(v0)
lbl_809CC498:
    lui     v0, %hi(var_809CCF5E)      # v0 = 809D0000
    addu    v0, v0, t7
    lh      v0, %lo(var_809CCF5E)(v0)
lbl_809CC4A4:
    mtc1    v0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jr      $ra
    swc1    $f18, 0x0160(a0)           # 00000160
lbl_809CC4B8:
    lh      t8, 0x0004(a2)             # 00000004
lbl_809CC4BC:
    bnel    v0, t8, lbl_809CC504
    lh      t1, 0x0006(a2)             # 00000006
    bne     v1, $zero, lbl_809CC4E0
    sll     t0, a1,  2
    sll     t9, a1,  2
    lui     v0, %hi(var_809CCF60)      # v0 = 809D0000
    addu    v0, v0, t9
    beq     $zero, $zero, lbl_809CC4EC
    lh      v0, %lo(var_809CCF60)(v0)
lbl_809CC4E0:
    lui     v0, %hi(var_809CCF62)      # v0 = 809D0000
    addu    v0, v0, t0
    lh      v0, %lo(var_809CCF62)(v0)
lbl_809CC4EC:
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jr      $ra
    swc1    $f6, 0x0160(a0)            # 00000160
lbl_809CC500:
    lh      t1, 0x0006(a2)             # 00000006
lbl_809CC504:
    bne     v0, t1, lbl_809CC548
    nop
    bne     v1, $zero, lbl_809CC528
    sll     t3, a1,  2
    sll     t2, a1,  2
    lui     v0, %hi(var_809CCF64)      # v0 = 809D0000
    addu    v0, v0, t2
    beq     $zero, $zero, lbl_809CC534
    lh      v0, %lo(var_809CCF64)(v0)
lbl_809CC528:
    lui     v0, %hi(var_809CCF66)      # v0 = 809D0000
    addu    v0, v0, t3
    lh      v0, %lo(var_809CCF66)(v0)
lbl_809CC534:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0160(a0)           # 00000160
lbl_809CC548:
    bne     v1, $zero, lbl_809CC560
    lui     $at, %hi(var_809CCF90)     # $at = 809D0000
    lui     $at, 0xC3AA                # $at = C3AA0000
    mtc1    $at, $f16                  # $f16 = -340.00
    jr      $ra
    swc1    $f16, 0x0160(a0)           # 00000160
lbl_809CC560:
    lwc1    $f18, %lo(var_809CCF90)($at)
    jr      $ra
    swc1    $f18, 0x0160(a0)           # 00000160
lbl_809CC56C:
    lwc1    $f4, 0x002C(a0)            # 0000002C
lbl_809CC570:
    lui     t5, %hi(var_809CCF48)      # t5 = 809D0000
    lh      t5, %lo(var_809CCF48)(t5)
    trunc.w.s $f6, $f4
    lui     t6, %hi(var_809CCF4A)      # t6 = 809D0000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bne     v0, t5, lbl_809CC5C8
    nop
    bne     v1, $at, lbl_809CC5B0
    lui     v0, %hi(var_809CCF76)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF74)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC5B4
    lh      v0, %lo(var_809CCF74)(v0)
lbl_809CC5B0:
    lh      v0, %lo(var_809CCF76)(v0)
lbl_809CC5B4:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0158(a0)           # 00000158
lbl_809CC5C8:
    lh      t6, %lo(var_809CCF4A)(t6)
    lui     t7, %hi(var_809CCF4C)      # t7 = 809D0000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     v0, t6, lbl_809CC608
    nop
    bne     v1, $at, lbl_809CC5F0
    lui     v0, %hi(var_809CCF7A)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF78)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC5F4
    lh      v0, %lo(var_809CCF78)(v0)
lbl_809CC5F0:
    lh      v0, %lo(var_809CCF7A)(v0)
lbl_809CC5F4:
    mtc1    v0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jr      $ra
    swc1    $f18, 0x0158(a0)           # 00000158
lbl_809CC608:
    lh      t7, %lo(var_809CCF4C)(t7)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     t8, a1,  1
    bne     v0, t7, lbl_809CC64C
    lui     t9, %hi(var_809CCF48)      # t9 = 809D0000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     v1, $at, lbl_809CC634
    lui     v0, %hi(var_809CCF7E)      # v0 = 809D0000
    lui     v0, %hi(var_809CCF7C)      # v0 = 809D0000
    beq     $zero, $zero, lbl_809CC638
    lh      v0, %lo(var_809CCF7C)(v0)
lbl_809CC634:
    lh      v0, %lo(var_809CCF7E)(v0)
lbl_809CC638:
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jr      $ra
    swc1    $f6, 0x0158(a0)            # 00000158
lbl_809CC64C:
    addiu   t9, t9, %lo(var_809CCF48)  # t9 = 809CCF48
    addu    a2, t8, t9
    lh      t0, 0x0000(a2)             # 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bnel    v0, t0, lbl_809CC6A4
    lh      t3, 0x0002(a2)             # 00000002
    bne     v1, $at, lbl_809CC680
    sll     t2, a1,  2
    sll     t1, a1,  2
    lui     v0, %hi(var_809CCF74)      # v0 = 809D0000
    addu    v0, v0, t1
    beq     $zero, $zero, lbl_809CC68C
    lh      v0, %lo(var_809CCF74)(v0)
lbl_809CC680:
    lui     v0, %hi(var_809CCF76)      # v0 = 809D0000
    addu    v0, v0, t2
    lh      v0, %lo(var_809CCF76)(v0)
lbl_809CC68C:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0158(a0)           # 00000158
lbl_809CC6A0:
    lh      t3, 0x0002(a2)             # 00000002
lbl_809CC6A4:
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bnel    v0, t3, lbl_809CC6F0
    lh      t6, 0x0004(a2)             # 00000004
    bne     v1, $at, lbl_809CC6CC
    sll     t5, a1,  2
    sll     t4, a1,  2
    lui     v0, %hi(var_809CCF78)      # v0 = 809D0000
    addu    v0, v0, t4
    beq     $zero, $zero, lbl_809CC6D8
    lh      v0, %lo(var_809CCF78)(v0)
lbl_809CC6CC:
    lui     v0, %hi(var_809CCF7A)      # v0 = 809D0000
    addu    v0, v0, t5
    lh      v0, %lo(var_809CCF7A)(v0)
lbl_809CC6D8:
    mtc1    v0, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jr      $ra
    swc1    $f18, 0x0158(a0)           # 00000158
lbl_809CC6EC:
    lh      t6, 0x0004(a2)             # 00000004
lbl_809CC6F0:
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bnel    v0, t6, lbl_809CC73C
    lh      t9, 0x0006(a2)             # 00000006
    bne     v1, $at, lbl_809CC718
    sll     t8, a1,  2
    sll     t7, a1,  2
    lui     v0, %hi(var_809CCF7C)      # v0 = 809D0000
    addu    v0, v0, t7
    beq     $zero, $zero, lbl_809CC724
    lh      v0, %lo(var_809CCF7C)(v0)
lbl_809CC718:
    lui     v0, %hi(var_809CCF7E)      # v0 = 809D0000
    addu    v0, v0, t8
    lh      v0, %lo(var_809CCF7E)(v0)
lbl_809CC724:
    mtc1    v0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jr      $ra
    swc1    $f6, 0x0158(a0)            # 00000158
lbl_809CC738:
    lh      t9, 0x0006(a2)             # 00000006
lbl_809CC73C:
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     v0, t9, lbl_809CC788
    nop
    addiu   $at, $zero, 0x4000         # $at = 00004000
    bne     v1, $at, lbl_809CC768
    sll     t1, a1,  2
    sll     t0, a1,  2
    lui     v0, %hi(var_809CCF80)      # v0 = 809D0000
    addu    v0, v0, t0
    beq     $zero, $zero, lbl_809CC774
    lh      v0, %lo(var_809CCF80)(v0)
lbl_809CC768:
    lui     v0, %hi(var_809CCF82)      # v0 = 809D0000
    addu    v0, v0, t1
    lh      v0, %lo(var_809CCF82)(v0)
lbl_809CC774:
    mtc1    v0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jr      $ra
    swc1    $f10, 0x0158(a0)           # 00000158
lbl_809CC788:
    bne     v1, $at, lbl_809CC79C
    lui     $at, 0xC457                # $at = C4570000
    mtc1    $at, $f16                  # $f16 = -860.00
    jr      $ra
    swc1    $f16, 0x0158(a0)           # 00000158
lbl_809CC79C:
    lui     $at, %hi(var_809CCF94)     # $at = 809D0000
    lwc1    $f18, %lo(var_809CCF94)($at)
    swc1    $f18, 0x0158(a0)           # 00000158
    jr      $ra
    nop


func_809CC7B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f2, 0x0060(a3)            # 00000060
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, %hi(var_809CCF98)     # $at = 809D0000
    c.lt.s  $f4, $f2
    nop
    bc1tl   lbl_809CC8A8
    lui     $at, 0x3F80                # $at = 3F800000
    lwc1    $f0, 0x0024(a3)            # 00000024
    lwc1    $f6, %lo(var_809CCF98)($at)
    lui     $at, %hi(var_809CCF9C)     # $at = 809D0000
    c.le.s  $f0, $f6
    nop
    bc1f    lbl_809CC80C
    nop
    lwc1    $f8, %lo(var_809CCF9C)($at)
    lwc1    $f10, 0x002C(a3)           # 0000002C
    c.le.s  $f10, $f8
    nop
    bc1t    lbl_809CC8A4
lbl_809CC80C:
    lui     $at, %hi(var_809CCFA0)     # $at = 809D0000
    lwc1    $f16, %lo(var_809CCFA0)($at)
    lui     $at, 0xC3D2                # $at = C3D20000
    c.le.s  $f0, $f16
    nop
    bc1fl   lbl_809CC844
    lui     $at, 0xC475                # $at = C4750000
    lwc1    $f18, 0x002C(a3)           # 0000002C
    mtc1    $at, $f4                   # $f4 = -980.00
    nop
    c.le.s  $f4, $f18
    nop
    bc1t    lbl_809CC8A4
    lui     $at, 0xC475                # $at = C4750000
lbl_809CC844:
    mtc1    $at, $f6                   # $f6 = -980.00
    lui     $at, %hi(var_809CCFA4)     # $at = 809D0000
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_809CC874
    lui     $at, 0xC457                # $at = C4570000
    lwc1    $f8, %lo(var_809CCFA4)($at)
    lwc1    $f10, 0x002C(a3)           # 0000002C
    c.le.s  $f10, $f8
    nop
    bc1t    lbl_809CC8A4
    lui     $at, 0xC457                # $at = C4570000
lbl_809CC874:
    mtc1    $at, $f16                  # $f16 = -860.00
    lui     $at, 0xC42F                # $at = C42F0000
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_809CC92C
    lw      $ra, 0x0014($sp)
    lwc1    $f18, 0x002C(a3)           # 0000002C
    mtc1    $at, $f4                   # $f4 = -700.00
    nop
    c.le.s  $f4, $f18
    nop
    bc1f    lbl_809CC928
lbl_809CC8A4:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_809CC8A8:
    mtc1    $at, $f6                   # $f6 = 1.00
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lui     a1, 0xC396                 # a1 = C3960000
    add.s   $f8, $f2, $f6
    swc1    $f8, 0x0060(a3)            # 00000060
    lw      a2, 0x0060(a3)             # 00000060
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_809CC928
    lw      a3, 0x0018($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lwc1    $f18, 0x000C(a3)           # 0000000C
    lh      t6, 0x001C(a3)             # 0000001C
    mtc1    $zero, $f10                # $f10 = 0.00
    sub.s   $f6, $f18, $f4
    lwc1    $f16, 0x0008(a3)           # 00000008
    lwc1    $f8, 0x0010(a3)            # 00000010
    swc1    $f10, 0x0060(a3)           # 00000060
    swc1    $f6, 0x0028(a3)            # 00000028
    swc1    $f16, 0x0024(a3)           # 00000024
    beq     t6, $zero, lbl_809CC91C
    swc1    $f8, 0x002C(a3)            # 0000002C
    lw      a0, 0x001C($sp)
    or      a1, a3, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_800218EC
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_809CC91C:
    lui     t7, %hi(func_809CCDCC)     # t7 = 809D0000
    addiu   t7, t7, %lo(func_809CCDCC) # t7 = 809CCDCC
    sw      t7, 0x0154(a3)             # 00000154
lbl_809CC928:
    lw      $ra, 0x0014($sp)
lbl_809CC92C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809CC938:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0140(s0)            # 00000140
    lw      v0, 0x1C44(s1)             # 00001C44
    c.eq.s  $f0, $f4
    nop
    bc1tl   lbl_809CCA0C
    lwc1    $f10, 0x0060(s0)           # 00000060
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    lwc1    $f6, 0x0140(s0)            # 00000140
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_809CCA00
    mtc1    $zero, $f0                 # $f0 = 0.00
    jal     func_8007943C
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_809CC9FC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809CC330
    or      a1, s1, $zero              # a1 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528
    addiu   a1, s0, 0x0158             # a1 = 00000158
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_809CCA00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t8, 0x0004(s0)             # 00000004
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    ori     t9, t8, 0x0010             # t9 = 00000010
    jal     func_800218EC
    sw      t9, 0x0004(s0)             # 00000004
    lui     t1, %hi(func_809CCA3C)     # t1 = 809D0000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_809CCA3C) # t1 = 809CCA3C
    sh      t0, 0x001C(s0)             # 0000001C
    sw      t1, 0x0154(s0)             # 00000154
lbl_809CC9FC:
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_809CCA00:
    nop
    swc1    $f0, 0x0140(s0)            # 00000140
    lwc1    $f10, 0x0060(s0)           # 00000060
lbl_809CCA0C:
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_809CCA2C
    lw      $ra, 0x001C($sp)
    jal     func_809CC7B0
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809CCA2C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809CCA3C:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x006C($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0158(s0)             # 00000158
    jal     func_8006385C
    lw      a2, 0x0068(s0)             # 00000068
    lw      a1, 0x0160(s0)             # 00000160
    lw      a2, 0x0068(s0)             # 00000068
    sw      v0, 0x0064($sp)
    jal     func_8006385C
    addiu   a0, s0, 0x002C             # a0 = 0000002C
    lw      v1, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    and     v1, v1, v0
    beq     v1, $zero, lbl_809CCB60
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x002C(s0)            # 0000002C
    c.le.s  $f8, $f0
    swc1    $f0, 0x0068(s0)            # 00000068
    swc1    $f4, 0x0158(s0)            # 00000158
    swc1    $f6, 0x0160(s0)            # 00000160
    bc1fl   lbl_809CCADC
    sh      $zero, 0x001C(s0)          # 0000001C
    lw      t6, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_809CCADC:
    jal     func_800218EC
    lw      a0, 0x006C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2835          # a1 = 00002835
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, %hi(var_809CCFA8)     # $at = 809D0000
    lwc1    $f16, %lo(var_809CCFA8)($at)
    lwc1    $f10, 0x0024(s0)           # 00000024
    lui     t9, %hi(func_809CC938)     # t9 = 809D0000
    lui     $at, 0x4382                # $at = 43820000
    add.s   $f0, $f10, $f16
    addiu   t9, t9, %lo(func_809CC938) # t9 = 809CC938
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_809CCB58
    nop
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $at, $f4                   # $f4 = 260.00
    lui     t8, %hi(func_809CCE68)     # t8 = 809D0000
    addiu   t8, t8, %lo(func_809CCE68) # t8 = 809CCE68
    add.s   $f0, $f18, $f4
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_809CCB58
    nop
    beq     $zero, $zero, lbl_809CCDAC
    sw      t8, 0x0154(s0)             # 00000154
lbl_809CCB58:
    beq     $zero, $zero, lbl_809CCDAC
    sw      t9, 0x0154(s0)             # 00000154
lbl_809CCB60:
    mtc1    $at, $f6                   # $f6 = 260.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_809CCDB0
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x42F0                # $at = 42F00000
    c.le.s  $f0, $f10
    nop
    bc1fl   lbl_809CCDB0
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f12                  # $f12 = 120.00
    jal     func_80026D90
    nop
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0048($sp)
    mov.s   $f20, $f0
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f16                  # $f16 = 1.50
    nop
    add.s   $f18, $f16, $f20
    neg.s   $f4, $f18
    mul.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x004C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    nop
    add.s   $f8, $f0, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0050($sp)
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    nop
    add.s   $f16, $f10, $f20
    neg.s   $f18, $f16
    mul.s   $f4, $f0, $f18
    swc1    $f4, 0x0054($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f18, 0x0048($sp)
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f10, $f8, $f20
    sub.s   $f16, $f6, $f10
    mul.s   $f4, $f0, $f18
    sub.s   $f8, $f16, $f4
    swc1    $f8, 0x0058($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    mul.s   $f18, $f10, $f20
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    mul.s   $f8, $f0, $f4
    sub.s   $f16, $f6, $f18
    add.s   $f10, $f8, $f16
    swc1    $f10, 0x0060($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    jal     func_80063BF0
    swc1    $f6, 0x005C($sp)
    lui     t0, %hi(var_809CCF00)      # t0 = 809D0000
    lui     t1, %hi(var_809CCF04)      # t1 = 809D0000
    addiu   t1, t1, %lo(var_809CCF04)  # t1 = 809CCF04
    addiu   t0, t0, %lo(var_809CCF00)  # t0 = 809CCF00
    lui     a3, %hi(var_809CCF08)      # a3 = 809D0000
    addiu   t2, $zero, 0x00FA          # t2 = 000000FA
    sw      t2, 0x0018($sp)
    addiu   a3, a3, %lo(var_809CCF08)  # a3 = 809CCF08
    sw      t0, 0x0010($sp)
    sw      t1, 0x0014($sp)
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFE4
    jal     func_8001BD94
    sw      v0, 0x001C($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    jal     func_80026D90
    nop
    swc1    $f0, 0x0048($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    lwc1    $f10, 0x0048($sp)
    lwc1    $f18, 0x0024(s0)           # 00000024
    mul.s   $f8, $f4, $f20
    sub.s   $f16, $f18, $f8
    mul.s   $f6, $f0, $f10
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0058($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0148(s0)             # 00000148
    mov.s   $f20, $f0
    jal     func_800636C4              # sins?
    lh      a0, 0x0148(s0)             # 00000148
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f8                   # $f8 = 60.00
    lwc1    $f16, 0x0048($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mul.s   $f10, $f8, $f20
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    mul.s   $f4, $f0, $f16
    sub.s   $f6, $f18, $f10
    sub.s   $f8, $f6, $f4
    jal     func_80063BF0
    swc1    $f8, 0x0060($sp)
    lui     t3, %hi(var_809CCF00)      # t3 = 809D0000
    lui     t4, %hi(var_809CCF04)      # t4 = 809D0000
    addiu   t4, t4, %lo(var_809CCF04)  # t4 = 809CCF04
    addiu   t3, t3, %lo(var_809CCF00)  # t3 = 809CCF00
    lui     a3, %hi(var_809CCF08)      # a3 = 809D0000
    addiu   t5, $zero, 0x00FA          # t5 = 000000FA
    sw      t5, 0x0018($sp)
    addiu   a3, a3, %lo(var_809CCF08)  # a3 = 809CCF08
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFF0
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFE4
    jal     func_8001BD94
    sw      v0, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x00DF          # a1 = 000000DF
lbl_809CCDAC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_809CCDB0:
    jal     func_809CC7B0
    lw      a1, 0x006C($sp)
    lw      $ra, 0x0034($sp)
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_809CCDCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lwc1    $f4, 0x0140(a3)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   a0, a3, 0x0028             # a0 = 00000028
    c.eq.s  $f0, $f4
    lui     a2, 0x3F80                 # a2 = 3F800000
    bc1tl   lbl_809CCE10
    lw      a1, 0x000C(a3)             # 0000000C
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f0, 0x0140(a3)            # 00000140
    lw      a1, 0x000C(a3)             # 0000000C
lbl_809CCE10:
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_809CCE58
    lw      a3, 0x0018($sp)
    lw      t8, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    addiu   a0, a3, 0x0158             # a0 = 00000158
    and     t9, t8, $at
    sw      t9, 0x0004(a3)             # 00000004
    sw      a3, 0x0018($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a3, 0x0008             # a1 = 00000008
    lw      a3, 0x0018($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     t0, %hi(func_809CC938)     # t0 = 809D0000
    addiu   t0, t0, %lo(func_809CC938) # t0 = 809CC938
    sw      t0, 0x0154(a3)             # 00000154
    swc1    $f6, 0x0068(a3)            # 00000068
lbl_809CCE58:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809CCE68:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    lwc1    $f4, 0x0140(a0)            # 00000140
    lw      v0, 0x1C44(a1)             # 00001C44
    c.eq.s  $f0, $f4
    nop
    bc1t    lbl_809CCE9C
    nop
    lw      t6, 0x0670(v0)             # 00000670
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    and     t7, t6, $at
    sw      t7, 0x0670(v0)             # 00000670
    swc1    $f0, 0x0140(a0)            # 00000140
lbl_809CCE9C:
    jr      $ra
    nop


func_809CCEA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809CCEC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0190             # a1 = 06000190
    jal     func_80028048
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop

.section .data

var_809CCF00: .word 0xFAFAFAFF
var_809CCF04: .word 0xB4B4B4FF
var_809CCF08: .word 0x00000000, 0x00000000, 0x00000000
var_809CCF14: .word 0x00D60600, 0x00000000, 0x006B0000, 0x00000164
.word func_809CC270
.word func_809CC2FC
.word func_809CCEA4
.word func_809CCEC8
var_809CCF34: .word 0x48500064
var_809CCF38: .byte 0xFB, 0xDC
var_809CCF3A: .byte 0xFB, 0x50
var_809CCF3C: .word 0xFB28FA95, 0xF9D4F970, 0xF90C0000
var_809CCF48: .byte 0xFD, 0xBC
var_809CCF4A: .byte 0xFD, 0x6C
var_809CCF4C: .word 0xFCF4FCCC, 0xFCA4FC7C, 0xFBC10000
var_809CCF58: .byte 0xFD, 0xBC
var_809CCF5A: .byte 0xFB, 0xC1
var_809CCF5C: .byte 0xFC, 0xF4
var_809CCF5E: .byte 0xFB, 0x14
var_809CCF60: .byte 0xFE, 0xAC
var_809CCF62: .byte 0xFC, 0xCC
var_809CCF64: .byte 0xFE, 0xFC
var_809CCF66: .byte 0xFB, 0x14, 0xFE, 0xAC, 0xFC, 0xA4, 0xFD, 0x6C, 0xFB, 0x14, 0xFE, 0xAC, 0xFD, 0x1C
var_809CCF74: .byte 0xFC, 0xA4
var_809CCF76: .byte 0xF9, 0xD4
var_809CCF78: .byte 0xFB, 0x28
var_809CCF7A: .byte 0xF9, 0x0C
var_809CCF7C: .byte 0xFC, 0xA4
var_809CCF7E: .byte 0xF9, 0x70
var_809CCF80: .byte 0xFC, 0xA4
var_809CCF82: .byte 0xF9, 0x70, 0xFA, 0x95, 0xF9, 0x70, 0xFC, 0xA4, 0xFB, 0x50, 0xFC, 0xA4, 0xF8, 0xF8

.section .rodata

var_809CCF90: .word 0xC49D8000
var_809CCF94: .word 0xC4DE8000
var_809CCF98: .word 0xC4CF8000
var_809CCF9C: .word 0xC4848000
var_809CCFA0: .word 0xC4C58000
var_809CCFA4: .word 0xC4938000
var_809CCFA8: .word 0x44AD6000, 0x00000000

