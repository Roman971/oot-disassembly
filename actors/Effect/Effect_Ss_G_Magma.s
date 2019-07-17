.section .text
func_80B30230:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a0, 0x0038($sp)
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    addiu   v1, $sp, 0x001C            # v1 = FFFFFFE4
    lui     t6, %hi(var_80B30418)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B30418)  # t6 = 80B30418
    lw      t8, 0x0000(t6)             # 80B30418
    lui     v0, 0x0402                 # v0 = 04020000
    addiu   v0, v0, 0x48B0             # v0 = 040248B0
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B3041C
    lw      t0, 0x0000(a0)             # FFFFFFF0
    sll     t9, v0,  4
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B30420
    sw      t0, 0x0000(v1)             # FFFFFFE4
    lw      t2, 0x0000(v1)             # FFFFFFE4
    sw      t7, 0x0004(v1)             # FFFFFFE8
    sw      t8, 0x0008(a0)             # FFFFFFF8
    sw      t8, 0x0008(v1)             # FFFFFFEC
    sw      t2, 0x0018(a2)             # 00000018
    lw      t1, 0x0004(v1)             # FFFFFFE8
    lui     t7, %hi(func_80B30388)     # t7 = 80B30000
    lui     t8, %hi(func_80B303E4)     # t8 = 80B30000
    sw      t1, 0x001C(a2)             # 0000001C
    lw      t2, 0x0008(v1)             # FFFFFFEC
    srl     t0, t9, 28
    addiu   t7, t7, %lo(func_80B30388) # t7 = 80B30388
    sw      t2, 0x0020(a2)             # 00000020
    lw      t4, 0x0000(v1)             # FFFFFFE4
    addiu   t8, t8, %lo(func_80B303E4) # t8 = 80B303E4
    lui     t2, 0x8012                 # t2 = 80120000
    sw      t4, 0x000C(a2)             # 0000000C
    lw      t3, 0x0004(v1)             # FFFFFFE8
    sll     t1, t0,  2
    addu    t2, t2, t1
    sw      t3, 0x0010(a2)             # 00000010
    lw      t4, 0x0008(v1)             # FFFFFFEC
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t4, 0x0014(a2)             # 00000014
    lw      t6, 0x0000(a3)             # 00000000
    and     t3, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x0000(a2)             # 00000000
    lw      t5, 0x0004(a3)             # 00000004
    sw      t5, 0x0004(a2)             # 00000004
    lw      t6, 0x0008(a3)             # 00000008
    sw      t7, 0x0028(a2)             # 00000028
    sw      t8, 0x0024(a2)             # 00000024
    sw      t6, 0x0008(a2)             # 00000008
    lw      t2, 0x0C38(t2)             # 80120C38
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    sh      t6, 0x005C(a2)             # 0000005C
    addu    t4, t2, t3
    addu    t5, t4, $at
    sw      t5, 0x0038(a2)             # 00000038
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0040($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f4                   # $f4 = 100.00
    lw      a2, 0x0040($sp)
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    mul.s   $f6, $f0, $f4
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      $zero, 0x0040(a2)          # 00000040
    sh      t2, 0x0044(a2)             # 00000044
    sh      v1, 0x0046(a2)             # 00000046
    sh      v1, 0x0048(a2)             # 00000048
    trunc.w.s $f8, $f6
    sh      $zero, 0x004A(a2)          # 0000004A
    sh      v1, 0x004C(a2)             # 0000004C
    sh      v1, 0x004E(a2)             # 0000004E
    mfc1    t0, $f8
    sh      $zero, 0x0050(a2)          # 00000050
    sh      $zero, 0x0052(a2)          # 00000052
    addiu   t1, t0, 0x00C8             # t1 = 000000C8
    sh      t1, 0x0042(a2)             # 00000042
    sh      $zero, 0x0054(a2)          # 00000054
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B30388:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a2, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0040(a1)             # 00000040
    addiu   $at, $zero, 0x0064         # $at = 00000064
    lui     a2, %hi(var_80B30424)      # a2 = 80B30000
    div     $zero, v0, $at
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0008
    bnel    $at, $zero, lbl_80B303C8
    sll     t6, v0,  2
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    sll     t6, v0,  2
lbl_80B303C8:
    addu    a2, a2, t6
    jal     func_8001BAA0
    lw      a2, %lo(var_80B30424)(a2)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B303E4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lh      t6, 0x0040(a2)             # 00000040
    lh      t7, 0x0044(a2)             # 00000044
    addu    t8, t6, t7
    sh      t8, 0x0040(a2)             # 00000040
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

.word 0x0000000B
.word func_80B30230
var_80B30418: .word 0x00000000, 0x00000000, 0x00000000
var_80B30424: .word \
0x04023CB0, 0x04023E30, 0x04023FB0, 0x04024130, \
0x040242B0, 0x04024430, 0x040245B0, 0x04024730, \
0x00000000, 0x00000000, 0x00000000

.section .rodata


