.section .text
func_80AA89B0:
    sw      a1, 0x0154(a0)             # 00000154
    jr      $ra
    nop


func_80AA89BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     a1, %hi(var_80AA8B70)      # a1 = 80AB0000
    addiu   a1, a1, %lo(var_80AA8B70)  # a1 = 80AA8B70
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x3C64             # a0 = 06003C64
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    sw      v0, 0x013C(s0)             # 0000013C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80AA8A90)     # a1 = 80AB0000
    beq     t6, $zero, lbl_80AA8A40
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA8A4C
    lw      $ra, 0x001C($sp)
lbl_80AA8A40:
    jal     func_80AA89B0
    addiu   a1, a1, %lo(func_80AA8A90) # a1 = FFFF8A90
    lw      $ra, 0x001C($sp)
lbl_80AA8A4C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AA8A5C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AA8A90:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80AA8AA0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AA8AC4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x002C($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x3B20             # t2 = 06003B20
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop

.section .data

var_80AA8B50: .word 0x01450100, 0x00000010, 0x01800000, 0x00000158
.word func_80AA89BC
.word func_80AA8A5C
.word func_80AA8AA0
.word func_80AA8AC4
var_80AA8B70: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


