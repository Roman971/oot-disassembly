.section .text
func_80B31380:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a3, $at
    lh      a1, 0x0048(a2)             # 00000048
    sw      a2, 0x0020($sp)
    jal     func_80081628              # ObjectIndex
    sw      a0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    sll     t6, v0, 16
    sra     t7, t6, 16
    lw      a0, 0x0018($sp)
    bltz    t7, lbl_80B313D8
    sh      v0, 0x004A(a2)             # 0000004A
    lh      a1, 0x004A(a2)             # 0000004A
    jal     func_80081688
    sw      a2, 0x0020($sp)
    bne     v0, $zero, lbl_80B313E4
    lw      a2, 0x0020($sp)
lbl_80B313D8:
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sh      t8, 0x005C(a2)             # 0000005C
    sw      $zero, 0x0028(a2)          # 00000028
lbl_80B313E4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B313F4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t7, 0x0000(s1)             # 00000000
    addiu   t2, $zero, 0x00C8          # t2 = 000000C8
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t6, 0x0004(s1)             # 00000004
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t6, 0x0004(s0)             # 00000004
    lw      t7, 0x0008(s1)             # 00000008
    sw      t7, 0x0008(s0)             # 00000008
    lw      t9, 0x000C(s1)             # 0000000C
    lui     t7, 0x8012                 # t7 = 80120000
    sw      t9, 0x000C(s0)             # 0000000C
    lw      t8, 0x0010(s1)             # 00000010
    sw      t8, 0x0010(s0)             # 00000010
    lw      t9, 0x0014(s1)             # 00000014
    sw      t9, 0x0014(s0)             # 00000014
    lw      t1, 0x0018(s1)             # 00000018
    sw      t1, 0x0018(s0)             # 00000018
    lw      t0, 0x001C(s1)             # 0000001C
    sw      t0, 0x001C(s0)             # 0000001C
    lw      t1, 0x0020(s1)             # 00000020
    sh      t2, 0x005C(s0)             # 0000005C
    sw      t1, 0x0020(s0)             # 00000020
    lw      v0, 0x0024(s1)             # 00000024
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    beq     v0, $zero, lbl_80B314A0
    nop
    sw      v0, 0x0038(s0)             # 00000038
    lh      t3, 0x002C(s1)             # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B31380
    sh      t3, 0x0048(s0)             # 00000048
    beq     $zero, $zero, lbl_80B314D8
    lh      t2, 0x0048(s0)             # 00000048
lbl_80B314A0:
    lui     v0, 0x0401                 # v0 = 04010000
    addiu   v0, v0, 0xC0D0             # v0 = 0400C0D0
    sll     t4, v0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 00000C38
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    sw      t0, 0x0038(s0)             # 00000038
    sh      t1, 0x0048(s0)             # 00000048
    lh      t2, 0x0048(s0)             # 00000048
lbl_80B314D8:
    addiu   $at, $zero, 0x0069         # $at = 00000069
    lui     t7, %hi(func_80B31898)     # t7 = 80B30000
    bne     t2, $at, lbl_80B31508
    addiu   t7, t7, %lo(func_80B31898) # t7 = 80B31898
    lw      t4, 0x0038(s0)             # 00000038
    lui     t3, 0x0401                 # t3 = 04010000
    addiu   t3, t3, 0xCE20             # t3 = 0400CE20
    bne     t3, t4, lbl_80B31508
    lui     t5, %hi(func_80B316F0)     # t5 = 80B30000
    addiu   t5, t5, %lo(func_80B316F0) # t5 = 80B316F0
    beq     $zero, $zero, lbl_80B31514
    sw      t5, 0x0028(s0)             # 00000028
lbl_80B31508:
    lui     t6, %hi(func_80B31590)     # t6 = 80B30000
    addiu   t6, t6, %lo(func_80B31590) # t6 = 80B31590
    sw      t6, 0x0028(s0)             # 00000028
lbl_80B31514:
    sw      t7, 0x0024(s0)             # 00000024
    lh      t8, 0x0028(s1)             # 00000028
    sh      t8, 0x0044(s0)             # 00000044
    lh      t9, 0x002A(s1)             # 0000002A
    jal     func_800CDCCC              # Rand.Next() float
    sh      t9, 0x0046(s0)             # 00000046
    lui     $at, 0x439D                # $at = 439D0000
    mtc1    $at, $f4                   # $f4 = 314.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t1, 0x0040(s0)             # 00000040
    lui     $at, 0x439D                # $at = 439D0000
    mtc1    $at, $f10                  # $f10 = 314.00
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mul.s   $f16, $f0, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0042(s0)             # 00000042
    lh      t4, 0x002E(s1)             # 0000002E
    subu    t6, t5, t4
    sh      t6, 0x004C(s0)             # 0000004C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B31590:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0014($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x0046(s0)             # 00000046
    lui     $at, %hi(var_80B31930)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B31930)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s1, 0x0000(a0)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0034($sp)
    lh      t7, 0x0048(s0)             # 00000048
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    t7, $at, lbl_80B3161C
    lwc1    $f12, 0x0000(s0)           # 00000000
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0018             # t9 = DB060018
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lh      t0, 0x004A(s0)             # 0000004A
    lui     t3, 0x0001                 # t3 = 00010000
    sll     t1, t0,  4
    addu    t1, t1, t0
    sll     t1, t1,  2
    addu    t2, a0, t1
    addu    t3, t3, t2
    lw      t3, 0x17B4(t3)             # 000117B4
    sw      t3, 0x0004(v0)             # 00000004
    lwc1    $f12, 0x0000(s0)           # 00000000
lbl_80B3161C:
    lwc1    $f14, 0x0004(s0)           # 00000004
    lw      a2, 0x0008(s0)             # 00000008
    jal     func_800AA7F4
    sw      a0, 0x0040($sp)
    lh      t4, 0x0042(s0)             # 00000042
    lui     $at, %hi(var_80B31934)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B31934)($at)
    mtc1    t4, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800AAB94
    nop
    lh      t5, 0x0040(s0)             # 00000040
    lui     $at, %hi(var_80B31938)     # $at = 80B30000
    lwc1    $f10, %lo(var_80B31938)($at)
    mtc1    t5, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AA9E0
    nop
    lwc1    $f12, 0x0034($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    sw      v0, 0x0004(v1)             # 00000004
    lw      t8, 0x0040($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t8)             # 00000000
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0000(v0)             # 00000000
    lw      t1, 0x0038(s0)             # 00000038
    sw      t1, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B316F0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x0046(s1)             # 00000046
    lui     $at, %hi(var_80B3193C)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B3193C)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s0, 0x0000(a0)             # 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0034($sp)
    lh      t7, 0x0048(s1)             # 00000048
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    t7, $at, lbl_80B3177C
    lwc1    $f12, 0x0000(s1)           # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0018             # t9 = DB060018
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lh      t0, 0x004A(s1)             # 0000004A
    lui     t3, 0x0001                 # t3 = 00010000
    sll     t1, t0,  4
    addu    t1, t1, t0
    sll     t1, t1,  2
    addu    t2, a0, t1
    addu    t3, t3, t2
    lw      t3, 0x17B4(t3)             # 000117B4
    sw      t3, 0x0004(v0)             # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
lbl_80B3177C:
    lwc1    $f14, 0x0004(s1)           # 00000004
    lw      a2, 0x0008(s1)             # 00000008
    jal     func_800AA7F4
    sw      a0, 0x0040($sp)
    lh      t4, 0x0042(s1)             # 00000042
    lui     $at, %hi(var_80B31940)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B31940)($at)
    mtc1    t4, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800AAB94
    nop
    lh      t5, 0x0040(s1)             # 00000040
    lui     $at, %hi(var_80B31944)     # $at = 80B30000
    lwc1    $f10, %lo(var_80B31944)($at)
    mtc1    t5, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AA9E0
    nop
    lwc1    $f12, 0x0034($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800AB900
    sw      v0, 0x0024($sp)
    lw      v1, 0x0024($sp)
    sw      v0, 0x0004(v1)             # 00000004
    lw      t8, 0x0040($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t8)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t0, 0xFC41                 # t0 = FC410000
    lui     t1, 0xFF8F                 # t1 = FF8F0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    ori     t1, t1, 0xFFFF             # t1 = FF8FFFFF
    ori     t0, t0, 0xC683             # t0 = FC41C683
    sw      t0, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     t4, 0x6464                 # t4 = 64640000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    ori     t4, t4, 0x78FF             # t4 = 646478FF
    ori     t3, t3, 0x0001             # t3 = FA000001
    sw      t3, 0x0000(v0)             # 00000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0038(s1)             # 00000038
    sw      t7, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B31898:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lh      t6, 0x0040(a2)             # 00000040
    lh      t8, 0x0042(a2)             # 00000042
    lw      v0, 0x1C44(a1)             # 00001C44
    addiu   t7, t6, 0x0037             # t7 = 00000037
    addiu   t9, t8, 0x000A             # t9 = 0000000A
    sh      t7, 0x0040(a2)             # 00000040
    sh      t9, 0x0042(a2)             # 00000042
    lwc1    $f6, 0x0004(a2)            # 00000004
    lwc1    $f4, 0x0080(v0)            # 00000080
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80B318FC
    lh      t2, 0x0048(a2)             # 00000048
    lh      t0, 0x005C(a2)             # 0000005C
    lh      t1, 0x004C(a2)             # 0000004C
    slt     $at, t0, t1
    beql    $at, $zero, lbl_80B318FC
    lh      t2, 0x0048(a2)             # 00000048
    sh      $zero, 0x005C(a2)          # 0000005C
    lh      t2, 0x0048(a2)             # 00000048
lbl_80B318FC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    t2, $at, lbl_80B31914
    lw      $ra, 0x0014($sp)
    jal     func_80B31380
    or      a0, a2, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_80B31914:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop

.section .data

.word 0x0000000F
.word func_80B313F4
.word 0x00000000, 0x00000000

.section .rodata

var_80B31930: .word 0x3A83126F
var_80B31934: .word 0x3C23D70A
var_80B31938: .word 0x3C23D70A
var_80B3193C: .word 0x3A83126F
var_80B31940: .word 0x3C23D70A
var_80B31944: .word 0x3C23D70A, 0x00000000, 0x00000000

