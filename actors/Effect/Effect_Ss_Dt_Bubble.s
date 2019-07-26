.section .text
func_80B30DF0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a3, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     v1, 0x0406                 # v1 = 04060000
    addiu   v1, v1, 0xB3E0             # v1 = 0405B3E0
    c.lt.s  $f0, $f4
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    bc1f    lbl_80B30E3C
    nop
    lui     v1, 0x0406                 # v1 = 04060000
    b       lbl_80B30E3C
    addiu   v1, v1, 0xB2E0             # v1 = 0405B2E0
lbl_80B30E3C:
    sw      v1, 0x001C($sp)
    sw      a2, 0x0030($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a3, 0x0034($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lw      v1, 0x001C($sp)
    lui     $at, 0x00FF                # $at = 00FF0000
    c.lt.s  $f0, $f6
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lw      a2, 0x0030($sp)
    lw      a3, 0x0034($sp)
    bc1f    lbl_80B30E80
    sll     t7, v1,  4
    lui     v0, 0x0406                 # v0 = 04060000
    b       lbl_80B30E88
    addiu   v0, v0, 0xB2E0             # v0 = 0405B2E0
lbl_80B30E80:
    lui     v0, 0x0406                 # v0 = 04060000
    addiu   v0, v0, 0xB3E0             # v0 = 0405B3E0
lbl_80B30E88:
    srl     t8, t7, 28
    sll     t9, t8,  2
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, t9
    lw      t0, 0x0C38(t0)             # 80120C38
    and     t6, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t0
    addu    t2, t1, $at
    sw      t2, 0x0038(a2)             # 00000038
    lw      t4, 0x0000(a3)             # 00000000
    sw      t4, 0x0000(a2)             # 00000000
    lw      t3, 0x0004(a3)             # 00000004
    sw      t3, 0x0004(a2)             # 00000004
    lw      t4, 0x0008(a3)             # 00000008
    sw      t4, 0x0008(a2)             # 00000008
    lw      t7, 0x000C(a3)             # 0000000C
    sw      t7, 0x000C(a2)             # 0000000C
    lw      t5, 0x0010(a3)             # 00000010
    sw      t5, 0x0010(a2)             # 00000010
    lw      t7, 0x0014(a3)             # 00000014
    sw      t7, 0x0014(a2)             # 00000014
    lw      t9, 0x0018(a3)             # 00000018
    sw      t9, 0x0018(a2)             # 00000018
    lw      t8, 0x001C(a3)             # 0000001C
    sw      t8, 0x001C(a2)             # 0000001C
    lw      t9, 0x0020(a3)             # 00000020
    sw      t9, 0x0020(a2)             # 00000020
    lh      t6, 0x002E(a3)             # 0000002E
    sh      t6, 0x005C(a2)             # 0000005C
    lbu     t0, 0x0034(a3)             # 00000034
    bnel    t0, $zero, lbl_80B30FC4
    lbu     t3, 0x0024(a3)             # 00000024
    lh      t1, 0x0030(a3)             # 00000030
    lui     v0, %hi(var_80B31300)      # v0 = 80B30000
    addiu   v0, v0, %lo(var_80B31300)  # v0 = 80B31300
    sll     t2, t1,  2
    addu    t3, v0, t2
    lbu     t4, 0x0000(t3)             # 00000000
    lui     v1, %hi(var_80B3130C)      # v1 = 80B30000
    addiu   v1, v1, %lo(var_80B3130C)  # v1 = 80B3130C
    sh      t4, 0x0040(a2)             # 00000040
    lh      t5, 0x0030(a3)             # 00000030
    sll     t7, t5,  2
    addu    t8, v0, t7
    lbu     t9, 0x0001(t8)             # 00000001
    sh      t9, 0x0042(a2)             # 00000042
    lh      t6, 0x0030(a3)             # 00000030
    sll     t0, t6,  2
    addu    t1, v0, t0
    lbu     t2, 0x0002(t1)             # 00000002
    sh      t2, 0x0044(a2)             # 00000044
    lh      t3, 0x0030(a3)             # 00000030
    sll     t4, t3,  2
    addu    t5, v0, t4
    lbu     t7, 0x0003(t5)             # 00000003
    sh      t7, 0x0046(a2)             # 00000046
    lh      t8, 0x0030(a3)             # 00000030
    sll     t9, t8,  2
    addu    t6, v1, t9
    lbu     t0, 0x0000(t6)             # 00000000
    sh      t0, 0x0048(a2)             # 00000048
    lh      t1, 0x0030(a3)             # 00000030
    sll     t2, t1,  2
    addu    t3, v1, t2
    lbu     t4, 0x0001(t3)             # 00000001
    sh      t4, 0x004A(a2)             # 0000004A
    lh      t5, 0x0030(a3)             # 00000030
    sll     t7, t5,  2
    addu    t8, v1, t7
    lbu     t9, 0x0002(t8)             # 00000002
    sh      t9, 0x004C(a2)             # 0000004C
    lh      t6, 0x0030(a3)             # 00000030
    sll     t0, t6,  2
    addu    t1, v1, t0
    lbu     t2, 0x0003(t1)             # 00000003
    b       lbl_80B31000
    sh      t2, 0x004E(a2)             # 0000004E
    lbu     t3, 0x0024(a3)             # 00000024
lbl_80B30FC4:
    sh      t3, 0x0040(a2)             # 00000040
    lbu     t4, 0x0025(a3)             # 00000025
    sh      t4, 0x0042(a2)             # 00000042
    lbu     t5, 0x0026(a3)             # 00000026
    sh      t5, 0x0044(a2)             # 00000044
    lbu     t7, 0x0027(a3)             # 00000027
    sh      t7, 0x0046(a2)             # 00000046
    lbu     t8, 0x0028(a3)             # 00000028
    sh      t8, 0x0048(a2)             # 00000048
    lbu     t9, 0x0029(a3)             # 00000029
    sh      t9, 0x004A(a2)             # 0000004A
    lbu     t6, 0x002A(a3)             # 0000002A
    sh      t6, 0x004C(a2)             # 0000004C
    lbu     t0, 0x002B(a3)             # 0000002B
    sh      t0, 0x004E(a2)             # 0000004E
lbl_80B31000:
    lh      t1, 0x0032(a3)             # 00000032
    lui     t4, %hi(func_80B31044)     # t4 = 80B30000
    lui     t5, %hi(func_80B31284)     # t5 = 80B30000
    sh      t1, 0x0050(a2)             # 00000050
    lh      t2, 0x002C(a3)             # 0000002C
    addiu   t4, t4, %lo(func_80B31044) # t4 = 80B31044
    addiu   t5, t5, %lo(func_80B31284) # t5 = 80B31284
    sh      t2, 0x0052(a2)             # 00000052
    lh      t3, 0x002E(a3)             # 0000002E
    sw      t4, 0x0028(a2)             # 00000028
    sw      t5, 0x0024(a2)             # 00000024
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t3, 0x0054(a2)             # 00000054
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B31044:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x003C($sp)
    lw      s1, 0x0000(a0)             # 00000000
    lh      t6, 0x0052(s0)             # 00000052
    lui     $at, %hi(var_80B31320)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B31320)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0030($sp)
    lw      a2, 0x0008(s0)             # 00000008
    lwc1    $f14, 0x0004(s0)           # 00000004
    jal     func_800AA7F4
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f12, 0x0030($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E204
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFA00                 # t0 = FA000000
    lui     a1, 0x0402                 # a1 = 04020000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(v0)             # 00000000
    lh      t2, 0x005C(s0)             # 0000005C
    lh      t1, 0x0046(s0)             # 00000046
    lh      t4, 0x0054(s0)             # 00000054
    lh      t8, 0x0040(s0)             # 00000040
    multu   t1, t2
    lh      t1, 0x0042(s0)             # 00000042
    sll     t9, t8, 24
    or      v1, v0, $zero              # v1 = 00000000
    andi    t2, t1, 0x00FF             # t2 = 00000000
    addiu   a1, a1, 0xA600             # a1 = 0401A600
    mflo    t3
    nop
    nop
    div     $zero, t3, t4
    mflo    t5
    andi    t6, t5, 0x00FF             # t6 = 00000000
    lh      t5, 0x0044(s0)             # 00000044
    bne     t4, $zero, lbl_80B31140
    nop
    break   # 0x01C00
lbl_80B31140:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t4, $at, lbl_80B31158
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_80B31158
    nop
    break   # 0x01800
lbl_80B31158:
    sll     t3, t2, 16
    or      t0, t6, t9                 # t0 = 00000008
    andi    t7, t5, 0x00FF             # t7 = 00000000
    sll     t8, t7,  8
    or      t4, t0, t3                 # t4 = 00000008
    or      t6, t4, t8                 # t6 = 00000008
    sw      t6, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t0, 0x005C(s0)             # 0000005C
    lh      t2, 0x004E(s0)             # 0000004E
    lh      t5, 0x0054(s0)             # 00000054
    lh      t6, 0x0048(s0)             # 00000048
    multu   t2, t0
    lh      t2, 0x004A(s0)             # 0000004A
    sll     t9, t6, 24
    or      a0, v0, $zero              # a0 = 00000000
    andi    t0, t2, 0x00FF             # t0 = 00000000
    mflo    t3
    nop
    nop
    div     $zero, t3, t5
    mflo    t7
    andi    t4, t7, 0x00FF             # t4 = 00000000
    lh      t7, 0x004C(s0)             # 0000004C
    bne     t5, $zero, lbl_80B311D4
    nop
    break   # 0x01C00
lbl_80B311D4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t5, $at, lbl_80B311EC
    lui     $at, 0x8000                # $at = 80000000
    bne     t3, $at, lbl_80B311EC
    nop
    break   # 0x01800
lbl_80B311EC:
    sll     t3, t0, 16
    or      t1, t4, t9                 # t1 = 00000008
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t6, t8,  8
    or      t5, t1, t3                 # t5 = 00000008
    or      t4, t5, t6                 # t4 = 00000008
    sw      t4, 0x0004(a0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(v0)             # 00000000
    lw      t0, 0x0038(s0)             # 00000038
    lui     t3, 0xDE00                 # t3 = DE000000
    sll     t7, a1,  4
    sw      t0, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    srl     t8, t7, 28
    sll     t5, t8,  2
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t5
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t3, 0x0000(v0)             # 00000000
    lw      t6, 0x0C38(t6)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t6, t4
    addu    t2, t9, $at
    sw      t2, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B31284:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lh      t6, 0x0050(a2)             # 00000050
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80B312F4
    lw      $ra, 0x0014($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)
    add.s   $f4, $f0, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lw      a2, 0x0020($sp)
    sub.s   $f8, $f4, $f6
    lwc1    $f10, 0x0000(a2)           # 00000000
    add.s   $f16, $f10, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0000(a2)           # 00000000
    add.s   $f18, $f0, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lw      a2, 0x0020($sp)
    sub.s   $f6, $f18, $f4
    lwc1    $f10, 0x0008(a2)           # 00000008
    add.s   $f8, $f10, $f6
    swc1    $f8, 0x0008(a2)            # 00000008
    lw      $ra, 0x0014($sp)
lbl_80B312F4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop

.section .data

var_80B31300: .word 0xFFFF64FF, 0x96FFFFFF, 0x64FFFFFF
var_80B3130C: .word 0xAA0000FF, 0x006400FF, 0x0000FFFF, 0x0000000E
.word func_80B30DF0

.section .rodata

var_80B31320: .word 0x3B83126F, 0x00000000, 0x00000000, 0x00000000

