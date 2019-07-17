# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 80067500 / VROM: ADD460
#

.section .text
func_80067500:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      $ra, 0x0014($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFF80
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      $zero, 0x0038($sp)
    sw      t6, 0x0040($sp)
    sw      a0, 0x0088($sp)
    sw      $zero, 0x008C($sp)
    sw      $zero, 0x0044($sp)
    sw      $zero, 0x0048($sp)
    addiu   a1, $sp, 0x001C            # a1 = FFFFFF7C
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD2E0             # a0 = 8011D2E0
    addiu   a1, $sp, 0x0038            # a1 = FFFFFF98
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A3644
    addiu   a0, a0, 0xD2A8             # a0 = 8011D2A8
    addiu   a0, $sp, 0x0020            # a0 = FFFFFF80
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0
    jr      $ra
    nop
    nop
    nop
    nop
