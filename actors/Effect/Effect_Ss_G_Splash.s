.section .text
func_80B2FD80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    addiu   v0, $sp, 0x0010            # v0 = FFFFFFF0
    addiu   v1, $sp, 0x0004            # v1 = FFFFFFE4
    lui     t6, %hi(var_80B30188)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B30188)  # t6 = 80B30188
    lw      t8, 0x0000(t6)             # 80B30188
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t8, 0x0000(v0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B3018C
    lw      t0, 0x0000(v0)             # FFFFFFF0
    sw      t7, 0x0004(v0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B30190
    sw      t0, 0x0000(v1)             # FFFFFFE4
    lw      t2, 0x0000(v1)             # FFFFFFE4
    sw      t7, 0x0004(v1)             # FFFFFFE8
    sw      t8, 0x0008(v0)             # FFFFFFF8
    sw      t8, 0x0008(v1)             # FFFFFFEC
    sw      t2, 0x0018(a2)             # 00000018
    lw      t1, 0x0004(v1)             # FFFFFFE8
    lui     t7, %hi(func_80B2FFA0)     # t7 = 80B30000
    lui     t8, %hi(func_80B300A8)     # t8 = 80B30000
    sw      t1, 0x001C(a2)             # 0000001C
    lw      t2, 0x0008(v1)             # FFFFFFEC
    addiu   t7, t7, %lo(func_80B2FFA0) # t7 = 80B2FFA0
    addiu   t8, t8, %lo(func_80B300A8) # t8 = 80B300A8
    sw      t2, 0x0020(a2)             # 00000020
    lw      t4, 0x0000(v1)             # FFFFFFE4
    lui     v0, 0x0403                 # v0 = 04030000
    addiu   v0, v0, 0x8290             # v0 = 04028290
    sw      t4, 0x000C(a2)             # 0000000C
    lw      t3, 0x0004(v1)             # FFFFFFE8
    sll     t1, v0,  4
    srl     t2, t1, 28
    sw      t3, 0x0010(a2)             # 00000010
    lw      t4, 0x0008(v1)             # FFFFFFEC
    sll     t3, t2,  2
    addiu   t0, $zero, 0x0258          # t0 = 00000258
    sw      t4, 0x0014(a2)             # 00000014
    lw      t6, 0x0000(a3)             # 00000000
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    sw      t6, 0x0000(a2)             # 00000000
    lw      t5, 0x0004(a3)             # 00000004
    sw      t5, 0x0004(a2)             # 00000004
    lw      t6, 0x0008(a3)             # 00000008
    sw      t7, 0x0028(a2)             # 00000028
    sw      t8, 0x0024(a2)             # 00000024
    sw      t6, 0x0008(a2)             # 00000008
    lh      t9, 0x000E(a3)             # 0000000E
    and     t5, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    bne     t9, $zero, lbl_80B2FE64
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sh      t0, 0x000E(a3)             # 0000000E
lbl_80B2FE64:
    lw      t4, 0x0C38(t4)             # 80120C38
    sh      t8, 0x005C(a2)             # 0000005C
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addu    t6, t4, t5
    addu    t7, t6, $at
    sw      t7, 0x0038(a2)             # 00000038
    lh      t9, 0x000E(a3)             # 0000000E
    sh      $zero, 0x0040(a2)          # 00000040
    sh      t0, 0x0044(a2)             # 00000044
    sh      t9, 0x0042(a2)             # 00000042
    lbu     t1, 0x000D(a3)             # 0000000D
    beql    t1, $zero, lbl_80B2FEE8
    lbu     v0, 0x000C(a3)             # 0000000C
    lbu     t2, 0x0010(a3)             # 00000010
    sh      t2, 0x0046(a2)             # 00000046
    lbu     t3, 0x0011(a3)             # 00000011
    sh      t3, 0x0048(a2)             # 00000048
    lbu     t4, 0x0012(a3)             # 00000012
    sh      t4, 0x004A(a2)             # 0000004A
    lbu     t5, 0x0013(a3)             # 00000013
    sh      t5, 0x004C(a2)             # 0000004C
    lbu     t6, 0x0014(a3)             # 00000014
    sh      t6, 0x004E(a2)             # 0000004E
    lbu     t7, 0x0015(a3)             # 00000015
    sh      t7, 0x0050(a2)             # 00000050
    lbu     t8, 0x0016(a3)             # 00000016
    sh      t8, 0x0052(a2)             # 00000052
    lbu     t9, 0x0017(a3)             # 00000017
    sh      t9, 0x0054(a2)             # 00000054
    lbu     t0, 0x000C(a3)             # 0000000C
    b       lbl_80B2FF94
    sh      t0, 0x0056(a2)             # 00000056
    lbu     v0, 0x000C(a3)             # 0000000C
lbl_80B2FEE8:
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beql    v0, $zero, lbl_80B2FF18
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    beql    v0, v1, lbl_80B2FF44
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    beq     v0, v1, lbl_80B2FF6C
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    b       lbl_80B2FF98
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80B2FF18:
    sh      v0, 0x0046(a2)             # 00000046
    sh      v0, 0x0048(a2)             # 00000048
    sh      v0, 0x004A(a2)             # 0000004A
    sh      a0, 0x004C(a2)             # 0000004C
    sh      v0, 0x004E(a2)             # 0000004E
    sh      v0, 0x0050(a2)             # 00000050
    sh      v0, 0x0052(a2)             # 00000052
    sh      a0, 0x0054(a2)             # 00000054
    b       lbl_80B2FF94
    sh      $zero, 0x0056(a2)          # 00000056
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_80B2FF44:
    sh      v0, 0x0046(a2)             # 00000046
    sh      v0, 0x0048(a2)             # 00000048
    sh      v0, 0x004A(a2)             # 0000004A
    sh      v0, 0x004C(a2)             # 0000004C
    sh      v0, 0x004E(a2)             # 0000004E
    sh      v0, 0x0050(a2)             # 00000050
    sh      v0, 0x0052(a2)             # 00000052
    sh      v0, 0x0054(a2)             # 00000054
    b       lbl_80B2FF94
    sh      v1, 0x0056(a2)             # 00000056
lbl_80B2FF6C:
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sh      v0, 0x0046(a2)             # 00000046
    sh      v0, 0x0048(a2)             # 00000048
    sh      v0, 0x004A(a2)             # 0000004A
    sh      a0, 0x004C(a2)             # 0000004C
    sh      v0, 0x004E(a2)             # 0000004E
    sh      v0, 0x0050(a2)             # 00000050
    sh      v0, 0x0052(a2)             # 00000052
    sh      a0, 0x0054(a2)             # 00000054
    sh      v1, 0x0056(a2)             # 00000056
lbl_80B2FF94:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B2FF98:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B2FFA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a2, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lh      v0, 0x0056(a1)             # 00000056
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a2, %hi(var_80B30194)      # a2 = 80B30000
    beql    v0, $zero, lbl_80B2FFE4
    lh      v0, 0x0040(a1)             # 00000040
    beq     v0, $at, lbl_80B30020
    lui     a2, %hi(var_80B30194)      # a2 = 80B30000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B30060
    lui     a2, %hi(var_80B30194)      # a2 = 80B30000
    b       lbl_80B3009C
    lw      $ra, 0x0014($sp)
    lh      v0, 0x0040(a1)             # 00000040
lbl_80B2FFE4:
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, v0, $at
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0008
    bnel    $at, $zero, lbl_80B3000C
    sll     t6, v0,  2
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    sll     t6, v0,  2
lbl_80B3000C:
    addu    a2, a2, t6
    jal     func_8001BAA0
    lw      a2, %lo(var_80B30194)(a2)
    b       lbl_80B3009C
    lw      $ra, 0x0014($sp)
lbl_80B30020:
    lh      v0, 0x0040(a1)             # 00000040
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, v0, $at
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0008
    bnel    $at, $zero, lbl_80B3004C
    sll     t7, v0,  2
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    sll     t7, v0,  2
lbl_80B3004C:
    addu    a2, a2, t7
    jal     func_8001BAA0
    lw      a2, %lo(var_80B30194)(a2)
    b       lbl_80B3009C
    lw      $ra, 0x0014($sp)
lbl_80B30060:
    lh      v0, 0x0040(a1)             # 00000040
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, v0, $at
    mflo    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0008
    bnel    $at, $zero, lbl_80B3008C
    sll     t8, v0,  2
    addiu   v0, $zero, 0x0007          # v0 = 00000007
    sll     t8, v0,  2
lbl_80B3008C:
    addu    a2, a2, t8
    jal     func_8001BAA0
    lw      a2, %lo(var_80B30194)(a2)
    lw      $ra, 0x0014($sp)
lbl_80B3009C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B300A8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lh      t6, 0x0056(s0)             # 00000056
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80B30158
    lh      t5, 0x0040(s0)             # 00000040
    lh      t7, 0x005C(s0)             # 0000005C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t7, $at, lbl_80B30158
    lh      t5, 0x0040(s0)             # 00000040
    lw      t9, 0x0000(s0)             # 00000000
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lui     $at, %hi(var_80B301C0)     # $at = 80B30000
    sw      t9, 0x0000(a1)             # FFFFFFF4
    lw      t8, 0x0004(s0)             # 00000004
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    sw      t8, 0x0004(a1)             # FFFFFFF8
    lw      t9, 0x0008(s0)             # 00000008
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t9, 0x0008(a1)             # FFFFFFFC
    lh      t0, 0x0042(s0)             # 00000042
    lwc1    $f8, %lo(var_80B301C0)($at)
    lwc1    $f16, 0x0030($sp)
    sll     t1, t0,  2
    addu    t1, t1, t0
    sll     t1, t1,  2
    mtc1    t1, $f4                    # $f4 = 0.00
    sw      t2, 0x0010($sp)
    cvt.s.w $f6, $f4
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f16, $f10
    swc1    $f18, 0x0030($sp)
    lh      t3, 0x0042(s0)             # 00000042
    bgez    t3, lbl_80B3014C
    sra     t4, t3,  1
    addiu   $at, t3, 0x0001            # $at = 00000001
    sra     t4, $at,  1
lbl_80B3014C:
    jal     func_8001CF94
    sw      t4, 0x0014($sp)
    lh      t5, 0x0040(s0)             # 00000040
lbl_80B30158:
    lh      t6, 0x0044(s0)             # 00000044
    addu    t7, t5, t6
    sh      t7, 0x0040(s0)             # 00000040
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop
    nop
    nop

.section .data

.word 0x0000000A
.word func_80B2FD80
var_80B30188: .word 0x00000000, 0x00000000, 0x00000000
var_80B30194: .word \
0x04025A90, 0x04025F90, 0x04026490, 0x04026990, \
0x04026E90, 0x04027390, 0x04027890, 0x04027D90, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80B301C0: .word 0x3B03126F, 0x00000000, 0x00000000, 0x00000000

