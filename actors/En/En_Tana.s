.section .text
func_809A18F0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t0, %hi(var_809A1B10)      # t0 = 809A0000
    lw      t6, 0x0004(a0)             # 00000004
    lh      t8, 0x001C(a0)             # 0000001C
    and     t7, t6, $at
    sll     t9, t8,  2
    addu    t0, t0, t9
    sw      t7, 0x0004(a0)             # 00000004
    lw      t0, %lo(var_809A1B10)(t0)
    sw      t0, 0x0134(a0)             # 00000134
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_809A1940:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809A1950:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_809A1960:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0020($sp)
    lw      a2, 0x0020($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    lui     t5, %hi(var_809A1B1C)      # t5 = 809A0000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0028($sp)
    lh      t3, 0x001C(t2)             # 0000001C
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, %lo(var_809A1B1C)(t5)
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_809A19F4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0030($sp)
    lui     a1, %hi(var_809A1B28)      # a1 = 809A0000
    lui     t6, 0x8012                 # t6 = 80120000
    lh      t0, 0x001C(t9)             # 0000001C
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, t0,  2
    addu    a1, a1, t1
    lw      a1, %lo(var_809A1B28)(a1)
    sll     t3, a1,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, t6, t5
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t1, 0x0034($sp)
    lw      a0, 0x0000(t1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lw      a2, 0x0028($sp)
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t7, %hi(var_809A1B1C)      # t7 = 809A0000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a2)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0030($sp)
    lh      t2, 0x001C(t5)             # 0000001C
    sll     t6, t2,  2
    addu    t7, t7, t6
    lw      t7, %lo(var_809A1B1C)(t7)
    sw      t7, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    nop

.section .data

var_809A1AF0: .word 0x00C20600, 0x00000009, 0x00B20000, 0x0000013C
.word func_809A18F0
.word func_809A1940
.word func_809A1950
.word 0x00000000
var_809A1B10: .word func_809A1960
.word func_809A19F4
.word func_809A19F4
var_809A1B1C: .word 0x06000B80, 0x060027E8, 0x060027E8
var_809A1B28: .word \
0x00000000, 0x06000E08, 0x06001608, 0x00000000, \
0x00000000, 0x00000000

.section .rodata


