.section .text
func_8097B2E0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_8097B8B0)      # a1 = 80980000
    sw      $zero, 0x0024($sp)
    addiu   a1, a1, %lo(var_8097B8B0)  # a1 = 8097B8B0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    sra     t8, t6,  8
    sb      t8, 0x0158(s0)             # 00000158
    bne     t1, $at, lbl_8097B368
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lw      t2, 0x0004(s0)             # 00000004
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5334             # a0 = 06005334
    ori     t3, t2, 0x0010             # t3 = 00000010
    sw      t3, 0x0004(s0)             # 00000004
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lui     t4, %hi(func_8097B710)     # t4 = 80980000
    addiu   t4, t4, %lo(func_8097B710) # t4 = 8097B710
    b       lbl_8097B450
    sw      t4, 0x0154(s0)             # 00000154
lbl_8097B368:
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      v0, 0x001C(s0)             # 0000001C
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x9168             # a0 = 06009168
    bne     v0, $zero, lbl_8097B3B0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      t5, 0x0004(s0)             # 00000004
    lui     t8, %hi(func_8097B4B0)     # t8 = 80980000
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, t8, %lo(func_8097B4B0) # t8 = 8097B4B0
    ori     t6, t5, 0x0080             # t6 = 00000080
    sw      t6, 0x0004(s0)             # 00000004
    sh      t7, 0x015A(s0)             # 0000015A
    b       lbl_8097B450
    sw      t8, 0x0154(s0)             # 00000154
lbl_8097B3B0:
    bne     v0, $at, lbl_8097B420
    lui     a0, 0x0601                 # a0 = 06010000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0118             # a0 = 06000118
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lbu     a1, 0x0158(s0)             # 00000158
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x000C(s0)            # 0000000C
    jal     func_8002049C
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_8097B408
    lui     t2, %hi(func_8097B740)     # t2 = 80980000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    lui     t9, %hi(func_8097B804)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097B804) # t9 = 8097B804
    sw      t9, 0x0154(s0)             # 00000154
    b       lbl_8097B450
    swc1    $f10, 0x0028(s0)           # 00000028
lbl_8097B408:
    lw      t0, 0x0004(s0)             # 00000004
    addiu   t2, t2, %lo(func_8097B740) # t2 = 8097B740
    sw      t2, 0x0154(s0)             # 00000154
    ori     t1, t0, 0x0010             # t1 = 00000010
    b       lbl_8097B450
    sw      t1, 0x0004(s0)             # 00000004
lbl_8097B420:
    addiu   a0, a0, 0xA7F4             # a0 = FFFFA7F4
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lui     $at, %hi(var_8097B8E0)     # $at = 80980000
    lwc1    $f0, %lo(var_8097B8E0)($at)
    lui     t4, %hi(func_8097B5C4)     # t4 = 80980000
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    addiu   t4, t4, %lo(func_8097B5C4) # t4 = 8097B5C4
    sh      t3, 0x015A(s0)             # 0000015A
    sw      t4, 0x0154(s0)             # 00000154
    swc1    $f0, 0x00F8(s0)            # 000000F8
    swc1    $f0, 0x00FC(s0)            # 000000FC
lbl_8097B450:
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8097B47C:
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


func_8097B4B0:
    sw      a1, 0x0004($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    ori     $at, $zero, 0x8000         # $at = 00008000
    beq     v0, $zero, lbl_8097B4D0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_8097B4D0:
    bne     v0, $zero, lbl_8097B4F0
    lui     t0, %hi(func_8097B4F8)     # t0 = 80980000
    lh      t8, 0x0032(a0)             # 00000032
    addiu   t0, t0, %lo(func_8097B4F8) # t0 = 8097B4F8
    sh      t7, 0x015A(a0)             # 0000015A
    addu    t9, t8, $at
    sh      t9, 0x0032(a0)             # 00000032
    sw      t0, 0x0154(a0)             # 00000154
lbl_8097B4F0:
    jr      $ra
    nop


func_8097B4F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x015A(a0)             # 0000015A
    beq     v0, $zero, lbl_8097B518
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a0)             # 0000015A
    lh      v0, 0x015A(a0)             # 0000015A
lbl_8097B518:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_8097B8E4)     # $at = 80980000
    lwc1    $f8, %lo(var_8097B8E4)($at)
    cvt.s.w $f6, $f4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, %hi(var_8097B8E8)     # $at = 80980000
    lwc1    $f4, %lo(var_8097B8E8)($at)
    sw      a0, 0x0018($sp)
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800CF470
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f10                  # $f10 = 160.00
    add.s   $f8, $f0, $f6
    lw      a0, 0x0018($sp)
    lui     t1, %hi(func_8097B4B0)     # t1 = 80980000
    lui     $at, 0x43A0                # $at = 43A00000
    mul.s   $f12, $f8, $f10
    lh      t7, 0x00B6(a0)             # 000000B6
    lh      t8, 0x0032(a0)             # 00000032
    addiu   t0, $zero, 0x0014          # t0 = 00000014
    addiu   t1, t1, %lo(func_8097B4B0) # t1 = 8097B4B0
    beq     t7, t8, lbl_8097B598
    mov.s   $f2, $f12
    mtc1    $at, $f16                  # $f16 = 320.00
    nop
    sub.s   $f2, $f16, $f12
lbl_8097B598:
    lwc1    $f18, 0x0008(a0)           # 00000008
    lh      t9, 0x015A(a0)             # 0000015A
    sub.s   $f4, $f18, $f2
    bne     t9, $zero, lbl_8097B5B4
    swc1    $f4, 0x0024(a0)            # 00000024
    sh      t0, 0x015A(a0)             # 0000015A
    sw      t1, 0x0154(a0)             # 00000154
