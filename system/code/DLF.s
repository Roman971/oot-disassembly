# "Dynamically Linked File" part of the code file
#
# The purpose of this file's content is unclear but it supposedly handles loading and freeing dynamic overlay states.
#
# Starts at VRAM: 8001E9D0 / VROM: A94930
#

.section .text
func_8001E9D0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0000(s0)             # 00000000
    bnel    t6, $zero, lbl_8001EAE8
    lw      $ra, 0x001C($sp)
    lw      a2, 0x000C(s0)             # 0000000C
    bnel    a2, $zero, lbl_8001EA04
    lw      a0, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_8001EAE4
    sw      $zero, 0x0028(s0)          # 00000028
    lw      a0, 0x0004(s0)             # 00000004
lbl_8001EA04:
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_800CCD38
    lw      a3, 0x0010(s0)             # 00000010
    beq     v0, $zero, lbl_8001EAE4
    sw      v0, 0x0000(s0)             # 00000000
    lw      v0, 0x0014(s0)             # 00000014
    beql    v0, $zero, lbl_8001EA40
    sw      $zero, 0x0014(s0)          # 00000014
    lw      t7, 0x000C(s0)             # 0000000C
    lw      t8, 0x0000(s0)             # 00000000
    subu    t9, t7, t8
    subu    t0, v0, t9
    beq     $zero, $zero, lbl_8001EA40
    sw      t0, 0x0014(s0)             # 00000014
    sw      $zero, 0x0014(s0)          # 00000014
lbl_8001EA40:
    lw      v0, 0x0018(s0)             # 00000018
    beql    v0, $zero, lbl_8001EA68
    sw      $zero, 0x0018(s0)          # 00000018
    lw      t1, 0x000C(s0)             # 0000000C
    lw      t2, 0x0000(s0)             # 00000000
    subu    t3, t1, t2
    subu    t4, v0, t3
    beq     $zero, $zero, lbl_8001EA68
    sw      t4, 0x0018(s0)             # 00000018
    sw      $zero, 0x0018(s0)          # 00000018
lbl_8001EA68:
    lw      v0, 0x001C(s0)             # 0000001C
    beql    v0, $zero, lbl_8001EA90
    sw      $zero, 0x001C(s0)          # 0000001C
    lw      t5, 0x000C(s0)             # 0000000C
    lw      t6, 0x0000(s0)             # 00000000
    subu    t7, t5, t6
    subu    t8, v0, t7
    beq     $zero, $zero, lbl_8001EA90
    sw      t8, 0x001C(s0)             # 0000001C
    sw      $zero, 0x001C(s0)          # 0000001C
lbl_8001EA90:
    lw      v0, 0x0020(s0)             # 00000020
    beql    v0, $zero, lbl_8001EAB8
    sw      $zero, 0x0020(s0)          # 00000020
    lw      t9, 0x000C(s0)             # 0000000C
    lw      t0, 0x0000(s0)             # 00000000
    subu    t1, t9, t0
    subu    t2, v0, t1
    beq     $zero, $zero, lbl_8001EAB8
    sw      t2, 0x0020(s0)             # 00000020
    sw      $zero, 0x0020(s0)          # 00000020
lbl_8001EAB8:
    lw      v0, 0x0024(s0)             # 00000024
    beql    v0, $zero, lbl_8001EAE0
    sw      $zero, 0x0024(s0)          # 00000024
    lw      t3, 0x000C(s0)             # 0000000C
    lw      t4, 0x0000(s0)             # 00000000
    subu    t5, t3, t4
    subu    t6, v0, t5
    beq     $zero, $zero, lbl_8001EAE0
    sw      t6, 0x0024(s0)             # 00000024
    sw      $zero, 0x0024(s0)          # 00000024
lbl_8001EAE0:
    sw      $zero, 0x0028(s0)          # 00000028
lbl_8001EAE4:
    lw      $ra, 0x001C($sp)
lbl_8001EAE8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8001EAF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lw      a2, 0x0000(a1)             # 00000000
    beql    a2, $zero, lbl_8001EC10
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0028(a1)             # 00000028
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t6, $zero, lbl_8001EB28
    nop
    beq     $zero, $zero, lbl_8001EB28
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8001EB28:
    bnel    v0, $zero, lbl_8001EC10
    lw      $ra, 0x0014($sp)
    lw      v0, 0x0014(a1)             # 00000014
    beql    v0, $zero, lbl_8001EB54
    sw      $zero, 0x0014(a1)          # 00000014
    lw      t7, 0x000C(a1)             # 0000000C
    subu    t8, t7, a2
    addu    t9, v0, t8
    beq     $zero, $zero, lbl_8001EB54
    sw      t9, 0x0014(a1)             # 00000014
    sw      $zero, 0x0014(a1)          # 00000014
lbl_8001EB54:
    lw      v0, 0x0018(a1)             # 00000018
    beql    v0, $zero, lbl_8001EB7C
    sw      $zero, 0x0018(a1)          # 00000018
    lw      t0, 0x000C(a1)             # 0000000C
    lw      t1, 0x0000(a1)             # 00000000
    subu    t2, t0, t1
    addu    t3, v0, t2
    beq     $zero, $zero, lbl_8001EB7C
    sw      t3, 0x0018(a1)             # 00000018
    sw      $zero, 0x0018(a1)          # 00000018
lbl_8001EB7C:
    lw      v0, 0x001C(a1)             # 0000001C
    beql    v0, $zero, lbl_8001EBA4
    sw      $zero, 0x001C(a1)          # 0000001C
    lw      t4, 0x000C(a1)             # 0000000C
    lw      t5, 0x0000(a1)             # 00000000
    subu    t6, t4, t5
    addu    t7, v0, t6
    beq     $zero, $zero, lbl_8001EBA4
    sw      t7, 0x001C(a1)             # 0000001C
    sw      $zero, 0x001C(a1)          # 0000001C
lbl_8001EBA4:
    lw      v0, 0x0020(a1)             # 00000020
    beql    v0, $zero, lbl_8001EBCC
    sw      $zero, 0x0020(a1)          # 00000020
    lw      t8, 0x000C(a1)             # 0000000C
    lw      t9, 0x0000(a1)             # 00000000
    subu    t0, t8, t9
    addu    t1, v0, t0
    beq     $zero, $zero, lbl_8001EBCC
    sw      t1, 0x0020(a1)             # 00000020
    sw      $zero, 0x0020(a1)          # 00000020
lbl_8001EBCC:
    lw      v0, 0x0024(a1)             # 00000024
    beql    v0, $zero, lbl_8001EBF4
    sw      $zero, 0x0024(a1)          # 00000024
    lw      a2, 0x0000(a1)             # 00000000
    lw      t2, 0x000C(a1)             # 0000000C
    subu    t3, t2, a2
    addu    t4, v0, t3
    beq     $zero, $zero, lbl_8001EBF8
    sw      t4, 0x0024(a1)             # 00000024
    sw      $zero, 0x0024(a1)          # 00000024
lbl_8001EBF4:
    lw      a2, 0x0000(a1)             # 00000000
lbl_8001EBF8:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800CDB00
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      $zero, 0x0000(a1)          # 00000000
    lw      $ra, 0x0014($sp)
lbl_8001EC10:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
