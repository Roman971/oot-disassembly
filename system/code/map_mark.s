# "Map Markers" part of the code file
#
# Handles the pause menu map markers/icons.
#
# General Documentation about maps:
# https://wiki.cloudmodding.com/oot/Maps
#
# Starts at VRAM: 80066DF0 / VROM: ADCD50
#

.section .text
func_80066DF0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x1BF8             # v0 = 800F1BF8
    sw      $ra, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x0010(v0)             # 800F1C08
    lw      t7, 0x000C(v0)             # 800F1C04
    addiu   a0, a2, 0x0074             # a0 = 00000074
    jal     func_800A01B8
    subu    a1, t6, t7
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, 0x1BF8($at)            # 800F1BF8
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     a1, 0x800F                 # a1 = 800F0000
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    lw      a3, 0x1C08(a3)             # 800F1C08
    lw      a2, 0x1C04(a2)             # 800F1C04
    lw      a1, 0x1C00(a1)             # 800F1C00
    lw      a0, 0x1BFC(a0)             # 800F1BFC
    jal     func_800CCBB8
    sw      v0, 0x0010($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    lw      v1, 0x1C0C(v1)             # 800F1C0C
    lui     a0, 0x8012                 # a0 = 80120000
    lui     t8, 0x8086                 # t8 = 80860000
    addiu   a0, a0, 0xBF00             # a0 = 8011BF00
    addiu   t8, t8, 0xD2DC             # t8 = 8085D2DC
    beq     v1, $zero, lbl_80066E84
    sw      t8, 0x0000(a0)             # 8011BF00
    lui     t9, 0x800F                 # t9 = 800F0000
    lui     t0, 0x800F                 # t0 = 800F0000
    lw      t0, 0x1BF8(t0)             # 800F1BF8
    lw      t9, 0x1C04(t9)             # 800F1C04
    subu    t1, t9, t0
    b       lbl_80066E88
    subu    v0, v1, t1
lbl_80066E84:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80066E88:
    sw      v0, 0x0000(a0)             # 8011BF00
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, 0x1220(v1)             # 80121220
    beql    v1, $zero, lbl_80066EB4
    lw      $ra, 0x001C($sp)
    lw      v0, 0x002C(v1)             # 8012002C
    beql    v0, $zero, lbl_80066EB4
    lw      $ra, 0x001C($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x001C($sp)
lbl_80066EB4:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80066EC0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_80066EF4
    nop
    lw      v1, 0x0030(v0)             # 80120030
    lui     a0, 0x8012                 # a0 = 80120000
    beq     v1, $zero, lbl_80066EF4
    nop
    jalr    $ra, v1
    addiu   a0, a0, 0xBF00             # a0 = 8011BF00
lbl_80066EF4:
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, 0x1BF8($at)         # 800F1BF8
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x4100($at)        # 8011BF00
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80066F14:
# Draw minimap icons?
# parameter_static minimap chest icon related.
# A0 = Global Context
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x40F0(v1)            # 8011BF10
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x462E(v0)            # 8011B9D2
    beq     v1, $zero, lbl_80066F74
    lui     t6, 0x0001                 # t6 = 00010000
    lw      t7, 0x001C(v1)             # 8012001C
    addu    t6, t6, a0
    lh      t6, 0x074C(t6)             # 0001074C
    addu    t8, t7, v0
    lbu     t9, 0x0000(t8)             # 00000000
    slt     $at, t6, t9
    beq     $at, $zero, lbl_800673C0
lbl_80066F74:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v1, a0, $at
    lh      t6, 0x025C(v1)             # 8012025C
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4100(t4)            # 8011BF00
    sll     t5, v0,  2
    sll     t9, t6,  3
    subu    t9, t9, t6
    addu    t7, t4, t5
    lw      t8, 0x0000(t7)             # 00000000
    sll     t9, t9,  3
    addu    t9, t9, t6
    sll     t9, t9,  1
    addu    s3, t8, t9
    lw      s0, 0x0000(a0)             # 00000000
    lui     s8, 0x800F                 # s8 = 800F0000
    lui     s5, 0x800F                 # s5 = 800F0000
    addiu   s5, s5, 0x1B60             # s5 = 800F1B60
    addiu   s8, s8, 0x1BB0             # s8 = 800F1BB0
    sw      a0, 0x00B8($sp)
    sw      v1, 0x0044($sp)
    lui     s7, 0x0700                 # s7 = 07000000
    lui     s6, 0xF500                 # s6 = F5000000
    lui     s4, 0xE700                 # s4 = E7000000
lbl_80066FD8:
    lb      t4, 0x0000(s3)             # 00000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    t4, $at, lbl_800673C4
    lw      $ra, 0x003C($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 80120008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 80120004
    sw      s4, 0x0000(v0)             # 80120000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1001             # t6 = E3001001
    addiu   t7, v0, 0x0008             # t7 = 80120008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 80120004
    sw      t6, 0x0000(v0)             # 80120000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    addiu   t8, v0, 0x0008             # t8 = 80120008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0000(v0)             # 80120000
    lw      t4, 0x0044($sp)
    lhu     t5, 0x0254(t4)             # 80120254
    andi    t7, t5, 0x00FF             # t7 = 00000008
    or      t6, t7, $at                # t6 = FFFFFF08
    sw      t6, 0x0004(v0)             # 80120004
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xFB00                 # t9 = FB000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   t8, v0, 0x0008             # t8 = 80120008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0000(v0)             # 80120000
    lw      t4, 0x0044($sp)
    lhu     t5, 0x0254(t4)             # 80120254
    andi    t7, t5, 0x00FF             # t7 = 00000008
    sw      t7, 0x0004(v0)             # 80120004
    lbu     t6, 0x0001(s3)             # 00000001
    addiu   s1, s3, 0x0002             # s1 = 00000002
    blez    t6, lbl_800673B8
    nop
    lb      a2, 0x0000(s3)             # 00000000
lbl_80067080:
    lw      a0, 0x00B8($sp)
    bnel    a2, $zero, lbl_800670A4
    sll     t8, a2,  3
    jal     func_8002060C
    lb      a1, 0x0000(s1)             # 00000002
    bnel    v0, $zero, lbl_800673A4
    lbu     t6, 0x0001(s3)             # 00000001
    lb      a2, 0x0000(s3)             # 00000000
    sll     t8, a2,  3
lbl_800670A4:
    addu    t8, t8, a2
    sll     t8, t8,  2
    addu    v1, s8, t8
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t1, $zero, 0x07FF          # t1 = 000007FF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     $at, 0xFD00                # $at = FD000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    lw      t5, 0x0008(v1)             # 00000008
    sll     t7, t5,  2
    addu    t6, s5, t7
    lw      t8, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(v1)             # 00000004
    andi    t9, t8, 0x0003             # t9 = 00000000
    sll     t4, t9, 19
    andi    t6, t7, 0x0007             # t6 = 00000000
    sll     t8, t6, 21
    or      t5, t4, $at                # t5 = FD000008
    or      t9, t5, t8                 # t9 = FD000008
    sw      t9, 0x0000(v0)             # 00000000
    lw      t4, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    lw      t6, 0x0008(v1)             # 00000008
    sll     t5, t6,  2
    addu    t8, s5, t5
    lw      t9, 0x0000(t8)             # 00000000
    lw      t5, 0x0004(v1)             # 00000004
    sw      s7, 0x0004(v0)             # 00000004
    andi    t4, t9, 0x0003             # t4 = 00000000
    sll     t7, t4, 19
    andi    t8, t5, 0x0007             # t8 = 00000000
    sll     t9, t8, 21
    or      t6, t7, s6                 # t6 = F5000008
    or      t4, t6, t9                 # t4 = FD000008
    sw      t4, 0x0000(v0)             # 00000000
    lw      a1, 0x02B0(s0)             # 000002B0
    lui     t5, 0xE600                 # t5 = E6000000
    addiu   t7, a1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(a1)          # 00000004
    sw      t5, 0x0000(a1)             # 00000000
    lw      t3, 0x02B0(s0)             # 000002B0
    lui     t6, 0xF300                 # t6 = F3000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t8, t3, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t6, 0x0000(t3)             # 00000000
    lw      t9, 0x0010(v1)             # 00000010
    lw      a2, 0x000C(v1)             # 0000000C
    lw      a0, 0x0008(v1)             # 00000008
    lui     t8, 0x800F                 # t8 = 800F0000
    multu   a2, t9
    sll     a0, a0,  2
    addu    t7, t7, a0
    lw      t7, 0x1B70(t7)             # 800F1B70
    addu    t8, t8, a0
    lw      t8, 0x1B80(t8)             # 800F1B80
    lui     t6, 0x800F                 # t6 = 800F0000
    addu    t6, t6, a0
    mflo    t4
    addu    t5, t4, t7
    srlv    t0, t5, t8
    addiu   t0, t0, 0xFFFF             # t0 = FFFFFFFF
    sltiu   $at, t0, 0x07FF
    beq     $at, $zero, lbl_800671D4
    nop
    b       lbl_800671D4
    or      t1, t0, $zero              # t1 = FFFFFFFF
lbl_800671D4:
    lw      t6, 0x1B90(t6)             # 800F1B90
    andi    t8, t1, 0x0FFF             # t8 = 00000FFF
    multu   t6, a2
    sll     t6, t8, 12
    mflo    v0
    srl     v0, v0,  3
    bne     v0, $zero, lbl_800671FC
    or      t2, v0, $zero              # t2 = 00000000
    b       lbl_800671FC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
lbl_800671FC:
    bne     v0, $zero, lbl_8006720C
    addiu   t9, t2, 0x07FF             # t9 = 00000800
    b       lbl_80067210
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8006720C:
    or      a3, v0, $zero              # a3 = 00000000
lbl_80067210:
    divu    $zero, t9, a3
    mflo    t4
    andi    t7, t4, 0x0FFF             # t7 = 00000008
    or      t5, t7, s7                 # t5 = 07000008
    or      t9, t5, t6                 # t9 = 870F0008
    sw      t9, 0x0004(t3)             # 00000004
    bne     a3, $zero, lbl_80067234
    nop
    break   # 0x01C00
lbl_80067234:
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    lw      a0, 0x0008(v1)             # 00000008
    lw      t5, 0x000C(v1)             # 0000000C
    sll     a0, a0,  2
    addu    t8, t8, a0
    lw      t8, 0x1BA0(t8)             # 800F1BA0
    multu   t8, t5
    mflo    t6
    addiu   t9, t6, 0x0007             # t9 = 800F0007
    srl     t4, t9,  3
    andi    t7, t4, 0x01FF             # t7 = 00000008
    sll     t8, t7,  9
    or      t5, t8, s6                 # t5 = F50F0000
    lw      t6, 0x0004(v1)             # 00000004
    lui     t8, 0x800F                 # t8 = 800F0000
    addu    t8, t8, a0
    lw      t8, 0x1B50(t8)             # 800F1B50
    andi    t9, t6, 0x0007             # t9 = 00000000
    sll     t4, t9, 21
    andi    t6, t8, 0x0003             # t6 = 00000000
    sll     t9, t6, 19
    or      t7, t5, t4                 # t7 = F50F0008
    or      t5, t7, t9                 # t5 = F50F0008
    sw      t5, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0xF200                 # t8 = F2000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t6, 0x000C(v1)             # 0000000C
    lw      t8, 0x0010(v1)             # 00000010
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sll     t9, t7,  2
    andi    t5, t9, 0x0FFF             # t5 = 00000000
    addiu   t6, t8, 0xFFFF             # t6 = F1FFFFFF
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000FFF
    sll     t4, t5, 12
    or      t5, t4, t9                 # t5 = 00000FFF
    sw      t5, 0x0004(v0)             # 00000004
    lbu     a0, 0x0001(s1)             # 00000003
    lbu     a1, 0x0002(s1)             # 00000004
    addiu   a0, a0, 0x00CC             # a0 = 000000CC
    addiu   a1, a1, 0x008C             # a1 = 0000008C
    sll     a0, a0,  2
    sll     a1, a1,  2
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    lw      t6, 0x0014(v1)             # 00000014
    lw      t8, 0x0018(v1)             # 00000018
    addu    t7, t6, a0
    andi    t4, t7, 0x0FFF             # t4 = 00000FFF
    sll     t9, t4, 12
    addu    t6, a1, t8
    andi    t7, t6, 0x0FFF             # t7 = 00000FFF
    or      t5, t9, $at                # t5 = E4000FFF
    andi    t9, a0, 0x0FFF             # t9 = 000000CC
    sll     t8, t9, 12
    or      t4, t5, t7                 # t4 = E4000FFF
    andi    t6, a1, 0x0FFF             # t6 = 0000008C
    or      t5, t8, t6                 # t5 = 0000008C
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t4, 0xE100                 # t4 = E1000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0000(v0)             # 00000000
    lw      t4, 0x0020(v1)             # 00000020
    lw      t5, 0x001C(v1)             # 0000001C
    andi    t9, t4, 0xFFFF             # t9 = 00000000
    sll     t7, t5, 16
    or      t8, t7, t9                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lbu     t6, 0x0001(s3)             # 00000001
lbl_800673A4:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s1, s1, 0x0003             # s1 = 00000005
    slt     $at, s2, t6
    bnel    $at, $zero, lbl_80067080
    lb      a2, 0x0000(s3)             # 00000000
lbl_800673B8:
    b       lbl_80066FD8
    addiu   s3, s3, 0x0026             # s3 = 00000026
lbl_800673C0:
    lw      $ra, 0x003C($sp)
lbl_800673C4:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    lw      s7, 0x0034($sp)
    lw      s8, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_800673F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x00A4(a0)             # 000000A4
    sltiu   $at, t6, 0x0016
    beq     $at, $zero, lbl_80067424
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x7AA0($at)            # 80107AA0
    jr      t6
lbl_8006741C:
    nop
    jal     func_80066F14
    nop
lbl_80067424:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop
