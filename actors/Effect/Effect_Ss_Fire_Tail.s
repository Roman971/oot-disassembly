.section .text
func_80B36790:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lw      t7, 0x0004(a3)             # 00000004
    lui     t2, %hi(func_80B368AC)     # t2 = 80B30000
    lui     t3, %hi(func_80B36DB4)     # t3 = 80B30000
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0008(a3)             # 00000008
    addiu   t2, t2, %lo(func_80B368AC) # t2 = 80B368AC
    addiu   t3, t3, %lo(func_80B36DB4) # t3 = 80B36DB4
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x000C(a3)             # 0000000C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x0014(a3)             # 00000014
    addiu   t7, $zero, 0xFFF6          # t7 = FFFFFFF6
    sw      t9, 0x002C(a2)             # 0000002C
    lw      t8, 0x0018(a3)             # 00000018
    sw      t8, 0x0030(a2)             # 00000030
    lw      t9, 0x001C(a3)             # 0000001C
    swc1    $f0, 0x000C(a2)            # 0000000C
    swc1    $f0, 0x0010(a2)            # 00000010
    swc1    $f0, 0x0014(a2)            # 00000014
    swc1    $f0, 0x0018(a2)            # 00000018
    swc1    $f0, 0x001C(a2)            # 0000001C
    swc1    $f0, 0x0020(a2)            # 00000020
    sw      t9, 0x0034(a2)             # 00000034
    lw      t0, 0x0030(a3)             # 00000030
    addiu   t8, $zero, 0xFFF1          # t8 = FFFFFFF1
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t0, 0x005C(a2)             # 0000005C
    lw      t1, 0x0000(a3)             # 00000000
    sw      t2, 0x0028(a2)             # 00000028
    sw      t3, 0x0024(a2)             # 00000024
    sw      t1, 0x003C(a2)             # 0000003C
    lwc1    $f4, 0x0010(a3)            # 00000010
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    sh      t5, 0x0040(a2)             # 00000040
    lw      t6, 0x0030(a3)             # 00000030
    sh      t7, 0x0044(a2)             # 00000044
    sh      t8, 0x0046(a2)             # 00000046
    sh      t6, 0x0042(a2)             # 00000042
    lh      v1, 0x0020(a3)             # 00000020
    bnel    v1, $zero, lbl_80B36860
    sh      v1, 0x0054(a2)             # 00000054
    sh      t9, 0x0020(a3)             # 00000020
    lh      v1, 0x0020(a3)             # 00000020
    sh      v1, 0x0054(a2)             # 00000054
lbl_80B36860:
    lbu     t0, 0x0022(a3)             # 00000022
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t0, 0x0048(a2)             # 00000048
    lbu     t1, 0x0023(a3)             # 00000023
    sh      t1, 0x004A(a2)             # 0000004A
    lbu     t2, 0x0024(a3)             # 00000024
    sh      t2, 0x004C(a2)             # 0000004C
    lbu     t3, 0x0026(a3)             # 00000026
    sh      t3, 0x004E(a2)             # 0000004E
    lbu     t4, 0x0027(a3)             # 00000027
    sh      t4, 0x0050(a2)             # 00000050
    lbu     t5, 0x0028(a3)             # 00000028
    sh      t5, 0x0052(a2)             # 00000052
    lh      t6, 0x002C(a3)             # 0000002C
    sh      t6, 0x0056(a2)             # 00000056
    lh      t7, 0x002A(a3)             # 0000002A
    sh      t7, 0x0058(a2)             # 00000058
    jr      $ra
    nop


func_80B368AC:
    addiu   $sp, $sp, 0xFF58           # $sp = FFFFFF58
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      a1, 0x00AC($sp)
    lw      s2, 0x0000(s1)             # 00000000
    swc1    $f0, 0x0098($sp)
    swc1    $f0, 0x0094($sp)
    swc1    $f0, 0x0090($sp)
    lw      v0, 0x003C(s0)             # 0000003C
    beq     v0, $zero, lbl_80B36A10
    addiu   t6, s0, 0x002C             # t6 = 0000002C
    sw      t6, 0x004C($sp)
    lw      t9, 0x005C(v0)             # 0000005C
    sw      t9, 0x0000(t6)             # 0000002C
    lw      t8, 0x0060(v0)             # 00000060
    sw      t8, 0x0004(t6)             # 00000030
    lw      t9, 0x0064(v0)             # 00000064
    sw      t9, 0x0008(t6)             # 00000034
    lh      v1, 0x0056(s0)             # 00000056
    bgezl   v1, lbl_80B36954
    lw      t1, 0x1C44(s1)             # 00001C44
    lw      v0, 0x003C(s0)             # 0000003C
    lwc1    $f18, 0x0008(s0)           # 00000008
    lwc1    $f16, 0x0000(s0)           # 00000000
    lwc1    $f10, 0x002C(v0)           # 0000002C
    lwc1    $f8, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x0004(s0)            # 00000004
    add.s   $f10, $f18, $f10
    lwc1    $f18, 0x0028(v0)           # 00000028
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f16, $f8
    mfc1    a2, $f10
    jal     func_800AA7F4
    add.s   $f14, $f6, $f18
    beq     $zero, $zero, lbl_80B36A30
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE8
    lw      t1, 0x1C44(s1)             # 00001C44
lbl_80B36954:
    sh      v1, 0x0076($sp)
    sw      t1, 0x0078($sp)
    lh      t2, 0x07A0(s1)             # 000007A0
    sll     t3, t2,  2
    addu    t4, s1, t3
    jal     func_8004977C
    lw      a0, 0x0790(t4)             # 00000790
    sll     a0, v0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lh      t6, 0x0076($sp)
    lw      t5, 0x0078($sp)
    mul.s   $f10, $f0, $f8
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    v1, t5, t7
    lwc1    $f6, 0x08F8(v1)            # 000008F8
    sub.s   $f16, $f6, $f10
    swc1    $f16, 0x0000(s0)           # 00000000
    lwc1    $f18, 0x08FC(v1)           # 000008FC
    swc1    $f18, 0x0004(s0)           # 00000004
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t1, s1, t9
    lw      a0, 0x0790(t1)             # 00000790
    jal     func_8004977C
    sw      v1, 0x0050($sp)
    sll     a0, v0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    lw      v1, 0x0050($sp)
    lwc1    $f12, 0x0000(s0)           # 00000000
    mul.s   $f6, $f0, $f8
    lwc1    $f4, 0x0900(v1)            # 00000900
    lwc1    $f14, 0x0004(s0)           # 00000004
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f10, $f4, $f6
    swc1    $f10, 0x0008(s0)           # 00000008
    jal     func_800AA7F4
    lw      a2, 0x0008(s0)             # 00000008
    beq     $zero, $zero, lbl_80B36A30
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE8
lbl_80B36A10:
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f14, 0x0004(s0)           # 00000004
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t2, s0, 0x002C             # t2 = 0000002C
    sw      t2, 0x004C($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE8
lbl_80B36A30:
    jal     func_80063F00
    lw      a1, 0x004C($sp)
    sh      v0, 0x005A($sp)
    lh      t3, 0x07A0(s1)             # 000007A0
    sll     t4, t3,  2
    addu    t6, s1, t4
    jal     func_8004977C
    lw      a0, 0x0790(t6)             # 00000790
    lh      t5, 0x005A($sp)
    subu    v1, t5, v0
    sll     a0, v1, 16
    sh      v1, 0x009E($sp)
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    abs.s   $f0, $f0
    lh      a0, 0x009E($sp)
    jal     func_800636C4              # sins?
    swc1    $f0, 0x008C($sp)
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFE8
    lw      a1, 0x004C($sp)
    jal     func_80063EB8
    swc1    $f0, 0x0088($sp)
    lh      t7, 0x0054(s0)             # 00000054
    lui     $at, %hi(var_80B36E00)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B36E00)($at)
    mtc1    t7, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f8
    div.s   $f6, $f0, $f4
    swc1    $f6, 0x0084($sp)
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t1, s1, t9
    jal     func_8004977C
    lw      a0, 0x0790(t1)             # 00000790
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t2, v0, $at
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B36E04)     # $at = 80B30000
    lwc1    $f18, %lo(var_80B36E04)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lh      t6, 0x0044(s0)             # 00000044
    lwc1    $f2, 0x0088($sp)
    lwc1    $f10, 0x0084($sp)
    mtc1    t6, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80B36E08)     # $at = 80B30000
    lwc1    $f18, %lo(var_80B36E08)($at)
    cvt.s.w $f4, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f16, $f6, $f10
    nop
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lh      t5, 0x005C(s0)             # 0000005C
    lh      t8, 0x0042(s0)             # 00000042
    lh      t9, 0x0040(s0)             # 00000040
    addiu   t7, t5, 0x0001             # t7 = 00000001
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f4, $f8
    mtc1    $at, $f0                   # $f0 = 1.00
    mtc1    t9, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_80B36E0C)     # $at = 80B30000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f10, $f6
    cvt.s.w $f6, $f8
    div.s   $f16, $f4, $f10
    lwc1    $f4, %lo(var_80B36E0C)($at)
    sub.s   $f2, $f0, $f16
    mul.s   $f18, $f2, $f2
    sub.s   $f2, $f0, $f18
    mul.s   $f10, $f6, $f4
    nop
    mul.s   $f14, $f10, $f2
    mfc1    a2, $f14
    swc1    $f14, 0x0098($sp)
    swc1    $f14, 0x0094($sp)
    swc1    $f14, 0x0090($sp)
    jal     func_800AA8FC
    mov.s   $f12, $f14
    lh      t1, 0x0046(s0)             # 00000046
    lui     $at, %hi(var_80B36E10)     # $at = 80B30000
    lwc1    $f0, %lo(var_80B36E10)($at)
    mtc1    t1, $f18                   # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    cvt.s.w $f8, $f18
    lui     $at, %hi(var_80B36E14)     # $at = 80B30000
    lwc1    $f6, %lo(var_80B36E14)($at)
    lwc1    $f2, 0x008C($sp)
    lwc1    $f16, 0x0084($sp)
    mul.s   $f4, $f8, $f6
    nop
    mul.s   $f10, $f4, $f2
    nop
    mul.s   $f18, $f10, $f16
    add.s   $f2, $f18, $f12
    c.lt.s  $f2, $f0
    swc1    $f2, 0x008C($sp)
    bc1f    lbl_80B36BF4
    nop
    swc1    $f0, 0x008C($sp)
