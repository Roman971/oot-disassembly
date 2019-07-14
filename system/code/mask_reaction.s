# "Mask Reaction" part of the code file
#
# Handles NPCs' reaction dialog to the different masks.
#
# List of mask reaction text ids and their content:
# - https://wiki.cloudmodding.com/oot/Text_Ids_(7000)#71xx_Mask_dialogs
#
# Starts at VRAM: 800597C0 / VROM: ACF720
#

.section .text
func_800597C0:
# Get NPC Mask Reaction
# A0 = Global Context
# A1 = ?
# V0 = Lookup Result
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_80079B44
    nop
    lw      t6, 0x001C($sp)
    sll     t8, v0,  1
    lui     v0, 0x800F                 # v0 = 800F0000
    sll     t7, t6,  3
    addu    t7, t7, t6
    sll     t7, t7,  1
    addu    t9, t7, t8
    addu    v0, v0, t9
    lhu     v0, 0x0F00(v0)             # 800F0F00
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
