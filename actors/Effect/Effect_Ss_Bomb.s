.section .text
func_80B2D820:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    addiu   a0, s0, 0x000C             # a0 = 0000000C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x000C             # a1 = 0000000C
    lw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0018             # a0 = 00000018
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lui     v1, 0x0401                 # v1 = 04010000
    addiu   v1, v1, 0xBF80             # v1 = 0400BF80
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    lui     t4, %hi(func_80B2D8E8)     # t4 = 80B30000
    lui     t5, %hi(func_80B2DB14)     # t5 = 80B30000
    addu    t1, t9, t0
    addu    t2, t1, $at
    addiu   t3, $zero, 0x0014          # t3 = 00000014
    addiu   t4, t4, %lo(func_80B2D8E8) # t4 = 80B2D8E8
    addiu   t5, t5, %lo(func_80B2DB14) # t5 = 80B2DB14
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t2, 0x0038(s0)             # 00000038
    sh      t3, 0x005C(s0)             # 0000005C
    sw      t4, 0x0028(s0)             # 00000028
    sw      t5, 0x0024(s0)             # 00000024
    sh      t6, 0x0040(s0)             # 00000040
    sh      $zero, 0x0042(s0)          # 00000042
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80B2D8E8:
    addiu   $sp, $sp, 0xFEA0           # $sp = FFFFFEA0
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0160($sp)
    sw      a1, 0x0164($sp)
    lw      t6, 0x0160($sp)
    lw      s0, 0x0000(t6)             # 00000000
    lh      t7, 0x0040(s1)             # 00000040
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t7, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4
    lw      a3, 0x0008(s1)             # 00000008
    addiu   a0, $sp, 0x011C            # a0 = FFFFFFBC
    div.s   $f0, $f6, $f8
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x0050($sp)
    lwc1    $f0, 0x0050($sp)
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
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDA38                 # t9 = DA380000
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    addiu   t1, t1, 0xEDB0             # t1 = 800FEDB0
    ori     t9, t9, 0x0003             # t9 = DA380003
    sw      t9, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x009C            # a1 = FFFFFF3C
    beq     v0, $zero, lbl_80B2DB00
    or      t0, v0, $zero              # t0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0020             # t5 = DB060020
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lh      t6, 0x0042(s1)             # 00000042
    lui     a2, %hi(var_80B2DBB8)      # a2 = 80B30000
    lui     t3, 0x8012                 # t3 = 80120000
    sll     t7, t6,  2
    addu    a2, a2, t7
    lw      a2, %lo(var_80B2DBB8)(a2)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, a2,  4
    srl     t1, t9, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lw      t3, 0x0C38(t3)             # 80120C38
    and     t8, a2, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t8, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    jal     func_8007E978
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x005C(s1)             # 0000005C
    lui     $at, 0x414C                # $at = 414C0000
    mtc1    $at, $f18                  # $f18 = 12.75
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     t0, 0xE700                 # t0 = E7000000
    lui     t8, 0xFA00                 # t8 = FA000000
    cvt.s.w $f16, $f10
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    sra     a3, a3, 16
    lw      v0, 0x02D0(s0)             # 000002D0
    andi    v1, a3, 0x00FF             # v1 = 00000000
    sll     t3, v1, 24
    sll     t4, v1, 16
    or      t5, t3, t4                 # t5 = 00000000
    sll     t6, v1,  8
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    or      t7, t5, t6                 # t7 = 00000000
    or      t9, t7, v1                 # t9 = 00000000
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t3, 0x0038(s1)             # 00000038
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
lbl_80B2DB00:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0160           # $sp = 00000000


func_80B2DB14:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x005C(a2)             # 0000005C
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_80B2DB48
    slti    $at, v0, 0x0011
    bne     $at, $zero, lbl_80B2DB48
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    subu    t7, t6, v0
    beq     $zero, $zero, lbl_80B2DB58
    sh      t7, 0x0042(a2)             # 00000042
lbl_80B2DB48:
    lh      t8, 0x0040(a2)             # 00000040
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x0042(a2)             # 00000042
    sh      t8, 0x0040(a2)             # 00000040
lbl_80B2DB58:
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0020($sp)
    lui     $at, %hi(var_80B2DBD0)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2DBD0)($at)
    lui     $at, %hi(var_80B2DBD4)     # $at = 80B30000
    lwc1    $f8, %lo(var_80B2DBD4)($at)
    mul.s   $f6, $f0, $f4
    lw      a2, 0x0020($sp)
    sub.s   $f10, $f6, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0018(a2)           # 00000018
    lui     $at, %hi(var_80B2DBD8)     # $at = 80B30000
    lwc1    $f16, %lo(var_80B2DBD8)($at)
    lui     $at, %hi(var_80B2DBDC)     # $at = 80B30000
    lwc1    $f4, %lo(var_80B2DBDC)($at)
    mul.s   $f18, $f0, $f16
    lw      a2, 0x0020($sp)
    sub.s   $f6, $f18, $f4
    swc1    $f6, 0x0020(a2)            # 00000020
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000

.section .data

.word 0x00000002
.word func_80B2D820
var_80B2DBB8: .word \
0x04007F80, 0x04008780, 0x04008F80, 0x04009780, \
0x00000000, 0x00000000

.section .rodata

var_80B2DBD0: .word 0x3ECCCCCD
var_80B2DBD4: .word 0x3E4CCCCD
var_80B2DBD8: .word 0x3ECCCCCD
var_80B2DBDC: .word 0x3E4CCCCD

