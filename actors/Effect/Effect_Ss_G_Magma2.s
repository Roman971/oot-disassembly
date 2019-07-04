.section .text
func_80B32760:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    lw      a0, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, a0, $at
    sw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    sw      a2, 0x0040($sp)
    jal     func_80081628              # ObjectIndex
    sw      a3, 0x0044($sp)
    lw      a0, 0x001C($sp)
    lw      a2, 0x0040($sp)
    lw      a3, 0x0044($sp)
    bltz    v0, lbl_80B32918
    or      a1, v0, $zero              # a1 = 00000000
    sw      v0, 0x0034($sp)
    sw      a2, 0x0040($sp)
    jal     func_80081688
    sw      a3, 0x0044($sp)
    lw      a1, 0x0034($sp)
    lw      a2, 0x0040($sp)
    beq     v0, $zero, lbl_80B32918
    lw      a3, 0x0044($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x0C38             # a0 = 80120C38
    addiu   v1, $sp, 0x0024            # v1 = FFFFFFEC
    lui     t6, %hi(var_80B32C1C)      # t6 = 80B30000
    addiu   t6, t6, %lo(var_80B32C1C)  # t6 = 80B32C1C
    lw      t8, 0x0000(t6)             # 80B32C1C
    sll     t0, a1,  4
    addu    t0, t0, a1
    sw      t8, 0x0000(v1)             # FFFFFFEC
    lw      t7, 0x0004(t6)             # 80B32C20
    sll     t0, t0,  2
    lui     t2, 0x0001                 # t2 = 00010000
    sw      t7, 0x0004(v1)             # FFFFFFF0
    lw      t8, 0x0008(t6)             # 80B32C24
    lui     $at, 0x8000                # $at = 80000000
    lui     v0, 0x0602                 # v0 = 06020000
    sw      t8, 0x0008(v1)             # FFFFFFF4
    lw      t9, 0x0038($sp)
    addiu   v0, v0, 0x4690             # v0 = 06024690
    addu    t1, t9, t0
    addu    t2, t2, t1
    lw      t2, 0x17B4(t2)             # 000117B4
    lui     t1, %hi(func_80B3292C)     # t1 = 80B30000
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    addu    t3, t2, $at
    sw      t3, 0x0018(a0)             # 80120C50
    sh      a1, 0x0054(a2)             # 00000054
    lw      t5, 0x0000(a3)             # 00000000
    sll     t3, v0,  4
    lui     t2, %hi(func_80B32B44)     # t2 = 80B30000
    sw      t5, 0x0000(a2)             # 00000000
    lw      t4, 0x0004(a3)             # 00000004
    addiu   t1, t1, %lo(func_80B3292C) # t1 = 80B3292C
    addiu   t2, t2, %lo(func_80B32B44) # t2 = 80B32B44
    sw      t4, 0x0004(a2)             # 00000004
    lw      t5, 0x0008(a3)             # 00000008
    srl     t4, t3, 28
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t5, 0x0008(a2)             # 00000008
    lw      t7, 0x0000(v1)             # FFFFFFEC
    sll     t5, t4,  2
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sw      t7, 0x000C(a2)             # 0000000C
    lw      t6, 0x0004(v1)             # FFFFFFF0
    sw      t6, 0x0010(a2)             # 00000010
    lw      t7, 0x0008(v1)             # FFFFFFF4
    addu    t6, a0, t5
    sw      t7, 0x0014(a2)             # 00000014
    lw      t9, 0x0000(v1)             # FFFFFFEC
    sw      t9, 0x0018(a2)             # 00000018
    lw      t8, 0x0004(v1)             # FFFFFFF0
    sw      t8, 0x001C(a2)             # 0000001C
    lw      t9, 0x0008(v1)             # FFFFFFF4
    sh      t0, 0x005C(a2)             # 0000005C
    sw      t1, 0x0028(a2)             # 00000028
    sw      t2, 0x0024(a2)             # 00000024
    sw      t9, 0x0020(a2)             # 00000020
    lw      t7, 0x0000(t6)             # 80B32C1C
    and     t8, v0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t7, t8
    addu    t0, t9, $at
    sw      t0, 0x0038(a2)             # 00000038
    sh      $zero, 0x004C(a2)          # 0000004C
    lh      t1, 0x0016(a3)             # 00000016
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t1, 0x0052(a2)             # 00000052
    lh      t2, 0x0014(a3)             # 00000014
    sh      t2, 0x0050(a2)             # 00000050
    lh      t3, 0x0018(a3)             # 00000018
    sh      t3, 0x0056(a2)             # 00000056
    lbu     t4, 0x000C(a3)             # 0000000C
    sh      t4, 0x0040(a2)             # 00000040
    lbu     t5, 0x000D(a3)             # 0000000D
    sh      t5, 0x0042(a2)             # 00000042
    lbu     t6, 0x000F(a3)             # 0000000F
    sh      t6, 0x0044(a2)             # 00000044
    lbu     t7, 0x0010(a3)             # 00000010
    sh      t7, 0x0046(a2)             # 00000046
    lbu     t8, 0x0011(a3)             # 00000011
    sh      t8, 0x0048(a2)             # 00000048
    lbu     t9, 0x0013(a3)             # 00000013
    beq     $zero, $zero, lbl_80B3291C
    sh      t9, 0x004A(a2)             # 0000004A
lbl_80B32918:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B3291C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80B3292C:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x0056(s1)             # 00000056
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      s0, 0x0000(a0)             # 00000000
    lui     t0, 0x0001                 # t0 = 00010000
    cvt.s.w $f6, $f4
    or      a3, $zero, $zero           # a3 = 00000000
    div.s   $f10, $f6, $f8
    swc1    $f10, 0x0034($sp)
    lh      t7, 0x0054(s1)             # 00000054
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, a0, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    sw      t0, 0x0030($sp)
    lwc1    $f12, 0x0000(s1)           # 00000000
    lwc1    $f14, 0x0004(s1)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s1)             # 00000008
    lwc1    $f12, 0x0034($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a2, 0x0030($sp)
    lui     $at, 0x8000                # $at = 80000000
    lui     t5, 0xDA38                 # t5 = DA380000
    addu    t1, a2, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t1, 0x0C50($at)            # 80120C50
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0018             # t3 = DB060018
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v0)             # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0003             # t5 = DA380003
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0020($sp)
    lw      a1, 0x0020($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lh      t6, 0x0052(s1)             # 00000052
    or      a1, $zero, $zero           # a1 = 00000000
    bne     t6, $zero, lbl_80B32A30
    nop
    lw      a0, 0x02D0(s0)             # 000002D0
    jal     func_8007DFBC
    addiu   a1, $zero, 0x003D          # a1 = 0000003D
    beq     $zero, $zero, lbl_80B32A3C
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_80B32A30:
    jal     func_8007DFBC
    lw      a0, 0x02D0(s0)             # 000002D0
    sw      v0, 0x02D0(s0)             # 000002D0
lbl_80B32A3C:
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v0)             # 00000000
    lh      t5, 0x0042(s1)             # 00000042
    lh      t2, 0x0040(s1)             # 00000040
    lh      t9, 0x0044(s1)             # 00000044
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t3, t2, 24
    andi    t0, t9, 0x00FF             # t0 = 00000000
    or      t4, t0, t3                 # t4 = 00000000
    sll     t7, t6, 16
    or      t8, t4, t7                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t7, 0x0048(s1)             # 00000048
    lh      t5, 0x0046(s1)             # 00000046
    lh      t2, 0x004A(s1)             # 0000004A
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t6, t5, 24
    andi    t0, t2, 0x00FF             # t0 = 00000000
    or      t4, t0, t6                 # t4 = 00000000
    sll     t9, t8, 16
    or      t1, t4, t9                 # t1 = 00000008
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lh      t5, 0x004C(s1)             # 0000004C
    lui     v1, %hi(var_80B32BE0)      # v1 = 80B30000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t0, t5,  2
    addu    v1, v1, t0
    lw      v1, %lo(var_80B32BE0)(v1)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t7, v1,  4
    srl     t8, t7, 28
    sll     t4, t8,  2
    addu    t9, t9, t4
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t6, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t1, t6, t9
    addu    t2, t1, $at
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t0, 0x0038(s1)             # 00000038
    sw      t0, 0x0004(v0)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B32B44:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    lh      t6, 0x004E(a2)             # 0000004E
    lh      t7, 0x0050(a2)             # 00000050
    addu    t8, t6, t7
    sh      t8, 0x004E(a2)             # 0000004E
    lh      v0, 0x004E(a2)             # 0000004E
    slti    $at, v0, 0x000A
    bne     $at, $zero, lbl_80B32BD8
    nop
    lh      t0, 0x004C(a2)             # 0000004C
    addiu   t9, v0, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x004E(a2)             # 0000004E
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x004C(a2)             # 0000004C
    lh      t2, 0x004C(a2)             # 0000004C
    slti    $at, t2, 0x000A
    bnel    $at, $zero, lbl_80B32B98
    lh      t3, 0x0052(a2)             # 00000052
    sh      $zero, 0x005C(a2)          # 0000005C
    lh      t3, 0x0052(a2)             # 00000052
