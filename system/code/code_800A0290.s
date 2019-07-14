# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 800A0290 / VROM: B161F0
#

.section .text
func_800A0290:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     s0, 0x8010                 # s0 = 80100000
    lui     s1, 0x8010                 # s1 = 80100000
    addiu   s1, s1, 0xE4E7             # s1 = 800FE4E7
    addiu   s0, s0, 0xE4E0             # s0 = 800FE4E0
lbl_800A02B0:
    jal     func_800C9320
    lbu     a0, 0x0000(s0)             # 800FE4E0
    addiu   s0, s0, 0x0001             # s0 = 800FE4E1
    sltu    $at, s0, s1
    bne     $at, $zero, lbl_800A02B0
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    nop
