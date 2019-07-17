.section .text
func_80B31D60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t7, 0x0000(a3)             # 00000000
    lui     t2, 0x8012                 # t2 = 80120000
    lui     v0, 0x0406                 # v0 = 04060000
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x0004(a3)             # 00000004
    addiu   v0, v0, 0xB2E0             # v0 = 0405B2E0
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0008(a3)             # 00000008
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lui     t4, 0x8012                 # t4 = 80120000
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
    lw      t2, -0x4600(t2)            # 8011BA00
    sll     t1, v0,  4
    lh      t3, 0x09D8(t2)             # 801209D8
    srl     t2, t1, 28
    beql    t3, $zero, lbl_80B31E2C
    sll     t3, t2,  2
    lui     v0, 0x0406                 # v0 = 04060000
    addiu   v0, v0, 0xB3E0             # v0 = 0405B3E0
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t7, 0x0C38(t7)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    beq     $zero, $zero, lbl_80B31E48
    sw      t0, 0x0038(a2)             # 00000038
    sll     t3, t2,  2
lbl_80B31E2C:
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t5, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0038(a2)             # 00000038
lbl_80B31E48:
    sw      a2, 0x0020($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a3, 0x0024($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lh      t8, 0x0A54(v1)             # 80120A54
    lui     $at, %hi(var_80B32390)     # $at = 80B30000
    lwc1    $f18, %lo(var_80B32390)($at)
    mtc1    t8, $f6                    # $f6 = 0.00
    lh      t3, 0x0A56(v1)             # 80120A56
    lw      a2, 0x0020($sp)
    cvt.s.w $f8, $f6
    lw      a3, 0x0024($sp)
    lui     t8, %hi(func_80B31F18)     # t8 = 80B30000
    lui     t9, %hi(func_80B320C8)     # t9 = 80B30000
    addiu   t8, t8, %lo(func_80B31F18) # t8 = 80B31F18
    addiu   t9, t9, %lo(func_80B320C8) # t9 = 80B320C8
    add.s   $f10, $f4, $f8
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f16, $f0, $f10
    nop
    mul.s   $f6, $f16, $f18
    trunc.w.s $f4, $f6
    mfc1    t2, $f4
    nop
    addu    t4, t3, t2
    addiu   t5, t4, 0x000A             # t5 = 0000000A
    sh      t5, 0x005C(a2)             # 0000005C
    lh      t6, 0x0024(a3)             # 00000024
    sw      t8, 0x0028(a2)             # 00000028
    sw      t9, 0x0024(a2)             # 00000024
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0050(a2)             # 00000050
    lh      t0, 0x0026(a3)             # 00000026
    sh      t0, 0x0052(a2)             # 00000052
    lh      t1, 0x0028(a3)             # 00000028
    sh      a0, 0x0040(a2)             # 00000040
    sh      a0, 0x0042(a2)             # 00000042
    sh      a0, 0x0044(a2)             # 00000044
    sh      a0, 0x0046(a2)             # 00000046
    sh      a1, 0x0048(a2)             # 00000048
    sh      a1, 0x004A(a2)             # 0000004A
    sh      a1, 0x004C(a2)             # 0000004C
    sh      a1, 0x004E(a2)             # 0000004E
    sh      t1, 0x0054(a2)             # 00000054
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B31F18:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x0054(s1)             # 00000054
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s0, 0x0000(a0)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    swc1    $f10, 0x0030($sp)
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f12, 0x0030($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E298
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0xFA00                 # t0 = FA000000
    lui     a0, 0x0402                 # a0 = 04020000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lh      t1, 0x0046(s1)             # 00000046
    lh      t7, 0x0042(s1)             # 00000042
    lh      t4, 0x0040(s1)             # 00000040
    andi    t2, t1, 0x00FF             # t2 = 00000000
    lh      t1, 0x0044(s1)             # 00000044
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t5, t4, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8, 16
    andi    t3, t1, 0x00FF             # t3 = 00000000
    sll     t4, t3,  8
    or      t0, t6, t9                 # t0 = 00000008
    or      t2, t0, t4                 # t2 = 00000008
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   a0, a0, 0xA600             # a0 = 0401A600
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    lh      t8, 0x004E(s1)             # 0000004E
    lh      t4, 0x004A(s1)             # 0000004A
    lh      t1, 0x0048(s1)             # 00000048
    andi    t6, t8, 0x00FF             # t6 = 00000000
    lh      t8, 0x004C(s1)             # 0000004C
    andi    t2, t4, 0x00FF             # t2 = 00000000
    sll     t3, t1, 24
    or      t0, t6, t3                 # t0 = 00000000
    sll     t5, t2, 16
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t1, t9,  8
    or      t7, t0, t5                 # t7 = 00000008
    or      t6, t7, t1                 # t6 = 00000008
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t2, 0x0038(s1)             # 00000038
    lui     t5, 0xDE00                 # t5 = DE000000
    sll     t8, a0,  4
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    srl     t9, t8, 28
    sll     t7, t9,  2
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s0)             # 000002C0
    lui     t1, 0x8012                 # t1 = 80120000
    addu    t1, t1, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0000(v0)             # 00000000
    lw      t1, 0x0C38(t1)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t6, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t1, t6
    addu    t4, t3, $at
    sw      t4, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B320C8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    lw      v0, 0x1C44(a0)             # 00001C44
    lwc1    $f6, 0x0004(s0)            # 00000004
    lwc1    $f4, 0x0080(v0)            # 00000080
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B32100
    lh      v0, 0x0050(s0)             # 00000050
    sh      $zero, 0x005C(s0)          # 0000005C
    lh      v0, 0x0050(s0)             # 00000050
lbl_80B32100:
    beq     v0, $zero, lbl_80B32340
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0050(s0)             # 00000050
    lh      t7, 0x0050(s0)             # 00000050
    bnel    t7, $zero, lbl_80B3236C
    lw      $ra, 0x001C($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80049708
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sh      v0, 0x0026($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      v0, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B32394)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B32394)($at)
    lh      t8, 0x0A02(v0)             # 00000A02
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mtc1    t8, $f8                    # $f8 = 0.00
    lh      t9, 0x09FC(v0)             # 000009FC
    lui     $at, %hi(var_80B32398)     # $at = 80B30000
    cvt.s.w $f10, $f8
    lwc1    $f4, %lo(var_80B32398)($at)
    lui     $at, 0x4348                # $at = 43480000
    lh      t0, 0x0052(s0)             # 00000052
    mul.s   $f6, $f4, $f0
    lh      a0, 0x0026($sp)
    add.s   $f18, $f10, $f16
    mtc1    t9, $f16                   # $f16 = 0.00
    mtc1    $at, $f10                  # $f10 = 200.00
    lui     $at, 0xBF80                # $at = BF800000
    cvt.s.w $f4, $f16
    mul.s   $f8, $f18, $f6
    add.s   $f18, $f10, $f4
    mul.s   $f6, $f18, $f12
    beq     t0, $zero, lbl_80B321AC
    add.s   $f2, $f8, $f6
    mtc1    $at, $f16                  # $f16 = -1.00
    nop
    mul.s   $f2, $f2, $f16
    nop
lbl_80B321AC:
    jal     func_80063684              # coss?
    swc1    $f2, 0x0028($sp)
    lwc1    $f2, 0x0028($sp)
    mul.s   $f10, $f0, $f2
    swc1    $f10, 0x000C(s0)           # 0000000C
    jal     func_800636C4              # sins?
    lh      a0, 0x0026($sp)
    lwc1    $f2, 0x0028($sp)
    neg.s   $f4, $f0
    mul.s   $f18, $f4, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0014(s0)           # 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      v0, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B323A4)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B323A4)($at)
    lh      t1, 0x0A04(v0)             # 00000A04
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mtc1    t1, $f8                    # $f8 = 0.00
    lh      t2, 0x09FE(v0)             # 000009FE
    lui     $at, %hi(var_80B323A8)     # $at = 80B30000
    cvt.s.w $f6, $f8
    lwc1    $f4, %lo(var_80B323A8)($at)
    lui     $at, 0x442F                # $at = 442F0000
    mul.s   $f18, $f4, $f0
    add.s   $f10, $f6, $f16
    mtc1    t2, $f16                   # $f16 = 0.00
    mtc1    $at, $f6                   # $f6 = 700.00
    cvt.s.w $f4, $f16
    mul.s   $f8, $f10, $f18
    add.s   $f10, $f6, $f4
    mul.s   $f18, $f10, $f12
    add.s   $f16, $f8, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0010(s0)           # 00000010
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      v0, 0x0000(v1)             # 8011BA00
    lui     $at, %hi(var_80B323AC)     # $at = 80B30000
    lwc1    $f12, %lo(var_80B323AC)($at)
    lh      t3, 0x0A06(v0)             # 00000A06
    lh      t4, 0x0A00(v0)             # 00000A00
    lui     $at, %hi(var_80B323B0)     # $at = 80B30000
    mtc1    t3, $f6                    # $f6 = 0.00
    lwc1    $f10, %lo(var_80B323B0)($at)
    lui     $at, 0xC2C8                # $at = C2C80000
    cvt.s.w $f4, $f6
    mtc1    t4, $f6                    # $f6 = 0.00
    mul.s   $f8, $f10, $f0
    mtc1    $at, $f16                  # $f16 = -100.00
    cvt.s.w $f10, $f6
    mul.s   $f18, $f4, $f8
    add.s   $f4, $f16, $f10
    mul.s   $f8, $f4, $f12
    add.s   $f6, $f18, $f8
    swc1    $f6, 0x001C(s0)            # 0000001C
    lw      t5, 0x0000(v1)             # 8011BA00
    lh      a0, 0x09DA(t5)             # 000009DA
    beql    a0, $zero, lbl_80B3236C
    lw      $ra, 0x001C($sp)
    mtc1    a0, $f10                   # $f10 = 0.00
    lwc1    $f16, 0x000C(s0)           # 0000000C
    lwc1    $f6, 0x0010(s0)            # 00000010
    cvt.s.w $f4, $f10
    mul.s   $f18, $f4, $f12
    nop
    mul.s   $f8, $f16, $f18
    swc1    $f8, 0x000C(s0)            # 0000000C
    lw      t6, 0x0000(v1)             # 8011BA00
    lwc1    $f8, 0x0014(s0)            # 00000014
    lh      t7, 0x09DA(t6)             # 000009DA
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f16, $f4, $f12
    nop
    mul.s   $f18, $f6, $f16
    swc1    $f18, 0x0010(s0)           # 00000010
    lw      t8, 0x0000(v1)             # 8011BA00
    lwc1    $f18, 0x001C(s0)           # 0000001C
    lh      t9, 0x09DA(t8)             # 000009DA
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f6, $f4, $f12
    nop
    mul.s   $f16, $f8, $f6
    swc1    $f16, 0x0014(s0)           # 00000014
    lw      t0, 0x0000(v1)             # 8011BA00
    lh      t1, 0x09DC(t0)             # 000009DC
    mtc1    t1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f8, $f4, $f12
    nop
    mul.s   $f6, $f18, $f8
    swc1    $f6, 0x001C(s0)            # 0000001C
    beq     $zero, $zero, lbl_80B3236C
    lw      $ra, 0x001C($sp)
lbl_80B32340:
    lh      v0, 0x0054(s0)             # 00000054
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    beql    v0, $zero, lbl_80B3236C
    lw      $ra, 0x001C($sp)
    lw      t2, 0x0000(v1)             # 8011BA00
    lh      t3, 0x0A08(t2)             # 00000A08
    subu    t4, v0, t3
    addiu   t5, t4, 0xFFFD             # t5 = FFFFFFFD
    sh      t5, 0x0054(s0)             # 00000054
    lw      $ra, 0x001C($sp)
lbl_80B3236C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
    nop

.section .data

.word 0x00000011
.word func_80B31D60
.word 0x00000000, 0x00000000

.section .rodata

var_80B32390: .word 0x3C23D70A
var_80B32394: .word 0x3C23D70A
var_80B32398: .word 0x3DCCCCCD, 0x3C23D70A, 0x3C23D70A
var_80B323A4: .word 0x3C23D70A
var_80B323A8: .word 0x3DCCCCCD
var_80B323AC: .word 0x3C23D70A
var_80B323B0: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

