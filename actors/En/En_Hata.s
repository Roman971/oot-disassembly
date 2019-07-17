.section .text
func_8089D300:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    sw      $zero, 0x003C($sp)
    jal     func_8008A194
    addiu   a0, a0, 0x0444             # a0 = 06000444
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     a1, 0x3C5A                 # a1 = 3C5A0000
    ori     a1, a1, 0x740E             # a1 = 3C5A740E
    cvt.s.w $f6, $f4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    swc1    $f6, 0x0038($sp)
    addiu   a1, s0, 0x0154             # a1 = 00000154
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0444             # a3 = 06000444
    addiu   a2, a2, 0x2FD0             # a2 = 06002FD0
    sw      a1, 0x0034($sp)
    lw      a0, 0x004C($sp)
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C684
    sw      $zero, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f8, 0x0038($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x0444             # a1 = 06000444
    lw      a0, 0x0034($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x00C0             # a0 = 060000C0
    jal     func_80033EF4
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    lw      a0, 0x004C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x003C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    sw      v0, 0x013C(s0)             # 0000013C
    lui     $at, %hi(var_8089D820)     # $at = 808A0000
    swc1    $f10, 0x00F8(s0)           # 000000F8
    lwc1    $f16, %lo(var_8089D820)($at)
    lui     $at, %hi(var_8089D824)     # $at = 808A0000
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    swc1    $f16, 0x00FC(s0)           # 000000FC
    lwc1    $f18, %lo(var_8089D824)($at)
    addiu   t8, $zero, 0x03E8          # t8 = 000003E8
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t7, 0x0262(s0)             # 00000262
    sh      t8, 0x0264(s0)             # 00000264
    sh      t9, 0x0266(s0)             # 00000266
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x00F4(s0)           # 000000F4
    lui     $at, %hi(var_8089D828)     # $at = 808A0000
    lwc1    $f4, %lo(var_8089D828)($at)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sh      t1, 0x0268(s0)             # 00000268
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8089D438:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    or      a1, a3, $zero              # a1 = 00000000
    sw      a3, 0x001C($sp)
    jal     func_8008D6D0
    addiu   a0, a0, 0x0154             # a0 = 00000154
    lw      a0, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8089D480:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0024($sp)
    lui     t7, %hi(var_8089D808)      # t7 = 808A0000
    addiu   t7, t7, %lo(var_8089D808)  # t7 = 8089D808
    lw      t9, 0x0000(t7)             # 8089D808
    addiu   t6, $sp, 0x0048            # t6 = FFFFFFE8
    lw      t8, 0x0004(t7)             # 8089D80C
    sw      t9, 0x0000(t6)             # FFFFFFE8
    lw      t9, 0x0008(t7)             # 8089D810
    addiu   a0, s0, 0x0154             # a0 = 00000154
    sw      t8, 0x0004(t6)             # FFFFFFEC
    jal     func_8008C9C0
    sw      t9, 0x0008(t6)             # FFFFFFF0
    addiu   t1, $zero, 0xC000          # t1 = FFFFC000
    sh      t1, 0x022E(s0)             # 0000022E
    lh      t2, 0x022E(s0)             # 0000022E
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    lui     $at, 0x0001                # $at = 00010000
    addu    s1, s2, $at
    sh      t2, 0x01F8(s0)             # 000001F8
    lh      t3, 0x0ACC(s1)             # 00000ACC
    lui     $at, 0x0001                # $at = 00010000
    mtc1    $zero, $f12                # $f12 = 0.00
    mtc1    t3, $f4                    # $f4 = 0.00
    addu    $at, $at, s2
    cvt.s.w $f6, $f4
    swc1    $f6, 0x003C($sp)
    lh      t4, 0x0ACE(s1)             # 00000ACE
    mtc1    t4, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0040($sp)
    lh      t5, 0x0AD0(s1)             # 00000AD0
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0044($sp)
    lwc1    $f0, 0x0AD4(s1)            # 00000AD4
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_8089D54C
    c.lt.s  $f0, $f12
    swc1    $f2, 0x0AD4($at)           # 00010AD4
    lwc1    $f0, 0x0AD4(s1)            # 00000AD4
    c.lt.s  $f0, $f12
lbl_8089D54C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s2
    bc1f    lbl_8089D560
    nop
    swc1    $f12, 0x0AD4($at)          # 00010AD4
lbl_8089D560:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    nop
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_8089D598
    lh      t8, 0x0268(s0)             # 00000268
    lh      t6, 0x0268(s0)             # 00000268
    addiu   t7, t6, 0x1770             # t7 = 00001770
    beq     $zero, $zero, lbl_8089D5A0
    sh      t7, 0x0268(s0)             # 00000268
    lh      t8, 0x0268(s0)             # 00000268
lbl_8089D598:
    addiu   t9, t8, 0x0BB8             # t9 = 00000BB8
    sh      t9, 0x0268(s0)             # 00000268
lbl_8089D5A0:
    jal     func_800636C4              # sins?
    lh      a0, 0x0268(s0)             # 00000268
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f6                   # $f6 = 80.00
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFDC
    mul.s   $f8, $f0, $f6
    jal     func_80063F34
    swc1    $f8, 0x0038($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    lwc1    $f16, 0x0038($sp)
    lwc1    $f4, 0x0AD4(s1)            # 00000AD4
    subu    v1, $zero, v0
    sub.s   $f18, $f10, $f16
    addiu   t1, $zero, 0x3A98          # t1 = 00003A98
    subu    t2, t1, v1
    mtc1    t2, $f16                   # $f16 = 0.00
    div.s   $f6, $f4, $f18
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    lh      t5, 0x0266(s0)             # 00000266
    cvt.s.w $f4, $f16
    lh      a2, 0x0262(s0)             # 00000262
    lh      a3, 0x0264(s0)             # 00000264
    addiu   a0, s0, 0x01FE             # a0 = 000001FE
    sw      t5, 0x0010($sp)
    sub.s   $f10, $f8, $f6
    mul.s   $f18, $f4, $f10
    trunc.w.s $f8, $f18
    mfc1    t4, $f8
    nop
    addu    t0, t4, v1
    sll     a1, t0, 16
    jal     func_80064508
    sra     a1, a1, 16
    lh      t6, 0x01FE(s0)             # 000001FE
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFDC
    jal     func_80063F00
    sh      t6, 0x0234(s0)             # 00000234
    subu    t7, $zero, v0
    sh      t7, 0x0200(s0)             # 00000200
    lh      t8, 0x0200(s0)             # 00000200
    lui     $at, 0x3FA0                # $at = 3FA00000
    mtc1    $at, $f12                  # $f12 = 1.25
    jal     func_80026D64
    sh      t8, 0x0236(s0)             # 00000236
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    lwc1    $f6, 0x0AD4(s1)            # 00000AD4
    lui     $at, 0x4030                # $at = 40300000
    mtc1    $at, $f10                  # $f10 = 2.75
    div.s   $f4, $f6, $f16
    add.s   $f18, $f0, $f10
    mul.s   $f8, $f18, $f4
    swc1    $f8, 0x0170(s0)            # 00000170
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_8089D69C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     a1, $at, lbl_8089D6D0
    lw      v0, 0x0010($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_8089D6D0
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     a1, $at, lbl_8089D6D0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    a1, $at, lbl_8089D718
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8089D6D0:
    lw      t6, 0x0014($sp)
    sll     t7, a1,  2
    subu    t7, t7, a1
    sll     t7, t7,  1
    addu    v1, t6, t7
    lh      t9, 0x01E4(v1)             # 000001E4
    lh      t8, 0x0000(v0)             # 00000000
    lh      t1, 0x0002(v0)             # 00000002
    lh      t4, 0x0004(v0)             # 00000004
    addu    t0, t8, t9
    sh      t0, 0x0000(v0)             # 00000000
    lh      t2, 0x01E6(v1)             # 000001E6
    addu    t3, t1, t2
    sh      t3, 0x0002(v0)             # 00000002
    lh      t5, 0x01E8(v1)             # 000001E8
    addu    t6, t4, t5
    sh      t6, 0x0004(v0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8089D718:
    jr      $ra
    nop


func_8089D720:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    jr      $ra
    nop


func_8089D738:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    jal     func_8007E56C
    lw      a0, 0x0000(t6)             # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, %hi(var_8089D82C)     # $at = 808A0000
    lwc1    $f14, %lo(var_8089D82C)($at)
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x0020($sp)
    lui     t7, %hi(func_8089D720)     # t7 = 808A0000
    addiu   t7, t7, %lo(func_8089D720) # t7 = 8089D720
    lui     a3, %hi(func_8089D69C)     # a3 = 808A0000
    lw      a1, 0x0158(v0)             # 00000158
    lw      a2, 0x0174(v0)             # 00000174
    sw      t7, 0x0010($sp)
    addiu   a3, a3, %lo(func_8089D69C) # a3 = 8089D69C
    lw      a0, 0x0024($sp)
    jal     func_8008993C
    sw      v0, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop

.section .data

var_8089D7B0: .word 0x00260600, 0x00000000, 0x00760000, 0x0000026C
.word func_8089D300
.word func_8089D438
.word func_8089D480
.word func_8089D738
.word \
0x0A000939, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000080, 0x00000000, 0x00050100, \
0x001000F6, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0xFF000000
var_8089D808: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_8089D820: .word 0x44098000
var_8089D824: .word 0x45098000
var_8089D828: .word 0x477FFF00
var_8089D82C: .word 0x3F8CCCCD

