.section .text
func_80B2D1B0:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t7, 0x0000(a3)             # 00000000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    lui     t6, 0x8012                 # t6 = 80120000
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x000C(a3)             # 0000000C
    lui     t7, 0x8012                 # t7 = 80120000
    sw      t9, 0x000C(a2)             # 0000000C
    lw      t8, 0x0010(a3)             # 00000010
    sw      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x0014(a3)             # 00000014
    sw      t9, 0x0014(a2)             # 00000014
    lw      t1, 0x0018(a3)             # 00000018
    sw      t1, 0x0018(a2)             # 00000018
    lw      t0, 0x001C(a3)             # 0000001C
    sw      t0, 0x001C(a2)             # 0000001C
    lw      t1, 0x0020(a3)             # 00000020
    sw      t1, 0x0020(a2)             # 00000020
    lh      v0, 0x0032(a3)             # 00000032
    lui     t1, %hi(func_80B2D6E0)     # t1 = 80B30000
    addiu   t1, t1, %lo(func_80B2D6E0) # t1 = 80B2D6E0
    bgez    v0, lbl_80B2D27C
    sh      v0, 0x005C(a2)             # 0000005C
    lui     v0, 0x0403                 # v0 = 04030000
    lh      t2, 0x005C(a2)             # 0000005C
    addiu   v0, v0, 0x7D20             # v0 = 04037D20
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    subu    t3, $zero, t2
    sh      t3, 0x005C(a2)             # 0000005C
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    sw      t0, 0x0038(a2)             # 00000038
    sw      t1, 0x0024(a2)             # 00000024
    lh      t2, 0x002E(a3)             # 0000002E
    sh      $zero, 0x0056(a2)          # 00000056
    beq     $zero, $zero, lbl_80B2D2E0
    sh      t2, 0x0052(a2)             # 00000052
lbl_80B2D27C:
    lui     v0, 0x0403                 # v0 = 04030000
    addiu   v0, v0, 0x7D20             # v0 = 04037D20
    sll     t3, v0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, t6, t5
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t7, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t6, t7
    addu    t9, t8, $at
    sw      t9, 0x0038(a2)             # 00000038
    lbu     t0, 0x0038(a3)             # 00000038
    lui     t2, %hi(func_80B2D624)     # t2 = 80B30000
    lui     t1, %hi(func_80B2D56C)     # t1 = 80B30000
    bne     t0, $zero, lbl_80B2D2CC
    addiu   t2, t2, %lo(func_80B2D624) # t2 = 80B2D624
    addiu   t1, t1, %lo(func_80B2D56C) # t1 = 80B2D56C
    beq     $zero, $zero, lbl_80B2D2D0
    sw      t1, 0x0024(a2)             # 00000024
lbl_80B2D2CC:
    sw      t2, 0x0024(a2)             # 00000024
lbl_80B2D2D0:
    lbu     t3, 0x002B(a3)             # 0000002B
    sh      t3, 0x0052(a2)             # 00000052
    lh      t4, 0x002E(a3)             # 0000002E
    sh      t4, 0x0056(a2)             # 00000056
lbl_80B2D2E0:
    lui     t5, %hi(func_80B2D350)     # t5 = 80B30000
    addiu   t5, t5, %lo(func_80B2D350) # t5 = 80B2D350
    sw      t5, 0x0028(a2)             # 00000028
    lh      t6, 0x0034(a3)             # 00000034
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t6, 0x0040(a2)             # 00000040
    lh      t7, 0x0036(a3)             # 00000036
    sh      t7, 0x0042(a2)             # 00000042
    lbu     t8, 0x0024(a3)             # 00000024
    sh      t8, 0x0044(a2)             # 00000044
    lbu     t9, 0x0025(a3)             # 00000025
    sh      t9, 0x0046(a2)             # 00000046
    lbu     t0, 0x0026(a3)             # 00000026
    sh      t0, 0x0048(a2)             # 00000048
    lbu     t1, 0x0027(a3)             # 00000027
    sh      t1, 0x004A(a2)             # 0000004A
    lbu     t2, 0x0028(a3)             # 00000028
    sh      t2, 0x004C(a2)             # 0000004C
    lbu     t3, 0x0029(a3)             # 00000029
    sh      t3, 0x004E(a2)             # 0000004E
    lbu     t4, 0x002A(a3)             # 0000002A
    sh      t4, 0x0050(a2)             # 00000050
    lh      t5, 0x002C(a3)             # 0000002C
    sh      t5, 0x0054(a2)             # 00000054
    lw      t6, 0x0030(a3)             # 00000030
    sh      t6, 0x0058(a2)             # 00000058
    jr      $ra
    nop


func_80B2D350:
    addiu   $sp, $sp, 0xFE30           # $sp -= 0x1D0
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a0, 0x01D0($sp)
    sw      a1, 0x01D4($sp)
    lh      t6, 0x0056(s0)             # 00000056
    lui     $at, %hi(var_80B2D780)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2D780)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      t7, 0x01D0($sp)
    addiu   a0, $sp, 0x0184            # a0 = FFFFFFB4
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    swc1    $f10, 0x01C8($sp)
    lw      s1, 0x0000(t7)             # 00000000
    lw      a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0004(s0)             # 00000004
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x0008(s0)             # 00000008
    addiu   a0, $sp, 0x0144            # a0 = FFFFFF74
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8008F50C
    lh      a3, 0x0042(s0)             # 00000042
    lwc1    $f0, 0x01C8($sp)
    addiu   a0, $sp, 0x0104            # a0 = FFFFFF34
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_8008F4A8              # guScaleF
    nop
    lw      a1, 0x01D0($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a0, $sp, 0x0184            # a0 = FFFFFFB4
    addiu   a2, $sp, 0x00C4            # a2 = FFFFFEF4
    jal     func_8008EDB8
    addu    a1, a1, $at
    addiu   a0, $sp, 0x00C4            # a0 = FFFFFEF4
    addiu   a1, $sp, 0x0144            # a1 = FFFFFF74
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0084            # a2 = FFFFFEB4
    addiu   a0, $sp, 0x0084            # a0 = FFFFFEB4
    addiu   a1, $sp, 0x0104            # a1 = FFFFFF34
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0044            # a2 = FFFFFE74
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    addiu   t0, t0, 0xEDB0             # t0 = 800FEDB0
    ori     t9, t9, 0x0003             # t9 = DA380003
    sw      t9, 0x0000(v0)             # 00000000
    sw      t0, 0x0004(v0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x0044            # a1 = FFFFFE74
    beq     v0, $zero, lbl_80B2D558
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    jal     func_8007E204
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    ori     t4, t4, 0x8080             # t4 = FA008080
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lh      t5, 0x0058(s0)             # 00000058
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f16                  # $f16 = 55.00
    mtc1    t5, $f18                   # $f18 = 0.00
    lh      t6, 0x005C(s0)             # 0000005C
    lh      t7, 0x0046(s0)             # 00000046
    cvt.s.w $f4, $f18
    mtc1    t6, $f8                    # $f8 = 0.00
    lh      t4, 0x0044(s0)             # 00000044
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8, 16
    cvt.s.w $f10, $f8
    sll     t5, t4, 24
    div.s   $f6, $f16, $f4
    mul.s   $f18, $f6, $f10
    trunc.w.s $f16, $f18
    mfc1    t0, $f16
    nop
    addiu   t1, t0, 0x00C8             # t1 = 000000C8
    andi    t2, t1, 0x00FF             # t2 = 000000C8
    lh      t1, 0x0048(s0)             # 00000048
    or      t6, t2, t5                 # t6 = 000000C8
    or      t0, t6, t9                 # t0 = 000000C8
    andi    t3, t1, 0x00FF             # t3 = 000000C8
    sll     t4, t3,  8
    or      t2, t0, t4                 # t2 = FA0080C8
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x0052(s0)             # 00000052
    lh      t4, 0x004E(s0)             # 0000004E
    lh      t1, 0x004C(s0)             # 0000004C
    andi    t6, t8, 0x00FF             # t6 = 00000000
    lh      t8, 0x0050(s0)             # 00000050
    andi    t2, t4, 0x00FF             # t2 = 00000080
    sll     t3, t1, 24
    or      t0, t6, t3                 # t0 = 000000C8
    sll     t5, t2, 16
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t1, t9,  8
    or      t7, t0, t5                 # t7 = 000000C8
    or      t6, t7, t1                 # t6 = 000000C8
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t2, 0x0038(s0)             # 00000038
    sw      t2, 0x0004(v0)             # 00000004
lbl_80B2D558:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x01D0           # $sp += 0x1D0


func_80B2D56C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)
    lui     $at, %hi(var_80B2D784)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2D784)($at)
    lui     $at, %hi(var_80B2D788)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2D788)($at)
    mul.s   $f6, $f0, $f4
    lw      a2, 0x0020($sp)
    sub.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0018(a2)           # 00000018
    lui     $at, %hi(var_80B2D78C)     # $at = 80B30000
    lwc1    $f16, %lo(var_80B2D78C)($at)
    lw      a2, 0x0020($sp)
    lui     $at, %hi(var_80B2D790)     # $at = 80B30000
    mul.s   $f18, $f0, $f16
    lh      v0, 0x0054(a2)             # 00000054
    lh      t6, 0x0052(a2)             # 00000052
    lwc1    $f4, %lo(var_80B2D790)($at)
    subu    t8, $zero, v0
    addu    t7, t6, v0
    sh      t7, 0x0052(a2)             # 00000052
    sub.s   $f6, $f18, $f4
    lh      v1, 0x0052(a2)             # 00000052
    bgez    v1, lbl_80B2D5F0
    swc1    $f6, 0x0020(a2)            # 00000020
    sh      $zero, 0x0052(a2)          # 00000052
    beq     $zero, $zero, lbl_80B2D608
    sh      t8, 0x0054(a2)             # 00000054