lbl_80B36BF4:
    lwc1    $f14, 0x008C($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f8, $f12, $f14
    mfc1    a2, $f8
    jal     func_800AA8FC
    nop
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0070($sp)
    lw      v1, 0x0070($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t5, 0x004C(s0)             # 0000004C
    lh      t4, 0x004A(s0)             # 0000004A
    lh      t1, 0x0048(s0)             # 00000048
    andi    t7, t5, 0x00FF             # t7 = 00000000
    sll     t8, t7,  8
    andi    t6, t4, 0x00FF             # t6 = 00000008
    sll     t2, t1, 24
    or      t3, t8, t2                 # t3 = 00000000
    sll     t5, t6, 16
    or      t7, t3, t5                 # t7 = 00000000
    ori     t9, t7, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t2, 0x0052(s0)             # 00000052
    lh      t1, 0x0050(s0)             # 00000050
    lh      t5, 0x004E(s0)             # 0000004E
    andi    t4, t2, 0x00FF             # t4 = 00000000
    sll     t6, t4,  8
    andi    t8, t1, 0x00FF             # t8 = 00000008
    sll     t7, t5, 24
    or      t9, t6, t7                 # t9 = 00000008
    sll     t2, t8, 16
    or      t4, t9, t2                 # t4 = 00000008
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t8, 0x009C(s1)             # 0000009C
    addiu   t3, $zero, 0x0080          # t3 = 00000080
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    subu    $at, $zero, t8
    sll     t9, $at,  2
    addu    t9, t9, $at
    sll     t9, t9,  2
    andi    t2, t9, 0x01FF             # t2 = 00000008
    sw      t2, 0x0020($sp)
    sw      t4, 0x0024($sp)
    sw      t3, 0x0028($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v0, 0x0064($sp)
    lw      t0, 0x0064($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lh      t5, 0x0058(s0)             # 00000058
    beql    t5, $zero, lbl_80B36D84
    lw      v0, 0x02D0(s2)             # 000002D0
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t1, 0x0405                 # t1 = 04050000
    addiu   t1, t1, 0x2AD0             # t1 = 04052AD0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    beq     $zero, $zero, lbl_80B36DA0
    lw      $ra, 0x0044($sp)
    lw      v0, 0x02D0(s2)             # 000002D0
lbl_80B36D84:
    lui     t2, 0x0405                 # t2 = 04050000
    addiu   t2, t2, 0x2A10             # t2 = 04052A10
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      $ra, 0x0044($sp)
lbl_80B36DA0:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp = 00000000


func_80B36DB4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lh      t6, 0x0040(a2)             # 00000040
    lui     $at, %hi(var_80B36E18)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B36E18)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t8, $f16
    nop
    sh      t8, 0x0040(a2)             # 00000040
    jr      $ra
    nop

.section .data

.word 0x0000001C
.word func_80B36790
.word 0x00000000, 0x00000000

.section .rodata

var_80B36E00: .word 0x3DCCCCCD
var_80B36E04: .word 0x38C90FDB
var_80B36E08: .word 0x3C8EFA35
var_80B36E0C: .word 0x3727C5AD
var_80B36E10: .word 0x3DCCCCCD
var_80B36E14: .word 0x3C23D70A
var_80B36E18: .word 0x3F666666, 0x00000000

