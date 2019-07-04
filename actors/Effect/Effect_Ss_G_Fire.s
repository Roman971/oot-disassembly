.section .text
func_80B30490:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a0, $sp, 0x0004            # a0 = FFFFFFE4
    addiu   v1, $sp, 0x0010            # v1 = FFFFFFF0
    lui     t6, %hi(var_80B306A8)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B306A8)  # t6 = 80B306A8
    lw      t8, 0x0000(t6)             # 80B306A8
    lui     v0, 0x0402                 # v0 = 04020000
    addiu   v0, v0, 0xC6C0             # v0 = 0401C6C0
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80B306AC
    lw      t0, 0x0000(v1)             # FFFFFFF0
    sll     t9, v0,  4
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80B306B0
    sw      t0, 0x0000(a0)             # FFFFFFE4
    lw      t2, 0x0000(a0)             # FFFFFFE4
    sw      t7, 0x0004(a0)             # FFFFFFE8
    sw      t8, 0x0008(v1)             # FFFFFFF8
    sw      t8, 0x0008(a0)             # FFFFFFEC
    sw      t2, 0x0018(a2)             # 00000018
    lw      t1, 0x0004(a0)             # FFFFFFE8
    lui     t7, %hi(func_80B305D0)     # t7 = 80B30000
    lui     t8, %hi(func_80B30678)     # t8 = 80B30000
    sw      t1, 0x001C(a2)             # 0000001C
    lw      t2, 0x0008(a0)             # FFFFFFEC
    srl     t0, t9, 28
    addiu   t7, t7, %lo(func_80B305D0) # t7 = 80B305D0
    sw      t2, 0x0020(a2)             # 00000020
    lw      t4, 0x0000(a0)             # FFFFFFE4
    addiu   t8, t8, %lo(func_80B30678) # t8 = 80B30678
    lui     t2, 0x8012                 # t2 = 80120000
    sw      t4, 0x000C(a2)             # 0000000C
    lw      t3, 0x0004(a0)             # FFFFFFE8
    sll     t1, t0,  2
    addu    t2, t2, t1
    sw      t3, 0x0010(a2)             # 00000010
    lw      t4, 0x0008(a0)             # FFFFFFEC
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t4, 0x0014(a2)             # 00000014
    lw      t6, 0x0000(a3)             # 00000000
    and     t3, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x0000(a2)             # 00000000
    lw      t5, 0x0004(a3)             # 00000004
    addiu   t9, $zero, 0x00DC          # t9 = 000000DC
    addiu   t0, $zero, 0x0050          # t0 = 00000050
    sw      t5, 0x0004(a2)             # 00000004
    lw      t6, 0x0008(a3)             # 00000008
    sw      t7, 0x0028(a2)             # 00000028
    sw      t8, 0x0024(a2)             # 00000024
    sw      t6, 0x0008(a2)             # 00000008
    lw      t2, 0x0C38(t2)             # 80120C38
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addu    t4, t2, t3
    addu    t5, t4, $at
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    addiu   t1, $zero, 0x0082          # t1 = 00000082
    addiu   t2, $zero, 0x001E          # t2 = 0000001E
    sw      t5, 0x0038(a2)             # 00000038
    sh      t6, 0x005C(a2)             # 0000005C
    sh      $zero, 0x005A(a2)          # 0000005A
    sh      t7, 0x0042(a2)             # 00000042
    sh      $zero, 0x0040(a2)          # 00000040
    sh      t8, 0x0044(a2)             # 00000044
    sh      a1, 0x0046(a2)             # 00000046
    sh      t9, 0x0048(a2)             # 00000048
    sh      t0, 0x004A(a2)             # 0000004A
    sh      a1, 0x004C(a2)             # 0000004C
    sh      t1, 0x004E(a2)             # 0000004E
    sh      t2, 0x0050(a2)             # 00000050
    sh      $zero, 0x0052(a2)          # 00000052
    sh      $zero, 0x0054(a2)          # 00000054
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80B305D0:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0044($sp)
    addiu   v1, $sp, 0x0020            # v1 = FFFFFFE0
    or      a3, a2, $zero              # a3 = 00000000
    lui     t6, %hi(var_80B306B4)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B306B4)  # t6 = 80B306B4
    lw      t8, 0x0000(t6)             # 80B306B4
    addiu   $at, $zero, 0x0064         # $at = 00000064
    or      a1, a3, $zero              # a1 = 00000000
    sw      t8, 0x0000(v1)             # FFFFFFE0
    lw      t7, 0x0004(t6)             # 80B306B8
    sw      t7, 0x0004(v1)             # FFFFFFE4
    lw      t8, 0x0008(t6)             # 80B306BC
    sw      t8, 0x0008(v1)             # FFFFFFE8
    lw      t7, 0x000C(t6)             # 80B306C0
    sw      t7, 0x000C(v1)             # FFFFFFEC
    lw      t8, 0x0010(t6)             # 80B306C4
    sw      t8, 0x0010(v1)             # FFFFFFF0
    lw      t7, 0x0014(t6)             # 80B306C8
    sw      t7, 0x0014(v1)             # FFFFFFF4
    lw      t8, 0x0018(t6)             # 80B306CC
    sw      t8, 0x0018(v1)             # FFFFFFF8
    lw      t7, 0x001C(t6)             # 80B306D0
    sw      t7, 0x001C(v1)             # FFFFFFFC
    lh      v0, 0x0040(a3)             # 00000040
    div     $zero, v0, $at
    mflo    v0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    nop
    div     $zero, v0, $at
    mfhi    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    sll     t9, v0,  2
    addu    t0, v1, t9
    jal     func_8001BAA0
    lw      a2, 0x0000(t0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B30678:
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

.section .data

.word 0x0000000C
.word func_80B30490
var_80B306A8: .word 0x00000000, 0x00000000, 0x00000000
var_80B306B4: .word \
0x0401A6C0, 0x0401AAC0, 0x0401AEC0, 0x0401B2C0, \
0x0401B6C0, 0x0401BAC0, 0x0401BEC0, 0x0401C2C0, \
0x00000000, 0x00000000, 0x00000000

.section .rodata


