.section .text
func_80B40F80:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    addiu   t6, $zero, 0x0D05          # t6 = 00000D05
    sh      t6, 0x001C(s0)             # 0000001C
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0020($sp)
    jal     func_8004AB7C
    lw      a0, 0x002C($sp)
    lui     a3, %hi(var_80B41070)      # a3 = 80B40000
    lw      a1, 0x0020($sp)
    addiu   a3, a3, %lo(var_80B41070)  # a3 = 80B41070
    lw      a0, 0x002C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80B4109C)      # a2 = 80B40000
    addiu   a2, a2, %lo(var_80B4109C)  # a2 = 80B4109C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80B40FEC:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B41018:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a2, a3, 0x0140             # a2 = 00000140
    or      a1, a2, $zero              # a1 = 00000140
    sw      a2, 0x001C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80050B00
    sw      a3, 0x0028($sp)
    lw      a0, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x001C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop

.section .data

var_80B41070: .word \
0x0A000005, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x0028000A, 0x00000000, 0x00000000
var_80B4109C: .word 0x00000000, 0x00000000, 0xFF000000
var_80B410A8: .word 0x01960600, 0x00000000, 0x00010000, 0x0000018C
.word func_80B40F80
.word func_80B40FEC
.word func_80B41018
.word 0x00000000, 0x00000000, 0x00000000

.section .rodata


