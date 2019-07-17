.section .text
func_8091D4F0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a1, %hi(var_8091D610)      # a1 = 80920000
    sw      $zero, 0x001C($sp)
    addiu   a1, a1, %lo(var_8091D610)  # a1 = 8091D610
    jal     func_80063F7C
    lw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    jal     func_80035260
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x7888             # a0 = 06007888
    jal     func_80033EF4
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lw      a3, 0x001C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lw      t6, 0x0028($sp)
    sw      v0, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8091D558:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8091D58C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B54(t6)            # 8011B4AC
    addiu   a1, a3, 0x0810             # a1 = 00000810
    or      a0, a3, $zero              # a0 = 00000000
    andi    t7, t6, 0x0800             # t7 = 00000000
    beq     t7, $zero, lbl_8091D5D0
    lw      t9, 0x0018($sp)
    lw      t8, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800314D8
    lw      a2, 0x013C(t8)             # 0000013C
    beq     $zero, $zero, lbl_8091D5E0
    lw      $ra, 0x0014($sp)
lbl_8091D5D0:
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031530
    lw      a2, 0x013C(t9)             # 0000013C
    lw      $ra, 0x0014($sp)
lbl_8091D5E0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

var_8091D5F0: .word 0x00700100, 0x00000000, 0x005E0000, 0x00000158
.word func_8091D4F0
.word func_8091D558
.word func_8091D58C
.word 0x00000000
var_8091D610: .word 0x485003E8, 0x00000000, 0x00000000, 0x00000000

.section .rodata


