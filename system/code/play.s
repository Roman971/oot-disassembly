# "Play" part of the code file
#
# Handles normal gameplay (as opposed to cutscenes or the pause screen).
#
# Starts at VRAM: 8009A170 / VROM: B100D0
#

.section .text
func_8009A170:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x07A0(a2)             # 000007A0
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a2
    lbu     a1, 0x242B(a1)             # 0001242B
    sll     t7, t6,  2
    addu    t8, a2, t7
    lw      a0, 0x0790(t8)             # 00000790
    jal     func_800495E8
    addiu   a1, a1, 0xFFFF             # a1 = 0000FFFF
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009A1B0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     t7, 0x8012                 # t7 = 80120000
    addu    $at, $at, t6
    sb      a1, 0x242B($at)            # 0001242B
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lui     t9, 0x8012                 # t9 = 80120000
    lh      t8, 0x04B2(t7)             # 801204B2
    beq     t8, $at, lbl_8009A244
    nop
    lw      t9, -0x5A28(t9)            # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    lui     a3, 0x8010                 # a3 = 80100000
    slt     $at, t9, $at
    beq     $at, $zero, lbl_8009A244
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_8009A220
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    beq     $zero, $zero, lbl_8009A224
    addiu   v0, $zero, 0x4814          # v0 = 00004814
lbl_8009A220:
    addiu   v0, $zero, 0x4813          # v0 = 00004813
lbl_8009A224:
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    andi    a0, v0, 0xFFFF             # a0 = 00004813
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_8009A244:
    jal     func_8009A170
    lw      a0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009A25C:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x242B(t6)             # 0001242B
    xor     v0, a1, t6
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_8009A284:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   $at, $zero, 0x0010         # $at = 00000010
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lh      t7, 0x04B2(t6)             # 801204B2
    bne     t7, $at, lbl_8009A2A8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t8, 0x242B($at)            # 0001242B
lbl_8009A2A8:
    jr      $ra
    nop


func_8009A2B0:
# Initialize Transition Animation
# Jump Table at 80108CE8, 0x50 bytes, handles transition animations 0x00 to 0x13
# A0 = Global Context
# A1 = Transition Animation
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x21C8           # $at = 000121C8
    addu    a0, a2, $at
    sw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x0250          # a1 = 00000250
    jal     func_80002E80              # bzero
    sw      a2, 0x0020($sp)
    lw      v0, 0x0024($sp)
    lw      a0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t6, v0,  5
    bne     t6, $at, lbl_8009A368
    sw      v0, 0x0228(a0)             # 00000228
    lui     t7, 0x800A                 # t7 = 800A0000
    lui     t8, 0x800A                 # t8 = 800A0000
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x800A                 # t0 = 800A0000
    lui     t1, 0x800A                 # t1 = 800A0000
    lui     t2, 0x800A                 # t2 = 800A0000
    lui     t3, 0x800A                 # t3 = 800A0000
    lui     t4, 0x800A                 # t4 = 800A0000
    lui     t5, 0x800A                 # t5 = 800A0000
    addiu   t7, t7, 0x8DEC             # t7 = 80098DEC
    addiu   t8, t8, 0x8E18             # t8 = 80098E18
    addiu   t9, t9, 0x8C00             # t9 = 80098C00
    addiu   t0, t0, 0x9244             # t0 = 80099244
    addiu   t1, t1, 0x8FA8             # t1 = 80098FA8
    addiu   t2, t2, 0x8E24             # t2 = 80098E24
    addiu   t3, t3, 0x9250             # t3 = 80099250
    addiu   t4, t4, 0x92A8             # t4 = 800992A8
    addiu   t5, t5, 0x92B4             # t5 = 800992B4
    sw      t7, 0x022C(a0)             # 0000022C
    sw      t8, 0x0230(a0)             # 00000230
    sw      t9, 0x023C(a0)             # 0000023C
    sw      t0, 0x024C(a0)             # 0000024C
    sw      t1, 0x0238(a0)             # 00000238
    sw      t2, 0x0234(a0)             # 00000234
    sw      t3, 0x0240(a0)             # 00000240
    sw      t4, 0x0244(a0)             # 00000244
    beq     $zero, $zero, lbl_8009A54C
    sw      t5, 0x0248(a0)             # 00000248
lbl_8009A368:
    lw      t6, 0x0228(a0)             # 00000228
    addiu   a1, $zero, 0x08D7          # a1 = 000008D7
    sltiu   $at, t6, 0x0014
    beq     $at, $zero, lbl_8009A540
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7318($at)           # 80108CE8
    jr      t6
    nop
    lui     t7, 0x800A                 # t7 = 800A0000
    lui     t8, 0x800A                 # t8 = 800A0000
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x800A                 # t0 = 800A0000
    lui     t1, 0x800A                 # t1 = 800A0000
    lui     t2, 0x800A                 # t2 = 800A0000
    lui     t3, 0x800A                 # t3 = 800A0000
    lui     t4, 0x800A                 # t4 = 800A0000
    addiu   t7, t7, 0x8218             # t7 = 80098218
    addiu   t8, t8, 0x82B8             # t8 = 800982B8
    addiu   t9, t9, 0x81E0             # t9 = 800981E0
    addiu   t0, t0, 0x8700             # t0 = 80098700
    addiu   t1, t1, 0x83FC             # t1 = 800983FC
    addiu   t2, t2, 0x82C4             # t2 = 800982C4
    addiu   t3, t3, 0x83E4             # t3 = 800983E4
    addiu   t4, t4, 0x83D8             # t4 = 800983D8
    sw      t7, 0x022C(a0)             # 0000022C
    sw      t8, 0x0230(a0)             # 00000230
    sw      t9, 0x023C(a0)             # 0000023C
    sw      t0, 0x024C(a0)             # 0000024C
    sw      t1, 0x0238(a0)             # 00000238
    sw      t2, 0x0234(a0)             # 00000234
    sw      t3, 0x0240(a0)             # 00000240
    sw      t4, 0x0244(a0)             # 00000244
    beq     $zero, $zero, lbl_8009A54C
    sw      $zero, 0x0248(a0)          # 00000248
    lui     t5, 0x800A                 # t5 = 800A0000
    lui     t6, 0x800A                 # t6 = 800A0000
    lui     t7, 0x800A                 # t7 = 800A0000
    lui     t8, 0x800A                 # t8 = 800A0000
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x800A                 # t0 = 800A0000
    lui     t1, 0x800A                 # t1 = 800A0000
    lui     t2, 0x800A                 # t2 = 800A0000
    addiu   t5, t5, 0x8848             # t5 = 80098848
    addiu   t6, t6, 0x8874             # t6 = 80098874
    addiu   t7, t7, 0x8790             # t7 = 80098790
    addiu   t8, t8, 0x8B9C             # t8 = 80098B9C
    addiu   t9, t9, 0x8960             # t9 = 80098960
    addiu   t0, t0, 0x8880             # t0 = 80098880
    addiu   t1, t1, 0x8BA8             # t1 = 80098BA8
    addiu   t2, t2, 0x8BE8             # t2 = 80098BE8
    sw      t5, 0x022C(a0)             # 0000022C
    sw      t6, 0x0230(a0)             # 00000230
    sw      t7, 0x023C(a0)             # 0000023C
    sw      t8, 0x024C(a0)             # 0000024C
    sw      t9, 0x0238(a0)             # 00000238
    sw      t0, 0x0234(a0)             # 00000234
    sw      t1, 0x0240(a0)             # 00000240
    sw      t2, 0x0244(a0)             # 00000244
    beq     $zero, $zero, lbl_8009A54C
    sw      $zero, 0x0248(a0)          # 00000248
    lui     t3, 0x800A                 # t3 = 800A0000
    lui     t4, 0x800A                 # t4 = 800A0000
    lui     t5, 0x800A                 # t5 = 800A0000
    lui     t6, 0x800A                 # t6 = 800A0000
    lui     t7, 0x800A                 # t7 = 800A0000
    lui     t8, 0x800A                 # t8 = 800A0000
    lui     t9, 0x800A                 # t9 = 800A0000
    lui     t0, 0x800A                 # t0 = 800A0000
    addiu   t3, t3, 0x931C             # t3 = 8009931C
    addiu   t4, t4, 0x9348             # t4 = 80099348
    addiu   t5, t5, 0x92C0             # t5 = 800992C0
    addiu   t6, t6, 0x95B0             # t6 = 800995B0
    addiu   t7, t7, 0x94E4             # t7 = 800994E4
    addiu   t8, t8, 0x9354             # t8 = 80099354
    addiu   t9, t9, 0x95C8             # t9 = 800995C8
    addiu   t0, t0, 0x95BC             # t0 = 800995BC
    sw      t3, 0x022C(a0)             # 0000022C
    sw      t4, 0x0230(a0)             # 00000230
    sw      t5, 0x023C(a0)             # 0000023C
    sw      t6, 0x024C(a0)             # 0000024C
    sw      t7, 0x0238(a0)             # 00000238
    sw      t8, 0x0234(a0)             # 00000234
    sw      t9, 0x0240(a0)             # 00000240
    sw      t0, 0x0244(a0)             # 00000244
    beq     $zero, $zero, lbl_8009A54C
    sw      $zero, 0x0248(a0)          # 00000248
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    beq     $zero, $zero, lbl_8009A54C
    sb      t1, 0x241B($at)            # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    beq     $zero, $zero, lbl_8009A54C
    sb      t2, 0x241B($at)            # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t3, $zero, 0x0007          # t3 = 00000007
    beq     $zero, $zero, lbl_8009A54C
    sb      t3, 0x241B($at)            # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    beq     $zero, $zero, lbl_8009A54C
    sb      t4, 0x241B($at)            # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t5, $zero, 0x000E          # t5 = 0000000E
    beq     $zero, $zero, lbl_8009A54C
    sb      t5, 0x241B($at)            # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    beq     $zero, $zero, lbl_8009A54C
    sb      t6, 0x241B($at)            # 0001241B
lbl_8009A540:
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800AF734
    addiu   a0, a0, 0x8CC0             # a0 = 80108CC0
lbl_8009A54C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009A55C:
# Set s32 Global Context + 0x123F0 to -1
# A0 = Global Context
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    sw      t6, 0x23F0($at)            # 000123F0
    jr      $ra
    nop