lbl_8097B5B4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B5C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0060(a3)            # 00000060
    lui     $at, 0x4420                # $at = 44200000
    mtc1    $at, $f16                  # $f16 = 640.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0060(a3)            # 00000060
    lwc1    $f0, 0x0060(a3)            # 00000060
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8097B618
    swc1    $f0, 0x0060(a3)            # 00000060
    b       lbl_8097B618
    swc1    $f2, 0x0060(a3)            # 00000060
    swc1    $f0, 0x0060(a3)            # 00000060
lbl_8097B618:
    lh      v0, 0x015A(a3)             # 0000015A
    beq     v0, $zero, lbl_8097B628
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a3)             # 0000015A
lbl_8097B628:
    lwc1    $f10, 0x000C(a3)           # 0000000C
    lw      a2, 0x0060(a3)             # 00000060
    sw      a3, 0x0018($sp)
    sub.s   $f18, $f10, $f16
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mfc1    a1, $f18
    jal     func_8006385C
    nop
    bne     v0, $zero, lbl_8097B664
    lw      a3, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x204D          # a1 = 0000204D
    jal     func_8002313C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_8097B664:
    lh      t7, 0x015A(a3)             # 0000015A
    lui     t9, %hi(func_8097B698)     # t9 = 80980000
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    bne     t7, $zero, lbl_8097B688
    addiu   t9, t9, %lo(func_8097B698) # t9 = 8097B698
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      t8, 0x015A(a3)             # 0000015A
    sw      t9, 0x0154(a3)             # 00000154
    swc1    $f4, 0x0060(a3)            # 00000060
lbl_8097B688:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B698:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      a1, 0x000C(a3)             # 0000000C
    lui     a2, 0x40AA                 # a2 = 40AA0000
    ori     a2, a2, 0xAAAB             # a2 = 40AAAAAB
    sw      a3, 0x0018($sp)
    jal     func_8006385C
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lw      a0, 0x0018($sp)
    jal     func_8002313C
    addiu   a1, $zero, 0x200D          # a1 = 0000200D
    lw      a3, 0x0018($sp)
    lui     t8, %hi(func_8097B5C4)     # t8 = 80980000
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    lh      v0, 0x015A(a3)             # 0000015A
    addiu   t8, t8, %lo(func_8097B5C4) # t8 = 8097B5C4
    beq     v0, $zero, lbl_8097B6F0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x015A(a3)             # 0000015A
    lh      v0, 0x015A(a3)             # 0000015A
lbl_8097B6F0:
    bnel    v0, $zero, lbl_8097B704
    lw      $ra, 0x0014($sp)
    sh      t7, 0x015A(a3)             # 0000015A
    sw      t8, 0x0154(a3)             # 00000154
    lw      $ra, 0x0014($sp)
lbl_8097B704:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B710:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x00B6(a0)             # 000000B6
    addiu   a1, $zero, 0x2024          # a1 = 00002024
    addiu   t7, t6, 0x0180             # t7 = 00000180
    jal     func_8002313C
    sh      t7, 0x00B6(a0)             # 000000B6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B740:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8002049C
    lbu     a1, 0x0158(t6)             # 00000158
    beq     v0, $zero, lbl_8097B780
    lw      a0, 0x001C($sp)
    jal     func_8006BA10
    lw      a1, 0x0018($sp)
    lw      t8, 0x0018($sp)
    lui     t7, %hi(func_8097B790)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097B790) # t7 = 8097B790
    sw      t7, 0x0154(t8)             # 00000154
lbl_8097B780:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B790:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x41F0                 # a1 = 41F00000
    jal     func_8006385C
    lui     a2, 0x4000                 # a2 = 40000000
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a1, 0x000C(s0)             # 0000000C
    jal     func_8006385C
    lw      a2, 0x0068(s0)             # 00000068
    beq     v0, $zero, lbl_8097B7E8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4248                 # a1 = 42480000
    lui     t6, %hi(func_8097B804)     # t6 = 80980000
    addiu   t6, t6, %lo(func_8097B804) # t6 = 8097B804
    b       lbl_8097B7F0
    sw      t6, 0x0154(s0)             # 00000154
lbl_8097B7E8:
    jal     func_8002313C
    addiu   a1, $zero, 0x2859          # a1 = 00002859
lbl_8097B7F0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097B804:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8097B814:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097B838:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lh      v0, 0x001C(a0)             # 0000001C
    or      a0, a2, $zero              # a0 = 00000000
    lui     a1, %hi(var_8097B8D0)      # a1 = 80980000
    bne     v0, $zero, lbl_8097B870
    sll     t6, v0,  2
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x8EB0             # a1 = 06008EB0
    jal     func_800280C8
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_8097B880
    lw      $ra, 0x0014($sp)
lbl_8097B870:
    addu    a1, a1, t6
    jal     func_80028048
    lw      a1, %lo(var_8097B8D0)(a1)
    lw      $ra, 0x0014($sp)
lbl_8097B880:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_8097B890: .word 0x00AF0100, 0x00000000, 0x00690000, 0x0000015C
.word func_8097B2E0
.word func_8097B47C
.word func_8097B814
.word func_8097B838
var_8097B8B0: .word \
0xB0F803E8, 0xB0FC03E8, 0x48500064, 0x00000000, \
0x00000000, 0x00000000, 0xC8C800FF, 0xFF0000FF
var_8097B8D0: .word 0x06008EB0, 0x0600A1A0, 0x06005000, 0x06000040

.section .rodata

var_8097B8E0: .word 0x453B8000
var_8097B8E4: .word 0x3CCCCCCD
var_8097B8E8: .word 0x40490FDB, 0x00000000

