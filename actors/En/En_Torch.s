.section .text
func_80B1ED70:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lb      v0, -0x4699(v0)            # 8011B967
    lwc1    $f4, 0x0028(s0)            # 00000028
    lw      a3, 0x0024(s0)             # 00000024
    sra     t7, v0,  5
    andi    t8, t7, 0x0007             # t8 = 00000000
    lui     t9, %hi(var_80B1EE20)      # t9 = 80B20000
    addu    t9, t9, t8
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lbu     t9, %lo(var_80B1EE20)(t9)
    sw      $zero, 0x0018($sp)
    swc1    $f6, 0x0014($sp)
    sll     t0, t9,  5
    lh      t6, 0x00B6(s0)             # 000000B6
    ori     t1, t0, 0x5000             # t1 = 00005000
    andi    t2, v0, 0x001F             # t2 = 00000000
    or      t3, t1, t2                 # t3 = 00005000
    sw      t3, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x001C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80B1EE00: .word 0x01810700, 0x00000000, 0x00010000, 0x0000013C
.word func_80B1ED70
.word 0x00000000, 0x00000000, 0x00000000
var_80B1EE20: .word 0x4D4E5667, 0x65656565, 0x00000000, 0x00000000

.section .rodata


