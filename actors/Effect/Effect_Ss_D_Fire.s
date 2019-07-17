.section .text
func_80B2EEB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      a2, 0x0020($sp)
    bltz    v0, lbl_80B2EFE8
    lw      a3, 0x0024($sp)
    lw      t7, 0x0000(a3)             # 00000000
    lui     v1, 0x0601                 # v1 = 06010000
    addiu   v1, v1, 0x98A0             # v1 = 060098A0
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    sll     t2, v1,  4
    srl     t3, t2, 28
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    sll     t4, t3,  2
    lui     t5, 0x8012                 # t5 = 80120000
    sw      t7, 0x0008(a2)             # 00000008
    lw      t9, 0x000C(a3)             # 0000000C
    addu    t5, t5, t4
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t9, 0x000C(a2)             # 0000000C
    lw      t8, 0x0010(a3)             # 00000010
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, v1, $at
    sw      t8, 0x0010(a2)             # 00000010
    lw      t9, 0x0014(a3)             # 00000014
    lui     $at, 0x8000                # $at = 80000000
    lui     t2, %hi(func_80B2EFFC)     # t2 = 80B30000
    sw      t9, 0x0014(a2)             # 00000014
    lw      t1, 0x0018(a3)             # 00000018
    lui     t3, %hi(func_80B2F244)     # t3 = 80B30000
    addiu   t2, t2, %lo(func_80B2EFFC) # t2 = 80B2EFFC
    sw      t1, 0x0018(a2)             # 00000018
    lw      t0, 0x001C(a3)             # 0000001C
    addiu   t3, t3, %lo(func_80B2F244) # t3 = 80B2F244
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    sw      t0, 0x001C(a2)             # 0000001C
    lw      t1, 0x0020(a3)             # 00000020
    sw      t1, 0x0020(a2)             # 00000020
    lw      t5, 0x0C38(t5)             # 80120C38
    addu    t7, t5, t6
    addu    t8, t7, $at
    sw      t8, 0x0038(a2)             # 00000038
    lw      t9, 0x002C(a3)             # 0000002C
    sh      t9, 0x005C(a2)             # 0000005C
    lh      t0, 0x0024(a3)             # 00000024
    sh      t0, 0x0040(a2)             # 00000040
    lh      t1, 0x0026(a3)             # 00000026
    sh      $zero, 0x0056(a2)          # 00000056
    sh      v0, 0x0054(a2)             # 00000054
    sw      t2, 0x0028(a2)             # 00000028
    sw      t3, 0x0024(a2)             # 00000024
    sh      t1, 0x0052(a2)             # 00000052
    lw      t4, 0x0018($sp)
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      t5, 0x009C(t4)             # 0000009C
    sh      v1, 0x0044(a2)             # 00000044
    sh      v1, 0x0046(a2)             # 00000046
    andi    t8, t5, 0x0003             # t8 = 00000000
    xori    t9, t8, 0x0003             # t9 = 00000003
    sh      t9, 0x0042(a2)             # 00000042
    sh      t0, 0x0048(a2)             # 00000048
    lh      t1, 0x0028(a3)             # 00000028
    sh      t1, 0x004A(a2)             # 0000004A
    lh      t2, 0x002A(a3)             # 0000002A
    beq     $zero, $zero, lbl_80B2EFEC
    sh      t2, 0x004C(a2)             # 0000004C