func_8009A574:
# Dlist draw, Write Fog Settings Wrapper Top
# (Wrapper for 8007DF4C)
# A0 = Global Context
# A1 = DList current ptr
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    addiu   t8, $zero, 0x03E8          # t8 = 000003E8
    lw      a0, 0x002C($sp)
    lbu     a1, 0x07AF(t6)             # 000007AF
    lbu     a2, 0x07B0(t6)             # 000007B0
    lbu     a3, 0x07B1(t6)             # 000007B1
    sw      $zero, 0x0010($sp)
    lh      t7, 0x07B2(t6)             # 000007B2
    sw      t8, 0x0018($sp)
    jal     func_8007DF4C
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009A5C0:
# Game Destructor?
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(s0)             # 00001C44
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    sw      t6, 0x0028($sp)
    lw      t7, 0x0000(s0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x2124           # $at = 00012124
    sw      $zero, 0x02EC(t7)          # 000002EC
    lw      t8, 0x0000(s0)             # 00000000
    addu    a0, s0, $at
    sw      $zero, 0x02F0(t8)          # 000002F0
    lw      t9, 0x0000(v0)             # 8011BA00
    sh      $zero, 0x018A(t9)          # 0000018A
    lw      t0, 0x0000(v0)             # 8011BA00
    jal     func_8009DD44
    sh      $zero, 0x0190(t0)          # 00000190
    jal     func_8001AF10
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001B0E4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at
    jal     func_8004BC68
    or      a0, s0, $zero              # a0 = 00000000
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x2EC0(t1)            # 8011D140
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t1, $at, lbl_8009A658
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80097C48
    addiu   a0, a0, 0xD060             # a0 = 8011D060
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
lbl_8009A658:
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, s0, $at
    sw      t2, 0x0024($sp)
    lbu     t4, 0x241B(t2)             # 0000241B
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t4, $at, lbl_8009A69C
    nop
    lw      t9, 0x23F8(t2)             # 000023F8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x21C8           # $at = 000121C8
    jalr    $ra, t9
    addu    a0, s0, $at
    jal     func_8009A55C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x241B($at)         # 0001241B
lbl_8009A69C:
    jal     func_80099680
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x241C           # $at = 0001241C
    jal     func_80099348
    addu    a0, s0, $at
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093B60
    addiu   a0, a0, 0xD148             # a0 = 8011D148
    lw      t6, 0x0024($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A2C(t5)            # 8011A5D4
    lbu     t7, 0x1DE8(t6)             # 00001DE8
    beql    t5, t7, lbl_8009A6F0
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    jal     func_8006F804
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80079764
    lw      a1, 0x0028($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
lbl_8009A6F0:
    jal     func_80024EE0
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800E1BF0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80099F28
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80099D7C
    nop
    jal     func_80066D9C
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_8009A740
    lw      $ra, 0x001C($sp)
    lw      v1, 0x0014(v0)             # 80120014
    beql    v1, $zero, lbl_8009A740
    lw      $ra, 0x001C($sp)
    jalr    $ra, v1
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_8009A740:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8009A750:
# "game_play" game state entrypoint
# dependent on ovl_opening executing
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s2, 0x0028($sp)
    lui     s2, 0x8012                 # s2 = 80120000
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s2, s2, 0xA5D0             # s2 = 8011A5D0
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0020($sp)
    lw      t6, 0x0000(s2)             # 8011A5D0
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    lw      s0, 0x0000(s1)             # 00000000
    bne     t6, $at, lbl_8009A7A8
    or      a0, s1, $zero              # a0 = 00000000
    sw      $zero, 0x0000(s2)          # 8011A5D0
    sw      $zero, 0x0098(s1)          # 00000098
    lui     t7, 0x8080                 # t7 = 80800000
    addiu   t7, t7, 0x37E8             # t7 = 808037E8
    addiu   t8, $zero, 0x01D0          # t8 = 000001D0
    sw      t8, 0x0010(s1)             # 00000010
    sw      t7, 0x000C(s1)             # 0000000C
    beq     $zero, $zero, lbl_8009AF08
    lw      $ra, 0x002C($sp)
lbl_8009A7A8:
    lui     a1, 0x001D                 # a1 = 001D0000
    jal     func_800A0D38              # game_alloc
    ori     a1, a1, 0x4790             # a1 = 001D4790
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_8009A7D8
    nop
    lw      v1, 0x0010(v0)             # 80120010
    beq     v1, $zero, lbl_8009A7D8
    nop
    jalr    $ra, v1
    or      a0, s1, $zero              # a0 = 00000000
lbl_8009A7D8:
    jal     func_80099D0C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a0, s1, 0x00B8             # a0 = 000000B8
    sw      a0, 0x003C($sp)
    jal     func_80091858
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800C7548
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_8007D808
    nop
    or      a0, $zero, $zero           # a0 = 00000000
    or      v0, s1, $zero              # v0 = 00000000
lbl_8009A808:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    slti    $at, a0, 0x0004
    addiu   v0, v0, 0x0004             # v0 = 00000004
    bne     $at, $zero, lbl_8009A808
    sw      $zero, 0x078C(v0)          # 00000790
    addiu   a0, s1, 0x01E0             # a0 = 000001E0
    addiu   a2, s1, 0x07C0             # a2 = 000007C0
    sw      a2, 0x0034($sp)
    sw      a0, 0x0038($sp)
    lw      a1, 0x003C($sp)
    jal     func_800478B8
    or      a3, s1, $zero              # a3 = 00000000
    lw      a0, 0x0038($sp)
    jal     func_80047E34
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   s0, s1, 0x034C             # s0 = 0000034C
    or      a0, s0, $zero              # a0 = 0000034C
lbl_8009A850:
    lw      a1, 0x003C($sp)
    lw      a2, 0x0034($sp)
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_800478B8
    sw      t0, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 0000034C
    jal     func_80047E34
    addiu   a1, $zero, 0x0100          # a1 = 00000100
    lw      t0, 0x0044($sp)
    addiu   $at, $zero, 0x0444         # $at = 00000444
    addiu   s0, s0, 0x016C             # s0 = 000004B8
    addiu   t0, t0, 0x016C             # t0 = 0000016C
    bnel    t0, $at, lbl_8009A850
    or      a0, s0, $zero              # a0 = 000004B8
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    sw      a0, 0x0790(s1)             # 00000790
    sh      $zero, 0x0130(a0)          # 000005E8
    jal     func_800499D4
    sh      $zero, 0x07A0(s1)          # 000007A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800912F4
    addiu   a1, s1, 0x1F74             # a1 = 00001F74
    jal     func_800E2F90
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800E2008
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800E16B0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80058F20
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001A9B4
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001B000
    addiu   a1, $zero, 0x0055          # a1 = 00000055
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    jal     func_8004BC48
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    addu    a0, s1, $at
    jal     func_8008B438
    sw      a0, 0x003C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80052310
    addiu   a1, s1, 0x1D64             # a1 = 00001D64
    lhu     v0, 0x1412(s2)             # 8011B9E2
    ori     $at, $zero, 0xFFEF         # $at = 0000FFEF
    beq     v0, $at, lbl_8009A92C
    ori     t9, $zero, 0xFFEF          # t9 = 0000FFEF
    sw      v0, 0x0008(s2)             # 8011A5D8
    sh      t9, 0x1412(s2)             # 8011B9E2
lbl_8009A92C:
    lw      t1, 0x0008(s2)             # 8011A5D8
    ori     $at, $zero, 0xFFFD         # $at = 0000FFFD
    bnel    t1, $at, lbl_8009A944
    lhu     v0, 0x1416(s2)             # 8011B9E6
    sw      $zero, 0x0008(s2)          # 8011A5D8
    lhu     v0, 0x1416(s2)             # 8011B9E6
lbl_8009A944:
    ori     s0, $zero, 0xFFFF          # s0 = 0000FFFF
    beql    s0, v0, lbl_8009A95C
    lhu     v0, 0x000C(s2)             # 8011A5DC
    sh      v0, 0x000C(s2)             # 8011A5DC
    sh      v0, 0x141A(s2)             # 8011B9EA
    lhu     v0, 0x000C(s2)             # 8011A5DC
lbl_8009A95C:
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, v0, $at
    beq     $at, $zero, lbl_8009A970
    slti    $at, v0, 0x4555
    beq     $at, $zero, lbl_8009A97C
lbl_8009A970:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    beq     $zero, $zero, lbl_8009A980
    sw      t2, 0x0010(s2)             # 8011A5E0
lbl_8009A97C:
    sw      $zero, 0x0010(s2)          # 8011A5E0
lbl_8009A980:
    jal     func_80056D90
    or      a0, s1, $zero              # a0 = 00000000
    lw      t3, 0x135C(s2)             # 8011B92C
    bnel    t3, $zero, lbl_8009A9AC
    sh      $zero, 0x13C8(s2)          # 8011B998
    lw      t4, 0x0008(s2)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    slt     $at, t4, $at
    bnel    $at, $zero, lbl_8009A9CC
    lw      v0, 0x0004(s2)             # 8011A5D4
    sh      $zero, 0x13C8(s2)          # 8011B998
lbl_8009A9AC:
    jal     func_80072548
    or      a0, s1, $zero              # a0 = 00000000
    lw      t5, 0x0008(s2)             # 8011A5D8
    andi    t6, t5, 0x000F             # t6 = 00000000
    addiu   t7, t6, 0x0004             # t7 = 00000004
    beq     $zero, $zero, lbl_8009AA2C
    sw      t7, 0x1360(s2)             # 8011B930
    lw      v0, 0x0004(s2)             # 8011A5D4
lbl_8009A9CC:
    beq     v0, $zero, lbl_8009A9E8
    nop
    lw      t8, 0x0010(s2)             # 8011A5E0
    bne     t8, $zero, lbl_8009A9E8
    nop
    beq     $zero, $zero, lbl_8009AA2C
    sw      $zero, 0x1360(s2)          # 8011B930
lbl_8009A9E8:
    beq     v0, $zero, lbl_8009AA08
    nop
    lw      t9, 0x0010(s2)             # 8011A5E0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     t9, $zero, lbl_8009AA08
    nop
    beq     $zero, $zero, lbl_8009AA2C
    sw      t1, 0x1360(s2)             # 8011B930
lbl_8009AA08:
    bne     v0, $zero, lbl_8009AA28
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    lw      t2, 0x0010(s2)             # 8011A5E0
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    bnel    t2, $zero, lbl_8009AA2C
    sw      t4, 0x1360(s2)             # 8011B930
    beq     $zero, $zero, lbl_8009AA2C
    sw      t3, 0x1360(s2)             # 8011B930
lbl_8009AA28:
    sw      t4, 0x1360(s2)             # 8011B930
lbl_8009AA2C:
    lw      a3, 0x0000(s2)             # 8011A5D0
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0x9C90             # t0 = 800F9C90
    sll     t5, a3,  2
    addu    t6, t0, t5
    lb      t7, 0x0000(t6)             # 00000000
    lw      v1, 0x1360(s2)             # 8011B930
    addiu   $at, $zero, 0x0051         # $at = 00000051
    or      v0, a3, $zero              # v0 = 00000000
    bne     t7, $at, lbl_8009AAC4
    sb      v1, 0x006F($sp)
    lw      t8, 0x0004(s2)             # 8011A5D4
    slti    $at, v1, 0x0004
    beql    t8, $zero, lbl_8009AAC8
    sll     t7, v0,  2
    beql    $at, $zero, lbl_8009AAC8
    sll     t7, v0,  2
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8BF0             # v1 = 800F8BF0
    lw      t9, 0x0048(v1)             # 800F8C38
    lw      v0, 0x00A4(s2)             # 8011A674
    and     t1, t9, v0
    beql    t1, $zero, lbl_8009AABC
    sw      $zero, 0x1360(s2)          # 8011B930
    lw      t2, 0x004C(v1)             # 800F8C3C
    and     t3, t2, v0
    beql    t3, $zero, lbl_8009AABC
    sw      $zero, 0x1360(s2)          # 8011B930
    lw      t4, 0x0050(v1)             # 800F8C40
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    and     t5, t4, v0
    beql    t5, $zero, lbl_8009AABC
    sw      $zero, 0x1360(s2)          # 8011B930
    beq     $zero, $zero, lbl_8009AABC
    sw      t6, 0x1360(s2)             # 8011B930
    sw      $zero, 0x1360(s2)          # 8011B930
lbl_8009AABC:
    beq     $zero, $zero, lbl_8009AB18
    lw      v1, 0x1360(s2)             # 8011B930
lbl_8009AAC4:
    sll     t7, v0,  2
lbl_8009AAC8:
    addu    t8, t0, t7
    lb      t9, 0x0000(t8)             # 00000000
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bnel    t9, $at, lbl_8009AB1C
    sll     t6, v1,  2
    lw      t1, 0x0004(s2)             # 8011A5D4
    slti    $at, v1, 0x0004
    bnel    t1, $zero, lbl_8009AB1C
    sll     t6, v1,  2
    beql    $at, $zero, lbl_8009AB1C
    sll     t6, v1,  2
    lhu     t2, 0x0EDC(s2)             # 8011B4AC
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    andi    t3, t2, 0x0100             # t3 = 00000000
    beql    t3, $zero, lbl_8009AB18
    sw      v1, 0x1360(s2)             # 8011B930
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    beq     $zero, $zero, lbl_8009AB18
    sw      v1, 0x1360(s2)             # 8011B930
    sw      v1, 0x1360(s2)             # 8011B930
lbl_8009AB18:
    sll     t6, v1,  2
lbl_8009AB1C:
    addu    t7, t0, t6
    sll     t8, a3,  2
    addu    v0, t7, t8
    lb      a1, 0x0000(v0)             # 00000000
    lb      a2, 0x0001(v0)             # 00000001
    jal     func_8009CEEC
    or      a0, s1, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_8009AB64
    nop
    lw      v1, 0x0054(v0)             # 80120054
    beq     v1, $zero, lbl_8009AB64
    nop
    jalr    $ra, v1
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8009AB6C
    nop
lbl_8009AB64:
    jal     func_80056C70
    or      a0, s1, $zero              # a0 = 00000000
lbl_8009AB6C:
    jal     func_80099EDC
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800E1C10
    or      a0, s1, $zero              # a0 = 00000000
    lhu     v0, 0x1416(s2)             # 8011B9E6
    beq     s0, v0, lbl_8009ABF8
    ori     $at, $zero, 0x8001         # $at = 00008001
    bne     v0, $at, lbl_8009ABF4
    ori     t6, $zero, 0xFFFD          # t6 = 0000FFFD
    lw      t9, 0x0014(s2)             # 8011A5E4
    lw      t2, 0x0018(s2)             # 8011A5E8
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t1, t9, 0x0001             # t1 = 00000001
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sw      t1, 0x0014(s2)             # 8011A5E4
    sw      t3, 0x0018(s2)             # 8011A5E8
    sb      t4, 0x141C(s2)             # 8011B9EC
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    jal     func_800719E0
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    bne     v0, $zero, lbl_8009ABD8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    jal     func_800719E0
    addiu   a2, $zero, 0x002E          # a2 = 0000002E
    beq     v0, $zero, lbl_8009ABE8
lbl_8009ABD8:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3066          # a1 = 00003066
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_8009ABE8:
    ori     t5, $zero, 0xFFFE          # t5 = 0000FFFE
    beq     $zero, $zero, lbl_8009ABF8
    sh      t5, 0x1416(s2)             # 8011B9E6
lbl_8009ABF4:
    sh      t6, 0x1416(s2)             # 8011B9E6
lbl_8009ABF8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    lui     $at, 0x0001                # $at = 00010000
    sh      t7, 0x018A(t8)             # 0000018A
    lw      t9, 0x0000(v0)             # 8011BA00
    ori     $at, $at, 0x2124           # $at = 00012124
    addu    s0, s1, $at
    or      a0, s0, $zero              # a0 = 0000FFFF
    jal     func_8009DCDC
    sh      $zero, 0x0190(t9)          # 00000190
    or      a0, s0, $zero              # a0 = 0000FFFF
    addiu   a1, $zero, 0x0140          # a1 = 00000140
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    or      a3, $zero, $zero           # a3 = 00000000
    sw      $zero, 0x0010($sp)
    jal     func_8009DCA0
    sw      $zero, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 0000FFFF
    addiu   a1, $zero, 0x0140          # a1 = 00000140
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8009DD10
    sw      $zero, 0x0010($sp)
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x241B($at)         # 0001241B
    jal     func_80079150
    addiu   a0, s1, 0x07B8             # a0 = 000007B8
    jal     func_800048C0              # osGetTime
    nop
    jal     func_800CDCC0
    or      a0, v1, $zero              # a0 = 00000000
    jal     func_800AA6B0
    or      a0, s1, $zero              # a0 = 00000000
    lui     t1, 0x800A                 # t1 = 800A0000
    lui     t2, 0x800A                 # t2 = 800A0000
    addiu   t1, t1, 0xCAC8             # t1 = 8009CAC8
    addiu   t2, t2, 0xA5C0             # t2 = 8009A5C0
    lui     $at, 0x0001                # $at = 00010000
    sw      t1, 0x0004(s1)             # 00000004
    sw      t2, 0x0008(s1)             # 00000008
    addu    $at, $at, s1
    addiu   t3, $zero, 0xFFEC          # t3 = FFFFFFEC
    sb      t3, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addu    $at, $at, s1
    sh      v1, 0x1E16($at)            # 00011E16
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sh      $zero, 0x1E18($at)         # 00011E18
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x1DE9($at)         # 00011DE9
    lw      t4, 0x135C(s2)             # 8011B92C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t4, $at, lbl_8009AD4C
    lui     $at, 0x0001                # $at = 00010000
    lbu     v0, 0x141D(s2)             # 8011B9ED
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    bne     v1, v0, lbl_8009AD3C
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lw      v0, 0x0000(s2)             # 8011A5D0
    lbu     t6, 0x006F($sp)
    lui     t9, 0x8010                 # t9 = 80100000
    sll     t5, v0,  2
    sll     t7, t6,  2
    addu    t8, t5, t7
    addu    t9, t9, t8
    lhu     t9, -0x636E(t9)            # 800F9C92
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sra     t1, t9,  7
    andi    t2, t1, 0x007F             # t2 = 00000048
    beq     $zero, $zero, lbl_8009AD58
    sb      t2, 0x1E5E($at)            # 00011E5E
lbl_8009AD3C:
    sb      v0, 0x1E5E($at)            # 00011E5E
    beq     $zero, $zero, lbl_8009AD58
    sb      t3, 0x141D(s2)             # 8011B9ED
    lui     $at, 0x0001                # $at = 00010000
lbl_8009AD4C:
    addu    $at, $at, s1
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sb      t4, 0x1E5E($at)            # 00011E5E
lbl_8009AD58:
    jal     func_80099660
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x241C           # $at = 0001241C
    addu    s0, s1, $at
    jal     func_8009931C
    or      a0, s0, $zero              # a0 = 0000FFFF
    or      a0, s0, $zero              # a0 = 0000FFFF
    jal     func_800995C8
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     a1, 0xA0A0                 # a1 = A0A00000
    ori     a1, a1, 0xA0FF             # a1 = A0A0A0FF
    jal     func_800995BC
    or      a0, s0, $zero              # a0 = 0000FFFF
    jal     func_800992C0
    or      a0, s0, $zero              # a0 = 0000FFFF
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_80093B10
    addiu   a0, a0, 0xD148             # a0 = 8011D148
    lui     $at, 0x8012                # $at = 80120000
    sb      $zero, -0x2E9D($at)        # 8011D163
    jal     func_80059810
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, s1, 0x0074             # s0 = 00000074
    jal     func_800A01F4
    or      a0, s0, $zero              # a0 = 00000074
    sw      v0, 0x007C($sp)
    or      a0, s0, $zero              # a0 = 00000074
    jal     func_800A01B8
    or      a1, v0, $zero              # a1 = 00000000
    lw      t6, 0x007C($sp)
    addiu   a2, v0, 0x0008             # a2 = 00000008
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     a2, a2, $at
    subu    t5, t6, a2
    addu    a1, t5, v0
    jal     func_80066D6C
    or      a0, a2, $zero              # a0 = 00000008
    lui     a2, 0x0001                 # a2 = 00010000
    addu    a2, a2, s1
    lw      a2, 0x1DF4(a2)             # 00011DF4
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80023C1C
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    s0, s1, $at
    or      a1, s0, $zero              # a1 = 00000074
    jal     func_80080BA4
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8009AE38
    or      a0, s1, $zero              # a0 = 00000000
lbl_8009AE28:
    jal     func_80080BA4
    or      a1, s0, $zero              # a1 = 00000074
    beql    v0, $zero, lbl_8009AE28
    or      a0, s1, $zero              # a0 = 00000000
lbl_8009AE38:
    lw      s0, 0x1C44(s1)             # 00001C44
    lw      a0, 0x0038($sp)
    jal     func_80047C38
    or      a1, s0, $zero              # a1 = 00000074
    lw      a0, 0x0038($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a1, 0x001C(s0)             # 00000090
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    andi    a1, a1, 0x00FF             # a1 = 00000000
    beq     a1, $at, lbl_8009AE70
    nop
    jal     func_800495E8
    lw      a0, 0x0038($sp)
lbl_8009AE70:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    addiu   $at, $zero, 0x0020         # $at = 00000020
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    lh      v0, 0x04B2(t7)             # 801204B2
    bne     v0, $at, lbl_8009AE98
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    beq     $zero, $zero, lbl_8009AEC0
    sb      t8, 0x242B($at)            # 0001242B
lbl_8009AE98:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     v0, $at, lbl_8009AEB4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    beq     $zero, $zero, lbl_8009AEC0
    sb      t9, 0x242B($at)            # 0001242B
lbl_8009AEB4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x242B($at)         # 0001242B
lbl_8009AEC0:
    jal     func_8006F25C
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800617DC
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t1, 0x07A4(s1)             # 000007A4
    lui     $at, 0x8012                # $at = 80120000
    or      a0, s1, $zero              # a0 = 00000000
    sb      t1, -0x4650($at)           # 8011B9B0
    lbu     t2, 0x07A5(s1)             # 000007A5
    lui     $at, 0x8012                # $at = 80120000
    sb      t2, -0x464F($at)           # 8011B9B1
    jal     func_800218A8
    lw      a1, 0x1C44(s1)             # 00001C44
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008BA68
    lw      a1, 0x003C($sp)
    sw      $zero, 0x1364(s2)          # 8011B934
    lw      $ra, 0x002C($sp)
lbl_8009AF08:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_8009AF1C:
# "game_play" update engine
# A0 = Global Context
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0024($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0x0C38             # v0 = 80120C38
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    lui     v1, 0x0001                 # v1 = 00010000
    lui     a2, 0x8000                 # a2 = 80000000
    addiu   a3, $zero, 0x0044          # a3 = 00000044
    addu    s1, s0, v1
    lbu     t6, 0x17AE(s1)             # 000017AE
    addiu   a0, s0, 0x07B8             # a0 = 000007B8
    addiu   a1, s0, 0x002C             # a1 = 0000002C
    multu   t6, a3
    mflo    t7
    addu    t8, s0, t7
    addu    t9, t8, v1
    lw      t0, 0x17B4(t9)             # 000017B4
    addu    t1, t0, a2
    sw      t1, 0x0010(v0)             # 80120C48
    lbu     t2, 0x17AF(s1)             # 000017AF
    multu   t2, a3
    mflo    t3
    addu    t4, s0, t3
    addu    t5, t4, v1
    lw      t6, 0x17B4(t5)             # 000017B4
    addu    t7, t6, a2
    sw      t7, 0x0014(v0)             # 80120C4C
    lw      t8, 0x00B0(s0)             # 000000B0
    addu    t9, t8, a2
    jal     func_80079160
    sw      t9, 0x0008(v0)             # 80120C40
    beq     v0, $zero, lbl_8009BF40
    lui     v1, 0x8012                 # v1 = 80120000
    lbu     t0, 0x241B(s1)             # 0000241B
    bne     t0, $zero, lbl_8009AFCC
    nop
    lb      t1, 0x1E15(s1)             # 00001E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t1, $zero, lbl_8009AFCC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t2, 0x241B($at)            # 0001241B
lbl_8009AFCC:
    lw      v1, -0x2EC0(v1)            # 8011D140
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v1, $zero, lbl_8009B054
    lbu     a0, 0x241B(s1)             # 0000241B
    beq     v1, $at, lbl_8009AFF8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_8009B048
    lui     a0, 0x8012                 # a0 = 80120000
    beq     $zero, $zero, lbl_8009B054
    lbu     a0, 0x241B(s1)             # 0000241B
lbl_8009AFF8:
    addiu   a0, a0, 0xD060             # a0 = 8011D060
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_80097CD4
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    bne     v0, $zero, lbl_8009B01C
    lui     t3, 0x8013                 # t3 = 80130000
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_8009B050
    sw      $zero, -0x2EC0($at)        # 8011D140
lbl_8009B01C:
    addiu   t3, t3, 0xBE40             # t3 = 8012BE40
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, -0x2EC4($at)           # 8011D13C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sw      t4, -0x2EC0($at)           # 8011D140
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_8009B050
    sh      t5, 0x0110(t6)             # 80120110
lbl_8009B048:
    jal     func_800981C0
    addiu   a0, a0, 0xD060             # a0 = FFFFD060
lbl_8009B050:
    lbu     a0, 0x241B(s1)             # 0000241B
lbl_8009B054:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $zero, lbl_8009BBC8
    nop
    beq     a0, $at, lbl_8009B084
    or      v1, a0, $zero              # v1 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a0, $at, lbl_8009B14C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    a0, $at, lbl_8009B3CC
    lui     $at, 0x0001                # $at = 00010000
    beq     $zero, $zero, lbl_8009B544
    addiu   t6, v1, 0xFFFC             # t6 = FFFFFFFC
lbl_8009B084:
    lb      t7, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beql    t7, $at, lbl_8009B138
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006D8E0
    sh      $zero, 0x006A($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A28(v1)            # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    lh      v0, 0x006A($sp)
    slt     $at, v1, $at
    bnel    $at, $zero, lbl_8009B0D0
    lh      t8, 0x1E1A(s1)             # 00001E1A
    andi    v0, v1, 0x000F             # v0 = 00000000
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sll     v0, v0, 16
    sra     v0, v0, 16
    lh      t8, 0x1E1A(s1)             # 00001E1A
lbl_8009B0D0:
    sll     t0, v0,  2
    lui     t2, 0x8010                 # t2 = 80100000
    sll     t9, t8,  2
    addu    t1, t9, t0
    addu    t2, t2, t1
    lhu     t2, -0x636E(t2)            # 800F9C92
    andi    t3, t2, 0x8000             # t3 = 00000000
    bnel    t3, $zero, lbl_8009B138
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t4, 0x1E5E(s1)             # 00001E5E
    slti    $at, t4, 0x0038
    beql    $at, $zero, lbl_8009B138
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8006344C
    nop
    bnel    v0, $zero, lbl_8009B138
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800C7684
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    lui     $at, 0x8012                # $at = 80120000
    sb      t5, -0x4650($at)           # 8011B9B0
    lui     $at, 0x8012                # $at = 80120000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, -0x464F($at)           # 8011B9B1
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009B138:
    jal     func_8009A2B0
    lbu     a1, 0x1E5E(s1)             # 00001E5E
    lbu     v1, 0x241B(s1)             # 0000241B
    slti    $at, v1, 0x0004
    beq     $at, $zero, lbl_8009B540
lbl_8009B14C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x21C8           # $at = 000121C8
    addu    a0, s0, $at
    sw      a0, 0x0040($sp)
    lw      t9, 0x23F4(s1)             # 000023F4
    jalr    $ra, t9
    nop
    lw      v1, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sra     t7, v1,  5
    bne     t7, $at, lbl_8009B190
    nop
    lw      t9, 0x2408(s1)             # 00002408
    lw      a0, 0x0040($sp)
    ori     a1, v1, 0x0080             # a1 = 00000080
    jalr    $ra, t9
    nop
lbl_8009B190:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addiu   t8, $zero, 0x000E          # t8 = 0000000E
    sb      t8, 0x1419(v0)             # 8011B9E9
    lw      v1, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   t0, $zero, 0x001C          # t0 = 0000001C
    beq     v1, $at, lbl_8009B1C0
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v1, $at, lbl_8009B1C8
    sb      t1, 0x1418(v0)             # 8011B9E8
lbl_8009B1C0:
    sb      t0, 0x1419(v0)             # 8011B9E9
    sb      t1, 0x1418(v0)             # 8011B9E8
lbl_8009B1C8:
    lw      v1, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    beq     v1, $at, lbl_8009B1E4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_8009B1F4
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8009B1E4:
    sb      t2, 0x1418(v0)             # 8011B9E8
    beq     $zero, $zero, lbl_8009B228
    lw      v1, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x0006         # $at = 00000006
lbl_8009B1F4:
    beq     v1, $at, lbl_8009B208
    addiu   t3, $zero, 0x0096          # t3 = 00000096
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    v1, $at, lbl_8009B218
    addiu   $at, $zero, 0x0011         # $at = 00000011
lbl_8009B208:
    sb      t3, 0x1418(v0)             # 8011B9E8
    beq     $zero, $zero, lbl_8009B228
    lw      v1, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x0011         # $at = 00000011
lbl_8009B218:
    bne     v1, $at, lbl_8009B228
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sb      t4, 0x1418(v0)             # 8011B9E8
    lw      v1, 0x23F0(s1)             # 000023F0
lbl_8009B228:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_8009B254
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_8009B254
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v1, $at, lbl_8009B254
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v1, $at, lbl_8009B254
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v1, $at, lbl_8009B290
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_8009B254:
    lw      t9, 0x240C(s1)             # 0000240C
    lui     a1, 0xA0A0                 # a1 = A0A00000
    ori     a1, a1, 0xA0FF             # a1 = A0A0A0FF
    jalr    $ra, t9
    lw      a0, 0x0040($sp)
    lw      v0, 0x2410(s1)             # 00002410
    lw      a0, 0x0040($sp)
    lui     a1, 0xA0A0                 # a1 = A0A00000
    beql    v0, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    jalr    $ra, v0
    ori     a1, a1, 0xA0FF             # a1 = A0A0A0FF
    beq     $zero, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_8009B290:
    bnel    v1, $at, lbl_8009B2D4
    addiu   $at, $zero, 0x0013         # $at = 00000013
    lw      t9, 0x240C(s1)             # 0000240C
    lui     a1, 0x8C8C                 # a1 = 8C8C0000
    ori     a1, a1, 0x64FF             # a1 = 8C8C64FF
    jalr    $ra, t9
    lw      a0, 0x0040($sp)
    lw      v0, 0x2410(s1)             # 00002410
    lw      a0, 0x0040($sp)
    lui     a1, 0x8C8C                 # a1 = 8C8C0000
    beql    v0, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    jalr    $ra, v0
    ori     a1, a1, 0x64FF             # a1 = 8C8C64FF
    beq     $zero, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0x0013         # $at = 00000013
lbl_8009B2D4:
    bnel    v1, $at, lbl_8009B318
    lw      t9, 0x240C(s1)             # 0000240C
    lw      t9, 0x240C(s1)             # 0000240C
    lui     a1, 0x4664                 # a1 = 46640000
    ori     a1, a1, 0x6EFF             # a1 = 46646EFF
    jalr    $ra, t9
    lw      a0, 0x0040($sp)
    lw      v0, 0x2410(s1)             # 00002410
    lw      a0, 0x0040($sp)
    lui     a1, 0x4664                 # a1 = 46640000
    beql    v0, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    jalr    $ra, v0
    ori     a1, a1, 0x6EFF             # a1 = 46646EFF
    beq     $zero, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    lw      t9, 0x240C(s1)             # 0000240C
lbl_8009B318:
    lw      a0, 0x0040($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      v0, 0x2410(s1)             # 00002410
    lw      a0, 0x0040($sp)
    beql    v0, $zero, lbl_8009B344
    lb      t5, 0x1E15(s1)             # 00001E15
    jalr    $ra, v0
    or      a1, $zero, $zero           # a1 = 00000000
    lb      t5, 0x1E15(s1)             # 00001E15
lbl_8009B344:
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    bnel    t5, $at, lbl_8009B370
    lw      t9, 0x2408(s1)             # 00002408
    lw      t9, 0x2408(s1)             # 00002408
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_8009B384
    lw      t9, 0x2404(s1)             # 00002404
    lw      t9, 0x2408(s1)             # 00002408
lbl_8009B370:
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jalr    $ra, t9
    nop
    lw      t9, 0x2404(s1)             # 00002404
lbl_8009B384:
    lw      a0, 0x0040($sp)
    jalr    $ra, t9
    nop
    lw      t6, 0x23F0(s1)             # 000023F0
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    bne     t6, $at, lbl_8009B3B4
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009B3C0
    sb      t7, 0x241B($at)            # 0001241B
lbl_8009B3B4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t8, 0x241B($at)            # 0001241B
lbl_8009B3C0:
    beq     $zero, $zero, lbl_8009B540
    lbu     v1, 0x241B(s1)             # 0000241B
    lui     $at, 0x0001                # $at = 00010000
lbl_8009B3CC:
    ori     $at, $at, 0x21C8           # $at = 000121C8
    addu    a0, s0, $at
    sw      a0, 0x0040($sp)
    lw      t9, 0x2414(s1)             # 00002414
    jalr    $ra, t9
    nop
    beq     v0, $zero, lbl_8009B528
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t0, 0x23F0(s1)             # 000023F0
    slti    $at, t0, 0x0038
    bnel    $at, $zero, lbl_8009B438
    lb      t2, 0x1E15(s1)             # 00001E15
    lb      t1, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    bnel    t1, $at, lbl_8009B51C
    lui     $at, 0x0001                # $at = 00010000
    lw      t9, 0x23F8(s1)             # 000023F8
    lw      a0, 0x0040($sp)
    jalr    $ra, t9
    nop
    jal     func_8009A55C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009B518
    sb      $zero, 0x241B($at)         # 0001241B
    lb      t2, 0x1E15(s1)             # 00001E15
lbl_8009B438:
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    lui     t3, 0x8012                 # t3 = 80120000
    beql    t2, $at, lbl_8009B4C0
    lw      t9, 0x23F8(s1)             # 000023F8
    sw      $zero, 0x0098(s0)          # 00000098
    lw      t3, -0x46D4(t3)            # 8011B92C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t0, 0x8081                 # t0 = 80810000
    beq     t3, $at, lbl_8009B4A4
    addiu   t0, t0, 0x2394             # t0 = 80812394
    lui     t4, 0x800A                 # t4 = 800A0000
    lui     t5, 0x0001                 # t5 = 00010000
    ori     t5, t5, 0x2518             # t5 = 00012518
    addiu   t4, t4, 0xA750             # t4 = 8009A750
    sw      t4, 0x000C(s0)             # 0000000C
    sw      t5, 0x0010(s0)             # 00000010
    lh      t6, 0x1E1A(s1)             # 00001E1A
    lui     $at, 0x8012                # $at = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    sw      t6, -0x5A30($at)           # 8011A5D0
    lhu     t7, -0x462C(t7)            # 8011B9D4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    bne     t7, $at, lbl_8009B518
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_8009B518
    sh      t8, -0x462C($at)           # 8011B9D4
lbl_8009B4A4:
    lui     t1, 0x0001                 # t1 = 00010000
    ori     t1, t1, 0xCAD0             # t1 = 0001CAD0
    sw      t1, 0x0010(s0)             # 00000010
    sw      t0, 0x000C(s0)             # 0000000C
    beq     $zero, $zero, lbl_8009B51C
    lui     $at, 0x0001                # $at = 00010000
    lw      t9, 0x23F8(s1)             # 000023F8
lbl_8009B4C0:
    lw      a0, 0x0040($sp)
    jalr    $ra, t9
    nop
    jal     func_8009A55C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x241B($at)         # 0001241B
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x2EC0(t2)            # 8011D140
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     a0, 0x8012                 # a0 = 80120000
    bnel    t2, $at, lbl_8009B51C
    lui     $at, 0x0001                # $at = 00010000
    jal     func_80097C48
    addiu   a0, a0, 0xD060             # a0 = 8011D060
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x4600(t4)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sh      t3, 0x0110(t4)             # 80120110
lbl_8009B518:
    lui     $at, 0x0001                # $at = 00010000
lbl_8009B51C:
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009B53C
    sb      $zero, 0x1E15($at)         # 00011E15
lbl_8009B528:
    lw      t9, 0x23FC(s1)             # 000023FC
    lw      t5, -0x4600(t5)            # FFFFBA00
    lw      a0, 0x0040($sp)
    jalr    $ra, t9
    lh      a1, 0x0110(t5)             # 00000110
lbl_8009B53C:
    lbu     v1, 0x241B(s1)             # 0000241B
lbl_8009B540:
    addiu   t6, v1, 0xFFFC             # t6 = FFFFFFFC
lbl_8009B544:
    sltiu   $at, t6, 0x000E
    beq     $at, $zero, lbl_8009BBC8
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x72C8($at)           # 80108D38
    jr      t6
    nop
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD164             # v1 = 8011D164
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x0000(v1)          # 8011D164
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x0B05($at)            # 00010B05
    lb      t8, 0x1E15(s1)             # 00001E15
    addiu   v0, $zero, 0x00A0          # v0 = 000000A0
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    sb      v0, 0x0B06(s1)             # 00000B06
    sb      v0, 0x0B07(s1)             # 00000B07
    beq     t8, $at, lbl_8009B5B4
    sb      v0, 0x0B08(s1)             # 00000B08
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x0B09(s1)          # 00000B09
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    beq     $zero, $zero, lbl_8009BBC8
    sb      t0, 0x241B($at)            # 0001241B
lbl_8009B5B4:
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    sb      t1, 0x0B09(s1)             # 00000B09
    addu    $at, $at, s0
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    beq     $zero, $zero, lbl_8009BBC8
    sb      t2, 0x241B($at)            # 0001241B
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD164             # v1 = 8011D164
    lh      t3, 0x0000(v1)             # 8011D164
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    cvt.s.w $f6, $f4
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x4F00                # $at = 4F000000
    ori     t9, t9, 0x2518             # t9 = 00012518
    div.s   $f10, $f6, $f8
    mul.s   $f18, $f10, $f16
    cfc1    t4, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_8009B678
    mfc1    t5, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t5, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_8009B66C
    nop
    mfc1    t5, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8009B684
    or      t5, t5, $at                # t5 = 80000000
lbl_8009B66C:
    beq     $zero, $zero, lbl_8009B684
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f4
lbl_8009B678:
    nop
    bltz    t5, lbl_8009B66C
    nop
lbl_8009B684:
    sb      t5, 0x0B09(s1)             # 00000B09
    lh      v0, 0x0000(v1)             # 8011D164
    ctc1    t4, $f31
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8009B6D8
    addiu   t7, v0, 0x0001             # t7 = 000000A1
    lui     v0, 0x800A                 # v0 = 800A0000
    sw      $zero, 0x0098(s0)          # 00000098
    addiu   v0, v0, 0xA750             # v0 = 8009A750
    sw      v0, 0x000C(s0)             # 0000000C
    sw      t9, 0x0010(s0)             # 00000010
    lh      t6, 0x1E1A(s1)             # 00001E1A
    lui     $at, 0x8012                # $at = 80120000
    sw      t6, -0x5A30($at)           # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
lbl_8009B6D8:
    beq     $zero, $zero, lbl_8009BBC8
    sh      t7, 0x0000(v1)             # 8011D164
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD164             # v1 = 8011D164
    lh      t8, 0x0000(v1)             # 8011D164
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    cvt.s.w $f8, $f6
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    div.s   $f16, $f8, $f10
    lui     t3, 0x8012                 # t3 = 80120000
    sub.s   $f4, $f18, $f16
    mul.s   $f8, $f4, $f6
    cfc1    t0, $f31
    ctc1    t1, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    beql    t1, $zero, lbl_8009B794
    mfc1    t1, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t1, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t1, $f31
    nop
    andi    t1, t1, 0x0078             # t1 = 00000000
    bne     t1, $zero, lbl_8009B788
    nop
    mfc1    t1, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8009B7A0
    or      t1, t1, $at                # t1 = 80000000
lbl_8009B788:
    beq     $zero, $zero, lbl_8009B7A0
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    mfc1    t1, $f10
lbl_8009B794:
    nop
    bltz    t1, lbl_8009B788
    nop
lbl_8009B7A0:
    sb      t1, 0x0B09(s1)             # 00000B09
    lh      v0, 0x0000(v1)             # 8011D164
    ctc1    t0, $f31
    slti    $at, v0, 0x0014
    bne     $at, $zero, lbl_8009B7F0
    addiu   t4, v0, 0x0001             # t4 = 8009A751
    lw      t3, -0x4600(t3)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t2, 0x0110(t3)             # 80120110
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x241B($at)         # 0001241B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_8009B7F0:
    beq     $zero, $zero, lbl_8009BBC8
    sh      t4, 0x0000(v1)             # 8011D164
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD164             # v1 = 8011D164
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x0000(v1)          # 8011D164
    addu    $at, $at, s0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t5, 0x0B05($at)            # 00010B05
    lb      t7, 0x1E15(s1)             # 00001E15
    addiu   v0, $zero, 0x00A0          # v0 = 000000A0
    addiu   t9, $zero, 0x00AA          # t9 = 000000AA
    addiu   t6, $zero, 0x0096          # t6 = 00000096
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    sb      t9, 0x0B06(s1)             # 00000B06
    sb      v0, 0x0B07(s1)             # 00000B07
    beq     t7, $at, lbl_8009B850
    sb      t6, 0x0B08(s1)             # 00000B08
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x0B09(s1)          # 00000B09
    addu    $at, $at, s0
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    beq     $zero, $zero, lbl_8009BBC8
    sb      t8, 0x241B($at)            # 0001241B
lbl_8009B850:
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    sb      t0, 0x0B09(s1)             # 00000B09
    addu    $at, $at, s0
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    beq     $zero, $zero, lbl_8009BBC8
    sb      t1, 0x241B($at)            # 0001241B
    lb      t2, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    beq     t2, $at, lbl_8009B8C4
    lui     t9, 0x8012                 # t9 = 80120000
    lui     v0, 0x800A                 # v0 = 800A0000
    sw      $zero, 0x0098(s0)          # 00000098
    addiu   v0, v0, 0xA750             # v0 = 8009A750
    lui     t3, 0x0001                 # t3 = 00010000
    ori     t3, t3, 0x2518             # t3 = 00012518
    sw      t3, 0x0010(s0)             # 00000010
    sw      v0, 0x000C(s0)             # 0000000C
    lh      t4, 0x1E1A(s1)             # 00001E1A
    lui     $at, 0x8012                # $at = 80120000
    sw      t4, -0x5A30($at)           # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
lbl_8009B8C4:
    lw      t9, -0x4600(t9)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t5, 0x0110(t9)             # 80120110
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4620(t6)            # 8011B9E0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     t6, $zero, lbl_8009BBC8
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    beq     $zero, $zero, lbl_8009BBC8
    sb      t7, 0x241B($at)            # 0001241B
    lb      t8, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    beq     t8, $at, lbl_8009B948
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0B0A($at)            # 00010B0A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t1, $zero, 0x000D          # t1 = 0000000D
    beq     $zero, $zero, lbl_8009BBC8
    sb      t1, 0x241B($at)            # 0001241B
lbl_8009B948:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t2, 0x0B0A($at)            # 00010B0A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t3, 0x0B0B($at)            # 00010B0B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    sb      t4, 0x0B0C($at)            # 00010B0C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    beq     $zero, $zero, lbl_8009BBC8
    sb      t5, 0x241B($at)            # 0001241B
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    addiu   a3, t9, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x20C0          # a0 = 000020C0
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lb      t7, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    bnel    t7, $at, lbl_8009BA08
    lbu     t2, 0x0B0C(s1)             # 00000B0C
    lbu     t8, 0x0B0B(s1)             # 00000B0B
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    lui     t1, 0x8012                 # t1 = 80120000
    slti    $at, t8, 0x006E
    beq     $at, $zero, lbl_8009BBC8
    nop
    lw      t1, -0x4600(t1)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t0, 0x0110(t1)             # 80120110
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
    lbu     t2, 0x0B0C(s1)             # 00000B0C
lbl_8009BA08:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     v0, 0x800A                 # v0 = 800A0000
    bne     t2, $at, lbl_8009BBC8
    addiu   v0, v0, 0xA750             # v0 = 8009A750
    sw      $zero, 0x0098(s0)          # 00000098
    lui     t3, 0x0001                 # t3 = 00010000
    ori     t3, t3, 0x2518             # t3 = 00012518
    sw      t3, 0x0010(s0)             # 00000010
    sw      v0, 0x000C(s0)             # 0000000C
    lh      t4, 0x1E1A(s1)             # 00001E1A
    lui     $at, 0x8012                # $at = 80120000
    sw      t4, -0x5A30($at)           # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
    lb      t5, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    bne     t5, $at, lbl_8009BAA4
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sb      t9, 0x0B0A($at)            # 00010B0A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      v0, 0x0B0B($at)            # 00010B0B
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      v0, 0x0B0C($at)            # 00010B0C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    beq     $zero, $zero, lbl_8009BBC8
    sb      t6, 0x241B($at)            # 0001241B
lbl_8009BAA4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      t7, 0x241B($at)            # 0001241B
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x20C0          # a0 = 000020C0
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lb      t0, 0x1E15(s1)             # 00001E15
    addiu   $at, $zero, 0xFFEC         # $at = FFFFFFEC
    bne     t0, $at, lbl_8009BBC8
    nop
    lbu     t1, 0x0B0B(s1)             # 00000B0B
    lui     $at, 0x8012                # $at = 80120000
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    bgtz    t1, lbl_8009BBC8
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x4600(t3)            # 8011BA00
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t2, 0x0110(t3)             # 80120110
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beq     $zero, $zero, lbl_8009BBC8
    sb      $zero, 0x241B($at)         # 0001241B
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xD164             # v1 = 8011D164
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x0000(v1)          # 8011D164
    addu    $at, $at, s0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sb      t4, 0x0B05($at)            # 00010B05
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    sb      $zero, 0x0B06(s1)          # 00000B06
    sb      $zero, 0x0B07(s1)          # 00000B07
    sb      $zero, 0x0B08(s1)          # 00000B08
    sb      t5, 0x0B09(s1)             # 00000B09
    addu    $at, $at, s0
    addiu   t9, $zero, 0x0011          # t9 = 00000011
    beq     $zero, $zero, lbl_8009BBC8
    sb      t9, 0x241B($at)            # 0001241B
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     v0, -0x4620(v0)            # 8011B9E0
    beq     v0, $zero, lbl_8009BBC8
    nop
    sb      v0, 0x0B09(s1)             # 00000B09
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4620(t6)            # 8011B9E0
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    lui     t8, 0x8012                 # t8 = 80120000
    slti    $at, t6, 0x0065
    beq     $at, $zero, lbl_8009BBC8
    nop
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x2EC0($at)        # 8011D140
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t7, 0x0110(t8)             # 80120110
    sb      $zero, 0x1E15($at)         # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x241B($at)         # 0001241B
lbl_8009BBC8:
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x2EC0(v1)            # 8011D140
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v1, $at, lbl_8009BF40
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x46D4(t0)            # 8011B92C
    bnel    t0, $zero, lbl_8009BC0C
    lhu     v0, 0x0934(s1)             # 00000934
    lbu     t1, 0x03DC(s1)             # 000003DC
    bnel    t1, $zero, lbl_8009BC0C
    lhu     v0, 0x0934(s1)             # 00000934
    lhu     t2, 0x0A20(s1)             # 00000A20
    bnel    t2, $zero, lbl_8009BC0C
    lhu     v0, 0x0934(s1)             # 00000934
    jal     func_8005B860
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0934(s1)             # 00000934
lbl_8009BC0C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0B20           # $at = 00010B20
    sltu    v0, $zero, v0
    bne     v0, $zero, lbl_8009BC28
    addu    a0, s0, $at
    lhu     v0, 0x0936(s1)             # 00000936
    sltu    v0, $zero, v0
lbl_8009BC28:
    sw      v0, 0x0070($sp)
    sw      v0, 0x004C($sp)
    jal     func_8008B438
    sw      a0, 0x0038($sp)
    lw      v0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s0, $at
    jal     func_80081530
    sw      v0, 0x004C($sp)
    lw      v0, 0x004C($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    bne     v0, $zero, lbl_8009BDA0
    nop
    lw      t3, -0x4600(t3)            # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    lh      t4, 0x0764(t3)             # 80120764
    bne     t4, $zero, lbl_8009BDA0
    nop
    lw      t5, 0x1DE4(s1)             # 00001DE4
    addu    $at, $at, s0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   t9, t5, 0x0001             # t9 = 00000001
    jal     func_8009176C
    sw      t9, 0x1DE4($at)            # 00011DE4
    lbu     v1, 0x1C24(s0)             # 00001C24
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    beq     v1, $zero, lbl_8009BD08
    slti    v0, v1, 0x0005
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_8009BD08
    sb      t6, 0x1C24(s0)             # 00001C24
    andi    v0, t6, 0x00FF             # v0 = 000000FF
    blez    v0, lbl_8009BCE8
    andi    t7, v0, 0x0001             # t7 = 00000001
    beq     t7, $zero, lbl_8009BCE8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      t8, 0x0B05($at)            # 00010B05
    addiu   v0, $zero, 0x0096          # v0 = 00000096
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    sb      v0, 0x0B08(s1)             # 00000B08
    sb      v0, 0x0B07(s1)             # 00000B07
    sb      v0, 0x0B06(s1)             # 00000B06
    beq     $zero, $zero, lbl_8009BCF4
    sb      t1, 0x0B09(s1)             # 00000B09
lbl_8009BCE8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_8009BCF4:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    t2, s0, $at
    beq     $zero, $zero, lbl_8009BDB8
    sw      t2, 0x0034($sp)
lbl_8009BD08:
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    a1, s0, $at
    jal     func_80080BA4
    sw      a1, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at
    sw      a1, 0x0040($sp)
    jal     func_8004F80C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050118
    lw      a1, 0x0040($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050718
    lw      a1, 0x0040($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8004BC78
    lw      a1, 0x0040($sp)
    lbu     t3, 0x1DE9(s1)             # 00001DE9
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t3, $zero, lbl_8009BD70
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
    jal     func_80023D70
    addiu   a1, s0, 0x1C24             # a1 = 00001C24
    addiu   a1, s0, 0x1D64             # a1 = 00001D64
lbl_8009BD70:
    sw      a1, 0x0040($sp)
    jal     func_80052364
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)
    jal     func_800523B0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001ACD8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001B6B0
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8009BDBC
    addiu   v0, s0, 0x0014             # v0 = 00000014
lbl_8009BDA0:
    jal     func_8009176C
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    t4, s0, $at
    sw      t4, 0x0034($sp)
lbl_8009BDB8:
    addiu   v0, s0, 0x0014             # v0 = 00000014
lbl_8009BDBC:
    addiu   a2, v0, 0x0018             # a2 = 0000002C
    sw      a2, 0x0030($sp)
    sw      v0, 0x0040($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8007F540
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CD0           # $at = 00011CD0
    lw      a2, 0x0030($sp)
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007F540
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t5, 0x242B(s1)             # 0000242B
    lw      t9, 0x0040($sp)
    beq     t5, $zero, lbl_8009BEA4
    nop
    lhu     t6, 0x000C(t9)             # 0000000C
    addiu   $at, $zero, 0x0008         # $at = 00000008
    andi    t7, t6, 0x0008             # t7 = 00000000
    bne     t7, $at, lbl_8009BE9C
    nop
    lhu     t8, 0x0934(s1)             # 00000934
    bne     t8, $zero, lbl_8009BE9C
    nop
    lhu     t0, 0x0936(s1)             # 00000936
    bne     t0, $zero, lbl_8009BE9C
    nop
    jal     func_8007943C
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8009BE9C
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x4600(t1)            # 8011BA00
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lui     a3, 0x8010                 # a3 = 80100000
    lh      t2, 0x04B2(t1)             # 801204B2
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x4806          # a0 = 00004806
    bne     t2, $at, lbl_8009BE84
    lui     a1, 0x8010                 # a1 = 80100000
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    beq     $zero, $zero, lbl_8009BE9C
    nop
lbl_8009BE84:
    lbu     a1, 0x242B(s1)             # 0000242B
    or      a0, s0, $zero              # a0 = 00000000
    xori    a1, a1, 0x0003             # a1 = 00000003
    sll     a1, a1, 16
    jal     func_8009A1B0
    sra     a1, a1, 16
lbl_8009BE9C:
    jal     func_8009A170
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009BEA4:
    jal     func_8009763C
    addiu   a0, s0, 0x1F78             # a0 = 00001F78
    lhu     t4, 0x0934(s1)             # 00000934
    bne     t4, $zero, lbl_8009BEC4
    nop
    lhu     t5, 0x0936(s1)             # 00000936
    beql    t5, $zero, lbl_8009BED8
    lhu     t9, 0x0A20(s1)             # 00000A20
lbl_8009BEC4:
    jal     func_80099F48
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8009BEF8
    nop
    lhu     t9, 0x0A20(s1)             # 00000A20
lbl_8009BED8:
    beq     t9, $zero, lbl_8009BEF0
    nop
    jal     func_800E172C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8009BEF8
    nop
lbl_8009BEF0:
    jal     func_800E0AA4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009BEF8:
    jal     func_80078290
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008BA68
    lw      a1, 0x0038($sp)
    jal     func_80058F50
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    jal     func_80099690
    lh      a0, 0x0110(t6)             # 80120110
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x4600(t7)            # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x241C           # $at = 0001241C
    addu    a0, s0, $at
    jal     func_80099354
    lh      a1, 0x0110(t7)             # 80120110
lbl_8009BF40:
    lw      t8, 0x0070($sp)
    beq     t8, $zero, lbl_8009BF58
    lui     t0, 0x800F                 # t0 = 800F0000
    lw      t0, -0x0E60(t0)            # 800EF1A0
    beql    t0, $zero, lbl_8009BFBC
    lui     $at, 0x0001                # $at = 00010000
lbl_8009BF58:
    lh      t1, 0x07A0(s0)             # 000007A0
    or      v1, $zero, $zero           # v1 = 00000000
    sh      t1, 0x07A2(s0)             # 000007A2
    lh      a2, 0x07A2(s0)             # 000007A2
lbl_8009BF68:
    beq     v1, a2, lbl_8009BF94
    sll     t2, v1,  2
    addu    t3, s0, t2
    lw      a1, 0x0790(t3)             # 00000790
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFCC
    beql    a1, $zero, lbl_8009BF98
    addiu   v1, v1, 0x0001             # v1 = 00000001
    jal     func_8004860C
    sw      v1, 0x0050($sp)
    lw      v1, 0x0050($sp)
    lh      a2, 0x07A2(s0)             # 000007A2
lbl_8009BF94:
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_8009BF98:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_8009BF68
    nop
    sll     t4, a2,  2
    addu    t5, s0, t4
    lw      a1, 0x0790(t5)             # 00000790
    jal     func_8004860C
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFCC
    lui     $at, 0x0001                # $at = 00010000
lbl_8009BFBC:
    ori     $at, $at, 0x0A24           # $at = 00010A24
    addu    a1, s0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0760           # $at = 00010760
    addu    a3, s0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A20           # $at = 00010A20
    addu    t6, s0, $at
    addiu   t9, s0, 0x20D8             # t9 = 000020D8
    sw      t9, 0x0010($sp)
    sw      t6, 0x0014($sp)
    lw      t7, 0x0000(s0)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, s0, 0x07A8             # a2 = 000007A8
    jal     func_8005D3A4
    sw      t7, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8009C010:
# "game_play" draw helper
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lhu     t6, 0x0934(v0)             # 00000934
    or      a0, s0, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_8009C044
    nop
    lhu     t7, 0x0936(v0)             # 00000936
    beq     t7, $zero, lbl_8009C050
    nop
lbl_8009C044:
    jal     func_8009A0E8
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8009C050:
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x46D4(t8)            # 8011B92C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_8009C074
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800756F0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009C074:
    jal     func_800E0A18
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
    lhu     t9, 0x0A20(v0)             # 00000A20
    beql    t9, $zero, lbl_8009C098
    lw      $ra, 0x001C($sp)
    jal     func_800E16C4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_8009C098:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009C0A8:
# "game_play" Draw
    addiu   $sp, $sp, 0xFDE0           # $sp -= 0x220
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0028($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0x0C38             # t5 = 80120C38
    or      s0, a0, $zero              # s0 = 00000000
    lui     $ra, 0x8000                # $ra = 80000000
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    lui     a1, 0x0001                 # a1 = 00010000
    addiu   a2, $zero, 0x0044          # a2 = 00000044
    lw      s1, 0x0000(s0)             # 00000000
    addu    s2, s0, a1
    lbu     t6, 0x17AE(s2)             # 000017AE
    multu   t6, a2
    mflo    t7
    addu    t8, s0, t7
    addu    t9, t8, a1
    lw      t6, 0x17B4(t9)             # 000017B4
    addu    t7, t6, $ra
    sw      t7, 0x0010(t5)             # 80120C48
    lbu     t8, 0x17AF(s2)             # 000017AF
    multu   t8, a2
    mflo    t9
    addu    t6, s0, t9
    addu    t7, t6, a1
    lw      t8, 0x17B4(t7)             # 000017B4
    addu    t9, t8, $ra
    sw      t9, 0x0014(t5)             # 80120C4C
    lw      t6, 0x00B0(s0)             # 000000B0
    addu    t7, t6, $ra
    sw      t7, 0x0008(t5)             # 80120C40
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDB06                 # t7 = DB060000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xDB06                 # t9 = DB060000
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t9, 0x0000(t0)             # 00000000
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0010             # t7 = DB060010
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t8, 0x17AE(s2)             # 000017AE
    multu   t8, a2
    mflo    t9
    addu    t6, s0, t9
    addu    t7, t6, a1
    lw      t8, 0x17B4(t7)             # DB0617C4
    sw      t8, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0010             # t6 = DB060010
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lbu     t7, 0x17AE(s2)             # 000017AE
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0014             # t3 = DB060014
    multu   t7, a2
    mflo    t8
    addu    t9, s0, t8
    addu    t6, t9, a1
    lw      t7, 0x17B4(t6)             # DB0617C4
    sw      t7, 0x0004(v0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0010             # t9 = DB060010
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s1)             # 000002B0
    sw      t9, 0x0000(t0)             # 00000000
    lbu     t6, 0x17AE(s2)             # 000017AE
    multu   t6, a2
    mflo    t7
    addu    t8, s0, t7
    addu    t9, t8, a1
    lw      t6, 0x17B4(t9)             # DB0617C4
    sw      t6, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(v1)             # 00000000
    lbu     t8, 0x17AF(s2)             # 000017AF
    multu   t8, a2
    mflo    t9
    addu    t6, s0, t9
    addu    t7, t6, a1
    lw      t8, 0x17B4(t7)             # 000017BC
    sw      t8, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0008             # t4 = DB060008
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v0)             # 00000000
    lbu     t6, 0x17AF(s2)             # 000017AF
    multu   t6, a2
    mflo    t7
    addu    t8, s0, t7
    addu    t9, t8, a1
    lw      t6, 0x17B4(t9)             # 000017BC
    sw      t6, 0x0004(v0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t3, 0x0000(t0)             # 00000000
    lbu     t8, 0x17AF(s2)             # 000017AF
    multu   t8, a2
    mflo    t9
    addu    t6, s0, t9
    addu    t7, t6, a1
    lw      t8, 0x17B4(t7)             # 000017BC
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t8, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t6, 0x00B0(s0)             # 000000B0
    sw      t6, 0x0004(v1)             # 00000004
    lw      v0, 0x02D0(s1)             # 000002D0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t8, 0x00B0(s0)             # 000000B0
    sw      t8, 0x0004(v0)             # 00000004
    lw      t0, 0x02B0(s1)             # 000002B0
    addiu   t9, t0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s1)             # 000002B0
    sw      t4, 0x0000(t0)             # 00000000
    lw      t6, 0x00B0(s0)             # 000000B0
    sw      t6, 0x0004(t0)             # 00000004
    jal     func_8007EE5C
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009A574
    lw      a1, 0x02C0(s1)             # 000002C0
    sw      v0, 0x02C0(s1)             # 000002C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009A574
    lw      a1, 0x02D0(s1)             # 000002D0
    sw      v0, 0x02D0(s1)             # 000002D0
    lh      t7, 0x07B4(s0)             # 000007B4
    lw      a2, 0x00D4(s0)             # 000000D4
    lw      a1, 0x00D0(s0)             # 000000D0
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    sw      a0, 0x0044($sp)
    cvt.s.w $f4, $f4
    mfc1    a3, $f4
    jal     func_80091A34
    nop
    lw      a0, 0x0044($sp)
    jal     func_80091F94
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    a1, s0, $at
    sw      a1, 0x0040($sp)
    jal     func_800ABB18
    addiu   a0, s0, 0x0158             # a0 = 00000158
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addu    a1, s0, $at
    sw      a1, 0x003C($sp)
    jal     func_800ABB18
    addiu   a0, s0, 0x0118             # a0 = 00000118
    lw      a0, 0x003C($sp)
    jal     func_800AA79C
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x0040($sp)
    jal     func_800AA79C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA740
    lw      a0, 0x003C($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x1DD8(s2)            # 00001DD8
    swc1    $f0, 0x1DD4(s2)            # 00001DD4
    swc1    $f0, 0x1DD0(s2)            # 00001DD0
    swc1    $f0, 0x1DCC(s2)            # 00001DCC
    swc1    $f0, 0x1DBC(s2)            # 00001DBC
    swc1    $f0, 0x1DAC(s2)            # 00001DAC
    jal     func_800ABE1C
    lw      a0, 0x0040($sp)
    lw      a1, 0x02C4(s1)             # 000002C4
    lw      a0, 0x0040($sp)
    addiu   a1, a1, 0xFFC0             # a1 = FFFFFFC0
    jal     func_800AB6BC              # guMtxF2L
    sw      a1, 0x02C4(s1)             # 000002C4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      v0, 0x1DE0($at)            # 00011DE0
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0004             # t9 = DB060004
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x1DE0(s2)             # 00001DE0
    sw      t6, 0x0004(v1)             # 00000004
    lw      a0, 0x02C0(s1)             # 000002C0
    jal     func_800A1AA0
    sw      a0, 0x01C8($sp)
    sw      v0, 0x01CC($sp)
    lw      t0, 0x02B0(s1)             # 000002B0
    lui     t8, 0xDE00                 # t8 = DE000000
    or      a1, s1, $zero              # a1 = 00000000
    addiu   t7, t0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s1)             # 000002B0
    sw      t8, 0x0000(t0)             # 00000000
    lw      t9, 0x01CC($sp)
    sw      t9, 0x0004(t0)             # 00000004
    lbu     a0, 0x241B(s2)             # 0000241B
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a0, $at, lbl_8009C460
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     a0, $at, lbl_8009C460
    nop
    lw      t6, 0x23F0(s2)             # 000023F0
    slti    $at, t6, 0x0038
    bnel    $at, $zero, lbl_8009C4C0
    lui     $at, 0x0001                # $at = 00010000
lbl_8009C460:
    jal     func_80091858
    addiu   a0, $sp, 0x0098            # a0 = FFFFFE78
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    sw      t7, 0x01B8($sp)
    addiu   t8, $zero, 0x00F0          # t8 = 000000F0
    addiu   t9, $zero, 0x0140          # t9 = 00000140
    sw      t9, 0x0094($sp)
    sw      t8, 0x008C($sp)
    sw      $zero, 0x0088($sp)
    sw      $zero, 0x0090($sp)
    addiu   a0, $sp, 0x0098            # a0 = FFFFFE78
    jal     func_80091AE0
    addiu   a1, $sp, 0x0088            # a1 = FFFFFE68
    addiu   a0, $sp, 0x0098            # a0 = FFFFFE78
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    jal     func_80092A88
    addiu   a2, $sp, 0x01CC            # a2 = FFFFFFAC
    lw      t9, 0x2400(s2)             # 00002400
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x21C8           # $at = 000121C8
    addu    a0, s0, $at
    jalr    $ra, t9
    addiu   a1, $sp, 0x01CC            # a1 = FFFFFFAC
    lui     $at, 0x0001                # $at = 00010000
lbl_8009C4C0:
    ori     $at, $at, 0x241C           # $at = 0001241C
    addu    a0, s0, $at
    jal     func_800994E4
    addiu   a1, $sp, 0x01CC            # a1 = FFFFFFAC
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xD160             # v0 = 8011D160
    lbu     t6, 0x0003(v0)             # 8011D163
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD148             # a0 = 8011D148
    beql    t6, $zero, lbl_8009C500
    lw      t8, 0x01CC($sp)
    lw      t7, 0x0000(v0)             # 8011D160
    addiu   a1, $sp, 0x01CC            # a1 = FFFFFFAC
    jal     func_80094114
    sw      t7, 0x0008(a0)             # 8011D150
    lw      t8, 0x01CC($sp)
lbl_8009C500:
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   t9, t8, 0x0008             # t9 = 00000008
    sw      t9, 0x01CC($sp)
    sw      $zero, 0x0004(t8)          # 00000004
    sw      t6, 0x0000(t8)             # 00000000
    lw      a0, 0x01C8($sp)
    jal     func_800A1AAC
    lw      a1, 0x01CC($sp)
    lw      t7, 0x01CC($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    lui     a0, 0x8012                 # a0 = 80120000
    sw      t7, 0x02C0(s1)             # 000002C0
    lw      t8, -0x2EC0(t8)            # 8011D140
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   a0, a0, 0xD060             # a0 = 8011D060
    bnel    t8, $at, lbl_8009C564
    lui     $at, 0x0001                # $at = 00010000
    lw      t9, 0x02C0(s1)             # 000002C0
    addiu   a1, $sp, 0x0080            # a1 = FFFFFE60
    jal     func_80097F60
    sw      t9, 0x0080($sp)
    lw      t6, 0x0080($sp)
    beq     $zero, $zero, lbl_8009CA2C
    sw      t6, 0x02C0(s1)             # 000002C0
    lui     $at, 0x0001                # $at = 00010000
lbl_8009C564:
    ori     $at, $at, 0x2124           # $at = 00012124
    lui     t7, 0x8013                 # t7 = 80130000
    addiu   t7, t7, 0xBE40             # t7 = 8012BE40
    addu    a0, s0, $at
    lw      a3, 0x02DC(s1)             # 000002DC
    sw      a0, 0x0040($sp)
    sw      t7, 0x0010($sp)
    addiu   a1, $zero, 0x0140          # a1 = 00000140
    jal     func_8009DD10
    addiu   a2, $zero, 0x00F0          # a2 = 000000F0
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      v1, 0x0190(v0)             # 80120190
    bnel    v1, $at, lbl_8009C5D8
    slti    $at, v1, 0x0004
    jal     func_80067500
    nop
    jal     func_8009FDEC
    lw      a0, 0x0040($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    lui     t6, 0x8012                 # t6 = 80120000
    sh      t8, 0x0190(t9)             # 80120190
    lw      t6, -0x4600(t6)            # 8011BA00
    beq     $zero, $zero, lbl_8009C5EC
    lh      v1, 0x0190(t6)             # 80120190
    slti    $at, v1, 0x0004
lbl_8009C5D8:
    bne     $at, $zero, lbl_8009C5EC
    lui     t7, 0x8012                 # t7 = 80120000
    sh      $zero, 0x0190(v0)          # 00000190
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      v1, 0x0190(t7)             # 80120190
lbl_8009C5EC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_8009C61C
    lbu     a0, 0x1E14(s2)             # 00001E14
    lw      t8, 0x02C0(s1)             # 000002C0
    lw      a0, 0x0040($sp)
    addiu   a1, $sp, 0x007C            # a1 = FFFFFE5C
    jal     func_8009F194
    sw      t8, 0x007C($sp)
    lw      t9, 0x007C($sp)
    beq     $zero, $zero, lbl_8009CA2C
    sw      t9, 0x02C0(s1)             # 000002C0
    lbu     a0, 0x1E14(s2)             # 00001E14
lbl_8009C61C:
    beq     a0, $zero, lbl_8009C6D0
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    beq     a0, $at, lbl_8009C6D0
    or      v0, a0, $zero              # v0 = 00000000
    lbu     t6, 0x0A39(s2)             # 00000A39
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $zero, lbl_8009C6D4
    lbu     t8, 0x0A3A(s2)             # 00000A3A
    beq     a0, $at, lbl_8009C64C
    addiu   a2, s0, 0x1F78             # a2 = 00001F78
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8009C694
lbl_8009C64C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A24           # $at = 00010A24
    addu    a1, s0, $at
    jal     func_8005C9C8
    sw      a2, 0x0038($sp)
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lbu     a2, 0x1E14(s2)             # 00001E14
    lbu     a3, 0x0A37(s2)             # 00000A37
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x00E4(s0)            # 000000E4
    lw      a0, 0x0038($sp)
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f8, 0x0014($sp)
    lwc1    $f10, 0x00E8(s0)           # 000000E8
    jal     func_80096FD8
    swc1    $f10, 0x0018($sp)
    beq     $zero, $zero, lbl_8009C6D4
    lbu     t8, 0x0A3A(s2)             # 00000A3A
lbl_8009C694:
    lh      t7, 0x20B8(s0)             # 000020B8
    bnel    t7, $zero, lbl_8009C6D4
    lbu     t8, 0x0A3A(s2)             # 00000A3A
    lwc1    $f16, 0x00E0(s0)           # 000000E0
    sll     a2, v0, 16
    sra     a2, a2, 16
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x00E4(s0)           # 000000E4
    addiu   a0, s0, 0x1F78             # a0 = 00001F78
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x00E8(s0)            # 000000E8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80096FD8
    swc1    $f4, 0x0018($sp)
lbl_8009C6D0:
    lbu     t8, 0x0A3A(s2)             # 00000A3A
lbl_8009C6D4:
    bne     t8, $zero, lbl_8009C6E4
    nop
    jal     func_8005F1D4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009C6E4:
    jal     func_80060D6C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80061024
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80061394
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a0, s0, 0x07A8             # a0 = 000007A8
    jal     func_8006650C
    or      a1, s1, $zero              # a1 = 00000000
    sw      v0, 0x0218($sp)
    lw      a1, 0x07A8(s0)             # 000007A8
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80066298
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0218($sp)
    jal     func_80065D60
    or      a1, s1, $zero              # a1 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    lh      t6, 0x0FD0(t9)             # 80120FD0
    bnel    t6, $zero, lbl_8009C77C
    lh      t7, 0x20B8(s0)             # 000020B8
    jal     func_80082790
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80080C48
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CD0           # $at = 00011CD0
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80080C48
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    lh      t7, 0x20B8(s0)             # 000020B8
lbl_8009C77C:
    beql    t7, $zero, lbl_8009C7FC
    lbu     t9, 0x0B13(s2)             # 00000B13
    lh      t8, 0x07A0(s0)             # 000007A0
    addiu   $at, $zero, 0x0019         # $at = 00000019
    addiu   a0, $sp, 0x006C            # a0 = FFFFFE4C
    sll     t9, t8,  2
    addu    t6, s0, t9
    lw      a1, 0x0790(t6)             # 00000790
    addiu   t8, s0, 0x1F78             # t8 = 00001F78
    lh      t7, 0x0142(a1)             # 00000142
    beql    t7, $at, lbl_8009C7FC
    lbu     t9, 0x0B13(s2)             # 00000B13
    jal     func_80049D34
    sw      t8, 0x0038($sp)
    lwc1    $f6, 0x00E0(s0)            # 000000E0
    lwc1    $f8, 0x006C($sp)
    lbu     a2, 0x1E14(s2)             # 00001E14
    lwc1    $f18, 0x0070($sp)
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x0074($sp)
    lw      a0, 0x0038($sp)
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f10, 0x0010($sp)
    lwc1    $f16, 0x00E4(s0)           # 000000E4
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x00E8(s0)            # 000000E8
    add.s   $f10, $f6, $f8
    jal     func_80096FD8
    swc1    $f10, 0x0018($sp)
    lbu     t9, 0x0B13(s2)             # 00000B13
lbl_8009C7FC:
    beq     t9, $zero, lbl_8009C810
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_80060758
    or      a2, s1, $zero              # a2 = 00000000
lbl_8009C810:
    lh      t6, 0x1E18(s2)             # 00001E18
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800625B0
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80024AB4
    addiu   a1, s0, 0x1C24             # a1 = 00001C24
    lbu     t8, 0x0A3A(s2)             # 00000A3A
    bne     t8, $zero, lbl_8009C8B8
    nop
    lwc1    $f16, 0x00E0(s0)           # 000000E0
    lwc1    $f18, 0x0A28(s2)           # 00000A28
    addiu   t9, $sp, 0x020C            # t9 = FFFFFFEC
    lui     $at, 0x0001                # $at = 00010000
    add.s   $f4, $f16, $f18
    ori     $at, $at, 0x0A24           # $at = 00010A24
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x020C($sp)
    lwc1    $f8, 0x0A2C(s2)            # 00000A2C
    lwc1    $f6, 0x00E4(s0)            # 000000E4
    lw      a2, 0x0044($sp)
    or      a3, s1, $zero              # a3 = 00000000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0210($sp)
    lwc1    $f18, 0x0A30(s2)           # 00000A30
    lwc1    $f16, 0x00E8(s0)           # 000000E8
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0214($sp)
    lw      t7, 0x0000(t9)             # FFFFFFEC
    sw      t7, 0x0010($sp)
    lw      t6, 0x0004(t9)             # FFFFFFF0
    sw      t6, 0x0014($sp)
    lw      t7, 0x0008(t9)             # FFFFFFF4
    sw      $zero, 0x001C($sp)
    jal     func_8005FA18
    sw      t7, 0x0018($sp)
lbl_8009C8B8:
    jal     func_80061CE4
    or      a0, s0, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t8, 0x0454(v0)             # 80120454
    beql    t8, $zero, lbl_8009C8FC
    lbu     t7, 0x0B05(s2)             # 00000B05
    lh      t9, 0x045C(v0)             # 8012045C
    lbu     a1, 0x0457(v0)             # 80120457
    lbu     a2, 0x0459(v0)             # 80120459
    lbu     a3, 0x045B(v0)             # 8012045B
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t6, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800625B0
    sw      t9, 0x0010($sp)
    lbu     t7, 0x0B05(s2)             # 00000B05
lbl_8009C8FC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t7, $at, lbl_8009C930
    lbu     a1, 0x0B0A(s2)             # 00000B0A
    lbu     t8, 0x0B09(s2)             # 00000B09
    lbu     a1, 0x0B06(s2)             # 00000B06
    lbu     a2, 0x0B07(s2)             # 00000B07
    lbu     a3, 0x0B08(s2)             # 00000B08
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t9, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800625B0
    sw      t8, 0x0010($sp)
    lbu     a1, 0x0B0A(s2)             # 00000B0A
lbl_8009C930:
    beq     a1, $zero, lbl_8009C940
    nop
    jal     func_80062780
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009C940:
    jal     func_80051F4C
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t7, 0x0190(t6)             # 80120190
    beq     t7, $at, lbl_8009C970
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x2EC0(t8)            # 8011D140
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_8009CA2C
    nop
lbl_8009C970:
    lw      t9, 0x02B0(s1)             # 000002B0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      t9, 0x0068($sp)
    lw      t6, 0x02DC(s1)             # 000002DC
    lui     t7, 0x8013                 # t7 = 80130000
    addiu   t7, t7, 0xBE40             # t7 = 8012BE40
    sw      t6, 0x2134($at)            # 00012134
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      t7, 0x2138($at)            # 00012138
    lw      a0, 0x0040($sp)
    jal     func_8009EC8C
    addiu   a1, $sp, 0x0068            # a1 = FFFFFE48
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $sp, 0x0068            # a1 = FFFFFE48
    lh      t9, 0x0190(t8)             # 80120190
    bnel    t9, $at, lbl_8009C9F4
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    lw      t6, 0x02DC(s1)             # 000002DC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      t6, 0x213C($at)            # 0001213C
    jal     func_8009EDD8
    lw      a0, 0x0040($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    beq     $zero, $zero, lbl_8009C9FC
    sh      t7, 0x0190(t8)             # 80120190
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_8009C9F4:
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, -0x2EC0($at)           # 8011D140
lbl_8009C9FC:
    lw      t6, 0x0068($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x02B0(s1)             # 000002B0
    sb      t7, 0x21C7($at)            # 000121C7
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      t8, 0x0116(v0)             # 80120116
    ori     t9, t8, 0x0001             # t9 = 80120001
    beq     $zero, $zero, lbl_8009CA34
    sh      t9, 0x0116(v0)             # 80120116
lbl_8009CA2C:
    jal     func_8009C010
    or      a0, s0, $zero              # a0 = 00000000
lbl_8009CA34:
    lw      t6, 0x01DC(s0)             # 000001DC
    beql    t6, $zero, lbl_8009CAA0
    lh      t7, 0x07A0(s0)             # 000007A0
    lh      t7, 0x07A0(s0)             # 000007A0
    addiu   a0, $sp, 0x004C            # a0 = FFFFFE2C
    sll     t8, t7,  2
    addu    t9, s0, t8
    jal     func_8004860C
    lw      a1, 0x0790(t9)             # 00000790
    jal     func_80092A1C
    lw      a0, 0x0044($sp)
    sw      $zero, 0x01DC(s0)          # 000001DC
    lbu     a0, 0x1E14(s2)             # 00001E14
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    beql    a0, $zero, lbl_8009CAA0
    lh      t7, 0x07A0(s0)             # 000007A0
    beql    a0, $at, lbl_8009CAA0
    lh      t7, 0x07A0(s0)             # 000007A0
    lbu     t6, 0x0A39(s2)             # 00000A39
    addiu   a0, s0, 0x1F78             # a0 = 00001F78
    bnel    t6, $zero, lbl_8009CAA0
    lh      t7, 0x07A0(s0)             # 000007A0
    lw      a1, 0x00E0(s0)             # 000000E0
    lw      a2, 0x00E4(s0)             # 000000E4
    jal     func_80096F50
    lw      a3, 0x00E8(s0)             # 000000E8
    lh      t7, 0x07A0(s0)             # 000007A0
lbl_8009CAA0:
    sll     t8, t7,  2
    addu    t9, s0, t8
    jal     func_80048E3C
    lw      a0, 0x0790(t9)             # 00000790
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0220           # $sp += 0x220


func_8009CAC8:
# "game_play" Main Update
# Pointer to stored in Global Context
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     $at, 0x8010                # $at = 80100000
    addiu   t7, t6, 0x0014             # t7 = 00000014
    jal     func_80051E60
    sw      t7, -0x1B30($at)           # 800FE4D0
    jal     func_8009AF1C
    lw      a0, 0x0018($sp)
    jal     func_8009C0A8
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009CB08:
# Call 8007943C if Global Context + 0x1D6C (cutscene play state) is 0
# A0 = Global Context
# V0 = 1 if ?, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x1D6C(a0)             # 00001D6C
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_8009CB30
    lw      $ra, 0x0014($sp)
    jal     func_8007943C
    nop
    sltu    v0, $zero, v0
    lw      $ra, 0x0014($sp)
lbl_8009CB30:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009CB3C:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0060($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      a0, 0x0060($sp)
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFF0
    sw      a2, 0x0068($sp)
    sw      a3, 0x0064($sp)
    jal     func_8002F644
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f4                   # $f4 = -32000.00
    lw      a2, 0x0068($sp)
    lw      a3, 0x0064($sp)
    c.lt.s  $f4, $f0
    swc1    $f0, 0x0040($sp)
    lui     $at, 0x8011                # $at = 80110000
    lh      t6, 0x0058($sp)
    bc1fl   lbl_8009CC80
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f16, -0x7290($at)         # 80108D70
    mtc1    t6, $f6                    # $f6 = 0.00
    lh      t7, 0x005A($sp)
    lh      t8, 0x005C($sp)
    cvt.s.w $f8, $f6
    mtc1    t7, $f10                   # $f10 = 0.00
    mtc1    t8, $f6                    # $f6 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    cvt.s.w $f4, $f10
    mul.s   $f14, $f8, $f16
    cvt.s.w $f8, $f6
    mul.s   $f18, $f4, $f16
    mtc1    $at, $f4                   # $f4 = 1.00
    mul.s   $f10, $f8, $f16
    swc1    $f18, 0x0038($sp)
    mul.s   $f6, $f14, $f14
    swc1    $f10, 0x0018($sp)
    swc1    $f10, 0x0034($sp)
    sub.s   $f0, $f4, $f6
    neg.s   $f4, $f14
    sqrt.s  $f0, $f0
    c.eq.s  $f0, $f2
    nop
    bc1tl   lbl_8009CC0C
    mov.s   $f16, $f2
    mul.s   $f12, $f18, $f0
    neg.s   $f8, $f10
    mul.s   $f16, $f8, $f0
    beq     $zero, $zero, lbl_8009CC10
    nop
    mov.s   $f16, $f2
lbl_8009CC0C:
    mov.s   $f12, $f2
lbl_8009CC10:
    mul.s   $f6, $f4, $f12
    swc1    $f0, 0x0000(a3)            # 00000000
    swc1    $f14, 0x0010(a3)           # 00000010
    mul.s   $f10, $f14, $f16
    lui     $at, 0x3F80                # $at = 3F800000
    swc1    $f6, 0x0004(a3)            # 00000004
    swc1    $f10, 0x0008(a3)           # 00000008
    lwc1    $f8, 0x0038($sp)
    swc1    $f8, 0x0014(a3)            # 00000014
    lwc1    $f4, 0x0034($sp)
    swc1    $f16, 0x0024(a3)           # 00000024
    swc1    $f12, 0x0028(a3)           # 00000028
    swc1    $f2, 0x000C(a3)            # 0000000C
    swc1    $f2, 0x001C(a3)            # 0000001C
    swc1    $f2, 0x0020(a3)            # 00000020
    swc1    $f2, 0x002C(a3)            # 0000002C
    swc1    $f4, 0x0018(a3)            # 00000018
    lwc1    $f6, 0x0000(a2)            # 00000000
    mtc1    $at, $f4                   # $f4 = 1.00
    swc1    $f6, 0x0030(a3)            # 00000030
    lwc1    $f10, 0x0040($sp)
    swc1    $f10, 0x0034(a3)           # 00000034
    lwc1    $f8, 0x0008(a2)            # 00000008
    swc1    $f4, 0x003C(a3)            # 0000003C
    swc1    $f8, 0x0038(a3)            # 00000038
    beq     $zero, $zero, lbl_8009CCD8
    lwc1    $f0, 0x0040($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_8009CC80:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    swc1    $f2, 0x0010(a3)            # 00000010
    swc1    $f2, 0x0008(a3)            # 00000008
    swc1    $f2, 0x0004(a3)            # 00000004
    swc1    $f2, 0x0000(a3)            # 00000000
    swc1    $f2, 0x002C(a3)            # 0000002C
    swc1    $f2, 0x0020(a3)            # 00000020
    swc1    $f2, 0x001C(a3)            # 0000001C
    swc1    $f2, 0x000C(a3)            # 0000000C
    swc1    $f2, 0x0028(a3)            # 00000028
    swc1    $f2, 0x0024(a3)            # 00000024
    swc1    $f2, 0x0018(a3)            # 00000018
    swc1    $f0, 0x0014(a3)            # 00000014
    lwc1    $f6, 0x0000(a2)            # 00000000
    swc1    $f6, 0x0030(a3)            # 00000030
    lwc1    $f10, 0x0004(a2)           # 00000004
    swc1    $f10, 0x0034(a3)           # 00000034
    lwc1    $f8, 0x0008(a2)            # 00000008
    swc1    $f0, 0x003C(a3)            # 0000003C
    swc1    $f8, 0x0038(a3)            # 00000038
    lwc1    $f0, 0x0040($sp)
lbl_8009CCD8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_8009CCE8:
# Load file to Game State Heap
# A0 = Global Context
# A1 = Pointer to Start/End VROM address of file to load
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0004(a3)             # 00000004
    lw      t7, 0x0000(a3)             # 00000000
    lw      a0, 0x0020($sp)
    sw      a3, 0x0024($sp)
    subu    a1, t6, t7
    sw      a1, 0x001C($sp)
    jal     func_800A01B8
    addiu   a0, a0, 0x0074             # a0 = 00000074
    lw      a3, 0x0024($sp)
    sw      v0, 0x0018($sp)
    lw      a2, 0x001C($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    lw      a1, 0x0000(a3)             # 00000000
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009CD44:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0004(a3)             # 00000004
    lw      t7, 0x0000(a3)             # 00000000
    lw      a0, 0x0020($sp)
    sw      a3, 0x0024($sp)
    subu    a1, t6, t7
    sw      a1, 0x001C($sp)
    jal     func_800A01B8
    addiu   a0, a0, 0x0074             # a0 = 00000074
    lw      a3, 0x0024($sp)
    sw      v0, 0x0018($sp)
    lw      a2, 0x001C($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_801C7C1C
    lw      a1, 0x0000(a3)             # 00000000
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009CDA0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sll     a2, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   a1, a0, 0x1F78             # a1 = 00001F78
    jal     func_80096E40
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A24           # $at = 00010A24
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8005BF48
    addu    a1, a0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009CDE8:
# Scene Initialization
# A0 = Global Context
# A1 = Spawn Number
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      a2, 0x1DEA($at)            # 00011DEA
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1DF4($at)         # 00011DF4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1DFC($at)         # 00011DFC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1E00($at)         # 00011E00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1E04($at)         # 00011E04
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1E0C($at)         # 00011E0C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1E08($at)         # 00011E08
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sb      $zero, 0x1DEB($at)         # 00011DEB
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a1, s0, $at
    jal     func_800813D4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80066438
    addiu   a1, s0, 0x07A8             # a1 = 000007A8
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D34           # $at = 00011D34
    addu    a1, s0, $at
    jal     func_80081FDC
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    a1, s0, $at
    jal     func_80080888
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8012                # $at = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    sh      $zero, 0x04B2(t6)          # 801204B2
    sh      $zero, -0x4610($at)        # 8011B9F0
    jal     func_800817A0
    lw      a1, 0x00B0(s0)             # 000000B0
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, s0
    lbu     a1, 0x1E14(a1)             # 00011E14
    jal     func_8009CDA0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009CEEC:
# Load Scene?
# A0 = Global Context
# A1 = Scene Index
# A2 = Spawn Index
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    sll     t6, a3,  2
    addu    t6, t6, a3
    beq     v0, $zero, lbl_8009CF44
    sll     t6, t6,  2
    lw      v1, 0x0048(v0)             # 80120048
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xB4E0             # a1 = 800FB4E0
    beq     v1, $zero, lbl_8009CF44
    or      a0, a3, $zero              # a0 = 00000000
    jalr    $ra, v1
    sw      a3, 0x002C($sp)
    lw      a3, 0x002C($sp)
    beq     $zero, $zero, lbl_8009CF54
    or      a1, v0, $zero              # a1 = 00000000
lbl_8009CF44:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xB4E0             # t7 = 800FB4E0
    addu    a1, t6, t7
    sb      $zero, 0x0013(a1)          # 00000013
lbl_8009CF54:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      a1, 0x242C($at)            # 0001242C
    sh      a3, 0x00A4(s0)             # 000000A4
    lbu     t8, 0x0011(a1)             # 00000011
    lui     t9, 0x8012                 # t9 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    sb      t8, 0x00A6(s0)             # 000000A6
    lw      t9, 0x1220(t9)             # 80121220
    beq     t9, $zero, lbl_8009CFAC
    nop
    lbu     t0, 0x0012(a1)             # 00000012
    blez    t0, lbl_8009CFAC
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8009CD44
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    sw      v0, 0x00B0(s0)             # 000000B0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     $zero, $zero, lbl_8009CFC0
    sb      t1, 0x0013(a1)             # 00000013
lbl_8009CFAC:
    jal     func_8009CCE8
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    sw      v0, 0x00B0(s0)             # 000000B0
    sb      $zero, 0x0013(a1)          # 00000013
lbl_8009CFC0:
    lw      t2, 0x00B0(s0)             # 000000B0
    lui     $at, 0x8000                # $at = 80000000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t3, t2, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t3, 0x0C40($at)            # 80120C40
    jal     func_8009CDE8
    lw      a1, 0x0030($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_8009D008
    lui     $at, 0x0001                # $at = 00010000
    lw      v1, 0x000C(v0)             # 8012000C
    beql    v1, $zero, lbl_8009D008
    lui     $at, 0x0001                # $at = 00010000
    jalr    $ra, v1
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_8009D008:
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    a1, s0, $at
    jal     func_800808A0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009D02C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    or      a1, $zero, $zero           # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800AA79C
    addu    a0, a0, $at
    lw      a0, 0x001C($sp)
    jal     func_800AB958
    lw      a1, 0x0020($sp)
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f2                   # $f2 = 160.00
    lw      v0, 0x0018($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    lw      a0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lwc1    $f4, 0x1D6C(v0)            # 00001D6C
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f10, 0x1D7C(v0)           # 00001D7C
    lwc1    $f16, 0x0004(a0)           # 00000004
    mul.s   $f8, $f4, $f6
    lwc1    $f6, 0x1D8C(v0)            # 00001D8C
    lw      a2, 0x0020($sp)
    mul.s   $f18, $f10, $f16
    lwc1    $f10, 0x0008(a0)           # 00000008
    mul.s   $f16, $f6, $f10
    lwc1    $f6, 0x0000(a2)            # 00000000
    add.s   $f4, $f8, $f18
    lwc1    $f18, 0x1D9C(v0)           # 00001D9C
    add.s   $f8, $f4, $f16
    add.s   $f0, $f18, $f8
    lwc1    $f18, 0x0004(a2)           # 00000004
    div.s   $f10, $f6, $f0
    div.s   $f8, $f18, $f0
    mul.s   $f4, $f10, $f2
    add.s   $f16, $f4, $f2
    mul.s   $f6, $f8, $f12
    swc1    $f16, 0x0000(a2)           # 00000000
    sub.s   $f10, $f12, $f6
    swc1    $f10, 0x0004(a2)           # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8009D0F0:
# Starts actor cutscene camera
# A0 = Global Context
# V0 =  camera ID
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     t6, v1,  2
lbl_8009D104:
    addu    t7, a3, t6
    lw      t8, 0x0790(t7)             # 00000790
    beql    t8, $zero, lbl_8009D130
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000002
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_8009D104
    sll     t6, v1,  2
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_8009D130:
    bne     v1, $at, lbl_8009D140
    sll     t9, v1,  2
    beq     $zero, $zero, lbl_8009D190
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8009D140:
    sll     t1, v1,  2
    subu    t1, t1, v1
    sll     t1, t1,  3
    subu    t1, t1, v1
    sll     t1, t1,  2
    subu    t1, t1, v1
    sll     t1, t1,  2
    addu    a0, a3, t1
    addiu   a0, a0, 0x01E0             # a0 = 000001E0
    addu    t0, a3, t9
    sw      a0, 0x0790(t0)             # 00000790
    sw      t0, 0x0018($sp)
    sh      v1, 0x001E($sp)
    addiu   a1, a3, 0x00B8             # a1 = 000000B8
    jal     func_800478B8
    addiu   a2, a3, 0x07C0             # a2 = 000007C0
    lw      t0, 0x0018($sp)
    lh      v0, 0x001E($sp)
    lw      t2, 0x0790(t0)             # 00000790
    sh      v0, 0x0164(t2)             # 00000164
lbl_8009D190:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009D1A0:
    lh      v0, 0x07A0(a0)             # 000007A0
    jr      $ra
    nop


func_8009D1AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D1E4
    sll     v0, a1, 16
    beq     $zero, $zero, lbl_8009D1E8
    lh      v0, 0x07A0(a3)             # 000007A0
lbl_8009D1E4:
    sra     v0, v0, 16
lbl_8009D1E8:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a2, $at, lbl_8009D1F8
    sll     t6, v0,  2
    sh      v0, 0x07A0(a3)             # 000007A0
lbl_8009D1F8:
    addu    t7, a3, t6
    sll     a1, a2, 16
    sra     a1, a1, 16
    jal     func_80047E34
    lw      a0, 0x0790(t7)             # 00000790
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009D21C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D248
    sll     v0, a1, 16
    beq     $zero, $zero, lbl_8009D24C
    lh      v0, 0x07A0(a2)             # 000007A0
lbl_8009D248:
    sra     v0, v0, 16
lbl_8009D24C:
    sll     t6, v0,  2
    addu    v1, a2, t6
    lw      a0, 0x0790(v1)             # 00000790
    addiu   a1, $zero, 0x0100          # a1 = 00000100
    beql    a0, $zero, lbl_8009D278
    lw      $ra, 0x0014($sp)
    jal     func_80047E34
    sw      v1, 0x0018($sp)
    lw      v1, 0x0018($sp)
    sw      $zero, 0x0790(v1)          # 00000790
    lw      $ra, 0x0014($sp)
lbl_8009D278:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009D284:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    sll     t6, s0,  2
lbl_8009D2A0:
    addu    t7, s1, t6
    lw      t8, 0x0790(t7)             # 00000790
    or      a0, s1, $zero              # a0 = 00000000
    sll     a1, s0, 16
    beql    t8, $zero, lbl_8009D2C4
    addiu   s0, s0, 0x0001             # s0 = 00000002
    jal     func_8009D21C
    sra     a1, a1, 16
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_8009D2C4:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_8009D2A0
    sll     t6, s0,  2
    sh      $zero, 0x07A0(s1)          # 000007A0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8009D2F0:
# Cutscenes? Related to Cutscene Command 0x07
# A0 = Global Context
# A1 = Cutscene Struct + 0x16
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D310
    sll     v1, a1, 16
    beq     $zero, $zero, lbl_8009D314
    lh      v1, 0x07A0(a0)             # 000007A0
lbl_8009D310:
    sra     v1, v1, 16
lbl_8009D314:
    sll     t6, v1,  2
    addu    t7, a0, t6
    lw      v0, 0x0790(t7)             # 00000790
    jr      $ra
    nop


func_8009D328:
# Updates actor camera
# A0 = Global Context
# A1 = set to 1 to update the camera
# A2 = float array origin?
# A3 = float array focus point?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    sw      s1, 0x0018($sp)
    or      s1, a2, $zero              # s1 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D368
    lw      t7, 0x0028($sp)
    lw      t6, 0x0028($sp)
    beq     $zero, $zero, lbl_8009D370
    lh      v0, 0x07A0(t6)             # 000007A0
lbl_8009D368:
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8009D370:
    sll     t8, v0,  2
    addu    t9, t7, t8
    lw      s0, 0x0790(t9)             # 00000790
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_80049818
    or      a0, s0, $zero              # a0 = 00000000
    sll     v1, v0,  1
    sw      v1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80049818
    lw      a2, 0x0034($sp)
    lw      v1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    or      v1, v1, v0                 # v1 = 00000000
    jal     func_800A5560
    sw      v1, 0x0024($sp)
    lw      v0, 0x0090(s0)             # 00000090
    lw      v1, 0x0024($sp)
    swc1    $f0, 0x00DC(s0)            # 000000DC
    beq     v0, $zero, lbl_8009D404
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f6, 0x0024(v0)            # 00000024
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x00E4(s0)            # 000000E4
    lwc1    $f16, 0x0028(v0)           # 00000028
    lwc1    $f10, 0x0004(s1)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x00E8(s0)           # 000000E8
    lwc1    $f6, 0x002C(v0)            # 0000002C
    lwc1    $f4, 0x0008(s1)            # 00000008
    sub.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_8009D418
    swc1    $f8, 0x00EC(s0)            # 000000EC
lbl_8009D404:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x00EC(s0)            # 000000EC
    swc1    $f0, 0x00E8(s0)            # 000000E8
    swc1    $f0, 0x00E4(s0)            # 000000E4
lbl_8009D418:
    lwc1    $f10, -0x728C($at)         # 80108D74
    or      v0, v1, $zero              # v0 = 00000000
    swc1    $f10, 0x0100(s0)           # 00000100
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8009D438:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    sw      s2, 0x0020($sp)
    or      s2, a2, $zero              # s2 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D47C
    lw      t7, 0x0028($sp)
    lw      t6, 0x0028($sp)
    beq     $zero, $zero, lbl_8009D484
    lh      v0, 0x07A0(t6)             # 000007A0
lbl_8009D47C:
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8009D484:
    sll     t8, v0,  2
    addu    t9, t7, t8
    lw      s0, 0x0790(t9)             # 00000790
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_80049818
    or      a0, s0, $zero              # a0 = 00000000
    sll     s1, v0,  1
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80049818
    lw      a2, 0x0034($sp)
    or      s1, s1, v0                 # s1 = 00000000
    sll     s1, s1,  1
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80049818
    lw      a2, 0x0038($sp)
    or      s1, s1, v0                 # s1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_800A5560
    lw      a1, 0x0034($sp)
    lw      v0, 0x0090(s0)             # 00000090
    swc1    $f0, 0x00DC(s0)            # 000000DC
    lui     $at, 0x8011                # $at = 80110000
    beql    v0, $zero, lbl_8009D528
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f4, 0x0000(s2)            # 00000000
    lwc1    $f6, 0x0024(v0)            # 00000024
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x00E4(s0)            # 000000E4
    lwc1    $f16, 0x0028(v0)           # 00000028
    lwc1    $f10, 0x0004(s2)           # 00000004
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x00E8(s0)           # 000000E8
    lwc1    $f6, 0x002C(v0)            # 0000002C
    lwc1    $f4, 0x0008(s2)            # 00000008
    sub.s   $f8, $f4, $f6
    beq     $zero, $zero, lbl_8009D538
    swc1    $f8, 0x00EC(s0)            # 000000EC
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8009D528:
    nop
    swc1    $f0, 0x00EC(s0)            # 000000EC
    swc1    $f0, 0x00E8(s0)            # 000000E8
    swc1    $f0, 0x00E4(s0)            # 000000E4
lbl_8009D538:
    lwc1    $f10, -0x7288($at)         # 80108D78
    or      v0, s1, $zero              # v0 = 00000000
    swc1    $f10, 0x0100(s0)           # 00000100
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8009D55C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x001E($sp)
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    addiu   a2, $sp, 0x0020            # a2 = 00000008
    sll     t7, t6,  2
    addu    t8, a3, t7
    jal     func_80049818
    lw      a0, 0x0790(t8)             # 00000790
    andi    v1, v0, 0x0001             # v1 = 00000000
    or      v0, v1, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009D5A4:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D5D0
    sll     v1, a1, 16
    beq     $zero, $zero, lbl_8009D5D4
    lh      v1, 0x07A0(a0)             # 000007A0
lbl_8009D5D0:
    sra     v1, v1, 16
lbl_8009D5D4:
    sll     t6, v1,  2
    addu    t7, a0, t6
    lw      a1, 0x0790(t7)             # 00000790
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      a2, 0x015A(a1)             # 0000015A
    jr      $ra
    nop


func_8009D5F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    bne     a2, v0, lbl_8009D628
    sll     v1, a2, 16
    beq     $zero, $zero, lbl_8009D62C
    lh      v1, 0x07A0(a3)             # 000007A0
lbl_8009D628:
    sra     v1, v1, 16
lbl_8009D62C:
    bne     a1, v0, lbl_8009D63C
    sll     t8, v1,  2
    beq     $zero, $zero, lbl_8009D644
    lh      v0, 0x07A0(a3)             # 000007A0
lbl_8009D63C:
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8009D644:
    sll     t6, v0,  2
    addu    t7, a3, t6
    addu    t9, a3, t8
    lw      a1, 0x0790(t9)             # 00000790
    jal     func_80049BE0
    lw      a0, 0x0790(t7)             # 00000790
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009D66C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a3, 0x002C($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a1, $at, lbl_8009D6A0
    lw      t7, 0x0020($sp)
    lw      t6, 0x0020($sp)
    beq     $zero, $zero, lbl_8009D6A8
    lh      v0, 0x07A0(t6)             # 000007A0
lbl_8009D6A0:
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8009D6A8:
    sll     t8, v0,  2
    addu    t9, t7, t8
    lw      a0, 0x0790(t9)             # 00000790
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80047C38
    sw      a0, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800495BC
    lh      a1, 0x002E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8009D6DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    jal     func_8009D2F0
    nop
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800495BC
    lh      a1, 0x0022($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009D718:
# Ends actor cutscene camera
# A0 = Global Context
# A1 = ?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sll     a3, a1, 16
    sra     a3, a3, 16
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_8009D750
    sll     a1, a3, 16
    beq     $zero, $zero, lbl_8009D754
    lh      a1, 0x07A0(s1)             # 000007A0
lbl_8009D750:
    sra     a1, a1, 16
lbl_8009D754:
    jal     func_8009D21C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    sll     t6, s0,  2
lbl_8009D764:
    addu    t7, s1, t6
    lw      t8, 0x0790(t7)             # 00000790
    or      a0, s1, $zero              # a0 = 00000000
    sll     a1, s0, 16
    beql    t8, $zero, lbl_8009D788
    addiu   s0, s0, 0x0001             # s0 = 00000002
    jal     func_8009D21C
    sra     a1, a1, 16
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_8009D788:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_8009D764
    sll     t6, s0,  2
    lh      a2, 0x0032($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x03FC          # a1 = 000003FC
    bgtz    a2, lbl_8009D7D8
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t9, 0x0790(s1)             # 00000790
    sh      $zero, 0x0162(t9)          # 00000162
    lw      v0, 0x0790(s1)             # 00000790
    lh      t0, 0x0162(v0)             # 00000162
    beq     $zero, $zero, lbl_8009D7E0
    sh      t0, 0x014E(v0)             # 0000014E
lbl_8009D7D8:
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
lbl_8009D7E0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8009D7F4:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     t6, a1,  2
    addu    t7, a0, t6
    lw      v1, 0x0790(t7)             # 00000790
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    beq     v1, $zero, lbl_8009D820
    nop
    jr      $ra
    lh      v0, 0x0130(v1)             # 00000130
lbl_8009D820:
    jr      $ra
    nop


func_8009D828:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sll     t6, a1,  2
    addu    t7, a0, t6
    lw      v0, 0x0790(t7)             # 00000790
    beql    v0, $zero, lbl_8009D860
    lh      t8, 0x0130(v0)             # 00000130
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8009D85C:
    lh      t8, 0x0130(v0)             # 00000130
lbl_8009D860:
    beql    a2, t8, lbl_8009D874
    lh      t9, 0x0140(v0)             # 00000140
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8009D870:
    lh      t9, 0x0140(v0)             # 00000140
lbl_8009D874:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     t9, $at, lbl_8009D88C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_8009D88C:
    jr      $ra
    nop


func_8009D894:
# Copies permanent scene flags for the current scene from the global context into the save data
# A0 = Global Context
    lh      t6, 0x00A4(a0)             # 000000A4
    lw      t0, 0x1D38(a0)             # 00001D38
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t7, t6,  3
    subu    t7, t7, t6
    sll     t7, t7,  2
    addiu   t8, t7, 0x00D4             # t8 = 000000D4
    addiu   t9, t9, 0xA5D0             # t9 = 8011A5D0
    addu    v0, t8, t9
    sw      t0, 0x0000(v0)             # 00000000
    lw      t1, 0x1D28(a0)             # 00001D28
    sw      t1, 0x0004(v0)             # 00000004
    lw      t2, 0x1D3C(a0)             # 00001D3C
    sw      t2, 0x0008(v0)             # 00000008
    lw      t3, 0x1D44(a0)             # 00001D44
    sw      t3, 0x000C(v0)             # 0000000C
    jr      $ra
    nop


func_8009D8DC:
# Set Void, Grotto, Farore's Wind Checkpoint
# (Helper to 8009D94C)
# A0 = Global Context
# A1 = Zoneout Type (0-2)
# A2 = Entrance Index
# A3 = Room Number (Global Context + 0x11CBC)
# SP+0x10 = Link Spawn Variable
# SP+0x14 = Coordinate Pointer
# SP+0x18 = Y Rotation
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     t6, a1,  3
    subu    t6, t6, a1
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xA5D0             # t7 = 8011A5D0
    sll     t6, t6,  2
    lw      t8, 0x0014($sp)
    addu    v0, t6, t7
    sh      a2, 0x1378(v0)             # 00001378
    sb      a3, 0x137A(v0)             # 0000137A
    lw      t0, 0x0000(t8)             # 00000000
    lh      t1, 0x001A($sp)
    lw      t2, 0x0010($sp)
    sw      t0, 0x1368(v0)             # 00001368
    lw      t9, 0x0004(t8)             # 00000004
    sw      t9, 0x136C(v0)             # 0000136C
    lw      t0, 0x0008(t8)             # 00000008
    sh      t1, 0x1374(v0)             # 00001374
    sh      t2, 0x1376(v0)             # 00001376
    sw      t0, 0x1370(v0)             # 00001370
    lw      t3, 0x1D2C(a0)             # 00001D2C
    sw      t3, 0x137C(v0)             # 0000137C
    lw      t4, 0x1D48(a0)             # 00001D48
    sw      t4, 0x1380(v0)             # 00001380
    jr      $ra
    nop


func_8009D94C:
# Set Void, Grotto, Farore's Wind Checkpoint
# A0 = Global Context
# A1 = Zoneout Type (0-2)
# A2 = Link Spawn Variable
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a2, 0x0030($sp)
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    lw      v1, 0x1C44(a0)             # 00001C44
    beq     v0, $at, lbl_8009D9A8
    addiu   $at, $zero, 0x003E         # $at = 0000003E
    beq     v0, $at, lbl_8009D9A8
    lui     a3, 0x0001                 # a3 = 00010000
    lw      t6, 0x0030($sp)
    addu    a3, a3, a0
    lb      a3, 0x1CBC(a3)             # 00011CBC
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   t7, v1, 0x0024             # t7 = 00000024
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lh      t8, 0x00B6(v1)             # 000000B6
    sll     a2, v0, 16
    sra     a2, a2, 16
    jal     func_8009D8DC
    sw      t8, 0x0018($sp)
lbl_8009D9A8:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009D9B8:
# Set Zoneout Type 1?
# A0 = Global Context
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t6, 0x1D2C(a0)             # 00001D2C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x137C(v0)             # 8011B94C
    lw      t7, 0x1D48(a0)             # 00001D48
    sw      t8, 0x1364(v0)             # 8011B934
    addu    $at, $at, a0
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sw      t7, 0x1380(v0)             # 8011B950
    sb      t9, 0x1E15($at)            # 00011E15
    lh      t0, 0x1378(v0)             # 8011B948
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      t0, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t1, 0x1E5E($at)            # 00011E5E
    jr      $ra
    nop


func_8009DA10:
# ?, Called after game over -> continue
# Related to zone outs in Tower Collapse
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    lui     $at, 0x0001                # $at = 00010000
    sw      t6, 0x1364(v1)             # 8011B934
    addu    $at, $at, a0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sb      t7, 0x1E15($at)            # 00011E15
    lh      v0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    addiu   t8, $zero, 0x043F          # t8 = 0000043F
    beq     v0, $at, lbl_8009DA64
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_8009DA64
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_8009DA64
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    bne     v0, $at, lbl_8009DA80
lbl_8009DA64:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      t8, 0x1E1A($at)            # 00011E1A
    jal     func_8006FDCC
    sw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_8009DA90
    lw      a0, 0x0018($sp)
lbl_8009DA80:
    lw      t9, 0x0000(v1)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      t9, 0x1E1A($at)            # 00011E1A
lbl_8009DA90:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    sb      t0, 0x1E5E($at)            # 00011E5E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009DAB0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D94C
    addiu   a2, $zero, 0x0DFF          # a2 = 00000DFF
    jal     func_8009DA10
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009DAE4:
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lw      t6, 0x1CC4(t6)             # 00011CC4
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     v0, 0x0000(t6)             # 00010000
    xori    v0, v0, 0x0001             # v0 = 00000001
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_8009DB4C
    nop
    lw      t7, -0x4600(t7)            # 8011BA00
    lh      v1, 0x04B2(t7)             # 801204B2
    xori    v0, v1, 0x0020             # v0 = 00000020
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_8009DB4C
    nop
    xori    v0, v1, 0x0030             # v0 = 00000030
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_8009DB4C
    nop
    xori    v0, v1, 0x0040             # v0 = 00000040
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_8009DB4C
    nop
    lh      v0, 0x00A4(a0)             # 000000A4
    xori    v0, v0, 0x0045             # v0 = 00000005
    sltu    v0, $zero, v0
lbl_8009DB4C:
    jr      $ra
    nop


func_8009DB54:
# Check if Game Updates are Disabled
# V0 = 1 if Global Context + 0x7B8 > 0
    lw      v0, 0x07B8(a0)             # 000007B8
    sltu    v0, $zero, v0
    jr      $ra
    nop


func_8009DB64:
    lbu     t6, 0x0002(a1)             # 00000002
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lui     t7, 0x0001                 # t7 = 00010000
    beql    t6, $at, lbl_8009DB84
    lhu     t8, 0x001C(a1)             # 0000001C
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8009DB80:
    lhu     t8, 0x001C(a1)             # 0000001C
lbl_8009DB84:
    addu    t7, t7, a0
    lw      t7, 0x1D38(t7)             # 00011D38
    sra     t9, t8, 10
    sll     t0, t9,  4
    addu    v0, t7, t0
    lb      v1, 0x0000(v0)             # 00000000
    lb      t1, 0x0002(v0)             # 00000002
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bnel    v1, t1, lbl_8009DBB8
    lb      t2, 0x0003(a1)             # 00000003
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8009DBB4:
    lb      t2, 0x0003(a1)             # 00000003
lbl_8009DBB8:
    bnel    v1, t2, lbl_8009DBD0
    lh      t4, 0x00B6(a1)             # 000000B6
    lh      t3, 0x00B6(a1)             # 000000B6
    beq     $zero, $zero, lbl_8009DBDC
    sh      t3, 0x0000(a2)             # 00000000
    lh      t4, 0x00B6(a1)             # 000000B6
lbl_8009DBD0:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t5, t4, $at
    sh      t5, 0x0000(a2)             # 00000000
lbl_8009DBDC:
    jr      $ra
    nop


func_8009DBE4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    lw      t7, 0x0044($sp)
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFEC
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    lw      t9, 0x0000(t7)             # 00000000
    addiu   t0, $sp, 0x0030            # t0 = FFFFFFF0
    addiu   t1, $sp, 0x003C            # t1 = FFFFFFFC
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 00000008
    sw      t9, 0x0008(t6)             # FFFFFFF4
    sw      a1, 0x0024($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a3, 0x0034($sp)
    jal     func_800347FC
    lw      a2, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8009DC8C
    lw      t2, 0x0044($sp)
    lwc1    $f4, 0x0004(t2)            # 00000004
    lwc1    $f6, 0x0030($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF8
    c.lt.s  $f4, $f6
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFE8
    bc1fl   lbl_8009DC90
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_8002F454
    addiu   a3, $sp, 0x002C            # a3 = FFFFFFEC
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    nop
    c.eq.s  $f0, $f8
    nop
    bc1tl   lbl_8009DC90
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_8009DC90
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8009DC8C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8009DC90:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8009DCA0:
    sw      a1, 0x0008(a0)             # 00000008
    sw      a2, 0x000C(a0)             # 0000000C
    sw      a3, 0x0014(a0)             # 00000014
    lw      t6, 0x0014($sp)
    addiu   t8, a1, 0xFFFF             # t8 = FFFFFFFF
    addiu   t9, a2, 0xFFFF             # t9 = FFFFFFFF
    sw      t6, 0x0018(a0)             # 00000018
    lw      t7, 0x0010($sp)
    sw      $zero, 0x0024(a0)          # 00000024
    sw      $zero, 0x0028(a0)          # 00000028
    sw      t8, 0x002C(a0)             # 0000002C
    sw      t9, 0x0030(a0)             # 00000030
    sw      t7, 0x0020(a0)             # 00000020
    jr      $ra
    nop


func_8009DCDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0050          # a1 = 00000050
    lw      a0, 0x0018($sp)
    jal     func_800A1B00
    addiu   a0, a0, 0x0044             # a0 = 00000044
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009DD10:
# ?, Framebuffer info related
# A0 = void* struct address
# A1 = s32 framebuffer width
# A2 = s32 framebuffer height
# A3 = void* backbuffer? address
# SP+0x10 = void* Z-Buffer ptr
    sw      a1, 0x0000(a0)             # 00000000
    sw      a2, 0x0004(a0)             # 00000004
    sw      a3, 0x0010(a0)             # 00000010
    lw      t6, 0x0010($sp)
    addiu   t7, a1, 0xFFFF             # t7 = FFFFFFFF
    addiu   t8, a2, 0xFFFF             # t8 = FFFFFFFF
    sw      $zero, 0x0034(a0)          # 00000034
    sw      $zero, 0x0038(a0)          # 00000038
    sw      t7, 0x003C(a0)             # 0000003C
    sw      t8, 0x0040(a0)             # 00000040
    sw      t6, 0x001C(a0)             # 0000001C
    jr      $ra
    nop


func_8009DD44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_800A1C00
    addiu   a0, a1, 0x0044             # a0 = 00000044
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009DD68:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x4080                # $at = 40800000
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    mtc1    $at, $f0                   # $f0 = 4.00
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t8, 0xEF20                 # t8 = EF200000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      t0, v0, $zero              # t0 = 00000008
    sw      t8, 0x0000(t0)             # 00000008
    sw      $zero, 0x0004(t0)          # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    lw      t9, 0x0000(s3)             # 00000000
    or      t1, v0, $zero              # t1 = 00000010
    lui     $at, 0xFF10                # $at = FF100000
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    andi    t7, t6, 0x0FFF             # t7 = 00000FFF
    or      t8, t7, $at                # t8 = FF100FFF
    sw      t8, 0x0000(t1)             # 00000010
    sw      a3, 0x0004(t1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      t2, v0, $zero              # t2 = 00000018
    lui     t9, 0xED00                 # t9 = ED000000
    sw      t9, 0x0000(t2)             # 00000018
    lw      t6, 0x0000(s3)             # 00000000
    lw      t7, 0x0004(s3)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000020
    mtc1    t6, $f4                    # $f4 = NaN
    mtc1    t7, $f16                   # $f16 = 0.00
    lui     $ra, 0xF200                # $ra = F2000000
    cvt.s.w $f6, $f4
    lui     s8, 0xF400                 # s8 = F4000000
    lui     s7, 0xE600                 # s7 = E6000000
    lui     s6, 0xF510                 # s6 = F5100000
    lui     s5, 0xFD10                 # s5 = FD100000
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mul.s   $f4, $f18, $f0
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x0FFF             # t9 = 00000FFF
    trunc.w.s $f6, $f4
    sll     t6, t9, 12
    mfc1    t9, $f6
    nop
    andi    t7, t9, 0x0FFF             # t7 = 00000FFF
    or      t8, t6, t7                 # t8 = FFFFFFFF
    sw      t8, 0x0004(t2)             # 0000001C
    lw      t9, 0x0000(s3)             # 00000000
    addiu   t7, $zero, 0x1000          # t7 = 00001000
    lw      t0, 0x0004(s3)             # 00000004
    sll     t6, t9,  1
    div     $zero, t7, t6
    mflo    s1
    or      t1, $zero, $zero           # t1 = 00000000
    bne     t6, $zero, lbl_8009DE94
    nop
    break   # 0x01C00
lbl_8009DE94:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t6, $at, lbl_8009DEAC
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8009DEAC
    nop
    break   # 0x01800
lbl_8009DEAC:
    lui     s2, 0x0700                 # s2 = 07000000
    blezl   t0, lbl_8009E004
    or      v1, v0, $zero              # v1 = 00000020
    lw      a2, 0x0000(s3)             # 00000000
lbl_8009DEBC:
    slt     $at, t0, s1
    or      v1, v0, $zero              # v1 = 00000020
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
    beq     $at, $zero, lbl_8009DED4
    or      t2, a2, $zero              # t2 = FFFFFFFF
    or      s1, t0, $zero              # s1 = 00000008
lbl_8009DED4:
    andi    t8, a2, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, s5                 # t9 = FD100FFF
    sw      t9, 0x0000(v1)             # 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    sw      s4, 0x0004(v1)             # 00000024
    sll     t7, t2,  1
    addiu   t6, t7, 0x0009             # t6 = 00001009
    sra     t8, t6,  3
    andi    t9, t8, 0x01FF             # t9 = 000001FF
    or      a0, v0, $zero              # a0 = 00000028
    sll     t7, t9,  9
    or      s0, t7, s6                 # s0 = F5101000
    sw      s0, 0x0000(a0)             # 00000028
    sw      s2, 0x0004(a0)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      a1, v0, $zero              # a1 = 00000030
    sw      s7, 0x0000(a1)             # 00000030
    sw      $zero, 0x0004(a1)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sll     a1, t2,  2
    addu    t3, t1, s1
    addiu   a2, t3, 0xFFFF             # a2 = FFFFFFFF
    andi    a1, a1, 0x0FFF             # a1 = 00000030
    sll     a1, a1, 12
    sll     a2, a2,  2
    or      t4, v0, $zero              # t4 = 00000038
    sll     a3, t1,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000000
    andi    a2, a2, 0x0FFF             # a2 = 00000FFF
    or      t8, a1, s2                 # t8 = 07000030
    or      t9, t8, a2                 # t9 = 07000FFF
    or      t6, s8, a3                 # t6 = F4000000
    sw      t6, 0x0000(t4)             # 00000038
    sw      t9, 0x0004(t4)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      v1, v0, $zero              # v1 = 00000040
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(v1)             # 00000040
    sw      $zero, 0x0004(v1)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a0, v0, $zero              # a0 = 00000048
    sw      s0, 0x0000(a0)             # 00000048
    sw      $zero, 0x0004(a0)          # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      t5, v0, $zero              # t5 = 00000050
    or      t6, $ra, a3                # t6 = F2000000
    or      t8, a1, a2                 # t8 = 00000FFF
    sw      t8, 0x0004(t5)             # 00000054
    sw      t6, 0x0000(t5)             # 00000050
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      v1, v0, $zero              # v1 = 00000058
    lui     $at, 0xE400                # $at = E4000000
    or      t9, a1, $at                # t9 = E4000030
    or      t7, t9, a2                 # t7 = E4000FFF
    sw      t7, 0x0000(v1)             # 00000058
    sw      a3, 0x0004(v1)             # 0000005C
    addiu   v0, v0, 0x0008             # v0 = 00000060
    or      a0, v0, $zero              # a0 = 00000060
    sll     t8, t1,  5
    andi    t9, t8, 0xFFFF             # t9 = 00000FFF
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(a0)             # 00000060
    sw      t9, 0x0004(a0)             # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      t2, v0, $zero              # t2 = 00000068
    lui     t6, 0x1000                 # t6 = 10000000
    ori     t6, t6, 0x0400             # t6 = 10000400
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(t2)             # 00000068
    sw      t6, 0x0004(t2)             # 0000006C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      t1, t3, $zero              # t1 = 00000000
    subu    t0, t0, s1
    bgtzl   t0, lbl_8009DEBC
    lw      a2, 0x0000(s3)             # 00000000
    or      v1, v0, $zero              # v1 = 00000070
lbl_8009E004:
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000070
    sw      $zero, 0x0004(v1)          # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    lw      t9, 0x0000(s3)             # 00000000
    lui     $at, 0xFF10                # $at = FF100000
    or      a0, v0, $zero              # a0 = 00000078
    addiu   t7, t9, 0xFFFF             # t7 = 00000FFE
    andi    t6, t7, 0x0FFF             # t6 = 00000FFE
    or      t8, t6, $at                # t8 = FF100FFE
    sw      t8, 0x0000(a0)             # 00000078
    lw      t9, 0x0010(s3)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000080
    sw      t9, 0x0004(a0)             # 0000007C
    lw      t7, 0x0034($sp)
    sw      v0, 0x0000(t7)             # 00000FFE
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8009E074:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f0                   # $f0 = 4.00
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t8, 0xEF20                 # t8 = EF200000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a2, v0, $zero              # a2 = 00000008
    sw      t8, 0x0000(a2)             # 00000008
    sw      $zero, 0x0004(a2)          # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    lw      t9, 0x0000(a0)             # 00000000
    lui     $at, 0xFF10                # $at = FF100000
    or      a3, v0, $zero              # a3 = 00000010
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    andi    t7, t6, 0x0FFF             # t7 = 00000FFF
    or      t8, t7, $at                # t8 = FF100FFF
    sw      t8, 0x0000(a3)             # 00000010
    lw      t9, 0x0010(a0)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000018
    lui     $ra, 0xF100                # $ra = F1000000
    sw      t9, 0x0004(a3)             # 00000014
    lw      t6, 0x0034(a0)             # 00000034
    lui     $at, 0xED00                # $at = ED000000
    or      t0, v0, $zero              # t0 = 00000018
    mtc1    t6, $f4                    # $f4 = NaN
    addiu   v0, v0, 0x0008             # v0 = 00000020
    lui     s8, 0xE100                 # s8 = E1000000
    cvt.s.w $f6, $f4
    lui     s7, 0xE400                 # s7 = E4000000
    lui     s6, 0xF200                 # s6 = F2000000
    lui     s5, 0xF400                 # s5 = F4000000
    lui     s4, 0xE600                 # s4 = E6000000
    lui     s3, 0xFD10                 # s3 = FD100000
    mul.s   $f8, $f6, $f0
    lui     s2, 0x0700                 # s2 = 07000000
    lui     s1, 0xF510                 # s1 = F5100000
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x0FFF             # t9 = 00000FFF
    lw      t8, 0x0038(a0)             # 00000038
    sll     t6, t9, 12
    or      t7, t6, $at                # t7 = FFFFFFFF
    mtc1    t8, $f16                   # $f16 = -191491900000000000000000000000000000000.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f4, $f18, $f0
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    andi    t8, t6, 0x0FFF             # t8 = 00000FFF
    or      t9, t7, t8                 # t9 = FFFFFFFF
    sw      t9, 0x0000(t0)             # 00000018
    lw      t6, 0x003C(a0)             # 0000003C
    lw      t8, 0x0040(a0)             # 00000040
    addiu   t7, t6, 0x0001             # t7 = 00000000
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000FFF
    addiu   t9, t8, 0x0001             # t9 = 00001000
    mtc1    t9, $f4                    # $f4 = 0.00
    sll     t7, t6, 12
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x0FFF             # t9 = 00000FFF
    or      t6, t7, t9                 # t6 = 00000FFF
    sw      t6, 0x0004(t0)             # 0000001C
    lw      t8, 0x002C(a0)             # 0000002C
    lw      t7, 0x0024(a0)             # 00000024
    or      s0, $zero, $zero           # s0 = 00000000
    subu    t9, t8, t7
    sll     t6, t9,  1
    addiu   t8, t6, 0x0002             # t8 = 00001001
    addiu   t7, $zero, 0x1000          # t7 = 00001000
    div     $zero, t7, t8
    lw      t6, 0x0028(a0)             # 00000028
    lw      t9, 0x0030(a0)             # 00000030
    mflo    a3
    subu    t1, t9, t6
    bne     t8, $zero, lbl_8009E21C
    nop
    break   # 0x01C00
lbl_8009E21C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8009E234
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8009E234
    nop
    break   # 0x01800
lbl_8009E234:
    addiu   t1, t1, 0x0001             # t1 = 00000001
    blez    t1, lbl_8009E43C
    slt     $at, t1, a3
lbl_8009E240:
    beq     $at, $zero, lbl_8009E24C
    lw      a2, 0x0028(a0)             # 00000028
    or      a3, t1, $zero              # a3 = 00000001
lbl_8009E24C:
    lw      t7, 0x0038(a0)             # 00000038
    addu    t0, a2, s0
    sll     t3, t0,  2
    addu    t2, t7, s0
    lw      t8, 0x0008(a0)             # 00000008
    or      v1, v0, $zero              # v1 = 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    addiu   t9, t8, 0xFFFF             # t9 = 00001000
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    or      t7, t6, s3                 # t7 = FD100000
    sw      t7, 0x0000(v1)             # 00000020
    lw      t8, 0x0014(a0)             # 00000014
    or      a1, v0, $zero              # a1 = 00000028
    andi    t3, t3, 0x0FFF             # t3 = 00000000
    sw      t8, 0x0004(v1)             # 00000024
    lw      t9, 0x002C(a0)             # 0000002C
    lw      t6, 0x0024(a0)             # 00000024
    sw      s2, 0x0004(a1)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    subu    t7, t9, t6
    sll     t8, t7,  1
    addiu   t9, t8, 0x0009             # t9 = 0000100A
    sra     t6, t9,  3
    andi    t7, t6, 0x01FF             # t7 = 00000000
    sll     t8, t7,  9
    or      t9, t8, s1                 # t9 = F5101001
    sw      t9, 0x0000(a1)             # 00000028
    or      v1, v0, $zero              # v1 = 00000030
    sw      s4, 0x0000(v1)             # 00000030
    sw      $zero, 0x0004(v1)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    lw      t6, 0x0024(a0)             # 00000024
    or      a1, v0, $zero              # a1 = 00000038
    addu    t5, t0, a3
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    sll     t9, t8, 12
    or      t6, t9, s5                 # t6 = F5101001
    or      t7, t6, t3                 # t7 = F5101001
    sw      t7, 0x0000(a1)             # 00000038
    lw      t8, 0x002C(a0)             # 0000002C
    addiu   t5, t5, 0xFFFF             # t5 = FFFFFFFF
    sll     t5, t5,  2
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000001
    sll     t7, t6, 12
    or      t8, t7, s2                 # t8 = F7101001
    andi    t5, t5, 0x0FFF             # t5 = 00000FFF
    or      t9, t8, t5                 # t9 = F7101FFF
    sw      t9, 0x0004(a1)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a2, v0, $zero              # a2 = 00000040
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(a2)             # 00000040
    sw      $zero, 0x0004(a2)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    lw      t7, 0x002C(a0)             # 0000002C
    lw      t8, 0x0024(a0)             # 00000024
    or      t4, v0, $zero              # t4 = 00000048
    sw      $zero, 0x0004(t4)          # 0000004C
    subu    t9, t7, t8
    sll     t6, t9,  1
    addiu   t7, t6, 0x0009             # t7 = E7000009
    sra     t8, t7,  3
    andi    t9, t8, 0x01FF             # t9 = 00000001
    sll     t6, t9,  9
    or      t7, t6, s1                 # t7 = F7100000
    sw      t7, 0x0000(t4)             # 00000048
    addiu   v0, v0, 0x0008             # v0 = 00000050
    lw      t8, 0x0024(a0)             # 00000024
    or      v1, v0, $zero              # v1 = 00000050
    addiu   v0, v0, 0x0008             # v0 = 00000058
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000001
    sll     t7, t6, 12
    or      t8, t7, s6                 # t8 = F7100000
    or      t9, t8, t3                 # t9 = F7100000
    sw      t9, 0x0000(v1)             # 00000050
    lw      t6, 0x002C(a0)             # 0000002C
    addu    s0, s0, a3
    subu    t1, t1, a3
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    sll     t9, t8, 12
    or      t6, t9, t5                 # t6 = F7100FFF
    sw      t6, 0x0004(v1)             # 00000054
    lw      t7, 0x003C(a0)             # 0000003C
    or      a1, v0, $zero              # a1 = 00000058
    addiu   v0, v0, 0x0008             # v0 = 00000060
    sll     t8, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000000
    sll     t6, t9, 12
    addu    t8, t2, a3
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    or      t7, t6, s7                 # t7 = F7100FFF
    sll     t6, t9,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000FFF
    or      t9, t7, t8                 # t9 = F7100FFF
    sw      t9, 0x0000(a1)             # 00000058
    lw      t6, 0x0034(a0)             # 00000034
    or      a2, v0, $zero              # a2 = 00000060
    addiu   v0, v0, 0x0008             # v0 = 00000068
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    sll     t6, t2,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000FFF
    sll     t9, t8, 12
    or      t8, t9, t7                 # t8 = F7100FFF
    sw      t8, 0x0004(a1)             # 0000005C
    sw      s8, 0x0000(a2)             # 00000060
    lw      t7, 0x0024(a0)             # 00000024
    sll     t6, t0,  5
    andi    t9, t6, 0xFFFF             # t9 = 00000FFF
    sll     t8, t7, 21
    or      t7, t8, t9                 # t7 = F7100FFF
    sw      t7, 0x0004(a2)             # 00000064
    or      v1, v0, $zero              # v1 = 00000068
    lui     t6, 0x1000                 # t6 = 10000000
    ori     t6, t6, 0x0400             # t6 = 10000400
    sw      t6, 0x0004(v1)             # 0000006C
    sw      $ra, 0x0000(v1)            # 00000068
    addiu   v0, v0, 0x0008             # v0 = 00000070
    bgtzl   t1, lbl_8009E240
    slt     $at, t1, a3
lbl_8009E43C:
    or      v1, v0, $zero              # v1 = 00000070
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000070
    sw      $zero, 0x0004(v1)          # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    lw      t9, 0x0000(a0)             # 00000000
    lui     $at, 0xFF10                # $at = FF100000
    or      a1, v0, $zero              # a1 = 00000078
    addiu   t7, t9, 0xFFFF             # t7 = 00000FFE
    andi    t6, t7, 0x0FFF             # t6 = 00000FFE
    or      t8, t6, $at                # t8 = FF100FFE
    sw      t8, 0x0000(a1)             # 00000078
    lw      t9, 0x0010(a0)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a2, v0, $zero              # a2 = 00000080
    sw      t9, 0x0004(a1)             # 0000007C
    lui     t7, 0xED00                 # t7 = ED000000
    sw      t7, 0x0000(a2)             # 00000080
    lw      t6, 0x0000(a0)             # 00000000
    lw      t8, 0x0004(a0)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000088
    mtc1    t6, $f16                   # $f16 = 0.00
    mtc1    t8, $f8                    # $f8 = -191491900000000000000000000000000000000.00
    cvt.s.w $f18, $f16
    cvt.s.w $f10, $f8
    mul.s   $f4, $f18, $f0
    trunc.w.s $f6, $f4
    mul.s   $f16, $f10, $f0
    mfc1    t9, $f6
    nop
    andi    t7, t9, 0x0FFF             # t7 = 00000FFF
    trunc.w.s $f18, $f16
    sll     t6, t7, 12
    mfc1    t7, $f18
    nop
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t6, t8                 # t9 = 00000FFF
    sw      t9, 0x0004(a2)             # 00000084
    lw      t7, 0x0034($sp)
    sw      v0, 0x0000(t7)             # 00000FFF
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8009E50C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s0, 0x0008($sp)
    or      s0, a3, $zero              # s0 = 00000000
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t8, 0xEF00                 # t8 = EF000000
    lw      v0, 0x0000(t6)             # 00000000
    or      t0, v0, $zero              # t0 = 00000000
    sw      t7, 0x0000(t0)             # 00000000
    sw      $zero, 0x0004(t0)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      t1, v0, $zero              # t1 = 00000008
    lui     t9, 0x0F0A                 # t9 = 0F0A0000
    ori     t9, t9, 0x4004             # t9 = 0F0A4004
    ori     t8, t8, 0x0CF0             # t8 = EF000CF0
    sw      t8, 0x0000(t1)             # 00000008
    sw      t9, 0x0004(t1)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t2, v0, $zero              # t2 = 00000010
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(t2)             # 00000010
    lw      t6, 0x0044($sp)
    lw      t8, 0x0040($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000018
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sll     t9, t8, 24
    sll     t8, t7, 16
    lw      t7, 0x0048($sp)
    or      t6, t9, t8                 # t6 = EF0A4CF4
    or      v1, v0, $zero              # v1 = 00000018
    andi    t9, t7, 0x00FF             # t9 = 00000000
    sll     t8, t9,  8
    lw      t9, 0x004C($sp)
    or      t7, t6, t8                 # t7 = EF0A4CF4
    addiu   v0, v0, 0x0008             # v0 = 00000020
    andi    t6, t9, 0x00FF             # t6 = 00000000
    or      t8, t7, t6                 # t8 = EF0A4CF4
    sw      t8, 0x0004(t2)             # 00000014
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     $at, 0x4080                # $at = 40800000
    lui     t7, 0xFFFC                 # t7 = FFFC0000
    ori     t7, t7, 0xFC7E             # t7 = FFFCFC7E
    ori     t9, t9, 0xFFFF             # t9 = FCFFFFFF
    mtc1    $at, $f0                   # $f0 = 4.00
    sw      t9, 0x0000(v1)             # 00000018
    sw      t7, 0x0004(v1)             # 0000001C
    or      a0, v0, $zero              # a0 = 00000020
    lui     t6, 0xFC12                 # t6 = FC120000
    ori     t6, t6, 0xFE25             # t6 = FC12FE25
    addiu   t8, $zero, 0xFDFE          # t8 = FFFFFDFE
    sw      t8, 0x0004(a0)             # 00000024
    sw      t6, 0x0000(a0)             # 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    lw      t9, 0x0000(s4)             # 00000000
    or      a1, v0, $zero              # a1 = 00000028
    lui     $at, 0xFF10                # $at = FF100000
    addiu   t7, t9, 0xFFFF             # t7 = FCFFFFFE
    andi    t6, t7, 0x0FFF             # t6 = 00000FFE
    or      t8, t6, $at                # t8 = FF100FFE
    sw      t8, 0x0000(a1)             # 00000028
    sw      s0, 0x0004(a1)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      a2, v0, $zero              # a2 = 00000030
    lui     t9, 0xED00                 # t9 = ED000000
    sw      t9, 0x0000(a2)             # 00000030
    lw      t7, 0x0000(s4)             # 00000000
    lw      t6, 0x0004(s4)             # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000038
    mtc1    t7, $f4                    # $f4 = -10633820000000000000000000000000000000.00
    mtc1    t6, $f16                   # $f16 = 0.00
    lui     $ra, 0xF400                # $ra = F4000000
    cvt.s.w $f6, $f4
    lui     s8, 0xE600                 # s8 = E6000000
    lui     s7, 0xF510                 # s7 = F5100000
    lui     s6, 0xFD10                 # s6 = FD100000
    lui     s3, 0x0700                 # s3 = 07000000
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mul.s   $f4, $f18, $f0
    mfc1    t8, $f10
    nop
    andi    t9, t8, 0x0FFF             # t9 = 00000FFE
    trunc.w.s $f6, $f4
    sll     t7, t9, 12
    mfc1    t9, $f6
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000FFE
    or      t8, t7, t6                 # t8 = FCFFFFFE
    sw      t8, 0x0004(a2)             # 00000034
    lw      t9, 0x0000(s4)             # 00000000
    addiu   t6, $zero, 0x1000          # t6 = 00001000
    lw      a3, 0x0004(s4)             # 00000004
    sll     t7, t9,  1
    div     $zero, t6, t7
    mflo    s2
    or      t0, $zero, $zero           # t0 = 00000000
    bne     t7, $zero, lbl_8009E6CC
    nop
    break   # 0x01C00
lbl_8009E6CC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_8009E6E4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8009E6E4
    nop
    break   # 0x01800
lbl_8009E6E4:
    blezl   a3, lbl_8009E858
    or      v1, v0, $zero              # v1 = 00000038
    lw      t1, 0x0000(s4)             # 00000000
lbl_8009E6F0:
    slt     $at, a3, s2
    or      v1, v0, $zero              # v1 = 00000038
    addiu   t1, t1, 0xFFFF             # t1 = 00000007
    beq     $at, $zero, lbl_8009E708
    or      a2, t1, $zero              # a2 = 00000007
    or      s2, a3, $zero              # s2 = 00000000
lbl_8009E708:
    andi    t8, t1, 0x0FFF             # t8 = 00000007
    or      t9, t8, s6                 # t9 = FD100007
    sw      t9, 0x0000(v1)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000040
    sw      s5, 0x0004(v1)             # 0000003C
    sll     t6, a2,  1
    addiu   t7, t6, 0x0009             # t7 = 00001009
    sra     t8, t7,  3
    andi    t9, t8, 0x01FF             # t9 = 00000007
    or      a0, v0, $zero              # a0 = 00000040
    sll     t6, t9,  9
    or      s1, t6, s7                 # s1 = F5101000
    sw      s1, 0x0000(a0)             # 00000040
    sw      s3, 0x0004(a0)             # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a1, v0, $zero              # a1 = 00000048
    sw      s8, 0x0000(a1)             # 00000048
    sw      $zero, 0x0004(a1)          # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    sll     t4, a2,  2
    addu    t1, t0, s2
    addiu   t2, t1, 0xFFFF             # t2 = 00000006
    andi    t4, t4, 0x0FFF             # t4 = 00000000
    sll     t4, t4, 12
    sll     s0, t2,  2
    or      t3, v0, $zero              # t3 = 00000050
    sll     a1, t0,  2
    andi    a1, a1, 0x0FFF             # a1 = 00000048
    andi    s0, s0, 0x0FFF             # s0 = 00000000
    or      t8, t4, s3                 # t8 = 07000000
    or      t9, t8, s0                 # t9 = 07000000
    or      t7, $ra, a1                # t7 = F4000048
    sw      t7, 0x0000(t3)             # 00000050
    sw      t9, 0x0004(t3)             # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      v1, v0, $zero              # v1 = 00000058
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(v1)             # 00000058
    sw      $zero, 0x0004(v1)          # 0000005C
    addiu   v0, v0, 0x0008             # v0 = 00000060
    or      a0, v0, $zero              # a0 = 00000060
    sw      s1, 0x0000(a0)             # 00000060
    sw      $zero, 0x0004(a0)          # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      t5, v0, $zero              # t5 = 00000068
    lui     $at, 0xF200                # $at = F2000000
    or      t7, a1, $at                # t7 = F2000048
    or      t8, t4, s0                 # t8 = 00000000
    sw      t8, 0x0004(t5)             # 0000006C
    sw      t7, 0x0000(t5)             # 00000068
    addiu   v0, v0, 0x0008             # v0 = 00000070
    addiu   t9, a2, 0x0001             # t9 = 00000008
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    sll     t8, t7, 12
    addiu   t6, t2, 0x0001             # t6 = 00000007
    lui     $at, 0xE400                # $at = E4000000
    or      t9, t8, $at                # t9 = E4000000
    sll     t7, t6,  2
    or      v1, v0, $zero              # v1 = 00000070
    andi    t8, t7, 0x0FFF             # t8 = 00000000
    or      t6, t9, t8                 # t6 = E4000000
    sw      t6, 0x0000(v1)             # 00000070
    sw      a1, 0x0004(v1)             # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      a0, v0, $zero              # a0 = 00000078
    sll     t9, t0,  5
    andi    t8, t9, 0xFFFF             # t8 = 00000000
    lui     t7, 0xE100                 # t7 = E1000000
    sw      t7, 0x0000(a0)             # 00000078
    sw      t8, 0x0004(a0)             # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      t3, v0, $zero              # t3 = 00000080
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t3)             # 00000080
    sw      t7, 0x0004(t3)             # 00000084
    addiu   v0, v0, 0x0008             # v0 = 00000088
    or      t0, t1, $zero              # t0 = 00000007
    subu    a3, a3, s2
    bgtzl   a3, lbl_8009E6F0
    lw      t1, 0x0000(s4)             # 00000000
    or      v1, v0, $zero              # v1 = 00000088
lbl_8009E858:
    lui     t9, 0xE700                 # t9 = E7000000
    sw      t9, 0x0000(v1)             # 00000088
    sw      $zero, 0x0004(v1)          # 0000008C
    addiu   v0, v0, 0x0008             # v0 = 00000090
    lw      t8, 0x0000(s4)             # 00000000
    lui     $at, 0xFF10                # $at = FF100000
    or      a0, v0, $zero              # a0 = 00000090
    addiu   t6, t8, 0xFFFF             # t6 = FFFFFFFF
    andi    t7, t6, 0x0FFF             # t7 = 00000FFF
    or      t9, t7, $at                # t9 = FF100FFF
    sw      t9, 0x0000(a0)             # 00000090
    lw      t8, 0x0010(s4)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000098
    sw      t8, 0x0004(a0)             # 00000094
    lw      t6, 0x0034($sp)
    sw      v0, 0x0000(t6)             # FFFFFFFF
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8009E8C8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    jal     func_8009E50C
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8009E904:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s6, 0x0020($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    lui     t8, 0xEF00                 # t8 = EF000000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      t0, v0, $zero              # t0 = 00000008
    lui     t9, 0x0F0A                 # t9 = 0F0A0000
    ori     t9, t9, 0x0004             # t9 = 0F0A0004
    ori     t8, t8, 0x0CF0             # t8 = EF000CF0
    sw      t8, 0x0000(t0)             # 00000008
    sw      t9, 0x0004(t0)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t1, v0, $zero              # t1 = 00000010
    lui     t6, 0xFCFF                 # t6 = FCFF0000
    lui     t7, 0xFFFC                 # t7 = FFFC0000
    ori     t7, t7, 0xFE7F             # t7 = FFFCFE7F
    ori     t6, t6, 0xFFFF             # t6 = FCFFFFFF
    sw      t6, 0x0000(t1)             # 00000010
    sw      t7, 0x0004(t1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    lw      t8, 0x0000(s4)             # 00000000
    or      t2, v0, $zero              # t2 = 00000018
    lui     $at, 0xFF88                # $at = FF880000
    addiu   t9, t8, 0xFFFF             # t9 = EF000CEF
    andi    t6, t9, 0x0FFF             # t6 = 00000CEF
    or      t7, t6, $at                # t7 = FF880CEF
    sw      t7, 0x0000(t2)             # 00000018
    sw      a3, 0x0004(t2)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      t3, v0, $zero              # t3 = 00000020
    lui     t8, 0xED00                 # t8 = ED000000
    sw      t8, 0x0000(t3)             # 00000020
    lw      t9, 0x0000(s4)             # 00000000
    lw      t6, 0x0004(s4)             # 00000004
    lui     $at, 0x4080                # $at = 40800000
    mtc1    t9, $f4                    # $f4 = -39629720000000000000000000000.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mtc1    $at, $f0                   # $f0 = 4.00
    cvt.s.w $f6, $f4
    addiu   v0, v0, 0x0008             # v0 = 00000028
    lui     $ra, 0xF400                # $ra = F4000000
    lui     s8, 0xE600                 # s8 = E6000000
    lui     s7, 0xF570                 # s7 = F5700000
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mul.s   $f4, $f18, $f0
    mfc1    t7, $f10
    nop
    andi    t8, t7, 0x0FFF             # t8 = 00000CEF
    trunc.w.s $f6, $f4
    sll     t9, t8, 12
    mfc1    t8, $f6
    nop
    andi    t6, t8, 0x0FFF             # t6 = 00000CEF
    or      t7, t9, t6                 # t7 = EF000CEF
    sw      t7, 0x0004(t3)             # 00000024
    lw      t8, 0x0000(s4)             # 00000000
    addiu   t6, $zero, 0x1000          # t6 = 00001000
    lw      a3, 0x0004(s4)             # 00000004
    sll     t9, t8,  1
    div     $zero, t6, t9
    mflo    s2
    or      t0, $zero, $zero           # t0 = 00000000
    bne     t9, $zero, lbl_8009EA54
    nop
    break   # 0x01C00
lbl_8009EA54:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t9, $at, lbl_8009EA6C
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8009EA6C
    nop
    break   # 0x01800
lbl_8009EA6C:
    lui     s6, 0xFD70                 # s6 = FD700000
    blez    a3, lbl_8009EBE0
    lui     s3, 0x0700                 # s3 = 07000000
    lw      t1, 0x0000(s4)             # 00000000
lbl_8009EA7C:
    slt     $at, a3, s2
    or      v1, v0, $zero              # v1 = 00000028
    addiu   t1, t1, 0xFFFF             # t1 = 0000000F
    beq     $at, $zero, lbl_8009EA94
    or      a2, t1, $zero              # a2 = 0000000F
    or      s2, a3, $zero              # s2 = 00000000
lbl_8009EA94:
    andi    t7, t1, 0x0FFF             # t7 = 0000000F
    or      t8, t7, s6                 # t8 = FD70000F
    sw      t8, 0x0000(v1)             # 00000028
    addiu   v0, v0, 0x0008             # v0 = 00000030
    sw      s5, 0x0004(v1)             # 0000002C
    sll     t6, a2,  1
    addiu   t9, t6, 0x0009             # t9 = 00001009
    sra     t7, t9,  3
    andi    t8, t7, 0x01FF             # t8 = 0000000F
    or      a0, v0, $zero              # a0 = 00000030
    sll     t6, t8,  9
    or      s1, t6, s7                 # s1 = F5701000
    sw      s1, 0x0000(a0)             # 00000030
    sw      s3, 0x0004(a0)             # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    or      a1, v0, $zero              # a1 = 00000038
    sw      s8, 0x0000(a1)             # 00000038
    sw      $zero, 0x0004(a1)          # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    sll     t4, a2,  2
    addu    t1, t0, s2
    addiu   t2, t1, 0xFFFF             # t2 = 0000000E
    andi    t4, t4, 0x0FFF             # t4 = 00000000
    sll     t4, t4, 12
    sll     s0, t2,  2
    or      t3, v0, $zero              # t3 = 00000040
    sll     a1, t0,  2
    andi    a1, a1, 0x0FFF             # a1 = 00000038
    andi    s0, s0, 0x0FFF             # s0 = 00000000
    or      t7, t4, s3                 # t7 = 07000000
    or      t8, t7, s0                 # t8 = 07000000
    or      t9, $ra, a1                # t9 = F4000038
    sw      t9, 0x0000(t3)             # 00000040
    sw      t8, 0x0004(t3)             # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      v1, v0, $zero              # v1 = 00000048
    lui     t6, 0xE700                 # t6 = E7000000
    sw      t6, 0x0000(v1)             # 00000048
    sw      $zero, 0x0004(v1)          # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      a0, v0, $zero              # a0 = 00000050
    sw      s1, 0x0000(a0)             # 00000050
    sw      $zero, 0x0004(a0)          # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      t5, v0, $zero              # t5 = 00000058
    lui     $at, 0xF200                # $at = F2000000
    or      t9, a1, $at                # t9 = F2000038
    or      t7, t4, s0                 # t7 = 00000000
    sw      t7, 0x0004(t5)             # 0000005C
    sw      t9, 0x0000(t5)             # 00000058
    addiu   v0, v0, 0x0008             # v0 = 00000060
    addiu   t8, a2, 0x0001             # t8 = 00000010
    sll     t6, t8,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000000
    sll     t7, t9, 12
    addiu   t6, t2, 0x0001             # t6 = 0000000F
    lui     $at, 0xE400                # $at = E4000000
    or      t8, t7, $at                # t8 = E4000000
    sll     t9, t6,  2
    or      v1, v0, $zero              # v1 = 00000060
    andi    t7, t9, 0x0FFF             # t7 = 00000000
    or      t6, t8, t7                 # t6 = E4000000
    sw      t6, 0x0000(v1)             # 00000060
    sw      a1, 0x0004(v1)             # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      a0, v0, $zero              # a0 = 00000068
    sll     t8, t0,  5
    andi    t7, t8, 0xFFFF             # t7 = 00000000
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(a0)             # 00000068
    sw      t7, 0x0004(a0)             # 0000006C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      t3, v0, $zero              # t3 = 00000070
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t3)             # 00000070
    sw      t9, 0x0004(t3)             # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      t0, t1, $zero              # t0 = 0000000F
    subu    a3, a3, s2
    bgtzl   a3, lbl_8009EA7C
    lw      t1, 0x0000(s4)             # 00000000
lbl_8009EBE0:
    or      v1, v0, $zero              # v1 = 00000078
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000078
    sw      $zero, 0x0004(v1)          # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    lw      t7, 0x0000(s4)             # 00000000
    lui     $at, 0xFF10                # $at = FF100000
    or      a0, v0, $zero              # a0 = 00000080
    addiu   t6, t7, 0xFFFF             # t6 = FFFFFFFF
    andi    t9, t6, 0x0FFF             # t9 = 00000FFF
    or      t8, t9, $at                # t8 = FF100FFF
    sw      t8, 0x0000(a0)             # 00000080
    lw      t7, 0x0010(s4)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000088
    sw      t7, 0x0004(a0)             # 00000084
    lw      t6, 0x0034($sp)
    sw      v0, 0x0000(t6)             # FFFFFFFF
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8009EC54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a3, 0x0020(a0)             # 00000020
    beql    a3, $zero, lbl_8009EC80
    lw      $ra, 0x0014($sp)
    lw      a2, 0x001C(a0)             # 0000001C
    beql    a2, $zero, lbl_8009EC80
    lw      $ra, 0x0014($sp)
    jal     func_8009DD68
    nop
    lw      $ra, 0x0014($sp)
lbl_8009EC80:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009EC8C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a3, 0x0014(a0)             # 00000014
    beql    a3, $zero, lbl_8009ECB8
    lw      $ra, 0x0014($sp)
    lw      a2, 0x0010(a0)             # 00000010
    beql    a2, $zero, lbl_8009ECB8
    lw      $ra, 0x0014($sp)
    jal     func_8009E8C8
    nop
    lw      $ra, 0x0014($sp)
lbl_8009ECB8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009ECC4:
    lui     t2, 0xE700                 # t2 = E7000000
    lw      v0, 0x0000(a1)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a2, v0, $zero              # a2 = 00000008
    lui     t6, 0xF900                 # t6 = F9000000
    addiu   t7, $zero, 0xFF08          # t7 = FFFFFF08
    sw      t7, 0x0004(a2)             # 0000000C
    sw      t6, 0x0000(a2)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      a3, v0, $zero              # a3 = 00000010
    lui     t8, 0xEE00                 # t8 = EE000000
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0004(a3)             # 00000014
    sw      t8, 0x0000(a3)             # 00000010
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      t0, v0, $zero              # t0 = 00000018
    lui     t3, 0xEF00                 # t3 = EF000000
    lui     t4, 0x0FA5                 # t4 = 0FA50000
    ori     t4, t4, 0x4044             # t4 = 0FA54044
    ori     t3, t3, 0x0CF0             # t3 = EF000CF0
    sw      t3, 0x0000(t0)             # 00000018
    sw      t4, 0x0004(t0)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      t1, v0, $zero              # t1 = 00000020
    lui     t5, 0xED00                 # t5 = ED000000
    sw      t5, 0x0000(t1)             # 00000020
    lw      t6, 0x0000(a0)             # 00000000
    lw      t4, 0x0004(a0)             # 00000004
    lui     $at, 0x4080                # $at = 40800000
    mtc1    t6, $f4                    # $f4 = -41538370000000000000000000000000000.00
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    $at, $f0                   # $f0 = 4.00
    cvt.s.w $f6, $f4
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      v1, v0, $zero              # v1 = 00000028
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      a2, v0, $zero              # a2 = 00000030
    cvt.s.w $f18, $f16
    mul.s   $f8, $f6, $f0
    lui     $at, 0xF600                # $at = F6000000
    addiu   v0, v0, 0x0008             # v0 = 00000038
    mul.s   $f4, $f18, $f0
    trunc.w.s $f10, $f8
    trunc.w.s $f6, $f4
    mfc1    t8, $f10
    mfc1    t6, $f6
    andi    t9, t8, 0x0FFF             # t9 = 00000000
    sll     t3, t9, 12
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t8, t3, t7                 # t8 = EF000CF0
    sw      t8, 0x0004(t1)             # 00000024
    lw      t9, 0x0000(a0)             # 00000000
    lw      t3, 0x0004(a0)             # 00000004
    sw      $zero, 0x0004(v1)          # 0000002C
    andi    t4, t9, 0x03FF             # t4 = 00000000
    sll     t5, t4, 14
    andi    t7, t3, 0x03FF             # t7 = 000000F0
    sll     t8, t7,  2
    or      t6, t5, $at                # t6 = FF000000
    or      t9, t6, t8                 # t9 = FF000CF0
    sw      t9, 0x0000(v1)             # 00000028
    sw      t2, 0x0000(a2)             # 00000030
    sw      $zero, 0x0004(a2)          # 00000034
    sw      v0, 0x0000(a1)             # 00000000
    jr      $ra
    nop


func_8009EDD8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_8009ECC4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      a3, 0x0018(a0)             # 00000018
    beql    a3, $zero, lbl_8009EE10
    lw      $ra, 0x0014($sp)
    jal     func_8009E904
    lw      a2, 0x0010(a0)             # 00000010
    lw      $ra, 0x0014($sp)
lbl_8009EE10:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009EE1C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a2, 0x0020(a0)             # 00000020
    jal     func_8009DD68
    lw      a3, 0x001C(a0)             # 0000001C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009EE40:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s7, 0x0024($sp)
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    sw      a1, 0x0064($sp)
    lw      t6, 0x0018(s7)             # 00000018
    lw      t7, 0x0064($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    beq     t6, $zero, lbl_8009F164
    lui     t9, 0xFB00                 # t9 = FB000000
    lw      v0, 0x0000(t7)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a0, v0, $zero              # a0 = 00000008
    addiu   t6, $zero, 0xFF20          # t6 = FFFFFF20
    sw      t6, 0x0004(a0)             # 0000000C
    sw      t9, 0x0000(a0)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      a1, v0, $zero              # a1 = 00000010
    lui     t7, 0xEF10                 # t7 = EF100000
    lui     t8, 0x0F0A                 # t8 = 0F0A0000
    ori     t8, t8, 0x100C             # t8 = 0F0A100C
    ori     t7, t7, 0x0CF0             # t7 = EF100CF0
    sw      t7, 0x0000(a1)             # 00000010
    sw      t8, 0x0004(a1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      a2, v0, $zero              # a2 = 00000018
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     t6, 0xFFFC                 # t6 = FFFC0000
    ori     t6, t6, 0xFA38             # t6 = FFFCFA38
    ori     t9, t9, 0xE5FF             # t9 = FCFFE5FF
    sw      t9, 0x0000(a2)             # 00000018
    sw      t6, 0x0004(a2)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    lw      s6, 0x0004(s7)             # 00000004
    addiu   s8, $zero, 0x0004          # s8 = 00000004
    or      t1, $zero, $zero           # t1 = 00000000
    blez    s6, lbl_8009F148
    lui     $ra, 0x0700                # $ra = 07000000
    sw      t1, 0x0034($sp)
lbl_8009EF08:
    lw      a2, 0x0000(s7)             # 00000000
    slt     $at, s6, s8
    or      v1, v0, $zero              # v1 = 00000020
    addiu   a2, a2, 0xFFFF             # a2 = 00000017
    beq     $at, $zero, lbl_8009EF24
    or      s5, a2, $zero              # s5 = 00000017
    or      s8, s6, $zero              # s8 = 00000000
lbl_8009EF24:
    andi    t7, a2, 0x0FFF             # t7 = 00000017
    lui     $at, 0xFD10                # $at = FD100000
    or      t8, t7, $at                # t8 = FD100017
    sw      t8, 0x0000(v1)             # 00000020
    lw      t9, 0x0014(s7)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      a0, v0, $zero              # a0 = 00000028
    sw      t9, 0x0004(v1)             # 00000024
    sll     s4, s5,  1
    addiu   s4, s4, 0x0009             # s4 = 00000009
    sra     s4, s4,  3
    andi    s4, s4, 0x01FF             # s4 = 00000009
    sll     s4, s4,  9
    lui     $at, 0xF510                # $at = F5100000
    or      s4, s4, $at                # s4 = F5100009
    sw      s4, 0x0000(a0)             # 00000028
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      s3, s5, $zero              # s3 = 00000017
    sw      $ra, 0x0004(a0)            # 0000002C
    or      a1, v0, $zero              # a1 = 00000030
    lui     t6, 0xE600                 # t6 = E6000000
    sw      t6, 0x0000(a1)             # 00000030
    sw      $zero, 0x0004(a1)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sll     a2, s5,  2
    addu    t2, t1, s8
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    andi    a2, a2, 0x0FFF             # a2 = 00000017
    sll     a2, a2, 12
    sll     t0, t3,  2
    or      t4, v0, $zero              # t4 = 00000038
    sll     a3, t1,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000000
    andi    t0, t0, 0x0FFF             # t0 = 00000000
    or      t7, a2, $ra                # t7 = 07000017
    lui     $at, 0xF400                # $at = F4000000
    or      s1, a3, $at                # s1 = F4000000
    or      s2, t7, t0                 # s2 = 07000017
    sw      s2, 0x0004(t4)             # 0000003C
    sw      s1, 0x0000(t4)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      v1, v0, $zero              # v1 = 00000040
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(v1)             # 00000040
    sw      $zero, 0x0004(v1)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a0, v0, $zero              # a0 = 00000048
    sw      s4, 0x0000(a0)             # 00000048
    sw      $zero, 0x0004(a0)          # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      t5, v0, $zero              # t5 = 00000050
    lui     $at, 0xF200                # $at = F2000000
    or      s0, a3, $at                # s0 = F2000000
    or      t9, a2, t0                 # t9 = 00000017
    sw      t9, 0x0004(t5)             # 00000054
    sw      s0, 0x0000(t5)             # 00000050
    addiu   v0, v0, 0x0008             # v0 = 00000058
    lw      t6, 0x0000(s7)             # 00000000
    lui     $at, 0xFD88                # $at = FD880000
    or      v1, v0, $zero              # v1 = 00000058
    addiu   t7, t6, 0xFFFF             # t7 = E5FFFFFF
    andi    t8, t7, 0x0FFF             # t8 = 00000FFF
    or      t9, t8, $at                # t9 = FD880FFF
    sw      t9, 0x0000(v1)             # 00000058
    lw      t6, 0x0018(s7)             # 00000018
    addiu   v0, v0, 0x0008             # v0 = 00000060
    or      a0, v0, $zero              # a0 = 00000060
    sw      t6, 0x0004(v1)             # 0000005C
    addiu   s4, s3, 0x0008             # s4 = 0000001F
    sra     s4, s4,  3
    andi    s4, s4, 0x01FF             # s4 = 0000001F
    sll     s4, s4,  9
    lui     $at, 0xF588                # $at = F5880000
    or      s4, s4, $at                # s4 = F588001F
    ori     s4, s4, 0x0160             # s4 = F588017F
    sw      s4, 0x0000(a0)             # 00000060
    addiu   v0, v0, 0x0008             # v0 = 00000068
    sw      $ra, 0x0004(a0)            # 00000064
    or      a1, v0, $zero              # a1 = 00000068
    lui     t7, 0xE600                 # t7 = E6000000
    sw      t7, 0x0000(a1)             # 00000068
    sw      $zero, 0x0004(a1)          # 0000006C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      v1, v0, $zero              # v1 = 00000070
    sw      s1, 0x0000(v1)             # 00000070
    sw      s2, 0x0004(v1)             # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      a0, v0, $zero              # a0 = 00000078
    lui     t8, 0xE700                 # t8 = E7000000
    sw      t8, 0x0000(a0)             # 00000078
    sw      $zero, 0x0004(a0)          # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a1, v0, $zero              # a1 = 00000080
    lui     t9, 0x0100                 # t9 = 01000000
    sw      t9, 0x0004(a1)             # 00000084
    sw      s4, 0x0000(a1)             # 00000080
    addiu   v0, v0, 0x0008             # v0 = 00000088
    or      t4, v0, $zero              # t4 = 00000088
    lui     $at, 0x0100                # $at = 01000000
    or      t6, a2, $at                # t6 = 01000017
    or      t7, t6, t0                 # t7 = 01000017
    sw      t7, 0x0004(t4)             # 0000008C
    sw      s0, 0x0000(t4)             # 00000088
    addiu   v0, v0, 0x0008             # v0 = 00000090
    addiu   t8, s5, 0x0001             # t8 = 00000018
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000000
    sll     t7, t6, 12
    addiu   t9, t3, 0x0001             # t9 = 00000000
    lui     $at, 0xE400                # $at = E4000000
    or      t8, t7, $at                # t8 = E5000017
    sll     t6, t9,  2
    or      v1, v0, $zero              # v1 = 00000090
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t9, t8, t7                 # t9 = E5000017
    sw      t9, 0x0000(v1)             # 00000090
    sw      a3, 0x0004(v1)             # 00000094
    addiu   v0, v0, 0x0008             # v0 = 00000098
    or      a0, v0, $zero              # a0 = 00000098
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(a0)             # 00000098
    lw      t8, 0x0034($sp)
    addiu   v0, v0, 0x0008             # v0 = 000000A0
    or      v1, v0, $zero              # v1 = 000000A0
    sll     t7, t8,  5
    andi    t9, t7, 0xFFFF             # t9 = 00000000
    sw      t9, 0x0004(a0)             # 0000009C
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(v1)             # 000000A0
    sw      t8, 0x0004(v1)             # 000000A4
    addiu   v0, v0, 0x0008             # v0 = 000000A8
    or      t1, t2, $zero              # t1 = 00000000
    subu    s6, s6, s8
    bgtzl   s6, lbl_8009EF08
    sw      t1, 0x0034($sp)
lbl_8009F148:
    or      v1, v0, $zero              # v1 = 000000A8
    lui     t7, 0xE700                 # t7 = E7000000
    sw      t7, 0x0000(v1)             # 000000A8
    sw      $zero, 0x0004(v1)          # 000000AC
    addiu   v0, v0, 0x0008             # v0 = 000000B0
    lw      t9, 0x0064($sp)
    sw      v0, 0x0000(t9)             # 00000000
lbl_8009F164:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    lw      s8, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_8009F194:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a2, 0x0014(a0)             # 00000014
    jal     func_8009DD68
    lw      a3, 0x0010(a0)             # 00000010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009F1B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8009E074
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8009F1D8:
    addiu   $sp, $sp, 0xFE88           # $sp -= 0x178
    sw      s7, 0x0024($sp)
    or      s7, a0, $zero              # s7 = 00000000
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s2, 0x0010($sp)
    sw      s1, 0x000C($sp)
    sw      s0, 0x0008($sp)
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   t3, $sp, 0x00F8            # t3 = FFFFFF80
    addiu   t4, $sp, 0x00BC            # t4 = FFFFFF44
    addiu   t5, $sp, 0x0080            # t5 = FFFFFF08
    addiu   s6, $sp, 0x0134            # s6 = FFFFFFBC
    addiu   s5, $zero, 0x0005          # s5 = 00000005
lbl_8009F218:
    div     $zero, t0, s5
    mfhi    t6
    mflo    t7
    addu    v1, t6, a1
    addu    a3, t7, a2
    addiu   v1, v1, 0xFFFE             # v1 = FFFFFFFE
    bne     s5, $zero, lbl_8009F23C
    nop
    break   # 0x01C00
lbl_8009F23C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s5, $at, lbl_8009F254
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_8009F254
    nop
    break   # 0x01800
lbl_8009F254:
    addiu   a3, a3, 0xFFFF             # a3 = FFFFFFFF
    or      v0, v1, $zero              # v0 = FFFFFFFE
    bgez    v1, lbl_8009F270
    or      a0, a3, $zero              # a0 = FFFFFFFF
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_8009F288
    lw      t1, 0x0000(s7)             # 00000000
lbl_8009F270:
    lw      t1, 0x0000(s7)             # 00000000
    addiu   t2, t1, 0xFFFF             # t2 = FFFFFFFF
    slt     $at, t2, v1
    beq     $at, $zero, lbl_8009F288
    nop
    or      v0, t2, $zero              # v0 = FFFFFFFF
lbl_8009F288:
    bgezl   a3, lbl_8009F29C
    lw      v1, 0x0004(s7)             # 00000004
    beq     $zero, $zero, lbl_8009F2B0
    or      a0, $zero, $zero           # a0 = 00000000
    lw      v1, 0x0004(s7)             # 00000004
lbl_8009F29C:
    addiu   v1, v1, 0xFFFF             # v1 = FFFFFFFD
    slt     $at, v1, a3
    beq     $at, $zero, lbl_8009F2B0
    nop
    or      a0, v1, $zero              # a0 = FFFFFFFD
lbl_8009F2B0:
    multu   a0, t1
    lw      t8, 0x0014(s7)             # 00000014
    sll     t9, v0,  1
    addiu   t0, t0, 0x0001             # t0 = 00000001
    addu    t6, t8, t9
    slti    $at, t0, 0x000F
    addiu   t3, t3, 0x0004             # t3 = FFFFFF84
    addiu   t4, t4, 0x0004             # t4 = FFFFFF48
    addiu   t5, t5, 0x0004             # t5 = FFFFFF0C
    addiu   s6, s6, 0x0004             # s6 = FFFFFFC0
    mflo    t7
    sll     t8, t7,  1
    addu    t9, t6, t8
    lhu     t7, 0x0000(t9)             # 00000000
    sh      t7, 0x0058($sp)
    lw      t6, 0x0058($sp)
    srl     t8, t6, 27
    sll     t9, t8,  3
    sra     t7, t8,  2
    or      t6, t9, t7                 # t6 = 00000000
    sw      t6, -0x0004(t3)            # FFFFFF80
    lw      t8, 0x0058($sp)
    sll     t9, t8,  5
    srl     t7, t9, 27
    sll     t6, t7,  3
    sra     t8, t7,  2
    or      t9, t6, t8                 # t9 = 00000000
    sw      t9, -0x0004(t4)            # FFFFFF44
    lw      t7, 0x0058($sp)
    sll     t6, t7, 10
    srl     t8, t6, 27
    sll     t9, t8,  3
    sra     t7, t8,  2
    or      t6, t9, t7                 # t6 = 00000000
    sw      t6, -0x0004(t5)            # FFFFFF08
    lw      t7, 0x0000(s7)             # 00000000
    lw      t8, 0x0018(s7)             # 00000018
    multu   a0, t7
    addu    t9, t8, v0
    mflo    t6
    addu    t8, t9, t6
    lbu     t7, 0x0000(t8)             # 00000000
    sra     t9, t7,  5
    bne     $at, $zero, lbl_8009F218
    sw      t9, -0x0004(s6)            # FFFFFFBC
    lw      t5, 0x0114($sp)
    lw      s0, 0x00D8($sp)
    lw      s1, 0x009C($sp)
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      a1, 0x017C($sp)
    sw      a2, 0x0180($sp)
    sw      t6, 0x0044($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   s6, $sp, 0x0138            # s6 = FFFFFFC0
    addiu   t4, $sp, 0x0080            # t4 = FFFFFF08
    addiu   t3, $sp, 0x00BC            # t3 = FFFFFF44
    addiu   t2, $sp, 0x00F8            # t2 = FFFFFF80
    addiu   t1, $sp, 0x0134            # t1 = FFFFFFBC
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    or      s2, t5, $zero              # s2 = FFFFFF0C
    or      s3, s0, $zero              # s3 = 00000000
    or      s4, s1, $zero              # s4 = 00000000
lbl_8009F3A8:
    lw      t8, 0x0000(s6)             # FFFFFFC0
    lw      v0, 0x0044($sp)
    addiu   s6, s6, 0x0008             # s6 = FFFFFFC8
    bne     a3, t8, lbl_8009FB58
    addu    t7, t2, v0
    lw      a0, 0x0000(t7)             # 00000000
    addu    t9, t4, v0
    sw      t9, 0x002C($sp)
    slt     $at, s2, a0
    beq     $at, $zero, lbl_8009F50C
    addu    a2, t3, v0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009F3F8
    lw      t6, 0x00FC($sp)
    slt     $at, t6, a0
    bne     $at, $zero, lbl_8009F3F8
    lw      t8, 0x0138($sp)
    bnel    a3, t8, lbl_8009F3FC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F3F8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009F3FC:
    beq     t0, $at, lbl_8009F41C
    lw      t7, 0x0104($sp)
    slt     $at, t7, a0
    bne     $at, $zero, lbl_8009F41C
    lw      t9, 0x0140($sp)
    bne     a3, t9, lbl_8009F41C
    nop
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F41C:
    beq     t0, s5, lbl_8009F43C
    lw      t6, 0x010C($sp)
    slt     $at, t6, a0
    bne     $at, $zero, lbl_8009F43C
    lw      t8, 0x0148($sp)
    bne     a3, t8, lbl_8009F43C
    nop
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F43C:
    beq     t0, a3, lbl_8009F470
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t7, t2, v0
    lw      t9, 0x0000(t7)             # 00000000
    addu    t6, t1, v0
    slt     $at, t9, a0
    bnel    $at, $zero, lbl_8009F474
    addiu   t7, v1, 0x0002             # t7 = 00000009
    lw      t8, 0x0000(t6)             # 00000004
    bnel    a3, t8, lbl_8009F474
    addiu   t7, v1, 0x0002             # t7 = 00000009
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F470:
    addiu   t7, v1, 0x0002             # t7 = 00000009
lbl_8009F474:
    beq     t0, t7, lbl_8009F4A4
    sll     v0, v1,  2
    addu    t9, t2, v0
    lw      t6, 0x0008(t9)             # 00000008
    addu    t8, t1, v0
    slt     $at, t6, a0
    bnel    $at, $zero, lbl_8009F4A8
    addiu   t9, v1, 0x0004             # t9 = 0000000B
    lw      t7, 0x0008(t8)             # 00000008
    bnel    a3, t7, lbl_8009F4A8
    addiu   t9, v1, 0x0004             # t9 = 0000000B
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F4A4:
    addiu   t9, v1, 0x0004             # t9 = 0000000B
lbl_8009F4A8:
    beq     t0, t9, lbl_8009F4D8
    sll     v0, v1,  2
    addu    t6, t2, v0
    lw      t8, 0x0010(t6)             # 00000014
    addu    t7, t1, v0
    slt     $at, t8, a0
    bnel    $at, $zero, lbl_8009F4DC
    addiu   t6, v1, 0x0006             # t6 = 0000000D
    lw      t9, 0x0010(t7)             # 00000019
    bnel    a3, t9, lbl_8009F4DC
    addiu   t6, v1, 0x0006             # t6 = 0000000D
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F4D8:
    addiu   t6, v1, 0x0006             # t6 = 0000000D
lbl_8009F4DC:
    beq     t0, t6, lbl_8009F50C
    sll     v0, v1,  2
    addu    t8, t2, v0
    lw      t7, 0x0018(t8)             # 00000018
    addu    t9, t1, v0
    slt     $at, t7, a0
    bnel    $at, $zero, lbl_8009F510
    lw      a1, 0x0000(a2)             # 00000000
    lw      t6, 0x0018(t9)             # 00000023
    bnel    a3, t6, lbl_8009F510
    lw      a1, 0x0000(a2)             # 00000000
    or      s2, a0, $zero              # s2 = FFFFFFFD
lbl_8009F50C:
    lw      a1, 0x0000(a2)             # 00000000
lbl_8009F510:
    slt     $at, s3, a1
    beq     $at, $zero, lbl_8009F650
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009F53C
    lw      t8, 0x00C0($sp)
    slt     $at, t8, a1
    bne     $at, $zero, lbl_8009F53C
    lw      t7, 0x0138($sp)
    bnel    a3, t7, lbl_8009F540
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F53C:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009F540:
    beq     t0, $at, lbl_8009F560
    lw      t9, 0x00C8($sp)
    slt     $at, t9, a1
    bne     $at, $zero, lbl_8009F560
    lw      t6, 0x0140($sp)
    bne     a3, t6, lbl_8009F560
    nop
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F560:
    beq     t0, s5, lbl_8009F580
    lw      t8, 0x00D0($sp)
    slt     $at, t8, a1
    bne     $at, $zero, lbl_8009F580
    lw      t7, 0x0148($sp)
    bne     a3, t7, lbl_8009F580
    nop
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F580:
    beq     t0, a3, lbl_8009F5B4
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t9, t3, v0
    lw      t6, 0x0000(t9)             # 0000000B
    addu    t8, t1, v0
    slt     $at, t6, a1
    bnel    $at, $zero, lbl_8009F5B8
    addiu   t9, v1, 0x0002             # t9 = 00000009
    lw      t7, 0x0000(t8)             # 00000000
    bnel    a3, t7, lbl_8009F5B8
    addiu   t9, v1, 0x0002             # t9 = 00000009
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F5B4:
    addiu   t9, v1, 0x0002             # t9 = 00000009
lbl_8009F5B8:
    beq     t0, t9, lbl_8009F5E8
    sll     v0, v1,  2
    addu    t6, t3, v0
    lw      t8, 0x0008(t6)             # 00000015
    addu    t7, t1, v0
    slt     $at, t8, a1
    bnel    $at, $zero, lbl_8009F5EC
    addiu   t6, v1, 0x0004             # t6 = 0000000B
    lw      t9, 0x0008(t7)             # 00000011
    bnel    a3, t9, lbl_8009F5EC
    addiu   t6, v1, 0x0004             # t6 = 0000000B
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F5E8:
    addiu   t6, v1, 0x0004             # t6 = 0000000B
lbl_8009F5EC:
    beq     t0, t6, lbl_8009F61C
    sll     v0, v1,  2
    addu    t8, t3, v0
    lw      t7, 0x0010(t8)             # 00000010
    addu    t9, t1, v0
    slt     $at, t7, a1
    bnel    $at, $zero, lbl_8009F620
    addiu   t8, v1, 0x0006             # t8 = 0000000D
    lw      t6, 0x0010(t9)             # 00000019
    bnel    a3, t6, lbl_8009F620
    addiu   t8, v1, 0x0006             # t8 = 0000000D
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F61C:
    addiu   t8, v1, 0x0006             # t8 = 0000000D
lbl_8009F620:
    beq     t0, t8, lbl_8009F650
    sll     v0, v1,  2
    addu    t7, t3, v0
    lw      t9, 0x0018(t7)             # 00000021
    addu    t6, t1, v0
    slt     $at, t9, a1
    bnel    $at, $zero, lbl_8009F654
    lw      t7, 0x002C($sp)
    lw      t8, 0x0018(t6)             # 00000023
    bnel    a3, t8, lbl_8009F654
    lw      t7, 0x002C($sp)
    or      s3, a1, $zero              # s3 = 00000000
lbl_8009F650:
    lw      t7, 0x002C($sp)
lbl_8009F654:
    lw      a2, 0x0000(t7)             # 00000009
    slt     $at, s4, a2
    beq     $at, $zero, lbl_8009F798
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009F684
    lw      t9, 0x0084($sp)
    slt     $at, t9, a2
    bne     $at, $zero, lbl_8009F684
    lw      t6, 0x0138($sp)
    bnel    a3, t6, lbl_8009F688
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F684:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009F688:
    beq     t0, $at, lbl_8009F6A8
    lw      t8, 0x008C($sp)
    slt     $at, t8, a2
    bne     $at, $zero, lbl_8009F6A8
    lw      t7, 0x0140($sp)
    bne     a3, t7, lbl_8009F6A8
    nop
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F6A8:
    beq     t0, s5, lbl_8009F6C8
    lw      t9, 0x0094($sp)
    slt     $at, t9, a2
    bne     $at, $zero, lbl_8009F6C8
    lw      t6, 0x0148($sp)
    bne     a3, t6, lbl_8009F6C8
    nop
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F6C8:
    beq     t0, a3, lbl_8009F6FC
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t8, t4, v0
    lw      t7, 0x0000(t8)             # 0000000D
    addu    t9, t1, v0
    slt     $at, t7, a2
    bnel    $at, $zero, lbl_8009F700
    addiu   t8, v1, 0x0002             # t8 = 00000009
    lw      t6, 0x0000(t9)             # 00000009
    bnel    a3, t6, lbl_8009F700
    addiu   t8, v1, 0x0002             # t8 = 00000009
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F6FC:
    addiu   t8, v1, 0x0002             # t8 = 00000009
lbl_8009F700:
    beq     t0, t8, lbl_8009F730
    sll     v0, v1,  2
    addu    t7, t4, v0
    lw      t9, 0x0008(t7)             # 00000011
    addu    t6, t1, v0
    slt     $at, t9, a2
    bnel    $at, $zero, lbl_8009F734
    addiu   t7, v1, 0x0004             # t7 = 0000000B
    lw      t8, 0x0008(t6)             # 00000013
    bnel    a3, t8, lbl_8009F734
    addiu   t7, v1, 0x0004             # t7 = 0000000B
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F730:
    addiu   t7, v1, 0x0004             # t7 = 0000000B
lbl_8009F734:
    beq     t0, t7, lbl_8009F764
    sll     v0, v1,  2
    addu    t9, t4, v0
    lw      t6, 0x0010(t9)             # 00000019
    addu    t8, t1, v0
    slt     $at, t6, a2
    bnel    $at, $zero, lbl_8009F768
    addiu   t9, v1, 0x0006             # t9 = 0000000D
    lw      t7, 0x0010(t8)             # 00000019
    bnel    a3, t7, lbl_8009F768
    addiu   t9, v1, 0x0006             # t9 = 0000000D
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F764:
    addiu   t9, v1, 0x0006             # t9 = 0000000D
lbl_8009F768:
    beq     t0, t9, lbl_8009F798
    sll     v0, v1,  2
    addu    t6, t4, v0
    lw      t8, 0x0018(t6)             # 00000023
    addu    t7, t1, v0
    slt     $at, t8, a2
    bnel    $at, $zero, lbl_8009F79C
    slt     $at, a0, t5
    lw      t9, 0x0018(t7)             # 00000023
    bnel    a3, t9, lbl_8009F79C
    slt     $at, a0, t5
    or      s4, a2, $zero              # s4 = 00000000
lbl_8009F798:
    slt     $at, a0, t5
lbl_8009F79C:
    beq     $at, $zero, lbl_8009F8D8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009F7C4
    lw      t6, 0x00FC($sp)
    slt     $at, a0, t6
    bne     $at, $zero, lbl_8009F7C4
    lw      t8, 0x0138($sp)
    bnel    a3, t8, lbl_8009F7C8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F7C4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009F7C8:
    beq     t0, $at, lbl_8009F7E8
    lw      t7, 0x0104($sp)
    slt     $at, a0, t7
    bne     $at, $zero, lbl_8009F7E8
    lw      t9, 0x0140($sp)
    bne     a3, t9, lbl_8009F7E8
    nop
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F7E8:
    beq     t0, s5, lbl_8009F808
    lw      t6, 0x010C($sp)
    slt     $at, a0, t6
    bne     $at, $zero, lbl_8009F808
    lw      t8, 0x0148($sp)
    bne     a3, t8, lbl_8009F808
    nop
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F808:
    beq     t0, a3, lbl_8009F83C
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t7, t2, v0
    lw      t9, 0x0000(t7)             # 0000000B
    addu    t6, t1, v0
    slt     $at, a0, t9
    bnel    $at, $zero, lbl_8009F840
    addiu   t7, v1, 0x0002             # t7 = 00000009
    lw      t8, 0x0000(t6)             # 0000000B
    bnel    a3, t8, lbl_8009F840
    addiu   t7, v1, 0x0002             # t7 = 00000009
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F83C:
    addiu   t7, v1, 0x0002             # t7 = 00000009
lbl_8009F840:
    beq     t0, t7, lbl_8009F870
    sll     v0, v1,  2
    addu    t9, t2, v0
    lw      t6, 0x0008(t9)             # 00000015
    addu    t8, t1, v0
    slt     $at, a0, t6
    bnel    $at, $zero, lbl_8009F874
    addiu   t9, v1, 0x0004             # t9 = 0000000B
    lw      t7, 0x0008(t8)             # 00000011
    bnel    a3, t7, lbl_8009F874
    addiu   t9, v1, 0x0004             # t9 = 0000000B
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F870:
    addiu   t9, v1, 0x0004             # t9 = 0000000B
lbl_8009F874:
    beq     t0, t9, lbl_8009F8A4
    sll     v0, v1,  2
    addu    t6, t2, v0
    lw      t8, 0x0010(t6)             # 0000001B
    addu    t7, t1, v0
    slt     $at, a0, t8
    bnel    $at, $zero, lbl_8009F8A8
    addiu   t6, v1, 0x0006             # t6 = 0000000D
    lw      t9, 0x0010(t7)             # 00000019
    bnel    a3, t9, lbl_8009F8A8
    addiu   t6, v1, 0x0006             # t6 = 0000000D
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F8A4:
    addiu   t6, v1, 0x0006             # t6 = 0000000D
lbl_8009F8A8:
    beq     t0, t6, lbl_8009F8D8
    sll     v0, v1,  2
    addu    t8, t2, v0
    lw      t7, 0x0018(t8)             # 00000021
    addu    t9, t1, v0
    slt     $at, a0, t7
    bnel    $at, $zero, lbl_8009F8DC
    slt     $at, a1, s0
    lw      t6, 0x0018(t9)             # 00000023
    bnel    a3, t6, lbl_8009F8DC
    slt     $at, a1, s0
    or      t5, a0, $zero              # t5 = FFFFFFFD
lbl_8009F8D8:
    slt     $at, a1, s0
lbl_8009F8DC:
    beq     $at, $zero, lbl_8009FA18
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009F904
    lw      t8, 0x00C0($sp)
    slt     $at, a1, t8
    bne     $at, $zero, lbl_8009F904
    lw      t7, 0x0138($sp)
    bnel    a3, t7, lbl_8009F908
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F904:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009F908:
    beq     t0, $at, lbl_8009F928
    lw      t9, 0x00C8($sp)
    slt     $at, a1, t9
    bne     $at, $zero, lbl_8009F928
    lw      t6, 0x0140($sp)
    bne     a3, t6, lbl_8009F928
    nop
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F928:
    beq     t0, s5, lbl_8009F948
    lw      t8, 0x00D0($sp)
    slt     $at, a1, t8
    bne     $at, $zero, lbl_8009F948
    lw      t7, 0x0148($sp)
    bne     a3, t7, lbl_8009F948
    nop
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F948:
    beq     t0, a3, lbl_8009F97C
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t9, t3, v0
    lw      t6, 0x0000(t9)             # 0000000B
    addu    t8, t1, v0
    slt     $at, a1, t6
    bnel    $at, $zero, lbl_8009F980
    addiu   t9, v1, 0x0002             # t9 = 00000009
    lw      t7, 0x0000(t8)             # 00000009
    bnel    a3, t7, lbl_8009F980
    addiu   t9, v1, 0x0002             # t9 = 00000009
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F97C:
    addiu   t9, v1, 0x0002             # t9 = 00000009
lbl_8009F980:
    beq     t0, t9, lbl_8009F9B0
    sll     v0, v1,  2
    addu    t6, t3, v0
    lw      t8, 0x0008(t6)             # 00000015
    addu    t7, t1, v0
    slt     $at, a1, t8
    bnel    $at, $zero, lbl_8009F9B4
    addiu   t6, v1, 0x0004             # t6 = 0000000B
    lw      t9, 0x0008(t7)             # 00000011
    bnel    a3, t9, lbl_8009F9B4
    addiu   t6, v1, 0x0004             # t6 = 0000000B
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F9B0:
    addiu   t6, v1, 0x0004             # t6 = 0000000B
lbl_8009F9B4:
    beq     t0, t6, lbl_8009F9E4
    sll     v0, v1,  2
    addu    t8, t3, v0
    lw      t7, 0x0010(t8)             # 00000019
    addu    t9, t1, v0
    slt     $at, a1, t7
    bnel    $at, $zero, lbl_8009F9E8
    addiu   t8, v1, 0x0006             # t8 = 0000000D
    lw      t6, 0x0010(t9)             # 00000019
    bnel    a3, t6, lbl_8009F9E8
    addiu   t8, v1, 0x0006             # t8 = 0000000D
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009F9E4:
    addiu   t8, v1, 0x0006             # t8 = 0000000D
lbl_8009F9E8:
    beq     t0, t8, lbl_8009FA18
    sll     v0, v1,  2
    addu    t7, t3, v0
    lw      t9, 0x0018(t7)             # 00000021
    addu    t6, t1, v0
    slt     $at, a1, t9
    bnel    $at, $zero, lbl_8009FA1C
    slt     $at, a2, s1
    lw      t8, 0x0018(t6)             # 00000023
    bnel    a3, t8, lbl_8009FA1C
    slt     $at, a2, s1
    or      s0, a1, $zero              # s0 = 00000000
lbl_8009FA18:
    slt     $at, a2, s1
lbl_8009FA1C:
    beq     $at, $zero, lbl_8009FB58
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t0, $at, lbl_8009FA44
    lw      t7, 0x0084($sp)
    slt     $at, a2, t7
    bne     $at, $zero, lbl_8009FA44
    lw      t9, 0x0138($sp)
    bnel    a3, t9, lbl_8009FA48
    addiu   $at, $zero, 0x0003         # $at = 00000003
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FA44:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8009FA48:
    beq     t0, $at, lbl_8009FA68
    lw      t6, 0x008C($sp)
    slt     $at, a2, t6
    bne     $at, $zero, lbl_8009FA68
    lw      t8, 0x0140($sp)
    bne     a3, t8, lbl_8009FA68
    nop
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FA68:
    beq     t0, s5, lbl_8009FA88
    lw      t7, 0x0094($sp)
    slt     $at, a2, t7
    bne     $at, $zero, lbl_8009FA88
    lw      t9, 0x0148($sp)
    bne     a3, t9, lbl_8009FA88
    nop
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FA88:
    beq     t0, a3, lbl_8009FABC
    or      v1, a3, $zero              # v1 = 00000007
    sll     v0, v1,  2
    addu    t6, t4, v0
    lw      t8, 0x0000(t6)             # 0000000B
    addu    t7, t1, v0
    slt     $at, a2, t8
    bnel    $at, $zero, lbl_8009FAC0
    addiu   t6, v1, 0x0002             # t6 = 00000009
    lw      t9, 0x0000(t7)             # 00000009
    bnel    a3, t9, lbl_8009FAC0
    addiu   t6, v1, 0x0002             # t6 = 00000009
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FABC:
    addiu   t6, v1, 0x0002             # t6 = 00000009
lbl_8009FAC0:
    beq     t0, t6, lbl_8009FAF0
    sll     v0, v1,  2
    addu    t8, t4, v0
    lw      t7, 0x0008(t8)             # 00000015
    addu    t9, t1, v0
    slt     $at, a2, t7
    bnel    $at, $zero, lbl_8009FAF4
    addiu   t8, v1, 0x0004             # t8 = 0000000B
    lw      t6, 0x0008(t9)             # 00000011
    bnel    a3, t6, lbl_8009FAF4
    addiu   t8, v1, 0x0004             # t8 = 0000000B
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FAF0:
    addiu   t8, v1, 0x0004             # t8 = 0000000B
lbl_8009FAF4:
    beq     t0, t8, lbl_8009FB24
    sll     v0, v1,  2
    addu    t7, t4, v0
    lw      t9, 0x0010(t7)             # 00000019
    addu    t6, t1, v0
    slt     $at, a2, t9
    bnel    $at, $zero, lbl_8009FB28
    addiu   t7, v1, 0x0006             # t7 = 0000000D
    lw      t8, 0x0010(t6)             # 00000019
    bnel    a3, t8, lbl_8009FB28
    addiu   t7, v1, 0x0006             # t7 = 0000000D
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FB24:
    addiu   t7, v1, 0x0006             # t7 = 0000000D
lbl_8009FB28:
    beq     t0, t7, lbl_8009FB58
    sll     v0, v1,  2
    addu    t9, t4, v0
    lw      t6, 0x0018(t9)             # 00000021
    addu    t8, t1, v0
    slt     $at, a2, t6
    bnel    $at, $zero, lbl_8009FB5C
    lw      t9, 0x0044($sp)
    lw      t7, 0x0018(t8)             # 00000023
    bnel    a3, t7, lbl_8009FB5C
    lw      t9, 0x0044($sp)
    or      s1, a2, $zero              # s1 = 00000000
lbl_8009FB58:
    lw      t9, 0x0044($sp)
lbl_8009FB5C:
    addiu   t0, t0, 0x0002             # t0 = 00000003
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    addiu   t6, t9, 0x0008             # t6 = 00000011
    bne     t0, $at, lbl_8009F3A8
    sw      t6, 0x0044($sp)
    lw      t8, 0x0150($sp)
    lw      t9, 0x0114($sp)
    addu    t7, s2, t5
    subu    v0, a3, t8
    sll     t6, t9,  1
    subu    t8, t7, t6
    multu   t8, v0
    mflo    t7
    addiu   t6, t7, 0x0004             # t6 = 00000011
    sra     t8, t6,  3
    lw      t6, 0x00D8($sp)
    addu    v1, t8, t9
    addu    t7, s3, s0
    sll     t8, t6,  1
    subu    t9, t7, t8
    multu   t9, v0
    mflo    t7
    addiu   t8, t7, 0x0004             # t8 = 00000011
    sra     t9, t8,  3
    lw      t8, 0x009C($sp)
    addu    a0, t9, t6
    addu    t7, s4, s1
    sll     t9, t8,  1
    subu    t6, t7, t9
    multu   t6, v0
    mflo    t7
    addiu   t9, t7, 0x0004             # t9 = 00000011
    sra     t6, t9,  3
    lbu     t7, 0x0054($sp)
    srl     t9, v1,  3
    addu    a1, t6, t8
    sll     t8, t9,  3
    andi    t9, t7, 0xFF07             # t9 = 00000005
    or      t6, t8, t9                 # t6 = 00000015
    sb      t6, 0x0054($sp)
    lhu     t7, 0x0054($sp)
    srl     t8, a0,  3
    sll     t9, t8,  6
    andi    t6, t9, 0x07C0             # t6 = 00000000
    andi    t8, t7, 0xF83F             # t8 = 0000000D
    or      t9, t6, t8                 # t9 = 0000000D
    sh      t9, 0x0054($sp)
    lbu     t7, 0x0055($sp)
    srl     t6, a1,  3
    sll     t8, t6,  1
    andi    t9, t8, 0x003E             # t9 = 0000000C
    andi    t6, t7, 0xFFC1             # t6 = 00000001
    or      t8, t9, t6                 # t8 = 0000000D
    or      t9, t8, $zero              # t9 = 0000000D
    ori     t6, t9, 0x0001             # t6 = 0000000D
    sb      t8, 0x0055($sp)
    lw      t9, 0x017C($sp)
    sb      t6, 0x0055($sp)
    lw      t7, 0x0014(s7)             # 00000014
    sll     t6, t9,  1
    lhu     t8, 0x0054($sp)
    addu    t9, t7, t6
    lw      t6, 0x0000(s7)             # 00000000
    lw      t7, 0x0180($sp)
    multu   t7, t6
    mflo    t7
    sll     t6, t7,  1
    addu    t7, t9, t6
    sh      t8, 0x0000(t7)             # 0000000D
    lw      s0, 0x0008($sp)
    lw      s1, 0x000C($sp)
    lw      s2, 0x0010($sp)
    lw      s3, 0x0014($sp)
    lw      s4, 0x0018($sp)
    lw      s5, 0x001C($sp)
    lw      s6, 0x0020($sp)
    lw      s7, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0178           # $sp += 0x178


func_8009FC98:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0014($sp)
    sw      s0, 0x0010($sp)
    or      t5, $sp, $zero             # t5 = FFFFFFB0
    or      a1, a0, $zero              # a1 = 00000000
    lw      v0, 0x0000(a1)             # 00000000
    addiu   $at, $zero, 0xFFF8         # $at = FFFFFFF8
    lw      t6, 0x0004(a1)             # 00000004
    addiu   v1, v0, 0x0007             # v1 = 00000007
    and     v1, v1, $at
    subu    a3, $sp, v1
    subu    t0, a3, v1
    subu    t1, t0, v1
    blez    t6, lbl_8009FDD8
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t2, $zero, 0x0007          # t2 = 00000007
lbl_8009FCD8:
    blez    v0, lbl_8009FD5C
    or      v1, $zero, $zero           # v1 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    or      t3, t0, $zero              # t3 = 00000000
    or      t4, t1, $zero              # t4 = 00000000
lbl_8009FCEC:
    multu   a2, v0
    lw      t7, 0x0014(a1)             # 00000014
    sll     t8, v1,  1
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addu    t9, t7, t8
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   t3, t3, 0x0001             # t3 = 00000001
    addiu   t4, t4, 0x0001             # t4 = 00000001
    mflo    t6
    sll     t7, t6,  1
    addu    t8, t9, t7
    lhu     t6, 0x0000(t8)             # 00000000
    sh      t6, 0x001C(t5)             # FFFFFFCC
    lw      t9, 0x001C(t5)             # FFFFFFCC
    srl     t7, t9, 27
    sb      t7, -0x0001(a0)            # 00000000
    lw      t8, 0x001C(t5)             # FFFFFFCC
    sll     t6, t8,  5
    srl     t9, t6, 27
    sb      t9, -0x0001(t3)            # 00000000
    lw      t7, 0x001C(t5)             # FFFFFFCC
    sll     t8, t7, 10
    srl     t6, t8, 27
    sb      t6, -0x0001(t4)            # 00000000
    lw      v0, 0x0000(a1)             # 00000000
    slt     $at, v1, v0
    bne     $at, $zero, lbl_8009FCEC
    nop
lbl_8009FD5C:
    addiu   a0, v0, 0xFFFF             # a0 = FFFFFFFF
    slti    $at, a0, 0x0002
    bne     $at, $zero, lbl_8009FDC4
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8009FD6C:
    multu   a2, v0
    lw      t9, 0x0018(a1)             # 00000018
    addu    t7, t9, v1
    mflo    t3
    addu    t8, t7, t3
    lbu     t4, 0x0000(t8)             # 00000000
    sra     t4, t4,  5
    beql    t4, t2, lbl_8009FDB8
    addiu   v1, v1, 0x0001             # v1 = 00000002
    lw      t9, 0x0014(a1)             # 00000014
    sll     t7, v1,  1
    lhu     t6, 0x0018(t5)             # FFFFFFC8
    addu    t8, t9, t7
    sll     t9, t3,  1
    addu    t7, t8, t9
    sh      t6, 0x0000(t7)             # 00000000
    lw      v0, 0x0000(a1)             # 00000000
    addiu   a0, v0, 0xFFFF             # a0 = FFFFFFFF
    addiu   v1, v1, 0x0001             # v1 = 00000003
lbl_8009FDB8:
    slt     $at, v1, a0
    bne     $at, $zero, lbl_8009FD6C
    nop
lbl_8009FDC4:
    lw      t8, 0x0004(a1)             # 00000004
    addiu   a2, a2, 0x0001             # a2 = 00000001
    slt     $at, a2, t8
    bne     $at, $zero, lbl_8009FCD8
    nop
lbl_8009FDD8:
    or      $sp, t5, $zero             # $sp -= 0x50
    lw      s0, 0x0010(t5)             # FFFFFFC0
    lw      s1, 0x0014(t5)             # FFFFFFC4
    jr      $ra
    addiu   $sp, t5, 0x0050            # $sp = 00000000


func_8009FDEC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lw      t6, 0x0018(s1)             # 00000018
    beql    t6, $zero, lbl_8009FEA4
    lw      $ra, 0x0024($sp)
    lw      t7, 0x0014(s1)             # 00000014
    beql    t7, $zero, lbl_8009FEA4
    lw      $ra, 0x0024($sp)
    lw      v0, 0x0004(s1)             # 00000004
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    blezl   v0, lbl_8009FEA4
    lw      $ra, 0x0024($sp)
    lw      v1, 0x0000(s1)             # 00000000
lbl_8009FE38:
    blez    v1, lbl_8009FE90
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8009FE40:
    multu   s2, v1
    lw      t8, 0x0018(s1)             # 00000018
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addu    t9, t8, s0
    mflo    t0
    addu    t1, t9, t0
    lbu     v0, 0x0000(t1)             # 00000000
    sra     v0, v0,  5
    addiu   v0, v0, 0x0001             # v0 = 00000001
    beql    v0, s3, lbl_8009FE80
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_8009F1D8
    or      a2, s2, $zero              # a2 = 00000000
    lw      v1, 0x0000(s1)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8009FE80:
    slt     $at, s0, v1
    bne     $at, $zero, lbl_8009FE40
    nop
    lw      v0, 0x0004(s1)             # 00000004
lbl_8009FE90:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    slt     $at, s2, v0
    bne     $at, $zero, lbl_8009FE38
    nop
    lw      $ra, 0x0024($sp)
lbl_8009FEA4:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    nop
