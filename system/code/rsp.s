# "Reality Signal Processor Util" part of the code file
#
# The purpose of this file's content is unclear but it supposedly provides RSP microcode util functions.
#
# Starts at VRAM: 800ACAB0 / VROM: B22A10
#

.section .text
func_800ACAB0:
# Returns some RSP microcode start ptr
# V0 = 800060B0
    lui     v0, 0x8000                 # v0 = 80000000
    addiu   v0, v0, 0x60B0             # v0 = 800060B0
    jr      $ra
    nop


func_800ACAC0:
# Returns some RSP microcode size
# V0 = 80006210 - 800060B0 = 0x160
    lui     t6, 0x8000                 # t6 = 80000000
    lui     t7, 0x8000                 # t7 = 80000000
    addiu   t7, t7, 0x60B0             # t7 = 800060B0
    addiu   t6, t6, 0x6210             # t6 = 80006210
    subu    v0, t6, t7
    jr      $ra
    nop


func_800ACADC:
# Returns some RSP microcode data
# lw V0, 800FEE30
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x11D0(v0)            # 800FEE30
    jr      $ra
    nop


func_800ACAEC:
# Returns some RSP microcode data
# lw V0, 800FEE34
    lui     v0, 0x8010                 # v0 = 80100000
    lw      v0, -0x11CC(v0)            # 800FEE34
    jr      $ra
    nop
    nop
