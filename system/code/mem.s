# "Memory Util" part of the code file
#
# Generic functions to manipulate memory blocks.
#
# Starts at VRAM: 80057030 / VROM: ACCF90
#

.section .text
func_80057030:
# Copy bytes (Cutscenes?)
# A0 = Copy to Address
# A1 = Copy from Address
# A2 = Bytes to copy
# V0 = Address copied to
    or      v0, a0, $zero              # v0 = 00000000
    blez    a2, lbl_80057054
    or      v1, a1, $zero              # v1 = 00000000
lbl_8005703C:
    lbu     t6, 0x0000(v1)             # 00000000
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bgtz    a2, lbl_8005703C
    sb      t6, -0x0001(v0)            # 00000000
lbl_80057054:
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop


func_80057060:
    or      v0, a0, $zero              # v0 = 00000000
    blez    a2, lbl_800570AC
    or      v1, a2, $zero              # v1 = 00000000
    andi    t0, a2, 0x0003             # t0 = 00000000
    subu    t0, $zero, t0
    beq     t0, $zero, lbl_80057090
    addu    a3, t0, a2
lbl_8005707C:
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFF
    sb      a1, 0x0000(v0)             # 00000000
    bne     a3, v1, lbl_8005707C
    addiu   v0, v0, 0x0001             # v0 = 00000001
    beq     v1, $zero, lbl_800570AC
lbl_80057090:
    addiu   v1, v1, 0xFFFC             # v1 = FFFFFFFB
    sb      a1, 0x0001(v0)             # 00000002
    sb      a1, 0x0002(v0)             # 00000003
    sb      a1, 0x0003(v0)             # 00000004
    addiu   v0, v0, 0x0004             # v0 = 00000005
    bne     v1, $zero, lbl_80057090
    sb      a1, -0x0004(v0)            # 00000001
lbl_800570AC:
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    nop
    nop
    nop
