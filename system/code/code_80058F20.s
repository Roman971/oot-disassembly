# Unknown part of the code file
#
# The purpose of this file's content is currently unknown until further investigation.
#
# Starts at VRAM: 80058F20 / VROM: ACEE80
#

.section .text
func_80058F20:
    addiu   v1, a0, 0x1DB4             # v1 = 00001DB4
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80058F2C:
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sh      $zero, 0x0000(v1)          # 00001DB4
    sh      $zero, 0x001C(v1)          # 00001DD0
    sh      $zero, 0x0038(v1)          # 00001DEC
    sh      $zero, 0x0054(v1)          # 00001E08
    bne     v0, a0, lbl_80058F2C
    addiu   v1, v1, 0x0070             # v1 = 00001E24
    jr      $ra
    nop


func_80058F50:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x0020($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     s4, 0x0001                 # s4 = 00010000
    addiu   s0, s2, 0x1DB4             # s0 = 00001DB4
    ori     s4, s4, 0x1D60             # s4 = 00011D60
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $zero, 0x0010          # s3 = 00000010
lbl_80058F84:
    lhu     v0, 0x0000(s0)             # 00001DB4
    beql    v0, $zero, lbl_80058FD0
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     v0, $zero, lbl_80058FA0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80058FA8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80058FA0:
    sh      t6, 0x0000(s0)             # 00001DB4
    andi    v1, t6, 0xFFFF             # v1 = 0000FFFF
lbl_80058FA8:
    bne     v1, $zero, lbl_80058FC0
    addu    a0, s2, s4
    jal     func_800C9568
    addiu   a0, s0, 0x0010             # a0 = 00001DC4
    beq     $zero, $zero, lbl_80058FD0
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_80058FC0:
    addiu   a1, s0, 0x0004             # a1 = 00001DB8
    jal     func_8008ED08
    addiu   a2, s0, 0x0010             # a2 = 00001DC4
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_80058FD0:
    bne     s1, s3, lbl_80058F84
    addiu   s0, s0, 0x001C             # s0 = 00001DD0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80058FF8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      t0, 0x0038($sp)
    ori     t2, $zero, 0xFFFF          # t2 = 0000FFFF
    or      t1, $zero, $zero           # t1 = 00000000
    lw      a1, 0x0028($sp)
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    addiu   t0, t0, 0x1DB4             # t0 = 00001DB4
lbl_80059028:
    lhu     v0, 0x0000(t0)             # 00001DB4
    beq     v0, $zero, lbl_8005904C
    slt     $at, v0, t2
    beq     $at, $zero, lbl_80059044
    addiu   t1, t1, 0x0001             # t1 = 00000001
    or      t2, v0, $zero              # t2 = 00000000
    or      a1, t0, $zero              # a1 = 00001DB4
lbl_80059044:
    bne     t1, a0, lbl_80059028
    addiu   t0, t0, 0x001C             # t0 = 00001DD0
lbl_8005904C:
    slti    $at, t1, 0x0010
    bne     $at, $zero, lbl_80059064
    addiu   a0, a1, 0x0010             # a0 = 00001DC4
    jal     func_800C9568
    sw      a1, 0x0030($sp)
    lw      t0, 0x0030($sp)
lbl_80059064:
    lw      t6, 0x003C($sp)
    addiu   a1, t0, 0x0004             # a1 = 00000004
    lui     $at, 0x0001                # $at = 00010000
    lw      t8, 0x0000(t6)             # 00000000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   a2, t0, 0x0010             # a2 = 00000010
    sw      t8, 0x0000(a1)             # 00000004
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a1)             # 00000008
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(a1)             # 0000000C
    lw      t9, 0x0040($sp)
    sh      t9, 0x0000(t0)             # 00000000
    lw      a0, 0x0038($sp)
    sw      a2, 0x0020($sp)
    jal     func_8008ED08
    addu    a0, a0, $at
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    sw      a3, 0x0010($sp)
    lhu     a0, 0x0046($sp)
    lw      a1, 0x0020($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
