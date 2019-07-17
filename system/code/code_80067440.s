# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 80067440 / VROM: ADD3A0
#

.section .text
func_80067440:
# PreNMI?
# A0 = osAppNMIBuffer ptr
    sw      $zero, 0x0000(a0)          # 00000000
    lui     t6, 0x8000                 # t6 = 80000000
    lw      t6, 0x030C(t6)             # 8000030C
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    bnel    t6, $zero, lbl_80067470
    lw      t7, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(a0)          # 00000004
    sw      t8, 0x0008(a0)             # 00000008
    beq     $zero, $zero, lbl_800674A0
    sw      t9, 0x000C(a0)             # 0000000C
    lw      t7, 0x0004(a0)             # 00000004
lbl_80067470:
    lw      t3, 0x000C(a0)             # 0000000C
    lw      t5, 0x0014(a0)             # 00000014
    lw      t2, 0x0008(a0)             # 00000008
    addiu   t0, t7, 0x0001             # t0 = 00000001
    lw      t4, 0x0010(a0)             # 00000010
    addu    t7, t3, t5
    sltu    $at, t7, t5
    addu    t6, $at, t2
    addu    t6, t6, t4
    sw      t0, 0x0004(a0)             # 00000004
    sw      t6, 0x0008(a0)             # 00000008
    sw      t7, 0x000C(a0)             # 0000000C
lbl_800674A0:
    addiu   t8, $zero, 0x0000          # t8 = 00000000
    addiu   t9, $zero, 0x0000          # t9 = 00000000
    sw      t9, 0x0014(a0)             # 00000014
    sw      t8, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_800674B8:
# PreNMI, Save Time to osAppNMIBuffer
# A0 = osAppNMIBuffer ptr
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t7, 0x0018($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_800048C0              # osGetTime
    sw      t6, 0x0000(t7)             # 00000000
    lw      t8, 0x0018($sp)
    sw      v0, 0x0010(t8)             # 00000010
    sw      v1, 0x0014(t8)             # 00000014
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800674EC:
    lw      v0, 0x0000(a0)             # 00000000
    jr      $ra
    nop
    nop
    nop