lbl_80B32B98:
    bne     t3, $zero, lbl_80B32BD8
    nop
    lh      t4, 0x0042(a2)             # 00000042
    addiu   t5, t4, 0xFFE6             # t5 = FFFFFFE6
    sh      t5, 0x0042(a2)             # 00000042
    lh      t6, 0x0042(a2)             # 00000042
    bgtzl   t6, lbl_80B32BC0
    lh      t7, 0x0046(a2)             # 00000046
    sh      $zero, 0x0042(a2)          # 00000042
    lh      t7, 0x0046(a2)             # 00000046
lbl_80B32BC0:
    addiu   t8, t7, 0xFFE6             # t8 = FFFFFFE6
    sh      t8, 0x0046(a2)             # 00000046
    lh      t9, 0x0046(a2)             # 00000046
    bgtz    t9, lbl_80B32BD8
    nop
    sh      $zero, 0x0046(a2)          # 00000046
lbl_80B32BD8:
    jr      $ra
    nop

.section .data

var_80B32BE0: .word \
0x0602D0E0, 0x0602D4E0, 0x0602D8E0, 0x0602DCE0, \
0x0602E0E0, 0x0602E4E0, 0x0602E8E0, 0x0602ECE0, \
0x0602F0E0, 0x0602F4E0, 0x0602F4E0, 0x0602F4E0, \
0x0602F4E0, 0x00000013
.word func_80B32760
var_80B32C1C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata


