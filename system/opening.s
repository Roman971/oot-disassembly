# "Title Screen" Game State Overlay File
#
# This file handles the "Title Screen" game state which is used to initialize the title screen cutscene.
#
# General documentation about Game States:
# - https://wiki.cloudmodding.com/oot/Game_States
#
# The variables for this game state can be found in the Game State Table located in code/data.s
# (VRAM: 800F1400-800F1430, VROM: E0360-E0390)
#
# Starts at VRAM: 80803720 / VROM: BA1160
#

.section .text
func_80803720:
# Initializes variables used to run the Title Screen cutscene
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x135C(v0)             # 8011B92C
    sw      $zero, 0x0098(a0)          # 00000098
    sw      $zero, 0x0004(v0)          # 8011A5D4
    jal     func_800900EC
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    ori     t7, $zero, 0xFFF3          # t7 = 0000FFF3
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    lw      a0, 0x0018($sp)
    sw      t7, 0x0008(v0)             # 8011A5D8
    sw      t8, 0x1360(v0)             # 8011B930
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x2518             # t0 = 00012518
    addiu   t9, t9, 0xA750             # t9 = 8009A750
    sw      t9, 0x000C(a0)             # 0000000C
    sw      t0, 0x0010(a0)             # 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8080378C:
# A0 = Global Context
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80803798:
# Main Update function
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)            # t6 = Global Context
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EE5C              # Writes frame buffer/z-buffer initialization dlists for POLY_OPA, POLY_XLU, OVERLAY_DISP
    lw      a0, 0x0000(t6)             # a0 = Graphics Context
    jal     func_80803720              # Initializes variables used to run the Title Screen cutscene
    lw      a0, 0x0018($sp)            # a0 = Global Context
    jal     func_8080378C
    lw      a0, 0x0018($sp)            # a0 = Global Context
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808037DC:
# Deconstructor function
# A0 = Global Context
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_808037E8:
# Constructor function
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = Global Context
    lui     t7, 0x8012
    lw      t7, -0x4600(t7)            # t7 = *(8011BA00) = Static Context
    addiu   t6, $zero, 0x0001          # t6 = 1
    or      a0, a2, $zero              # a0 = Global Context
    sh      t6, 0x0110(t7)             # Set target framerate to 60Hz/value (Static Context + 0x110 = 1)
    jal     func_800AA6B0              # Allocate a 0x500 byte Float Matrix Stack
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   a0, a2, 0x00A8             # a0 = Global Context + 0xA8
    jal     func_80091858              # Initializes the "VIEW" variables
    lw      a1, 0x0000(a2)             # a1 = Graphics Context
    lw      a2, 0x0018($sp)
    lui     t8, %hi(func_80803798)
    lui     t9, %hi(func_808037DC)
    addiu   t8, t8, %lo(func_80803798) # t8 = 80803798 (Title Screen game state Main Update function)
    addiu   t9, t9, %lo(func_808037DC) # t9 = 808037DC (Title Screen game state Deconstructor function)
    sw      t8, 0x0004(a2)             # Set the new Game State Main Update to the Title Screen one (Global Context + 0x04)
    sw      t9, 0x0008(a2)             # Set the new Game State Deconstructor to the Title Screen one (Global Context + 0x08)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop

.section .data

.section .rodata