lbl_80B2EFE8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B2EFEC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B2EFFC:
    addiu   $sp, $sp, 0xFEA0           # $sp -= 0x160
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0164($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x0054(s1)             # 00000054
    lui     t0, 0x0001                 # t0 = 00010000
    lw      s0, 0x0000(a3)             # 00000000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, a3, t7
    addu    t0, t0, t8
    lw      t0, 0x17B4(t0)             # 000117B4
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a3, $at
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    sw      a3, 0x0160($sp)
    jal     func_80081628              # ObjectIndex
    sw      t0, 0x0054($sp)
    bltz    v0, lbl_80B2F230
    lw      t0, 0x0054($sp)
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0018             # t2 = DB060018
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lh      t3, 0x0040(s1)             # 00000040
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t3, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4
    lw      a3, 0x0008(s1)             # 00000008
    sw      t1, 0x0028($sp)
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFBC
    div.s   $f0, $f6, $f8
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x004C($sp)
    lwc1    $f0, 0x004C($sp)
    addiu   a0, $sp, 0x00DC            # a0 = FFFFFF7C
    lui     a3, 0x3F80                 # a3 = 3F800000
    mfc1    a1, $f0
    mfc1    a2, $f0
    jal     func_8008F4A8              # guScaleF
    nop
    lw      a1, 0x0160($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFBC
    addiu   a2, $sp, 0x005C            # a2 = FFFFFEFC
    jal     func_8008EDB8
    addu    a1, a1, $at
    addiu   a0, $sp, 0x005C            # a0 = FFFFFEFC
    addiu   a1, $sp, 0x00DC            # a1 = FFFFFF7C
    jal     func_8008EDB8
    addiu   a2, $sp, 0x009C            # a2 = FFFFFF3C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x009C            # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2F230
    or      a1, v0, $zero              # a1 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      a1, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    jal     func_8007E930
    or      a0, s0, $zero              # a0 = 00000000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0x0C38             # a3 = 80120C38
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t8, 0xFF00                 # t8 = FF000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lh      t6, 0x0044(s1)             # 00000044
    lh      t3, 0x004A(s1)             # 0000004A
    lh      t9, 0x0046(s1)             # 00000046
    sll     t7, t6, 24
    lh      t6, 0x0048(s1)             # 00000048
    andi    t4, t3, 0x00FF             # t4 = 00000000
    or      t8, t4, t7                 # t8 = FB000000
    andi    t2, t9, 0x00FF             # t2 = 00000008
    sll     t3, t2, 16
    andi    t4, t6, 0x00FF             # t4 = 00000008
    sll     t7, t4,  8
    or      t5, t8, t3                 # t5 = FB000000
    or      t9, t5, t7                 # t9 = FB000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      t2, 0x0028($sp)
    sw      t2, 0x0018(a3)             # 80120C50
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lh      t6, 0x0042(s1)             # 00000042
    lui     a2, %hi(var_80B2F338)      # a2 = 80B30000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t4, t6,  2
    addu    a2, a2, t4
    lw      a2, %lo(var_80B2F338)(a2)
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, a2,  4
    srl     t9, t7, 28
    sll     t2, t9,  2
    addu    t8, a3, t2
    lw      t3, 0x0000(t8)             # 00000008
    and     t5, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t5, t3
    addu    t4, t6, $at
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lw      t2, 0x0038(s1)             # 00000038
    sw      t2, 0x0004(v0)             # 00000004
lbl_80B2F230:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0160           # $sp += 0x160


func_80B2F244:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lh      t6, 0x0042(a2)             # 00000042
    lh      t0, 0x0040(a2)             # 00000040
    lh      t1, 0x0052(a2)             # 00000052
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0042(a2)             # 00000042
    lh      t8, 0x0042(a2)             # 00000042
    lh      t3, 0x004C(a2)             # 0000004C
    lh      t4, 0x005C(a2)             # 0000005C
    addu    t2, t0, t1
    andi    t9, t8, 0x0003             # t9 = 00000000
    slt     $at, t3, t4
    sh      t9, 0x0042(a2)             # 00000042
    bne     $at, $zero, lbl_80B2F2A4
    sh      t2, 0x0040(a2)             # 00000040
    lh      t5, 0x004A(a2)             # 0000004A
    addiu   t6, t5, 0xFFFB             # t6 = FFFFFFFB
    sh      t6, 0x004A(a2)             # 0000004A
    lh      t7, 0x004A(a2)             # 0000004A
    bgezl   t7, lbl_80B2F2CC
    lwc1    $f0, 0x001C(a2)            # 0000001C
    beq     $zero, $zero, lbl_80B2F2C8
    sh      $zero, 0x004A(a2)          # 0000004A
lbl_80B2F2A4:
    lh      t8, 0x004A(a2)             # 0000004A
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t9, t8, 0x000F             # t9 = 0000000F
    sh      t9, 0x004A(a2)             # 0000004A
    lh      t0, 0x004A(a2)             # 0000004A
    slti    $at, t0, 0x0100
    bnel    $at, $zero, lbl_80B2F2CC
    lwc1    $f0, 0x001C(a2)            # 0000001C
    sh      t1, 0x004A(a2)             # 0000004A
lbl_80B2F2C8:
    lwc1    $f0, 0x001C(a2)            # 0000001C
lbl_80B2F2CC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80B2F30C
    lh      t3, 0x005C(a2)             # 0000005C
    lh      t2, 0x0056(a2)             # 00000056
    lui     $at, %hi(var_80B2F350)     # $at = 80B30000
    lwc1    $f10, %lo(var_80B2F350)($at)
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f10
    add.s   $f18, $f0, $f16
    swc1    $f18, 0x001C(a2)           # 0000001C
    lh      t3, 0x005C(a2)             # 0000005C
lbl_80B2F30C:
    bgtz    t3, lbl_80B2F31C
    nop
    lh      t4, 0x0056(a2)             # 00000056
    sh      t4, 0x0056(a2)             # 00000056
lbl_80B2F31C:
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

.word 0x00000006
.word func_80B2EEB0
var_80B2F338: .word \
0x060090A0, 0x060092A0, 0x060094A0, 0x060096A0, \
0x00000000, 0x00000000

.section .rodata

var_80B2F350: .word 0x3C23D70A, 0x00000000, 0x00000000, 0x00000000