lbl_80B2D5F0:
    slti    $at, v1, 0x0100
    bne     $at, $zero, lbl_80B2D608
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    subu    t0, $zero, v0
    sh      t9, 0x0052(a2)             # 00000052
    sh      t0, 0x0054(a2)             # 00000054
lbl_80B2D608:
    lh      t1, 0x0042(a2)             # 00000042
    lh      t2, 0x0040(a2)             # 00000040
    addu    t3, t1, t2
    sh      t3, 0x0042(a2)             # 00000042
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B2D624:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     $at, %hi(var_80B2D794)     # $at = 80B30000
    lwc1    $f0, %lo(var_80B2D794)($at)
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lwc1    $f8, 0x0014(a2)            # 00000014
    lui     $at, %hi(var_80B2D798)     # $at = 80B30000
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f8, $f0
    swc1    $f6, 0x000C(a2)            # 0000000C
    swc1    $f10, 0x0014(a2)           # 00000014
    sw      a2, 0x0020($sp)
    jal     func_80026D90
    lwc1    $f12, %lo(var_80B2D798)($at)
    lw      a2, 0x0020($sp)
    lui     $at, %hi(var_80B2D79C)     # $at = 80B30000
    swc1    $f0, 0x0018(a2)            # 00000018
    jal     func_80026D90
    lwc1    $f12, %lo(var_80B2D79C)($at)
    lw      a2, 0x0020($sp)
    lh      v0, 0x0054(a2)             # 00000054
    lh      t6, 0x0052(a2)             # 00000052
    swc1    $f0, 0x0020(a2)            # 00000020
    subu    t8, $zero, v0
    addu    t7, t6, v0
    sh      t7, 0x0052(a2)             # 00000052
    lh      v1, 0x0052(a2)             # 00000052
    bgez    v1, lbl_80B2D6B0
    slti    $at, v1, 0x0100
    sh      $zero, 0x0052(a2)          # 00000052
    beq     $zero, $zero, lbl_80B2D6C4
    sh      t8, 0x0054(a2)             # 00000054
lbl_80B2D6B0:
    bne     $at, $zero, lbl_80B2D6C4
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    subu    t0, $zero, v0
    sh      t9, 0x0052(a2)             # 00000052
    sh      t0, 0x0054(a2)             # 00000054
lbl_80B2D6C4:
    lh      t1, 0x0042(a2)             # 00000042
    lh      t2, 0x0040(a2)             # 00000040
    addu    t3, t1, t2
    sh      t3, 0x0042(a2)             # 00000042
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B2D6E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0058(a2)             # 00000058
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f4                   # $f4 = 32768.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lh      t7, 0x005C(a2)             # 0000005C
    sw      a2, 0x0020($sp)
    cvt.s.w $f8, $f6
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f10, $f4, $f8
    mul.s   $f6, $f10, $f18
    trunc.w.s $f4, $f6
    mfc1    a0, $f4
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lw      a2, 0x0020($sp)
    lh      t9, 0x0052(a2)             # 00000052
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    mul.s   $f10, $f0, $f16
    trunc.w.s $f18, $f10
    mfc1    t1, $f18
    nop
    sh      t1, 0x0056(a2)             # 00000056
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    nop

.section .data

.word 0x00000001
.word func_80B2D1B0
.word 0x00000000, 0x00000000

.section .rodata

var_80B2D780: .word 0x461C4000
var_80B2D784: .word 0x3ECCCCCD
var_80B2D788: .word 0x3E4CCCCD
var_80B2D78C: .word 0x3ECCCCCD
var_80B2D790: .word 0x3E4CCCCD
var_80B2D794: .word 0x3F733333
var_80B2D798: .word 0x3E4CCCCD
var_80B2D79C: .word 0x3E4CCCCD

