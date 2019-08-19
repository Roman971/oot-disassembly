# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 80051AA0 / VROM: AC7A00
#

.section .text
func_80051AA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x1428          # a1 = 00001428
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x4608($at)        # 8011B9F8
    lui     a0, 0x8012                 # a0 = 80120000
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    sw      $zero, -0x4604($at)        # 8011B9FC
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    ori     t6, $zero, 0xFFEF          # t6 = 0000FFEF
    ori     t7, $zero, 0xFFFF          # t7 = 0000FFFF
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sb      v0, 0x13E0(a0)             # 8011B9B0
    sb      v0, 0x13E1(a0)             # 8011B9B1
    sh      $zero, 0x140E(a0)          # 8011B9DE
    sh      t6, 0x1412(a0)             # 8011B9E2
    sb      $zero, 0x1414(a0)          # 8011B9E4
    sb      $zero, 0x1415(a0)          # 8011B9E5
    sh      t7, 0x1416(a0)             # 8011B9E6
    sh      $zero, 0x141A(a0)          # 8011B9EA
    sb      a1, 0x141C(a0)             # 8011B9EC
    sb      v0, 0x141D(a0)             # 8011B9ED
    sh      t8, 0x13EE(a0)             # 8011B9BE
    lui     v1, 0x8000                 # v1 = 80000000
    lw      v1, 0x6280(v1)             # 80006280
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v1, $at, lbl_80051B2C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sb      $zero, 0x1409(a0)          # 8011B9D9
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80051B2C:
    bnel    v1, $at, lbl_80051B3C
    lw      $ra, 0x0014($sp)
    sb      a1, 0x1409(a0)             # 8011B9D9
    lw      $ra, 0x0014($sp)
lbl_80051B3C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
