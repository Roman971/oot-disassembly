# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 800AD410 / VROM: B23370
#

.section .text
func_800AD410:
# Disk Drive Boot Routine
# ROM st: z_n64dd & ovl_title
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, 0x1210(t6)             # 80121210
    lui     v0, 0x00B9                 # v0 = 00B90000
    addiu   a1, v0, 0xAD30             # a1 = 00B8AD30
    bne     t6, $zero, lbl_800AD478
    lui     a0, 0x801C                 # a0 = 801C0000
    lui     t7, 0x00BA                 # t7 = 00BA0000
    addiu   t7, t7, 0xDA40             # t7 = 00B9DA40
    subu    a2, t7, a1
    jal     func_80000DF0
    addiu   a0, a0, 0x6E80             # a0 = 801C6E80
    lui     a0, 0x801E                 # a0 = 801E0000
    lui     t8, 0x801E                 # t8 = 801E0000
    addiu   a0, a0, 0x9B90             # a0 = 801D9B90
    addiu   t8, t8, 0x7810             # t8 = 801E7810
    jal     func_80002E80              # bzero
    subu    a1, t8, a0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    jal     func_801C6E80
    sb      t9, 0x1210($at)            # 80121210
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1211             # v1 = 80121211
    sb      v0, 0x0000(v1)             # 80121211
lbl_800AD478:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD488:
# Zeroes 80121210 if 80121211 is zero
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x1210             # v0 = 80121210
    lbu     t6, 0x0000(v0)             # 80121210
    lui     t7, 0x8012                 # t7 = 80120000
    beq     t6, $zero, lbl_800AD4B0
    nop
    lbu     t7, 0x1212(t7)             # 80121212
    bne     t7, $zero, lbl_800AD4B0
    nop
    sb      $zero, 0x0000(v0)          # 80121210
lbl_800AD4B0:
    jr      $ra
    nop
    nop
    nop


func_800AD4C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800AD560
    nop
    lw      a1, 0x0018($sp)
    or      a0, v0, $zero              # a0 = 00000000
    beq     a1, $zero, lbl_800AD4FC
    nop
    lw      v0, 0x0000(a1)             # 00000000
    beq     v0, $zero, lbl_800AD4FC
    nop
    jalr    $ra, v0
    nop
    lw      a1, 0x0018($sp)
lbl_800AD4FC:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x1220             # v1 = 80121220
    sw      a1, 0x0000(v1)             # 80121220
    or      v0, a1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD51C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_800AD548
    nop
    lw      v1, 0x0004(v0)             # 80120004
    beq     v1, $zero, lbl_800AD548
    nop
    jalr    $ra, v1
    nop
lbl_800AD548:
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, 0x1220($at)         # 80121220
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800AD560:
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0xEE70             # v1 = 800FEE70
    sw      $zero, 0x0004(v1)          # 800FEE74
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xA5D0             # t7 = 8011A5D0
    sw      t7, 0x0088(v1)             # 800FEEF8
    or      v0, v1, $zero              # v0 = 800FEE70
    sw      t6, 0x0008(v1)             # 800FEE78
    jr      $ra
    nop
