# "Message" part of the code file
#
# Handles text boxes, Link's high scores, and ocarina performances.
#
# General Documentation about Text:
# https://wiki.cloudmodding.com/oot/Text_Format
#
# Starts at VRAM: 800D5EF0 / VROM: B4BE50
#

.section .text
func_800D5EF0:
    lui     v1, 0x8011                 # v1 = 80110000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBA00             # a1 = 8011BA00
    addiu   v1, v1, 0x2E98             # v1 = 80112E98
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    lw      t7, 0x0000(a1)             # 8011BA00
    addiu   t6, $zero, 0x00BD          # t6 = 000000BD
    addiu   t8, $zero, 0x00B8          # t8 = 000000B8
    sh      t6, 0x0F6E(t7)             # 00000F6E
    lw      t9, 0x0000(a1)             # 8011BA00
    addiu   t0, $zero, 0x00B3          # t0 = 000000B3
    addiu   t2, $zero, 0x00AE          # t2 = 000000AE
    sh      t8, 0x0F70(t9)             # 00000F70
    lw      t1, 0x0000(a1)             # 8011BA00
    addiu   t4, $zero, 0x00A9          # t4 = 000000A9
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sh      t0, 0x0F72(t1)             # 00000F72
    lw      t3, 0x0000(a1)             # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    sh      t2, 0x0F74(t3)             # 00000F74
    lw      t5, 0x0000(a1)             # 8011BA00
    addiu   t8, $zero, 0x0096          # t8 = 00000096
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sh      t4, 0x0F76(t5)             # 00000F76
    sb      t6, 0x2E8C($at)            # 80112E8C
    sh      $zero, 0x0010(v1)          # 80112EA8
    lh      v0, 0x0010(v1)             # 80112EA8
    lui     $at, 0x8013                # $at = 80130000
    sh      v0, 0x000E(v1)             # 80112EA6
    sh      v0, 0x000C(v1)             # 80112EA4
    sh      v0, 0x000A(v1)             # 80112EA2
    sh      v0, 0x0008(v1)             # 80112EA0
    sh      v0, 0x0006(v1)             # 80112E9E
    sh      v0, 0x0004(v1)             # 80112E9C
    sh      v0, 0x0002(v1)             # 80112E9A
    sh      v0, 0x0000(v1)             # 80112E98
    sh      t7, -0x41F0($at)           # 8012BE10
    lui     $at, 0x8013                # $at = 80130000
    sh      t8, -0x41EC($at)           # 8012BE14
    lui     $at, 0x8013                # $at = 80130000
    sh      a2, -0x41EE($at)           # 8012BE12
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41EA($at)           # 8012BE16
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41E6($at)           # 8012BE1A
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41E8($at)           # 8012BE18
    lui     $at, 0x8013                # $at = 80130000
    sh      a2, -0x41E4($at)           # 8012BE1C
    lui     $at, 0x8013                # $at = 80130000
    sh      a2, -0x41E0($at)           # 8012BE20
    lui     $at, 0x8013                # $at = 80130000
    sh      t9, -0x41E2($at)           # 8012BE1E
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41DE($at)           # 8012BE22
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41DA($at)           # 8012BE26
    lui     $at, 0x8013                # $at = 80130000
    sh      a0, -0x41DC($at)           # 8012BE24
    jr      $ra
    nop


func_800D5FEC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a1, $at
    lbu     t6, 0x03DC(v0)             # 000003DC
    addu    $at, $at, a1
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x03DC($at)            # 000103DC
    lbu     t8, 0x03DC(v0)             # 000003DC
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    addiu   s0, a1, 0x20D8             # s0 = 000020D8
    bnel    t8, $at, lbl_800D6090
    ori     $at, $zero, 0x8000         # $at = 00008000
    jal     func_800C2C90
    sw      a1, 0x0030($sp)
    jal     func_800C380C
    nop
    lw      a1, 0x0030($sp)
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0xA928             # a2 = 8010A928
    addiu   s0, a1, 0x20D8             # s0 = 000020D8
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    sh      $zero, 0x0000(a2)          # 8010A928
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v1, s0, $at
    lw      t0, 0x62B8(v1)             # 000062B8
    lh      t9, 0x0000(a2)             # 8010A928
    ori     a0, $zero, 0xA000          # a0 = 0000A000
    sb      t9, 0x0002(t0)             # 00000002
    jal     func_800C2124
    sw      v1, 0x0024($sp)
    lw      v1, 0x0024($sp)
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    lhu     t1, 0x63D4(v1)             # 000063D4
    b       lbl_800D60F4
    sh      t1, 0x63D3($at)            # 000104AA
    ori     $at, $zero, 0x8000         # $at = 00008000
lbl_800D6090:
    addu    v1, s0, $at
    lbu     t2, 0x6304(v1)             # 00006304
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    bne     t2, $at, lbl_800D60F4
    nop
    jal     func_800C2C90
    sw      v1, 0x0024($sp)
    jal     func_800C3830
    nop
    lw      v1, 0x0024($sp)
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   a2, a2, 0xA928             # a2 = 8010A928
    sh      $zero, 0x0000(a2)          # 8010A928
    lh      t3, 0x0000(a2)             # 8010A928
    lw      t4, 0x62B8(v1)             # 000062B8
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C2D74
    sb      t3, 0x0002(t4)             # 00000002
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sb      t5, 0x63E8($at)            # 000104BF
lbl_800D60F4:
    jal     func_800D5EF0
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800D6110:
# Check if button press to continue dialog occurred?
# A0 = Global Context
# V0 = Button pressed
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lui     a3, 0x8010                 # a3 = 80100000
    lhu     t7, 0x0020(t6)             # 00000020
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x4818          # a0 = 00004818
    andi    t8, t7, 0x8000             # t8 = 00000000
    beq     t8, $at, lbl_800D615C
    andi    t9, t7, 0x4000             # t9 = 00000000
    addiu   $at, $zero, 0x4000         # $at = 00004000
    beq     t9, $at, lbl_800D615C
    or      v0, t7, $zero              # v0 = 00000000
    andi    t0, t7, 0x0008             # t0 = 00000000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    t0, $at, lbl_800D6194
    andi    v1, v0, 0x8000             # v1 = 00000000
lbl_800D615C:
    lw      t2, 0x0030($sp)
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t3, t2, 0x0014             # t3 = 00000014
    sw      t3, 0x0024($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t1, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      t4, 0x0024($sp)
    lhu     v0, 0x000C(t4)             # 0000000C
    andi    v1, v0, 0x8000             # v1 = 00000000
lbl_800D6194:
    xori    v1, v1, 0x8000             # v1 = FFFF8000
    sltiu   v1, v1, 0x0001
    bne     v1, $zero, lbl_800D61C4
    lw      $ra, 0x001C($sp)
    andi    v1, v0, 0x4000             # v1 = 00000000
    xori    v1, v1, 0x4000             # v1 = 00004000
    sltiu   v1, v1, 0x0001
    bnel    v1, $zero, lbl_800D61C8
    andi    v0, v1, 0x00FF             # v0 = 00000000
    andi    v1, v0, 0x0008             # v1 = 00000000
    xori    v1, v1, 0x0008             # v1 = 00000008
    sltiu   v1, v1, 0x0001
lbl_800D61C4:
    andi    v0, v1, 0x00FF             # v0 = 00000008
lbl_800D61C8:
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800D61D0:
# Textbox input, select choice?
    lhu     v1, 0x0020(a0)             # 00000020
    andi    v1, v1, 0x8000             # v1 = 00000000
    xori    v1, v1, 0x8000             # v1 = FFFF8000
    sltiu   v1, v1, 0x0001
    bnel    v1, $zero, lbl_800D6210
    andi    v0, v1, 0x00FF             # v0 = 00000000
    lhu     v0, 0x0020(a0)             # 00000020
    andi    v1, v0, 0x4000             # v1 = 00000000
    xori    v1, v1, 0x4000             # v1 = 00004000
    sltiu   v1, v1, 0x0001
    bnel    v1, $zero, lbl_800D6210
    andi    v0, v1, 0x00FF             # v0 = 00000000
    andi    v1, v0, 0x0008             # v1 = 00000000
    xori    v1, v1, 0x0008             # v1 = 00000008
    sltiu   v1, v1, 0x0001
    andi    v0, v1, 0x00FF             # v0 = 00000008
lbl_800D6210:
    jr      $ra
    nop


func_800D6218:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x0020($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    lui     a3, 0x8010                 # a3 = 80100000
    addu    t7, t7, t6
    lw      t7, 0x03D8(t7)             # 000103D8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    beq     t7, $zero, lbl_800D6280
    addiu   v0, t6, 0x20D8             # v0 = 000020D8
    addiu   $at, v0, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x0036          # t9 = 00000036
    lui     t0, 0x8010                 # t0 = 80100000
    sb      t8, 0x63E8($at)            # 000104BF
    sb      t9, 0x6305($at)            # 000103DC
    sb      $zero, 0x63E5($at)         # 000104BC
    addiu   t0, t0, 0x43A8             # t0 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t0, 0x0014($sp)
    sw      a3, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_800D6280:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D6290:
# Potentially draws individual Textbox character
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lui     t8, 0x8011                 # t8 = 80110000
    lw      t4, 0x0020($sp)
    lb      t7, 0x0029(t6)             # 00000029
    slti    $at, t7, 0x001E
    bnel    $at, $zero, lbl_800D633C
    lb      v0, 0x0029(t4)             # 00000029
    lh      t8, 0x2EC4(t8)             # 80112EC4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    bne     t8, $zero, lbl_800D6338
    addiu   v1, t6, 0x20D8             # v1 = 000020D8
    sh      t9, 0x2EC4($at)            # 80112EC4
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, v1, $at
    lbu     t0, 0x63E5(v0)             # 000063E5
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sb      t1, 0x63E6($at)            # 000104BD
    lbu     t2, 0x63E5(v0)             # 000063E5
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
    slti    $at, t2, 0x0081
    bne     $at, $zero, lbl_800D6314
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D63EC
    sb      $zero, 0x63E6($at)         # 000104BD
lbl_800D6314:
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x43A8             # t3 = 801043A8
    sw      t3, 0x0014($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_800D63EC
    nop
lbl_800D6338:
    lb      v0, 0x0029(t4)             # 00000029
lbl_800D633C:
    lui     t5, 0x8011                 # t5 = 80110000
    slti    $at, v0, 0xFFE3
    beq     $at, $zero, lbl_800D63CC
    nop
    lh      t5, 0x2EC4(t5)             # 80112EC4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    bne     t5, $zero, lbl_800D63CC
    addiu   v1, t4, 0x20D8             # v1 = 000020D8
    sh      t7, 0x2EC4($at)            # 80112EC4
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, v1, $at
    lbu     t8, 0x63E5(v0)             # 000063E5
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x63E6($at)            # 000104BD
    lbu     t0, 0x63E5(v0)             # 000063E5
    lbu     t6, 0x0027($sp)
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a0, $zero, 0x4809          # a0 = 00004809
    slt     $at, t6, t0
    beq     $at, $zero, lbl_800D63A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D63EC
    sb      t6, 0x63E6($at)            # 000104BD
lbl_800D63A8:
    lui     t1, 0x8010                 # t1 = 80100000
    addiu   t1, t1, 0x43A8             # t1 = 801043A8
    sw      t1, 0x0014($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    b       lbl_800D63EC
    nop
lbl_800D63CC:
    bltz    v0, lbl_800D63DC
    subu    v1, $zero, v0
    b       lbl_800D63DC
    or      v1, v0, $zero              # v1 = 00000000
lbl_800D63DC:
    slti    $at, v1, 0x001E
    beq     $at, $zero, lbl_800D63EC
    lui     $at, 0x8011                # $at = 80110000
    sh      $zero, 0x2EC4($at)         # 80112EC4
lbl_800D63EC:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBA00             # a0 = 8011BA00
    lw      t2, 0x0000(a0)             # 8011BA00
    lw      v1, 0x0020($sp)
    lh      t3, 0x0B18(t2)             # 00000B18
    addiu   v1, v1, 0x20D8             # v1 = 000020D8
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    sh      t3, 0x63D9($at)            # 000104B0
    lbu     t5, 0x0027($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, v1, $at
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t5, $at, lbl_800D6448
    lbu     t1, 0x63E5(v0)             # 000063E5
    lbu     t4, 0x63E5(v0)             # 000063E5
    lw      t7, 0x0000(a0)             # 8011BA00
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    sll     t8, t4,  1
    addu    t9, t7, t8
    lh      t0, 0x0B1C(t9)             # 00000B1C
    b       lbl_800D6460
    sh      t0, 0x63DB($at)            # 000104B2
    lbu     t1, 0x63E5(v0)             # 000063E5
lbl_800D6448:
    lw      t6, 0x0000(a0)             # 8011BA00
    addiu   $at, v1, 0x7FFF            # $at = 0000A0D7
    sll     t2, t1,  1
    addu    t3, t6, t2
    lh      t5, 0x0B1A(t3)             # 00000B1A
    sh      t5, 0x63DB($at)            # 000104B2
lbl_800D6460:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800D6470:
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    lui     t3, 0x8013                 # t3 = 80130000
    lui     t4, 0x8012                 # t4 = 80120000
    lui     t5, 0x8013                 # t5 = 80130000
    mtc1    $at, $f0                   # $f0 = 100.00
    addiu   t5, t5, 0xBE2C             # t5 = 8012BE2C
    addiu   t4, t4, 0xBA00             # t4 = 8011BA00
    addiu   t3, t3, 0xBE28             # t3 = 8012BE28
    sw      s0, 0x0004($sp)
    lui     t2, 0xE700                 # t2 = E7000000
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a0, $at
    lw      v0, 0x0000(a2)             # 00000000
    lh      a3, 0x04B0(v1)             # 000004B0
    lh      t0, 0x04B2(v1)             # 000004B2
    sw      v0, 0x004C($sp)
    lw      t6, 0x004C($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000008
    sw      t2, 0x0000(t6)             # 00000000
    lw      t7, 0x004C($sp)
    sw      $zero, 0x0004(t7)          # 00000004
    lw      t8, 0x0000(t4)             # 8011BA00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f10                  # $f10 = 16.00
    sw      t8, 0x0008($sp)
    lh      t6, 0x0B06(t8)             # 00000B06
    lw      t9, 0x0008($sp)
    lui     $at, 0x4480                # $at = 44800000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mtc1    $at, $f4                   # $f4 = 1024.00
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, a0, $at
    div.s   $f8, $f6, $f0
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sw      t8, 0x0000(t3)             # 8012BE28
    lh      t6, 0x0B06(t9)             # 00000B06
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f0
    div.s   $f16, $f4, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sw      t8, 0x0000(t5)             # 8012BE2C
    sw      v0, 0x0048($sp)
    lw      t6, 0x0048($sp)
    lui     t9, 0xFD90                 # t9 = FD900000
    addiu   v0, v0, 0x0008             # v0 = 00000010
    sw      t9, 0x0000(t6)             # 00000000
    lw      t7, 0x0048($sp)
    sw      a1, 0x0004(t7)             # 00000004
    sw      v0, 0x0044($sp)
    lw      t9, 0x0044($sp)
    lui     t8, 0xF590                 # t8 = F5900000
    lui     t6, 0x0708                 # t6 = 07080000
    sw      t8, 0x0000(t9)             # FD900000
    lw      t7, 0x0044($sp)
    ori     t6, t6, 0x0200             # t6 = 07080200
    addiu   v0, v0, 0x0008             # v0 = 00000018
    sw      t6, 0x0004(t7)             # 00000004
    sw      v0, 0x0040($sp)
    lw      t9, 0x0040($sp)
    lui     t8, 0xE600                 # t8 = E6000000
    addiu   v0, v0, 0x0008             # v0 = 00000020
    sw      t8, 0x0000(t9)             # FD900000
    lw      t6, 0x0040($sp)
    or      t1, v0, $zero              # t1 = 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    sw      $zero, 0x0004(t6)          # 07080204
    lui     t8, 0x0703                 # t8 = 07030000
    ori     t8, t8, 0xF800             # t8 = 0703F800
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(t1)             # 00000020
    sw      t8, 0x0004(t1)             # 00000024
    or      a1, v0, $zero              # a1 = 00000028
    sw      t2, 0x0000(a1)             # 00000028
    sw      $zero, 0x0004(a1)          # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    sw      v0, 0x0034($sp)
    lw      t6, 0x0034($sp)
    lui     t9, 0xF580                 # t9 = F5800000
    ori     t9, t9, 0x0200             # t9 = F5800200
    sw      t9, 0x0000(t6)             # 07080200
    lw      t8, 0x0034($sp)
    lui     t7, 0x0008                 # t7 = 00080000
    ori     t7, t7, 0x0200             # t7 = 00080200
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sw      t7, 0x0004(t8)             # 0703F804
    sw      v0, 0x0030($sp)
    lw      t6, 0x0030($sp)
    lui     t9, 0xF200                 # t9 = F2000000
    lui     t7, 0x0003                 # t7 = 00030000
    sw      t9, 0x0000(t6)             # 07080200
    lw      t8, 0x0030($sp)
    ori     t7, t7, 0xC03C             # t7 = 0003C03C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    sw      t7, 0x0004(t8)             # 0703F804
    lbu     t9, 0x62FD(v1)             # 000062FD
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, v0, $zero              # a0 = 00000040
    beq     t9, $at, lbl_800D66F4
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(a0)             # 00000040
    lh      t7, 0x63E2(v1)             # 000063E2
    addiu   v0, v0, 0x0008             # v0 = 00000048
    andi    t8, t7, 0x00FF             # t8 = 0000003C
    sw      t8, 0x0004(a0)             # 00000044
    lw      t9, 0x0000(t4)             # 8011BA00
    lw      s0, 0x0000(t3)             # 8012BE28
    lui     $at, 0xE400                # $at = E4000000
    lh      t1, 0x0B0C(t9)             # F2000B0C
    or      a1, v0, $zero              # a1 = 00000048
    addiu   v0, v0, 0x0008             # v0 = 00000050
    addu    t6, t1, t0
    addu    t7, t6, s0
    sll     t8, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 0000003C
    addu    t7, a3, t1
    or      t6, t9, $at                # t6 = E400003C
    addu    t8, t7, s0
    sll     t9, t8,  2
    andi    t7, t9, 0x0FFF             # t7 = 0000003C
    sll     t8, t7, 12
    or      t9, t6, t8                 # t9 = E400003C
    sw      t9, 0x0000(a1)             # 00000048
    lw      t7, 0x0000(t4)             # 8011BA00
    lh      t1, 0x0B0C(t7)             # 00000B48
    addu    t6, t1, t0
    sll     t8, t6,  2
    addu    t7, a3, t1
    sll     t6, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 0000003C
    andi    t8, t6, 0x0FFF             # t8 = 0000003C
    sll     t7, t8, 12
    or      t6, t9, t7                 # t6 = 0000003C
    sw      t6, 0x0004(a1)             # 0000004C
    sw      v0, 0x0024($sp)
    lw      t9, 0x0024($sp)
    lui     t8, 0xE100                 # t8 = E1000000
    addiu   v0, v0, 0x0008             # v0 = 00000058
    sw      t8, 0x0000(t9)             # 0000003C
    lw      t7, 0x0024($sp)
    sw      $zero, 0x0004(t7)          # 00000040
    sw      v0, 0x0020($sp)
    lw      t8, 0x0020($sp)
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   v0, v0, 0x0008             # v0 = 00000060
    sw      t6, 0x0000(t8)             # E1000000
    lw      a0, 0x0000(t5)             # 8012BE2C
    lw      t6, 0x0020($sp)
    andi    a0, a0, 0xFFFF             # a0 = 00000040
    sll     t9, a0, 16
    or      t7, t9, a0                 # t7 = 0000007C
    sw      t7, 0x0004(t6)             # F1000004
lbl_800D66F4:
    or      a0, v0, $zero              # a0 = 00000060
    sw      t2, 0x0000(a0)             # 00000060
    sw      $zero, 0x0004(a0)          # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      a1, v0, $zero              # a1 = 00000068
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(a1)             # 00000068
    lh      t8, 0x63DE(v1)             # 000063DE
    lh      t7, 0x63DC(v1)             # 000063DC
    addiu   v0, v0, 0x0008             # v0 = 00000070
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t7, 24
    sll     t7, t9, 16
    lh      t9, 0x63E0(v1)             # 000063E0
    or      t8, t6, t7                 # t8 = F100007C
    or      t1, v0, $zero              # t1 = 00000070
    andi    t6, t9, 0x00FF             # t6 = 00000000
    sll     t7, t6,  8
    lh      t6, 0x63E2(v1)             # 000063E2
    or      t9, t8, t7                 # t9 = F100007C
    andi    t8, t6, 0x00FF             # t8 = 00000000
    or      t7, t9, t8                 # t7 = F100007C
    sw      t7, 0x0004(a1)             # 0000006C
    lw      s0, 0x0000(t3)             # 8012BE28
    lui     $at, 0xE400                # $at = E4000000
    addiu   v0, v0, 0x0008             # v0 = 00000078
    addu    t6, a3, s0
    sll     t9, t6,  2
    andi    t8, t9, 0x0FFF             # t8 = 0000007C
    sll     t7, t8, 12
    addu    t9, t0, s0
    sll     t8, t9,  2
    or      t6, t7, $at                # t6 = F500007C
    andi    t7, t8, 0x0FFF             # t7 = 0000007C
    or      t9, t6, t7                 # t9 = F500007C
    sll     t8, a3,  2
    andi    t6, t8, 0x0FFF             # t6 = 0000007C
    sw      t9, 0x0000(t1)             # 00000070
    sll     t9, t0,  2
    andi    t8, t9, 0x0FFF             # t8 = 0000007C
    sll     t7, t6, 12
    or      t6, t7, t8                 # t6 = 0000007C
    sw      t6, 0x0004(t1)             # 00000074
    or      v1, v0, $zero              # v1 = 00000078
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(v1)             # 00000078
    sw      $zero, 0x0004(v1)          # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a1, v0, $zero              # a1 = 00000080
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(a1)             # 00000080
    lw      a0, 0x0000(t5)             # 8012BE2C
    addiu   v0, v0, 0x0008             # v0 = 00000088
    andi    a0, a0, 0xFFFF             # a0 = 00000060
    sll     t8, a0, 16
    or      t6, t8, a0                 # t6 = 0000007C
    sw      t6, 0x0004(a1)             # 00000084
    sw      v0, 0x0000(a2)             # 00000000
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_800D67E8:
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xBA00             # a3 = 8011BA00
    addiu   $sp, $sp, 0xFFF0           # $sp -= 0x10
    lw      a1, 0x0000(a3)             # 8011BA00
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, a0, $at
    lbu     v1, 0x63E7(v0)             # 000063E7
    lh      t6, 0x0B28(a1)             # 00000B28
    lh      t7, 0x0B2A(a1)             # 00000B2A
    lui     $at, 0x8011                # $at = 80110000
    mtc1    t6, $f4                    # $f4 = 0.00
    sll     v1, v1,  2
    addu    $at, $at, v1
    lwc1    $f2, 0x2EC8($at)           # 80112EC8
    cvt.s.w $f6, $f4
    mtc1    t7, $f8                    # $f8 = 0.00
    lh      t9, 0x0B2E(a1)             # 00000B2E
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    add.s   $f12, $f2, $f2
    lwc1    $f16, 0x2EE8($at)          # 80112EE8
    lh      t8, 0x0B2C(a1)             # 00000B2C
    cvt.s.w $f10, $f8
    mul.s   $f0, $f12, $f6
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t8, $f4                    # $f4 = 0.00
    lui     $at, 0x3F00                # $at = 3F000000
    mul.s   $f14, $f16, $f10
    cvt.s.w $f10, $f8
    cvt.s.w $f6, $f4
    div.s   $f4, $f10, $f16
    div.s   $f18, $f6, $f12
    swc1    $f4, 0x0000($sp)
    lh      a2, 0x0B26(a1)             # 00000B26
    mtc1    $at, $f4                   # $f4 = 0.50
    mtc1    a2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f10, $f16, $f8
    add.s   $f6, $f10, $f4
    trunc.w.s $f8, $f6
    mfc1    t1, $f8
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    subu    t4, a2, t3
    bgez    t4, lbl_800D68B0
    sra     t5, t4,  1
    addiu   $at, t4, 0x0001            # $at = 00000001
    sra     t5, $at,  1
lbl_800D68B0:
    addu    t6, t5, a2
    sh      t6, 0x0F16(a1)             # 00000F16
    lh      t8, 0x6404(v0)             # 00006404
    lh      t7, 0x6406(v0)             # 00006406
    bgez    t8, lbl_800D68D0
    sra     t9, t8,  3
    addiu   $at, t8, 0x0007            # $at = 00000007
    sra     t9, $at,  3
lbl_800D68D0:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addu    t0, t7, t9
    sh      t0, 0x6407($at)            # 0000E406
    lbu     t1, 0x63E7(v0)             # 000063E7
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x63E8($at)            # 0000E3E7
    lbu     t3, 0x63E7(v0)             # 000063E7
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bnel    t3, $at, lbl_800D6928
    lui     $at, 0x3F00                # $at = 3F000000
    lw      a1, 0x0000(a3)             # 8011BA00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    lh      t4, 0x0B24(a1)             # 00000B24
    sh      t4, 0x0F14(a1)             # 00000F14
    lw      a1, 0x0000(a3)             # 8011BA00
    lh      t5, 0x0B26(a1)             # 00000B26
    sh      t5, 0x0F16(a1)             # 00000F16
    sb      t6, 0x6305($at)            # 0000E304
    lh      t8, 0x6404(v0)             # 00006404
    sh      t8, 0x6407($at)            # 0000E406
    lui     $at, 0x3F00                # $at = 3F000000
lbl_800D6928:
    mtc1    $at, $f10                  # $f10 = 0.50
    lw      t3, 0x0000(a3)             # 8011BA00
    add.s   $f4, $f0, $f10
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    nop
    sll     t0, t9, 16
    sra     t1, t0, 16
    bgez    t1, lbl_800D6958
    sra     t2, t1,  1
    addiu   $at, t1, 0x0001            # $at = 00000001
    sra     t2, $at,  1
lbl_800D6958:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mtc1    $at, $f6                   # $f6 = 0.50
    sh      t2, 0x04C0(t3)             # 000004C0
    add.s   $f10, $f14, $f8
    lw      t6, 0x0000(a3)             # 8011BA00
    add.s   $f8, $f18, $f6
    mtc1    $at, $f6                   # $f6 = 0.50
    trunc.w.s $f4, $f10
    trunc.w.s $f10, $f8
    mfc1    t5, $f4
    nop
    sh      t5, 0x04C2(t6)             # 000004C5
    lw      t9, 0x0000(a3)             # 8011BA00
    mfc1    t7, $f10
    nop
    sh      t7, 0x04B4(t9)             # 000004B4
    lwc1    $f4, 0x0000($sp)
    lw      t2, 0x0000(a3)             # 8011BA00
    add.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    sh      t1, 0x04B6(t2)             # 000004B7
    lw      a1, 0x0000(a3)             # 8011BA00
    lh      t3, 0x0B24(a1)             # 00000B24
    lh      t4, 0x0B28(a1)             # 00000B28
    lh      t6, 0x04C0(a1)             # 000004C0
    addu    t5, t3, t4
    bgez    t6, lbl_800D69DC
    sra     t8, t6,  1
    addiu   $at, t6, 0x0001            # $at = 00000004
    sra     t8, $at,  1
lbl_800D69DC:
    subu    t7, t5, t8
    sh      t7, 0x0F14(a1)             # 00000F14
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp += 0x10


func_800D69EC:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    ori     t1, $zero, 0xFFFF          # t1 = 0000FFFF
    lui     v0, 0x8011                 # v0 = 80110000
    lw      v0, 0x2E34(v0)             # 80112E34
    or      t0, a1, $zero              # t0 = 00000000
    lhu     a3, 0x0000(v0)             # 80110000
    or      v1, v0, $zero              # v1 = 80110000
    lw      a2, 0x0004(v0)             # 80110004
    beql    t1, a3, lbl_800D6A64
    lbu     t9, 0x0002(v1)             # 80110002
lbl_800D6A18:
    bnel    t0, a3, lbl_800D6A50
    lhu     a3, 0x0008(v1)             # 80110008
    lbu     t6, 0x0002(v1)             # 80110002
    lw      a1, 0x0004(v1)             # 80110004
    addiu   v0, a0, 0x2200             # v0 = 00002200
    sb      t6, 0x0008(v0)             # 00002208
    lw      a3, 0x000C(v1)             # 8011000C
    subu    t7, a1, a2
    addiu   v1, v1, 0x0008             # v1 = 80110008
    subu    t8, a3, a1
    sw      t7, 0x0000(v0)             # 00002200
    jr      $ra
    sw      t8, 0x0004(v0)             # 00002204
lbl_800D6A4C:
    lhu     a3, 0x0008(v1)             # 80110010
lbl_800D6A50:
    addiu   v1, v1, 0x0008             # v1 = 80110010
    bne     t1, a3, lbl_800D6A18
    nop
    or      v1, v0, $zero              # v1 = 00002200
    lbu     t9, 0x0002(v1)             # 00002202
lbl_800D6A64:
    lw      a1, 0x0004(v1)             # 00002204
    addiu   v0, a0, 0x2200             # v0 = 00002200
    sb      t9, 0x0008(v0)             # 00002208
    lw      a3, 0x000C(v1)             # 0000220C
    subu    t2, a1, a2
    addiu   v1, v1, 0x0008             # v1 = 00002208
    subu    t3, a3, a1
    sw      t2, 0x0000(v0)             # 00002200
    sw      t3, 0x0004(v0)             # 00002204
    jr      $ra
    nop


func_800D6A90:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    ori     t1, $zero, 0xFFFF          # t1 = 0000FFFF
    lui     v0, 0x8011                 # v0 = 80110000
    lw      v0, 0x2E38(v0)             # 80112E38
    or      t0, a1, $zero              # t0 = 00000000
    lhu     a3, 0x0000(v0)             # 80110000
    or      v1, v0, $zero              # v1 = 80110000
    lw      a2, 0x0004(v0)             # 80110004
    beql    t1, a3, lbl_800D6B08
    lbu     t9, 0x0002(v1)             # 80110002
lbl_800D6ABC:
    bnel    t0, a3, lbl_800D6AF4
    lhu     a3, 0x0008(v1)             # 80110008
    lbu     t6, 0x0002(v1)             # 80110002
    lw      a1, 0x0004(v1)             # 80110004
    addiu   v0, a0, 0x2200             # v0 = 00002200
    sb      t6, 0x0008(v0)             # 00002208
    lw      a3, 0x000C(v1)             # 8011000C
    subu    t7, a1, a2
    addiu   v1, v1, 0x0008             # v1 = 80110008
    subu    t8, a3, a1
    sw      t7, 0x0000(v0)             # 00002200
    jr      $ra
    sw      t8, 0x0004(v0)             # 00002204
lbl_800D6AF0:
    lhu     a3, 0x0008(v1)             # 80110010
lbl_800D6AF4:
    addiu   v1, v1, 0x0008             # v1 = 80110010
    bne     t1, a3, lbl_800D6ABC
    nop
    or      v1, v0, $zero              # v1 = 00002200
    lbu     t9, 0x0002(v1)             # 00002202
lbl_800D6B08:
    lw      a1, 0x0004(v1)             # 00002204
    addiu   v0, a0, 0x2200             # v0 = 00002200
    sb      t9, 0x0008(v0)             # 00002208
    lw      a3, 0x000C(v1)             # 0000220C
    subu    t2, a1, a2
    addiu   v1, v1, 0x0008             # v1 = 00002208
    subu    t3, a3, a1
    sw      t2, 0x0000(v0)             # 00002200
    sw      t3, 0x0004(v0)             # 00002204
    jr      $ra
    nop


func_800D6B34:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    ori     t0, $zero, 0xFFFF          # t0 = 0000FFFF
    lui     v1, 0x8011                 # v1 = 80110000
    lw      v1, 0x2E3C(v1)             # 80112E3C
    or      a3, a1, $zero              # a3 = 00000000
    lhu     v0, 0x0000(v1)             # 80110000
    lw      a2, 0x0004(v1)             # 80110004
    beq     t0, v0, lbl_800D6BA0
    nop
lbl_800D6B5C:
    bnel    a3, v0, lbl_800D6B94
    lhu     v0, 0x0008(v1)             # 80110008
    lbu     t6, 0x0002(v1)             # 80110002
    lw      a1, 0x0004(v1)             # 80110004
    addiu   v0, a0, 0x2200             # v0 = 00002200
    sb      t6, 0x0008(v0)             # 00002208
    lw      a3, 0x000C(v1)             # 8011000C
    subu    t7, a1, a2
    addiu   v1, v1, 0x0008             # v1 = 80110008
    subu    t8, a3, a1
    sw      t7, 0x0000(v0)             # 00002200
    jr      $ra
    sw      t8, 0x0004(v0)             # 00002204
lbl_800D6B90:
    lhu     v0, 0x0008(v1)             # 80110010
lbl_800D6B94:
    addiu   v1, v1, 0x0008             # v1 = 80110010
    bne     t0, v0, lbl_800D6B5C
    nop
lbl_800D6BA0:
    jr      $ra
    nop


func_800D6BA8:
# References Jump Table at 801132C0 to 801132E0
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sltiu   $at, a1, 0x0008
    beq     $at, $zero, lbl_800D6E10
    sll     t6, a1,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, 0x32C0($at)            # 801132C0
    jr      t6
    nop
    addiu   t7, a0, 0x7FFF             # t7 = 00007FFF
    lbu     t7, 0x62FE(t7)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   v0, $zero, 0x003C          # v0 = 0000003C
    bne     t7, $at, lbl_800D6C04
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    sh      a1, 0x63DD($at)            # 0000E3DC
    sh      t8, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      $zero, 0x63E1($at)         # 0000E3E0
lbl_800D6C04:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    sh      a1, 0x63DD($at)            # 0000E3DC
    sh      v0, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      v0, 0x63E1($at)            # 0000E3E0


func_800D6C18:
    addiu   t9, a0, 0x7FFF             # t9 = 00007FFF
    lbu     t9, 0x62FE(t9)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    bne     t9, $at, lbl_800D6C64
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lw      t0, 0x0000(v0)             # 8011BA00
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    lh      t1, 0x0F56(t0)             # 00000F56
    sh      t1, 0x63DD($at)            # 0000E3DC
    lw      t2, 0x0000(v0)             # 8011BA00
    lh      t3, 0x0F58(t2)             # 00000F58
    sh      t3, 0x63DF($at)            # 0000E3DE
    lw      t4, 0x0000(v0)             # 8011BA00
    lh      t5, 0x0F5A(t4)             # 00000F5A
    jr      $ra
    sh      t5, 0x63E1($at)            # 0000E3E0
lbl_800D6C64:
    lw      t6, 0x0000(v0)             # 8011BA00
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    lh      t7, 0x0F5C(t6)             # 00000F5C
    sh      t7, 0x63DD($at)            # 0000E3DC
    lw      t8, 0x0000(v0)             # 8011BA00
    lh      t9, 0x0F5E(t8)             # 00000F5E
    sh      t9, 0x63DF($at)            # 0000E3DE
    lw      t0, 0x0000(v0)             # 8011BA00
    lh      t1, 0x0F60(t0)             # 00000F60
    jr      $ra
    sh      t1, 0x63E1($at)            # 0000E3E0


func_800D6C90:
    addiu   t2, a0, 0x7FFF             # t2 = 00007FFF
    lbu     t2, 0x62FE(t2)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     t2, $at, lbl_800D6CC8
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    addiu   t4, $zero, 0x006E          # t4 = 0000006E
    sh      t3, 0x63DD($at)            # 0000E3DC
    sh      t4, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      a1, 0x63E1($at)            # 0000E3E0
lbl_800D6CC8:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t6, $zero, 0x005A          # t6 = 0000005A
    sh      t5, 0x63DD($at)            # 0000E3DC
    sh      t6, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      a1, 0x63E1($at)            # 0000E3E0


func_800D6CE0:
    addiu   v0, a0, 0x7FFF             # v0 = 00007FFF
    lbu     v0, 0x62FE(v0)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     v0, $at, lbl_800D6D10
    addiu   t7, $zero, 0x005A          # t7 = 0000005A
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t8, $zero, 0x00B4          # t8 = 000000B4
    sh      t7, 0x63DD($at)            # 0000E3DC
    sh      t8, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      a1, 0x63E1($at)            # 0000E3E0
lbl_800D6D10:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_800D6D3C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    addiu   t0, $zero, 0x0096          # t0 = 00000096
    addiu   t1, $zero, 0x00B4          # t1 = 000000B4
    sh      t9, 0x63DD($at)            # 0000E3DC
    sh      t0, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      t1, 0x63E1($at)            # 0000E3E0
lbl_800D6D3C:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    addiu   t3, $zero, 0x00B4          # t3 = 000000B4
    sh      t2, 0x63DD($at)            # 0000E3DC
    sh      t3, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      a1, 0x63E1($at)            # 0000E3E0


func_800D6D58:
    addiu   t4, a0, 0x7FFF             # t4 = 00007FFF
    lbu     t4, 0x62FE(t4)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     t4, $at, lbl_800D6D90
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   t5, $zero, 0x00D2          # t5 = 000000D2
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sh      t5, 0x63DD($at)            # 0000E3DC
    sh      t6, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      a1, 0x63E1($at)            # 0000E3E0
lbl_800D6D90:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t8, $zero, 0x00B4          # t8 = 000000B4
    sh      a1, 0x63DD($at)            # 0000E3DC
    sh      t7, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      t8, 0x63E1($at)            # 0000E3E0


func_800D6DA8:
    addiu   t9, a0, 0x7FFF             # t9 = 00007FFF
    lbu     t9, 0x62FE(t9)             # 0000E2FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     t9, $at, lbl_800D6DDC
    addiu   t1, $zero, 0x00E1          # t1 = 000000E1
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   t0, $zero, 0x001E          # t0 = 0000001E
    sh      a1, 0x63DD($at)            # 0000E3DC
    sh      a1, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      t0, 0x63E1($at)            # 0000E3E0
lbl_800D6DDC:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    sh      t1, 0x63DD($at)            # 0000E3DC
    sh      a1, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      t2, 0x63E1($at)            # 0000E3E0


func_800D6DF4:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x63E1($at)         # 0000E3E0
    addiu   v1, a0, 0x7FFF             # v1 = 00007FFF
    lh      v1, 0x63E1(v1)             # 0000E3E0
    sh      v1, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      v1, 0x63DD($at)            # 0000E3DC
lbl_800D6E10:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, a0, $at
    lbu     t3, 0x62FD(v0)             # 000062FD
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     t3, $at, lbl_800D6E40
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x63E1($at)         # 0000E3E0
    lh      v1, 0x63E0(v0)             # 000063E0
    sh      v1, 0x63DF($at)            # 0000E3DE
    jr      $ra
    sh      v1, 0x63DD($at)            # 0000E3DC
lbl_800D6E40:
    addiu   $at, a0, 0x7FFF            # $at = 00007FFF
    sh      a1, 0x63E1($at)            # 0000E3E0
    lh      v1, 0x63E0(v0)             # 000063E0
    sh      v1, 0x63DF($at)            # 0000E3DE
    sh      v1, 0x63DD($at)            # 0000E3DC
    jr      $ra
    nop


func_800D6E5C:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      a0, 0x0070($sp)
    sw      a1, 0x0074($sp)
    sw      a2, 0x0078($sp)
    sw      a3, 0x007C($sp)
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56C8(t7)            # 8010A938
    lw      t6, 0x0074($sp)
    lui     t2, 0x8011                 # t2 = 80110000
    bne     t7, $zero, lbl_800D759C
    lw      v0, 0x0000(t6)             # 00000000
    lui     a2, 0x8011                 # a2 = 80110000
    lh      a2, 0x2F30(a2)             # 80112F30
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x2F08             # t8 = 80112F08
    addu    $at, a2, $zero
    sll     a2, a2,  2
    subu    a2, a2, $at
    sll     a2, a2,  1
    addu    a0, a2, t8
    lh      t2, 0x2F20(t2)             # 80112F20
    lh      a1, 0x0000(a0)             # 00000000
    lui     t1, 0x8011                 # t1 = 80110000
    lui     t3, 0x8011                 # t3 = 80110000
    subu    a3, t2, a1
    bltzl   a3, lbl_800D6ED4
    subu    v1, $zero, a3
    b       lbl_800D6ED4
    or      v1, a3, $zero              # v1 = 00000000
    subu    v1, $zero, a3
lbl_800D6ED4:
    lh      t3, 0x2F2C(t3)             # 80112F2C
    lh      t1, 0x2F24(t1)             # 80112F24
    lh      t5, 0x0002(a0)             # 00000002
    div     $zero, v1, t3
    mflo    a3
    sll     a3, a3, 16
    bne     t3, $zero, lbl_800D6EF8
    nop
    break   # 0x01C00
lbl_800D6EF8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D6F10
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D6F10
    nop
    break   # 0x01800
lbl_800D6F10:
    subu    t0, t1, t5
    bltz    t0, lbl_800D6F24
    sra     a3, a3, 16
    b       lbl_800D6F28
    or      v1, t0, $zero              # v1 = 00000000
lbl_800D6F24:
    subu    v1, $zero, t0
lbl_800D6F28:
    div     $zero, v1, t3
    lui     t0, 0x8011                 # t0 = 80110000
    lh      t0, 0x2F28(t0)             # 80112F28
    lh      t4, 0x0004(a0)             # 00000004
    bne     t3, $zero, lbl_800D6F44
    nop
    break   # 0x01C00
lbl_800D6F44:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D6F5C
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D6F5C
    nop
    break   # 0x01800
lbl_800D6F5C:
    subu    t6, t0, t4
    mflo    t9
    sh      t9, 0x0060($sp)
    sw      t6, 0x0000($sp)
    bltz    t6, lbl_800D6F7C
    or      t7, t6, $zero              # t7 = 00000000
    b       lbl_800D6F84
    or      v1, t7, $zero              # v1 = 00000000
lbl_800D6F7C:
    lw      v1, 0x0000($sp)
    subu    v1, $zero, v1
lbl_800D6F84:
    slt     $at, t2, a1
    bnel    $at, $zero, lbl_800D6FA4
    addu    t2, t2, a3
    subu    t2, t2, a3
    sll     t2, t2, 16
    b       lbl_800D6FAC
    sra     t2, t2, 16
    addu    t2, t2, a3
lbl_800D6FA4:
    sll     t2, t2, 16
    sra     t2, t2, 16
lbl_800D6FAC:
    slt     $at, t1, t5
    bne     $at, $zero, lbl_800D6FCC
    lui     a3, 0x8011                 # a3 = 80110000
    lh      t8, 0x0060($sp)
    subu    t1, t1, t8
    sll     t1, t1, 16
    b       lbl_800D6FDC
    sra     t1, t1, 16
lbl_800D6FCC:
    lh      t9, 0x0060($sp)
    addu    t1, t1, t9
    sll     t1, t1, 16
    sra     t1, t1, 16
lbl_800D6FDC:
    slt     $at, t0, t4
    bne     $at, $zero, lbl_800D7030
    nop
    div     $zero, v1, t3
    mflo    t6
    sll     t7, t6, 16
    sra     t8, t7, 16
    subu    t0, t0, t8
    sll     t0, t0, 16
    bne     t3, $zero, lbl_800D700C
    nop
    break   # 0x01C00
lbl_800D700C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7024
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7024
    nop
    break   # 0x01800
lbl_800D7024:
    sra     t0, t0, 16
    b       lbl_800D7074
    sw      a1, 0x000C($sp)
lbl_800D7030:
    div     $zero, v1, t3
    mflo    t9
    sll     t6, t9, 16
    sra     t7, t6, 16
    addu    t0, t0, t7
    sll     t0, t0, 16
    sra     t0, t0, 16
    bne     t3, $zero, lbl_800D7058
    nop
    break   # 0x01C00
lbl_800D7058:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7070
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7070
    nop
    break   # 0x01800
lbl_800D7070:
    sw      a1, 0x000C($sp)
lbl_800D7074:
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x2F14             # t8 = 80112F14
    addu    a1, a2, t8
    lh      a3, 0x2F34(a3)             # 80112F34
    lh      t9, 0x0000(a1)             # 00000000
    lui     a2, 0x8011                 # a2 = 80110000
    subu    a0, a3, t9
    sw      t9, 0x0000($sp)
    bltz    a0, lbl_800D70C4
    or      t6, t9, $zero              # t6 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    sh      t0, 0x2F28($at)            # 80112F28
    lui     $at, 0x8011                # $at = 80110000
    sh      t1, 0x2F24($at)            # 80112F24
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, 0x2F20($at)            # 80112F20
    or      v1, a0, $zero              # v1 = 00000000
    sw      t4, 0x0004($sp)
    b       lbl_800D70E8
    sw      t5, 0x0008($sp)
lbl_800D70C4:
    lui     $at, 0x8011                # $at = 80110000
    sh      t0, 0x2F28($at)            # 80112F28
    lui     $at, 0x8011                # $at = 80110000
    sh      t1, 0x2F24($at)            # 80112F24
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, 0x2F20($at)            # 80112F20
    subu    v1, $zero, a0
    sw      t4, 0x0004($sp)
    sw      t5, 0x0008($sp)
lbl_800D70E8:
    div     $zero, v1, t3
    lui     t1, 0x8011                 # t1 = 80110000
    lh      t1, 0x2F38(t1)             # 80112F38
    lh      t4, 0x0002(a1)             # 00000002
    mflo    t0
    sll     t0, t0, 16
    bne     t3, $zero, lbl_800D710C
    nop
    break   # 0x01C00
lbl_800D710C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7124
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7124
    nop
    break   # 0x01800
lbl_800D7124:
    subu    a0, t1, t4
    bltz    a0, lbl_800D7138
    sra     t0, t0, 16
    b       lbl_800D713C
    or      v1, a0, $zero              # v1 = 00000000
lbl_800D7138:
    subu    v1, $zero, a0
lbl_800D713C:
    div     $zero, v1, t3
    lh      a2, 0x2F3C(a2)             # 80112F3C
    lh      t5, 0x0004(a1)             # 00000004
    mflo    t2
    sll     t2, t2, 16
    bne     t3, $zero, lbl_800D715C
    nop
    break   # 0x01C00
lbl_800D715C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7174
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7174
    nop
    break   # 0x01800
lbl_800D7174:
    subu    a0, a2, t5
    bltz    a0, lbl_800D7188
    sra     t2, t2, 16
    b       lbl_800D718C
    or      v1, a0, $zero              # v1 = 00000000
lbl_800D7188:
    subu    v1, $zero, a0
lbl_800D718C:
    lw      a0, 0x0000($sp)
    slt     $at, a3, a0
    bnel    $at, $zero, lbl_800D71B0
    addu    a3, a3, t0
    subu    a3, a3, t0
    sll     a3, a3, 16
    b       lbl_800D71B8
    sra     a3, a3, 16
    addu    a3, a3, t0
lbl_800D71B0:
    sll     a3, a3, 16
    sra     a3, a3, 16
lbl_800D71B8:
    slt     $at, t1, t4
    bnel    $at, $zero, lbl_800D71D8
    addu    t1, t1, t2
    subu    t1, t1, t2
    sll     t1, t1, 16
    b       lbl_800D71E0
    sra     t1, t1, 16
    addu    t1, t1, t2
lbl_800D71D8:
    sll     t1, t1, 16
    sra     t1, t1, 16
lbl_800D71E0:
    slt     $at, a2, t5
    bne     $at, $zero, lbl_800D7234
    nop
    div     $zero, v1, t3
    mflo    t7
    sll     t8, t7, 16
    sra     t9, t8, 16
    subu    a2, a2, t9
    sll     a2, a2, 16
    bne     t3, $zero, lbl_800D7210
    nop
    break   # 0x01C00
lbl_800D7210:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7228
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7228
    nop
    break   # 0x01800
lbl_800D7228:
    sra     a2, a2, 16
    b       lbl_800D7278
    addiu   t3, t3, 0xFFFF             # t3 = 8010FFFF
lbl_800D7234:
    div     $zero, v1, t3
    mflo    t6
    sll     t7, t6, 16
    sra     t8, t7, 16
    addu    a2, a2, t8
    sll     a2, a2, 16
    sra     a2, a2, 16
    bne     t3, $zero, lbl_800D725C
    nop
    break   # 0x01C00
lbl_800D725C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t3, $at, lbl_800D7274
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_800D7274
    nop
    break   # 0x01800
lbl_800D7274:
    addiu   t3, t3, 0xFFFF             # t3 = 8010FFFE
lbl_800D7278:
    sll     t3, t3, 16
    sra     t3, t3, 16
    lui     $at, 0x8011                # $at = 80110000
    bne     t3, $zero, lbl_800D72E8
    sh      t3, 0x2F2C($at)            # 80112F2C
    lw      t9, 0x000C($sp)
    lw      t6, 0x0008($sp)
    lui     $at, 0x8011                # $at = 80110000
    sh      t9, 0x2F20($at)            # 80112F20
    lw      t7, 0x0004($sp)
    lui     $at, 0x8011                # $at = 80110000
    lui     t8, 0x8011                 # t8 = 80110000
    lh      t8, 0x2F30(t8)             # 80112F30
    sh      t6, 0x2F24($at)            # 80112F24
    lui     $at, 0x8011                # $at = 80110000
    sh      t7, 0x2F28($at)            # 80112F28
    lui     $at, 0x8011                # $at = 80110000
    xori    t9, t8, 0x0001             # t9 = 80110001
    sh      t9, 0x2F30($at)            # 80112F30
    sll     a3, a0, 16
    sll     t1, t4, 16
    sll     a2, t5, 16
    addiu   t3, $zero, 0x000C          # t3 = 0000000C
    lui     $at, 0x8011                # $at = 80110000
    sra     a3, a3, 16
    sra     t1, t1, 16
    sra     a2, a2, 16
    sh      t3, 0x2F2C($at)            # 80112F2C
lbl_800D72E8:
    lui     a0, 0xE700                 # a0 = E7000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      a0, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a1, v0, $zero              # a1 = 00000008
    lui     t6, 0xFC30                 # t6 = FC300000
    lui     t7, 0x552E                 # t7 = 552E0000
    ori     t7, t7, 0xFF7F             # t7 = 552EFF7F
    ori     t6, t6, 0x9661             # t6 = FC309661
    sw      t6, 0x0000(a1)             # 00000008
    sw      t7, 0x0004(a1)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    or      t0, v0, $zero              # t0 = 00000010
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(t0)             # 00000010
    lui     t8, 0x8011                 # t8 = 80110000
    lui     t9, 0x8011                 # t9 = 80110000
    lh      t6, 0x2F20(t9)             # 80112F20
    lh      t8, 0x2F24(t8)             # 80112F24
    addiu   v0, v0, 0x0008             # v0 = 00000018
    sll     t7, t6, 24
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t9, 16
    lui     t9, 0x8011                 # t9 = 80110000
    lh      t9, 0x2F28(t9)             # 80112F28
    or      t8, t7, t6                 # t8 = FD3EFF7F
    or      t2, v0, $zero              # t2 = 00000018
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t6, t7,  8
    or      t9, t8, t6                 # t9 = FD3EFF7F
    ori     t7, t9, 0x00FF             # t7 = FD3EFFFF
    sw      t7, 0x0004(t0)             # 00000014
    lui     t8, 0xFB00                 # t8 = FB000000
    sw      t8, 0x0000(t2)             # 00000018
    andi    t7, t1, 0x00FF             # t7 = 00000000
    sll     t8, t7, 16
    sll     t9, a3, 24
    or      t6, t9, t8                 # t6 = FF3EFF7F
    andi    t7, a2, 0x00FF             # t7 = 00000000
    sll     t9, t7,  8
    or      t8, t6, t9                 # t8 = FF3EFF7F
    ori     t7, t8, 0x00FF             # t7 = FF3EFFFF
    sw      t7, 0x0004(t2)             # 0000001C
    lui     $at, 0x8011                # $at = 80110000
    sh      a2, 0x2F3C($at)            # 80112F3C
    lui     $at, 0x8011                # $at = 80110000
    sh      a3, 0x2F34($at)            # 80112F34
    lui     $at, 0x8011                # $at = 80110000
    sh      t1, 0x2F38($at)            # 80112F38
    lw      a2, 0x0070($sp)
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      a1, v0, $zero              # a1 = 00000020
    lui     t6, 0xFD90                 # t6 = FD900000
    addiu   t9, a2, 0x5E08             # t9 = 80115E08
    sw      t9, 0x0004(a1)             # 00000024
    sw      t6, 0x0000(a1)             # 00000020
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      a3, v0, $zero              # a3 = 00000028
    lui     t7, 0x0708                 # t7 = 07080000
    ori     t7, t7, 0x0200             # t7 = 07080200
    lui     t8, 0xF590                 # t8 = F5900000
    sw      t8, 0x0000(a3)             # 00000028
    sw      t7, 0x0004(a3)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      t0, v0, $zero              # t0 = 00000030
    lui     t6, 0xE600                 # t6 = E6000000
    sw      t6, 0x0000(t0)             # 00000030
    sw      $zero, 0x0004(t0)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    or      t1, v0, $zero              # t1 = 00000038
    lui     t8, 0x0703                 # t8 = 07030000
    ori     t8, t8, 0xF800             # t8 = 0703F800
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t1)             # 00000038
    sw      t8, 0x0004(t1)             # 0000003C
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      v1, v0, $zero              # v1 = 00000040
    sw      a0, 0x0000(v1)             # 00000040
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t5, 0x007A($sp)
    lui     a1, 0x8013                 # a1 = 80130000
    lui     t4, 0x8013                 # t4 = 80130000
    mtc1    $at, $f0                   # $f0 = 100.00
    addiu   t4, t4, 0xBE28             # t4 = 8012BE28
    addiu   a1, a1, 0xBE2C             # a1 = 8012BE2C
    sw      $zero, 0x0004(v1)          # 00000044
    addiu   v0, v0, 0x0008             # v0 = 00000048
    or      a3, v0, $zero              # a3 = 00000048
    lui     t7, 0xF580                 # t7 = F5800000
    lui     t6, 0x0008                 # t6 = 00080000
    ori     t6, t6, 0x0200             # t6 = 00080200
    ori     t7, t7, 0x0200             # t7 = F5800200
    sw      t7, 0x0000(a3)             # 00000048
    sw      t6, 0x0004(a3)             # 0000004C
    addiu   v0, v0, 0x0008             # v0 = 00000050
    or      t0, v0, $zero              # t0 = 00000050
    lui     t8, 0x0003                 # t8 = 00030000
    ori     t8, t8, 0xC03C             # t8 = 0003C03C
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(t0)             # 00000050
    sw      t8, 0x0004(t0)             # 00000054
    addiu   v0, v0, 0x0008             # v0 = 00000058
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x4600(t1)            # 8011BA00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f10                  # $f10 = 16.00
    lh      t7, 0x0B06(t1)             # 80120B06
    lui     $at, 0x4480                # $at = 44800000
    or      t2, v0, $zero              # t2 = 00000058
    mtc1    t7, $f4                    # $f4 = -324538400000000000000000000000000.00
    addiu   v1, a2, 0x20D8             # v1 = 801120D8
    cvt.s.w $f6, $f4
    mtc1    $at, $f4                   # $f4 = 1024.00
    div.s   $f8, $f6, $f0
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t9, $f18
    nop
    sw      t9, 0x0000(t4)             # 8012BE28
    lh      t8, 0x0B06(t1)             # 80120B06
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    div.s   $f10, $f8, $f0
    div.s   $f16, $f4, $f10
    trunc.w.s $f18, $f16
    mfc1    t6, $f18
    nop
    sw      t6, 0x0000(a1)             # 8012BE2C
    lw      t3, 0x0000(t4)             # 8012BE28
    lui     $at, 0xE400                # $at = E4000000
    addiu   v0, v0, 0x0008             # v0 = 00000060
    addu    t9, t5, t3
    sll     t8, t9,  2
    andi    t7, t8, 0x0FFF             # t7 = 0000003C
    lh      t8, 0x007E($sp)
    sll     t6, t7, 12
    or      t9, t6, $at                # t9 = E4080200
    addu    t7, t8, t3
    sll     t6, t7,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000200
    or      t7, t9, t8                 # t7 = E4080200
    sw      t7, 0x0000(t2)             # 00000058
    lh      t7, 0x007E($sp)
    sll     t6, t5,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000200
    sll     t8, t9, 12
    sll     t6, t7,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000200
    or      t7, t8, t9                 # t7 = 00000200
    sw      t7, 0x0004(t2)             # 0000005C
    or      a0, v0, $zero              # a0 = 00000060
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(a0)             # 00000060
    sw      $zero, 0x0004(a0)          # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      a3, v0, $zero              # a3 = 00000068
    lui     t8, 0xF100                 # t8 = F1000000
    sw      t8, 0x0000(a3)             # 00000068
    lw      t0, 0x0000(a1)             # 8012BE2C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    addiu   t6, v1, 0x7FFF             # t6 = 8011A0D7
    andi    t0, t0, 0xFFFF             # t0 = 00000050
    sll     t9, t0, 16
    or      t7, t9, t0                 # t7 = 00000250
    sw      t7, 0x0004(a3)             # 0000006C
    lbu     t6, 0x63E8(t6)             # 801204BF
    addiu   $at, v1, 0x7FFF            # $at = 8011A0D7
    addiu   t8, t6, 0x0001             # t8 = 8011A0D8
    sb      t8, 0x63E8($at)            # 801204BF
    lw      t9, 0x0074($sp)
    sw      v0, 0x0000(t9)             # 00000200
lbl_800D759C:
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70


func_800D75A4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      t7, 0x0028($sp)
    lui     t8, 0x0001                 # t8 = 00010000
    lw      t6, 0x0030($sp)
    addu    t8, t8, t7
    lbu     t8, 0x03DC(t8)             # 000103DC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      v1, 0x0000(t6)             # 00000000
    bne     t8, $at, lbl_800D7610
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t9, 0x0014($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
lbl_800D7610:
    lui     t4, 0xE700                 # t4 = E7000000
    or      v0, v1, $zero              # v0 = 00000000
    sw      t4, 0x0000(v0)             # 00000000
    sw      $zero, 0x0004(v0)          # 00000004
    addiu   v1, v1, 0x0008             # v1 = 00000008
    or      a0, v1, $zero              # a0 = 00000008
    lui     t6, 0xFC11                 # t6 = FC110000
    lui     t7, 0xFF2F                 # t7 = FF2F0000
    ori     t7, t7, 0xFFFF             # t7 = FF2FFFFF
    ori     t6, t6, 0x9623             # t6 = FC119623
    sw      t6, 0x0000(a0)             # 00000008
    sw      t7, 0x0004(a0)             # 0000000C
    addiu   v1, v1, 0x0008             # v1 = 00000010
    or      a1, v1, $zero              # a1 = 00000010
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(a1)             # 00000010
    lw      t3, 0x0028($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   v1, v1, 0x0008             # v1 = 00000018
    addiu   t3, t3, 0x20D8             # t3 = 000020D8
    addu    t1, t3, $at
    lh      t9, 0x63E2(t1)             # 000063E2
    addiu   $at, $zero, 0xFF00         # $at = FFFFFF00
    lui     t5, 0x8012                 # t5 = 80120000
    andi    t6, t9, 0x00FF             # t6 = 00000000
    or      t7, t6, $at                # t7 = FFFFFF00
    sw      t7, 0x0004(a1)             # 00000014
    lhu     t8, 0x002E($sp)
    slti    $at, t8, 0x0066
    bne     $at, $zero, lbl_800D773C
    addiu   t5, t5, 0xBA00             # t5 = 8011BA00
    or      v0, v1, $zero              # v0 = 00000018
    lui     t9, 0xFD18                 # t9 = FD180000
    sw      t9, 0x0000(v0)             # 00000018
    lw      t6, 0x62B0(t1)             # 000062B0
    addiu   v1, v1, 0x0008             # v1 = 00000020
    or      a0, v1, $zero              # a0 = 00000020
    addiu   t7, t6, 0x1000             # t7 = 00001000
    sw      t7, 0x0004(v0)             # 0000001C
    lui     t8, 0xF518                 # t8 = F5180000
    lui     t9, 0x0700                 # t9 = 07000000
    sw      t9, 0x0004(a0)             # 00000024
    sw      t8, 0x0000(a0)             # 00000020
    addiu   v1, v1, 0x0008             # v1 = 00000028
    or      a1, v1, $zero              # a1 = 00000028
    lui     t6, 0xE600                 # t6 = E6000000
    sw      t6, 0x0000(a1)             # 00000028
    sw      $zero, 0x0004(a1)          # 0000002C
    addiu   v1, v1, 0x0008             # v1 = 00000030
    or      a2, v1, $zero              # a2 = 00000030
    lui     t8, 0x0723                 # t8 = 07230000
    ori     t8, t8, 0xF0AB             # t8 = 0723F0AB
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(a2)             # 00000030
    sw      t8, 0x0004(a2)             # 00000034
    addiu   v1, v1, 0x0008             # v1 = 00000038
    or      a3, v1, $zero              # a3 = 00000038
    sw      t4, 0x0000(a3)             # 00000038
    sw      $zero, 0x0004(a3)          # 0000003C
    addiu   v1, v1, 0x0008             # v1 = 00000040
    or      v0, v1, $zero              # v0 = 00000040
    lui     t9, 0xF518                 # t9 = F5180000
    ori     t9, t9, 0x0C00             # t9 = F5180C00
    sw      t9, 0x0000(v0)             # 00000040
    sw      $zero, 0x0004(v0)          # 00000044
    addiu   v1, v1, 0x0008             # v1 = 00000048
    or      a0, v1, $zero              # a0 = 00000048
    lui     t7, 0x0005                 # t7 = 00050000
    ori     t7, t7, 0xC05C             # t7 = 0005C05C
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(a0)             # 00000048
    sw      t7, 0x0004(a0)             # 0000004C
    addiu   v1, v1, 0x0008             # v1 = 00000050
    b       lbl_800D77E8
    lhu     $ra, 0x0036($sp)
lbl_800D773C:
    or      v0, v1, $zero              # v0 = 00000050
    lui     t8, 0xFD18                 # t8 = FD180000
    sw      t8, 0x0000(v0)             # 00000050
    lw      t9, 0x62B0(t1)             # 000062B0
    addiu   v1, v1, 0x0008             # v1 = 00000058
    or      a0, v1, $zero              # a0 = 00000058
    addiu   t6, t9, 0x1000             # t6 = F5181C00
    sw      t6, 0x0004(v0)             # 00000054
    lui     t7, 0xF518                 # t7 = F5180000
    lui     t8, 0x0700                 # t8 = 07000000
    sw      t8, 0x0004(a0)             # 0000005C
    sw      t7, 0x0000(a0)             # 00000058
    addiu   v1, v1, 0x0008             # v1 = 00000060
    or      a1, v1, $zero              # a1 = 00000060
    lui     t9, 0xE600                 # t9 = E6000000
    sw      t9, 0x0000(a1)             # 00000060
    sw      $zero, 0x0004(a1)          # 00000064
    addiu   v1, v1, 0x0008             # v1 = 00000068
    or      a2, v1, $zero              # a2 = 00000068
    lui     t7, 0x073F                 # t7 = 073F0000
    ori     t7, t7, 0xF080             # t7 = 073FF080
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(a2)             # 00000068
    sw      t7, 0x0004(a2)             # 0000006C
    addiu   v1, v1, 0x0008             # v1 = 00000070
    or      a3, v1, $zero              # a3 = 00000070
    sw      t4, 0x0000(a3)             # 00000070
    sw      $zero, 0x0004(a3)          # 00000074
    addiu   v1, v1, 0x0008             # v1 = 00000078
    or      v0, v1, $zero              # v0 = 00000078
    lui     t8, 0xF518                 # t8 = F5180000
    ori     t8, t8, 0x1000             # t8 = F5181000
    sw      t8, 0x0000(v0)             # 00000078
    sw      $zero, 0x0004(v0)          # 0000007C
    addiu   v1, v1, 0x0008             # v1 = 00000080
    or      a0, v1, $zero              # a0 = 00000080
    lui     t6, 0x0007                 # t6 = 00070000
    ori     t6, t6, 0xC07C             # t6 = 0007C07C
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(a0)             # 00000080
    sw      t6, 0x0004(a0)             # 00000084
    addiu   v1, v1, 0x0008             # v1 = 00000088
    lhu     $ra, 0x0036($sp)
lbl_800D77E8:
    lw      v0, 0x0000(t5)             # 8011BA00
    lh      t7, 0x63D8(t1)             # 000063D8
    lui     $at, 0xE400                # $at = E4000000
    lh      t8, 0x0522(v0)             # 0000059A
    lh      a1, 0x052A(v0)             # 000005A2
    or      a0, v1, $zero              # a0 = 00000088
    addu    t9, t7, t8
    addu    t6, t9, a1
    sll     t7, t6,  2
    lh      t6, 0x0524(v0)             # 0000059C
    andi    t8, t7, 0x0FFF             # t8 = 00000080
    sll     t9, t8, 12
    addu    t7, a1, t6
    sll     t8, t7,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000080
    or      t7, t6, $at                # t7 = E4000080
    or      t8, t7, t9                 # t8 = F6000080
    sw      t8, 0x0000(a0)             # 00000088
    lw      v0, 0x0000(t5)             # 8011BA00
    lh      t6, 0x63D8(t1)             # 000063D8
    addiu   v1, v1, 0x0008             # v1 = 00000090
    lh      t7, 0x0522(v0)             # 0000059A
    or      a2, v1, $zero              # a2 = 00000090
    addiu   v1, v1, 0x0008             # v1 = 00000098
    addu    t9, t6, t7
    sll     t8, t9,  2
    lh      t9, 0x0524(v0)             # 0000059C
    andi    t6, t8, 0x0FFF             # t6 = 00000080
    sll     t7, t6, 12
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000080
    or      t9, t6, t7                 # t9 = E4000080
    sw      t9, 0x0004(a0)             # 0000008C
    lui     t8, 0xE100                 # t8 = E1000000
    sw      t8, 0x0000(a2)             # 00000090
    sw      $zero, 0x0004(a2)          # 00000094
    or      a3, v1, $zero              # a3 = 00000098
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(a3)             # 00000098
    sw      t7, 0x0004(a3)             # 0000009C
    addiu   v1, v1, 0x0008             # v1 = 000000A0
    or      t0, v1, $zero              # t0 = 000000A0
    sw      t4, 0x0000(t0)             # 000000A0
    sw      $zero, 0x0004(t0)          # 000000A4
    addiu   v1, v1, 0x0008             # v1 = 000000A8
    or      t2, v1, $zero              # t2 = 000000A8
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     t8, 0xFF2D                 # t8 = FF2D0000
    ori     t8, t8, 0xFEFF             # t8 = FF2DFEFF
    ori     t9, t9, 0x97FF             # t9 = FCFF97FF
    sw      t9, 0x0000(t2)             # 000000A8
    sw      t8, 0x0004(t2)             # 000000AC
    addiu   v1, v1, 0x0008             # v1 = 000000B0
    lh      t6, 0x63D8(t1)             # 000063D8
    addiu   $at, t3, 0x7FFF            # $at = 0000A0D7
    addiu   $ra, $ra, 0x0001           # $ra = 00000001
    addiu   t7, t6, 0x0020             # t7 = F1000020
    sh      t7, 0x63D9($at)            # 000104B0
    lw      t9, 0x0030($sp)
    andi    v0, $ra, 0xFFFF            # v0 = 00000001
    sw      v1, 0x0000(t9)             # FCFF97FF
    lw      $ra, 0x001C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800D78F0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x03DC(t6)             # 000103DC
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bne     t6, $at, lbl_800D7AEC
    addiu   s0, a0, 0x20D8             # s0 = 000020D8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      t7, 0x04C6($at)            # 000104C6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, s0, $at
    sw      t8, 0x0024($sp)
    lhu     v0, 0x63F0(t8)             # 000063F0
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    addiu   t0, $zero, 0x0021          # t0 = 00000021
    bne     v0, $at, lbl_800D794C
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t0, 0x6305($at)            # 000103DC
lbl_800D794C:
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    bnel    v0, $at, lbl_800D79D4
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C3830
    nop
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   v1, v1, 0xA92C             # v1 = 8010A92C
    sh      $zero, 0x0000(v1)          # 8010A92C
    lh      t1, 0x0000(v1)             # 8010A92C
    lui     a0, 0x8011                 # a0 = 80110000
    lw      t3, 0x0024($sp)
    addiu   a0, a0, 0xA928             # a0 = 8010A928
    sh      t1, 0x0000(a0)             # 8010A928
    lh      t2, 0x0000(a0)             # 8010A928
    lw      t4, 0x62B8(t3)             # 000062B8
    jal     func_800D5EF0
    sb      t2, 0x0002(t4)             # 00000002
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x0023          # t6 = 00000023
    sb      t5, 0x63E8($at)            # 000104BF
    sb      t6, 0x6305($at)            # 000103DC
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_800D7AF0
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x002C         # $at = 0000002C
lbl_800D79D4:
    bne     v0, $at, lbl_800D79E8
    addiu   t7, $zero, 0x0024          # t7 = 00000024
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t7, 0x6305($at)            # 000103DC
lbl_800D79E8:
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bnel    v0, $at, lbl_800D7A70
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C3830
    nop
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   v1, v1, 0xA92C             # v1 = 8010A92C
    sh      $zero, 0x0000(v1)          # 8010A92C
    lh      t8, 0x0000(v1)             # 8010A92C
    lui     a0, 0x8011                 # a0 = 80110000
    lw      t0, 0x0024($sp)
    addiu   a0, a0, 0xA928             # a0 = 8010A928
    sh      t8, 0x0000(a0)             # 8010A928
    lh      t9, 0x0000(a0)             # 8010A928
    lw      t1, 0x62B8(t0)             # 000062B8
    jal     func_800D5EF0
    sb      t9, 0x0002(t1)             # 00000002
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    sb      t3, 0x63E8($at)            # 000104BF
    sb      t2, 0x6305($at)            # 000103DC
    addiu   a0, $zero, 0x000D          # a0 = 0000000D
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_800D7AF0
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x002E         # $at = 0000002E
lbl_800D7A70:
    bne     v0, $at, lbl_800D7A84
    addiu   t4, $zero, 0x0029          # t4 = 00000029
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t4, 0x6305($at)            # 000103DC
lbl_800D7A84:
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    bne     v0, $at, lbl_800D7A9C
    addiu   t5, $zero, 0x0031          # t5 = 00000031
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t5, 0x6305($at)            # 000103DC
lbl_800D7A9C:
    beq     v0, $zero, lbl_800D7AB0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800D7AB0
    slti    $at, v0, 0x0022
    bne     $at, $zero, lbl_800D7AC0
lbl_800D7AB0:
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t6, 0x6305($at)            # 000103DC
lbl_800D7AC0:
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_800D7AE4
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    slti    $at, v0, 0x000E
    beq     $at, $zero, lbl_800D7AE4
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800D7AEC
    sb      t7, 0x6305($at)            # 000103DC
lbl_800D7AE4:
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
lbl_800D7AEC:
    lw      $ra, 0x001C($sp)
lbl_800D7AF0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800D7B00:
# Draw Textbox Text function (Japanese)
    addiu   $sp, $sp, 0xFEC8           # $sp -= 0x138
    sw      s7, 0x003C($sp)
    lui     s7, 0x8012                 # s7 = 80120000
    addiu   s7, s7, 0xBA00             # s7 = 8011BA00
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x013C($sp)
    lw      t6, 0x013C($sp)
    lw      t8, 0x0000(s7)             # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    lw      t7, 0x0000(t6)             # 00000000
    addu    $at, $at, a0
    addiu   s1, a0, 0x20D8             # s1 = 000020D8
    sw      t7, 0x0124($sp)
    lh      t9, 0x0B00(t8)             # 00000B00
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, a0
    sh      t9, 0x04B0($at)            # 000104B0
    lw      t6, 0x0000(s7)             # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    lh      t7, 0x0B02(t6)             # 00000B02
    ori     s5, $zero, 0x8000          # s5 = 00008000
    or      s4, s1, $zero              # s4 = 000020D8
    sh      t7, 0x04B2($at)            # 000104B2
    lbu     t8, 0x03D5(t8)             # 000103D5
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addu    s0, s1, s5
    bne     t8, $at, lbl_800D7BB4
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    ori     s5, $zero, 0x8000          # s5 = 00008000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      $zero, 0x63E1($at)         # 000104B8
    addu    s0, s1, s5
    lh      a2, 0x63E0(s0)             # 000063E0
    sh      a2, 0x63DF($at)            # 000104B6
    b       lbl_800D7BC8
    sh      a2, 0x63DD($at)            # 000104B4
lbl_800D7BB4:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t9, 0x63E1($at)            # 000104B8
    lh      a2, 0x63E0(s0)             # 000063E0
    sh      a2, 0x63DF($at)            # 000104B6
    sh      a2, 0x63DD($at)            # 000104B4
lbl_800D7BC8:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      $zero, 0x63D1($at)         # 000104A8
    sh      $zero, 0x0128($sp)
    lhu     t6, 0x63D2(s0)             # 000063D2
    or      s3, $zero, $zero           # s3 = 00000000
    ori     s8, $zero, 0x818A          # s8 = 0000818A
    blez    t6, lbl_800D8E8C
    ori     s6, $zero, 0x86C8          # s6 = 000086C8
    sw      a0, 0x0138($sp)
    ori     t5, $zero, 0x8170          # t5 = 00008170
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    sll     t7, s3,  1
lbl_800D7C04:
    addu    t8, s1, t7
    addu    t9, t8, s5
    lhu     v0, 0x6306(t9)             # 00006405
    ori     $at, $zero, 0x81F4         # $at = 000081F4
    slt     $at, v0, $at
    bne     $at, $zero, lbl_800D7C58
    or      t0, v0, $zero              # t0 = 00000000
    ori     $at, $zero, 0x81F4         # $at = 000081F4
    beq     v0, $at, lbl_800D8058
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    ori     $at, $zero, 0x86B3         # $at = 000086B3
    beq     v0, $at, lbl_800D8130
    ori     $at, $zero, 0x86C7         # $at = 000086C7
    beq     v0, $at, lbl_800D7E6C
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    beq     v0, s6, lbl_800D8B5C
    ori     $at, $zero, 0x86C9         # $at = 000086C9
    beq     v0, $at, lbl_800D8918
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    b       lbl_800D8C28
    lw      t6, 0x0138($sp)
lbl_800D7C58:
    ori     $at, $zero, 0x8141         # $at = 00008141
    slt     $at, t0, $at
    bne     $at, $zero, lbl_800D7CD0
    ori     $at, $zero, 0x81F1         # $at = 000081F1
    slt     $at, t0, $at
    bne     $at, $zero, lbl_800D7C84
    ori     $at, $zero, 0x81F3         # $at = 000081F3
    beql    t0, $at, lbl_800D8064
    lbu     t8, 0x6304(s0)             # 00006304
    b       lbl_800D8C28
    lw      t6, 0x0138($sp)
lbl_800D7C84:
    ori     $at, $zero, 0x81CC         # $at = 000081CC
    slt     $at, t0, $at
    bne     $at, $zero, lbl_800D7CA4
    ori     $at, $zero, 0x81F0         # $at = 000081F0
    beq     t0, $at, lbl_800D8AB4
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    b       lbl_800D8C28
    lw      t6, 0x0138($sp)
lbl_800D7CA4:
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7E90           # $at = FFFF7E90
    addu    t6, t0, $at
    sltiu   $at, t6, 0x005C
    beq     $at, $zero, lbl_800D8C24
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, 0x32E0($at)            # 801132E0
    jr      t6
    nop
lbl_800D7CD0:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     t0, $at, lbl_800D7CF8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     t0, $at, lbl_800D7D6C
    addiu   v0, s3, 0x0001             # v0 = 00000001
    ori     $at, $zero, 0x8140         # $at = 00008140
    beql    t0, $at, lbl_800D7DB4
    lh      t7, 0x63D8(s0)             # 000063D8
    b       lbl_800D8C28
    lw      t6, 0x0138($sp)
lbl_800D7CF8:
    lw      t8, 0x0000(s7)             # 8011BA00
    lh      t7, 0x63DA(s0)             # 000063DA
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lh      t9, 0x0B04(t8)             # 00010B04
    addu    t6, t7, t9
    sh      t6, 0x63DB($at)            # 000104B2
    lw      t8, 0x0000(s7)             # 8011BA00
    lh      t7, 0x0B00(t8)             # 00010B00
    sh      t7, 0x63D9($at)            # 000104B0
    lbu     v0, 0x63E6(s0)             # 000063E6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_800D7D4C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t9, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t9, 0x0020             # t6 = 0000011F
    sh      t6, 0x63D9($at)            # 000104B0
    lbu     v0, 0x63E6(s0)             # 000063E6
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_800D7D4C:
    bne     v0, $at, lbl_800D7D64
    nop
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0x0020             # t7 = 00010020
    sh      t7, 0x63D9($at)            # 000104B0
lbl_800D7D64:
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
lbl_800D7D6C:
    andi    a2, v0, 0xFFFF             # a2 = 00000001
    sll     t9, a2,  1
    addu    t6, s1, t9
    addu    t8, t6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    lhu     a1, 0x6306(t8)             # 00016306
    andi    s3, v0, 0xFFFF             # s3 = 00000001
    jal     func_800D6BA8
    or      a0, s1, $zero              # a0 = 000020D8
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
    lh      t7, 0x63D8(s0)             # 000063D8
lbl_800D7DB4:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    addiu   t9, t7, 0x0006             # t9 = 00000006
    sh      t9, 0x63D9($at)            # 000104B0
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000104AA
    lbu     t6, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     t8, 0x8011                 # t8 = 80110000
    bnel    t6, $at, lbl_800D7E60
    lw      t7, 0x0124($sp)
    lbu     t8, -0x56D0(t8)            # 8010A930
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    bne     t8, $zero, lbl_800D7E48
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lw      t6, 0x0138($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a3, t7, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t8, t6, 0x2200             # t8 = 00002200
    sw      t8, 0x0058($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t9, 0x0014($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t7, $zero, 0x0034          # t7 = 00000034
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_800D7E60
    lw      t7, 0x0124($sp)
lbl_800D7E48:
    sb      t9, 0x6305($at)            # 00006305
    sh      $zero, 0x63D7($at)         # 000063D7
    lhu     t6, 0x63CE(s0)             # 000063CE
    addiu   t8, t6, 0x0001             # t8 = 00000001
    sh      t8, 0x63CF($at)            # 000063CF
    lw      t7, 0x0124($sp)
lbl_800D7E60:
    lw      t9, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t7, 0x0000(t9)             # 00000000
lbl_800D7E6C:
    addiu   v0, s3, 0x0001             # v0 = 00000002
    andi    a2, v0, 0xFFFF             # a2 = 00000002
    sll     t8, a2,  1
    addu    t7, s1, t8
    addu    t9, t7, s5
    lhu     t8, 0x6306(t9)             # 00006306
    lh      t6, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    andi    s3, v0, 0xFFFF             # s3 = 00000002
    addu    t7, t6, t8
    sh      t7, 0x63D9($at)            # 000104B0
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000063D3
    addiu   t9, $zero, 0x0030          # t9 = 00000030
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x63E5($at)            # 000104BC
    lbu     t6, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, $zero, $zero           # a0 = 00000000
    bne     t6, $at, lbl_800D7F08
    lui     a1, 0x8010                 # a1 = 80100000
    lw      t9, 0x0138($sp)
    lui     t8, 0x8010                 # t8 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a3, t8, 0x43A0             # a3 = 801043A0
    addiu   t6, t9, 0x2200             # t6 = 00002230
    sw      t6, 0x0058($sp)
    sw      a3, 0x0010($sp)
    sw      t7, 0x0014($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t8, $zero, 0x0035          # t8 = 00000035
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800D7F08:
    lw      t7, 0x0124($sp)
    lw      t9, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t7, 0x0000(t9)             # 00000000
    lhu     t6, 0x63D2(s0)             # 000063D2
    addiu   t8, s3, 0x0001             # t8 = 00000003
    bnel    t6, t8, lbl_800D7FB8
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    lbu     v0, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    andi    v1, s3, 0xFFFF             # v1 = 00000002
    beq     v0, $at, lbl_800D7F4C
    slti    $at, v0, 0x0009
    bne     $at, $zero, lbl_800D7FB4
    slti    $at, v0, 0x0021
    beql    $at, $zero, lbl_800D7FB8
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
lbl_800D7F4C:
    sll     t7, v1,  1
    addu    t9, s1, t7
    addu    t6, t9, s5
    lhu     v0, 0x6306(t6)             # 00006306
    beql    s8, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    s6, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    t1, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    t2, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    t3, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    t4, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    beql    t5, v0, lbl_800D7FA4
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D6
    addiu   v1, v1, 0x0001             # v1 = 0000A0D8
    b       lbl_800D7F4C
    andi    v1, v1, 0xFFFF             # v1 = 0000A0D8
    addiu   t8, v1, 0xFFFF             # t8 = 0000A0D7
lbl_800D7FA4:
    addiu   t7, t8, 0x0001             # t7 = 0000A0D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    andi    s3, t8, 0xFFFF             # s3 = 0000A0D7
    sh      t7, 0x63D3($at)            # 000104AA
lbl_800D7FB4:
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
lbl_800D7FB8:
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000104AA
    lhu     t9, 0x63D2(s0)             # 000063D2
    addiu   t6, s3, 0x0001             # t6 = 0000A0D8
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    bne     t9, t6, lbl_800D800C
    nop
    lbu     t8, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    bne     t8, $at, lbl_800D7FFC
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
    lw      a0, 0x0138($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
lbl_800D7FFC:
    lw      t9, 0x0124($sp)
    lw      t6, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t9, 0x0000(t6)             # 00000000
lbl_800D800C:
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000063D3
    lbu     t8, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   a2, s3, 0x0001             # a2 = 0000A0D8
    bne     t8, $at, lbl_800D8048
    andi    a2, a2, 0xFFFF             # a2 = 0000A0D8
    sll     t7, a2,  1
    addu    t9, s1, t7
    addu    t6, t9, s5
    lhu     t8, 0x6306(t6)             # 00006306
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sb      t7, 0x6305($at)            # 000103DC
    sb      t8, 0x63E8($at)            # 000104BF
lbl_800D8048:
    lw      t9, 0x0124($sp)
    lw      t6, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t9, 0x0000(t6)             # 00000000
lbl_800D8058:
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000063D3
    lbu     t8, 0x6304(s0)             # 00006304
lbl_800D8064:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t8, $at, lbl_800D80D8
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56BC(t7)            # 8010A944
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t7, $zero, lbl_800D80D8
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    sll     t6, s3,  1
    sh      t9, -0x56BC($at)           # 8010A944
    addu    t8, s1, t6
    addu    t7, t8, s5
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lhu     a0, 0x6308(t7)             # 80116308
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
lbl_800D80D8:
    addiu   s3, s3, 0x0001             # s3 = 0000A0D8
    andi    s3, s3, 0xFFFF             # s3 = 0000A0D8
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
    sll     t6, s3,  1
    addu    t8, s1, t6
    addu    t7, t8, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    lhu     a1, 0x6308(t7)             # 00006308
    lw      a0, 0x0138($sp)
    addiu   a2, $sp, 0x0124            # a2 = FFFFFFEC
    jal     func_800D75A4
    andi    a3, s3, 0xFFFF             # a3 = 0000A0D8
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
    andi    s3, v0, 0xFFFF             # s3 = 00000000
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
lbl_800D8130:
    lbu     t9, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t9, $at, lbl_800D8184
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t6, 0x0014($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
lbl_800D8184:
    lw      t8, 0x0124($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t7, t8, 0x0008             # t7 = 00000008
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t8)          # 00000004
    sw      t9, 0x0000(t8)             # 00000000
    lw      t6, 0x0124($sp)
    lui     t7, 0xFC11                 # t7 = FC110000
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    addiu   t8, t6, 0x0008             # t8 = 00000008
    sw      t8, 0x0124($sp)
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    ori     t7, t7, 0x9623             # t7 = FC119623
    sw      t7, 0x0000(t6)             # 00000000
    sw      t9, 0x0004(t6)             # 00000004
    lw      a1, 0x0124($sp)
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x0124($sp)
    sw      t7, 0x0000(a1)             # 00000000
    lbu     t9, 0x63F9(s0)             # 000063F9
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x2E70             # t8 = 80112E70
    sll     t6, t9,  2
    subu    t6, t6, t9
    sll     t6, t6,  1
    addu    v0, t6, t8
    lh      t7, 0x0004(v0)             # 00000004
    andi    t9, t7, 0x00FF             # t9 = 00000000
    lh      t7, 0x0000(v0)             # 00000000
    sll     t6, t9,  8
    sll     t9, t7, 24
    lh      t7, 0x0002(v0)             # 00000002
    or      t8, t6, t9                 # t8 = 00000000
    andi    t6, t7, 0x00FF             # t6 = 00000000
    sll     t9, t6, 16
    lh      t6, 0x63E2(s0)             # 000063E2
    or      t7, t8, t9                 # t7 = 00000000
    andi    t8, t6, 0x00FF             # t8 = 00000000
    or      t9, t7, t8                 # t9 = 00000000
    sw      t9, 0x0004(a1)             # 00000004
    lw      a2, 0x0124($sp)
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x0124($sp)
    lui     t8, 0xFD90                 # t8 = FD900000
    sw      t8, 0x0000(a2)             # 00000000
    lw      t9, 0x62B0(s0)             # 000062B0
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   t6, t9, 0x1000             # t6 = 00001000
    sw      t6, 0x0004(a2)             # 00000004
    lw      t7, 0x0124($sp)
    lui     t9, 0xF590                 # t9 = F5900000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0124($sp)
    sw      t6, 0x0004(t7)             # 0000000C
    sw      t9, 0x0000(t7)             # 00000008
    lw      t7, 0x0124($sp)
    lui     t9, 0xE600                 # t9 = E6000000
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0124($sp)
    sw      $zero, 0x0004(t7)          # 0000000C
    sw      t9, 0x0000(t7)             # 00000008
    lw      t6, 0x0124($sp)
    lui     t9, 0x0747                 # t9 = 07470000
    ori     t9, t9, 0xF156             # t9 = 0747F156
    addiu   t7, t6, 0x0008             # t7 = 07000008
    sw      t7, 0x0124($sp)
    lui     t8, 0xF300                 # t8 = F3000000
    sw      t8, 0x0000(t6)             # 07000000
    sw      t9, 0x0004(t6)             # 07000004
    lw      t6, 0x0124($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   a2, a2, 0x2E88             # a2 = 80112E88
    addiu   t7, t6, 0x0008             # t7 = 07000008
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t6)          # 07000004
    sw      t8, 0x0000(t6)             # 07000000
    lw      t9, 0x0124($sp)
    lui     t7, 0xF580                 # t7 = F5800000
    ori     t7, t7, 0x0C00             # t7 = F5800C00
    addiu   t6, t9, 0x0008             # t6 = 0747F15E
    sw      t6, 0x0124($sp)
    sw      $zero, 0x0004(t9)          # 0747F15A
    sw      t7, 0x0000(t9)             # 0747F156
    lw      t8, 0x0124($sp)
    lui     t7, 0x0017                 # t7 = 00170000
    ori     t7, t7, 0xC0BC             # t7 = 0017C0BC
    addiu   t9, t8, 0x0008             # t9 = E7000008
    sw      t9, 0x0124($sp)
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t8)             # E7000000
    sw      t7, 0x0004(t8)             # E7000004
    lw      v1, 0x0124($sp)
    lui     $at, 0xE400                # $at = E4000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0124($sp)
    lbu     t6, 0x63FA(s0)             # 000063FA
    sll     t7, t6,  1
    lw      t6, 0x0000(s7)             # 8011BA00
    addu    t8, a2, t7
    lh      t9, 0x0000(t8)             # E7000000
    lh      t7, 0x0B0E(t6)             # F2000B0E
    addu    t8, t9, t7
    addiu   t6, t8, 0x0030             # t6 = E7000030
    sll     t9, t6,  2
    lh      t6, 0x63D8(s0)             # 000063D8
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    or      t8, t7, $at                # t8 = E4000008
    addiu   t9, t6, 0x0061             # t9 = E7000091
    sll     t7, t9,  2
    andi    t6, t7, 0x0FFF             # t6 = 00000008
    sll     t9, t6, 12
    or      t7, t8, t9                 # t7 = E7000099
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t6, 0x63FA(s0)             # 000063FA
    sll     t8, t6,  1
    lw      t6, 0x0000(s7)             # 8011BA00
    addu    t9, a2, t8
    lh      t7, 0x0000(t9)             # E7000091
    lh      t8, 0x0B0E(t6)             # 00000B16
    addu    t9, t7, t8
    lh      t8, 0x63D8(s0)             # 000063D8
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    addiu   t9, t8, 0x0001             # t9 = E4000009
    sll     t6, t9,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    sll     t9, t8, 12
    or      t6, t7, t9                 # t6 = E4000009
    sw      t6, 0x0004(v1)             # 00000004
    lw      t8, 0x0124($sp)
    addiu   t7, t8, 0x0008             # t7 = 00000010
    sw      t7, 0x0124($sp)
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(t8)             # 00000008
    sw      $zero, 0x0004(t8)          # 0000000C
    lw      t6, 0x0124($sp)
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t8, t6, 0x0008             # t8 = E4000011
    sw      t8, 0x0124($sp)
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(t6)             # E4000009
    sw      t9, 0x0004(t6)             # E400000D
    lw      v0, 0x0124($sp)
    lui     t7, 0xFD90                 # t7 = FD900000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0124($sp)
    sw      t7, 0x0000(v0)             # 00000000
    lw      t9, 0x62B0(s0)             # 000062B0
    addiu   t6, t9, 0x1900             # t6 = 04001D00
    sw      t6, 0x0004(v0)             # 00000004
    lw      t8, 0x0124($sp)
    lui     t9, 0xF590                 # t9 = F5900000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t7, t8, 0x0008             # t7 = 00000010
    sw      t7, 0x0124($sp)
    sw      t6, 0x0004(t8)             # 0000000C
    sw      t9, 0x0000(t8)             # 00000008
    lw      t8, 0x0124($sp)
    lui     t9, 0xE600                 # t9 = E6000000
    addiu   t7, t8, 0x0008             # t7 = 00000010
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      t9, 0x0000(t8)             # 00000008
    lw      t6, 0x0124($sp)
    lui     t9, 0x0747                 # t9 = 07470000
    ori     t9, t9, 0xF156             # t9 = 0747F156
    addiu   t8, t6, 0x0008             # t8 = 07000008
    sw      t8, 0x0124($sp)
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(t6)             # 07000000
    sw      t9, 0x0004(t6)             # 07000004
    lw      t6, 0x0124($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   a1, a1, 0x2E88             # a1 = 80112E88
    addiu   t8, t6, 0x0008             # t8 = 07000008
    sw      t8, 0x0124($sp)
    sw      $zero, 0x0004(t6)          # 07000004
    sw      t7, 0x0000(t6)             # 07000000
    lw      t9, 0x0124($sp)
    lui     t8, 0xF580                 # t8 = F5800000
    ori     t8, t8, 0x0C00             # t8 = F5800C00
    addiu   t6, t9, 0x0008             # t6 = 0747F15E
    sw      t6, 0x0124($sp)
    sw      $zero, 0x0004(t9)          # 0747F15A
    sw      t8, 0x0000(t9)             # 0747F156
    lw      t7, 0x0124($sp)
    lui     t8, 0x0017                 # t8 = 00170000
    ori     t8, t8, 0xC0BC             # t8 = 0017C0BC
    addiu   t9, t7, 0x0008             # t9 = E7000008
    sw      t9, 0x0124($sp)
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t7)             # E7000000
    sw      t8, 0x0004(t7)             # E7000004
    lw      a0, 0x0124($sp)
    lui     $at, 0xE400                # $at = E4000000
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x0124($sp)
    lbu     t6, 0x63FA(s0)             # 000063FA
    sll     t8, t6,  1
    lw      t6, 0x0000(s7)             # 8011BA00
    addu    t7, a1, t8
    lh      t9, 0x0000(t7)             # E7000000
    lh      t8, 0x0B0E(t6)             # F2000B0E
    addu    t7, t9, t8
    addiu   t6, t7, 0x0030             # t6 = E7000030
    sll     t9, t6,  2
    lh      t6, 0x63D8(s0)             # 000063D8
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    or      t7, t8, $at                # t7 = E4000008
    addiu   t9, t6, 0x00C2             # t9 = E70000F2
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000008
    sll     t9, t6, 12
    or      t8, t7, t9                 # t8 = E70000FA
    sw      t8, 0x0000(a0)             # 00000000
    lbu     t6, 0x63FA(s0)             # 000063FA
    sll     t7, t6,  1
    lw      t6, 0x0000(s7)             # 8011BA00
    addu    t9, a1, t7
    lh      t8, 0x0000(t9)             # E70000F2
    lh      t7, 0x0B0E(t6)             # 00000B16
    addu    t9, t8, t7
    lh      t7, 0x63D8(s0)             # 000063D8
    sll     t6, t9,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    addiu   t9, t7, 0x0061             # t9 = E4000069
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t6, t8, t9                 # t6 = E4000069
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0124($sp)
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0124($sp)
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(t7)             # 00000008
    sw      $zero, 0x0004(t7)          # 0000000C
    lw      t6, 0x0124($sp)
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t7, t6, 0x0008             # t7 = E4000071
    sw      t7, 0x0124($sp)
    lui     t8, 0xF100                 # t8 = F1000000
    sw      t8, 0x0000(t6)             # E4000069
    sw      t9, 0x0004(t6)             # E400006D
    lw      t6, 0x0124($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, t6, 0x0008             # t7 = E4000071
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t6)          # E400006D
    sw      t8, 0x0000(t6)             # E4000069
    lw      a1, 0x0124($sp)
    addiu   t6, a1, 0x0008             # t6 = 80112E90
    sw      t6, 0x0124($sp)
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(a1)             # 80112E88
    lbu     t8, 0x63F8(s0)             # 000063F8
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x2E40             # t6 = 80112E40
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    v0, t9, t6
    lh      t7, 0x0004(v0)             # 00000004
    andi    t8, t7, 0x00FF             # t8 = 00000000
    lh      t7, 0x0000(v0)             # 00000000
    sll     t9, t8,  8
    sll     t8, t7, 24
    lh      t7, 0x0002(v0)             # 00000002
    or      t6, t9, t8                 # t6 = 04000400
    andi    t9, t7, 0x00FF             # t9 = 00000000
    sll     t8, t9, 16
    lh      t9, 0x63E2(s0)             # 000063E2
    or      t7, t6, t8                 # t7 = 04000400
    andi    t6, t9, 0x00FF             # t6 = 00000000
    or      t8, t7, t6                 # t8 = 04000400
    sw      t8, 0x0004(a1)             # 80112E8C
    lw      a2, 0x0124($sp)
    addiu   t7, a2, 0x0008             # t7 = 80112E90
    sw      t7, 0x0124($sp)
    lui     t6, 0xFD90                 # t6 = FD900000
    sw      t6, 0x0000(a2)             # 80112E88
    lw      t8, 0x62B0(s0)             # 000062B0
    addiu   t9, t8, 0x1000             # t9 = 04001400
    sw      t9, 0x0004(a2)             # 80112E8C
    lw      t7, 0x0124($sp)
    lui     t8, 0xF590                 # t8 = F5900000
    lui     t9, 0x0700                 # t9 = 07000000
    addiu   t6, t7, 0x0008             # t6 = 80112E98
    sw      t6, 0x0124($sp)
    sw      t9, 0x0004(t7)             # 80112E94
    sw      t8, 0x0000(t7)             # 80112E90
    lw      t7, 0x0124($sp)
    lui     t8, 0xE600                 # t8 = E6000000
    addiu   t6, t7, 0x0008             # t6 = 80112E98
    sw      t6, 0x0124($sp)
    sw      $zero, 0x0004(t7)          # 80112E94
    sw      t8, 0x0000(t7)             # 80112E90
    lw      t9, 0x0124($sp)
    lui     t8, 0x0747                 # t8 = 07470000
    ori     t8, t8, 0xF156             # t8 = 0747F156
    addiu   t7, t9, 0x0008             # t7 = 07000008
    sw      t7, 0x0124($sp)
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(t9)             # 07000000
    sw      t8, 0x0004(t9)             # 07000004
    lw      t9, 0x0124($sp)
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t7, t9, 0x0008             # t7 = 07000008
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t9)          # 07000004
    sw      t6, 0x0000(t9)             # 07000000
    lw      t8, 0x0124($sp)
    lui     t7, 0xF580                 # t7 = F5800000
    ori     t7, t7, 0x0C00             # t7 = F5800C00
    addiu   t9, t8, 0x0008             # t9 = 0747F15E
    sw      t9, 0x0124($sp)
    sw      $zero, 0x0004(t8)          # 0747F15A
    sw      t7, 0x0000(t8)             # 0747F156
    lw      t6, 0x0124($sp)
    lui     t7, 0x0017                 # t7 = 00170000
    ori     t7, t7, 0xC0BC             # t7 = 0017C0BC
    addiu   t8, t6, 0x0008             # t8 = E7000008
    sw      t8, 0x0124($sp)
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(t6)             # E7000000
    sw      t7, 0x0004(t6)             # E7000004
    lw      v1, 0x0124($sp)
    lw      t9, 0x0000(s7)             # 8011BA00
    lui     $at, 0xE400                # $at = E4000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x0124($sp)
    lh      t7, 0x0B0E(t9)             # F2000B0E
    addiu   t6, t7, 0x0030             # t6 = 0017C0EC
    sll     t8, t6,  2
    lh      t6, 0x63D8(s0)             # 000063D8
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    or      t7, t9, $at                # t7 = E4000008
    addiu   t8, t6, 0x0060             # t8 = 0017C14C
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    sll     t8, t6, 12
    or      t9, t7, t8                 # t9 = E417C14C
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x0000(s7)             # 8011BA00
    lh      t7, 0x0B0E(t6)             # 00000B16
    lh      t6, 0x63D8(s0)             # 000063D8
    sll     t8, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 0000014C
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t7, t9, t6                 # t7 = 0000014C
    sw      t7, 0x0004(v1)             # 00000004
    lw      t8, 0x0124($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0124($sp)
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(t8)             # 00000008
    sw      $zero, 0x0004(t8)          # 0000000C
    lw      t7, 0x0124($sp)
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t8, t7, 0x0008             # t8 = 00000154
    sw      t8, 0x0124($sp)
    lui     t9, 0xF100                 # t9 = F1000000
    sw      t9, 0x0000(t7)             # 0000014C
    sw      t6, 0x0004(t7)             # 00000150
    lw      v0, 0x0124($sp)
    lui     t9, 0xFD90                 # t9 = FD900000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0124($sp)
    sw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x62B0(s0)             # 000062B0
    addiu   t7, t6, 0x1900             # t7 = 04001D00
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0124($sp)
    lui     t6, 0xF590                 # t6 = F5900000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0124($sp)
    sw      t7, 0x0004(t8)             # 0000000C
    sw      t6, 0x0000(t8)             # 00000008
    lw      t8, 0x0124($sp)
    lui     t6, 0xE600                 # t6 = E6000000
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0124($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      t6, 0x0000(t8)             # 00000008
    lw      t7, 0x0124($sp)
    lui     t6, 0x0747                 # t6 = 07470000
    ori     t6, t6, 0xF156             # t6 = 0747F156
    addiu   t8, t7, 0x0008             # t8 = 07000008
    sw      t8, 0x0124($sp)
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t7)             # 07000000
    sw      t6, 0x0004(t7)             # 07000004
    lw      t7, 0x0124($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, t7, 0x0008             # t8 = 07000008
    sw      t8, 0x0124($sp)
    sw      $zero, 0x0004(t7)          # 07000004
    sw      t9, 0x0000(t7)             # 07000000
    lw      t6, 0x0124($sp)
    lui     t8, 0xF580                 # t8 = F5800000
    ori     t8, t8, 0x0C00             # t8 = F5800C00
    addiu   t7, t6, 0x0008             # t7 = 0747F15E
    sw      t7, 0x0124($sp)
    sw      $zero, 0x0004(t6)          # 0747F15A
    sw      t8, 0x0000(t6)             # 0747F156
    lw      t9, 0x0124($sp)
    lui     t8, 0x0017                 # t8 = 00170000
    ori     t8, t8, 0xC0BC             # t8 = 0017C0BC
    addiu   t6, t9, 0x0008             # t6 = E7000008
    sw      t6, 0x0124($sp)
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(t9)             # E7000000
    sw      t8, 0x0004(t9)             # E7000004
    lw      a0, 0x0124($sp)
    lw      t7, 0x0000(s7)             # 8011BA00
    lui     $at, 0xE400                # $at = E4000000
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x0124($sp)
    lh      t8, 0x0B0E(t7)             # F2000B0E
    addiu   t9, t8, 0x0030             # t9 = 0017C0EC
    sll     t6, t9,  2
    lh      t9, 0x63D8(s0)             # 000063D8
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    or      t8, t7, $at                # t8 = E4000008
    addiu   t6, t9, 0x00C0             # t6 = 0017C1AC
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E417C1AC
    sw      t7, 0x0000(a0)             # 00000000
    lw      t9, 0x0000(s7)             # 8011BA00
    lh      t8, 0x0B0E(t9)             # 00000B16
    lh      t9, 0x63D8(s0)             # 000063D8
    sll     t6, t8,  2
    andi    t7, t6, 0x0FFF             # t7 = 000001AC
    addiu   t8, t9, 0x0060             # t8 = 00000068
    sll     t6, t8,  2
    andi    t9, t6, 0x0FFF             # t9 = 000001AC
    sll     t8, t9, 12
    or      t6, t7, t8                 # t6 = 000001EC
    sw      t6, 0x0004(a0)             # 00000004
    lw      t9, 0x0124($sp)
    addiu   t7, t9, 0x0008             # t7 = 000001B4
    sw      t7, 0x0124($sp)
    lui     t8, 0xE100                 # t8 = E1000000
    sw      t8, 0x0000(t9)             # 000001AC
    sw      $zero, 0x0004(t9)          # 000001B0
    lw      t6, 0x0124($sp)
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    addiu   t9, t6, 0x0008             # t9 = 000001F4
    sw      t9, 0x0124($sp)
    lui     t7, 0xF100                 # t7 = F1000000
    sw      t7, 0x0000(t6)             # 000001EC
    sw      t8, 0x0004(t6)             # 000001F0
    lw      t6, 0x0124($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t9, t6, 0x0008             # t9 = 000001F4
    sw      t9, 0x0124($sp)
    sw      $zero, 0x0004(t6)          # 000001F0
    sw      t7, 0x0000(t6)             # 000001EC
    lw      t8, 0x0124($sp)
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     t7, 0xFF2D                 # t7 = FF2D0000
    addiu   t6, t8, 0x0008             # t6 = 04000408
    sw      t6, 0x0124($sp)
    ori     t7, t7, 0xFEFF             # t7 = FF2DFEFF
    ori     t9, t9, 0x97FF             # t9 = FCFF97FF
    sw      t9, 0x0000(t8)             # 04000400
    sw      t7, 0x0004(t8)             # 04000404
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t8, 0x0020             # t6 = 04000420
    sh      t6, 0x63D9($at)            # 000104B0
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
lbl_800D8918:
    addiu   v0, s3, 0x0001             # v0 = 00000001
    andi    a2, v0, 0xFFFF             # a2 = 00000001
    sll     t9, a2,  1
    addu    t7, s1, t9
    addu    t8, t7, s5
    lhu     t6, 0x6306(t8)             # 04006706
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    andi    s3, v0, 0xFFFF             # s3 = 00000001
    sh      t6, 0x63EB($at)            # 000104C2
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000063D3
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t9, 0x63D7($at)            # 000104AE
    addiu   v1, s4, 0x7FFF             # v1 = 0000A0D7
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000104AA
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x63E5($at)            # 000104BC
    lbu     t8, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t8, $at, lbl_800D89B8
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    lhu     t6, 0x62F8(s0)             # 000062F8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x63E8($at)            # 000104BF
    sb      $zero, 0x63E6($at)         # 000104BD
    sh      t6, 0x62FB($at)            # 000103D2
    lw      a0, 0x0138($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
lbl_800D89B8:
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x63E5($at)            # 000104BC
    lbu     t8, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     t8, $at, lbl_800D8A1C
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    lhu     t6, 0x62F8(s0)             # 000062F8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x63E8($at)            # 000104BF
    sb      $zero, 0x63E6($at)         # 000104BD
    sh      t6, 0x62FB($at)            # 000103D2
    lw      a0, 0x0138($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
lbl_800D8A1C:
    b       lbl_800D8E78
    lhu     v1, 0x63D2(s2)             # 000063D2
    lbu     t7, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t8, $zero, 0x0035          # t8 = 00000035
    bne     t7, $at, lbl_800D8AA4
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    lbu     t6, 0x63E4(s0)             # 000063E4
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    bne     t6, $zero, lbl_800D8AA4
    addiu   a0, $zero, 0x482E          # a0 = 0000482E
    lw      t8, 0x0138($sp)
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a3, t9, 0x43A0             # a3 = 801043A0
    addiu   t6, t8, 0x2200             # t6 = 00002235
    sw      t6, 0x0058($sp)
    sw      a3, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t9, 0x0138($sp)
    lbu     t7, 0x1D6C(t9)             # 00001D6C
    or      a0, t9, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_800D8AA8
    lw      t8, 0x0124($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
lbl_800D8AA4:
    lw      t8, 0x0124($sp)
lbl_800D8AA8:
    lw      t6, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t8, 0x0000(t6)             # 00000000
lbl_800D8AB4:
    lhu     t7, 0x63D2(s0)             # 000063D2
    addiu   t9, s3, 0x0001             # t9 = 00000002
    bne     t7, t9, lbl_800D8ADC
    nop
    jal     func_800D78F0
    lw      a0, 0x0138($sp)
    lw      t8, 0x0124($sp)
    lw      t6, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t8, 0x0000(t6)             # 00000000
lbl_800D8ADC:
    b       lbl_800D8E78
    lhu     v1, 0x63D3(v1)             # 000063D3
    lbu     t7, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t9, $zero, 0x0035          # t9 = 00000035
    bne     t7, $at, lbl_800D8B4C
    addiu   t8, $zero, 0x0060          # t8 = 00000060
    addiu   a2, s3, 0x0001             # a2 = 00000002
    andi    a2, a2, 0xFFFF             # a2 = 00000002
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sll     t6, a2,  1
    sb      t9, 0x6305($at)            # 000103DC
    addu    t7, s1, t6
    sb      t8, 0x63E5($at)            # 000104BC
    addu    t9, t7, s5
    lhu     t8, 0x6306(t9)             # 0000633B
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sb      t8, 0x63E8($at)            # 000104BF
    lw      a0, 0x0138($sp)
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    lw      t6, 0x0138($sp)
    lbu     t7, 0x1D6C(t6)             # 00001D6C
    or      a0, t6, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_800D8B50
    lw      t9, 0x0124($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
lbl_800D8B4C:
    lw      t9, 0x0124($sp)
lbl_800D8B50:
    lw      t8, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t9, 0x0000(t8)             # 00000000
lbl_800D8B5C:
    lbu     t7, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     a3, 0x8010                 # a3 = 80100000
    bne     t7, $at, lbl_800D8BA8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x0035          # t9 = 00000035
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    sb      t9, 0x6305($at)            # 000103DC
    sb      t8, 0x63E5($at)            # 000104BC
lbl_800D8BA8:
    lw      t7, 0x0124($sp)
    lw      t6, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t7, 0x0000(t6)             # 00000000
    lbu     t9, 0x6304(s0)             # 00006304
    addiu   $at, $zero, 0x0006         # $at = 00000006
    addiu   t8, $zero, 0x0035          # t8 = 00000035
    bne     t9, $at, lbl_800D8C14
    addiu   t7, $zero, 0x0050          # t7 = 00000050
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    sb      t7, 0x63E5($at)            # 000104BC
    lw      a0, 0x0138($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a3, t6, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x482E          # a0 = 0000482E
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_800D8C14:
    lw      t8, 0x0124($sp)
    lw      t7, 0x013C($sp)
    b       lbl_800D8EC4
    sw      t8, 0x0000(t7)             # 00000000
lbl_800D8C24:
    lw      t6, 0x0138($sp)
lbl_800D8C28:
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s4, $at
    ori     $at, $zero, 0x8145         # $at = 00008145
    addiu   t9, t6, 0x2200             # t9 = 00002200
    beq     t0, $at, lbl_800D8C94
    sw      t9, 0x0058($sp)
    ori     $at, $zero, 0x8148         # $at = 00008148
    beq     t0, $at, lbl_800D8CAC
    ori     $at, $zero, 0x8149         # $at = 00008149
    beq     t0, $at, lbl_800D8CAC
    ori     $at, $zero, 0x814F         # $at = 0000814F
    beq     t0, $at, lbl_800D8CAC
    ori     $at, $zero, 0x8169         # $at = 00008169
    beq     t0, $at, lbl_800D8C7C
    ori     $at, $zero, 0x8175         # $at = 00008175
    beq     t0, $at, lbl_800D8C7C
    ori     $at, $zero, 0x8250         # $at = 00008250
    beql    t0, $at, lbl_800D8CB0
    lh      t8, 0x63D8(s0)             # 000063D8
    b       lbl_800D8CC0
    lbu     v0, 0x6304(s0)             # 00006304
lbl_800D8C7C:
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0xFFFA             # t7 = FFFFFFFA
    sh      t7, 0x63D9($at)            # 000104B0
    b       lbl_800D8CC0
    lbu     v0, 0x6304(s0)             # 00006304
lbl_800D8C94:
    lh      t6, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, t6, 0xFFFD             # t9 = FFFFFFFD
    sh      t9, 0x63D9($at)            # 000104B0
    b       lbl_800D8CC0
    lbu     v0, 0x6304(s0)             # 00006304
lbl_800D8CAC:
    lh      t8, 0x63D8(s0)             # 000063D8
lbl_800D8CB0:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0xFFFE             # t7 = FFFFFFFE
    sh      t7, 0x63D9($at)            # 000104B0
    lbu     v0, 0x6304(s0)             # 00006304
lbl_800D8CC0:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_800D8D20
    lw      t9, 0x0058($sp)
    lhu     t6, 0x63D2(s0)             # 000063D2
    addiu   t9, s3, 0x0001             # t9 = 00000002
    bnel    t6, t9, lbl_800D8D20
    lw      t9, 0x0058($sp)
    lhu     t8, 0x63EA(s0)             # 000063EA
    lhu     t7, 0x63E8(s0)             # 000063E8
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t8, t7, lbl_800D8D1C
    or      a0, $zero, $zero           # a0 = 00000000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    sw      t0, 0x0050($sp)
    lw      t0, 0x0050($sp)
lbl_800D8D1C:
    lw      t9, 0x0058($sp)
lbl_800D8D20:
    lhu     t8, 0x0128($sp)
    lw      a0, 0x0138($sp)
    addiu   a2, $sp, 0x0124            # a2 = FFFFFFEC
    addu    a1, t9, t8
    addiu   a1, a1, 0x0008             # a1 = 00000008
    jal     func_800D6470
    sw      t0, 0x0050($sp)
    lw      t0, 0x0050($sp)
    lhu     t7, 0x0128($sp)
    ori     $at, $zero, 0x8195         # $at = 00008195
    slt     $at, t0, $at
    addiu   t6, t7, 0x0080             # t6 = 00000080
    ori     t1, $zero, 0x819F          # t1 = 0000819F
    ori     t2, $zero, 0x81A3          # t2 = 000081A3
    ori     t3, $zero, 0x81A4          # t3 = 000081A4
    ori     t4, $zero, 0x81A5          # t4 = 000081A5
    ori     t5, $zero, 0x8170          # t5 = 00008170
    bne     $at, $zero, lbl_800D8D80
    sh      t6, 0x0128($sp)
    ori     $at, $zero, 0x8196         # $at = 00008196
    beql    t0, $at, lbl_800D8E0C
    lh      t6, 0x63D8(s0)             # 000063D8
    b       lbl_800D8E34
    lw      t6, 0x0000(s7)             # 8011BA00
lbl_800D8D80:
    ori     $at, $zero, 0x8177         # $at = 00008177
    slt     $at, t0, $at
    bne     $at, $zero, lbl_800D8DA0
    ori     $at, $zero, 0x8194         # $at = 00008194
    beql    t0, $at, lbl_800D8E0C
    lh      t6, 0x63D8(s0)             # 000063D8
    b       lbl_800D8E34
    lw      t6, 0x0000(s7)             # 8011BA00
lbl_800D8DA0:
    lui     $at, 0xFFFF                # $at = FFFF0000
    ori     $at, $at, 0x7EBF           # $at = FFFF7EBF
    addu    t9, t0, $at
    sltiu   $at, t9, 0x0036
    beq     $at, $zero, lbl_800D8E30
    sll     t9, t9,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t9
    lw      t9, 0x3450($at)            # 80113450
    jr      t9
    nop
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0x0003             # t7 = 00000003
    b       lbl_800D8E74
    sh      t7, 0x63D9($at)            # 000104B0
    lh      t6, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, t6, 0x0005             # t9 = 00000085
    b       lbl_800D8E74
    sh      t9, 0x63D9($at)            # 000104B0
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0x0007             # t7 = 00000007
    b       lbl_800D8E74
    sh      t7, 0x63D9($at)            # 000104B0
    lh      t6, 0x63D8(s0)             # 000063D8
lbl_800D8E0C:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, t6, 0x0009             # t9 = 00000089
    b       lbl_800D8E74
    sh      t9, 0x63D9($at)            # 000104B0
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0x000A             # t7 = 0000000A
    b       lbl_800D8E74
    sh      t7, 0x63D9($at)            # 000104B0
lbl_800D8E30:
    lw      t6, 0x0000(s7)             # 8011BA00
lbl_800D8E34:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t9, 0x0B06(t6)             # 00000B86
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f16                  # $f16 = 16.00
    mtc1    t9, $f4                    # $f4 = 0.00
    lh      t6, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f18, $f16, $f10
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    addu    t9, t6, t7
    sh      t9, 0x63D9($at)            # 000104B0
lbl_800D8E74:
    lhu     v1, 0x63D2(s2)             # 000063D2
lbl_800D8E78:
    addiu   s3, s3, 0x0001             # s3 = 00000002
    andi    s3, s3, 0xFFFF             # s3 = 00000002
    slt     $at, s3, v1
    bnel    $at, $zero, lbl_800D7C04
    sll     t7, s3,  1
lbl_800D8E8C:
    lhu     v0, 0x63E8(s0)             # 000063E8
    addiu   t8, s3, 0x0001             # t8 = 00000003
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    bne     v0, $zero, lbl_800D8EB4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t8, 0x63D3($at)            # 000104AA
    lhu     t6, 0x63EA(s0)             # 000063EA
    b       lbl_800D8EB8
    sh      t6, 0x63E9($at)            # 000104C0
lbl_800D8EB4:
    sh      t7, 0x63E9($at)            # 000104C0
lbl_800D8EB8:
    lw      t9, 0x0124($sp)
    lw      t8, 0x013C($sp)
    sw      t9, 0x0000(t8)             # 00000003
lbl_800D8EC4:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0138           # $sp += 0x138


func_800D8EF4:
# Draw Textbox Text function (English)
    addiu   $sp, $sp, 0xFEC8           # $sp -= 0x138
    sw      s7, 0x003C($sp)
    lui     s7, 0x8012                 # s7 = 80120000
    addiu   s7, s7, 0xBA00             # s7 = 8011BA00
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x013C($sp)
    lw      t6, 0x013C($sp)
    lw      t8, 0x0000(s7)             # 8011BA00
    lui     $at, 0x0001                # $at = 00010000
    lw      t7, 0x0000(t6)             # 00000000
    addu    $at, $at, a0
    lui     t6, 0x8011                 # t6 = 80110000
    sw      t7, 0x0120($sp)
    lh      t9, 0x0B00(t8)             # 00000B00
    addiu   s1, a0, 0x20D8             # s1 = 000020D8
    ori     s5, $zero, 0x8000          # s5 = 00008000
    sh      t9, 0x04B0($at)            # 000104B0
    lh      t6, -0x56C8(t6)            # 8010A938
    or      s6, s1, $zero              # s6 = 000020D8
    addu    s0, s1, s5
    bne     t6, $zero, lbl_800D8F80
    addiu   s8, $zero, 0x0002          # s8 = 00000002
    lw      t7, 0x0000(s7)             # 8011BA00
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lh      t8, 0x0B02(t7)             # 00000B02
    b       lbl_800D8F90
    sh      t8, 0x63DB($at)            # 000104B2
lbl_800D8F80:
    lw      t9, 0x0000(s7)             # 8011BA00
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lh      t6, 0x0496(t9)             # 00000496
    sh      t6, 0x63DB($at)            # 000104B2
lbl_800D8F90:
    lbu     t7, 0x62FD(s0)             # 000062FD
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    bne     t7, $at, lbl_800D8FBC
    addiu   s4, $zero, 0x0006          # s4 = 00000006
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      $zero, 0x63E1($at)         # 000104B8
    lh      a2, 0x63E0(s0)             # 000063E0
    sh      a2, 0x63DF($at)            # 000104B6
    b       lbl_800D8FD0
    sh      a2, 0x63DD($at)            # 000104B4
lbl_800D8FBC:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t8, 0x63E1($at)            # 000104B8
    lh      a2, 0x63E0(s0)             # 000063E0
    sh      a2, 0x63DF($at)            # 000104B6
    sh      a2, 0x63DD($at)            # 000104B4
lbl_800D8FD0:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      $zero, 0x63D1($at)         # 000104A8
    sh      $zero, 0x0128($sp)
    lhu     t9, 0x63D2(s0)             # 000063D2
    or      s3, $zero, $zero           # s3 = 00000000
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
    blez    t9, lbl_800DA104
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    sw      a0, 0x0138($sp)
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addu    t6, s1, s3
lbl_800D9008:
    addu    t7, t6, s5
    lbu     v0, 0x6306(t7)             # 00006306
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sltiu   $at, t8, 0x0020
    beq     $at, $zero, lbl_800D9FE8
    sll     t8, t8,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t8
    lw      t8, 0x3528($at)            # 80113528
    jr      t8
    nop
    lw      t9, 0x0000(s7)             # 8011BA00
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lh      t6, 0x0B00(t9)             # 00000B00
    sh      t6, 0x63D9($at)            # 000104B0
    lbu     v0, 0x63E6(s0)             # 000063E6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800D9064
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v0, $at, lbl_800D9078
    nop
lbl_800D9064:
    lh      t7, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t8, t7, 0x0020             # t8 = 00000020
    sh      t8, 0x63D9($at)            # 000104B0
    lbu     v0, 0x63E6(s0)             # 000063E6
lbl_800D9078:
    bnel    s8, v0, lbl_800D90A8
    lw      t7, 0x0000(s7)             # 8011BA00
    lw      t6, 0x0000(s7)             # 8011BA00
    lh      t9, 0x63DA(s0)             # 000063DA
    lh      t7, 0x0B02(t6)             # 80110B02
    beql    t9, t7, lbl_800D90A8
    lw      t7, 0x0000(s7)             # 8011BA00
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t8, 0x0020             # t6 = 00000040
    sh      t6, 0x63D9($at)            # 000104B0
    lw      t7, 0x0000(s7)             # 8011BA00
lbl_800D90A8:
    lh      t9, 0x63DA(s0)             # 000063DA
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lh      t8, 0x0B04(t7)             # 00000B04
    addu    t6, t9, t8
    sh      t6, 0x63DB($at)            # 000104B2
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    addiu   v0, s3, 0x0001             # v0 = 00000001
    andi    a2, v0, 0xFFFF             # a2 = 00000001
    addu    t7, s1, a2
    addu    t9, t7, s5
    lbu     a1, 0x6306(t9)             # 00006306
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    andi    a1, a1, 0x000F             # a1 = 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    andi    s3, v0, 0xFFFF             # s3 = 00000001
    jal     func_800D6BA8
    or      a0, s1, $zero              # a0 = 000020D8
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    lh      t8, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    addiu   t6, t8, 0x0006             # t6 = 00000006
    sh      t6, 0x63D9($at)            # 000104B0
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000104AA
    lbu     t7, 0x6304(s0)             # 00006304
    lui     t9, 0x8011                 # t9 = 80110000
    bnel    s4, t7, lbl_800D91C0
    lw      t9, 0x0120($sp)
    lbu     t9, -0x56D0(t9)            # 8010A930
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    bne     t9, $zero, lbl_800D91A8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lw      t6, 0x0138($sp)
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t7, t6, 0x2200             # t7 = 00002206
    sw      t7, 0x0058($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t9, $zero, 0x0034          # t9 = 00000034
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x6305($at)            # 000103DC
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_800D91C0
    lw      t9, 0x0120($sp)
lbl_800D91A8:
    sb      t8, 0x6305($at)            # 00006305
    sh      $zero, 0x63D7($at)         # 000063D7
    lhu     t6, 0x63CE(s0)             # 000063CE
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x63CF($at)            # 000063CF
    lw      t9, 0x0120($sp)
lbl_800D91C0:
    lw      t8, 0x013C($sp)
    b       lbl_800DA13C
    sw      t9, 0x0000(t8)             # 00000000
    addiu   v0, s3, 0x0001             # v0 = 00000002
    andi    a2, v0, 0xFFFF             # a2 = 00000002
    addu    t7, s1, a2
    addu    t9, t7, s5
    lbu     t8, 0x6306(t9)             # 00006306
    lh      t6, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    addu    t7, t6, t8
    sh      t7, 0x63D9($at)            # 000104B0
    andi    s3, v0, 0xFFFF             # s3 = 00000002
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000104AA
    addiu   t9, $zero, 0x0030          # t9 = 00000030
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x63E5($at)            # 000104BC
    lbu     t6, 0x6304(s0)             # 00006304
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     s4, t6, lbl_800D9264
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t7, 0x0138($sp)
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t9, t7, 0x2200             # t9 = 00002201
    sw      t9, 0x0058($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    addiu   t6, $zero, 0x0035          # t6 = 00000035
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x6305($at)            # 000103DC
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800D9264:
    lw      t8, 0x0120($sp)
    lw      t7, 0x013C($sp)
    b       lbl_800DA13C
    sw      t8, 0x0000(t7)             # 00000000
    lhu     t9, 0x63D2(s0)             # 000063D2
    addiu   t6, s3, 0x0001             # t6 = 00000003
    bnel    t9, t6, lbl_800D9320
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    lbu     v0, 0x6304(s0)             # 00006304
    andi    a0, s3, 0xFFFF             # a0 = 00000002
    beq     s4, v0, lbl_800D92A4
    slti    $at, v0, 0x0009
    bne     $at, $zero, lbl_800D931C
    slti    $at, v0, 0x0021
    beql    $at, $zero, lbl_800D9320
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
lbl_800D92A4:
    addu    t8, s1, a0
    addu    t7, t8, s5
    lbu     v0, 0x6306(t7)             # 00006306
    bne     s4, v0, lbl_800D92C4
    nop
    addiu   a0, a0, 0x0002             # a0 = 00000004
    b       lbl_800D92A4
    andi    a0, a0, 0xFFFF             # a0 = 00000004
lbl_800D92C4:
    beql    t1, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    t2, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    t3, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    t4, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    t5, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    $ra, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    beql    s8, v0, lbl_800D930C
    addiu   t9, a0, 0xFFFF             # t9 = 00000003
    addiu   a0, a0, 0x0001             # a0 = 00000005
    b       lbl_800D92A4
    andi    a0, a0, 0xFFFF             # a0 = 00000005
    addiu   t9, a0, 0xFFFF             # t9 = 00000004
lbl_800D930C:
    addiu   t6, t9, 0x0001             # t6 = 00000005
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    andi    s3, t9, 0xFFFF             # s3 = 00000004
    sh      t6, 0x63D3($at)            # 000104AA
lbl_800D931C:
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
lbl_800D9320:
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000104AA
    lhu     t8, 0x63D2(s0)             # 000063D2
    addiu   t7, s3, 0x0001             # t7 = 00000005
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    bne     t8, t7, lbl_800D9374
    nop
    lbu     t9, 0x6304(s0)             # 00006304
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    bnel    s4, t9, lbl_800D9368
    lw      t8, 0x0120($sp)
    sb      t6, 0x6305($at)            # 000103DC
    lw      a0, 0x0138($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002205
    lw      t8, 0x0120($sp)
lbl_800D9368:
    lw      t7, 0x013C($sp)
    b       lbl_800DA13C
    sw      t8, 0x0000(t7)             # 00000000
lbl_800D9374:
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000063D3
    lbu     t9, 0x6304(s0)             # 00006304
    addiu   a2, s3, 0x0001             # a2 = 00000005
    andi    a2, a2, 0xFFFF             # a2 = 00000005
    bne     s4, t9, lbl_800D93A8
    addu    t6, s1, a2
    addu    t8, t6, s5
    lbu     t7, 0x6306(t8)             # 00006306
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sb      t9, 0x6305($at)            # 000103DC
    sb      t7, 0x63E8($at)            # 000104BF
lbl_800D93A8:
    lw      t6, 0x0120($sp)
    lw      t8, 0x013C($sp)
    b       lbl_800DA13C
    sw      t6, 0x0000(t8)             # 00000000
    lbu     t7, 0x6304(s0)             # 00006304
    addiu   t9, $zero, 0x0035          # t9 = 00000035
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    bne     s4, t7, lbl_800D9410
    addiu   t6, $zero, 0x0060          # t6 = 00000060
    addiu   v0, s3, 0x0001             # v0 = 00000005
    andi    a2, v0, 0xFFFF             # a2 = 00000005
    addu    t8, s1, a2
    sb      t9, 0x6305($at)            # 000103DC
    sb      t6, 0x63E5($at)            # 000104BC
    addu    t7, t8, s5
    lbu     t9, 0x6306(t7)             # 00006306
    addiu   a2, v0, 0x0001             # a2 = 00000006
    andi    a2, a2, 0xFFFF             # a2 = 00000006
    sll     t6, t9,  8
    sb      t6, 0x63E8($at)            # 000104BF
    addu    t7, s1, a2
    addu    t9, t7, s5
    lbu     t6, 0x6306(t9)             # 0000633B
    lbu     t8, 0x63E7(s0)             # 000063E7
    or      t7, t8, t6                 # t7 = 00000060
    sb      t7, 0x63E8($at)            # 000104BF
lbl_800D9410:
    lw      t9, 0x0120($sp)
    lw      t8, 0x013C($sp)
    b       lbl_800DA13C
    sw      t9, 0x0000(t8)             # 00000000
    lbu     t6, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    bne     s4, t6, lbl_800D94B0
    or      t0, s3, $zero              # t0 = 00000004
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56BC(t7)            # 8010A944
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t7, $zero, lbl_800D94B0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    addu    t8, s1, s3
    sh      t9, -0x56BC($at)           # 8010A944
    addu    v1, t8, s5
    lbu     v0, 0x6307(v1)             # 00006307
    lbu     t6, 0x6308(v1)             # 00006308
    lui     t7, 0x8010                 # t7 = 80100000
    sll     v0, v0,  8
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    or      a0, t6, v0                 # a0 = 00000065
    andi    a0, a0, 0xFFFF             # a0 = 00000065
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      s3, 0x0050($sp)
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t0, 0x0050($sp)
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
lbl_800D94B0:
    addiu   s3, t0, 0x0002             # s3 = 00000002
    andi    s3, s3, 0xFFFF             # s3 = 00000002
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    addu    t9, s1, s3
    addu    t8, t9, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    lbu     a1, 0x6307(t8)             # 00006307
    lw      a0, 0x0138($sp)
    addiu   a2, $sp, 0x0120            # a2 = FFFFFFE8
    jal     func_800D75A4
    andi    a3, s3, 0xFFFF             # a3 = 00000002
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
    andi    s3, v0, 0xFFFF             # s3 = 00000000
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    lbu     t6, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    bne     s4, t6, lbl_800D955C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t7, 0x0014($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
lbl_800D955C:
    lw      t9, 0x0120($sp)
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t8, t9, 0x0008             # t8 = 00000008
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t9)          # 00000004
    sw      t6, 0x0000(t9)             # 00000000
    lw      t7, 0x0120($sp)
    lui     t8, 0xFC11                 # t8 = FC110000
    lui     t6, 0xFF2F                 # t6 = FF2F0000
    addiu   t9, t7, 0x0008             # t9 = 00000008
    sw      t9, 0x0120($sp)
    ori     t6, t6, 0xFFFF             # t6 = FF2FFFFF
    ori     t8, t8, 0x9623             # t8 = FC119623
    sw      t8, 0x0000(t7)             # 00000000
    sw      t6, 0x0004(t7)             # 00000004
    lw      a1, 0x0120($sp)
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, a1, 0x0008             # t9 = 00000008
    sw      t9, 0x0120($sp)
    sw      t8, 0x0000(a1)             # 00000000
    lbu     t6, 0x63F9(s0)             # 000063F9
    lui     t9, 0x8011                 # t9 = 80110000
    addiu   t9, t9, 0x2E70             # t9 = 80112E70
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  1
    addu    v0, t7, t9
    lh      t8, 0x0004(v0)             # 00000004
    andi    t6, t8, 0x00FF             # t6 = 00000000
    lh      t8, 0x0000(v0)             # 00000000
    sll     t7, t6,  8
    sll     t6, t8, 24
    lh      t8, 0x0002(v0)             # 00000002
    or      t9, t7, t6                 # t9 = 00000000
    andi    t7, t8, 0x00FF             # t7 = 00000000
    sll     t6, t7, 16
    lh      t7, 0x63E2(s0)             # 000063E2
    or      t8, t9, t6                 # t8 = 00000000
    andi    t9, t7, 0x00FF             # t9 = 00000000
    or      t6, t8, t9                 # t6 = 00000000
    sw      t6, 0x0004(a1)             # 00000004
    lw      a2, 0x0120($sp)
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x0120($sp)
    lui     t9, 0xFD90                 # t9 = FD900000
    sw      t9, 0x0000(a2)             # 00000000
    lw      t6, 0x62B0(s0)             # 000062B0
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   t7, t6, 0x1000             # t7 = 00001000
    sw      t7, 0x0004(a2)             # 00000004
    lw      t8, 0x0120($sp)
    lui     t6, 0xF590                 # t6 = F5900000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0120($sp)
    sw      t7, 0x0004(t8)             # 0000000C
    sw      t6, 0x0000(t8)             # 00000008
    lw      t8, 0x0120($sp)
    lui     t6, 0xE600                 # t6 = E6000000
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0120($sp)
    sw      $zero, 0x0004(t8)          # 0000000C
    sw      t6, 0x0000(t8)             # 00000008
    lw      t7, 0x0120($sp)
    lui     t6, 0x0747                 # t6 = 07470000
    ori     t6, t6, 0xF156             # t6 = 0747F156
    addiu   t8, t7, 0x0008             # t8 = 07000008
    sw      t8, 0x0120($sp)
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t7)             # 07000000
    sw      t6, 0x0004(t7)             # 07000004
    lw      t7, 0x0120($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   a2, a2, 0x2E88             # a2 = 80112E88
    addiu   t8, t7, 0x0008             # t8 = 07000008
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t7)          # 07000004
    sw      t9, 0x0000(t7)             # 07000000
    lw      t6, 0x0120($sp)
    lui     t8, 0xF580                 # t8 = F5800000
    ori     t8, t8, 0x0C00             # t8 = F5800C00
    addiu   t7, t6, 0x0008             # t7 = 0747F15E
    sw      t7, 0x0120($sp)
    sw      $zero, 0x0004(t6)          # 0747F15A
    sw      t8, 0x0000(t6)             # 0747F156
    lw      t9, 0x0120($sp)
    lui     t8, 0x0017                 # t8 = 00170000
    ori     t8, t8, 0xC0BC             # t8 = 0017C0BC
    addiu   t6, t9, 0x0008             # t6 = E7000008
    sw      t6, 0x0120($sp)
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(t9)             # E7000000
    sw      t8, 0x0004(t9)             # E7000004
    lw      v1, 0x0120($sp)
    lui     $at, 0xE400                # $at = E4000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x0120($sp)
    lbu     t7, 0x63FA(s0)             # 000063FA
    sll     t8, t7,  1
    lw      t7, 0x0000(s7)             # 8011BA00
    addu    t9, a2, t8
    lh      t6, 0x0000(t9)             # E7000000
    lh      t8, 0x0B0E(t7)             # F2000B0E
    addu    t9, t6, t8
    addiu   t7, t9, 0x0030             # t7 = E7000030
    sll     t6, t7,  2
    lh      t7, 0x63D8(s0)             # 000063D8
    andi    t8, t6, 0x0FFF             # t8 = 00000008
    or      t9, t8, $at                # t9 = E4000008
    addiu   t6, t7, 0x0061             # t6 = E7000091
    sll     t8, t6,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000008
    sll     t6, t7, 12
    or      t8, t9, t6                 # t8 = E7000099
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t7, 0x63FA(s0)             # 000063FA
    sll     t9, t7,  1
    lw      t7, 0x0000(s7)             # 8011BA00
    addu    t6, a2, t9
    lh      t8, 0x0000(t6)             # E7000091
    lh      t9, 0x0B0E(t7)             # 00000B16
    addu    t6, t8, t9
    lh      t9, 0x63D8(s0)             # 000063D8
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    addiu   t6, t9, 0x0001             # t6 = E4000009
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E4000009
    sw      t7, 0x0004(v1)             # 00000004
    lw      t9, 0x0120($sp)
    addiu   t8, t9, 0x0008             # t8 = 00000010
    sw      t8, 0x0120($sp)
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(t9)             # 00000008
    sw      $zero, 0x0004(t9)          # 0000000C
    lw      t7, 0x0120($sp)
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t9, t7, 0x0008             # t9 = E4000011
    sw      t9, 0x0120($sp)
    lui     t8, 0xF100                 # t8 = F1000000
    sw      t8, 0x0000(t7)             # E4000009
    sw      t6, 0x0004(t7)             # E400000D
    lw      v0, 0x0120($sp)
    lui     t8, 0xFD90                 # t8 = FD900000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0120($sp)
    sw      t8, 0x0000(v0)             # 00000000
    lw      t6, 0x62B0(s0)             # 000062B0
    addiu   t7, t6, 0x1900             # t7 = 04001D00
    sw      t7, 0x0004(v0)             # 00000004
    lw      t9, 0x0120($sp)
    lui     t6, 0xF590                 # t6 = F5900000
    lui     t7, 0x0700                 # t7 = 07000000
    addiu   t8, t9, 0x0008             # t8 = 00000010
    sw      t8, 0x0120($sp)
    sw      t7, 0x0004(t9)             # 0000000C
    sw      t6, 0x0000(t9)             # 00000008
    lw      t9, 0x0120($sp)
    lui     t6, 0xE600                 # t6 = E6000000
    addiu   t8, t9, 0x0008             # t8 = 00000010
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t9)          # 0000000C
    sw      t6, 0x0000(t9)             # 00000008
    lw      t7, 0x0120($sp)
    lui     t6, 0x0747                 # t6 = 07470000
    ori     t6, t6, 0xF156             # t6 = 0747F156
    addiu   t9, t7, 0x0008             # t9 = 07000008
    sw      t9, 0x0120($sp)
    lui     t8, 0xF300                 # t8 = F3000000
    sw      t8, 0x0000(t7)             # 07000000
    sw      t6, 0x0004(t7)             # 07000004
    lw      t7, 0x0120($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   a1, a1, 0x2E88             # a1 = 80112E88
    addiu   t9, t7, 0x0008             # t9 = 07000008
    sw      t9, 0x0120($sp)
    sw      $zero, 0x0004(t7)          # 07000004
    sw      t8, 0x0000(t7)             # 07000000
    lw      t6, 0x0120($sp)
    lui     t9, 0xF580                 # t9 = F5800000
    ori     t9, t9, 0x0C00             # t9 = F5800C00
    addiu   t7, t6, 0x0008             # t7 = 0747F15E
    sw      t7, 0x0120($sp)
    sw      $zero, 0x0004(t6)          # 0747F15A
    sw      t9, 0x0000(t6)             # 0747F156
    lw      t8, 0x0120($sp)
    lui     t9, 0x0017                 # t9 = 00170000
    ori     t9, t9, 0xC0BC             # t9 = 0017C0BC
    addiu   t6, t8, 0x0008             # t6 = E7000008
    sw      t6, 0x0120($sp)
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(t8)             # E7000000
    sw      t9, 0x0004(t8)             # E7000004
    lw      a0, 0x0120($sp)
    lui     $at, 0xE400                # $at = E4000000
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x0120($sp)
    lbu     t7, 0x63FA(s0)             # 000063FA
    sll     t9, t7,  1
    lw      t7, 0x0000(s7)             # 8011BA00
    addu    t8, a1, t9
    lh      t6, 0x0000(t8)             # E7000000
    lh      t9, 0x0B0E(t7)             # F2000B0E
    addu    t8, t6, t9
    addiu   t7, t8, 0x0030             # t7 = E7000030
    sll     t6, t7,  2
    lh      t7, 0x63D8(s0)             # 000063D8
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t8, t9, $at                # t8 = E4000008
    addiu   t6, t7, 0x00C2             # t6 = E70000F2
    sll     t9, t6,  2
    andi    t7, t9, 0x0FFF             # t7 = 00000008
    sll     t6, t7, 12
    or      t9, t8, t6                 # t9 = E70000FA
    sw      t9, 0x0000(a0)             # 00000000
    lbu     t7, 0x63FA(s0)             # 000063FA
    sll     t8, t7,  1
    lw      t7, 0x0000(s7)             # 8011BA00
    addu    t6, a1, t8
    lh      t9, 0x0000(t6)             # E70000F2
    lh      t8, 0x0B0E(t7)             # 00000B16
    addu    t6, t9, t8
    lh      t8, 0x63D8(s0)             # 000063D8
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    addiu   t6, t8, 0x0061             # t6 = E4000069
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t7, t9, t6                 # t7 = E4000069
    sw      t7, 0x0004(a0)             # 00000004
    lw      t8, 0x0120($sp)
    addiu   t9, t8, 0x0008             # t9 = 00000010
    sw      t9, 0x0120($sp)
    lui     t6, 0xE100                 # t6 = E1000000
    sw      t6, 0x0000(t8)             # 00000008
    sw      $zero, 0x0004(t8)          # 0000000C
    lw      t7, 0x0120($sp)
    lui     t6, 0x0400                 # t6 = 04000000
    ori     t6, t6, 0x0400             # t6 = 04000400
    addiu   t8, t7, 0x0008             # t8 = E4000071
    sw      t8, 0x0120($sp)
    lui     t9, 0xF100                 # t9 = F1000000
    sw      t9, 0x0000(t7)             # E4000069
    sw      t6, 0x0004(t7)             # E400006D
    lw      t7, 0x0120($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, t7, 0x0008             # t8 = E4000071
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t7)          # E400006D
    sw      t9, 0x0000(t7)             # E4000069
    lw      a1, 0x0120($sp)
    addiu   t7, a1, 0x0008             # t7 = 80112E90
    sw      t7, 0x0120($sp)
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(a1)             # 80112E88
    lbu     t9, 0x63F8(s0)             # 000063F8
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   t7, t7, 0x2E40             # t7 = 80112E40
    sll     t6, t9,  2
    subu    t6, t6, t9
    sll     t6, t6,  1
    addu    v0, t6, t7
    lh      t8, 0x0004(v0)             # 00000004
    andi    t9, t8, 0x00FF             # t9 = 00000000
    lh      t8, 0x0000(v0)             # 00000000
    sll     t6, t9,  8
    sll     t9, t8, 24
    lh      t8, 0x0002(v0)             # 00000002
    or      t7, t6, t9                 # t7 = 04000400
    andi    t6, t8, 0x00FF             # t6 = 00000000
    sll     t9, t6, 16
    lh      t6, 0x63E2(s0)             # 000063E2
    or      t8, t7, t9                 # t8 = 04000400
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t9, t8, t7                 # t9 = 04000400
    sw      t9, 0x0004(a1)             # 80112E8C
    lw      a2, 0x0120($sp)
    addiu   t8, a2, 0x0008             # t8 = 80112E90
    sw      t8, 0x0120($sp)
    lui     t7, 0xFD90                 # t7 = FD900000
    sw      t7, 0x0000(a2)             # 80112E88
    lw      t9, 0x62B0(s0)             # 000062B0
    addiu   t6, t9, 0x1000             # t6 = 04001400
    sw      t6, 0x0004(a2)             # 80112E8C
    lw      t8, 0x0120($sp)
    lui     t9, 0xF590                 # t9 = F5900000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t7, t8, 0x0008             # t7 = 80112E98
    sw      t7, 0x0120($sp)
    sw      t6, 0x0004(t8)             # 80112E94
    sw      t9, 0x0000(t8)             # 80112E90
    lw      t8, 0x0120($sp)
    lui     t9, 0xE600                 # t9 = E6000000
    addiu   t7, t8, 0x0008             # t7 = 80112E98
    sw      t7, 0x0120($sp)
    sw      $zero, 0x0004(t8)          # 80112E94
    sw      t9, 0x0000(t8)             # 80112E90
    lw      t6, 0x0120($sp)
    lui     t9, 0x0747                 # t9 = 07470000
    ori     t9, t9, 0xF156             # t9 = 0747F156
    addiu   t8, t6, 0x0008             # t8 = 07000008
    sw      t8, 0x0120($sp)
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(t6)             # 07000000
    sw      t9, 0x0004(t6)             # 07000004
    lw      t6, 0x0120($sp)
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t8, t6, 0x0008             # t8 = 07000008
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t6)          # 07000004
    sw      t7, 0x0000(t6)             # 07000000
    lw      t9, 0x0120($sp)
    lui     t8, 0xF580                 # t8 = F5800000
    ori     t8, t8, 0x0C00             # t8 = F5800C00
    addiu   t6, t9, 0x0008             # t6 = 0747F15E
    sw      t6, 0x0120($sp)
    sw      $zero, 0x0004(t9)          # 0747F15A
    sw      t8, 0x0000(t9)             # 0747F156
    lw      t7, 0x0120($sp)
    lui     t8, 0x0017                 # t8 = 00170000
    ori     t8, t8, 0xC0BC             # t8 = 0017C0BC
    addiu   t9, t7, 0x0008             # t9 = E7000008
    sw      t9, 0x0120($sp)
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t7)             # E7000000
    sw      t8, 0x0004(t7)             # E7000004
    lw      v1, 0x0120($sp)
    lw      t6, 0x0000(s7)             # 8011BA00
    lui     $at, 0xE400                # $at = E4000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0120($sp)
    lh      t8, 0x0B0E(t6)             # F2000B0E
    addiu   t7, t8, 0x0030             # t7 = 0017C0EC
    sll     t9, t7,  2
    lh      t7, 0x63D8(s0)             # 000063D8
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    or      t8, t6, $at                # t8 = E4000008
    addiu   t9, t7, 0x0060             # t9 = 0017C14C
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t6, t8, t9                 # t6 = E417C14C
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0000(s7)             # 8011BA00
    lh      t8, 0x0B0E(t7)             # 00000B16
    lh      t7, 0x63D8(s0)             # 000063D8
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 0000014C
    sll     t8, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sll     t7, t9, 12
    or      t8, t6, t7                 # t8 = 0000014C
    sw      t8, 0x0004(v1)             # 00000004
    lw      t9, 0x0120($sp)
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x0120($sp)
    lui     t7, 0xE100                 # t7 = E1000000
    sw      t7, 0x0000(t9)             # 00000008
    sw      $zero, 0x0004(t9)          # 0000000C
    lw      t8, 0x0120($sp)
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    addiu   t9, t8, 0x0008             # t9 = 00000154
    sw      t9, 0x0120($sp)
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t8)             # 0000014C
    sw      t7, 0x0004(t8)             # 00000150
    lw      v0, 0x0120($sp)
    lui     t6, 0xFD90                 # t6 = FD900000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x0120($sp)
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x62B0(s0)             # 000062B0
    addiu   t8, t7, 0x1900             # t8 = 04001D00
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x0120($sp)
    lui     t7, 0xF590                 # t7 = F5900000
    lui     t8, 0x0700                 # t8 = 07000000
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x0120($sp)
    sw      t8, 0x0004(t9)             # 0000000C
    sw      t7, 0x0000(t9)             # 00000008
    lw      t9, 0x0120($sp)
    lui     t7, 0xE600                 # t7 = E6000000
    addiu   t6, t9, 0x0008             # t6 = 00000010
    sw      t6, 0x0120($sp)
    sw      $zero, 0x0004(t9)          # 0000000C
    sw      t7, 0x0000(t9)             # 00000008
    lw      t8, 0x0120($sp)
    lui     t7, 0x0747                 # t7 = 07470000
    ori     t7, t7, 0xF156             # t7 = 0747F156
    addiu   t9, t8, 0x0008             # t9 = 07000008
    sw      t9, 0x0120($sp)
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(t8)             # 07000000
    sw      t7, 0x0004(t8)             # 07000004
    lw      t8, 0x0120($sp)
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t9, t8, 0x0008             # t9 = 07000008
    sw      t9, 0x0120($sp)
    sw      $zero, 0x0004(t8)          # 07000004
    sw      t6, 0x0000(t8)             # 07000000
    lw      t7, 0x0120($sp)
    lui     t9, 0xF580                 # t9 = F5800000
    ori     t9, t9, 0x0C00             # t9 = F5800C00
    addiu   t8, t7, 0x0008             # t8 = 0747F15E
    sw      t8, 0x0120($sp)
    sw      $zero, 0x0004(t7)          # 0747F15A
    sw      t9, 0x0000(t7)             # 0747F156
    lw      t6, 0x0120($sp)
    lui     t9, 0x0017                 # t9 = 00170000
    ori     t9, t9, 0xC0BC             # t9 = 0017C0BC
    addiu   t7, t6, 0x0008             # t7 = E7000008
    sw      t7, 0x0120($sp)
    lui     t8, 0xF200                 # t8 = F2000000
    sw      t8, 0x0000(t6)             # E7000000
    sw      t9, 0x0004(t6)             # E7000004
    lw      a0, 0x0120($sp)
    lw      t8, 0x0000(s7)             # 8011BA00
    lui     $at, 0xE400                # $at = E4000000
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x0120($sp)
    lh      t9, 0x0B0E(t8)             # F2000B0E
    addiu   t6, t9, 0x0030             # t6 = 0017C0EC
    sll     t7, t6,  2
    lh      t6, 0x63D8(s0)             # 000063D8
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    or      t9, t8, $at                # t9 = E4000008
    addiu   t7, t6, 0x00C0             # t7 = 0017C1AC
    sll     t8, t7,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000008
    sll     t7, t6, 12
    or      t8, t9, t7                 # t8 = E417C1AC
    sw      t8, 0x0000(a0)             # 00000000
    lw      t6, 0x0000(s7)             # 8011BA00
    lh      t9, 0x0B0E(t6)             # 00000B16
    lh      t6, 0x63D8(s0)             # 000063D8
    sll     t7, t9,  2
    andi    t8, t7, 0x0FFF             # t8 = 000001AC
    addiu   t9, t6, 0x0060             # t9 = 00000068
    sll     t7, t9,  2
    andi    t6, t7, 0x0FFF             # t6 = 000001AC
    sll     t9, t6, 12
    or      t7, t8, t9                 # t7 = 000001EC
    sw      t7, 0x0004(a0)             # 00000004
    lw      t6, 0x0120($sp)
    addiu   t8, t6, 0x0008             # t8 = 000001B4
    sw      t8, 0x0120($sp)
    lui     t9, 0xE100                 # t9 = E1000000
    sw      t9, 0x0000(t6)             # 000001AC
    sw      $zero, 0x0004(t6)          # 000001B0
    lw      t7, 0x0120($sp)
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t6, t7, 0x0008             # t6 = 000001F4
    sw      t6, 0x0120($sp)
    lui     t8, 0xF100                 # t8 = F1000000
    sw      t8, 0x0000(t7)             # 000001EC
    sw      t9, 0x0004(t7)             # 000001F0
    lw      t7, 0x0120($sp)
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t6, t7, 0x0008             # t6 = 000001F4
    sw      t6, 0x0120($sp)
    sw      $zero, 0x0004(t7)          # 000001F0
    sw      t8, 0x0000(t7)             # 000001EC
    lw      t9, 0x0120($sp)
    lui     t6, 0xFCFF                 # t6 = FCFF0000
    lui     t8, 0xFF2D                 # t8 = FF2D0000
    addiu   t7, t9, 0x0008             # t7 = 04000408
    sw      t7, 0x0120($sp)
    ori     t8, t8, 0xFEFF             # t8 = FF2DFEFF
    ori     t6, t6, 0x97FF             # t6 = FCFF97FF
    sw      t6, 0x0000(t9)             # 04000400
    sw      t8, 0x0004(t9)             # 04000404
    lh      t9, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t9, 0x0020             # t7 = 04000420
    sh      t7, 0x63D9($at)            # 000104B0
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    addiu   v0, s3, 0x0001             # v0 = 00000001
    andi    a2, v0, 0xFFFF             # a2 = 00000001
    addu    t6, s1, a2
    addu    t8, t6, s5
    lbu     t9, 0x6306(t8)             # FF2E6205
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    sh      t9, 0x63EB($at)            # 000104C2
    andi    s3, v0, 0xFFFF             # s3 = 00000001
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000104AA
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t7, 0x63D7($at)            # 000104AE
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000104AA
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x63E5($at)            # 000104BC
    lbu     t8, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    bne     s4, t8, lbl_800D9D90
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lhu     t9, 0x62F8(s0)             # 000062F8
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x63E8($at)            # 000104BF
    sb      $zero, 0x63E6($at)         # 000104BD
    sh      t9, 0x62FB($at)            # 000103D2
    lw      a0, 0x0138($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
lbl_800D9D90:
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x63E5($at)            # 000104BC
    lbu     t8, 0x6304(s0)             # 00006304
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    bne     s4, t8, lbl_800D9DF4
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lhu     t9, 0x62F8(s0)             # 000062F8
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sb      t7, 0x63E8($at)            # 000104BF
    sb      $zero, 0x63E6($at)         # 000104BD
    sh      t9, 0x62FB($at)            # 000103D2
    lw      a0, 0x0138($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
lbl_800D9DF4:
    b       lbl_800DA0F0
    lhu     v1, 0x63D2(s2)             # 000063D2
    lbu     t6, 0x6304(s0)             # 00006304
    addiu   t8, $zero, 0x0035          # t8 = 00000035
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    bnel    s4, t6, lbl_800D9E7C
    lw      t9, 0x0120($sp)
    sb      t8, 0x6305($at)            # 000103DC
    lbu     t9, 0x63E4(s0)             # 000063E4
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t9, $zero, lbl_800D9E78
    lw      s0, 0x0138($sp)
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   t6, s0, 0x2200             # t6 = 00002200
    sw      t6, 0x0058($sp)
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a0, $zero, 0x482E          # a0 = 0000482E
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      a0, 0x0058($sp)
    jal     func_8005BD34
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lbu     t8, 0x1D6C(s0)             # 00001D6C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t8, $zero, lbl_800D9E7C
    lw      t9, 0x0120($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
lbl_800D9E78:
    lw      t9, 0x0120($sp)
lbl_800D9E7C:
    lw      t7, 0x013C($sp)
    b       lbl_800DA13C
    sw      t9, 0x0000(t7)             # 00000000
    lhu     t6, 0x63D2(s0)             # 000063D2
    addiu   t8, s3, 0x0001             # t8 = 00000002
    addiu   v1, s6, 0x7FFF             # v1 = 0000A0D7
    bne     t6, t8, lbl_800D9EB4
    nop
    jal     func_800D78F0
    lw      a0, 0x0138($sp)
    lw      t9, 0x0120($sp)
    lw      t7, 0x013C($sp)
    b       lbl_800DA13C
    sw      t9, 0x0000(t7)             # 00000000
lbl_800D9EB4:
    b       lbl_800DA0F0
    lhu     v1, 0x63D3(v1)             # 000063D3
    lbu     t6, 0x6304(s0)             # 00006304
    lw      s0, 0x0138($sp)
    addiu   t8, $zero, 0x0035          # t8 = 00000035
    bne     s4, t6, lbl_800D9F18
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   a2, s3, 0x0001             # a2 = 00000002
    andi    a2, a2, 0xFFFF             # a2 = 00000002
    addiu   t9, $zero, 0x0060          # t9 = 00000060
    addu    t7, s1, a2
    sb      t8, 0x6305($at)            # 000103DC
    sb      t9, 0x63E5($at)            # 000104BC
    addu    t6, t7, s5
    lbu     t8, 0x6306(t6)             # 00006306
    addiu   a0, s0, 0x2200             # a0 = 00002200
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_8005BD34
    sb      t8, 0x63E8($at)            # 000104BF
    lbu     t9, 0x1D6C(s0)             # 00001D6C
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t9, $zero, lbl_800D9F1C
    lw      t7, 0x0120($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
lbl_800D9F18:
    lw      t7, 0x0120($sp)
lbl_800D9F1C:
    lw      t6, 0x013C($sp)
    b       lbl_800DA13C
    sw      t7, 0x0000(t6)             # 00000000
    lbu     t8, 0x6304(s0)             # 00006304
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     s4, t8, lbl_800D9F70
    or      a0, $zero, $zero           # a0 = 00000000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, $zero, 0x0035          # t7 = 00000035
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sb      t7, 0x6305($at)            # 000103DC
    sb      t6, 0x63E5($at)            # 000104BC
lbl_800D9F70:
    lw      t8, 0x0120($sp)
    lw      t9, 0x013C($sp)
    b       lbl_800DA13C
    sw      t8, 0x0000(t9)             # 00000000
    lbu     t7, 0x6304(s0)             # 00006304
    addiu   t6, $zero, 0x0035          # t6 = 00000035
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    bne     s4, t7, lbl_800D9FD8
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x63E5($at)            # 000104BC
    lw      a0, 0x0138($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8005BD34
    addiu   a0, a0, 0x2200             # a0 = 00002200
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x482E          # a0 = 0000482E
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_800D9FD8:
    lw      t7, 0x0120($sp)
    lw      t6, 0x013C($sp)
    b       lbl_800DA13C
    sw      t7, 0x0000(t6)             # 00000000
lbl_800D9FE8:
    lw      t8, 0x0138($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s6, $at
    addiu   t9, t8, 0x2200             # t9 = 00002200
    sw      t9, 0x0058($sp)
    lbu     t7, 0x6304(s0)             # 00006304
    bnel    s4, t7, lbl_800DA05C
    lw      t8, 0x0058($sp)
    lhu     t6, 0x63D2(s0)             # 000063D2
    addiu   t8, s3, 0x0001             # t8 = 00000002
    bnel    t6, t8, lbl_800DA05C
    lw      t8, 0x0058($sp)
    lhu     t9, 0x63EA(s0)             # 000063EA
    lhu     t7, 0x63E8(s0)             # 000063E8
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t9, t7, lbl_800DA058
    or      a0, $zero, $zero           # a0 = 00000000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    sw      v0, 0x0050($sp)
    lw      v0, 0x0050($sp)
lbl_800DA058:
    lw      t8, 0x0058($sp)
lbl_800DA05C:
    lhu     t9, 0x0128($sp)
    lw      a0, 0x0138($sp)
    addiu   a2, $sp, 0x0120            # a2 = FFFFFFE8
    addu    a1, t8, t9
    addiu   a1, a1, 0x0008             # a1 = 00000008
    jal     func_800D6470
    sw      v0, 0x0050($sp)
    lhu     t7, 0x0128($sp)
    lw      t8, 0x0000(s7)             # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    addiu   t6, t7, 0x0080             # t6 = 00000080
    sh      t6, 0x0128($sp)
    lh      t9, 0x0B06(t8)             # 00000B06
    mtc1    $at, $f8                   # $f8 = 100.00
    lw      v0, 0x0050($sp)
    mtc1    t9, $f4                    # $f4 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    sll     t7, v0,  2
    cvt.s.w $f6, $f4
    addu    $at, $at, t7
    lwc1    $f16, 0x2EC0($at)          # 80112EC0
    lh      t9, 0x63D8(s0)             # 000063D8
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    div.s   $f10, $f6, $f8
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0x000B          # t3 = 0000000B
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t5, $zero, 0x000D          # t5 = 0000000D
    addiu   $ra, $zero, 0x0004         # $ra = 00000004
    mul.s   $f18, $f16, $f10
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    nop
    addu    t7, t9, t8
    sh      t7, 0x63D9($at)            # 000104B0
    lhu     v1, 0x63D2(s2)             # 000063D2
lbl_800DA0F0:
    addiu   s3, s3, 0x0001             # s3 = 00000002
    andi    s3, s3, 0xFFFF             # s3 = 00000002
    slt     $at, s3, v1
    bnel    $at, $zero, lbl_800D9008
    addu    t6, s1, s3
lbl_800DA104:
    lhu     v0, 0x63E8(s0)             # 000063E8
    bne     v0, $zero, lbl_800DA124
    addiu   t6, s3, 0x0001             # t6 = 00000003
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t6, 0x63D3($at)            # 000104AA
    lhu     t9, 0x63EA(s0)             # 000063EA
    b       lbl_800DA130
    sh      t9, 0x63E9($at)            # 000104C0
lbl_800DA124:
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t8, 0x63E9($at)            # 000104C0
lbl_800DA130:
    lw      t7, 0x0120($sp)
    lw      t6, 0x013C($sp)
    sw      t7, 0x0000(t6)             # 00000003
lbl_800DA13C:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    lw      s3, 0x002C($sp)
    lw      s4, 0x0030($sp)
    lw      s5, 0x0034($sp)
    lw      s6, 0x0038($sp)
    lw      s7, 0x003C($sp)
    lw      s8, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0138           # $sp += 0x138


func_800DA16C:
# ROM st: icon_item_24_static
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a1, 0x0034($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    addiu   $at, $zero, 0x0076         # $at = 00000076
    bne     a1, $at, lbl_800DA1AC
    or      a3, a1, $zero              # a3 = 00000000
    lw      v0, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addu    v0, v0, $at
    sb      v1, 0x015E(v0)             # 0000015E
    sb      v1, 0x015F(v0)             # 0000015F
lbl_800DA1AC:
    slti    $at, a3, 0x0066
    beq     $at, $zero, lbl_800DA248
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xBA00             # t1 = 8011BA00
    lw      v1, 0x0000(t1)             # 8011BA00
    lui     t9, 0x8011                 # t9 = 80110000
    sll     t8, t7,  1
    addu    t9, t9, t8
    lh      t9, 0x3180(t9)             # 80113180
    lh      t6, 0x0B00(v1)             # 00000BFF
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    t2, t6, t9
    sh      t2, 0x0522(v1)             # 00000621
    lh      t3, 0x003A($sp)
    lw      t5, 0x0000(t1)             # 8011BA00
    lui     t9, 0x007C                 # t9 = 007C0000
    addiu   t4, t3, 0x0006             # t4 = 00000006
    sh      t4, 0x0524(t5)             # 00000524
    lw      t8, 0x0000(t1)             # 8011BA00
    addiu   t9, t9, 0xD000             # t9 = 007BD000
    sll     t6, a3, 12
    sh      t7, 0x052A(t8)             # 0000052A
    lw      v0, 0x0030($sp)
    addu    a1, t6, t9
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    addiu   v0, v0, 0x20D8             # v0 = 000020D8
    addu    t0, v0, $at
    lw      a0, 0x62B0(t0)             # 000062B0
    sw      t0, 0x001C($sp)
    sw      v0, 0x0024($sp)
    jal     func_80000DF0
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lw      v0, 0x0024($sp)
    b       lbl_800DA2E4
    lw      t0, 0x001C($sp)
lbl_800DA248:
    lui     t3, 0x8012                 # t3 = 80120000
    lbu     t3, -0x4627(t3)            # 8011B9D9
    addiu   t1, t1, 0xBA00             # t1 = FFFFBA00
    lw      v1, 0x0000(t1)             # FFFFBA00
    lui     t5, 0x8011                 # t5 = 80110000
    sll     t4, t3,  1
    addu    t5, t5, t4
    lh      t5, 0x3184(t5)             # 80113184
    lh      t2, 0x0B00(v1)             # 00000B00
    addiu   t3, $zero, 0x0018          # t3 = 00000018
    ori     $at, $zero, 0x8000         # $at = 00008000
    subu    t7, t2, t5
    sh      t7, 0x0522(v1)             # 00000522
    lh      t8, 0x003A($sp)
    lw      t9, 0x0000(t1)             # FFFFBA00
    sll     t2, a3,  3
    addiu   t6, t8, 0x000A             # t6 = 0000000A
    sh      t6, 0x0524(t9)             # 00000524
    lw      t4, 0x0000(t1)             # FFFFBA00
    addu    t2, t2, a3
    sll     t2, t2,  8
    sh      t3, 0x052A(t4)             # 0000052A
    lw      v0, 0x0030($sp)
    lui     t7, 0x0084                 # t7 = 00840000
    addiu   t7, t7, 0x6000             # t7 = 00846000
    addiu   v0, v0, 0x20D8             # v0 = 000020D8
    addu    t0, v0, $at
    lui     $at, 0xFFFC                # $at = FFFC0000
    lw      a0, 0x62B0(t0)             # 000062B0
    ori     $at, $at, 0x6A00           # $at = FFFC6A00
    addu    t5, t2, $at
    addu    a1, t5, t7
    sw      t0, 0x001C($sp)
    sw      v0, 0x0024($sp)
    addiu   a2, $zero, 0x0900          # a2 = 00000900
    jal     func_80000DF0
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lw      v0, 0x0024($sp)
    lw      t0, 0x001C($sp)
lbl_800DA2E4:
    lhu     t8, 0x63CE(t0)             # 000063CE
    addiu   $at, v0, 0x7FFF            # $at = 00007FFF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t6, t8, 0x0001             # t6 = 00000001
    sh      t6, 0x63CF($at)            # 0000E3CE
    sb      t9, 0x63E7($at)            # 0000E3E6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_800DA30C:
# Dialog engine related, called once each time a new "box" of text needs to be displayed
# ROM st: message_texture_static x2
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
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
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x008C($sp)
    addu    $at, $at, a0
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, a0
    sh      $zero, 0x04C0($at)         # 000104C0
    lhu     a3, 0x04C0(a3)             # 000104C0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      a3, 0x04C2($at)            # 000104C2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    lui     t6, 0x8012                 # t6 = 80120000
    sh      a3, 0x04AE($at)            # 000104AE
    lbu     t6, -0x4627(t6)            # 8011B9D9
    lui     $at, 0x8011                # $at = 80110000
    or      s4, $zero, $zero           # s4 = 00000000
    or      s5, $zero, $zero           # s5 = 00000000
    bne     t6, $zero, lbl_800DB514
    sh      $zero, -0x56E0($at)        # 8010A920
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56C8(t7)            # 8010A938
    addiu   s6, a0, 0x20D8             # s6 = 000020D8
    addiu   s7, a0, 0x2200             # s7 = 00002200
    bne     t7, $zero, lbl_800DB514
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, s6, $at
    sw      t8, 0x0054($sp)
    sw      a0, 0x00A0($sp)
    ori     s8, $zero, 0x824F          # s8 = 0000824F
lbl_800DA3B0:
    lw      t9, 0x0054($sp)
    ori     v1, $zero, 0x8000          # v1 = 00008000
    sll     t5, s5,  1
    lhu     t1, 0x63CE(t9)             # 000063CE
    addu    t6, s6, t5
    addu    t7, t6, v1
    sll     t2, t1,  1
    addu    t3, s7, t2
    addu    t4, t3, v1
    lhu     a3, 0x5C88(t4)             # 00005C88
    ori     $at, $zero, 0x81A5         # $at = 000081A5
    lui     a0, 0x8012                 # a0 = 80120000
    sh      a3, 0x6306(t7)             # 80116306
    andi    t0, a3, 0xFFFF             # t0 = 00000000
    beq     a3, $at, lbl_800DA414
    or      v0, a3, $zero              # v0 = 00010000
    ori     $at, $zero, 0x81CB         # $at = 000081CB
    beq     a3, $at, lbl_800DA414
    ori     $at, $zero, 0x81A3         # $at = 000081A3
    beq     a3, $at, lbl_800DA414
    ori     $at, $zero, 0x819F         # $at = 0000819F
    beq     a3, $at, lbl_800DA414
    ori     $at, $zero, 0x8170         # $at = 00008170
    bnel    a3, $at, lbl_800DA554
    ori     $at, $zero, 0x874F         # $at = 0000874F
lbl_800DA414:
    lw      a1, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   a0, a0, 0xBA00             # a0 = 8011BA00
    sb      t8, 0x6305($at)            # 000103DC
    sh      t9, 0x63D3($at)            # 000104AA
    lw      v1, 0x0000(a0)             # 8011BA00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t1, 0x0F16(v1)             # 00008F16
    addiu   t2, t1, 0x0006             # t2 = 00000006
    sh      t2, 0x0B02(v1)             # 00008B02
    lbu     t3, 0x62FD(a1)             # 000062FD
    lh      v1, 0x008C($sp)
    beql    t3, $at, lbl_800DA48C
    ori     $at, $zero, 0x81CB         # $at = 000081CB
    bne     v1, $zero, lbl_800DA470
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      v1, 0x0000(a0)             # 8011BA00
    lh      t4, 0x0F16(v1)             # 00008F16
    addiu   t5, t4, 0x0016             # t5 = 00000016
    b       lbl_800DA488
    sh      t5, 0x0B02(v1)             # 00008B02
lbl_800DA470:
    bnel    v1, $at, lbl_800DA48C
    ori     $at, $zero, 0x81CB         # $at = 000081CB
    lw      v1, 0x0000(a0)             # 8011BA00
    lh      t6, 0x0F16(v1)             # 00008F16
    addiu   t7, t6, 0x000E             # t7 = 8012000E
    sh      t7, 0x0B02(v1)             # 00008B02
lbl_800DA488:
    ori     $at, $zero, 0x81CB         # $at = 000081CB
lbl_800DA48C:
    bne     v0, $at, lbl_800DA4D4
    ori     a0, $zero, 0x8000          # a0 = 00008000
    lhu     t8, 0x63CE(a1)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 00000001
    sll     v1, v0, 16
    sll     t9, t8,  1
    addu    t1, s7, t9
    addu    t2, t1, a0
    sra     v1, v1, 16
    lhu     a3, 0x5C8A(t2)             # 00005C90
    sll     t3, v1,  1
    addu    t4, s6, t3
    addu    t5, t4, a0
    sll     s5, v0, 16
    lui     $at, 0x8011                # $at = 80110000
    sh      a3, 0x6306(t5)             # 0000631C
    sra     s5, s5, 16
    sh      a3, -0x56CC($at)           # 8010A934
lbl_800DA4D4:
    ori     $at, $zero, 0x81A3         # $at = 000081A3
    bne     t0, $at, lbl_800DA528
    ori     a0, $zero, 0x8000          # a0 = 00008000
    lhu     t6, 0x63CE(a1)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 00000001
    sll     a3, v0, 16
    sll     t7, t6,  1
    addu    t8, s7, t7
    addu    t9, t8, a0
    sra     a3, a3, 16
    lhu     t1, 0x5C8A(t9)             # 00005C8B
    sll     t2, a3,  1
    addu    t3, s6, t2
    addu    t4, t3, a0
    sh      t1, 0x6306(t4)             # 00006306
    lhu     t5, 0x63CE(a1)             # 000063CE
    sll     s5, v0, 16
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t5, 0x0002             # t6 = 00000018
    sra     s5, s5, 16
    sh      t6, 0x63CF($at)            # 000104A6
lbl_800DA528:
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sh      s5, 0x63D5($at)            # 000104AC
    lui     t7, 0x8011                 # t7 = 80110000
    lbu     t7, -0x56D0(t7)            # 8010A930
    beql    t7, $zero, lbl_800DC80C
    lw      $ra, 0x003C($sp)
    lhu     t8, 0x63D4(a1)             # 000063D4
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DC808
    sh      t8, 0x63D3($at)            # 000104AA
    ori     $at, $zero, 0x874F         # $at = 0000874F
lbl_800DA554:
    bne     v0, $at, lbl_800DA638
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    or      s2, $zero, $zero           # s2 = 00000000
lbl_800DA560:
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, s3
    lbu     t9, -0x5A0D(t9)            # 8011A5F3
    addiu   $at, $zero, 0x00DF         # $at = 000000DF
    bne     t9, $at, lbl_800DA58C
    nop
    addiu   s3, s3, 0xFFFF             # s3 = 00000007
    sll     s3, s3, 16
    sra     s3, s3, 16
    bgtz    s3, lbl_800DA560
    nop
lbl_800DA58C:
    blez    s3, lbl_800DA624
    addu    a2, s7, s4
    sll     t2, s5,  1
    addu    a3, s6, t2
lbl_800DA59C:
    lui     t0, 0x8012                 # t0 = 80120000
    addu    t0, t0, s2
    lbu     t5, -0x5A0C(t0)            # 8011A5F4
    sll     t1, s2,  1
    addu    t4, a3, t1
    sll     t6, t5,  7
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    ori     t3, $zero, 0x874F          # t3 = 0000874F
    addu    a1, s7, t6
    sh      t3, 0x6307($at)            # 0000E306
    addiu   a1, a1, 0x3C88             # a1 = 00003C88
    or      a0, $zero, $zero           # a0 = 00000000
lbl_800DA5CC:
    addu    v1, a0, a1
    lbu     t7, 0x0000(v1)             # 00008000
    addu    v0, a2, a0
    addiu   a0, a0, 0x0004             # a0 = 00000004
    sb      t7, 0x0008(v0)             # 00000009
    lbu     t8, 0x0001(v1)             # 00008001
    sll     a0, a0, 16
    sra     a0, a0, 16
    sb      t8, 0x0009(v0)             # 0000000A
    lbu     t9, 0x0002(v1)             # 00008002
    slti    $at, a0, 0x0080
    sb      t9, 0x000A(v0)             # 0000000B
    lbu     t2, 0x0003(v1)             # 00008003
    bne     $at, $zero, lbl_800DA5CC
    sb      t2, 0x000B(v0)             # 0000000C
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slt     $at, s2, s3
    addiu   s4, s4, 0x0080             # s4 = 00000080
    bne     $at, $zero, lbl_800DA59C
    addiu   a2, a2, 0x0080             # a2 = 00000080
lbl_800DA624:
    addu    s5, s5, s3
    addiu   s5, s5, 0xFFFF             # s5 = FFFFFFFF
    sll     s5, s5, 16
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DA638:
    ori     $at, $zero, 0x8791         # $at = 00008791
    beq     v0, $at, lbl_800DA64C
    or      a1, $zero, $zero           # a1 = 00000000
    ori     $at, $zero, 0x8792         # $at = 00008792
    bne     v0, $at, lbl_800DA7F0
lbl_800DA64C:
    sll     v1, $zero, 16
    sll     a0, $zero, 16
    ori     $at, $zero, 0x8792         # $at = 00008792
    sra     a0, a0, 16
    sra     v1, v1, 16
    bne     t0, $at, lbl_800DA674
    or      s2, $zero, $zero           # s2 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_800DA67C
    lh      v0, -0x4660(v0)            # 8011B9A0
lbl_800DA674:
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x465C(v0)            # 8011B9A4
lbl_800DA67C:
    slti    $at, v0, 0x003C
    sh      v1, 0x0086($sp)
    bne     $at, $zero, lbl_800DA6D8
    sh      a0, 0x0084($sp)
    addiu   v1, v1, 0x0001             # v1 = 00008001
lbl_800DA690:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DA6BC
    addiu   v0, v0, 0xFFC4             # v0 = 8011FFC4
    addiu   a0, a0, 0x0001             # a0 = 00000005
    addiu   v1, v1, 0xFFF6             # v1 = 00007FF7
    sll     a0, a0, 16
    sll     v1, v1, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
lbl_800DA6BC:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x003C
    beql    $at, $zero, lbl_800DA690
    addiu   v1, v1, 0x0001             # v1 = 00007FF8
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DA6D8:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DA710
    sh      a1, 0x0088($sp)
lbl_800DA6E8:
    addiu   v0, v0, 0xFFF6             # v0 = 8011FFBA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DA6E8
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DA710:
    sll     t1, s2,  1
lbl_800DA714:
    addiu   t3, $sp, 0x0084            # t3 = FFFFFFE4
    addu    s0, t1, t3
    lh      t4, 0x0000(s0)             # 00000000
    sll     t5, s5,  1
    addu    s1, s6, t5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t4, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000080
    lh      t6, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000000
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addu    t7, t6, s8
    addiu   s4, s4, 0x0080             # s4 = 00000100
    sh      t7, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DA7A0
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x95AA          # a1 = 000095AA
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000100
    sll     t9, s5,  1
    addu    t2, s6, t9
    addiu   s5, s5, 0x0001             # s5 = 00000001
    addiu   $at, t2, 0x7FFF            # $at = 00007FFF
    ori     t8, $zero, 0x95AA          # t8 = 000095AA
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000180
    sh      t8, 0x6307($at)            # 0000E306
    b       lbl_800DA7D0
    sra     s5, s5, 16
lbl_800DA7A0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s2, $at, lbl_800DA7D0
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x9562          # a1 = 00009562
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000180
    sll     t3, s5,  1
    addu    t4, s6, t3
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    ori     t1, $zero, 0x9562          # t1 = 00009562
    addiu   s4, s4, 0x0080             # s4 = 00000200
    sh      t1, 0x6307($at)            # 0000E306
lbl_800DA7D0:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DA714
    sll     t1, s2,  1
    b       lbl_800DB4F4
    lw      t6, 0x0054($sp)
lbl_800DA7F0:
    ori     $at, $zero, 0x879B         # $at = 0000879B
    bne     v0, $at, lbl_800DA950
    or      a1, $zero, $zero           # a1 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x462A(v0)            # 8011B9D6
    sll     a0, $zero, 16
    sra     a0, a0, 16
    sll     v1, $zero, 16
    slti    $at, v0, 0x03E8
    sra     v1, v1, 16
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DA84C
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DA828:
    addiu   v0, v0, 0xFC18             # v0 = 8011FC18
    sll     v0, v0, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x03E8
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DA828
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DA84C:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_800DA87C
    sh      v1, 0x0086($sp)
lbl_800DA858:
    addiu   v0, v0, 0xFF9C             # v0 = 8011FBB4
    sll     v0, v0, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x0064
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DA858
    sra     v1, v1, 16
    sh      v1, 0x0086($sp)
lbl_800DA87C:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DA8B4
    sh      a1, 0x0088($sp)
lbl_800DA88C:
    addiu   v0, v0, 0xFFF6             # v0 = 8011FBAA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DA88C
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DA8B4:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_800DA8B8:
    beq     s2, $at, lbl_800DA8D0
    sll     t5, s2,  1
    addu    t6, $sp, t5
    lh      t6, 0x0084(t6)             # 00000084
    beq     t6, $zero, lbl_800DA8D4
    nop
lbl_800DA8D0:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DA8D4:
    beq     s3, $zero, lbl_800DA928
    or      a0, s7, $zero              # a0 = 00002200
    sll     t7, s2,  1
    addiu   t9, $sp, 0x0084            # t9 = FFFFFFE4
    addu    s0, t7, t9
    lh      t8, 0x0000(s0)             # 00000000
    sll     t2, s5,  1
    addu    s1, s6, t2
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t8, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    s1, s1, $at
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000200
    lh      t3, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16
    addu    t1, t3, s8
    addiu   s4, s4, 0x0080             # s4 = 00000280
    sh      t1, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DA928:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DA8B8
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s5, s5, 0xFFFF             # s5 = 00000001
    sll     s5, s5, 16
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DA950:
    ori     $at, $zero, 0x86A3         # $at = 000086A3
    bne     v0, $at, lbl_800DAA78
    or      v1, $zero, $zero           # v1 = 00000000
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x5960(a1)            # 8011A6A0
    sll     a0, $zero, 16
    sra     a0, a0, 16
    slti    $at, a1, 0x0064
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DA9A4
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DA980:
    addiu   a1, a1, 0xFF9C             # a1 = 8011FF9C
    sll     a1, a1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     a1, a1, 16
    slti    $at, a1, 0x0064
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DA980
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DA9A4:
    slti    $at, a1, 0x000A
    sh      v1, 0x0086($sp)
    bne     $at, $zero, lbl_800DA9DC
    sh      a1, 0x0088($sp)
lbl_800DA9B4:
    addiu   a1, a1, 0xFFF6             # a1 = 8011FF92
    sll     a1, a1, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     a1, a1, 16
    slti    $at, a1, 0x000A
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DA9B4
    sra     v1, v1, 16
    sh      a1, 0x0088($sp)
    sh      v1, 0x0086($sp)
lbl_800DA9DC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_800DA9E0:
    beq     s2, $at, lbl_800DA9F8
    sll     t4, s2,  1
    addu    t5, $sp, t4
    lh      t5, 0x0084(t5)             # 00000084
    beq     t5, $zero, lbl_800DA9FC
    nop
lbl_800DA9F8:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DA9FC:
    beq     s3, $zero, lbl_800DAA50
    or      a0, s7, $zero              # a0 = 00002200
    sll     t6, s2,  1
    addiu   t7, $sp, 0x0084            # t7 = FFFFFFE4
    addu    s0, t6, t7
    lh      t9, 0x0000(s0)             # 00000000
    sll     t8, s5,  1
    addu    s1, s6, t8
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t9, s8
    andi    a1, a1, 0xFFFF             # a1 = 0000FF92
    addu    s1, s1, $at
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000280
    lh      t2, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16
    addu    t3, t2, s8
    addiu   s4, s4, 0x0080             # s4 = 00000300
    sh      t3, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DAA50:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0003
    bnel    $at, $zero, lbl_800DA9E0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   s5, s5, 0xFFFF             # s5 = 00000001
    sll     s5, s5, 16
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DAA78:
    ori     $at, $zero, 0x86A4         # $at = 000086A4
    bne     v0, $at, lbl_800DAB58
    or      a0, $zero, $zero           # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x462A(v1)            # 8011B9D6
    or      s2, $zero, $zero           # s2 = 00000000
    sh      $zero, 0x0084($sp)
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DAAC8
    sh      v1, 0x0086($sp)
lbl_800DAAA0:
    addiu   v1, v1, 0xFFF6             # v1 = 8011FFF6
    sll     v1, v1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DAAA0
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DAAC8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800DAACC:
    beq     s2, $at, lbl_800DAAE0
    sll     t1, s2,  1
    addu    t4, $sp, t1
    lh      t4, 0x0084(t4)             # 00000084
    beq     t4, $zero, lbl_800DAB30
lbl_800DAAE0:
    sll     t5, s2,  1
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFE4
    addu    s0, t5, t6
    lh      t7, 0x0000(s0)             # 00000000
    sll     t9, s5,  1
    addu    s1, s6, t9
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t7, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000300
    lh      t8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16
    addu    t2, t8, s8
    addiu   s4, s4, 0x0080             # s4 = 00000380
    sh      t2, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DAB30:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0002
    bnel    $at, $zero, lbl_800DAACC
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s5, s5, 0xFFFF             # s5 = 00000001
    sll     s5, s5, 16
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DAB58:
    ori     $at, $zero, 0x869F         # $at = 0000869F
    bne     v0, $at, lbl_800DAF1C
    lw      a1, 0x0054($sp)
    lhu     a3, 0x63CE(a1)             # 000063CE
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    ori     v0, $zero, 0x8000          # v0 = 00008000
    addiu   a3, a3, 0x0001             # a3 = 00000001
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    sh      a3, 0x63CF($at)            # 000104A6
    lhu     t9, 0x63CE(a1)             # 000063CE
    sll     t3, a3,  1
    addu    t1, s7, t3
    addu    t4, t1, v0
    sll     t8, t9,  1
    lhu     t5, 0x5C88(t4)             # 00005C88
    addu    t2, s7, t8
    addu    t3, t2, v0
    lhu     v1, 0x5C88(t3)             # 00005C88
    andi    t6, t5, 0x00FF             # t6 = 00000000
    sll     t7, t6,  2
    lui     a2, 0x8012                 # a2 = 80120000
    addu    a2, a2, t7
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    a0, v1, 0x00FF             # a0 = 00000000
    bne     a0, $at, lbl_800DAC10
    lhu     a2, -0x4B76(a2)            # 8011B48A
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t1, $zero, lbl_800DABE0
    sll     t4, v1,  2
    b       lbl_800DABE0
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_800DABE0:
    bne     v0, $at, lbl_800DABF0
    andi    a2, a2, 0x007F             # a2 = 00000000
    b       lbl_800DAC10
    andi    a2, a2, 0xFFFF             # a2 = 00000000
lbl_800DABF0:
    lui     a2, 0x8012                 # a2 = 80120000
    addu    a2, a2, t4
    lw      a2, -0x4B78(a2)            # 8011B488
    lui     $at, 0xFF00                # $at = FF000000
    and     a2, a2, $at
    srl     a2, a2, 24
    andi    a2, a2, 0x007F             # a2 = 00000000
    andi    a2, a2, 0xFFFF             # a2 = 00000000
lbl_800DAC10:
    sltiu   $at, a0, 0x0007
    beq     $at, $zero, lbl_800DB4F0
    sll     t5, a0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t5
    lw      t5, 0x35A8($at)            # 801135A8
    jr      t5
    nop
    sll     v0, a2, 16
    sll     a0, $zero, 16
    sra     v0, v0, 16
    sra     a0, a0, 16
    sll     v1, $zero, 16
    slti    $at, v0, 0x03E8
    sra     v1, v1, 16
    or      a1, $zero, $zero           # a1 = 00000000
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DAC84
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DAC60:
    addiu   v0, v0, 0xFC18             # v0 = FFFFFC1D
    sll     v0, v0, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x03E8
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DAC60
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DAC84:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_800DACB4
    sh      v1, 0x0086($sp)
lbl_800DAC90:
    addiu   v0, v0, 0xFF9C             # v0 = FFFFFBB9
    sll     v0, v0, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x0064
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DAC90
    sra     v1, v1, 16
    sh      v1, 0x0086($sp)
lbl_800DACB4:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DACEC
    sh      a1, 0x0088($sp)
lbl_800DACC4:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFBAF
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DACC4
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DACEC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_800DACF0:
    beq     s2, $at, lbl_800DAD08
    sll     t6, s2,  1
    addu    t7, $sp, t6
    lh      t7, 0x0084(t7)             # 00000084
    beq     t7, $zero, lbl_800DAD0C
    nop
lbl_800DAD08:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DAD0C:
    beq     s3, $zero, lbl_800DAD60
    or      a0, s7, $zero              # a0 = 00002200
    sll     t9, s2,  1
    addiu   t8, $sp, 0x0084            # t8 = FFFFFFE4
    addu    s0, t9, t8
    lh      t2, 0x0000(s0)             # 00000000
    sll     t3, s5,  1
    addu    s1, s6, t3
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t2, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    s1, s1, $at
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000380
    lh      t1, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16
    addu    t4, t1, s8
    addiu   s4, s4, 0x0080             # s4 = 00000400
    sh      t4, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DAD60:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DACF0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s5, s5, 0xFFFF             # s5 = 00000001
    sll     s5, s5, 16
    b       lbl_800DB4F0
    sra     s5, s5, 16
    sll     v0, a2, 16
    sll     v1, $zero, 16
    sll     a0, $zero, 16
    sra     v0, v0, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
    slti    $at, v0, 0x003C
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v1, 0x0086($sp)
    sh      a0, 0x0084($sp)
    bne     $at, $zero, lbl_800DAE04
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800DADBC:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DADE8
    addiu   v0, v0, 0xFFC4             # v0 = FFFFFFC4
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF7
    sll     a0, a0, 16
    sll     v1, v1, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
lbl_800DADE8:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x003C
    beql    $at, $zero, lbl_800DADBC
    addiu   v1, v1, 0x0001             # v1 = FFFFFFF8
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DAE04:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DAE3C
    sh      a1, 0x0088($sp)
lbl_800DAE14:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFBA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DAE14
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DAE3C:
    sll     t5, s2,  1
lbl_800DAE40:
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFE4
    addu    s0, t5, t6
    lh      t7, 0x0000(s0)             # 00000000
    sll     t9, s5,  1
    addu    s1, s6, t9
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t7, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000400
    lh      t8, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000002
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addu    t2, t8, s8
    addiu   s4, s4, 0x0080             # s4 = 00000480
    sh      t2, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DAECC
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x95AA          # a1 = 000095AA
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000480
    sll     t1, s5,  1
    addu    t4, s6, t1
    addiu   s5, s5, 0x0001             # s5 = 00000003
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    ori     t3, $zero, 0x95AA          # t3 = 000095AA
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000500
    sh      t3, 0x6307($at)            # 0000E306
    b       lbl_800DAEFC
    sra     s5, s5, 16
lbl_800DAECC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s2, $at, lbl_800DAEFC
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x9562          # a1 = 00009562
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000500
    sll     t6, s5,  1
    addu    t7, s6, t6
    addiu   $at, t7, 0x7FFF            # $at = 00007FFF
    ori     t5, $zero, 0x9562          # t5 = 00009562
    addiu   s4, s4, 0x0080             # s4 = 00000580
    sh      t5, 0x6307($at)            # 0000E306
lbl_800DAEFC:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DAE40
    sll     t5, s2,  1
    b       lbl_800DB4F4
    lw      t6, 0x0054($sp)
lbl_800DAF1C:
    ori     $at, $zero, 0x81A1         # $at = 000081A1
    bne     v0, $at, lbl_800DB0F8
    lui     t9, 0x8012                 # t9 = 80120000
    lhu     t9, -0x5A24(t9)            # 8011A5DC
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f4                    # $f4 = 0.00
    bgez    t9, lbl_800DAF4C
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_800DAF4C:
    lui     $at, 0x3CB4                # $at = 3CB40000
    mtc1    $at, $f10                  # $f10 = 0.02
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    mul.s   $f0, $f6, $f10
    or      s2, $zero, $zero           # s2 = 00000000
    sh      a0, 0x0084($sp)
    div.s   $f18, $f0, $f16
    trunc.w.s $f8, $f0
    mfc1    v0, $f8
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DAFC8
    sh      v1, 0x0086($sp)
lbl_800DAFA0:
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF6
    sll     v1, v1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DAFA0
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DAFC8:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    div     $zero, v0, $at
    mfhi    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DB018
    sh      $zero, 0x0088($sp)
lbl_800DAFF0:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFF6
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DAFF0
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DB018:
    sll     t1, s2,  1
lbl_800DB01C:
    addiu   t3, $sp, 0x0084            # t3 = FFFFFFE4
    addu    s0, t1, t3
    lh      t4, 0x0000(s0)             # 00000000
    sll     t6, s5,  1
    addu    s1, s6, t6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a1, t4, s8
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000580
    lh      t5, 0x0000(s0)             # 00000000
    addiu   s5, s5, 0x0001             # s5 = 00000004
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addu    t7, t5, s8
    addiu   s4, s4, 0x0080             # s4 = 00000600
    sh      t7, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DB0A8
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x8E9E          # a1 = 00008E9E
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000600
    sll     t8, s5,  1
    addu    t2, s6, t8
    addiu   s5, s5, 0x0001             # s5 = 00000005
    addiu   $at, t2, 0x7FFF            # $at = 00007FFF
    ori     t9, $zero, 0x8E9E          # t9 = 00008E9E
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000680
    sh      t9, 0x6307($at)            # 0000E306
    b       lbl_800DB0D8
    sra     s5, s5, 16
lbl_800DB0A8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s2, $at, lbl_800DB0D8
    or      a0, s7, $zero              # a0 = 00002200
    ori     a1, $zero, 0x95AA          # a1 = 000095AA
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000680
    sll     t3, s5,  1
    addu    t4, s6, t3
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    ori     t1, $zero, 0x95AA          # t1 = 000095AA
    addiu   s4, s4, 0x0080             # s4 = 00000700
    sh      t1, 0x6307($at)            # 0000E306
lbl_800DB0D8:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DB01C
    sll     t1, s2,  1
    b       lbl_800DB4F4
    lw      t6, 0x0054($sp)
lbl_800DB0F8:
    ori     $at, $zero, 0x819A         # $at = 0000819A
    bne     v0, $at, lbl_800DB17C
    ori     v1, $zero, 0x8000          # v1 = 00008000
    lw      t0, 0x0054($sp)
    addiu   v0, s5, 0x0001             # v0 = 00000006
    sll     a3, v0, 16
    lhu     t6, 0x63CE(t0)             # 000063CE
    sra     a3, a3, 16
    sll     t2, a3,  1
    sll     t5, t6,  1
    addu    t7, s7, t5
    addu    t8, t7, v1
    lhu     t9, 0x5C8A(t8)             # 00005C8A
    addu    t3, s6, t2
    addu    t1, t3, v1
    lui     t8, 0x8012                 # t8 = 80120000
    sh      t9, 0x6306(t1)             # 0000F8B0
    lw      t8, -0x4600(t8)            # 8011BA00
    lhu     t4, 0x63CE(t0)             # 000063CE
    sll     s5, v0, 16
    lh      a2, 0x0F16(t8)             # 80120F16
    sll     t6, t4,  1
    addu    t5, s7, t6
    addiu   a2, a2, 0x000A             # a2 = 0000000A
    sll     a2, a2, 16
    addu    t7, t5, v1
    sra     s5, s5, 16
    lhu     a1, 0x5C8A(t7)             # 00005C8A
    sra     a2, a2, 16
    jal     func_800DA16C
    lw      a0, 0x00A0($sp)
    b       lbl_800DB4F4
    lw      t6, 0x0054($sp)
lbl_800DB17C:
    ori     $at, $zero, 0x86B3         # $at = 000086B3
    bne     v0, $at, lbl_800DB2B4
    lw      v1, 0x0054($sp)
    lhu     t2, 0x63CE(v1)             # 000063CE
    ori     v0, $zero, 0x8000          # v0 = 00008000
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sll     t3, t2,  1
    addu    t9, s7, t3
    addu    t1, t9, v0
    lhu     t4, 0x5C8A(t1)             # 00005C8A
    lui     s0, 0x0092                 # s0 = 00920000
    addiu   s0, s0, 0x6000             # s0 = 00926000
    sll     t6, t4,  1
    sh      t6, 0x63F7($at)            # 000104CE
    lhu     t5, 0x63CE(v1)             # 000063CE
    addiu   a2, $zero, 0x0900          # a2 = 00000900
    sll     t7, t5,  1
    addu    t8, s7, t7
    addu    t2, t8, v0
    lhu     t3, 0x5C8C(t2)             # 00005C8C
    andi    t9, t3, 0xF000             # t9 = 00000000
    sra     t1, t9, 12
    sb      t1, 0x63F9($at)            # 000104D0
    lhu     t4, 0x63CE(v1)             # 000063CE
    sll     t6, t4,  1
    addu    t5, s7, t6
    addu    t7, t5, v0
    lhu     t8, 0x5C8C(t7)             # 00005C8C
    andi    t2, t8, 0x0F00             # t2 = 00000000
    sra     t3, t2,  8
    sb      t3, 0x63FA($at)            # 000104D1
    lhu     t9, 0x63CE(v1)             # 000063CE
    sll     t1, t9,  1
    addu    t4, s7, t1
    addu    t6, t4, v0
    lhu     t5, 0x5C8C(t6)             # 00005C8C
    andi    t7, t5, 0x00F0             # t7 = 00000000
    sra     t8, t7,  4
    sb      t8, 0x63FB($at)            # 000104D2
    lhu     t2, 0x63CE(v1)             # 000063CE
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sll     t3, t2,  1
    addu    t9, s7, t3
    addu    t1, t9, v0
    lhu     t4, 0x5C8C(t1)             # 00005C8C
    andi    t6, t4, 0x000F             # t6 = 00000000
    sb      t6, 0x63FC($at)            # 000104D3
    lhu     t5, 0x63F6(v1)             # 000063F6
    lw      a0, 0x62B0(v1)             # 000062B0
    sh      t8, 0x008C($sp)
    sll     t7, t5,  3
    addu    t7, t7, t5
    sll     t7, t7,  8
    addu    a1, s0, t7
    jal     func_80000DF0
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lw      v0, 0x0054($sp)
    addiu   a2, $zero, 0x0900          # a2 = 00000900
    lhu     t2, 0x63F6(v0)             # 000063F6
    lw      a0, 0x62B0(v0)             # 000062B0
    sll     t3, t2,  3
    addu    t3, t3, t2
    sll     t3, t3,  8
    addu    a1, s0, t3
    addiu   a1, a1, 0x0900             # a1 = 00000900
    jal     func_80000DF0
    addiu   a0, a0, 0x1900             # a0 = 00001900
    lw      t9, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    lui     v1, 0x8012                 # v1 = 80120000
    lhu     t1, 0x63CE(t9)             # 000063CE
    addiu   t4, t1, 0x0002             # t4 = 00000002
    sh      t4, 0x63CF($at)            # 000104A6
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t6, 0x0F16(v1)             # 80120F16
    addiu   t5, t6, 0x0008             # t5 = 00000008
    b       lbl_800DB4F0
    sh      t5, 0x0B0E(v1)             # 80120B0E
lbl_800DB2B4:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_800DB314
    ori     a0, $zero, 0x8000          # a0 = 00008000
    lw      t7, 0x0054($sp)
    addiu   v0, s5, 0x0001             # v0 = 00000006
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    lhu     a3, 0x63CE(t7)             # 000063CE
    sll     v1, v0, 16
    sra     v1, v1, 16
    addiu   a3, a3, 0x0001             # a3 = 00000001
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    sll     t8, a3,  1
    addu    t2, s7, t8
    addu    t3, t2, a0
    sh      a3, 0x63CF($at)            # 000104A6
    lhu     t9, 0x5C88(t3)             # 00005C88
    sll     t4, v1,  1
    addu    t6, s6, t4
    addu    t5, t6, a0
    sll     s5, v0, 16
    andi    t1, t9, 0x000F             # t1 = 00000000
    sh      t1, 0x6306(t5)             # 0000630E
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DB314:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v0, $at, lbl_800DB32C
    lh      t7, 0x008C($sp)
    addiu   t8, t7, 0x0001             # t8 = 00000001
    b       lbl_800DB4F0
    sh      t8, 0x008C($sp)
lbl_800DB32C:
    ori     $at, $zero, 0x8189         # $at = 00008189
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x818A         # $at = 0000818A
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x81A4         # $at = 000081A4
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x81F0         # $at = 000081F0
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x86C8         # $at = 000086C8
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x8199         # $at = 00008199
    beq     v0, $at, lbl_800DB4F0
    ori     $at, $zero, 0x819E         # $at = 0000819E
    bne     v0, $at, lbl_800DB3C8
    ori     a0, $zero, 0x8000          # a0 = 00008000
    lw      t3, 0x0054($sp)
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, -0x56E0($at)           # 8010A920
    lhu     a3, 0x63CE(t3)             # 000063CE
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   v0, s5, 0x0001             # v0 = 00000006
    addiu   a3, a3, 0x0001             # a3 = 00000002
    andi    a3, a3, 0xFFFF             # a3 = 00000002
    sll     t9, a3,  1
    addu    t4, s7, t9
    addu    t6, t4, a0
    sh      a3, 0x63CF($at)            # 000104A6
    sll     v1, v0, 16
    lhu     t1, 0x5C88(t6)             # 00005C88
    sra     v1, v1, 16
    sll     t7, v1,  1
    addu    t8, s6, t7
    addu    t2, t8, a0
    sll     s5, v0, 16
    andi    t5, t1, 0x00FF             # t5 = 00000000
    sh      t5, 0x6306(t2)             # 00006307
    b       lbl_800DB4F0
    sra     s5, s5, 16
lbl_800DB3C8:
    ori     $at, $zero, 0x86C7         # $at = 000086C7
    beq     v0, $at, lbl_800DB3E0
    ori     a0, $zero, 0x8000          # a0 = 00008000
    ori     $at, $zero, 0x86C9         # $at = 000086C9
    bnel    v0, $at, lbl_800DB438
    ori     $at, $zero, 0x81F3         # $at = 000081F3
lbl_800DB3E0:
    lw      t3, 0x0054($sp)
    addiu   v0, s5, 0x0001             # v0 = 00000006
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    lhu     a3, 0x63CE(t3)             # 000063CE
    sll     v1, v0, 16
    sra     v1, v1, 16
    addiu   a3, a3, 0x0001             # a3 = 00000003
    andi    a3, a3, 0xFFFF             # a3 = 00000003
    sll     t9, a3,  1
    addu    t4, s7, t9
    addu    t6, t4, a0
    sh      a3, 0x63CF($at)            # 000104A6
    lhu     t1, 0x5C88(t6)             # 00005C88
    sll     t8, v1,  1
    addu    t5, s6, t8
    addu    t2, t5, a0
    sll     s5, v0, 16
    andi    t7, t1, 0x00FF             # t7 = 00000000
    sh      t7, 0x6306(t2)             # 00006307
    b       lbl_800DB4F0
    sra     s5, s5, 16
    ori     $at, $zero, 0x81F3         # $at = 000081F3
lbl_800DB438:
    bne     v0, $at, lbl_800DB490
    ori     a0, $zero, 0x8000          # a0 = 00008000
    lw      t3, 0x0054($sp)
    addiu   v0, s5, 0x0001             # v0 = 00000006
    sll     v1, v0, 16
    lhu     a3, 0x63CE(t3)             # 000063CE
    sra     v1, v1, 16
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   a3, a3, 0x0001             # a3 = 00000004
    andi    a3, a3, 0xFFFF             # a3 = 00000004
    sll     t9, a3,  1
    addu    t4, s7, t9
    addu    t6, t4, a0
    sh      a3, 0x63CF($at)            # 000104A6
    sll     t8, v1,  1
    lhu     t1, 0x5C88(t6)             # 00005C88
    addu    t5, s6, t8
    addu    t7, t5, a0
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DB4F0
    sh      t1, 0x6306(t7)             # 00006306
lbl_800DB490:
    ori     $at, $zero, 0x81BC         # $at = 000081BC
    bne     v0, $at, lbl_800DB4A8
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DB4F0
    sb      t2, 0x63E7($at)            # 000104BE
lbl_800DB4A8:
    ori     $at, $zero, 0x81B8         # $at = 000081B8
    bne     v0, $at, lbl_800DB4D4
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sb      t3, 0x63E7($at)            # 000104BE
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t9, 0x0B00(v1)             # 80120B00
    addiu   t4, t9, 0x0020             # t4 = 00000020
    b       lbl_800DB4F0
    sh      t4, 0x0B00(v1)             # 80120B00
lbl_800DB4D4:
    ori     $at, $zero, 0x8140         # $at = 00008140
    beq     v0, $at, lbl_800DB4F0
    or      a0, s7, $zero              # a0 = 00002200
    andi    a1, a3, 0xFFFF             # a1 = 00000004
    jal     func_8005BC90
    andi    a2, s4, 0xFFFF             # a2 = 00000700
    addiu   s4, s4, 0x0080             # s4 = 00000780
lbl_800DB4F0:
    lw      t6, 0x0054($sp)
lbl_800DB4F4:
    addiu   s5, s5, 0x0001             # s5 = 00000006
    sll     s5, s5, 16
    lhu     t8, 0x63CE(t6)             # 000063CE
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sra     s5, s5, 16
    addiu   t5, t8, 0x0001             # t5 = 00000001
    b       lbl_800DA3B0
    sh      t5, 0x63CF($at)            # 000104A6
lbl_800DB514:
    addiu   s6, a0, 0x20D8             # s6 = 000020D8
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t1, s6, $at
    sw      t1, 0x0054($sp)
    addiu   s7, a0, 0x2200             # s7 = 00002200
    sw      a0, 0x00A0($sp)
    addiu   s8, $zero, 0x0022          # s8 = 00000022
lbl_800DB530:
    lw      t7, 0x0054($sp)
    ori     v1, $zero, 0x8000          # v1 = 00008000
    addu    t4, s6, s5
    lhu     t2, 0x63CE(t7)             # 000063CE
    addu    t6, t4, v1
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addu    t3, s7, t2
    addu    t9, t3, v1
    lbu     t0, 0x5C88(t9)             # 00005C88
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sb      t0, 0x6306(t6)             # 00006306
    andi    s0, t0, 0x00FF             # s0 = 00000000
    beq     t0, $at, lbl_800DB590
    or      v0, t0, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     t0, $at, lbl_800DB590
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     t0, $at, lbl_800DB590
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    beq     t0, $at, lbl_800DB590
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    t0, $at, lbl_800DB724
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_800DB590:
    lw      a0, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    sh      t5, 0x63D3($at)            # 000104AA
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t1, 0x0F16(v1)             # 80120F16
    addiu   t7, t1, 0x0008             # t7 = 00000008
    sh      t7, 0x0B02(v1)             # 80120B02
    lbu     t2, 0x62FD(a0)             # 000062FD
    lh      t3, 0x008C($sp)
    beql    t2, $at, lbl_800DB62C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t3, $zero, lbl_800DB5E8
    lh      t6, 0x008C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t9, 0x0F16(v1)             # 80120F16
    addiu   t4, t9, 0x001A             # t4 = 0000001A
    b       lbl_800DB628
    sh      t4, 0x0B02(v1)             # 80120B02
lbl_800DB5E8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_800DB60C
    lh      t1, 0x008C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t8, 0x0F16(v1)             # 80120F16
    addiu   t5, t8, 0x0014             # t5 = 0000001A
    b       lbl_800DB628
    sh      t5, 0x0B02(v1)             # 80120B02
lbl_800DB60C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t1, $at, lbl_800DB628
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t7, 0x0F16(v1)             # 80120F16
    addiu   t2, t7, 0x0010             # t2 = 00000018
    sh      t2, 0x0B02(v1)             # 80120B02
lbl_800DB628:
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_800DB62C:
    bne     v0, $at, lbl_800DB6AC
    ori     v1, $zero, 0x8000          # v1 = 00008000
    lhu     t3, 0x63CE(a0)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 00000007
    sll     a3, v0, 16
    addu    t9, s7, t3
    addu    t4, t9, v1
    lbu     t0, 0x5C89(t4)             # 00005CA3
    sra     a3, a3, 16
    addu    t6, s6, a3
    addu    t8, t6, v1
    sb      t0, 0x6306(t8)             # 0000630C
    lhu     t5, 0x63CE(a0)             # 000063CE
    or      s5, v0, $zero              # s5 = 00000007
    addiu   v0, s5, 0x0001             # v0 = 00000008
    addu    t1, s7, t5
    addu    t7, t1, v1
    sll     a3, v0, 16
    lbu     t2, 0x5C8A(t7)             # 00005C92
    sra     a3, a3, 16
    sll     s5, v0, 16
    sra     s5, s5, 16
    addu    t3, s6, a3
    addu    t9, t3, v1
    addu    t4, s6, s5
    addu    t6, t4, v1
    sb      t2, 0x6306(t9)             # 00006306
    lbu     t8, 0x6306(t6)             # 00006306
    sll     t1, t0,  8
    lui     $at, 0x8011                # $at = 80110000
    or      t7, t8, t1                 # t7 = 00000006
    sh      t7, -0x56CC($at)           # 8010A934
lbl_800DB6AC:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     s0, $at, lbl_800DB6F8
    ori     v1, $zero, 0x8000          # v1 = 00008000
    lhu     t3, 0x63CE(a0)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 00000008
    sll     a3, v0, 16
    addu    t2, s7, t3
    addu    t9, t2, v1
    lbu     t4, 0x5C89(t9)             # 00005C89
    sra     a3, a3, 16
    addu    t6, s6, a3
    addu    t5, t6, v1
    sb      t4, 0x6306(t5)             # 00006320
    lhu     t8, 0x63CE(a0)             # 000063CE
    sll     s5, v0, 16
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   t1, t8, 0x0002             # t1 = 00000008
    sra     s5, s5, 16
    sh      t1, 0x63CF($at)            # 000104A6
lbl_800DB6F8:
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sh      s5, 0x63D5($at)            # 000104AC
    lui     t7, 0x8011                 # t7 = 80110000
    lbu     t7, -0x56D0(t7)            # 8010A930
    beql    t7, $zero, lbl_800DC80C
    lw      $ra, 0x003C($sp)
    lhu     t3, 0x63D4(a0)             # 000063D4
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DC808
    sh      t3, 0x63D3($at)            # 000104AA
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_800DB724:
    bne     v0, $at, lbl_800DB870
    addiu   s3, $zero, 0x0008          # s3 = 00000008
    or      s2, $zero, $zero           # s2 = 00000000
lbl_800DB730:
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, s3
    lbu     t2, -0x5A0D(t2)            # 8011A5F3
    addiu   $at, $zero, 0x00DF         # $at = 000000DF
    bne     t2, $at, lbl_800DB75C
    nop
    addiu   s3, s3, 0xFFFF             # s3 = 00000007
    sll     s3, s3, 16
    sra     s3, s3, 16
    bgtz    s3, lbl_800DB730
    nop
lbl_800DB75C:
    blez    s3, lbl_800DB860
lbl_800DB760:
    lui     s0, 0x8012                 # s0 = 80120000
    addu    s0, s0, s2
    lbu     s0, -0x5A0C(s0)            # 8011A5F4
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s1, s1, $at
    addiu   $at, $zero, 0x00DF         # $at = 000000DF
    bne     s0, $at, lbl_800DB790
    or      v0, s0, $zero              # v0 = 80120000
    addiu   s0, $zero, 0x0020          # s0 = 00000020
    b       lbl_800DB81C
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_800DB790:
    addiu   $at, $zero, 0x00EA         # $at = 000000EA
    bnel    v0, $at, lbl_800DB7AC
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    addiu   s0, $zero, 0x002E          # s0 = 0000002E
    b       lbl_800DB81C
    addiu   v0, $zero, 0x002E          # v0 = 0000002E
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
lbl_800DB7AC:
    bnel    v0, $at, lbl_800DB7C4
    slti    $at, v0, 0x000A
    addiu   s0, $zero, 0x002D          # s0 = 0000002D
    b       lbl_800DB81C
    addiu   v0, $zero, 0x002D          # v0 = 0000002D
    slti    $at, v0, 0x000A
lbl_800DB7C4:
    beql    $at, $zero, lbl_800DB7E4
    slti    $at, v0, 0x00C5
    or      s0, v0, $zero              # s0 = 0000002D
    addiu   s0, s0, 0x0030             # s0 = 0000005D
    andi    s0, s0, 0x00FF             # s0 = 0000005D
    b       lbl_800DB81C
    or      v0, s0, $zero              # v0 = 0000005D
    slti    $at, v0, 0x00C5
lbl_800DB7E4:
    beql    $at, $zero, lbl_800DB804
    slti    $at, v0, 0x00DF
    or      s0, v0, $zero              # s0 = 0000005D
    addiu   s0, s0, 0xFF96             # s0 = FFFFFFF3
    andi    s0, s0, 0x00FF             # s0 = 000000F3
    b       lbl_800DB81C
    or      v0, s0, $zero              # v0 = 000000F3
    slti    $at, v0, 0x00DF
lbl_800DB804:
    beql    $at, $zero, lbl_800DB820
    addiu   $at, $zero, 0x0020         # $at = 00000020
    or      s0, v0, $zero              # s0 = 000000F3
    addiu   s0, s0, 0xFF9C             # s0 = 0000008F
    andi    s0, s0, 0x00FF             # s0 = 0000008F
    or      v0, s0, $zero              # v0 = 0000008F
lbl_800DB81C:
    addiu   $at, $zero, 0x0020         # $at = 00000020
lbl_800DB820:
    beq     v0, $at, lbl_800DB83C
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, v0, 0xFFE0             # a1 = 0000006F
    andi    a1, a1, 0x00FF             # a1 = 0000006F
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000780
    addiu   s4, s4, 0x0080             # s4 = 00000800
lbl_800DB83C:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    addiu   s5, s5, 0x0001             # s5 = 00000008
    slt     $at, s2, s3
    sll     s5, s5, 16
    sb      s0, 0x6306(s1)             # 00006306
    bne     $at, $zero, lbl_800DB760
    sra     s5, s5, 16
lbl_800DB860:
    addiu   s5, s5, 0xFFFF             # s5 = 00000007
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
lbl_800DB870:
    addiu   $at, $zero, 0x0016         # $at = 00000016
    beq     v0, $at, lbl_800DB884
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   $at, $zero, 0x0017         # $at = 00000017
    bne     v0, $at, lbl_800DBA14
lbl_800DB884:
    sll     v1, $zero, 16
    sll     a0, $zero, 16
    addiu   $at, $zero, 0x0017         # $at = 00000017
    sra     a0, a0, 16
    sra     v1, v1, 16
    bne     v0, $at, lbl_800DB8AC
    or      s2, $zero, $zero           # s2 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    b       lbl_800DB8B4
    lh      v0, -0x4660(v0)            # 8011B9A0
lbl_800DB8AC:
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x465C(v0)            # 8011B9A4
lbl_800DB8B4:
    slti    $at, v0, 0x003C
    sh      v1, 0x0086($sp)
    bne     $at, $zero, lbl_800DB910
    sh      a0, 0x0084($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800DB8C8:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DB8F4
    addiu   v0, v0, 0xFFC4             # v0 = 8011FFC4
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF7
    sll     a0, a0, 16
    sll     v1, v1, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
lbl_800DB8F4:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x003C
    beql    $at, $zero, lbl_800DB8C8
    addiu   v1, v1, 0x0001             # v1 = FFFFFFF8
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DB910:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DB948
    sh      a1, 0x0088($sp)
lbl_800DB920:
    addiu   v0, v0, 0xFFF6             # v0 = 8011FFBA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DB920
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DB948:
    sll     t9, s2,  1
lbl_800DB94C:
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFE4
    addu    s0, t9, t6
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000011
    andi    a1, a1, 0x00FF             # a1 = 00000011
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000800
    lh      t4, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 00000008
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t5, t4, 0x0030             # t5 = 00000030
    addiu   s4, s4, 0x0080             # s4 = 00000880
    sb      t5, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DB9CC
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000880
    addu    t8, s6, s5
    addiu   s5, s5, 0x0001             # s5 = 00000009
    addiu   $at, t8, 0x7FFF            # $at = 00007FFF
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000900
    sb      s8, 0x6307($at)            # 0000E306
    b       lbl_800DB9F4
    sra     s5, s5, 16
lbl_800DB9CC:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s2, $at, lbl_800DB9F4
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000900
    addu    t1, s6, s5
    addiu   $at, t1, 0x7FFF            # $at = 00007FFF
    addiu   s4, s4, 0x0080             # s4 = 00000980
    sb      s8, 0x6307($at)            # 0000E306
lbl_800DB9F4:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DB94C
    sll     t9, s2,  1
    b       lbl_800DC7E8
    lw      t1, 0x0054($sp)
lbl_800DBA14:
    addiu   $at, $zero, 0x0018         # $at = 00000018
    bne     v0, $at, lbl_800DBB70
    or      a1, $zero, $zero           # a1 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x462A(v0)            # 8011B9D6
    sll     a0, $zero, 16
    sra     a0, a0, 16
    sll     v1, $zero, 16
    slti    $at, v0, 0x03E8
    sra     v1, v1, 16
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DBA70
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DBA4C:
    addiu   v0, v0, 0xFC18             # v0 = 8011FC18
    sll     v0, v0, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x03E8
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DBA4C
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DBA70:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_800DBAA0
    sh      v1, 0x0086($sp)
lbl_800DBA7C:
    addiu   v0, v0, 0xFF9C             # v0 = 8011FBB4
    sll     v0, v0, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x0064
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DBA7C
    sra     v1, v1, 16
    sh      v1, 0x0086($sp)
lbl_800DBAA0:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DBAD8
    sh      a1, 0x0088($sp)
lbl_800DBAB0:
    addiu   v0, v0, 0xFFF6             # v0 = 8011FBAA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DBAB0
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DBAD8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_800DBADC:
    beq     s2, $at, lbl_800DBAF4
    sll     t7, s2,  1
    addu    t3, $sp, t7
    lh      t3, 0x0084(t3)             # 00000084
    beq     t3, $zero, lbl_800DBAF8
    nop
lbl_800DBAF4:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DBAF8:
    beq     s3, $zero, lbl_800DBB48
    or      a0, s7, $zero              # a0 = 00002200
    sll     t2, s2,  1
    addiu   t9, $sp, 0x0084            # t9 = FFFFFFE4
    addu    s0, t2, t9
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000011
    andi    a1, a1, 0x00FF             # a1 = 00000011
    addu    s1, s1, $at
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000980
    lh      t6, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000A
    sll     s5, s5, 16
    addiu   t4, t6, 0x0030             # t4 = 00000030
    sb      t4, 0x6306(s1)             # 00006306
    addiu   s4, s4, 0x0080             # s4 = 00000A00
    sra     s5, s5, 16
lbl_800DBB48:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DBADC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s5, s5, 0xFFFF             # s5 = 00000009
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
lbl_800DBB70:
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v0, $at, lbl_800DBC94
    or      v1, $zero, $zero           # v1 = 00000000
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x5960(a1)            # 8011A6A0
    sll     a0, $zero, 16
    sra     a0, a0, 16
    slti    $at, a1, 0x0064
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DBBC4
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DBBA0:
    addiu   a1, a1, 0xFF9C             # a1 = 8011FF9C
    sll     a1, a1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     a1, a1, 16
    slti    $at, a1, 0x0064
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DBBA0
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DBBC4:
    slti    $at, a1, 0x000A
    sh      v1, 0x0086($sp)
    bne     $at, $zero, lbl_800DBBFC
    sh      a1, 0x0088($sp)
lbl_800DBBD4:
    addiu   a1, a1, 0xFFF6             # a1 = 8011FF92
    sll     a1, a1, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     a1, a1, 16
    slti    $at, a1, 0x000A
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DBBD4
    sra     v1, v1, 16
    sh      a1, 0x0088($sp)
    sh      v1, 0x0086($sp)
lbl_800DBBFC:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_800DBC00:
    beq     s2, $at, lbl_800DBC18
    sll     t5, s2,  1
    addu    t8, $sp, t5
    lh      t8, 0x0084(t8)             # 00000084
    beq     t8, $zero, lbl_800DBC1C
    nop
lbl_800DBC18:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DBC1C:
    beq     s3, $zero, lbl_800DBC6C
    or      a0, s7, $zero              # a0 = 00002200
    sll     t1, s2,  1
    addiu   t7, $sp, 0x0084            # t7 = FFFFFFE4
    addu    s0, t1, t7
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 8011FFA2
    andi    a1, a1, 0x00FF             # a1 = 000000A2
    addu    s1, s1, $at
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000A00
    lh      t3, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000A
    sll     s5, s5, 16
    addiu   t2, t3, 0x0030             # t2 = 00000030
    addiu   s4, s4, 0x0080             # s4 = 00000A80
    sb      t2, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DBC6C:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0003
    bnel    $at, $zero, lbl_800DBC00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   s5, s5, 0xFFFF             # s5 = 00000009
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
lbl_800DBC94:
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     v0, $at, lbl_800DBD70
    or      a0, $zero, $zero           # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x462A(v1)            # 8011B9D6
    or      s2, $zero, $zero           # s2 = 00000000
    sh      $zero, 0x0084($sp)
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DBCE4
    sh      v1, 0x0086($sp)
lbl_800DBCBC:
    addiu   v1, v1, 0xFFF6             # v1 = 8011FFF6
    sll     v1, v1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DBCBC
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DBCE4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800DBCE8:
    beq     s2, $at, lbl_800DBCFC
    sll     t9, s2,  1
    addu    t6, $sp, t9
    lh      t6, 0x0084(t6)             # 00000084
    beq     t6, $zero, lbl_800DBD48
lbl_800DBCFC:
    sll     t4, s2,  1
    addiu   t5, $sp, 0x0084            # t5 = FFFFFFE4
    addu    s0, t4, t5
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000010
    andi    a1, a1, 0x00FF             # a1 = 00000010
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000A80
    lh      t8, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000A
    sll     s5, s5, 16
    addiu   t1, t8, 0x0030             # t1 = 00000030
    addiu   s4, s4, 0x0080             # s4 = 00000B00
    sb      t1, 0x6306(s1)             # 00006306
    sra     s5, s5, 16
lbl_800DBD48:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0002
    bnel    $at, $zero, lbl_800DBCE8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   s5, s5, 0xFFFF             # s5 = 00000009
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
lbl_800DBD70:
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bnel    v0, $at, lbl_800DC1DC
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    lw      v0, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    ori     a1, $zero, 0x8000          # a1 = 00008000
    lhu     a3, 0x63CE(v0)             # 000063CE
    lui     a2, 0x8012                 # a2 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   a3, a3, 0x0001             # a3 = 00000001
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    sh      a3, 0x63CF($at)            # 000104A6
    lhu     t6, 0x63CE(v0)             # 000063CE
    addu    t7, s7, a3
    addu    t3, t7, a1
    addu    t4, s7, t6
    lbu     t2, 0x5C88(t3)             # 00005C88
    addu    t5, t4, a1
    lbu     v1, 0x5C88(t5)             # 00005C88
    sll     t9, t2,  2
    addu    a2, a2, t9
    addiu   $at, $zero, 0x0002         # $at = 00000002
    or      a0, v1, $zero              # a0 = 00000000
    bne     a0, $at, lbl_800DBEE4
    lhu     a2, -0x4B76(a2)            # 8011B48A
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t8, $zero, lbl_800DBDF0
    sll     t1, v1,  2
    b       lbl_800DBDF0
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_800DBDF0:
    bne     v0, $at, lbl_800DBE00
    andi    a2, a2, 0x007F             # a2 = 00000000
    b       lbl_800DBE20
    andi    a2, a2, 0xFFFF             # a2 = 00000000
lbl_800DBE00:
    lui     a2, 0x8012                 # a2 = 80120000
    addu    a2, a2, t1
    lw      a2, -0x4B78(a2)            # 8011B488
    lui     $at, 0xFF00                # $at = FF000000
    and     a2, a2, $at
    srl     a2, a2, 24
    andi    a2, a2, 0x007F             # a2 = 00000000
    andi    a2, a2, 0xFFFF             # a2 = 00000000
lbl_800DBE20:
    mtc1    a2, $f6                    # $f6 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    a2, lbl_800DBE3C
    cvt.s.w $f0, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f0, $f0, $f10
lbl_800DBE3C:
    mul.s   $f16, $f0, $f0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, 0x35C4($at)          # 801135C4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f16, $f18
    add.s   $f6, $f4, $f8
    cfc1    t7, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_800DBECC
    mfc1    a2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_800DBEC0
    nop
    mfc1    a2, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800DBED8
    or      a2, a2, $at                # a2 = 80000000
lbl_800DBEC0:
    b       lbl_800DBED8
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f10
lbl_800DBECC:
    nop
    bltz    a2, lbl_800DBEC0
    nop
lbl_800DBED8:
    ctc1    t7, $f31
    andi    a2, a2, 0xFFFF             # a2 = 0000FFFF
    nop
lbl_800DBEE4:
    sltiu   $at, a0, 0x0007
    beq     $at, $zero, lbl_800DC7E4
    sll     t3, a0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t3
    lw      t3, 0x35C8($at)            # 801135C8
    jr      t3
    nop
    sll     v0, a2, 16
    sll     a0, $zero, 16
    sra     v0, v0, 16
    sra     a0, a0, 16
    sll     v1, $zero, 16
    slti    $at, v0, 0x03E8
    sra     v1, v1, 16
    or      a1, $zero, $zero           # a1 = 00000000
    sh      a0, 0x0084($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    bne     $at, $zero, lbl_800DBF58
    or      s3, $zero, $zero           # s3 = 00000000
lbl_800DBF34:
    addiu   v0, v0, 0xFC18             # v0 = FFFFFC1D
    sll     v0, v0, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x03E8
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DBF34
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
lbl_800DBF58:
    slti    $at, v0, 0x0064
    bne     $at, $zero, lbl_800DBF88
    sh      v1, 0x0086($sp)
lbl_800DBF64:
    addiu   v0, v0, 0xFF9C             # v0 = FFFFFBB9
    sll     v0, v0, 16
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x0064
    sll     v1, v1, 16
    beq     $at, $zero, lbl_800DBF64
    sra     v1, v1, 16
    sh      v1, 0x0086($sp)
lbl_800DBF88:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DBFC0
    sh      a1, 0x0088($sp)
lbl_800DBF98:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFBAF
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DBF98
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DBFC0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_800DBFC4:
    beq     s2, $at, lbl_800DBFDC
    sll     t2, s2,  1
    addu    t9, $sp, t2
    lh      t9, 0x0084(t9)             # 00000084
    beq     t9, $zero, lbl_800DBFE0
    nop
lbl_800DBFDC:
    addiu   s3, $zero, 0x0001          # s3 = 00000001
lbl_800DBFE0:
    beq     s3, $zero, lbl_800DC030
    or      a0, s7, $zero              # a0 = 00002200
    sll     t6, s2,  1
    addiu   t4, $sp, 0x0084            # t4 = FFFFFFE4
    addu    s0, t6, t4
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000011
    andi    a1, a1, 0x00FF             # a1 = 00000011
    addu    s1, s1, $at
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000B00
    lh      t5, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000A
    sll     s5, s5, 16
    addiu   t8, t5, 0x0030             # t8 = 00000030
    sb      t8, 0x6306(s1)             # 00006306
    addiu   s4, s4, 0x0080             # s4 = 00000B80
    sra     s5, s5, 16
lbl_800DC030:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DBFC4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s5, s5, 0xFFFF             # s5 = 00000009
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
    sll     v0, a2, 16
    sll     v1, $zero, 16
    sll     a0, $zero, 16
    sra     v0, v0, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
    slti    $at, v0, 0x003C
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v1, 0x0086($sp)
    sh      a0, 0x0084($sp)
    bne     $at, $zero, lbl_800DC0D4
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800DC08C:
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DC0B8
    addiu   v0, v0, 0xFFC4             # v0 = FFFFFFC4
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF7
    sll     a0, a0, 16
    sll     v1, v1, 16
    sra     a0, a0, 16
    sra     v1, v1, 16
lbl_800DC0B8:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x003C
    beql    $at, $zero, lbl_800DC08C
    addiu   v1, v1, 0x0001             # v1 = FFFFFFF8
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DC0D4:
    slti    $at, v0, 0x000A
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DC10C
    sh      a1, 0x0088($sp)
lbl_800DC0E4:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFBA
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DC0E4
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DC10C:
    sll     t1, s2,  1
lbl_800DC110:
    addiu   t7, $sp, 0x0084            # t7 = FFFFFFE4
    addu    s0, t1, t7
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000011
    andi    a1, a1, 0x00FF             # a1 = 00000011
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000B80
    lh      t3, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000A
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t2, t3, 0x0030             # t2 = 00000030
    addiu   s4, s4, 0x0080             # s4 = 00000C00
    sb      t2, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DC190
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000C00
    addu    t9, s6, s5
    addiu   s5, s5, 0x0001             # s5 = 0000000B
    addiu   $at, t9, 0x7FFF            # $at = 00007FFF
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000C80
    sb      s8, 0x6307($at)            # 0000E306
    b       lbl_800DC1B8
    sra     s5, s5, 16
lbl_800DC190:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     s2, $at, lbl_800DC1B8
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000C80
    addu    t6, s6, s5
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    addiu   s4, s4, 0x0080             # s4 = 00000D00
    sb      s8, 0x6307($at)            # 0000E306
lbl_800DC1B8:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DC110
    sll     t1, s2,  1
    b       lbl_800DC7E8
    lw      t1, 0x0054($sp)
    addiu   $at, $zero, 0x001F         # $at = 0000001F
lbl_800DC1DC:
    bne     v0, $at, lbl_800DC380
    lui     t4, 0x8012                 # t4 = 80120000
    lhu     t4, -0x5A24(t4)            # 8011A5DC
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f16                   # $f16 = 0.00
    bgez    t4, lbl_800DC208
    cvt.s.w $f18, $f16
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_800DC208:
    lui     $at, 0x3CB4                # $at = 3CB40000
    mtc1    $at, $f8                   # $f8 = 0.02
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    mul.s   $f0, $f18, $f8
    or      s2, $zero, $zero           # s2 = 00000000
    sh      a0, 0x0084($sp)
    div.s   $f10, $f0, $f6
    trunc.w.s $f4, $f0
    mfc1    v0, $f4
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    trunc.w.s $f16, $f10
    mfc1    v1, $f16
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_800DC284
    sh      v1, 0x0086($sp)
lbl_800DC25C:
    addiu   v1, v1, 0xFFF6             # v1 = FFFFFFF6
    sll     v1, v1, 16
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     v1, v1, 16
    slti    $at, v1, 0x000A
    sll     a0, a0, 16
    beq     $at, $zero, lbl_800DC25C
    sra     a0, a0, 16
    sh      a0, 0x0084($sp)
    sh      v1, 0x0086($sp)
lbl_800DC284:
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    div     $zero, v0, $at
    mfhi    v0
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    or      a1, $zero, $zero           # a1 = 00000000
    sh      v0, 0x008A($sp)
    bne     $at, $zero, lbl_800DC2D4
    sh      $zero, 0x0088($sp)
lbl_800DC2AC:
    addiu   v0, v0, 0xFFF6             # v0 = FFFFFFF6
    sll     v0, v0, 16
    addiu   a1, a1, 0x0001             # a1 = 00000001
    sra     v0, v0, 16
    slti    $at, v0, 0x000A
    sll     a1, a1, 16
    beq     $at, $zero, lbl_800DC2AC
    sra     a1, a1, 16
    sh      a1, 0x0088($sp)
    sh      v0, 0x008A($sp)
lbl_800DC2D4:
    sll     t1, s2,  1
lbl_800DC2D8:
    addiu   t7, $sp, 0x0084            # t7 = FFFFFFE4
    addu    s0, t1, t7
    lh      a1, 0x0000(s0)             # 0000008F
    addu    s1, s6, s5
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, a1, 0x0010             # a1 = 00000011
    andi    a1, a1, 0x00FF             # a1 = 00000011
    addu    s1, s1, $at
    or      a0, s7, $zero              # a0 = 00002200
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000D00
    lh      t3, 0x0000(s0)             # 0000008F
    addiu   s5, s5, 0x0001             # s5 = 0000000C
    sll     s5, s5, 16
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t2, t3, 0x0030             # t2 = 00000030
    addiu   s4, s4, 0x0080             # s4 = 00000D80
    sb      t2, 0x6306(s1)             # 00006306
    bne     s2, $at, lbl_800DC358
    sra     s5, s5, 16
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000D80
    addu    t6, s6, s5
    addiu   s5, s5, 0x0001             # s5 = 0000000D
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    addiu   t9, $zero, 0x003A          # t9 = 0000003A
    sll     s5, s5, 16
    addiu   s4, s4, 0x0080             # s4 = 00000E00
    sb      t9, 0x6307($at)            # 0000E306
    sra     s5, s5, 16
lbl_800DC358:
    addiu   s2, s2, 0x0001             # s2 = 00000001
    sll     s2, s2, 16
    sra     s2, s2, 16
    slti    $at, s2, 0x0004
    bnel    $at, $zero, lbl_800DC2D8
    sll     t1, s2,  1
    addiu   s5, s5, 0xFFFF             # s5 = 0000000C
    sll     s5, s5, 16
    b       lbl_800DC7E4
    sra     s5, s5, 16
lbl_800DC380:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v0, $at, lbl_800DC3F4
    lw      v1, 0x0054($sp)
    lhu     t4, 0x63CE(v1)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 0000000D
    sll     a3, v0, 16
    addu    t5, s7, t4
    addiu   t8, t5, 0x7FFF             # t8 = 00007FFF
    lbu     t8, 0x5C8A(t8)             # 0000DC89
    sra     a3, a3, 16
    addu    t1, s6, a3
    addiu   $at, t1, 0x7FFF            # $at = 00007FFF
    lui     t2, 0x8012                 # t2 = 80120000
    sb      t8, 0x6307($at)            # 0000E306
    lw      t2, -0x4600(t2)            # 8011BA00
    lhu     t7, 0x63CE(v1)             # 000063CE
    sll     s5, v0, 16
    lh      a2, 0x0F16(t2)             # 80120F16
    addu    t3, s7, t7
    addiu   a1, t3, 0x7FFF             # a1 = 00007FFF
    addiu   a2, a2, 0x000A             # a2 = 0000000A
    sll     a2, a2, 16
    sra     s5, s5, 16
    sra     a2, a2, 16
    lbu     a1, 0x5C8A(a1)             # 0000DC89
    jal     func_800DA16C
    lw      a0, 0x00A0($sp)
    b       lbl_800DC7E8
    lw      t1, 0x0054($sp)
lbl_800DC3F4:
    addiu   $at, $zero, 0x0015         # $at = 00000015
    bnel    v0, $at, lbl_800DC51C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      v0, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    lui     s0, 0x0092                 # s0 = 00920000
    lhu     t9, 0x63CE(v0)             # 000063CE
    addiu   s0, s0, 0x6000             # s0 = 00926000
    addiu   a2, $zero, 0x0900          # a2 = 00000900
    addu    t6, s7, t9
    addiu   t4, t6, 0x7FFF             # t4 = 00007FFF
    lbu     t4, 0x5C8A(t4)             # 0000DC89
    sll     t5, t4,  1
    sh      t5, 0x63F7($at)            # 000104CE
    lhu     t8, 0x63CE(v0)             # 000063CE
    addu    t1, s7, t8
    addiu   t7, t1, 0x7FFF             # t7 = 00007FFF
    lbu     t7, 0x5C8B(t7)             # 0000DC8A
    andi    t3, t7, 0x00F0             # t3 = 000000F0
    sra     t2, t3, 12
    sb      t2, 0x63F9($at)            # 000104D0
    lhu     t9, 0x63CE(v0)             # 000063CE
    addu    t6, s7, t9
    addiu   t4, t6, 0x7FFF             # t4 = 00007FFF
    lbu     t4, 0x5C8B(t4)             # 0000DC8A
    andi    t5, t4, 0x000F             # t5 = 0000000F
    sra     t8, t5,  8
    sb      t8, 0x63FA($at)            # 000104D1
    lhu     t1, 0x63CE(v0)             # 000063CE
    addu    t7, s7, t1
    addiu   t3, t7, 0x7FFF             # t3 = 0000FFFE
    lbu     t3, 0x5C8C(t3)             # 00015C8A
    andi    t2, t3, 0x00F0             # t2 = 000000F0
    sra     t9, t2,  4
    sb      t9, 0x63FB($at)            # 000104D2
    lhu     t6, 0x63CE(v0)             # 000063CE
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addu    t4, s7, t6
    addiu   t5, t4, 0x7FFF             # t5 = 0000FFFE
    lbu     t5, 0x5C8C(t5)             # 00015C8A
    andi    t8, t5, 0x000F             # t8 = 0000000E
    sb      t8, 0x63FC($at)            # 000104D3
    lhu     t1, 0x63F6(v0)             # 000063F6
    lw      a0, 0x62B0(v0)             # 000062B0
    sh      t3, 0x008C($sp)
    sll     t7, t1,  3
    addu    t7, t7, t1
    sll     t7, t7,  8
    addu    a1, s0, t7
    jal     func_80000DF0
    addiu   a0, a0, 0x1000             # a0 = 00001000
    lw      v0, 0x0054($sp)
    addiu   a2, $zero, 0x0900          # a2 = 00000900
    lhu     t2, 0x63F6(v0)             # 000063F6
    lw      a0, 0x62B0(v0)             # 000062B0
    sll     t9, t2,  3
    addu    t9, t9, t2
    sll     t9, t9,  8
    addu    a1, s0, t9
    addiu   a1, a1, 0x0900             # a1 = 00000900
    jal     func_80000DF0
    addiu   a0, a0, 0x1900             # a0 = 00001900
    lw      t6, 0x0054($sp)
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    lui     v1, 0x8012                 # v1 = 80120000
    lhu     t4, 0x63CE(t6)             # 000063CE
    addiu   t5, t4, 0x0003             # t5 = 00000003
    sh      t5, 0x63CF($at)            # 000104A6
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t8, 0x0F16(v1)             # 80120F16
    addiu   t1, t8, 0x0008             # t1 = 00000008
    b       lbl_800DC7E4
    sh      t1, 0x0B0E(v1)             # 80120B0E
    addiu   $at, $zero, 0x0005         # $at = 00000005
lbl_800DC51C:
    bne     v0, $at, lbl_800DC568
    lw      t7, 0x0054($sp)
    lhu     a3, 0x63CE(t7)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 0000000D
    sll     v1, v0, 16
    addiu   a3, a3, 0x0001             # a3 = 00000001
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    addu    t3, s7, a3
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63CF($at)            # 000104A6
    addiu   t2, t3, 0x7FFF             # t2 = 00007FFF
    sra     v1, v1, 16
    lbu     t2, 0x5C89(t2)             # 0000DC88
    addu    t9, s6, v1
    addiu   $at, t9, 0x7FFF            # $at = 00007FFF
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DC7E4
    sb      t2, 0x6307($at)            # 0000E306
lbl_800DC568:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800DC580
    lh      t6, 0x008C($sp)
    addiu   t4, t6, 0x0001             # t4 = 00000001
    b       lbl_800DC7E4
    sh      t4, 0x008C($sp)
lbl_800DC580:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    beq     v0, $at, lbl_800DC7E4
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     v0, $at, lbl_800DC60C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lw      t8, 0x0054($sp)
    lui     $at, 0x8011                # $at = 80110000
    sh      t5, -0x56E0($at)           # 8010A920
    lhu     a3, 0x63CE(t8)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 0000000D
    sll     v1, v0, 16
    addiu   a3, a3, 0x0001             # a3 = 00000002
    andi    a3, a3, 0xFFFF             # a3 = 00000002
    addu    t1, s7, a3
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63CF($at)            # 000104A6
    addiu   t7, t1, 0x7FFF             # t7 = 00008007
    sra     v1, v1, 16
    lbu     t7, 0x5C89(t7)             # 0000DC90
    addu    t3, s6, v1
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DC7E4
    sb      t7, 0x6307($at)            # 0000E306
lbl_800DC60C:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v0, $at, lbl_800DC6A8
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      t9, 0x0054($sp)
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, -0x56E0($at)           # 8010A920
    lhu     a3, 0x63CE(t9)             # 000063CE
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   v0, s5, 0x0001             # v0 = 0000000D
    addiu   a3, a3, 0x0001             # a3 = 00000003
    andi    a3, a3, 0xFFFF             # a3 = 00000003
    addu    t6, s7, a3
    addiu   t4, t6, 0x7FFF             # t4 = 00007FFF
    sh      a3, 0x63CF($at)            # 000104A6
    sll     v1, v0, 16
    lbu     t4, 0x5C89(t4)             # 0000DC88
    sra     v1, v1, 16
    addu    t5, s6, v1
    addiu   $at, t5, 0x7FFF            # $at = 00008000
    sb      t4, 0x6307($at)            # 0000E307
    lw      t8, 0x0054($sp)
    or      s5, v0, $zero              # s5 = 0000000D
    addiu   v0, s5, 0x0001             # v0 = 0000000E
    lhu     a3, 0x63CE(t8)             # 000063CE
    sll     v1, v0, 16
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   a3, a3, 0x0001             # a3 = 00000004
    andi    a3, a3, 0xFFFF             # a3 = 00000004
    addu    t1, s7, a3
    addiu   t7, t1, 0x7FFF             # t7 = 00008007
    sh      a3, 0x63CF($at)            # 000104A6
    sra     v1, v1, 16
    lbu     t7, 0x5C89(t7)             # 0000DC90
    addu    t3, s6, v1
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DC7E4
    sb      t7, 0x6307($at)            # 0000E306
lbl_800DC6A8:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_800DC6C0
    lw      t2, 0x0054($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    bnel    v0, $at, lbl_800DC708
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_800DC6C0:
    lhu     a3, 0x63CE(t2)             # 000063CF
    addiu   v0, s5, 0x0001             # v0 = 0000000E
    sll     v1, v0, 16
    addiu   a3, a3, 0x0001             # a3 = 00000005
    andi    a3, a3, 0xFFFF             # a3 = 00000005
    addu    t9, s7, a3
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63CF($at)            # 000104A6
    addiu   t6, t9, 0x7FFF             # t6 = 00007FFF
    sra     v1, v1, 16
    lbu     t4, 0x5C89(t6)             # 0000DC88
    addu    t5, s6, v1
    addiu   $at, t5, 0x7FFF            # $at = 00008000
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DC7E4
    sb      t4, 0x6307($at)            # 0000E307
    addiu   $at, $zero, 0x0012         # $at = 00000012
lbl_800DC708:
    bne     v0, $at, lbl_800DC794
    lw      t8, 0x0054($sp)
    lhu     a3, 0x63CE(t8)             # 000063CE
    addiu   v0, s5, 0x0001             # v0 = 0000000E
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   a3, a3, 0x0001             # a3 = 00000006
    andi    a3, a3, 0xFFFF             # a3 = 00000006
    addu    t1, s7, a3
    addiu   t7, t1, 0x7FFF             # t7 = 00008007
    sh      a3, 0x63CF($at)            # 000104A6
    sll     v1, v0, 16
    lbu     t7, 0x5C89(t7)             # 0000DC90
    sra     v1, v1, 16
    addu    t3, s6, v1
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    sb      t7, 0x6307($at)            # 0000E306
    lw      t2, 0x0054($sp)
    or      s5, v0, $zero              # s5 = 0000000E
    addiu   v0, s5, 0x0001             # v0 = 0000000F
    lhu     a3, 0x63CE(t2)             # 000063CF
    sll     v1, v0, 16
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    addiu   a3, a3, 0x0001             # a3 = 00000007
    andi    a3, a3, 0xFFFF             # a3 = 00000007
    addu    t9, s7, a3
    addiu   t6, t9, 0x7FFF             # t6 = 00007FFF
    sh      a3, 0x63CF($at)            # 000104A6
    sra     v1, v1, 16
    lbu     t6, 0x5C89(t6)             # 0000DC88
    addu    t4, s6, v1
    addiu   $at, t4, 0x7FFF            # $at = 0000FFFE
    sll     s5, v0, 16
    sra     s5, s5, 16
    b       lbl_800DC7E4
    sb      t6, 0x6307($at)            # 00016305
lbl_800DC794:
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bne     v0, $at, lbl_800DC7AC
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DC7E4
    sb      t5, 0x63E7($at)            # 000104BE
lbl_800DC7AC:
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    bne     v0, $at, lbl_800DC7C4
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DC7E4
    sb      t8, 0x63E7($at)            # 000104BE
lbl_800DC7C4:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     v0, $at, lbl_800DC7E4
    or      a0, s7, $zero              # a0 = 00002200
    addiu   a1, v0, 0xFFE0             # a1 = FFFFFFEF
    andi    a1, a1, 0x00FF             # a1 = 000000EF
    jal     func_8005BCE4
    andi    a2, s4, 0xFFFF             # a2 = 00000E00
    addiu   s4, s4, 0x0080             # s4 = 00000E80
lbl_800DC7E4:
    lw      t1, 0x0054($sp)
lbl_800DC7E8:
    addiu   s5, s5, 0x0001             # s5 = 0000000F
    sll     s5, s5, 16
    lhu     t7, 0x63CE(t1)             # 000063CE
    addiu   $at, s6, 0x7FFF            # $at = 0000A0D7
    sra     s5, s5, 16
    addiu   t3, t7, 0x0001             # t3 = 00000001
    b       lbl_800DB530
    sh      t3, 0x63CF($at)            # 000104A6
lbl_800DC808:
    lw      $ra, 0x003C($sp)
lbl_800DC80C:
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
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_800DC838:
# Display Textbox Inner
# ROM st: message_static & jpn_message_data_static & nes_message_data_static & staff_message_data_static
# A0 = Global Context
# A1 = Text Id
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addu    t7, t7, t6
    lbu     t7, 0x03DC(t7)             # 000103DC
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    bne     t7, $zero, lbl_800DC874
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lhu     t8, 0x13EA(a1)             # 8011B9BA
    sh      t8, 0x13EE(a1)             # 8011B9BE
lbl_800DC874:
    lw      a0, 0x0000(v0)             # 8011BA00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lh      t9, 0x04B2(a0)             # 000004B2
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    bne     t9, $at, lbl_800DC8AC
    nop
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      a0, 0x0000(v0)             # 8011BA00
lbl_800DC8AC:
    lui     t1, 0x8011                 # t1 = 80110000
    addiu   t1, t1, 0xA938             # t1 = 8010A938
    sh      $zero, 0x0000(t1)          # 8010A938
    lh      t3, 0x0000(t1)             # 8010A938
    lui     a2, 0x8011                 # a2 = 80110000
    lui     a3, 0x8011                 # a3 = 80110000
    lhu     v1, 0x0046($sp)
    addiu   a3, a3, 0xA924             # a3 = 8010A924
    addiu   a2, a2, 0xA930             # a2 = 8010A930
    lui     $at, 0x8011                # $at = 80110000
    sb      t3, 0x0000(a2)             # 8010A930
    sb      t3, 0x0000(a3)             # 8010A924
    andi    t4, t3, 0x00FF             # t4 = 00000000
    sh      t4, -0x56BC($at)           # 8010A944
    slti    $at, v1, 0x0500
    bne     $at, $zero, lbl_800DC92C
    slti    $at, v1, 0x0600
    beq     $at, $zero, lbl_800DC92C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sh      t5, 0x0000(t1)             # 8010A938
    addiu   t6, $zero, 0x0055          # t6 = 00000055
    sh      t6, 0x0B06(a0)             # 00000B06
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sh      t7, 0x0B04(t8)             # 00000B04
    lw      t2, 0x0000(v0)             # 8011BA00
    addiu   t3, $zero, 0x0030          # t3 = 00000030
    sh      t9, 0x0B00(t2)             # 00000B00
    lw      t4, 0x0000(v0)             # 8011BA00
    b       lbl_800DC97C
    sh      t3, 0x0496(t4)             # 00000496
lbl_800DC92C:
    lbu     t5, 0x1409(a1)             # 8011B9D9
    addiu   t6, $zero, 0x0058          # t6 = 00000058
    addiu   t3, $zero, 0x004B          # t3 = 0000004B
    bnel    t5, $zero, lbl_800DC964
    sh      t3, 0x0B06(a0)             # 00000B06
    sh      t6, 0x0B06(a0)             # 00000B06
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0012          # t7 = 00000012
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sh      t7, 0x0B04(t8)             # 00000B04
    lw      t2, 0x0000(v0)             # 8011BA00
    b       lbl_800DC97C
    sh      t9, 0x0B00(t2)             # 00000B00
    sh      t3, 0x0B06(a0)             # 00000B06
lbl_800DC964:
    lw      t5, 0x0000(v0)             # 8011BA00
    addiu   t4, $zero, 0x000C          # t4 = 0000000C
    addiu   t6, $zero, 0x0041          # t6 = 00000041
    sh      t4, 0x0B04(t5)             # 00000B05
    lw      t7, 0x0000(v0)             # 8011BA00
    sh      t6, 0x0B00(t7)             # 00000B12
lbl_800DC97C:
    addiu   $at, $zero, 0x00C2         # $at = 000000C2
    beq     v1, $at, lbl_800DC994
    lui     v0, 0xF000                 # v0 = F0000000
    addiu   $at, $zero, 0x00FA         # $at = 000000FA
    bne     v1, $at, lbl_800DC9C8
    lw      t0, 0x0040($sp)
lbl_800DC994:
    lw      t8, 0x00A4(a1)             # 8011A674
    lw      t0, 0x0040($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    and     t9, t8, v0
    and     t2, t9, v0
    srl     t3, t2, 28
    addiu   t0, t0, 0x20D8             # t0 = 000020D8
    addu    t5, t0, $at
    addu    t4, v1, t3
    sh      t4, 0x0046($sp)
    andi    v1, t4, 0xFFFF             # v1 = 0000000C
    b       lbl_800DCA40
    sw      t5, 0x001C($sp)
lbl_800DC9C8:
    addiu   t0, t0, 0x20D8             # t0 = 000041B0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t6, t0, $at
    sw      t6, 0x001C($sp)
    lhu     v0, 0x62F8(t6)             # 00006339
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    lui     t8, 0x8010                 # t8 = 80100000
    bne     v0, $at, lbl_800DCA18
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t8, -0x7408(t8)            # 800F8BF8
    lbu     t9, -0x7340(t9)            # 800F8CC0
    lhu     t3, 0x009C(a1)             # 8011A66C
    addiu   t5, $zero, 0x000B          # t5 = 0000000B
    sllv    t2, t8, t9
    and     t4, t2, t3
    beql    t4, $zero, lbl_800DCA1C
    addiu   $at, $zero, 0x00B4         # $at = 000000B4
    sh      t5, 0x0046($sp)
    b       lbl_800DCA40
    addiu   v1, $zero, 0x000B          # v1 = 0000000B
lbl_800DCA18:
    addiu   $at, $zero, 0x00B4         # $at = 000000B4
lbl_800DCA1C:
    bnel    v0, $at, lbl_800DCA44
    addiu   $at, $zero, 0x4077         # $at = 00004077
    lhu     t6, 0x0EE6(a1)             # 8011B4B6
    addiu   t8, $zero, 0x00B5          # t8 = 000000B5
    andi    t7, t6, 0x0040             # t7 = 00000040
    beql    t7, $zero, lbl_800DCA44
    addiu   $at, $zero, 0x4077         # $at = 00004077
    sh      t8, 0x0046($sp)
    addiu   v1, $zero, 0x00B5          # v1 = 000000B5
lbl_800DCA40:
    addiu   $at, $zero, 0x4077         # $at = 00004077
lbl_800DCA44:
    beq     v1, $at, lbl_800DCA70
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   $at, $zero, 0x407A         # $at = 0000407A
    beq     v1, $at, lbl_800DCA70
    addiu   $at, $zero, 0x2061         # $at = 00002061
    beq     v1, $at, lbl_800DCA70
    addiu   $at, $zero, 0x5035         # $at = 00005035
    beq     v1, $at, lbl_800DCA70
    addiu   $at, $zero, 0x40AC         # $at = 000040AC
    bnel    v1, $at, lbl_800DCA98
    lhu     t9, 0x0046($sp)
lbl_800DCA70:
    sw      v1, 0x0028($sp)
    jal     func_8006D8E0
    sw      t0, 0x002C($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lui     t1, 0x8011                 # t1 = 80110000
    addiu   t1, t1, 0xA938             # t1 = 8010A938
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      v1, 0x0028($sp)
    lw      t0, 0x002C($sp)
    lhu     t9, 0x0046($sp)
lbl_800DCA98:
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sh      t9, 0x62F9($at)            # 0000E2F8
    addiu   $at, $zero, 0x2030         # $at = 00002030
    bnel    v1, $at, lbl_800DCAC0
    lh      t2, 0x0000(t1)             # 8010A938
    sh      $zero, 0x1400(a1)          # 8011B9D0
    sh      $zero, 0x13FE(a1)          # 8011B9CE
    sh      $zero, 0x13FC(a1)          # 8011B9CC
    sh      $zero, 0x13FA(a1)          # 8011B9CA
    lh      t2, 0x0000(t1)             # 8010A938
lbl_800DCAC0:
    lw      a0, 0x0040($sp)
    beql    t2, $zero, lbl_800DCB60
    lbu     t6, 0x1409(a1)             # 8011B9D9
    lhu     a1, 0x0046($sp)
    jal     func_800D6B34
    sw      t0, 0x002C($sp)
    lw      a3, 0x0040($sp)
    lw      t0, 0x002C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      t3, 0x2204(a3)             # 00002204
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   a3, a3, 0x2200             # a3 = 00002200
    sw      t3, 0x6301($at)            # 0000E300
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_800DCB2C
    lw      t4, 0x0000(a3)             # 00002200
    lw      v1, 0x0060(v0)             # 80120060
    or      a0, a3, $zero              # a0 = 00002200
    beql    v1, $zero, lbl_800DCB2C
    lw      t4, 0x0000(a3)             # 00002200
    sw      a3, 0x0028($sp)
    jalr    $ra, v1
    sw      t0, 0x002C($sp)
    lw      a3, 0x0028($sp)
    bne     v0, $zero, lbl_800DCC8C
    lw      t0, 0x002C($sp)
    lw      t4, 0x0000(a3)             # 00000000
lbl_800DCB2C:
    lui     t5, 0x0096                 # t5 = 00960000
    addiu   t5, t5, 0x6000             # t5 = 00966000
    ori     $at, $zero, 0xDC88         # $at = 0000DC88
    lw      a2, 0x0004(a3)             # 00000004
    sw      t0, 0x002C($sp)
    sw      a3, 0x0028($sp)
    addu    a0, a3, $at
    jal     func_80000DF0
    addu    a1, t4, t5
    lw      a3, 0x0028($sp)
    b       lbl_800DCC8C
    lw      t0, 0x002C($sp)
    lbu     t6, 0x1409(a1)             # 00001409
lbl_800DCB60:
    lhu     a1, 0x0046($sp)
    lw      a0, 0x0040($sp)
    bne     t6, $zero, lbl_800DCC04
    nop
    lw      a0, 0x0040($sp)
    lhu     a1, 0x0046($sp)
    jal     func_800D69EC
    sw      t0, 0x002C($sp)
    lw      a3, 0x0040($sp)
    lw      t0, 0x002C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      t7, 0x2204(a3)             # 00002204
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   a3, a3, 0x2200             # a3 = 00002200
    sw      t7, 0x6301($at)            # 0000E300
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_800DCBD4
    lw      t8, 0x0000(a3)             # 00002200
    lw      v1, 0x0064(v0)             # 80120064
    or      a0, a3, $zero              # a0 = 00002200
    beql    v1, $zero, lbl_800DCBD4
    lw      t8, 0x0000(a3)             # 00002200
    sw      a3, 0x0028($sp)
    jalr    $ra, v1
    sw      t0, 0x002C($sp)
    lw      a3, 0x0028($sp)
    bne     v0, $zero, lbl_800DCC8C
    lw      t0, 0x002C($sp)
    lw      t8, 0x0000(a3)             # 00000000
lbl_800DCBD4:
    lui     t9, 0x008F                 # t9 = 008F0000
    addiu   t9, t9, 0xB000             # t9 = 008EB000
    ori     $at, $zero, 0xDC88         # $at = 0000DC88
    lw      a2, 0x0004(a3)             # 00000004
    sw      t0, 0x002C($sp)
    sw      a3, 0x0028($sp)
    addu    a0, a3, $at
    jal     func_80000DF0
    addu    a1, t8, t9
    lw      a3, 0x0028($sp)
    b       lbl_800DCC8C
    lw      t0, 0x002C($sp)
lbl_800DCC04:
    jal     func_800D6A90
    sw      t0, 0x002C($sp)
    lw      a3, 0x0040($sp)
    lw      t0, 0x002C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      t2, 0x2204(a3)             # 00002204
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   a3, a3, 0x2200             # a3 = 00002200
    sw      t2, 0x6301($at)            # 0000E300
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_800DCC60
    lw      t3, 0x0000(a3)             # 00002200
    lw      v1, 0x0068(v0)             # 80120068
    or      a0, a3, $zero              # a0 = 00002200
    beql    v1, $zero, lbl_800DCC60
    lw      t3, 0x0000(a3)             # 00002200
    sw      a3, 0x0028($sp)
    jalr    $ra, v1
    sw      t0, 0x002C($sp)
    lw      a3, 0x0028($sp)
    bne     v0, $zero, lbl_800DCC8C
    lw      t0, 0x002C($sp)
    lw      t3, 0x0000(a3)             # 00000000
lbl_800DCC60:
    lui     t4, 0x0093                 # t4 = 00930000
    addiu   t4, t4, 0xD000             # t4 = 0092D000
    ori     $at, $zero, 0xDC88         # $at = 0000DC88
    lw      a2, 0x0004(a3)             # 00000004
    sw      t0, 0x002C($sp)
    sw      a3, 0x0028($sp)
    addu    a0, a3, $at
    jal     func_80000DF0
    addu    a1, t3, t4
    lw      a3, 0x0028($sp)
    lw      t0, 0x002C($sp)
lbl_800DCC8C:
    lbu     t5, 0x0008(a3)             # 00000008
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   a2, $zero, 0x1000          # a2 = 00001000
    sb      t5, 0x62FD($at)            # 0000E2FC
    lw      t6, 0x001C($sp)
    lbu     t7, 0x62FC(t6)             # 000062FC
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x3188             # t6 = 80113188
    sra     t8, t7,  4
    sb      t8, 0x62FE($at)            # 0000E2FD
    lw      t9, 0x001C($sp)
    lbu     t2, 0x62FC(t9)             # 000062FC
    lui     t9, 0x008E                 # t9 = 008E0000
    addiu   t9, t9, 0x6000             # t9 = 008E6000
    andi    t3, t2, 0x000F             # t3 = 00000000
    sb      t3, 0x62FF($at)            # 0000E2FE
    lw      t4, 0x001C($sp)
    lbu     v0, 0x62FD(t4)             # 000062FD
    slti    $at, v0, 0x0004
    beq     $at, $zero, lbl_800DCDDC
    sll     t5, v0,  1
    addu    v1, t5, t6
    lh      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x62B0(t4)             # 000062B0
    sw      t0, 0x002C($sp)
    sll     t8, t7, 12
    addu    a1, t8, t9
    jal     func_80000DF0
    sw      v1, 0x0028($sp)
    lw      v1, 0x0028($sp)
    lui     t2, 0x8011                 # t2 = 80110000
    addiu   t2, t2, 0x3188             # t2 = 80113188
    bne     v1, t2, lbl_800DCD28
    lw      t0, 0x002C($sp)
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x63FF($at)         # 0000E3FE
    sh      $zero, 0x6401($at)         # 0000E400
    b       lbl_800DCD90
    sh      $zero, 0x6403($at)         # 0000E402
lbl_800DCD28:
    lui     t3, 0x8011                 # t3 = 80110000
    addiu   t3, t3, 0x318A             # t3 = 8011318A
    bne     v1, t3, lbl_800DCD58
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   t4, $zero, 0x0046          # t4 = 00000046
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sh      t4, 0x63FF($at)            # 0000E3FE
    sh      t5, 0x6401($at)            # 0000E400
    b       lbl_800DCD90
    sh      t6, 0x6403($at)            # 0000E402
lbl_800DCD58:
    addiu   t7, t7, 0x318C             # t7 = 8011318C
    bne     v1, t7, lbl_800DCD80
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    sh      $zero, 0x63FF($at)         # 0000E3FE
    sh      t8, 0x6401($at)            # 0000E400
    b       lbl_800DCD90
    sh      t9, 0x6403($at)            # 0000E402
lbl_800DCD80:
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sh      t2, 0x63FF($at)            # 0000E3FE
    sh      $zero, 0x6401($at)         # 0000E400
    sh      $zero, 0x6403($at)         # 0000E402
lbl_800DCD90:
    lui     t3, 0x8011                 # t3 = 80110000
    addiu   t3, t3, 0x318A             # t3 = 8011318A
    bne     v1, t3, lbl_800DCDB0
    lui     t5, 0x8011                 # t5 = 80110000
    addiu   t4, $zero, 0x00E6          # t4 = 000000E6
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    b       lbl_800DCDD4
    sh      t4, 0x6405($at)            # 0000E404
lbl_800DCDB0:
    addiu   t5, t5, 0x318E             # t5 = 8011318E
    bne     v1, t5, lbl_800DCDCC
    addiu   t7, $zero, 0x00AA          # t7 = 000000AA
    addiu   t6, $zero, 0x00B4          # t6 = 000000B4
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    b       lbl_800DCDD4
    sh      t6, 0x6405($at)            # 0000E404
lbl_800DCDCC:
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sh      t7, 0x6405($at)            # 0000E404
lbl_800DCDD4:
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sh      $zero, 0x6407($at)         # 0000E406
lbl_800DCDDC:
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x63E5($at)         # 0000E3E4
    lw      t8, 0x001C($sp)
    lbu     v0, 0x63E4(t8)             # 000063EE
    sh      $zero, 0x63D3($at)         # 0000E3D2
    sh      v0, 0x63D7($at)            # 0000E3D6
    sb      v0, 0x63E7($at)            # 0000E3E6
    lw      t9, 0x001C($sp)
    lhu     v0, 0x63D2(t9)             # 00006404
    sh      v0, 0x63D1($at)            # 0000E3D0
    sh      v0, 0x63CF($at)            # 0000E3CE
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800DCE14:
# Display Text Box
# A0 = Global Context
# A1 = Text Id
# A2 = Z-Targeted? Actor*
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    ori     t6, $zero, 0xFFFF          # t6 = 0000FFFF
    sh      t6, 0x04C8($at)            # 000104C8
    jal     func_800DC838
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      t7, 0x0020($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   v0, a0, 0x20D8             # v0 = 000020D8
    addiu   $at, v0, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    sb      $zero, 0x63E8($at)         # 000104BF
    sh      $zero, 0x63E9($at)         # 000104C0
    sw      t7, 0x6409($at)            # 000104E0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      $zero, 0x04C6($at)         # 000104C6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800DCE80:
# Dialog yes/no response?
# a1 = Response Text ID
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a1, 0x0044($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sw      $zero, 0x03D8($at)         # 000103D8
    jal     func_800DC838
    sw      a0, 0x0040($sp)
    lw      a0, 0x0040($sp)
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   v0, a0, 0x20D8             # v0 = 000020D8
    addiu   $at, v0, 0x7FFF            # $at = 0000A0D7
    sb      $zero, 0x6305($at)         # 000103DC
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a2, v0, $at
    lh      t6, 0x6404(a2)             # 00006404
    addiu   $at, v0, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
    sb      t8, 0x63E8($at)            # 000104BF
    sh      $zero, 0x63E9($at)         # 000104C0
    sh      t6, 0x6407($at)            # 000104DE
    lhu     v1, 0x63E8(a2)             # 000063E8
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x63E3($at)            # 000104BA
    lui     t0, 0x8012                 # t0 = 80120000
    sh      v1, 0x63D3($at)            # 000104AA
    sh      v1, 0x63D1($at)            # 000104A8
    sh      v1, 0x63CF($at)            # 000104A6
    sb      v1, 0x63E5($at)            # 000104BC
    lw      t0, -0x4600(t0)            # 8011BA00
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, a0
    lh      t1, 0x04D2(t0)             # 801204D2
    bnel    t1, $zero, lbl_800DCF3C
    lh      t3, 0x6404(a2)             # 00006404
    lh      t2, 0x06EA(t2)             # 000106EA
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    bnel    t2, $zero, lbl_800DCF3C
    lh      t3, 0x6404(a2)             # 00006404
    sw      v0, 0x0020($sp)
    jal     func_80071E6C
    sw      a2, 0x001C($sp)
    lw      v0, 0x0020($sp)
    lw      a2, 0x001C($sp)
    lh      t3, 0x6404(a2)             # 00006404
lbl_800DCF3C:
    addiu   $at, v0, 0x7FFF            # $at = 00007FFF
    sh      t3, 0x6407($at)            # 0000E406
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800DCF50:
# Something related to song playback?
# A0 = Global Context
# A1 = s16 ?
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0xA948             # v1 = 8010A948
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    andi    a3, a1, 0xFFFF             # a3 = 00000000
    sh      $zero, 0x0000(v1)          # 8010A948
    lh      v0, 0x0000(v1)             # 8010A948
    lui     a1, 0x8012                 # a1 = 80120000
    lui     a2, 0x8010                 # a2 = 80100000
    slti    $at, v0, 0x000C
    beq     $at, $zero, lbl_800DCFE4
    lui     t5, 0x8012                 # t5 = 80120000
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0x3190             # a0 = 80113190
    lw      a1, -0x598C(a1)            # 8011A674
    addiu   a2, a2, 0x8BF0             # a2 = 800F8BF0
    sll     t6, v0,  2
lbl_800DCFA0:
    addu    t7, a2, t6
    lw      t8, 0x0018(t7)             # 00000018
    sll     t1, v0,  1
    addu    t2, a0, t1
    and     t9, t8, a1
    beql    t9, $zero, lbl_800DCFD0
    addiu   v0, v0, 0x0001             # v0 = 00000001
    lhu     t0, 0x0000(v1)             # 8010A948
    lhu     t3, 0x0000(t2)             # 00000000
    or      t4, t0, t3                 # t4 = 00000000
    sh      t4, 0x0000(v1)             # 8010A948
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_800DCFD0:
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x000C
    bnel    $at, $zero, lbl_800DCFA0
    sll     t6, v0,  2
lbl_800DCFE4:
    lbu     t5, -0x476B(t5)            # 8011B895
    lui     a2, 0x8010                 # a2 = 80100000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a2, a2, 0x8BF0             # a2 = 800F8BF0
    beq     t5, $zero, lbl_800DD008
    lw      a1, -0x598C(a1)            # 8011A674
    lhu     t6, 0x0000(v1)             # 8010A948
    ori     t7, t6, 0x1000             # t7 = 00001000
    sh      t7, 0x0000(v1)             # 8010A948
lbl_800DD008:
    lw      t8, 0x003C(a2)             # 800F8C2C
    lui     $at, 0x8011                # $at = 80110000
    sh      a3, 0x0056($sp)
    and     t9, t8, a1
    jal     func_800C3800
    sh      t9, -0x56C0($at)           # 8010A940
    lw      s0, 0x0050($sp)
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   a0, a0, 0xA928             # a0 = 8010A928
    addiu   s0, s0, 0x20D8             # s0 = 000020D8
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    sh      $zero, 0x0000(a0)          # 8010A928
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v1, s0, $at
    lw      t2, 0x62B8(v1)             # 000062B8
    lh      t1, 0x0000(a0)             # 8010A928
    lui     $at, 0x8011                # $at = 80110000
    sb      t1, 0x0002(t2)             # 00000002
    sh      $zero, -0x56D4($at)        # 8010A92C
    jal     func_800D5EF0
    sw      v1, 0x002C($sp)
    lhu     a3, 0x0056($sp)
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sb      t0, 0x6411($at)            # 000104E8
    lw      t3, 0x002C($sp)
    or      v1, a3, $zero              # v1 = 00000000
    andi    a1, a3, 0xFFFF             # a1 = 00000000
    lbu     v0, 0x6410(t3)             # 00006410
    sh      v0, 0x63F3($at)            # 000104CA
    lui     $at, 0x8011                # $at = 80110000
    sh      v0, -0x56C4($at)           # 8010A93C
    slti    $at, a3, 0x0893
    bne     $at, $zero, lbl_800DD0AC
    sh      $zero, 0x0042($sp)
    lw      a0, 0x0050($sp)
    jal     func_800DC838
    sw      v1, 0x0030($sp)
    b       lbl_800DD1B0
    lw      v1, 0x0030($sp)
lbl_800DD0AC:
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    bne     v1, $at, lbl_800DD0D4
    addiu   a1, $zero, 0x086D          # a1 = 0000086D
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63F1($at)            # 000104C8
    sw      v1, 0x0030($sp)
    jal     func_800DC838
    lw      a0, 0x0050($sp)
    b       lbl_800DD1B0
    lw      v1, 0x0030($sp)
lbl_800DD0D4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_800DD0E8
    slti    $at, v1, 0x0022
    bne     $at, $zero, lbl_800DD16C
    addiu   t5, $zero, 0x0001          # t5 = 00000001
lbl_800DD0E8:
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63F1($at)            # 000104C8
    slti    $at, v1, 0x0022
    bne     $at, $zero, lbl_800DD134
    slti    $at, v1, 0x0028
    beq     $at, $zero, lbl_800DD134
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      v1, 0x0030($sp)
    lw      v1, 0x0030($sp)
lbl_800DD134:
    addiu   $at, $zero, 0x002D         # $at = 0000002D
    bne     v1, $at, lbl_800DD158
    lw      a0, 0x0050($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    jal     func_800DC838
    sw      v1, 0x0030($sp)
    b       lbl_800DD1B0
    lw      v1, 0x0030($sp)
lbl_800DD158:
    addiu   a1, $zero, 0x086E          # a1 = 0000086E
    jal     func_800DC838
    sw      v1, 0x0030($sp)
    b       lbl_800DD1B0
    lw      v1, 0x0030($sp)
lbl_800DD16C:
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sh      a3, 0x63F1($at)            # 000104C8
    slti    $at, v1, 0x000F
    bne     $at, $zero, lbl_800DD198
    sh      t5, 0x0042($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x086D          # a1 = 0000086D
    jal     func_800DC838
    sw      v1, 0x0030($sp)
    b       lbl_800DD1B0
    lw      v1, 0x0030($sp)
lbl_800DD198:
    addiu   a1, v1, 0x086E             # a1 = 0000086E
    andi    a1, a1, 0xFFFF             # a1 = 0000086E
    lw      a0, 0x0050($sp)
    jal     func_800DC838
    sw      v1, 0x0030($sp)
    lw      v1, 0x0030($sp)
lbl_800DD1B0:
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      $zero, 0x6409($at)         # 000104E0
    sh      $zero, 0x63E9($at)         # 000104C0
    lw      t6, 0x0050($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v0, 0x8012                 # v0 = 80120000
    addu    $at, $at, t6
    addiu   v0, v0, 0xBA00             # v0 = 8011BA00
    sh      $zero, 0x04C6($at)         # 000104C6
    lw      t8, 0x0000(v0)             # 8011BA00
    addiu   t7, $zero, 0x0022          # t7 = 00000022
    addiu   t9, $zero, 0x008E          # t9 = 0000008E
    sh      t7, 0x0F14(t8)             # 00000F14
    lw      t1, 0x0000(v0)             # 8011BA00
    addiu   a0, $zero, 0x0200          # a0 = 00000200
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sh      t9, 0x0F16(t1)             # 00000F16
    lw      t2, 0x0000(v0)             # 8011BA00
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sh      a0, 0x04B4(t2)             # 000004B4
    lw      t0, 0x0000(v0)             # 8011BA00
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      a0, 0x04B6(t0)             # 000004B6
    lw      t4, 0x0000(v0)             # 8011BA00
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    sh      t3, 0x04C0(t4)             # 000004C0
    lw      t6, 0x0000(v0)             # 8011BA00
    sh      t5, 0x04C2(t6)             # 000004C2
    sb      $zero, 0x63E8($at)         # 000104BF
    lw      t7, 0x0000(v0)             # 8011BA00
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    lh      t8, 0x04AC(t7)             # 000004CE
    beql    t8, $zero, lbl_800DD254
    sb      t1, 0x63E8($at)            # 000104BF
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DD258
    sb      t9, 0x6305($at)            # 000103DC
    sb      t1, 0x63E8($at)            # 000104BF
lbl_800DD254:
    sb      t2, 0x6305($at)            # 000103DC
lbl_800DD258:
    lw      t0, 0x002C($sp)
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    lh      t3, 0x6404(t0)             # 00006404
    sh      t3, 0x6407($at)            # 000104DE
    lh      t4, 0x0042($sp)
    lw      a0, 0x0050($sp)
    bnel    t4, $zero, lbl_800DD2A8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80071FF8
    sw      v1, 0x0030($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    lhu     t5, -0x4646(t5)            # 8011B9BA
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    jal     func_8006D8E0
    sh      t5, 0x0042($sp)
    lh      t6, 0x0042($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      v1, 0x0030($sp)
    sh      t6, -0x4646($at)           # 8011B9BA
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800DD2A8:
    beq     v1, $at, lbl_800DD2B8
    addiu   t7, $zero, 0x0009          # t7 = 00000009
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bne     v1, $at, lbl_800DD2CC
lbl_800DD2B8:
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    addiu   t8, $zero, 0x0063          # t8 = 00000063
    sb      t7, 0x6305($at)            # 000103DC
    b       lbl_800DD3A4
    sb      t8, 0x62FE($at)            # 000103D5
lbl_800DD2CC:
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    bne     v1, $at, lbl_800DD2EC
    addiu   t9, $zero, 0x0031          # t9 = 00000031
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sb      t9, 0x6305($at)            # 000103DC
    b       lbl_800DD3A4
    sb      t1, 0x62FE($at)            # 000103D5
lbl_800DD2EC:
    addiu   $at, $zero, 0x002E         # $at = 0000002E
    bnel    v1, $at, lbl_800DD31C
    addiu   $at, $zero, 0x002B         # $at = 0000002B
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800DA30C
    lw      a0, 0x0050($sp)
    addiu   t2, $zero, 0x0029          # t2 = 00000029
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DD3A4
    sb      t2, 0x6305($at)            # 000103DC
    addiu   $at, $zero, 0x002B         # $at = 0000002B
lbl_800DD31C:
    bnel    v1, $at, lbl_800DD3A8
    lw      a0, 0x0050($sp)
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C3830
    nop
    lui     a0, 0x8011                 # a0 = 80110000
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   a0, a0, 0xA92C             # a0 = 8010A92C
    sh      $zero, 0x0000(a0)          # 8010A92C
    lh      t0, 0x0000(a0)             # 8010A92C
    lui     v1, 0x8011                 # v1 = 80110000
    lw      t4, 0x002C($sp)
    addiu   v1, v1, 0xA928             # v1 = 8010A928
    sh      t0, 0x0000(v1)             # 8010A928
    lh      t3, 0x0000(v1)             # 8010A928
    lw      t5, 0x62B8(t4)             # 000062B8
    jal     func_800D5EF0
    sb      t3, 0x0002(t5)             # 00000002
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   $at, s0, 0x7FFF            # $at = 0000A0D7
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    sb      t6, 0x63E8($at)            # 000104BF
    sb      t7, 0x6305($at)            # 000103DC
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x4646($at)        # 8011B9BA
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_800DD3A4:
    lw      a0, 0x0050($sp)
lbl_800DD3A8:
    or      s0, $zero, $zero           # s0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, a0, 0x2200             # a0 = 00002200
    sw      a0, 0x0034($sp)
    lw      a0, 0x0034($sp)
lbl_800DD3BC:
    ori     a1, $zero, 0x8140          # a1 = 00008140
    andi    a2, s0, 0xFFFF             # a2 = 00000000
    jal     func_8005BC90
    sh      v0, 0x0046($sp)
    lh      v0, 0x0046($sp)
    addiu   s0, s0, 0x0080             # s0 = 00000080
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0030
    bnel    $at, $zero, lbl_800DD3BC
    lw      a0, 0x0034($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_800DD400:
# Something related to song playback?
# (Wrapper for 800DCF50)
# A0 = Global Context
# A1 = Some Id?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    jal     func_800DCF50
    sh      $zero, 0x04E6($at)         # 000104E6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800DD430:
# Something related to song playback?
# (Wrapper for 800DCF50)
# A0 = Global Context
# A1 = Some Id?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_800DCF50
    sh      t6, 0x04E6($at)            # 000104E6
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800DD464:
# Dialog Related, Possibly gets dialog state
# A0 = Dialog Engine Struct
# V0 = Dialog state? (0 if no dialog?)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v0, a0, $at
    lw      t6, 0x6300(v0)             # 00006300
    bnel    t6, $zero, lbl_800DD484
    lbu     v1, 0x6304(v0)             # 00006304
    b       lbl_800DD578
    or      v1, $zero, $zero           # v1 = 00000000
    lbu     v1, 0x6304(v0)             # 00006304
lbl_800DD484:
    addiu   $at, $zero, 0x0035         # $at = 00000035
    bnel    v1, $at, lbl_800DD500
    addiu   $at, $zero, 0x0034         # $at = 00000034
    lbu     v1, 0x63E4(v0)             # 000063E4
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bnel    v1, $at, lbl_800DD4AC
    addiu   $at, $zero, 0x0010         # $at = 00000010
    b       lbl_800DD578
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x0010         # $at = 00000010
lbl_800DD4AC:
    beq     v1, $at, lbl_800DD4BC
    addiu   $at, $zero, 0x0020         # $at = 00000020
    bnel    v1, $at, lbl_800DD4C8
    addiu   $at, $zero, 0x0050         # $at = 00000050
lbl_800DD4BC:
    b       lbl_800DD578
    addiu   v1, $zero, 0x0004          # v1 = 00000004
    addiu   $at, $zero, 0x0050         # $at = 00000050
lbl_800DD4C8:
    beq     v1, $at, lbl_800DD4D8
    addiu   $at, $zero, 0x0040         # $at = 00000040
    bnel    v1, $at, lbl_800DD4E4
    addiu   $at, $zero, 0x0060         # $at = 00000060
lbl_800DD4D8:
    b       lbl_800DD578
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    addiu   $at, $zero, 0x0060         # $at = 00000060
lbl_800DD4E4:
    bne     v1, $at, lbl_800DD4F4
    nop
    b       lbl_800DD578
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_800DD4F4:
    b       lbl_800DD578
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    addiu   $at, $zero, 0x0034         # $at = 00000034
lbl_800DD500:
    bnel    v1, $at, lbl_800DD514
    addiu   $at, $zero, 0x001A         # $at = 0000001A
    b       lbl_800DD578
    addiu   v1, $zero, 0x000A          # v1 = 0000000A
    addiu   $at, $zero, 0x001A         # $at = 0000001A
lbl_800DD514:
    bnel    v1, $at, lbl_800DD528
    lhu     t7, 0x63EE(v0)             # 000063EE
    b       lbl_800DD578
    addiu   v1, $zero, 0x0007          # v1 = 00000007
    lhu     t7, 0x63EE(v0)             # 000063EE
lbl_800DD528:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t7, $at, lbl_800DD540
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    b       lbl_800DD578
    addiu   v1, $zero, 0x0008          # v1 = 00000008
    addiu   $at, $zero, 0x001F         # $at = 0000001F
lbl_800DD540:
    bnel    v1, $at, lbl_800DD554
    addiu   $at, $zero, 0x0036         # $at = 00000036
    b       lbl_800DD578
    addiu   v1, $zero, 0x0009          # v1 = 00000009
    addiu   $at, $zero, 0x0036         # $at = 00000036
lbl_800DD554:
    bnel    v1, $at, lbl_800DD578
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    lbu     t8, 0x63E7(v0)             # 000063E7
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_800DD578
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    b       lbl_800DD578
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_800DD578:
    or      v0, v1, $zero              # v0 = 00000003
    jr      $ra
    nop


func_800DD584:
# parameter_static texture: Ocarina Clef. Draws Ocarina staff?
    or      a2, a0, $zero              # a2 = 00000000
    sw      a1, 0x0004($sp)
    lui     t1, 0xE700                 # t1 = E7000000
    lw      t6, 0x0004($sp)
    lui     t7, 0xFA00                 # t7 = FA000000
    lui     $at, 0x0001                # $at = 00010000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a3, v0, $zero              # a3 = 00000008
    sw      t7, 0x0000(a3)             # 00000008
    addu    t0, a2, $at
    lh      t9, 0x04D6(t0)             # 000004D6
    lh      t7, 0x04D8(t0)             # 000004D8
    addiu   v0, v0, 0x0008             # v0 = 00000010
    sll     t6, t9, 24
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t8, 16
    lh      t8, 0x04DA(t0)             # 000004DA
    or      t7, t6, t9                 # t7 = 00000000
    lui     t3, 0xE400                 # t3 = E4000000
    andi    t6, t8, 0x00FF             # t6 = 00000000
    sll     t9, t6,  8
    lh      t6, 0x04DE(t0)             # 000004DE
    or      t8, t7, t9                 # t8 = 00000000
    lui     t4, 0xE100                 # t4 = E1000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    or      t9, t8, t7                 # t9 = 00000000
    sw      t9, 0x0004(a3)             # 0000000C
    lbu     t6, 0x03D5(t0)             # 000003D5
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    a0, a2, $at
    beq     t6, $zero, lbl_800DD624
    lui     t5, 0xF100                 # t5 = F1000000
    lbu     v1, 0x62FD(a0)             # 000062FD
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t2, 0xF200                 # t2 = F2000000
    bne     v1, $at, lbl_800DD6E0
lbl_800DD624:
    or      a1, v0, $zero              # a1 = 00000010
    lui     t8, 0xFD90                 # t8 = FD900000
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    a0, a2, $at
    sw      t8, 0x0000(a1)             # 00000010
    lw      t7, 0x62B0(a0)             # 000062B0
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      a3, v0, $zero              # a3 = 00000018
    sw      t7, 0x0004(a1)             # 00000014
    lui     t6, 0x0700                 # t6 = 07000000
    ori     t6, t6, 0x0170             # t6 = 07000170
    lui     t9, 0xF590                 # t9 = F5900000
    sw      t9, 0x0000(a3)             # 00000018
    sw      t6, 0x0004(a3)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      t0, v0, $zero              # t0 = 00000020
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(t0)             # 00000020
    sw      $zero, 0x0004(t0)          # 00000024
    addiu   v0, v0, 0x0008             # v0 = 00000028
    or      t2, v0, $zero              # t2 = 00000028
    lui     t9, 0x077F                 # t9 = 077F0000
    ori     t9, t9, 0xF100             # t9 = 077FF100
    lui     t7, 0xF300                 # t7 = F3000000
    sw      t7, 0x0000(t2)             # 00000028
    sw      t9, 0x0004(t2)             # 0000002C
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      v1, v0, $zero              # v1 = 00000030
    sw      t1, 0x0000(v1)             # 00000030
    sw      $zero, 0x0004(v1)          # 00000034
    addiu   v0, v0, 0x0008             # v0 = 00000038
    lui     t2, 0xF200                 # t2 = F2000000
    or      a1, v0, $zero              # a1 = 00000038
    lui     t6, 0xF580                 # t6 = F5800000
    ori     t6, t6, 0x1000             # t6 = F5801000
    addiu   t8, $zero, 0x0170          # t8 = 00000170
    sw      t8, 0x0004(a1)             # 0000003C
    sw      t6, 0x0000(a1)             # 00000038
    addiu   v0, v0, 0x0008             # v0 = 00000040
    or      a2, v0, $zero              # a2 = 00000040
    lui     t7, 0x001F                 # t7 = 001F0000
    ori     t7, t7, 0xC0FC             # t7 = 001FC0FC
    sw      t7, 0x0004(a2)             # 00000044
    sw      t2, 0x0000(a2)             # 00000040
    addiu   v0, v0, 0x0008             # v0 = 00000048
    b       lbl_800DD7D0
    nop
lbl_800DD6E0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_800DD70C
    lui     t8, 0xFB00                 # t8 = FB000000
    or      v1, v0, $zero              # v1 = 00000048
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sw      t6, 0x0004(v1)             # 0000004C
    sw      t9, 0x0000(v1)             # 00000048
    addiu   v0, v0, 0x0008             # v0 = 00000050
    b       lbl_800DD728
    or      a1, v0, $zero              # a1 = 00000050
lbl_800DD70C:
    or      v1, v0, $zero              # v1 = 00000050
    lui     t7, 0x3214                 # t7 = 32140000
    ori     t7, t7, 0x00FF             # t7 = 321400FF
    sw      t7, 0x0004(v1)             # 00000054
    sw      t8, 0x0000(v1)             # 00000050
    addiu   v0, v0, 0x0008             # v0 = 00000058
    or      a1, v0, $zero              # a1 = 00000058
lbl_800DD728:
    lui     t9, 0xFD70                 # t9 = FD700000
    sw      t9, 0x0000(a1)             # 00000058
    lw      t6, 0x62B0(a0)             # 000062B0
    addiu   v0, v0, 0x0008             # v0 = 00000060
    or      a2, v0, $zero              # a2 = 00000060
    sw      t6, 0x0004(a1)             # 0000005C
    lui     t7, 0x0704                 # t7 = 07040000
    ori     t7, t7, 0x0170             # t7 = 07040170
    lui     t8, 0xF570                 # t8 = F5700000
    sw      t8, 0x0000(a2)             # 00000060
    sw      t7, 0x0004(a2)             # 00000064
    addiu   v0, v0, 0x0008             # v0 = 00000068
    or      a3, v0, $zero              # a3 = 00000068
    lui     t9, 0xE600                 # t9 = E6000000
    sw      t9, 0x0000(a3)             # 00000068
    sw      $zero, 0x0004(a3)          # 0000006C
    addiu   v0, v0, 0x0008             # v0 = 00000070
    or      t0, v0, $zero              # t0 = 00000070
    lui     t8, 0x077F                 # t8 = 077F0000
    ori     t8, t8, 0xF100             # t8 = 077FF100
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(t0)             # 00000070
    sw      t8, 0x0004(t0)             # 00000074
    addiu   v0, v0, 0x0008             # v0 = 00000078
    or      v1, v0, $zero              # v1 = 00000078
    sw      t1, 0x0000(v1)             # 00000078
    sw      $zero, 0x0004(v1)          # 0000007C
    addiu   v0, v0, 0x0008             # v0 = 00000080
    or      a1, v0, $zero              # a1 = 00000080
    lui     t7, 0xF560                 # t7 = F5600000
    lui     t9, 0x0004                 # t9 = 00040000
    ori     t9, t9, 0x0170             # t9 = 00040170
    ori     t7, t7, 0x1000             # t7 = F5601000
    sw      t7, 0x0000(a1)             # 00000080
    sw      t9, 0x0004(a1)             # 00000084
    addiu   v0, v0, 0x0008             # v0 = 00000088
    or      a2, v0, $zero              # a2 = 00000088
    lui     t6, 0x001F                 # t6 = 001F0000
    ori     t6, t6, 0xC0FC             # t6 = 001FC0FC
    sw      t6, 0x0004(a2)             # 0000008C
    sw      t2, 0x0000(a2)             # 00000088
    addiu   v0, v0, 0x0008             # v0 = 00000090
lbl_800DD7D0:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      v1, 0x0000(t0)             # 8011BA00
    or      a1, v0, $zero              # a1 = 00000090
    addiu   v0, v0, 0x0008             # v0 = 00000098
    lh      t8, 0x04C2(v1)             # 0000053A
    lh      t7, 0x0F16(v1)             # 00000F8E
    or      a2, v0, $zero              # a2 = 00000098
    addiu   v0, v0, 0x0008             # v0 = 000000A0
    addu    t9, t8, t7
    sll     t6, t9,  2
    andi    t8, t6, 0x0FFF             # t8 = 000000FC
    lh      t6, 0x04C0(v1)             # 00000538
    lh      t9, 0x0F14(v1)             # 00000F8C
    or      t7, t8, t3                 # t7 = E40000FC
    or      a3, v0, $zero              # a3 = 000000A0
    addu    t8, t9, t6
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000170
    sll     t8, t6, 12
    or      t9, t7, t8                 # t9 = E40000FC
    sw      t9, 0x0000(a1)             # 00000090
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t6, 0x0F16(v1)             # 00000F8E
    lh      t9, 0x0F14(v1)             # 00000F8C
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 000000FC
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000170
    sll     t9, t7, 12
    or      t6, t8, t9                 # t6 = E40000FC
    sw      t6, 0x0004(a1)             # 00000094
    sw      t4, 0x0000(a2)             # 00000098
    sw      $zero, 0x0004(a2)          # 0000009C
    sw      t5, 0x0000(a3)             # 000000A0
    lw      v1, 0x0000(t0)             # 8011BA00
    addiu   v0, v0, 0x0008             # v0 = 000000A8
    lh      t7, 0x04B6(v1)             # 0000052E
    sll     t8, t7,  1
    andi    t9, t8, 0xFFFF             # t9 = 000000FC
    lh      t8, 0x04B4(v1)             # 0000052C
    or      v1, v0, $zero              # v1 = 000000A8
    sll     t6, t8, 17
    or      t7, t9, t6                 # t7 = E40000FC
    sw      t7, 0x0004(a3)             # 000000A4
    lbu     t8, 0x62FD(a0)             # 000062FD
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t9, 0xFC61                 # t9 = FC610000
    bne     t8, $at, lbl_800DDA14
    ori     t9, t9, 0x96C3             # t9 = FC6196C3
    addiu   v0, v0, 0x0008             # v0 = 000000B0
    sw      t1, 0x0000(v1)             # 000000A8
    sw      $zero, 0x0004(v1)          # 000000AC
    or      a0, v0, $zero              # a0 = 000000B0
    lui     t6, 0xFF2F                 # t6 = FF2F0000
    ori     t6, t6, 0xFFFF             # t6 = FF2FFFFF
    sw      t6, 0x0004(a0)             # 000000B4
    sw      t9, 0x0000(a0)             # 000000B0
    addiu   v0, v0, 0x0008             # v0 = 000000B8
    or      a1, v0, $zero              # a1 = 000000B8
    lui     t8, 0xFF64                 # t8 = FF640000
    ori     t8, t8, 0x00FF             # t8 = FF6400FF
    lui     t7, 0xFA00                 # t7 = FA000000
    sw      t7, 0x0000(a1)             # 000000B8
    sw      t8, 0x0004(a1)             # 000000BC
    addiu   v0, v0, 0x0008             # v0 = 000000C0
    or      a2, v0, $zero              # a2 = 000000C0
    lui     t6, 0x0200                 # t6 = 02000000
    addiu   t6, t6, 0x2E40             # t6 = 02002E40
    lui     t9, 0xFD90                 # t9 = FD900000
    sw      t9, 0x0000(a2)             # 000000C0
    sw      t6, 0x0004(a2)             # 000000C4
    addiu   v0, v0, 0x0008             # v0 = 000000C8
    or      a3, v0, $zero              # a3 = 000000C8
    lui     t8, 0x0704                 # t8 = 07040000
    ori     t8, t8, 0x0100             # t8 = 07040100
    lui     t7, 0xF590                 # t7 = F5900000
    sw      t7, 0x0000(a3)             # 000000C8
    sw      t8, 0x0004(a3)             # 000000CC
    addiu   v0, v0, 0x0008             # v0 = 000000D0
    or      v1, v0, $zero              # v1 = 000000D0
    lui     t9, 0xE600                 # t9 = E6000000
    sw      t9, 0x0000(v1)             # 000000D0
    sw      $zero, 0x0004(v1)          # 000000D4
    addiu   v0, v0, 0x0008             # v0 = 000000D8
    or      a0, v0, $zero              # a0 = 000000D8
    lui     t7, 0x0707                 # t7 = 07070000
    ori     t7, t7, 0xF800             # t7 = 0707F800
    lui     t6, 0xF300                 # t6 = F3000000
    sw      t6, 0x0000(a0)             # 000000D8
    sw      t7, 0x0004(a0)             # 000000DC
    addiu   v0, v0, 0x0008             # v0 = 000000E0
    or      a1, v0, $zero              # a1 = 000000E0
    sw      t1, 0x0000(a1)             # 000000E0
    sw      $zero, 0x0004(a1)          # 000000E4
    addiu   v0, v0, 0x0008             # v0 = 000000E8
    or      a2, v0, $zero              # a2 = 000000E8
    lui     t8, 0xF580                 # t8 = F5800000
    lui     t9, 0x0004                 # t9 = 00040000
    ori     t9, t9, 0x0100             # t9 = 00040100
    ori     t8, t8, 0x0200             # t8 = F5800200
    sw      t8, 0x0000(a2)             # 000000E8
    sw      t9, 0x0004(a2)             # 000000EC
    addiu   v0, v0, 0x0008             # v0 = 000000F0
    or      a3, v0, $zero              # a3 = 000000F0
    lui     t6, 0x0003                 # t6 = 00030000
    ori     t6, t6, 0xC07C             # t6 = 0003C07C
    sw      t6, 0x0004(a3)             # 000000F4
    sw      t2, 0x0000(a3)             # 000000F0
    addiu   v0, v0, 0x0008             # v0 = 000000F8
    lw      v1, 0x0000(t0)             # 8011BA00
    or      a0, v0, $zero              # a0 = 000000F8
    addiu   v0, v0, 0x0008             # v0 = 00000100
    lh      t7, 0x0F24(v1)             # 00000FF4
    or      a1, v0, $zero              # a1 = 00000100
    addiu   v0, v0, 0x0008             # v0 = 00000108
    addiu   t8, t7, 0x0020             # t8 = 0707F820
    sll     t9, t8,  2
    lh      t8, 0x0F22(v1)             # 00000FF2
    andi    t6, t9, 0x0FFF             # t6 = 00000100
    or      t7, t6, t3                 # t7 = E4000100
    addiu   t9, t8, 0x0010             # t9 = 0707F830
    sll     t6, t9,  2
    andi    t8, t6, 0x0FFF             # t8 = 00000100
    sll     t9, t8, 12
    or      t6, t7, t9                 # t6 = E707F930
    sw      t6, 0x0000(a0)             # 000000F8
    lw      v1, 0x0000(t0)             # 8011BA00
    or      a2, v0, $zero              # a2 = 00000108
    addiu   v0, v0, 0x0008             # v0 = 00000110
    lh      t8, 0x0F24(v1)             # 00000FF4
    lh      t6, 0x0F22(v1)             # 00000FF2
    sll     t7, t8,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000100
    sll     t8, t6,  2
    andi    t7, t8, 0x0FFF             # t7 = 00000100
    sll     t6, t7, 12
    or      t8, t9, t6                 # t8 = E707F930
    sw      t8, 0x0004(a0)             # 000000FC
    sw      t4, 0x0000(a1)             # 00000100
    sw      $zero, 0x0004(a1)          # 00000104
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    sw      t7, 0x0004(a2)             # 0000010C
    sw      t5, 0x0000(a2)             # 00000108
lbl_800DDA14:
    lw      t9, 0x0004($sp)
    sw      v0, 0x0000(t9)             # 00000100
    jr      $ra
    nop


func_800DDA24:
# Jumped to by 800DDA6C. Everything with 20D8 in it seems like it's dialogue-related...
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    addiu   t6, $zero, 0x00F0          # t6 = 000000F0
    addiu   t7, $zero, 0x0140          # t7 = 00000140
    sw      t7, 0x0024($sp)
    sw      t6, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0020($sp)
    lw      a0, 0x0028($sp)
    jal     func_80091AE0
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    jal     func_80092490
    lw      a0, 0x0028($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800DDA6C:
# Song activation related.
    addiu   $sp, $sp, 0xFEA8           # $sp -= 0x158
    sw      s3, 0x0038($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    sw      a1, 0x015C($sp)
    lw      t6, 0x015C($sp)
    lw      s0, 0x1C44(s3)             # 00001C44
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x0140($sp)
    addiu   t8, t7, 0x0008             # t8 = 00000008
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0008             # t9 = DB060008
    sw      t8, 0x0140($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s3, $at
    sw      t9, 0x0000(t7)             # 00000000
    lw      t6, 0x0620(v0)             # 00000620
    sw      t6, 0x0004(t7)             # 00000004
    lw      t7, 0x0140($sp)
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x001C             # t9 = DB06001C
    addiu   t8, t7, 0x0008             # t8 = 00000008
    sw      t8, 0x0140($sp)
    sw      t9, 0x0000(t7)             # 00000000
    lw      t6, 0x0388(v0)             # 00000388
    sw      t6, 0x0004(t7)             # 00000004
    lw      t7, 0x03D8(v0)             # 000003D8
    beq     t7, $zero, lbl_800E09F0
    addiu   s1, s3, 0x20D8             # s1 = 000020D8
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    s2, s1, $at
    lhu     t8, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x002F         # $at = 0000002F
    beq     t8, $at, lbl_800DDB50
    nop
    lbu     v0, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x0017         # $at = 00000017
    beq     v0, $at, lbl_800DDB50
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_800DDB50
    slti    $at, v0, 0x0036
    beq     $at, $zero, lbl_800DDB50
    nop
    lbu     t9, 0x62FD(s2)             # 000062FD
    slti    $at, t9, 0x0004
    beq     $at, $zero, lbl_800DDB50
    nop
    jal     func_800DDA24
    or      a0, s1, $zero              # a0 = 000020D8
    jal     func_8007E63C
    addiu   a0, $sp, 0x0140            # a0 = FFFFFFE8
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DD584
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DDB50:
    jal     func_8007E63C
    addiu   a0, $sp, 0x0140            # a0 = FFFFFFE8
    lw      t6, 0x0140($sp)
    lui     t8, 0xE200                 # t8 = E2000000
    ori     t8, t8, 0x1E01             # t8 = E2001E01
    addiu   t7, t6, 0x0008             # t7 = 00000008
    sw      t7, 0x0140($sp)
    sw      $zero, 0x0004(t6)          # 00000004
    sw      t8, 0x0000(t6)             # 00000000
    lw      a0, 0x0140($sp)
    lui     t7, 0xFCFF                 # t7 = FCFF0000
    lui     t8, 0xFF2D                 # t8 = FF2D0000
    addiu   t6, a0, 0x0008             # t6 = 00000008
    sw      t6, 0x0140($sp)
    ori     t8, t8, 0xFEFF             # t8 = FF2DFEFF
    ori     t7, t7, 0x97FF             # t7 = FCFF97FF
    sw      t7, 0x0000(a0)             # 00000000
    sw      t8, 0x0004(a0)             # 00000004
    lbu     v0, 0x6304(s2)             # 00006304
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sltiu   $at, t9, 0x0037
    beq     $at, $zero, lbl_800E038C
    sll     t9, t9,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t9
    lw      t9, 0x35E4($at)            # 801135E4
    jr      t9
    nop
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E03A4
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lbu     t6, 0x63E7(s2)             # 000063E7
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t6, $at, lbl_800DDC60
    addiu   a0, s3, 0x2200             # a0 = 00002200
    sw      a0, 0x0090($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800DDBE8:
    lw      a0, 0x0090($sp)
    ori     a1, $zero, 0x8140          # a1 = 00008140
    sh      v1, 0x0138($sp)
    jal     func_8005BC90
    sh      a2, 0x0132($sp)
    lhu     v1, 0x0138($sp)
    lhu     a2, 0x0132($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    slti    $at, v1, 0x0030
    addiu   a2, a2, 0x0080             # a2 = 00000080
    bne     $at, $zero, lbl_800DDBE8
    andi    a2, a2, 0xFFFF             # a2 = 00000080
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DDC50
    lui     t8, 0x8011                 # t8 = 80110000
    lh      t8, -0x56C8(t8)            # 8010A938
    bne     t8, $zero, lbl_800DDC50
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lui     s0, 0x8012                 # s0 = 80120000
    lbu     v0, 0x6304(s2)             # 00006304
    b       lbl_800E03A4
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800DDC50:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lbu     v0, 0x6304(s2)             # 00006304
lbl_800DDC60:
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E03A4
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x4627(t9)            # 8011B9D9
    bne     t9, $zero, lbl_800DDC98
    lui     t6, 0x8011                 # t6 = 80110000
    lh      t6, -0x56C8(t6)            # 8010A938
    bne     t6, $zero, lbl_800DDC98
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DDCA4
    nop
lbl_800DDC98:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DDCA4:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DDCE0
    lui     t8, 0x8011                 # t8 = 80110000
    lh      t8, -0x56C8(t8)            # 8010A938
    bne     t8, $zero, lbl_800DDCE0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DDCEC
    nop
lbl_800DDCE0:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DDCEC:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lw      t0, 0x0000(s0)             # 8011BA00
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lh      a2, 0x0B14(t0)             # 00000B14
    jal     func_800D6E5C
    lh      a3, 0x0B16(t0)             # 00000B16
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C380C
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t6, 0x62B8(s2)             # 000062B8
    lh      t9, 0x0000(t0)             # 8010A928
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t9, 0x0002(t6)             # 00000002
    jal     func_800D5EF0
    sh      t7, 0x04C6($at)            # 000104C6
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    sh      t8, 0x3214($at)            # 80113214
    lbu     v0, 0x6304(s2)             # 00006304
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, 0x3210($at)            # 80113210
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bnel    v0, $at, lbl_800DDE18
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lhu     v0, 0x63F0(s2)             # 000063F0
    beq     v0, $zero, lbl_800DDDA8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800DDDA8
    addiu   $at, $zero, 0x002C         # $at = 0000002C
    beq     v0, $at, lbl_800DDDA8
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_800DDDA8
    slti    $at, v0, 0x0022
    bne     $at, $zero, lbl_800DDDEC
lbl_800DDDA8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800DDDB8
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bne     v0, $at, lbl_800DDDD8
lbl_800DDDB8:
    lui     a0, 0x8011                 # a0 = 80110000
    lhu     a0, -0x56B8(a0)            # 8010A948
    ori     $at, $zero, 0xC000         # $at = 0000C000
    addu    a0, a0, $at
    jal     func_800C2124
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    b       lbl_800DDE08
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
lbl_800DDDD8:
    lui     a0, 0x8011                 # a0 = 80110000
    jal     func_800C2124
    lhu     a0, -0x56B8(a0)            # 8010A948
    b       lbl_800DDE08
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
lbl_800DDDEC:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sllv    a0, t9, v0
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    a0, a0, $at
    jal     func_800C2124
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
lbl_800DDE08:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DDE60
    sb      t6, 0x6305($at)            # 000103DC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_800DDE18:
    bne     v0, $at, lbl_800DDE34
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    sb      t7, 0x63E8($at)            # 000104BF
    b       lbl_800DDE60
    sb      t8, 0x6305($at)            # 000103DC
lbl_800DDE34:
    lhu     t9, 0x63F0(s2)             # 000063F0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   t6, t9, 0x0011             # t6 = 00000011
    sllv    a0, t7, t6
    addu    a0, a0, $at
    jal     func_800C2124
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    addiu   t8, $zero, 0x001B          # t8 = 0000001B
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
lbl_800DDE60:
    lhu     v0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800DDEAC
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_800DDEAC
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x4627(t9)            # 8011B9D9
    bne     t9, $zero, lbl_800DDEA0
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56C8(t7)            # 8010A938
    bne     t7, $zero, lbl_800DDEA0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DDEAC
    nop
lbl_800DDEA0:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DDEAC:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C380C
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DDF30
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      t6, 0x0000(t0)             # 8010A928
    addiu   t8, t6, 0x0001             # t8 = 00000001
    bnel    v1, t8, lbl_800DDF34
    lbu     t9, 0x0001(a1)             # 00000001
    lbu     v0, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      v0, 0x2E8B($at)            # 80112E8B
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      v0, 0x6411($at)            # 000104E8
    lw      t7, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lbu     t6, 0x0002(t7)             # 00000002
    addu    $at, $at, t6
    sb      t9, 0x2E8C($at)            # 80112E8C
    lh      t8, 0x0000(t0)             # 8010A928
    addiu   t7, t8, 0x0001             # t7 = 00000002
    sh      t7, 0x0000(t0)             # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
lbl_800DDF30:
    lbu     t9, 0x0001(a1)             # 00000001
lbl_800DDF34:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t9, 0x63ED($at)            # 000104C4
    lw      t6, 0x62B8(s2)             # 000062B8
    lbu     a2, 0x0001(t6)             # 00000001
    slti    $at, a2, 0x000D
    beq     $at, $zero, lbl_800DE238
    or      v0, a2, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    beq     a0, a2, lbl_800DDF88
    sll     t8, a2,  1
    lui     t7, 0x8011                 # t7 = 80110000
    addu    t7, t7, t8
    lh      t7, 0x2EAC(t7)             # 80112EAC
    lui     t6, 0x8010                 # t6 = 80100000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t9, t7,  2
    addu    t6, t6, t9
    lw      t6, -0x73F8(t6)            # 800F8C08
    lw      t8, -0x598C(t8)            # 8011A674
    and     t7, t6, t8
    beq     t7, $zero, lbl_800DE1F4
lbl_800DDF88:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      a2, 0x63ED($at)            # 000104C4
    sh      a2, 0x63F3($at)            # 000104CA
    lui     $at, 0x8011                # $at = 80110000
    sh      a2, -0x56C4($at)           # 8010A93C
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x000D          # t9 = 0000000D
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    sb      t9, 0x6305($at)            # 000103DC
    sb      t6, 0x63E8($at)            # 000104BF
    lhu     v0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bnel    v0, $at, lbl_800DE088
    addiu   $at, $zero, 0x0028         # $at = 00000028
    lw      t8, 0x62B8(s2)             # 000062B8
    lbu     v0, 0x0001(t8)             # 80120001
    slti    $at, v0, 0x0006
    bne     $at, $zero, lbl_800DDFDC
    nop
    bnel    a0, v0, lbl_800DE024
    or      a0, s3, $zero              # a0 = 00000000
lbl_800DDFDC:
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DE1E4
    sb      t9, 0x6305($at)            # 000103DC
    or      a0, s3, $zero              # a0 = 00000000
lbl_800DE024:
    jal     func_800DCE80
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x62FE($at)            # 000103D5
    sb      t7, 0x63E8($at)            # 000104BF
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    b       lbl_800DE1E4
    nop
    addiu   $at, $zero, 0x0028         # $at = 00000028
lbl_800DE088:
    bnel    v0, $at, lbl_800DE158
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t6, 0x62B8(s2)             # 000062B8
    lbu     t8, 0x0001(t6)             # 00000001
    slti    $at, t8, 0x000C
    beql    $at, $zero, lbl_800DE0F4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x000E          # t6 = 0000000E
    sb      t9, 0x63E8($at)            # 000104BF
    b       lbl_800DE1E4
    sb      t6, 0x6305($at)            # 000103DC
    or      a0, s3, $zero              # a0 = 00000000
lbl_800DE0F4:
    jal     func_800DCE80
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sb      t8, 0x6305($at)            # 000103DC
    sb      t7, 0x62FE($at)            # 000103D5
    sb      t9, 0x63E8($at)            # 000104BF
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    b       lbl_800DE1E4
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_800DE158:
    bne     v0, $at, lbl_800DE1B8
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   t8, $zero, 0x0011          # t8 = 00000011
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sb      t8, 0x6305($at)            # 000103DC
    sb      t7, 0x62FE($at)            # 000103D5
    sb      t9, 0x63E8($at)            # 000104BF
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_800DE1E4
    nop
lbl_800DE1B8:
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_800DE1E4:
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    b       lbl_800DE2C8
    lhu     v0, 0x63F0(s2)             # 000063F0
lbl_800DE1F4:
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DE2C4
    sb      t9, 0x6305($at)            # 000103DC
lbl_800DE238:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_800DE294
    lhu     t9, 0x0020(s3)             # 00000020
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, $zero, 0x000E          # t7 = 0000000E
    sb      t8, 0x63E8($at)            # 000104BF
    b       lbl_800DE2C4
    sb      t7, 0x6305($at)            # 000103DC
    lhu     t9, 0x0020(s3)             # 00000020
lbl_800DE294:
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t6, t9, 0x4000             # t6 = 00000000
    bnel    t6, $at, lbl_800DE2C8
    lhu     v0, 0x63F0(s2)             # 000063F0
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sh      t8, 0x04C6($at)            # 000104C6
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
lbl_800DE2C4:
    lhu     v0, 0x63F0(s2)             # 000063F0
lbl_800DE2C8:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800DE310
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beq     v0, $at, lbl_800DE310
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DE304
    lui     t9, 0x8011                 # t9 = 80110000
    lh      t9, -0x56C8(t9)            # 8010A938
    bne     t9, $zero, lbl_800DE304
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DE310
    nop
lbl_800DE304:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DE310:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     t6, 0x8011                 # t6 = 80110000
    lh      t6, 0x3214(t6)             # 80113214
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   t7, t7, 0x31E0             # t7 = 801131E0
    sll     t8, t6,  2
    subu    t8, t8, t6
    sll     t8, t8,  1
    addu    a1, t8, t7
    lui     a2, 0x8013                 # a2 = 80130000
    lh      a2, -0x41F0(a2)            # 8012BE10
    lh      t9, 0x0000(a1)             # 00000000
    sw      t8, 0x0088($sp)
    subu    v1, a2, t9
    sw      t9, 0x0080($sp)
    bltz    v1, lbl_800DE368
    or      t6, t9, $zero              # t6 = 00000000
    b       lbl_800DE36C
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE368:
    subu    v0, $zero, v1
lbl_800DE36C:
    lui     t2, 0x8011                 # t2 = 80110000
    lh      t2, 0x3210(t2)             # 80113210
    lui     a3, 0x8013                 # a3 = 80130000
    lh      a3, -0x41EC(a3)            # 8012BE14
    div     $zero, v0, t2
    lh      t8, 0x0002(a1)             # 00000002
    mflo    t1
    sll     t1, t1, 16
    bne     t2, $zero, lbl_800DE398
    nop
    break   # 0x01C00
lbl_800DE398:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE3B0
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE3B0
    nop
    break   # 0x01800
lbl_800DE3B0:
    subu    v1, a3, t8
    sra     t1, t1, 16
    sw      t8, 0x0078($sp)
    bltz    v1, lbl_800DE3CC
    or      t7, t8, $zero              # t7 = 00000000
    b       lbl_800DE3D0
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE3CC:
    subu    v0, $zero, v1
lbl_800DE3D0:
    div     $zero, v0, t2
    lui     t0, 0x8013                 # t0 = 80130000
    lh      t0, -0x41EE(t0)            # 8012BE12
    lh      t3, 0x0004(a1)             # 00000004
    mflo    a0
    sll     a0, a0, 16
    bne     t2, $zero, lbl_800DE3F4
    nop
    break   # 0x01C00
lbl_800DE3F4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE40C
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE40C
    nop
    break   # 0x01800
lbl_800DE40C:
    subu    v1, t0, t3
    bltz    v1, lbl_800DE420
    sra     a0, a0, 16
    b       lbl_800DE424
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE420:
    subu    v0, $zero, v1
lbl_800DE424:
    lw      t9, 0x0080($sp)
    slt     $at, a2, t9
    bnel    $at, $zero, lbl_800DE448
    addu    t8, a2, t1
    subu    t6, a2, t1
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE450
    sh      t6, -0x41F0($at)           # 8012BE10
    addu    t8, a2, t1
lbl_800DE448:
    lui     $at, 0x8013                # $at = 80130000
    sh      t8, -0x41F0($at)           # 8012BE10
lbl_800DE450:
    lw      t7, 0x0078($sp)
    slt     $at, a3, t7
    bnel    $at, $zero, lbl_800DE474
    addu    t6, a3, a0
    subu    t9, a3, a0
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE47C
    sh      t9, -0x41EC($at)           # 8012BE14
    addu    t6, a3, a0
lbl_800DE474:
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41EC($at)           # 8012BE14
lbl_800DE47C:
    slt     $at, t0, t3
    bne     $at, $zero, lbl_800DE4D0
    nop
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE498
    nop
    break   # 0x01C00
lbl_800DE498:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE4B0
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE4B0
    nop
    break   # 0x01800
lbl_800DE4B0:
    mflo    t8
    sll     t7, t8, 16
    sra     t9, t7, 16
    subu    t6, t0, t9
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41EE($at)           # 8012BE12
    b       lbl_800DE514
    sw      t3, 0x0070($sp)
lbl_800DE4D0:
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE4E0
    nop
    break   # 0x01C00
lbl_800DE4E0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE4F8
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE4F8
    nop
    break   # 0x01800
lbl_800DE4F8:
    mflo    t8
    sll     t7, t8, 16
    sra     t9, t7, 16
    addu    t6, t0, t9
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41EE($at)           # 8012BE12
    sw      t3, 0x0070($sp)
lbl_800DE514:
    lw      t8, 0x0088($sp)
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   t7, t7, 0x31EC             # t7 = 801131EC
    lui     a2, 0x8013                 # a2 = 80130000
    addu    a1, t8, t7
    lh      t9, 0x0000(a1)             # 00000000
    lh      a2, -0x41EA(a2)            # 8012BE16
    sw      t9, 0x007C($sp)
    subu    v1, a2, t9
    bltz    v1, lbl_800DE548
    or      t6, t9, $zero              # t6 = 00000000
    b       lbl_800DE54C
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE548:
    subu    v0, $zero, v1
lbl_800DE54C:
    div     $zero, v0, t2
    lui     a3, 0x8013                 # a3 = 80130000
    lh      a3, -0x41E6(a3)            # 8012BE1A
    lh      t7, 0x0002(a1)             # 00000002
    mflo    t8
    sh      t8, 0x013E($sp)
    bne     t2, $zero, lbl_800DE570
    nop
    break   # 0x01C00
lbl_800DE570:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE588
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE588
    nop
    break   # 0x01800
lbl_800DE588:
    subu    v1, a3, t7
    sw      t7, 0x006C($sp)
    bltz    v1, lbl_800DE5A0
    or      t9, t7, $zero              # t9 = 801131EC
    b       lbl_800DE5A4
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE5A0:
    subu    v0, $zero, v1
lbl_800DE5A4:
    div     $zero, v0, t2
    lui     t0, 0x8013                 # t0 = 80130000
    lh      t0, -0x41E8(t0)            # 8012BE18
    lh      t6, 0x0004(a1)             # 00000004
    mflo    a0
    sll     a0, a0, 16
    bne     t2, $zero, lbl_800DE5C8
    nop
    break   # 0x01C00
lbl_800DE5C8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE5E0
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE5E0
    nop
    break   # 0x01800
lbl_800DE5E0:
    subu    v1, t0, t6
    sra     a0, a0, 16
    sw      t6, 0x0064($sp)
    bltz    v1, lbl_800DE5FC
    or      t8, t6, $zero              # t8 = 00000000
    b       lbl_800DE600
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE5FC:
    subu    v0, $zero, v1
lbl_800DE600:
    lui     t1, 0x8013                 # t1 = 80130000
    lh      t1, -0x41DE(t1)            # 8012BE22
    lw      t7, 0x007C($sp)
    slt     $at, t1, t7
    bnel    $at, $zero, lbl_800DE630
    lh      t8, 0x013E($sp)
    lh      t9, 0x013E($sp)
    lui     $at, 0x8013                # $at = 80130000
    subu    t6, a2, t9
    b       lbl_800DE63C
    sh      t6, -0x41EA($at)           # 8012BE16
    lh      t8, 0x013E($sp)
lbl_800DE630:
    lui     $at, 0x8013                # $at = 80130000
    addu    t7, a2, t8
    sh      t7, -0x41EA($at)           # 8012BE16
lbl_800DE63C:
    lui     t3, 0x8013                 # t3 = 80130000
    lh      t3, -0x41DA(t3)            # 8012BE26
    lw      t9, 0x006C($sp)
    slt     $at, t3, t9
    bnel    $at, $zero, lbl_800DE668
    addu    t8, a3, a0
    subu    t6, a3, a0
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE670
    sh      t6, -0x41E6($at)           # 8012BE1A
    addu    t8, a3, a0
lbl_800DE668:
    lui     $at, 0x8013                # $at = 80130000
    sh      t8, -0x41E6($at)           # 8012BE1A
lbl_800DE670:
    lui     t4, 0x8013                 # t4 = 80130000
    lh      t4, -0x41DC(t4)            # 8012BE24
    lw      t7, 0x0064($sp)
    slt     $at, t4, t7
    bne     $at, $zero, lbl_800DE6CC
    nop
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE698
    nop
    break   # 0x01C00
lbl_800DE698:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE6B0
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE6B0
    nop
    break   # 0x01800
lbl_800DE6B0:
    mflo    t9
    sll     t6, t9, 16
    sra     t8, t6, 16
    subu    t7, t0, t8
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE70C
    sh      t7, -0x41E8($at)           # 8012BE18
lbl_800DE6CC:
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE6DC
    nop
    break   # 0x01C00
lbl_800DE6DC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE6F4
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE6F4
    nop
    break   # 0x01800
lbl_800DE6F4:
    mflo    t9
    sll     t6, t9, 16
    sra     t8, t6, 16
    addu    t7, t0, t8
    lui     $at, 0x8013                # $at = 80130000
    sh      t7, -0x41E8($at)           # 8012BE18
lbl_800DE70C:
    lw      t9, 0x0088($sp)
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x31F8             # t6 = 801131F8
    lui     a2, 0x8013                 # a2 = 80130000
    addu    a1, t9, t6
    lh      s0, 0x0000(a1)             # 00000000
    lh      a2, -0x41E4(a2)            # 8012BE1C
    subu    v1, a2, s0
    bltzl   v1, lbl_800DE740
    subu    v0, $zero, v1
    b       lbl_800DE740
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v1
lbl_800DE740:
    div     $zero, v0, t2
    lui     a3, 0x8013                 # a3 = 80130000
    lh      a3, -0x41E0(a3)            # 8012BE20
    lh      $ra, 0x0002(a1)            # 00000002
    mflo    t8
    sh      t8, 0x013E($sp)
    bne     t2, $zero, lbl_800DE764
    nop
    break   # 0x01C00
lbl_800DE764:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE77C
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE77C
    nop
    break   # 0x01800
lbl_800DE77C:
    subu    v1, a3, $ra
    bltzl   v1, lbl_800DE794
    subu    v0, $zero, v1
    b       lbl_800DE794
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v1
lbl_800DE794:
    div     $zero, v0, t2
    lui     t0, 0x8013                 # t0 = 80130000
    lh      t0, -0x41E2(t0)            # 8012BE1E
    lh      t5, 0x0004(a1)             # 00000004
    mflo    a0
    sll     a0, a0, 16
    bne     t2, $zero, lbl_800DE7B8
    nop
    break   # 0x01C00
lbl_800DE7B8:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE7D0
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE7D0
    nop
    break   # 0x01800
lbl_800DE7D0:
    subu    v1, t0, t5
    bltz    v1, lbl_800DE7E4
    sra     a0, a0, 16
    b       lbl_800DE7E8
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE7E4:
    subu    v0, $zero, v1
lbl_800DE7E8:
    slt     $at, a2, s0
    bnel    $at, $zero, lbl_800DE80C
    lh      t6, 0x013E($sp)
    lh      t7, 0x013E($sp)
    lui     $at, 0x8013                # $at = 80130000
    subu    t9, a2, t7
    b       lbl_800DE818
    sh      t9, -0x41E4($at)           # 8012BE1C
    lh      t6, 0x013E($sp)
lbl_800DE80C:
    lui     $at, 0x8013                # $at = 80130000
    addu    t8, a2, t6
    sh      t8, -0x41E4($at)           # 8012BE1C
lbl_800DE818:
    slt     $at, a3, $ra
    bnel    $at, $zero, lbl_800DE838
    addu    t9, a3, a0
    subu    t7, a3, a0
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE840
    sh      t7, -0x41E0($at)           # 8012BE20
    addu    t9, a3, a0
lbl_800DE838:
    lui     $at, 0x8013                # $at = 80130000
    sh      t9, -0x41E0($at)           # 8012BE20
lbl_800DE840:
    slt     $at, t0, t5
    bne     $at, $zero, lbl_800DE890
    nop
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE85C
    nop
    break   # 0x01C00
lbl_800DE85C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE874
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE874
    nop
    break   # 0x01800
lbl_800DE874:
    mflo    t6
    sll     t8, t6, 16
    sra     t7, t8, 16
    subu    t9, t0, t7
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE8D0
    sh      t9, -0x41E2($at)           # 8012BE1E
lbl_800DE890:
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DE8A0
    nop
    break   # 0x01C00
lbl_800DE8A0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE8B8
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE8B8
    nop
    break   # 0x01800
lbl_800DE8B8:
    mflo    t6
    sll     t8, t6, 16
    sra     t7, t8, 16
    addu    t9, t0, t7
    lui     $at, 0x8013                # $at = 80130000
    sh      t9, -0x41E2($at)           # 8012BE1E
lbl_800DE8D0:
    lw      t6, 0x0088($sp)
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x3204             # t8 = 80113204
    addu    a1, t6, t8
    lh      t0, 0x0000(a1)             # 00000000
    subu    v1, t1, t0
    bltzl   v1, lbl_800DE8FC
    subu    v0, $zero, v1
    b       lbl_800DE8FC
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v1
lbl_800DE8FC:
    div     $zero, v0, t2
    lh      a2, 0x0002(a1)             # 00000002
    mflo    t7
    sh      t7, 0x013E($sp)
    bne     t2, $zero, lbl_800DE918
    nop
    break   # 0x01C00
lbl_800DE918:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE930
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE930
    nop
    break   # 0x01800
lbl_800DE930:
    subu    v1, t3, a2
    bltzl   v1, lbl_800DE948
    subu    v0, $zero, v1
    b       lbl_800DE948
    or      v0, v1, $zero              # v0 = 00000000
    subu    v0, $zero, v1
lbl_800DE948:
    div     $zero, v0, t2
    lh      a3, 0x0004(a1)             # 00000004
    mflo    a0
    sll     a0, a0, 16
    bne     t2, $zero, lbl_800DE964
    nop
    break   # 0x01C00
lbl_800DE964:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DE97C
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DE97C
    nop
    break   # 0x01800
lbl_800DE97C:
    subu    v1, t4, a3
    bltz    v1, lbl_800DE990
    sra     a0, a0, 16
    b       lbl_800DE994
    or      v0, v1, $zero              # v0 = 00000000
lbl_800DE990:
    subu    v0, $zero, v1
lbl_800DE994:
    slt     $at, t1, t0
    bnel    $at, $zero, lbl_800DE9B8
    lh      t8, 0x013E($sp)
    lh      t9, 0x013E($sp)
    lui     $at, 0x8013                # $at = 80130000
    subu    t6, t1, t9
    b       lbl_800DE9C4
    sh      t6, -0x41DE($at)           # 8012BE22
    lh      t8, 0x013E($sp)
lbl_800DE9B8:
    lui     $at, 0x8013                # $at = 80130000
    addu    t7, t1, t8
    sh      t7, -0x41DE($at)           # 8012BE22
lbl_800DE9C4:
    slt     $at, t3, a2
    bnel    $at, $zero, lbl_800DE9E4
    addu    t6, t3, a0
    subu    t9, t3, a0
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DE9EC
    sh      t9, -0x41DA($at)           # 8012BE26
    addu    t6, t3, a0
lbl_800DE9E4:
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41DA($at)           # 8012BE26
lbl_800DE9EC:
    slt     $at, t4, a3
    bne     $at, $zero, lbl_800DEA3C
    nop
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DEA08
    nop
    break   # 0x01C00
lbl_800DEA08:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DEA20
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DEA20
    nop
    break   # 0x01800
lbl_800DEA20:
    mflo    t8
    sll     t7, t8, 16
    sra     t9, t7, 16
    subu    t6, t4, t9
    lui     $at, 0x8013                # $at = 80130000
    b       lbl_800DEA7C
    sh      t6, -0x41DC($at)           # 8012BE24
lbl_800DEA3C:
    div     $zero, v0, t2
    bne     t2, $zero, lbl_800DEA4C
    nop
    break   # 0x01C00
lbl_800DEA4C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t2, $at, lbl_800DEA64
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_800DEA64
    nop
    break   # 0x01800
lbl_800DEA64:
    mflo    t8
    sll     t7, t8, 16
    sra     t9, t7, 16
    addu    t6, t4, t9
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41DC($at)           # 8012BE24
lbl_800DEA7C:
    addiu   t2, t2, 0xFFFF             # t2 = 8010FFFF
    sll     t2, t2, 16
    sra     t2, t2, 16
    lui     $at, 0x8011                # $at = 80110000
    bne     t2, $zero, lbl_800DEB2C
    sh      t2, 0x3210($at)            # 80113210
    lw      t8, 0x0080($sp)
    lw      t7, 0x0078($sp)
    lui     $at, 0x8013                # $at = 80130000
    sh      t8, -0x41F0($at)           # 8012BE10
    lw      t9, 0x0070($sp)
    lui     $at, 0x8013                # $at = 80130000
    sh      t7, -0x41EC($at)           # 8012BE14
    lw      t6, 0x007C($sp)
    lui     $at, 0x8013                # $at = 80130000
    sh      t9, -0x41EE($at)           # 8012BE12
    lw      t8, 0x006C($sp)
    lui     $at, 0x8013                # $at = 80130000
    sh      t6, -0x41EA($at)           # 8012BE16
    lw      t7, 0x0064($sp)
    lui     $at, 0x8013                # $at = 80130000
    sh      t8, -0x41E6($at)           # 8012BE1A
    lui     $at, 0x8013                # $at = 80130000
    sh      t7, -0x41E8($at)           # 8012BE18
    lui     $at, 0x8013                # $at = 80130000
    sh      s0, -0x41E4($at)           # 8012BE1C
    lui     $at, 0x8013                # $at = 80130000
    sh      $ra, -0x41E0($at)          # 8012BE20
    lui     $at, 0x8013                # $at = 80130000
    sh      t5, -0x41E2($at)           # 8012BE1E
    lui     $at, 0x8013                # $at = 80130000
    sh      t0, -0x41DE($at)           # 8012BE22
    lui     $at, 0x8013                # $at = 80130000
    lui     t9, 0x8011                 # t9 = 80110000
    lh      t9, 0x3214(t9)             # 80113214
    sh      a2, -0x41DA($at)           # 8012BE26
    lui     $at, 0x8013                # $at = 80130000
    sh      a3, -0x41DC($at)           # 8012BE24
    lui     $at, 0x8011                # $at = 80110000
    xori    t6, t9, 0x0001             # t6 = 80110001
    sh      t6, 0x3214($at)            # 80113214
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    lui     $at, 0x8011                # $at = 80110000
    sh      t2, 0x3210($at)            # 80113210
lbl_800DEB2C:
    lbu     t8, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0xFFFF             # t7 = 80113203
    sb      t7, 0x63E8($at)            # 000104BF
    lbu     t9, 0x63E7(s2)             # 000063E7
    bne     t9, $zero, lbl_800DEC00
    nop
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lbu     v0, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     v0, $at, lbl_800DEB88
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x62FE($at)            # 000103D5
    b       lbl_800DEC00
    sb      t7, 0x63E8($at)            # 000104BF
lbl_800DEB88:
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    bne     v0, $at, lbl_800DEBE8
    nop
    lhu     t9, 0x63EC(s2)             # 000063EC
    slti    $at, t9, 0x0006
    bne     $at, $zero, lbl_800DEBCC
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x086F          # a1 = 0000086F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x0011          # t6 = 00000011
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x62FE($at)            # 000103D5
    b       lbl_800DEC00
    sb      t7, 0x63E8($at)            # 000104BF
lbl_800DEBCC:
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    b       lbl_800DEC00
    sh      t9, 0x04C6($at)            # 000104C6
lbl_800DEBE8:
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sh      t6, 0x04C6($at)            # 000104C6
lbl_800DEC00:
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x4627(t8)            # 8011B9D9
    bne     t8, $zero, lbl_800DEC20
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DEC2C
    nop
lbl_800DEC20:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DEC2C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DEC5C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DEC6C
    lbu     t9, 0x63E7(s2)             # 000063E7
lbl_800DEC5C:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lbu     t9, 0x63E7(s2)             # 000063E7
lbl_800DEC6C:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x63E8($at)            # 000104BF
    lbu     t8, 0x63E7(s2)             # 000063E7
    bne     t8, $zero, lbl_800DECD0
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lw      t9, 0x0000(s0)             # 8011BA00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    sh      t7, 0x0F7A(t9)             # 00000F7A
    lbu     t6, 0x6304(s2)             # 00006304
    bne     t6, $at, lbl_800DECC4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DCE80
    addiu   a1, $zero, 0x088B          # a1 = 0000088B
    jal     func_800DA30C
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DECD0
    sb      t8, 0x6305($at)            # 000103DC
lbl_800DECC4:
    addiu   t7, $zero, 0x0010          # t7 = 00000010
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
lbl_800DECD0:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    or      v1, $zero, $zero           # v1 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
lbl_800DECF0:
    lw      t0, 0x0000(s0)             # 8011BA00
    sll     t9, a0,  1
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addu    v0, t0, t9
    lh      t6, 0x0F6E(v0)             # 00000F6E
    lh      t8, 0x0F7A(t0)             # 00000F7A
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    slti    $at, v1, 0x0005
    addu    t7, t6, t8
    or      a0, v1, $zero              # a0 = 00000001
    bne     $at, $zero, lbl_800DECF0
    sh      t7, 0x0F6E(v0)             # 00000F6E
    lw      t0, 0x0000(s0)             # 8011BA00
    lh      v0, 0x0F7A(t0)             # 00000F7A
    addu    t9, v0, v0
    sh      t9, 0x0F7A(t0)             # 00000F7A
    lw      t6, 0x0000(s0)             # 8011BA00
    lh      t8, 0x0F7A(t6)             # 00000F7A
    slti    $at, t8, 0x0226
    bne     $at, $zero, lbl_800DEDA0
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lui     $at, 0x8011                # $at = 80110000
    sb      t7, 0x2E8C($at)            # 80112E8C
    lui     $at, 0x8011                # $at = 80110000
    sh      $zero, 0x2EA8($at)         # 80112EA8
    sh      $zero, 0x2EA6($at)         # 80112EA6
    sh      $zero, 0x2EA4($at)         # 80112EA4
    sh      $zero, 0x2EA2($at)         # 80112EA2
    sh      $zero, 0x2EA0($at)         # 80112EA0
    lui     $at, 0x8011                # $at = 80110000
    sh      $zero, 0x2E9E($at)         # 80112E9E
    sh      $zero, 0x2E9C($at)         # 80112E9C
    sh      $zero, 0x2E9A($at)         # 80112E9A
    sh      $zero, 0x2E98($at)         # 80112E98
    lbu     t9, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x001E         # $at = 0000001E
    bne     t9, $at, lbl_800DED94
    addiu   t6, $zero, 0x001F          # t6 = 0000001F
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DEDA0
    sb      t6, 0x6305($at)            # 000103DC
lbl_800DED94:
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
lbl_800DEDA0:
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lbu     t7, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, t7, 0xFFFF             # t9 = 000000FE
    sb      t9, 0x63E8($at)            # 000104BF
    lbu     t6, 0x63E7(s2)             # 000063E7
    bne     t6, $zero, lbl_800DEE6C
    nop
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800DA30C
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    jal     func_800C380C
    sb      t8, 0x6305($at)            # 000103DC
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t9, 0x62B8(s2)             # 000062B8
    lh      t7, 0x0000(t0)             # 8010A928
    jal     func_800D5EF0
    sb      t7, 0x0002(t9)             # 00000002
    lhu     v1, 0x63EC(s2)             # 000063EC
    slti    $at, v1, 0x0006
    bne     $at, $zero, lbl_800DEE6C
    slti    $at, v1, 0x000D
    beq     $at, $zero, lbl_800DEE6C
    nop
    lwc1    $f4, 0x0028(s0)            # 8011BA28
    lw      a3, 0x0024(s0)             # 8011BA24
    sll     v0, v1,  1
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x002C(s0)            # 8011BA2C
    lui     t6, 0x8011                 # t6 = 80110000
    addu    t6, t6, v0
    lh      t6, 0x31B0(t6)             # 801131B0
    lui     a2, 0x8011                 # a2 = 80110000
    addu    a2, a2, v0
    lh      a2, 0x31A0(a2)             # 801131A0
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    addiu   a0, s3, 0x1C24             # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    swc1    $f6, 0x0014($sp)
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x0024($sp)
lbl_800DEE6C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x4627(t8)            # 8011B9D9
    bne     t8, $zero, lbl_800DEE9C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DEEA8
    nop
lbl_800DEE9C:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DEEA8:
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lhu     a0, 0x63EC(s2)             # 000063EC
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sll     a0, a0, 24
    jal     func_800C2D74
    sra     a0, a0, 24
    lhu     v0, 0x63EC(s2)             # 000063EC
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    beq     a0, v0, lbl_800DEEF8
    sll     t7, v0,  1
    lui     a0, 0x8011                 # a0 = 80110000
    addu    a0, a0, t7
    jal     func_800C69A0
    lhu     a0, 0x3218(a0)             # 80113218
    jal     func_800C7F40
    addiu   a0, $zero, 0x0020          # a0 = 00000020
lbl_800DEEF8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x04C6($at)            # 000104C6
    lhu     v0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_800DEF24
    addiu   t6, $zero, 0x0029          # t6 = 00000029
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t6, 0x63F1($at)            # 000104C8
    lhu     v0, 0x63F0(s2)             # 000063F0
lbl_800DEF24:
    addiu   $at, $zero, 0x0030         # $at = 00000030
    bne     v0, $at, lbl_800DEF38
    addiu   t8, $zero, 0x0031          # t8 = 00000031
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sh      t8, 0x63F1($at)            # 000104C8
lbl_800DEF38:
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    addiu   t7, $zero, 0x0013          # t7 = 00000013
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lbu     t9, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t9, 0xFFFF             # t6 = 00000000
    sb      t6, 0x63E8($at)            # 000104BF
    lbu     t8, 0x63E7(s2)             # 000063E7
    bne     t8, $zero, lbl_800DF028
    nop
    lhu     v0, 0x63F0(s2)             # 000063F0
    slti    $at, v0, 0x0008
    beql    $at, $zero, lbl_800DEFA0
    addiu   $at, $zero, 0x0009         # $at = 00000009
    jal     func_800C2C90
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    b       lbl_800DEFFC
    lhu     a0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_800DEFA0:
    bnel    v0, $at, lbl_800DEFBC
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    jal     func_800C2C90
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    b       lbl_800DEFFC
    lhu     a0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
lbl_800DEFBC:
    bnel    v0, $at, lbl_800DEFD8
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    jal     func_800C2C90
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    b       lbl_800DEFFC
    lhu     a0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_800DEFD8:
    bne     v0, $at, lbl_800DEFF0
    nop
    jal     func_800C2C90
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    b       lbl_800DEFFC
    lhu     a0, 0x63F0(s2)             # 000063F0
lbl_800DEFF0:
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lhu     a0, 0x63F0(s2)             # 000063F0
lbl_800DEFFC:
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a0, a0, 0xFFFF             # a0 = FFFFFFFF
    sll     a0, a0, 24
    jal     func_800C2D74
    sra     a0, a0, 24
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    addiu   t7, $zero, 0x0019          # t7 = 00000019
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
lbl_800DF028:
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x4627(t9)            # 8011B9D9
    bne     t9, $zero, lbl_800DF048
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF054
    nop
lbl_800DF048:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF054:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lhu     a1, 0x63EC(s2)             # 000063EC
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, a1, 0x0893             # a1 = 00000893
    jal     func_800DCE80
    andi    a1, a1, 0xFFFF             # a1 = 00000893
    jal     func_800DA30C
    or      a0, s3, $zero              # a0 = 00000000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x0015          # t6 = 00000015
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x63E8($at)            # 000104BF
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DF0B4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF0C0
    nop
lbl_800DF0B4:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF0C0:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lbu     t9, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x63E8($at)            # 000104BF
    lbu     t8, 0x63E7(s2)             # 000063E7
    bne     t8, $zero, lbl_800DF0F4
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
lbl_800DF0F4:
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x4627(t9)            # 8011B9D9
    bne     t9, $zero, lbl_800DF114
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF120
    nop
lbl_800DF114:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF120:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_800D5EF0
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x0017          # t6 = 00000017
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sb      t6, 0x6305($at)            # 000103DC
    sb      t8, 0x63E8($at)            # 000104BF
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DF174
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF180
    nop
lbl_800DF174:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF180:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lbu     t9, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x63E8($at)            # 000104BF
    lbu     t8, 0x63E7(s2)             # 000063E7
    bne     t8, $zero, lbl_800DF32C
    nop
    lhu     v1, 0x63EC(s2)             # 000063EC
    slti    $at, v1, 0x0006
    beq     $at, $zero, lbl_800DF260
    nop
    lhu     v0, 0x63F0(s2)             # 000063F0
    slti    $at, v0, 0x000F
    bne     $at, $zero, lbl_800DF1D4
    slti    $at, v0, 0x0015
    bne     $at, $zero, lbl_800DF260
    nop
lbl_800DF1D4:
    lh      t7, 0x640C(s2)             # 0000640C
    bne     t7, $zero, lbl_800DF1F0
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, s3
    lbu     t9, 0x0759(t9)             # 00010759
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     t9, $at, lbl_800DF214
lbl_800DF1F0:
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x088C          # a1 = 0000088C
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    b       lbl_800DF32C
    sh      t6, 0x04C6($at)            # 000104C6
lbl_800DF214:
    lui     t8, 0x8012                 # t8 = 80120000
    lhu     t8, -0x4636(t8)            # 8011B9CA
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t7, t8, 0x000F             # t7 = 00000000
    beq     t7, $at, lbl_800DF250
    addiu   a1, v1, 0x088D             # a1 = 0000088D
    andi    a1, a1, 0xFFFF             # a1 = 0000088D
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    b       lbl_800DF32C
    sh      t9, 0x04C6($at)            # 000104C6
lbl_800DF250:
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_800DF32C
    nop
lbl_800DF260:
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    lhu     t6, 0x63EC(s2)             # 000063EC
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     t6, $at, lbl_800DF288
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lw      t7, 0x0000(s0)             # 8011BA00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x05BE(t7)             # 000005BE
lbl_800DF288:
    lhu     v0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0029         # $at = 00000029
    bne     v0, $at, lbl_800DF2C4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sh      t9, 0x04C6($at)            # 000104C6
    lhu     t6, 0x63EC(s2)             # 000063EC
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    bne     a0, t6, lbl_800DF32C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    b       lbl_800DF32C
    sh      t8, 0x04C6($at)            # 000104C6
lbl_800DF2C4:
    slti    $at, v0, 0x001C
    bne     $at, $zero, lbl_800DF300
    lhu     v1, 0x63EC(s2)             # 000063EC
    addiu   t7, v1, 0x001C             # t7 = 0000001C
    bne     v0, t7, lbl_800DF2EC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    b       lbl_800DF32C
    sh      t9, 0x04C6($at)            # 000104C6
lbl_800DF2EC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_800DF32C
    sh      t6, 0x04C6($at)            # 000104C6
lbl_800DF300:
    addiu   t8, v1, 0x000F             # t8 = 0000000F
    bne     v0, t8, lbl_800DF31C
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    b       lbl_800DF32C
    sh      t7, 0x04C6($at)            # 000104C6
lbl_800DF31C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sh      t9, 0x04C6($at)            # 000104C6
lbl_800DF32C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C3830
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     t6, 0x0001(a1)             # 00000001
    bne     t6, $zero, lbl_800DF388
    nop
    lbu     t8, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     t8, $at, lbl_800DF378
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DF40C
    sb      t7, 0x6305($at)            # 000103DC
lbl_800DF378:
    addiu   t9, $zero, 0x001A          # t9 = 0000001A
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800DF40C
    sb      t9, 0x6305($at)            # 000103DC
lbl_800DF388:
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      t6, 0x0000(t0)             # 8010A928
    beql    t6, $zero, lbl_800DF3B8
    lbu     v1, 0x0002(a1)             # 00000002
    lbu     t8, 0x0002(a1)             # 00000002
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t8, $at, lbl_800DF3B8
    lbu     v1, 0x0002(a1)             # 00000002
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
lbl_800DF3B8:
    beq     v1, $zero, lbl_800DF40C
    nop
    lh      t7, 0x0000(t0)             # 8010A928
    addiu   t9, t7, 0x0001             # t9 = 00000015
    bne     v1, t9, lbl_800DF40C
    nop
    lbu     v0, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      v0, 0x2E8B($at)            # 80112E8B
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      v0, 0x6411($at)            # 000104E8
    lw      t8, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lbu     t7, 0x0002(t8)             # 00000002
    addu    $at, $at, t7
    sb      t6, 0x2E8C($at)            # 80112E8C
    lh      t9, 0x0000(t0)             # 8010A928
    addiu   t8, t9, 0x0001             # t8 = 00000016
    sh      t8, 0x0000(t0)             # 8010A928
lbl_800DF40C:
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4627(t6)            # 8011B9D9
    bne     t6, $zero, lbl_800DF42C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF438
    nop
lbl_800DF42C:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF438:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C380C
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DF4B0
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t7, a2, 0x0001             # t7 = 00000001
    bnel    v1, t7, lbl_800DF4B4
    lbu     a2, 0x0001(a1)             # 00000001
    lbu     t9, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      t9, 0x2E8B($at)            # 80112E8B
    lw      t6, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lbu     t7, 0x0002(t6)             # 00000002
    addiu   t9, a2, 0x0001             # t9 = 00000001
    addu    $at, $at, t7
    sb      t8, 0x2E8C($at)            # 80112E8C
    sh      t9, 0x0000(t0)             # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
lbl_800DF4B0:
    lbu     a2, 0x0001(a1)             # 00000001
lbl_800DF4B4:
    slti    $at, a2, 0x000D
    beq     $at, $zero, lbl_800DF538
    or      v0, a2, $zero              # v0 = 00000000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x001C          # t6 = 0000001C
    sh      a2, 0x63ED($at)            # 000104C4
    sb      t6, 0x6305($at)            # 000103DC
    lw      t8, 0x62B8(s2)             # 000062B8
    lui     a1, 0x8011                 # a1 = 80110000
    or      a0, s3, $zero              # a0 = 00000000
    lbu     t7, 0x0001(t8)             # 00000100
    sll     t9, t7,  1
    addu    a1, a1, t9
    lh      a1, 0x2EAC(a1)             # 80112EAC
    addiu   a1, a1, 0x005A             # a1 = 8011005A
    jal     func_8006FDCC
    andi    a1, a1, 0x00FF             # a1 = 0000005A
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sb      t6, 0x63E8($at)            # 000104BF
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_800DF580
    nop
lbl_800DF538:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     v0, $at, lbl_800DF580
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    sb      t9, 0x63E8($at)            # 000104BF
    sb      t6, 0x6305($at)            # 000103DC
lbl_800DF580:
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x4627(t8)            # 8011B9D9
    bne     t8, $zero, lbl_800DF5A0
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF5AC
    nop
lbl_800DF5A0:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF5AC:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DF5DC
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF5E8
    nop
lbl_800DF5DC:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF5E8:
    jal     func_800D6110
    or      a0, s3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_800DF600
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800DD400
    lhu     a1, 0x63F0(s2)             # 000063F0
lbl_800DF600:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C35A8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C3800
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t6, 0x62B8(s2)             # 000062B8
    lh      t9, 0x0000(t0)             # 8010A928
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0xA92C             # a3 = 8010A92C
    sb      t9, 0x0002(t6)             # 00000002
    jal     func_800D5EF0
    sh      $zero, 0x0000(a3)          # 8010A92C
    addiu   t8, $zero, 0x0022          # t8 = 00000022
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DF684
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF690
    nop
lbl_800DF684:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF690:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C3800
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DF790
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      t9, 0x0000(t0)             # 8010A928
    addiu   t6, t9, 0x0001             # t6 = 00000001
    bne     v1, t6, lbl_800DF790
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0xA92C             # a3 = 8010A92C
    lh      a0, 0x0000(a3)             # 8010A92C
    slti    $at, a0, 0x0008
    bne     $at, $zero, lbl_800DF730
    addiu   v0, a0, 0xFFF8             # v0 = FFFFFFF8
    andi    v0, v0, 0xFFFF             # v0 = 0000FFF8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800DF6F0:
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t8, t8, 0x2E8C             # t8 = 80112E8C
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addu    t7, v0, t8
    lbu     t9, 0x0001(t7)             # 00000001
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    addu    t6, v0, t8
    addiu   v0, v0, 0x0001             # v0 = 0000FFF9
    slti    $at, v1, 0x0008
    andi    v0, v0, 0xFFFF             # v0 = 0000FFF9
    bne     $at, $zero, lbl_800DF6F0
    sb      t9, 0x0000(t6)             # 00000001
    addiu   t7, a0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0000(a3)             # 8010A92C
    lw      a1, 0x62B8(s2)             # 000062B8
    lh      a0, 0x0000(a3)             # 8010A92C
lbl_800DF730:
    lbu     v0, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, a0
    sb      v0, 0x2E8C($at)            # 80112E8C
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      v0, 0x6411($at)            # 000104E8
    lh      t8, 0x0000(a3)             # 8010A92C
    lui     $at, 0x8011                # $at = 80110000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t9, t8, 0x0001             # t9 = 80112E8D
    sh      t9, 0x0000(a3)             # 8010A92C
    lh      t7, 0x0000(a3)             # 8010A92C
    addu    $at, $at, t7
    sb      t6, 0x2E8C($at)            # 80112E8C
    lh      t8, 0x0000(t0)             # 8010A928
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   t9, t8, 0x0001             # t9 = 80112E8D
    sh      t9, 0x0000(t0)             # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     t6, 0x0002(a1)             # 00000002
    bnel    t6, $at, lbl_800DF794
    lbu     t7, 0x0001(a1)             # 00000001
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
lbl_800DF790:
    lbu     t7, 0x0001(a1)             # 00000001
lbl_800DF794:
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0xA92C             # a3 = 8010A92C
    beql    t7, $zero, lbl_800DF7BC
    lh      t6, 0x0000(a3)             # 8010A92C
    lhu     t8, 0x0020(s3)             # 00000020
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t9, t8, 0x4000             # t9 = 00000000
    bne     t9, $at, lbl_800DF854
    nop
    lh      t6, 0x0000(a3)             # 8010A92C
lbl_800DF7BC:
    beq     t6, $zero, lbl_800DF7CC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x8012                # $at = 80120000
    sb      t7, -0x4AF0($at)           # 8011B510
lbl_800DF7CC:
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C35A8
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x63E8($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x04C6($at)            # 000104C6
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8010                 # a1 = 80100000
    lw      a1, 0x2EE0(a1)             # 80102EE0
    addiu   a0, a0, 0xB511             # a0 = 8011B511
    jal     func_80057030
    addiu   a2, $zero, 0x0360          # a2 = 00000360
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800DF844:
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    slti    $at, v1, 0x0360
    bnel    $at, $zero, lbl_800DF844
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_800DF854:
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800DF874
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DF880
    nop
lbl_800DF874:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DF880:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C3830
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DF974
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t8, a2, 0x0001             # t8 = 00000001
    bne     v1, t8, lbl_800DF974
    lui     a3, 0x8011                 # a3 = 80110000
    addiu   a3, a3, 0xA92C             # a3 = 8010A92C
    lh      a0, 0x0000(a3)             # 8010A92C
    slti    $at, a0, 0x0008
    bne     $at, $zero, lbl_800DF920
    addiu   v0, a0, 0xFFF8             # v0 = FFFFFFF8
    lui     t1, 0x8011                 # t1 = 80110000
    addiu   t1, t1, 0x2E8C             # t1 = 80112E8C
    andi    v0, v0, 0xFFFF             # v0 = 0000FFF8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800DF8E8:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addu    t9, t1, v0
    lbu     t6, 0x0001(t9)             # 00000001
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    addu    t7, t1, v0
    addiu   v0, v0, 0x0001             # v0 = 0000FFF9
    slti    $at, v1, 0x0008
    andi    v0, v0, 0xFFFF             # v0 = 0000FFF9
    bne     $at, $zero, lbl_800DF8E8
    sb      t6, 0x0000(t7)             # 00000000
    addiu   t8, a0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0000(a3)             # 8010A92C
    lw      a1, 0x62B8(s2)             # 000062B8
    lh      a0, 0x0000(a3)             # 8010A92C
lbl_800DF920:
    lbu     t9, 0x0000(a1)             # 00000000
    lui     t1, 0x8011                 # t1 = 80110000
    addiu   t1, t1, 0x2E8C             # t1 = 80112E8C
    addu    t6, t1, a0
    addiu   t7, a0, 0x0001             # t7 = 00000001
    sb      t9, 0x0000(t6)             # 00000000
    sh      t7, 0x0000(a3)             # 8010A92C
    lh      t9, 0x0000(a3)             # 8010A92C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t7, a2, 0x0001             # t7 = 00000001
    addu    t6, t1, t9
    sb      t8, 0x0000(t6)             # 00000000
    sh      t7, 0x0000(t0)             # 8010A928
    lw      t9, 0x62B8(s2)             # 000062B8
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lbu     t8, 0x0002(t9)             # 00000002
    bnel    t8, $at, lbl_800DF978
    lbu     v0, 0x63E7(s2)             # 000063E7
    sh      $zero, 0x0000(t0)          # 8010A928
    lh      t6, 0x0000(t0)             # 8010A928
    sh      t6, 0x0000(a3)             # 8010A92C
lbl_800DF974:
    lbu     v0, 0x63E7(s2)             # 000063E7
lbl_800DF978:
    bnel    v0, $zero, lbl_800DF9BC
    addiu   t6, v0, 0xFFFF             # t6 = 0000FFF8
    lw      t7, 0x62B8(s2)             # 000062B8
    lbu     t9, 0x0001(t7)             # 00000002
    bne     t9, $zero, lbl_800DF9C4
    nop
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    sh      t8, 0x04C6($at)            # 000104C6
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_800DF9C4
    nop
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
lbl_800DF9BC:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x63E8($at)            # 000104BF
lbl_800DF9C4:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C35A8
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   t7, $zero, 0x0025          # t7 = 00000025
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6305($at)            # 000103DC
    lui     t9, 0x8012                 # t9 = 80120000
    lbu     t9, -0x4627(t9)            # 8011B9D9
    bne     t9, $zero, lbl_800DFA10
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DFA1C
    nop
lbl_800DFA10:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DFA1C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C3800
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DFA9C
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t8, a2, 0x0001             # t8 = 00000001
    bnel    v1, t8, lbl_800DFAA0
    lbu     v0, 0x0001(a1)             # 00000001
    lbu     v0, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, a2
    sb      v0, 0x2E8C($at)            # 80112E8C
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      v0, 0x6411($at)            # 000104E8
    lh      t6, 0x0000(t0)             # 8010A928
    lui     $at, 0x8011                # $at = 80110000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0000(t0)             # 8010A928
    lh      t8, 0x0000(t0)             # 8010A928
    addu    $at, $at, t8
    sb      t9, 0x2E8C($at)            # 80112E8C
    lw      a1, 0x62B8(s2)             # 000062B8
lbl_800DFA9C:
    lbu     v0, 0x0001(a1)             # 00000001
lbl_800DFAA0:
    bne     v0, $zero, lbl_800DFB2C
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x63E8($at)            # 000104BF
    lui     $at, 0x8012                # $at = 80120000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, -0x476B($at)           # 8011B895
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x0027          # t9 = 00000027
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    sb      t9, 0x6305($at)            # 000103DC
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8010                 # a1 = 80100000
    lw      a1, 0x2EE4(a1)             # 80102EE4
    addiu   a0, a0, 0xB896             # a0 = 8011B896
    jal     func_80057030
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
lbl_800DFB14:
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    slti    $at, v1, 0x0080
    bnel    $at, $zero, lbl_800DFB14
    addiu   v1, v1, 0x0001             # v1 = 00000002
    b       lbl_800DFB94
    nop
lbl_800DFB2C:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v0, $at, lbl_800DFB4C
    nop
    lhu     t6, 0x0020(s3)             # 00000020
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t7, t6, 0x4000             # t7 = 00000000
    bne     t7, $at, lbl_800DFB94
    nop
lbl_800DFB4C:
    jal     func_800C35A8
    or      a0, $zero, $zero           # a0 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800D6218
    or      a0, s3, $zero              # a0 = 00000000
    addiu   t8, $zero, 0x0026          # t8 = 00000026
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
lbl_800DFB94:
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4627(t6)            # 8011B9D9
    bne     t6, $zero, lbl_800DFBB4
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DFBC0
    nop
lbl_800DFBB4:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DFBC0:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x40AD          # a1 = 000040AD
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sh      t7, 0x04C6($at)            # 000104C6
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C2C90
    addiu   a0, $zero, 0x0006          # a0 = 00000006
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800C39B4
    lbu     a0, -0x59F1(a0)            # 8011A60F
    jal     func_800C3830
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t8, 0x62B8(s2)             # 000062B8
    lh      t9, 0x0000(t0)             # 8010A928
    jal     func_800D5EF0
    sb      t9, 0x0002(t8)             # 00000002
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x002A          # t6 = 0000002A
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sb      t6, 0x6305($at)            # 000103DC
    sb      t7, 0x63E8($at)            # 000104BF
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   s0, s0, 0x43A0             # s0 = 801043A0
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    or      a3, s0, $zero              # a3 = 801043A0
    sw      s0, 0x0010($sp)
    addiu   a0, $zero, 0x4038          # a0 = 00004038
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C3830
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DFD14
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t8, a2, 0x0001             # t8 = 00000001
    bnel    v1, t8, lbl_800DFD18
    lbu     v0, 0x63E7(s2)             # 000063E7
    lbu     t6, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      t6, 0x2E8B($at)            # 80112E8B
    lw      t9, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lbu     t8, 0x0002(t9)             # 00000002
    addiu   t6, a2, 0x0001             # t6 = 00000001
    addu    $at, $at, t8
    sb      t7, 0x2E8C($at)            # 80112E8C
    sh      t6, 0x0000(t0)             # 8010A928
lbl_800DFD14:
    lbu     v0, 0x63E7(s2)             # 000063E7
lbl_800DFD18:
    bnel    v0, $zero, lbl_800DFDAC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    lw      t9, 0x62B8(s2)             # 000062B8
    lbu     t7, 0x0001(t9)             # 00000001
    bne     t7, $zero, lbl_800DFDB4
    nop
    lbu     t8, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x002A         # $at = 0000002A
    bne     t8, $at, lbl_800DFD6C
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s0, 0x0010($sp)
    b       lbl_800DFD98
    lbu     t7, 0x6304(s2)             # 00006304
lbl_800DFD6C:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x4842          # a0 = 00004842
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s0, 0x0010($sp)
    lbu     t7, 0x6304(s2)             # 00006304
lbl_800DFD98:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t8, t7, 0x0001             # t8 = 00000001
    b       lbl_800DFDB4
    sb      t8, 0x6305($at)            # 000103DC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
lbl_800DFDAC:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t6, 0x63E8($at)            # 000104BF
lbl_800DFDB4:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C3830
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DFE28
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t9, a2, 0x0001             # t9 = 00000001
    bne     v1, t9, lbl_800DFE28
    nop
    lbu     t7, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      t7, 0x2E8B($at)            # 80112E8B
    lw      t6, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    lbu     t9, 0x0002(t6)             # 00000002
    addiu   t7, a2, 0x0001             # t7 = 00000001
    addu    $at, $at, t9
    sb      t8, 0x2E8C($at)            # 80112E8C
    sh      t7, 0x0000(t0)             # 8010A928
lbl_800DFE28:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   s0, s0, 0x43A0             # s0 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    or      a3, s0, $zero              # a3 = 801043A0
    sw      s0, 0x0010($sp)
    addiu   a0, $zero, 0x4038          # a0 = 00004038
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C380C
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800DFED0
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t8, a2, 0x0001             # t8 = 00000001
    bnel    v1, t8, lbl_800DFED4
    lbu     v0, 0x0001(a1)             # 00000001
    lbu     t9, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      t9, 0x2E8B($at)            # 80112E8B
    lw      t6, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lbu     t8, 0x0002(t6)             # 00000002
    addiu   t9, a2, 0x0001             # t9 = 00000001
    addu    $at, $at, t8
    sb      t7, 0x2E8C($at)            # 80112E8C
    sh      t9, 0x0000(t0)             # 8010A928
    lw      a1, 0x62B8(s2)             # 000062B8
lbl_800DFED0:
    lbu     v0, 0x0001(a1)             # 00000001
lbl_800DFED4:
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    v0, $at, lbl_800DFF34
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    jal     func_800C2C90
    or      a0, $zero, $zero           # a0 = 00000000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x4827          # a0 = 00004827
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s0, 0x0010($sp)
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x63E8($at)            # 000104BF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    b       lbl_800DFF74
    sh      t8, 0x04C6($at)            # 000104C6
    addiu   $at, $zero, 0x000D         # $at = 0000000D
lbl_800DFF34:
    bne     v0, $at, lbl_800DFF74
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x4824          # a0 = 00004824
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    or      a3, s0, $zero              # a3 = 801043A0
    jal     func_800C806C
    sw      s0, 0x0010($sp)
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t6, $zero, 0x002F          # t6 = 0000002F
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sb      t6, 0x6305($at)            # 000103DC
    sb      t7, 0x63E8($at)            # 000104BF
lbl_800DFF74:
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x4627(t8)            # 8011B9D9
    bne     t8, $zero, lbl_800DFF94
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800DFFA0
    nop
lbl_800DFF94:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800DFFA0:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C380C
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800E0014
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      a2, 0x0000(t0)             # 8010A928
    addiu   t9, a2, 0x0001             # t9 = 00000001
    bnel    v1, t9, lbl_800E0018
    lbu     t8, 0x63E7(s2)             # 000063E7
    lbu     t6, 0x0000(a1)             # 00000000
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, v1
    sb      t6, 0x2E8B($at)            # 80112E8B
    lw      t8, 0x62B8(s2)             # 000062B8
    lui     $at, 0x8011                # $at = 80110000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    lbu     t9, 0x0002(t8)             # 00000002
    addiu   t6, a2, 0x0001             # t6 = 00000001
    addu    $at, $at, t9
    sb      t7, 0x2E8C($at)            # 80112E8C
    sh      t6, 0x0000(t0)             # 8010A928
lbl_800E0014:
    lbu     t8, 0x63E7(s2)             # 000063E7
lbl_800E0018:
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t7, t8, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x63E8($at)            # 000104BF
    lbu     t9, 0x63E7(s2)             # 000063E7
    bne     t9, $zero, lbl_800E00B8
    nop
    jal     func_800C3A24
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800E00A8
    lui     s0, 0x8010                 # s0 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, s0, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C380C
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t7, 0x62B8(s2)             # 000062B8
    lh      t8, 0x0000(t0)             # 8010A928
    jal     func_800D5EF0
    sb      t8, 0x0002(t7)             # 00000002
    addiu   t9, $zero, 0x0030          # t9 = 00000030
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    b       lbl_800E00B8
    sb      t9, 0x6305($at)            # 000103DC
lbl_800E00A8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t6, $zero, 0x000F          # t6 = 0000000F
    sh      t6, 0x04C6($at)            # 000104C6
lbl_800E00B8:
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x4627(t8)            # 8011B9D9
    bne     t8, $zero, lbl_800E00D8
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800E00E4
    nop
lbl_800E00D8:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
lbl_800E00E4:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C9B74
    addiu   a0, $zero, 0x4836          # a0 = 00004836
    bne     v0, $zero, lbl_800E013C
    nop
    jal     func_800C3830
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t9, 0x62B8(s2)             # 000062B8
    lh      t7, 0x0000(t0)             # 8010A928
    jal     func_800D5EF0
    sb      t7, 0x0002(t9)             # 00000002
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    jal     func_800C2D74
    addiu   a1, $zero, 0x0001          # a1 = 00000001
lbl_800E013C:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C2C90
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    jal     func_800C380C
    nop
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t8, 0x62B8(s2)             # 000062B8
    lh      t6, 0x0000(t0)             # 8010A928
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s3
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t6, 0x0002(t8)             # 00000002
    jal     func_800D5EF0
    sh      t7, 0x04C6($at)            # 000104C6
    lui     a0, 0x8011                 # a0 = 80110000
    lhu     a0, -0x56B8(a0)            # 8010A948
    ori     $at, $zero, 0xC000         # $at = 0000C000
    addu    a0, a0, $at
    jal     func_800C2124
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    addiu   t9, $zero, 0x0032          # t9 = 00000032
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t9, 0x6305($at)            # 000103DC
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    jal     func_800C380C
    nop
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sw      v0, 0x62B9($at)            # 00010390
    lw      a1, 0x62B8(s2)             # 000062B8
    lbu     v1, 0x0002(a1)             # 00000002
    beq     v1, $zero, lbl_800E0224
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0xA928             # t0 = 8010A928
    lh      t6, 0x0000(t0)             # 8010A928
    addiu   t8, t6, 0x0001             # t8 = 00000001
    bnel    v1, t8, lbl_800E0228
    lbu     v0, 0x6304(s2)             # 00006304
    lbu     t7, 0x0000(a1)             # 00000000
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t7, 0x6411($at)            # 000104E8
    sh      $zero, 0x0000(t0)          # 8010A928
    lw      t6, 0x62B8(s2)             # 000062B8
    lh      t9, 0x0000(t0)             # 8010A928
    jal     func_800D5EF0
    sb      t9, 0x0002(t6)             # 00000002
    addiu   t8, $zero, 0x0033          # t8 = 00000033
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
lbl_800E0224:
    lbu     v0, 0x6304(s2)             # 00006304
lbl_800E0228:
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E03A4
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lui     t7, 0x8012                 # t7 = 80120000
    lbu     t7, -0x4627(t7)            # 8011B9D9
    bne     t7, $zero, lbl_800E0260
    lui     t9, 0x8011                 # t9 = 80110000
    lh      t9, -0x56C8(t9)            # 8010A938
    bne     t9, $zero, lbl_800E0260
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D7B00
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    b       lbl_800E0270
    lbu     v0, 0x63E4(s2)             # 000063E4
lbl_800E0260:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D8EF4
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lbu     v0, 0x63E4(s2)             # 000063E4
lbl_800E0270:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    beq     v0, $at, lbl_800E02A4
    addiu   $at, $zero, 0x0020         # $at = 00000020
    beq     v0, $at, lbl_800E02D0
    addiu   $at, $zero, 0x0040         # $at = 00000040
    beq     v0, $at, lbl_800E02FC
    addiu   $at, $zero, 0x0050         # $at = 00000050
    beq     v0, $at, lbl_800E0350
    addiu   $at, $zero, 0x0060         # $at = 00000060
    beq     v0, $at, lbl_800E0370
    nop
    b       lbl_800E0350
    nop
lbl_800E02A4:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D6290
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lh      a2, 0x63D8(s2)             # 000063D8
    jal     func_800D6E5C
    lh      a3, 0x63DA(s2)             # 000063DA
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E0378
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800E02D0:
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800D6290
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lh      a2, 0x63D8(s2)             # 000063D8
    jal     func_800D6E5C
    lh      a3, 0x63DA(s2)             # 000063DA
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E0378
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800E02FC:
    lhu     v0, 0x62F8(s2)             # 000062F8
    slti    $at, v0, 0x006D
    bne     $at, $zero, lbl_800E0344
    slti    $at, v0, 0x0073
    beq     $at, $zero, lbl_800E0344
    nop
    lbu     t6, 0x63E7(s2)             # 000063E7
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t8, t6, 0x0001             # t8 = 00000001
    sb      t8, 0x63E8($at)            # 000104BF
    lbu     t7, 0x63E7(s2)             # 000063E7
    slti    $at, t7, 0x001F
    bne     $at, $zero, lbl_800E0344
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   t6, $zero, 0x0036          # t6 = 00000036
    sb      t9, 0x63E8($at)            # 000104BF
    sb      t6, 0x6305($at)            # 000103DC
lbl_800E0344:
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E0378
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800E0350:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lw      t0, 0x0000(s0)             # 8011BA00
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0140            # a1 = FFFFFFE8
    lh      a2, 0x0B14(t0)             # 00000B14
    jal     func_800D6E5C
    lh      a3, 0x0B16(t0)             # 00000B16
lbl_800E0370:
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800E0378:
    b       lbl_800E03A4
    lbu     v0, 0x6304(s2)             # 00006304
    lui     s0, 0x8012                 # s0 = 80120000
    b       lbl_800E03A4
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
lbl_800E038C:
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    addiu   $at, s1, 0x7FFF            # $at = 0000A0D7
    sb      t8, 0x6305($at)            # 000103DC
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xBA00             # s0 = 8011BA00
    lbu     v0, 0x6304(s2)             # 00006304
lbl_800E03A4:
    slti    $at, v0, 0x000C
    bne     $at, $zero, lbl_800E09F0
    slti    $at, v0, 0x0034
    beql    $at, $zero, lbl_800E09F4
    lw      t8, 0x0140($sp)
    lhu     v0, 0x63F0(s2)             # 000063F0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_800E09F0
    addiu   $at, $zero, 0x0030         # $at = 00000030
    beql    v0, $at, lbl_800E09F4
    lw      t8, 0x0140($sp)
    jal     func_8007E63C
    addiu   a0, $sp, 0x0140            # a0 = FFFFFFE8
    lw      t7, 0x0140($sp)
    lui     t6, 0xFC30                 # t6 = FC300000
    lui     t8, 0x552E                 # t8 = 552E0000
    addiu   t9, t7, 0x0008             # t9 = 00000008
    sw      t9, 0x0140($sp)
    ori     t8, t8, 0xFF7F             # t8 = 552EFF7F
    ori     t6, t6, 0x9661             # t6 = FC309661
    sw      t6, 0x0000(t7)             # 00000000
    sw      t8, 0x0004(t7)             # 00000004
    lbu     v0, 0x6304(s2)             # 00006304
    addiu   $at, $zero, 0x001B         # $at = 0000001B
    bnel    v0, $at, lbl_800E0664
    addiu   $at, $zero, 0x0021         # $at = 00000021
    lhu     a0, 0x63F0(s2)             # 000063F0
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x2EFC             # t9 = 80102EFC
    addiu   a0, a0, 0xFFF1             # a0 = FFFFFFF1
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t7, a0,  3
    addu    t7, t7, a0
    addu    t6, t7, t9
    lbu     a1, 0x0000(t6)             # FC309661
    lw      t8, 0x0000(s0)             # 8011BA00
    or      v1, $zero, $zero           # v1 = 00000000
    blez    a1, lbl_800E0660
    lhu     t2, 0x0F4C(t8)             # 552F0ECB
    sll     t7, a0,  3
    addu    t7, t7, a0
    lui     $ra, 0x0A0A                # $ra = 0A0A0000
    lui     t5, 0x9696                 # t5 = 96960000
    ori     t5, t5, 0x9696             # t5 = 96969696
    ori     $ra, $ra, 0x0A00           # $ra = 0A0A0A00
    addu    t4, t7, t9
    sh      a1, 0x013E($sp)
    lui     t3, 0xE700                 # t3 = E7000000
lbl_800E0468:
    lw      t6, 0x0140($sp)
    addiu   t8, t6, 0x0008             # t8 = FC309669
    sw      t8, 0x0140($sp)
    sw      $zero, 0x0004(t6)          # FC309665
    sw      t3, 0x0000(t6)             # FC309661
    lw      t7, 0x0140($sp)
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t9, t7, 0x0008             # t9 = 00000008
    sw      t9, 0x0140($sp)
    sw      t5, 0x0004(t7)             # 00000004
    sw      t6, 0x0000(t7)             # 00000000
    lw      t8, 0x0140($sp)
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t7, t8, 0x0008             # t7 = FC309671
    sw      t7, 0x0140($sp)
    sw      $ra, 0x0004(t8)            # FC30966D
    sw      t9, 0x0000(t8)             # FC309669
    lw      a2, 0x0140($sp)
    lui     t7, 0xFD70                 # t7 = FD700000
    addu    a3, t4, v1
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x0140($sp)
    sw      t7, 0x0000(a2)             # 00000000
    lbu     t9, 0x0001(a3)             # 00000001
    lui     t8, 0x8011                 # t8 = 80110000
    sll     t6, t9,  2
    addu    t8, t8, t6
    lw      t8, 0x31CC(t8)             # 801131CC
    sw      t8, 0x0004(a2)             # 00000004
    lw      t7, 0x0140($sp)
    lui     t6, 0xF570                 # t6 = F5700000
    lui     t8, 0x0700                 # t8 = 07000000
    addiu   t9, t7, 0x0008             # t9 = FD700008
    sw      t9, 0x0140($sp)
    sw      t8, 0x0004(t7)             # FD700004
    sw      t6, 0x0000(t7)             # FD700000
    lw      t7, 0x0140($sp)
    lui     t6, 0xE600                 # t6 = E6000000
    addiu   t9, t7, 0x0008             # t9 = FD700008
    sw      t9, 0x0140($sp)
    sw      $zero, 0x0004(t7)          # FD700004
    sw      t6, 0x0000(t7)             # FD700000
    lw      t8, 0x0140($sp)
    lui     t6, 0x0707                 # t6 = 07070000
    ori     t6, t6, 0xF400             # t6 = 0707F400
    addiu   t7, t8, 0x0008             # t7 = 07000008
    sw      t7, 0x0140($sp)
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t8)             # 07000000
    sw      t6, 0x0004(t8)             # 07000004
    lw      t8, 0x0140($sp)
    addiu   t7, t8, 0x0008             # t7 = 07000008
    sw      t7, 0x0140($sp)
    sw      $zero, 0x0004(t8)          # 07000004
    sw      t3, 0x0000(t8)             # 07000000
    lw      t9, 0x0140($sp)
    lui     t8, 0xF568                 # t8 = F5680000
    ori     t8, t8, 0x0400             # t8 = F5680400
    addiu   t6, t9, 0x0008             # t6 = F3000008
    sw      t6, 0x0140($sp)
    sw      $zero, 0x0004(t9)          # F3000004
    sw      t8, 0x0000(t9)             # F3000000
    lw      t7, 0x0140($sp)
    lui     t8, 0x0003                 # t8 = 00030000
    ori     t8, t8, 0xC03C             # t8 = 0003C03C
    addiu   t9, t7, 0x0008             # t9 = 07000010
    sw      t9, 0x0140($sp)
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t7)             # 07000008
    sw      t8, 0x0004(t7)             # 0700000C
    lw      a0, 0x0140($sp)
    lbu     t8, 0x0001(a3)             # 00000001
    lw      t6, 0x0000(s0)             # 8011BA00
    addiu   t9, a0, 0x0008             # t9 = FFFFFFF9
    sw      t9, 0x0140($sp)
    sll     t7, t8,  1
    addu    t9, t6, t7
    lh      t8, 0x0F6E(t9)             # 00000F67
    lui     $at, 0xE400                # $at = E4000000
    or      v0, t2, $zero              # v0 = 00000000
    addiu   t6, t8, 0x0010             # t6 = 0003C04C
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    addiu   t6, t2, 0x0010             # t6 = 00000010
    sll     t7, t6,  2
    or      t8, t9, $at                # t8 = E4000008
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E4000018
    sw      t7, 0x0000(a0)             # FFFFFFF1
    lbu     t8, 0x0001(a3)             # 00000001
    lw      t9, 0x0000(s0)             # 8011BA00
    sll     t6, t8,  1
    addu    t7, t9, t6
    lh      t8, 0x0F6E(t7)             # E4000F86
    sll     t7, t2,  2
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    andi    t8, t7, 0x0FFF             # t8 = 00000018
    sll     t9, t8, 12
    or      t7, t6, t9                 # t7 = 00000008
    sw      t7, 0x0004(a0)             # FFFFFFF5
    lw      t8, 0x0140($sp)
    lui     t9, 0xE100                 # t9 = E1000000
    addiu   t6, t8, 0x0008             # t6 = 00000020
    sw      t6, 0x0140($sp)
    sw      $zero, 0x0004(t8)          # 0000001C
    sw      t9, 0x0000(t8)             # 00000018
    lw      t7, 0x0140($sp)
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0140($sp)
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t7)             # 00000008
    sw      t9, 0x0004(t7)             # 0000000C
    lw      t7, 0x0000(s0)             # 8011BA00
    lh      t6, 0x013E($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
    lh      t8, 0x0F4E(t7)             # 00000F56
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    slt     $at, v1, t6
    addu    t2, v0, t8
    bne     $at, $zero, lbl_800E0468
    andi    t2, t2, 0xFFFF             # t2 = 00000000
    lbu     v0, 0x6304(s2)             # 00006304
lbl_800E0660:
    addiu   $at, $zero, 0x0021         # $at = 00000021
lbl_800E0664:
    beq     v0, $at, lbl_800E09F0
    lui     t3, 0xE700                 # t3 = E7000000
    addiu   $at, $zero, 0x0029         # $at = 00000029
    beql    v0, $at, lbl_800E09F4
    lw      t8, 0x0140($sp)
    lw      t0, 0x0000(s0)             # 8011BA00
    or      v1, $zero, $zero           # v1 = 00000000
    lhu     t2, 0x0F4C(t0)             # 00000F4C
lbl_800E0684:
    lui     t9, 0x8011                 # t9 = 80110000
    addiu   t9, t9, 0x2E8C             # t9 = 80112E8C
    addu    a3, v1, t9
    lbu     t7, 0x0000(a3)             # 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    beq     a2, t7, lbl_800E09F0
    lui     t6, 0x8011                 # t6 = 80110000
    addiu   t6, t6, 0x2E98             # t6 = 80112E98
    sll     t8, v1,  1
    addu    a1, t8, t6
    lh      v0, 0x0000(a1)             # 00000000
    beql    a2, v0, lbl_800E06DC
    lw      t6, 0x0140($sp)
    lh      t9, 0x0F78(t0)             # 00000F78
    addu    t7, v0, t9
    sh      t7, 0x0000(a1)             # 00000000
    lh      t8, 0x0000(a1)             # 00000000
    slti    $at, t8, 0x00FF
    bnel    $at, $zero, lbl_800E06DC
    lw      t6, 0x0140($sp)
    sh      a2, 0x0000(a1)             # 00000000
    lw      t6, 0x0140($sp)
lbl_800E06DC:
    addiu   t9, t6, 0x0008             # t9 = 80112EA0
    sw      t9, 0x0140($sp)
    sw      $zero, 0x0004(t6)          # 80112E9C
    sw      t3, 0x0000(t6)             # 80112E98
    lbu     t7, 0x0000(a3)             # 00000000
    bnel    t7, $zero, lbl_800E07A8
    lw      v0, 0x0140($sp)
    lw      v0, 0x0140($sp)
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x0140($sp)
    sw      t9, 0x0000(v0)             # 00000000
    lh      t7, 0x0000(a1)             # 00000000
    lui     t6, 0x8013                 # t6 = 80130000
    lh      t9, -0x41F0(t6)            # 8012BE10
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t7, t9, 24
    lui     t9, 0x8013                 # t9 = 80130000
    lh      t9, -0x41EC(t9)            # 8012BE14
    or      t6, t8, t7                 # t6 = 00000008
    andi    t8, t9, 0x00FF             # t8 = 00000000
    sll     t7, t8, 16
    lui     t8, 0x8013                 # t8 = 80130000
    lh      t8, -0x41EE(t8)            # 8012BE12
    or      t9, t6, t7                 # t9 = 00000008
    andi    t6, t8, 0x00FF             # t6 = 00000000
    sll     t7, t6,  8
    or      t8, t9, t7                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lw      a0, 0x0140($sp)
    lui     t7, 0xFB00                 # t7 = FB000000
    lui     t8, 0x8013                 # t8 = 80130000
    addiu   t9, a0, 0x0008             # t9 = FFFFFFF9
    sw      t9, 0x0140($sp)
    sw      t7, 0x0000(a0)             # FFFFFFF1
    lui     t7, 0x8013                 # t7 = 80130000
    lh      t7, -0x41E6(t7)            # 8012BE1A
    lh      t6, -0x41EA(t8)            # 8012BE16
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sll     t9, t6, 24
    sll     t6, t8, 16
    lui     t8, 0x8013                 # t8 = 80130000
    lh      t8, -0x41E8(t8)            # 8012BE18
    or      t7, t9, t6                 # t7 = FFFFFFF9
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t9,  8
    or      t8, t7, t6                 # t8 = FFFFFFF9
    sw      t8, 0x0004(a0)             # FFFFFFF5
    b       lbl_800E084C
    lw      v0, 0x0140($sp)
    lw      v0, 0x0140($sp)
lbl_800E07A8:
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x0140($sp)
    sw      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x0000(a1)             # 00000000
    lui     t7, 0x8013                 # t7 = 80130000
    lh      t6, -0x41E4(t7)            # 8012BE1C
    andi    t9, t8, 0x00FF             # t9 = 000000F9
    sll     t8, t6, 24
    lui     t6, 0x8013                 # t6 = 80130000
    lh      t6, -0x41E0(t6)            # 8012BE20
    or      t7, t9, t8                 # t7 = FFFFFFF9
    andi    t9, t6, 0x00FF             # t9 = 00000000
    sll     t8, t9, 16
    lui     t9, 0x8013                 # t9 = 80130000
    lh      t9, -0x41E2(t9)            # 8012BE1E
    or      t6, t7, t8                 # t6 = FFFFFFF9
    andi    t7, t9, 0x00FF             # t7 = 00000000
    sll     t8, t7,  8
    or      t9, t6, t8                 # t9 = FFFFFFF9
    sw      t9, 0x0004(v0)             # 00000004
    lw      a0, 0x0140($sp)
    lui     t8, 0xFB00                 # t8 = FB000000
    lui     t9, 0x8013                 # t9 = 80130000
    addiu   t6, a0, 0x0008             # t6 = FFFFFFF9
    sw      t6, 0x0140($sp)
    sw      t8, 0x0000(a0)             # FFFFFFF1
    lui     t8, 0x8013                 # t8 = 80130000
    lh      t8, -0x41DA(t8)            # 8012BE26
    lh      t7, -0x41DE(t9)            # 8012BE22
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     t6, t7, 24
    sll     t7, t9, 16
    lui     t9, 0x8013                 # t9 = 80130000
    lh      t9, -0x41DC(t9)            # 8012BE24
    or      t8, t6, t7                 # t8 = FFFFFFF9
    andi    t6, t9, 0x00FF             # t6 = 00000000
    sll     t7, t6,  8
    or      t9, t8, t7                 # t9 = FFFFFFF9
    sw      t9, 0x0004(a0)             # FFFFFFF5
    lw      v0, 0x0140($sp)
lbl_800E084C:
    lui     t7, 0xFD70                 # t7 = FD700000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x0140($sp)
    sw      t7, 0x0000(v0)             # 00000000
    lbu     t9, 0x0000(a3)             # 00000000
    lui     t8, 0x8011                 # t8 = 80110000
    sll     t6, t9,  2
    addu    t8, t8, t6
    lw      t8, 0x31CC(t8)             # 801131CC
    sw      t8, 0x0004(v0)             # 00000004
    lw      t7, 0x0140($sp)
    lui     t6, 0xF570                 # t6 = F5700000
    lui     t8, 0x0700                 # t8 = 07000000
    addiu   t9, t7, 0x0008             # t9 = FD700008
    sw      t9, 0x0140($sp)
    sw      t8, 0x0004(t7)             # FD700004
    sw      t6, 0x0000(t7)             # FD700000
    lw      t7, 0x0140($sp)
    lui     t6, 0xE600                 # t6 = E6000000
    addiu   t9, t7, 0x0008             # t9 = FD700008
    sw      t9, 0x0140($sp)
    sw      $zero, 0x0004(t7)          # FD700004
    sw      t6, 0x0000(t7)             # FD700000
    lw      t8, 0x0140($sp)
    lui     t6, 0x0707                 # t6 = 07070000
    ori     t6, t6, 0xF400             # t6 = 0707F400
    addiu   t7, t8, 0x0008             # t7 = 07000008
    sw      t7, 0x0140($sp)
    lui     t9, 0xF300                 # t9 = F3000000
    sw      t9, 0x0000(t8)             # 07000000
    sw      t6, 0x0004(t8)             # 07000004
    lw      t8, 0x0140($sp)
    addiu   t7, t8, 0x0008             # t7 = 07000008
    sw      t7, 0x0140($sp)
    sw      $zero, 0x0004(t8)          # 07000004
    sw      t3, 0x0000(t8)             # 07000000
    lw      t9, 0x0140($sp)
    lui     t8, 0xF568                 # t8 = F5680000
    ori     t8, t8, 0x0400             # t8 = F5680400
    addiu   t6, t9, 0x0008             # t6 = F3000008
    sw      t6, 0x0140($sp)
    sw      $zero, 0x0004(t9)          # F3000004
    sw      t8, 0x0000(t9)             # F3000000
    lw      t7, 0x0140($sp)
    lui     t8, 0x0003                 # t8 = 00030000
    ori     t8, t8, 0xC03C             # t8 = 0003C03C
    addiu   t9, t7, 0x0008             # t9 = 07000010
    sw      t9, 0x0140($sp)
    lui     t6, 0xF200                 # t6 = F2000000
    sw      t6, 0x0000(t7)             # 07000008
    sw      t8, 0x0004(t7)             # 0700000C
    lw      a2, 0x0140($sp)
    lbu     t8, 0x0000(a3)             # 00000000
    lw      t6, 0x0000(s0)             # 8011BA00
    addiu   t9, a2, 0x0008             # t9 = 00000107
    sw      t9, 0x0140($sp)
    sll     t7, t8,  1
    addu    t9, t6, t7
    lh      t8, 0x0F6E(t9)             # 00001075
    lui     $at, 0xE400                # $at = E4000000
    or      v0, t2, $zero              # v0 = 00000000
    addiu   t6, t8, 0x0010             # t6 = 0003C04C
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    addiu   t6, t2, 0x0010             # t6 = 00000010
    sll     t7, t6,  2
    or      t8, t9, $at                # t8 = E4000008
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E4000018
    sw      t7, 0x0000(a2)             # 000000FF
    lbu     t8, 0x0000(a3)             # 00000000
    lw      t9, 0x0000(s0)             # 8011BA00
    sll     t6, t8,  1
    addu    t7, t9, t6
    lh      t8, 0x0F6E(t7)             # E4000F86
    sll     t7, t2,  2
    sll     t9, t8,  2
    andi    t6, t9, 0x0FFF             # t6 = 00000008
    andi    t8, t7, 0x0FFF             # t8 = 00000018
    sll     t9, t8, 12
    or      t7, t6, t9                 # t7 = 00000008
    sw      t7, 0x0004(a2)             # 00000103
    lw      t8, 0x0140($sp)
    lui     t9, 0xE100                 # t9 = E1000000
    addiu   t6, t8, 0x0008             # t6 = 00000020
    sw      t6, 0x0140($sp)
    sw      $zero, 0x0004(t8)          # 0000001C
    sw      t9, 0x0000(t8)             # 00000018
    lw      t7, 0x0140($sp)
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t8, t7, 0x0008             # t8 = 00000010
    sw      t8, 0x0140($sp)
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(t7)             # 00000008
    sw      t9, 0x0004(t7)             # 0000000C
    lw      t0, 0x0000(s0)             # 8011BA00
    addiu   v1, v1, 0x0001             # v1 = 00000001
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    lh      t7, 0x0F4E(t0)             # 00000F4E
    slti    $at, v1, 0x0008
    addu    t2, v0, t7
    bne     $at, $zero, lbl_800E0684
    andi    t2, t2, 0xFFFF             # t2 = 00000000
lbl_800E09F0:
    lw      t8, 0x0140($sp)
lbl_800E09F4:
    lw      t6, 0x015C($sp)
    sw      t8, 0x0000(t6)             # F1000000
    lw      $ra, 0x003C($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0158           # $sp += 0x158


func_800E0A18:
# Has a d. list end command. Jumps to 800DDA6C.
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    lw      t6, 0x0040($sp)
    lw      s0, 0x0000(t6)             # 00000000
    lw      a0, 0x02C0(s0)             # 000002C0
    jal     func_800A1AA0
    sw      a0, 0x0038($sp)
    sw      v0, 0x003C($sp)
    lw      a2, 0x02B0(s0)             # 000002B0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    addiu   t7, a2, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0000(a2)             # 00000000
    lw      t9, 0x003C($sp)
    sw      t9, 0x0004(a2)             # 00000004
    jal     func_800DDA6C
    lw      a0, 0x0040($sp)
    lw      t0, 0x003C($sp)
    lui     t2, 0xDF00                 # t2 = DF000000
    addiu   t1, t0, 0x0008             # t1 = 00000008
    sw      t1, 0x003C($sp)
    sw      $zero, 0x0004(t0)          # 00000004
    sw      t2, 0x0000(t0)             # 00000000
    lw      a0, 0x0038($sp)
    jal     func_800A1AAC
    lw      a1, 0x003C($sp)
    lw      t3, 0x003C($sp)
    sw      t3, 0x02C0(s0)             # 000002C0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_800E0AA4:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0060($sp)
    lw      t6, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, t6, $at
    lw      t7, 0x03D8(a2)             # 000003D8
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      a3, 0x1C44(t6)             # 00001C44
    beq     t7, $zero, lbl_800E161C
    addiu   t8, t6, 0x20D8             # t8 = 000020D8
    sw      t8, 0x0034($sp)
    addu    t1, t8, $at
    lbu     v0, 0x6304(t1)             # 00006304
    slti    $at, v0, 0x0036
    bne     $at, $zero, lbl_800E0B04
    addiu   $at, $zero, 0x0036         # $at = 00000036
    beq     v0, $at, lbl_800E1320
    lw      t6, 0x0034($sp)
    addiu   $at, $zero, 0x0037         # $at = 00000037
    beql    v0, $at, lbl_800E1620
    lw      $ra, 0x001C($sp)
    b       lbl_800E1610
    lw      t7, 0x0034($sp)
lbl_800E0B04:
    slti    $at, v0, 0x0035
    bne     $at, $zero, lbl_800E0B20
    addiu   $at, $zero, 0x0035         # $at = 00000035
    beql    v0, $at, lbl_800E115C
    lbu     v0, 0x63E4(t1)             # 000063E4
    b       lbl_800E1610
    lw      t7, 0x0034($sp)
lbl_800E0B20:
    slti    $at, v0, 0x0009
    bne     $at, $zero, lbl_800E0B40
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    addiu   $at, $zero, 0x0034         # $at = 00000034
    beq     v0, $at, lbl_800E1124
    lw      a0, 0x0060($sp)
    b       lbl_800E1610
    lw      t7, 0x0034($sp)
lbl_800E0B40:
    sltiu   $at, t9, 0x0008
    beq     $at, $zero, lbl_800E160C
    sll     t9, t9,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t9
    lw      t9, 0x36C0($at)            # 801136C0
    jr      t9
    nop
    lui     a1, 0x8011                 # a1 = 80110000
    addiu   a1, a1, 0xA924             # a1 = 8010A924
    lbu     t2, 0x0000(a1)             # 8010A924
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      v1, 0x0000(t0)             # 8011BA00
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0000(a1)             # 8010A924
    lh      v0, 0x04B2(v1)             # 000004B2
    addiu   $at, $zero, 0x0040         # $at = 00000040
    or      a0, $zero, $zero           # a0 = 00000000
    bne     v0, $at, lbl_800E0BA8
    andi    t4, t3, 0x00FF             # t4 = 00000001
    slti    $at, t4, 0x0004
    bne     $at, $zero, lbl_800E0BE8
    nop
    b       lbl_800E0BE8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_800E0BA8:
    bne     v0, $zero, lbl_800E0BC0
    lw      t5, 0x0060($sp)
    lh      t7, 0x00A4(t5)             # 000000A4
    addiu   $at, $zero, 0x0045         # $at = 00000045
    bnel    t7, $at, lbl_800E0BCC
    lbu     t6, 0x0000(a1)             # 8010A924
lbl_800E0BC0:
    b       lbl_800E0BE8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lbu     t6, 0x0000(a1)             # 8010A924
lbl_800E0BCC:
    slti    $at, t6, 0x0004
    beql    $at, $zero, lbl_800E0BE8
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lw      t8, 0x6408(t1)             # 00006408
    bne     t8, $zero, lbl_800E0BE8
    nop
    addiu   a0, $zero, 0x0001          # a0 = 00000001
lbl_800E0BE8:
    beql    a0, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lw      t9, 0x6408(t1)             # 00006408
    lw      a0, 0x0060($sp)
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFEC
    beq     t9, $zero, lbl_800E0C8C
    addiu   a3, $sp, 0x0048            # a3 = FFFFFFE8
    lw      a1, 0x1C44(a0)             # 00001C45
    jal     func_80022B14
    sw      t1, 0x0024($sp)
    lw      t1, 0x0024($sp)
    lw      a0, 0x0060($sp)
    addiu   a2, $sp, 0x004C            # a2 = FFFFFFEC
    addiu   a3, $sp, 0x0046            # a3 = FFFFFFE6
    jal     func_80022B14
    lw      a1, 0x6408(t1)             # 00006408
    lh      v0, 0x0048($sp)
    lh      v1, 0x0046($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    slt     $at, v0, v1
    bne     $at, $zero, lbl_800E0C68
    lw      t1, 0x0024($sp)
    subu    t3, v0, v1
    bgez    t3, lbl_800E0C58
    sra     t4, t3,  1
    addiu   $at, t3, 0x0001            # $at = 00000001
    sra     t4, $at,  1
lbl_800E0C58:
    addu    a1, t4, v1
    sll     a1, a1, 16
    b       lbl_800E0CA4
    sra     a1, a1, 16
lbl_800E0C68:
    subu    t5, v1, v0
    bgez    t5, lbl_800E0C7C
    sra     t7, t5,  1
    addiu   $at, t5, 0x0001            # $at = 00000001
    sra     t7, $at,  1
lbl_800E0C7C:
    addu    a1, t7, v0
    sll     a1, a1, 16
    b       lbl_800E0CA4
    sra     a1, a1, 16
lbl_800E0C8C:
    lh      t6, 0x0B24(v1)             # 00000B24
    sh      t6, 0x0F14(v1)             # 00000F14
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t8, 0x0B26(v1)             # 00000B26
    sh      t8, 0x0F16(v1)             # 00000F16
    lh      a1, 0x004A($sp)
lbl_800E0CA4:
    lbu     v0, 0x62FE(t1)             # 000062FE
    lbu     a0, 0x62FD(t1)             # 000062FD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_800E0DAC
    nop
    lw      v1, 0x0000(t0)             # 8011BA00
    lw      t2, 0x0060($sp)
    lh      t9, 0x04B2(v1)             # 000004B2
    bnel    t9, $zero, lbl_800E0CE0
    lh      t3, 0x0B4C(v1)             # 00000B4C
    lh      v0, 0x00A4(t2)             # 000000A4
    addiu   $at, $zero, 0x0045         # $at = 00000045
    bnel    v0, $at, lbl_800E0D1C
    addiu   $at, $zero, 0x0020         # $at = 00000020
    lh      t3, 0x0B4C(v1)             # 00000B4C
lbl_800E0CE0:
    sll     v0, a0,  1
    lui     t5, 0x8011                 # t5 = 80110000
    slt     $at, a1, t3
    beq     $at, $zero, lbl_800E0D0C
    addu    t5, t5, v0
    sll     v0, a0,  1
    lui     t4, 0x8011                 # t4 = 80110000
    addu    t4, t4, v0
    lh      t4, 0x323C(t4)             # 8011323C
    b       lbl_800E0E0C
    sh      t4, 0x0B26(v1)             # 00000B26
lbl_800E0D0C:
    lh      t5, 0x3248(t5)             # 80113248
    b       lbl_800E0E0C
    sh      t5, 0x0B26(v1)             # 00000B26
    addiu   $at, $zero, 0x0020         # $at = 00000020
lbl_800E0D1C:
    beq     v0, $at, lbl_800E0D34
    addiu   $at, $zero, 0x0021         # $at = 00000021
    beq     v0, $at, lbl_800E0D34
    addiu   $at, $zero, 0x0022         # $at = 00000022
    bnel    v0, $at, lbl_800E0D74
    lh      t9, 0x0B50(v1)             # 00000B50
lbl_800E0D34:
    lh      t7, 0x0B4E(v1)             # 00000B4E
    sll     v0, a0,  1
    lui     t8, 0x8011                 # t8 = 80110000
    slt     $at, a1, t7
    beq     $at, $zero, lbl_800E0D64
    addu    t8, t8, v0
    sll     v0, a0,  1
    lui     t6, 0x8011                 # t6 = 80110000
    addu    t6, t6, v0
    lh      t6, 0x323C(t6)             # 8011323C
    b       lbl_800E0E0C
    sh      t6, 0x0B26(v1)             # 00000B26
lbl_800E0D64:
    lh      t8, 0x3248(t8)             # 80113248
    b       lbl_800E0E0C
    sh      t8, 0x0B26(v1)             # 00000B26
    lh      t9, 0x0B50(v1)             # 00000B50
lbl_800E0D74:
    sll     v0, a0,  1
    lui     t3, 0x8011                 # t3 = 80110000
    slt     $at, a1, t9
    beq     $at, $zero, lbl_800E0DA0
    addu    t3, t3, v0
    sll     v0, a0,  1
    lui     t2, 0x8011                 # t2 = 80110000
    addu    t2, t2, v0
    lh      t2, 0x323C(t2)             # 8011323C
    b       lbl_800E0E0C
    sh      t2, 0x0B26(v1)             # 00000B26
lbl_800E0DA0:
    lh      t3, 0x3248(t3)             # 80113248
    b       lbl_800E0E0C
    sh      t3, 0x0B26(v1)             # 00000B26
lbl_800E0DAC:
    bne     v0, $at, lbl_800E0DD0
    or      v1, v0, $zero              # v1 = 00000000
    sll     v0, a0,  1
    lui     t4, 0x8011                 # t4 = 80110000
    addu    t4, t4, v0
    lh      t4, 0x3248(t4)             # 80113248
    lw      t5, 0x0000(t0)             # 8011BA00
    b       lbl_800E0E0C
    sh      t4, 0x0B26(t5)             # 80110B26
lbl_800E0DD0:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_800E0DF8
    sll     v0, a0,  1
    sll     v0, a0,  1
    lui     t7, 0x8011                 # t7 = 80110000
    addu    t7, t7, v0
    lh      t7, 0x3254(t7)             # 80113254
    lw      t6, 0x0000(t0)             # 8011BA00
    b       lbl_800E0E0C
    sh      t7, 0x0B26(t6)             # 80110B26
lbl_800E0DF8:
    lui     t8, 0x8011                 # t8 = 80110000
    addu    t8, t8, v0
    lh      t8, 0x323C(t8)             # 8011323C
    lw      t9, 0x0000(t0)             # 8011BA00
    sh      t8, 0x0B26(t9)             # 00000B26
lbl_800E0E0C:
    lui     t2, 0x8011                 # t2 = 80110000
    addu    t2, t2, v0
    lh      t2, 0x3230(t2)             # 80113230
    lw      t3, 0x0000(t0)             # 8011BA00
    lui     t5, 0x8011                 # t5 = 80110000
    addu    t5, t5, v0
    sh      t2, 0x0B24(t3)             # 80110B24
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t5, 0x3260(t5)             # 80113260
    lui     a1, 0x8012                 # a1 = 80120000
    lh      t4, 0x0B26(v1)             # 00000B26
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lui     t8, 0x8011                 # t8 = 80110000
    addu    t7, t4, t5
    sh      t7, 0x0B16(v1)             # 00000B16
    lbu     t6, 0x1409(a1)             # 8011B9D9
    bnel    t6, $zero, lbl_800E0E98
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t8, -0x56C8(t8)            # 8010A938
    bnel    t8, $zero, lbl_800E0E98
    lw      v1, 0x0000(t0)             # 8011BA00
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t9, 0x0B26(v1)             # 00000B26
    addiu   t2, t9, 0x0007             # t2 = 00000007
    sh      t2, 0x0B1A(v1)             # 00000B1A
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t3, 0x0B26(v1)             # 00000B26
    addiu   t4, t3, 0x0019             # t4 = 80110019
    sh      t4, 0x0B1C(v1)             # 00000B1C
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t5, 0x0B26(v1)             # 00000B26
    addiu   t7, t5, 0x002B             # t7 = 8011002B
    b       lbl_800E0EC4
    sh      t7, 0x0B1E(v1)             # 00000B1E
    lw      v1, 0x0000(t0)             # 8011BA00
lbl_800E0E98:
    lh      t6, 0x0B26(v1)             # 00000B26
    addiu   t8, t6, 0x0014             # t8 = 80110014
    sh      t8, 0x0B1A(v1)             # 00000B1A
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t9, 0x0B26(v1)             # 00000B26
    addiu   t2, t9, 0x0020             # t2 = 00000020
    sh      t2, 0x0B1C(v1)             # 00000B1C
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t3, 0x0B26(v1)             # 00000B26
    addiu   t4, t3, 0x002C             # t4 = 8011002C
    sh      t4, 0x0B1E(v1)             # 00000B1E
lbl_800E0EC4:
    lbu     v0, 0x62FD(t1)             # 000062FD
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t7, 0x0034($sp)
    beq     v0, $at, lbl_800E0EDC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_800E0F30
lbl_800E0EDC:
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    addiu   $at, t7, 0x7FFF            # $at = 8011802A
    sb      t5, 0x6305($at)            # 8011E32F
    lw      v1, 0x0000(t0)             # 8011BA00
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    lh      t6, 0x0B24(v1)             # 00000B24
    addiu   v0, $zero, 0x0200          # v0 = 00000200
    sh      t6, 0x0F14(v1)             # 00000F14
    lw      v1, 0x0000(t0)             # 8011BA00
    lh      t8, 0x0B26(v1)             # 00000B26
    sh      t8, 0x0F16(v1)             # 00000F16
    lw      t2, 0x0000(t0)             # 8011BA00
    sh      t9, 0x04C0(t2)             # 000004E0
    lw      t4, 0x0000(t0)             # 8011BA00
    sh      t3, 0x04C2(t4)             # 801104EE
    lw      t5, 0x0000(t0)             # 8011BA00
    sh      v0, 0x04B4(t5)             # 000004B7
    lw      t7, 0x0000(t0)             # 8011BA00
    b       lbl_800E161C
    sh      v0, 0x04B6(t7)             # 801104E1
lbl_800E0F30:
    jal     func_800D67E8
    lw      a0, 0x0034($sp)
    jal     func_800C763C
    or      a0, $zero, $zero           # a0 = 00000000
    lw      t6, 0x0034($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x63E8($at)         # 0000E3E7
    lw      t9, 0x0034($sp)
    addiu   $at, t9, 0x7FFF            # $at = 00007FFF
    b       lbl_800E161C
    sb      t8, 0x6305($at)            # 0000E304
    jal     func_800D67E8
    lw      a0, 0x0034($sp)
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
    lw      t3, 0x0034($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    sb      t2, 0x6305($at)            # 0000E304
    lw      t4, 0x0000(t0)             # 8011BA00
    lw      a0, 0x0060($sp)
    lh      t5, 0x04D2(t4)             # 000004D2
    bnel    t5, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    jal     func_80071E6C
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0060($sp)
    jal     func_800DA30C
    sw      t1, 0x0024($sp)
    lui     t7, 0x8011                 # t7 = 80110000
    lh      t7, -0x56E0(t7)            # 8010A920
    lw      t1, 0x0024($sp)
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     t7, $zero, lbl_800E0FDC
    nop
    jal     func_8006D8E0
    sw      t1, 0x0024($sp)
    lw      t1, 0x0024($sp)
lbl_800E0FDC:
    lui     t6, 0x8011                 # t6 = 80110000
    lbu     t6, 0x32A8(t6)             # 801132A8
    lw      t9, 0x0034($sp)
    beql    t6, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lhu     t8, 0x63D4(t1)             # 000063D4
    addiu   $at, t9, 0x7FFF            # $at = 00007FFF
    sh      t8, 0x63D3($at)            # 0000E3D2
    lui     $at, 0x8011                # $at = 80110000
    b       lbl_800E161C
    sb      $zero, 0x32A8($at)         # 801132A8
    lbu     t2, 0x63E7(t1)             # 000063E7
    lw      t4, 0x0034($sp)
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    sb      t3, 0x63E8($at)            # 0000E3E7
    lbu     t5, 0x63E7(t1)             # 000063E7
    bnel    t5, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    jal     func_800DA30C
    lw      a0, 0x0060($sp)
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x62FD(t1)             # 000062FD
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t0, 0x8012                 # t0 = 80120000
    beq     t7, $at, lbl_800E161C
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      t6, 0x0000(t0)             # 8011BA00
    lw      t9, 0x0060($sp)
    lh      t8, 0x04D2(t6)             # 000004D2
    bnel    t8, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lhu     t2, 0x0020(t9)             # 00000020
    addiu   $at, $zero, 0x4000         # $at = 00004000
    andi    t3, t2, 0x4000             # t3 = 00000000
    bnel    t3, $at, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lhu     t4, 0x63D6(t1)             # 000063D6
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, 0x8011                # $at = 80110000
    bnel    t4, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lw      t6, 0x0034($sp)
    sb      t5, -0x56D0($at)           # 8010A930
    lhu     t7, 0x63D4(t1)             # 000063D4
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    b       lbl_800E161C
    sh      t7, 0x63D3($at)            # 0000E3D2
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      t8, 0x0000(t0)             # 8011BA00
    lw      a0, 0x0060($sp)
    lh      t9, 0x04D2(t8)             # 000004D2
    bnel    t9, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    sw      t1, 0x0024($sp)
    beq     v0, $zero, lbl_800E161C
    lw      t1, 0x0024($sp)
    lw      t3, 0x0034($sp)
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    sb      t2, 0x6305($at)            # 0000E304
    lw      t7, 0x0034($sp)
    lhu     t4, 0x63D2(t1)             # 000063D2
    addiu   $at, t7, 0x7FFF            # $at = 00007FFF
    addiu   t5, t4, 0x0001             # t5 = 00000001
    b       lbl_800E161C
    sh      t5, 0x63D3($at)            # 0000E3D2
    lbu     t6, 0x63E7(t1)             # 000063E7
    lw      t9, 0x0034($sp)
    addiu   t8, t6, 0xFFFF             # t8 = FFFFFFFF
    addiu   $at, t9, 0x7FFF            # $at = 00007FFF
    sb      t8, 0x63E8($at)            # 0000E3E7
    lbu     t2, 0x63E7(t1)             # 000063E7
    lw      t4, 0x0034($sp)
    bne     t2, $zero, lbl_800E161C
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    b       lbl_800E161C
    sb      t3, 0x6305($at)            # 0000E304
lbl_800E1124:
    jal     func_800D6110
    sw      t1, 0x0024($sp)
    beq     v0, $zero, lbl_800E161C
    lw      t1, 0x0024($sp)
    lw      v0, 0x0034($sp)
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   $at, v0, 0x7FFF            # $at = 00007FFF
    sb      t5, 0x6305($at)            # 0000E304
    sh      $zero, 0x63D7($at)         # 0000E3D6
    lhu     t7, 0x63CE(t1)             # 000063CE
    addiu   t6, t7, 0x0001             # t6 = 00000001
    b       lbl_800E161C
    sh      t6, 0x63CF($at)            # 0000E3CE
    lbu     v0, 0x63E4(t1)             # 000063E4
lbl_800E115C:
    addiu   $at, $zero, 0x0060         # $at = 00000060
    lw      t2, 0x0034($sp)
    bnel    v0, $at, lbl_800E119C
    addiu   $at, $zero, 0x0040         # $at = 00000040
    lbu     t8, 0x63E7(t1)             # 000063E7
    addiu   $at, t2, 0x7FFF            # $at = 00007FFF
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sb      t9, 0x63E8($at)            # 0000E3E7
    lbu     t3, 0x63E7(t1)             # 000063E7
    bnel    t3, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x0060($sp)
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
    addiu   $at, $zero, 0x0040         # $at = 00000040
lbl_800E119C:
    beq     v0, $at, lbl_800E161C
    addiu   $at, $zero, 0x0050         # $at = 00000050
    beq     v0, $at, lbl_800E161C
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBA00             # t0 = 8011BA00
    lw      t4, 0x0000(t0)             # 8011BA00
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lh      t5, 0x04D2(t4)             # 000004D2
    bnel    t5, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    bne     v0, $at, lbl_800E1234
    lw      a0, 0x0060($sp)
    lhu     t7, 0x04C6(a2)             # 000004C6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t7, $at, lbl_800E1234
    nop
    lw      a0, 0x0060($sp)
    jal     func_800D6110
    sw      t1, 0x0024($sp)
    beq     v0, $zero, lbl_800E161C
    lw      t1, 0x0024($sp)
    lbu     t6, 0x63E5(t1)             # 000063E5
    lw      t3, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    bne     t6, $zero, lbl_800E121C
    addu    $at, $at, t3
    lw      t9, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addu    $at, $at, t9
    b       lbl_800E1224
    sh      t8, 0x04C6($at)            # 000104C6
lbl_800E121C:
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    sh      t2, 0x04C6($at)            # 000104C6
lbl_800E1224:
    jal     func_800D6218
    lw      a0, 0x0060($sp)
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
lbl_800E1234:
    jal     func_800D61D0
    sw      t1, 0x0024($sp)
    beq     v0, $zero, lbl_800E161C
    lw      t1, 0x0024($sp)
    lbu     t4, 0x63E4(t1)             # 000063E4
    addiu   $at, $zero, 0x0030         # $at = 00000030
    lui     a3, 0x8010                 # a3 = 80100000
    bne     t4, $at, lbl_800E12EC
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t5, t5, 0x43A8             # t5 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t5, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4818          # a0 = 00004818
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      t1, 0x0024($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lbu     t7, 0x1409(a1)             # 8011B9D9
    lw      t1, 0x0024($sp)
    lui     t6, 0x8011                 # t6 = 80110000
    bne     t7, $zero, lbl_800E12D8
    lw      a0, 0x0060($sp)
    lh      t6, -0x56C8(t6)            # 8010A938
    bne     t6, $zero, lbl_800E12D8
    nop
    lhu     t9, 0x63D2(t1)             # 000063D2
    lw      t8, 0x0034($sp)
    lw      a0, 0x0060($sp)
    sll     t2, t9,  1
    addu    t3, t8, t2
    addiu   a1, t3, 0x7FFF             # a1 = 00007FFF
    jal     func_800DCE80
    lhu     a1, 0x6307(a1)             # 0000E306
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
lbl_800E12D8:
    lui     a1, 0x8011                 # a1 = 80110000
    jal     func_800DCE80
    lhu     a1, -0x56CC(a1)            # 8010A934
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
lbl_800E12EC:
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    jal     func_800D6218
    lw      a0, 0x0060($sp)
    b       lbl_800E1620
    lw      $ra, 0x001C($sp)
lbl_800E1320:
    lbu     t5, 0x63E7(t1)             # 000063E7
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    addiu   t7, t5, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x63E8($at)            # 0000E3E7
    lbu     t9, 0x63E7(t1)             # 000063E7
    bnel    t9, $zero, lbl_800E1620
    lw      $ra, 0x001C($sp)
    lhu     v0, 0x62F8(t1)             # 000062F8
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    slti    $at, v0, 0x00C2
    bne     $at, $zero, lbl_800E1354
    slti    $at, v0, 0x00C7
    bne     $at, $zero, lbl_800E1364
lbl_800E1354:
    slti    $at, v0, 0x00FA
    bne     $at, $zero, lbl_800E1378
    slti    $at, v0, 0x00FE
    beq     $at, $zero, lbl_800E1378
lbl_800E1364:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   t8, $zero, 0x0140          # t8 = 00000140
    sh      t8, 0x1424(a1)             # 8011B9F4
    lhu     v0, 0x62F8(t1)             # 000062F8
lbl_800E1378:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x301F         # $at = 0000301F
    beq     v0, $at, lbl_800E13CC
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x00CF         # $at = 000000CF
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x021C         # $at = 0000021C
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x4078         # $at = 00004078
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x2015         # $at = 00002015
    beq     v0, $at, lbl_800E13CC
    addiu   $at, $zero, 0x3040         # $at = 00003040
    bnel    v0, $at, lbl_800E13D4
    lw      t3, 0x0060($sp)
lbl_800E13CC:
    sh      t2, 0x13EE(a1)             # 8011B9BE
    lw      t3, 0x0060($sp)
lbl_800E13D4:
    lbu     t4, 0x1D6C(t3)             # 00001D6C
    bnel    t4, $zero, lbl_800E14A0
    lw      t2, 0x0034($sp)
    lhu     v0, 0x62F8(t1)             # 000062F8
    addiu   $at, $zero, 0x2061         # $at = 00002061
    beq     v0, $at, lbl_800E149C
    addiu   $at, $zero, 0x2025         # $at = 00002025
    beq     v0, $at, lbl_800E149C
    addiu   $at, $zero, 0x208C         # $at = 0000208C
    beq     v0, $at, lbl_800E149C
    slti    $at, v0, 0x088D
    bne     $at, $zero, lbl_800E1418
    slti    $at, v0, 0x0893
    beql    $at, $zero, lbl_800E141C
    addiu   $at, $zero, 0x3055         # $at = 00003055
    lbu     t5, 0x63E5(t1)             # 000063E5
    beq     t5, $zero, lbl_800E149C
lbl_800E1418:
    addiu   $at, $zero, 0x3055         # $at = 00003055
lbl_800E141C:
    beql    v0, $at, lbl_800E14A0
    lw      t2, 0x0034($sp)
    lw      t7, 0x0008(a1)             # 8011A5D8
    ori     $at, $zero, 0xFFF0         # $at = 0000FFF0
    lw      t6, 0x0060($sp)
    slt     $at, t7, $at
    beql    $at, $zero, lbl_800E14A0
    lw      t2, 0x0034($sp)
    lh      t9, 0x07A0(t6)             # 000007A0
    bnel    t9, $zero, lbl_800E14A0
    lw      t2, 0x0034($sp)
    lhu     a0, 0x13EE(a1)             # 8011B9BE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    beql    a0, $zero, lbl_800E1470
    sh      t8, 0x13EE(a1)             # 8011B9BE
    beq     a0, $at, lbl_800E146C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    a0, $at, lbl_800E1478
    sh      $zero, 0x13EA(a1)          # 8011B9BA
lbl_800E146C:
    sh      t8, 0x13EE(a1)             # 8011B9BE
lbl_800E1470:
    andi    a0, t8, 0xFFFF             # a0 = 00000032
    sh      $zero, 0x13EA(a1)          # 8011B9BA
lbl_800E1478:
    sw      a2, 0x0030($sp)
    sw      a3, 0x0054($sp)
    jal     func_8006D8E0
    sw      t1, 0x0024($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      a2, 0x0030($sp)
    lw      a3, 0x0054($sp)
    lw      t1, 0x0024($sp)
lbl_800E149C:
    lw      t2, 0x0034($sp)
lbl_800E14A0:
    addiu   $at, t2, 0x7FFF            # $at = 00007FFF
    sw      $zero, 0x6301($at)         # 0000E300
    lw      t3, 0x0034($sp)
    addiu   $at, t3, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x6305($at)         # 0000E304
    lw      v0, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, v0, $at
    sh      $zero, 0x01FC(v0)          # 000001FC
    lh      t4, 0x01FC(v0)             # 000001FC
    sh      t4, 0x01FA(v0)             # 000001FA
    lw      t5, 0x0034($sp)
    addiu   $at, t5, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x63E8($at)         # 0000E3E7
    lw      t6, 0x0034($sp)
    lbu     t7, 0x63E7(t1)             # 000063E7
    addiu   $at, t6, 0x7FFF            # $at = 00007FFF
    sh      t7, 0x62F9($at)            # 0000E2F8
    lbu     t9, 0x63E4(t1)             # 000063E4
    addiu   $at, $zero, 0x0040         # $at = 00000040
    lw      t8, 0x0034($sp)
    bne     t9, $at, lbl_800E1520
    lw      t4, 0x0034($sp)
    addiu   $at, t8, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x63E5($at)         # 0000E3E4
    lw      t3, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addu    $at, $at, t3
    b       lbl_800E1528
    sh      t2, 0x04C6($at)            # 000104C6
lbl_800E1520:
    addiu   $at, t4, 0x7FFF            # $at = 00007FFF
    sb      $zero, 0x63E5($at)         # 0000E3E4
lbl_800E1528:
    lw      v0, 0x00A4(a1)             # 8011A674
    lui     $at, 0xF000                # $at = F0000000
    lui     t3, 0x8011                 # t3 = 80110000
    and     t5, v0, $at
    lui     $at, 0x4000                # $at = 40000000
    bnel    t5, $at, lbl_800E156C
    lhu     v1, 0x63F0(t1)             # 000063F0
    lh      t6, 0x002E(a1)             # 8011A5FE
    lh      t8, 0x0030(a1)             # 8011A600
    lui     $at, 0x4000                # $at = 40000000
    xor     t7, v0, $at
    addiu   t9, t6, 0x0010             # t9 = 00000010
    addiu   t2, t8, 0x0010             # t2 = 00000010
    sw      t7, 0x00A4(a1)             # 8011A674
    sh      t9, 0x002E(a1)             # 8011A5FE
    sh      t2, 0x0030(a1)             # 8011A600
    lhu     v1, 0x63F0(t1)             # 000063F0
lbl_800E156C:
    addiu   $at, $zero, 0x0031         # $at = 00000031
    beql    v1, $at, lbl_800E1600
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lh      t3, -0x56C4(t3)            # 8010A93C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    t3, $at, lbl_800E15AC
    addiu   $at, $zero, 0x0029         # $at = 00000029
    lw      v0, 0x067C(a3)             # 0000067C
    addiu   t4, $zero, 0xFF20          # t4 = FFFFFF20
    sh      t4, 0x0680(a3)             # 00000680
    lw      t5, 0x0004(v0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    or      t7, t5, $at                # t7 = 00010000
    sw      t7, 0x0004(v0)             # 00000004
    lhu     v1, 0x63F0(t1)             # 000063F0
    addiu   $at, $zero, 0x0029         # $at = 00000029
lbl_800E15AC:
    bnel    v1, $at, lbl_800E1600
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    lhu     v0, 0x04C6(a2)             # 000004C6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      t9, 0x0060($sp)
    beq     v0, $at, lbl_800E15CC
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v0, $at, lbl_800E15FC
lbl_800E15CC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sh      t6, 0x04C6($at)            # 000104C6
    lhu     t8, 0x63F2(t1)             # 000063F2
    addiu   $at, $zero, 0x0009         # $at = 00000009
    lw      t3, 0x0060($sp)
    bne     t8, $at, lbl_800E15FC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t3
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      t2, 0x04C6($at)            # 000104C6
lbl_800E15FC:
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
lbl_800E1600:
    lui     $at, 0x8011                # $at = 80110000
    b       lbl_800E161C
    sh      t4, -0x56C4($at)           # 8010A93C
lbl_800E160C:
    lw      t7, 0x0034($sp)
lbl_800E1610:
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   $at, t7, 0x7FFF            # $at = 00017FFF
    sb      t5, 0x6411($at)            # 0001E410
lbl_800E161C:
    lw      $ra, 0x001C($sp)
lbl_800E1620:
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_800E162C:
# Setup Pointers to Message Tables
# Message ID, nes_message_data_static, & staff_message_data_static related.
# (64DD Disk can change the pointers to somewhere else)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a0, 0x8011                 # a0 = 80110000
    lui     a1, 0x8011                 # a1 = 80110000
    lui     a2, 0x8011                 # a2 = 80110000
    addiu   a2, a2, 0x2E3C             # a2 = 80112E3C
    addiu   a1, a1, 0x2E38             # a1 = 80112E38
    addiu   a0, a0, 0x2E34             # a0 = 80112E34
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8011                 # t6 = 80110000
    lui     t7, 0x8011                 # t7 = 80110000
    lui     t8, 0x8011                 # t8 = 80110000
    addiu   t6, t6, 0xA94C             # t6 = 8010A94C
    addiu   t7, t7, 0xEA8C             # t7 = 8010EA8C
    addiu   t8, t8, 0x2CAC             # t8 = 80112CAC
    sw      t6, 0x0000(a0)             # 80112E34
    sw      t7, 0x0000(a1)             # 80112E38
    sw      t8, 0x0000(a2)             # 80112E3C
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beql    v0, $zero, lbl_800E1698
    lw      $ra, 0x0014($sp)
    lw      v1, 0x0058(v0)             # 80120058
    beql    v1, $zero, lbl_800E1698
    lw      $ra, 0x0014($sp)
    jalr    $ra, v1
    nop
    lw      $ra, 0x0014($sp)
lbl_800E1698:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop


func_800E16B0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      $zero, 0x0A20($at)         # 00010A20
    jr      $ra
    nop


func_800E16C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lhu     t6, 0x0A20(t6)             # 00010A20
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, a0
    slti    $at, t6, 0x0002
    bne     $at, $zero, lbl_800E16F8
    lui     v0, 0x0001                 # v0 = 00010000
    lhu     t7, 0x0A20(t7)             # 00010A20
    slti    $at, t7, 0x0014
    bne     $at, $zero, lbl_800E1714
lbl_800E16F8:
    addu    v0, v0, a0
    lhu     v0, 0x0A20(v0)             # 00010A20
    slti    $at, v0, 0x0015
    bne     $at, $zero, lbl_800E171C
    slti    $at, v0, 0x0018
    beql    $at, $zero, lbl_800E1720
    lw      $ra, 0x0014($sp)
lbl_800E1714:
    jal     func_80061F78
    nop
lbl_800E171C:
    lw      $ra, 0x0014($sp)
lbl_800E1720:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800E172C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s5, 0x002C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, s5
    lhu     t6, 0x0A20(t6)             # 00010A20
    addiu   t7, t6, 0xFFFF             # t7 = 0000FFFF
    sltiu   $at, t7, 0x0018
    beq     $at, $zero, lbl_800E1BC0
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, 0x36E0($at)            # 801136E0
    jr      t7
    nop
    jal     func_800D6218
    or      a0, s5, $zero              # a0 = 00000000
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0xA5D0             # s3 = 8011A5D0
    lhu     t8, 0x13FC(s3)             # 8011B9CC
    lui     s6, 0x8010                 # s6 = 80100000
    sh      $zero, 0x13CE(s3)          # 8011B99E
    andi    t9, t8, 0xFFFE             # t9 = 00000000
    sh      $zero, 0x13D2(s3)          # 8011B9A2
    sh      t9, 0x13FC(s3)             # 8011B9CC
    addiu   s6, s6, 0x8F34             # s6 = 800F8F34
    or      s4, $zero, $zero           # s4 = 00000000
    lbu     t2, 0x002D(s6)             # 800F8F61
lbl_800E17B8:
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0x74F8             # t1 = 800F74F8
    sll     v1, s4,  1
    addu    s2, v1, t1
    addu    t3, s3, t2
    lbu     t4, 0x0074(t3)             # 00000074
    lh      t5, 0x0000(s2)             # 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x7500             # t6 = 800F7500
    bne     t4, t5, lbl_800E183C
    addu    s1, v1, t6
    lh      v0, 0x0000(s1)             # 00000000
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addu    t7, s6, v0
    lbu     t8, 0x0000(t7)             # 00000000
    addu    t9, s3, t8
    sb      v0, 0x0074(t9)             # 00000074
    addu    v0, s3, s0
lbl_800E1800:
    lbu     t1, 0x0068(v0)             # 00000068
    lh      t2, 0x0000(s2)             # 00000000
    or      a0, s5, $zero              # a0 = 00000000
    bnel    t1, t2, lbl_800E1828
    addiu   s0, s0, 0x0001             # s0 = 00000002
    lh      t3, 0x0000(s1)             # 00000000
    andi    a1, s0, 0xFFFF             # a1 = 00000002
    jal     func_8006FB50
    sb      t3, 0x0068(v0)             # 00000068
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_800E1828:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0004
    bnel    $at, $zero, lbl_800E1800
    addu    v0, s3, s0
lbl_800E183C:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sra     s4, s4, 16
    slti    $at, s4, 0x0003
    bnel    $at, $zero, lbl_800E17B8
    lbu     t2, 0x002D(s6)             # 800F8F61
    lbu     v0, 0x0068(s3)             # 8011A638
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    or      a0, s5, $zero              # a0 = 00000000
    beq     v0, $at, lbl_800E189C
    addiu   $at, $zero, 0x003C         # $at = 0000003C
    beq     v0, $at, lbl_800E189C
    addiu   $at, $zero, 0x003D         # $at = 0000003D
    beq     v0, $at, lbl_800E189C
    addiu   $at, $zero, 0x0055         # $at = 00000055
    beql    v0, $at, lbl_800E18A0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lbu     v0, 0x13E2(s3)             # 8011B9B2
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    beql    v0, $zero, lbl_800E189C
    sb      v1, 0x0068(s3)             # 8011A638
    b       lbl_800E189C
    sb      v0, 0x0068(s3)             # 8011A638
    sb      v1, 0x0068(s3)             # 8011A638
lbl_800E189C:
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_800E18A0:
    sh      $zero, 0x13C8(s3)          # 8011B998
    sh      $zero, 0x0038(s3)          # 8011A608
    sb      v1, 0x13E0(s3)             # 8011B9B0
    sb      v1, 0x13E1(s3)             # 8011B9B1
    sh      $zero, 0x13FA(s3)          # 8011B9CA
    sh      $zero, 0x13FC(s3)          # 8011B9CC
    sh      $zero, 0x13FE(s3)          # 8011B9CE
    sh      $zero, 0x1400(s3)          # 8011B9D0
    sb      $zero, 0x13E6(s3)          # 8011B9B6
    sb      $zero, 0x13E5(s3)          # 8011B9B5
    sb      $zero, 0x13E4(s3)          # 8011B9B4
    sb      $zero, 0x13E3(s3)          # 8011B9B3
    sb      $zero, 0x13E2(s3)          # 8011B9B2
    sh      $zero, 0x13EC(s3)          # 8011B9BC
    sh      $zero, 0x13EA(s3)          # 8011B9BA
    sh      $zero, 0x13E8(s3)          # 8011B9B8
    jal     func_80061D90
    sb      $zero, 0x13E7(s3)          # 8011B9B7
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      t7, 0x0000(v1)             # 801132B0
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    mtc1    $zero, $f12                # $f12 = 0.00
    lh      v1, 0x0FC8(v0)             # 80120FC8
    lh      a0, 0x0FCA(v0)             # 80120FCA
    lh      a1, 0x0FCC(v0)             # 80120FCC
    slti    $at, v1, 0x0065
    bne     $at, $zero, lbl_800E1924
    sll     v0, a0,  2
    b       lbl_800E1940
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_800E1924:
    sll     t0, v1,  8
    subu    t0, t0, v1
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, t0, $at
    mflo    t0
    nop
    nop
lbl_800E1940:
    subu    v0, v0, a0
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_800E1958
    or      v1, v0, $zero              # v1 = 80120000
    b       lbl_800E1958
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_800E1958:
    slti    $at, a1, 0x0065
    bne     $at, $zero, lbl_800E196C
    andi    a2, v1, 0x00FF             # a2 = 000000FF
    b       lbl_800E1988
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800E196C:
    sll     v0, a1,  8
    subu    v0, v0, a1
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, v0, $at
    mflo    v0
    nop
    nop
lbl_800E1988:
    andi    a1, t0, 0x00FF             # a1 = 000000FF
    jal     func_800915CC
    andi    a3, v0, 0x00FF             # a3 = 000000FF
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    b       lbl_800E1BC0
    sh      t8, 0x0A20($at)            # 00010A20
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    lh      t9, 0x0000(v1)             # 801132B0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    addiu   t1, t9, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0000(v1)             # 801132B0
    lh      t2, 0x0000(v1)             # 801132B0
    addiu   t3, $zero, 0x0008          # t3 = 00000008
    bnel    t2, $zero, lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    sh      t3, 0x0934($at)            # 00010934
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A20           # $at = 00010A20
    addu    v0, s5, $at
    lhu     t4, 0x0000(v0)             # 00000000
    addiu   t5, t4, 0x0001             # t5 = 00000001
    jal     func_80091748
    sh      t5, 0x0000(v0)             # 00000000
    b       lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A20           # $at = 00010A20
    addu    v0, s5, $at
    lhu     t6, 0x0000(v0)             # 00000000
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0000(v0)             # 00000000
    sh      $zero, 0x0000(v1)          # 801132B0
    jal     func_80061D90
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80099620
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    b       lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    lui     v1, 0x8011                 # v1 = 80110000
    lui     $at, 0x0001                # $at = 00010000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    ori     $at, $at, 0x0A20           # $at = 00010A20
    sh      t8, 0x0000(v1)             # 801132B0
    addu    v0, s5, $at
    lhu     t9, 0x0000(v0)             # 00000000
    mtc1    $zero, $f12                # $f12 = 0.00
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sh      t1, 0x0000(v0)             # 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lh      v1, 0x0FC8(v0)             # 80120FC8
    lh      a0, 0x0FCA(v0)             # 80120FCA
    lh      a1, 0x0FCC(v0)             # 80120FCC
    slti    $at, v1, 0x0065
    bne     $at, $zero, lbl_800E1A8C
    sll     v0, a0,  2
    b       lbl_800E1AA8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_800E1A8C:
    sll     t0, v1,  8
    subu    t0, t0, v1
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, t0, $at
    mflo    t0
    nop
    nop
lbl_800E1AA8:
    subu    v0, v0, a0
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_800E1AC0
    or      v1, v0, $zero              # v1 = 80120000
    b       lbl_800E1AC0
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_800E1AC0:
    slti    $at, a1, 0x0065
    bne     $at, $zero, lbl_800E1AD4
    andi    a2, v1, 0x00FF             # a2 = 000000FF
    b       lbl_800E1AF0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
lbl_800E1AD4:
    sll     v0, a1,  8
    subu    v0, v0, a1
    addiu   $at, $zero, 0x0064         # $at = 00000064
    div     $zero, v0, $at
    mflo    v0
    nop
    nop
lbl_800E1AF0:
    andi    a1, t0, 0x00FF             # a1 = 000000FF
    jal     func_800915CC
    andi    a3, v0, 0x00FF             # a3 = 000000FF
    b       lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    lh      t2, 0x0000(v1)             # 801132B0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A20           # $at = 00010A20
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0000(v1)             # 801132B0
    lh      t4, 0x0000(v1)             # 801132B0
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addu    v0, s5, $at
    bnel    t4, $zero, lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    sh      t5, 0x0000(v1)             # 801132B0
    lhu     t6, 0x0000(v0)             # 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    b       lbl_800E1BC0
    sh      t7, 0x0000(v0)             # 00000000
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    lh      t8, 0x0000(v1)             # 801132B0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A20           # $at = 00010A20
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0000(v1)             # 801132B0
    lh      t1, 0x0000(v1)             # 801132B0
    addiu   t2, $zero, 0x0032          # t2 = 00000032
    addu    v0, s5, $at
    bnel    t1, $zero, lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    sh      t2, 0x0000(v1)             # 801132B0
    lhu     t3, 0x0000(v0)             # 00000000
    addiu   t4, t3, 0x0001             # t4 = 00000000
    b       lbl_800E1BC0
    sh      t4, 0x0000(v0)             # 00000000
    jal     func_8006222C
    or      a0, s5, $zero              # a0 = 00000000
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x32B0             # v1 = 801132B0
    lh      t5, 0x0000(v1)             # 801132B0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0000(v1)             # 801132B0
    lh      t7, 0x0000(v1)             # 801132B0
    bnel    t7, $zero, lbl_800E1BC4
    lw      $ra, 0x0034($sp)
    sh      $zero, 0x0A20($at)         # 00010A20
lbl_800E1BC0:
    lw      $ra, 0x0034($sp)
lbl_800E1BC4:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    nop
    nop
