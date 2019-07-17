# "Player Library" part of the code file
#
# Provides common functions to manipulate data related to Link.
#
# General Documentation about the Player Actor:
# https://wiki.cloudmodding.com/oot/Player_actor
#
# Starts at VRAM: 80079200 / VROM: AEF160
#

.section .text
func_80079200:
# Initializes Static Context physics variables for Link
# called on every room load or jump into water
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBA00             # a2 = 8011BA00
    lw      t7, 0x0000(a2)             # 8011BA00
    addiu   t6, $zero, 0x07D0          # t6 = 000007D0
    addiu   t8, $zero, 0x0172          # t8 = 00000172
    sh      t6, 0x004A(t7)             # 0000004A
    lw      t9, 0x0000(a2)             # 8011BA00
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sh      t8, 0x0074(t9)             # 00000074
    lb      v0, 0x013F(a1)             # 0000013F
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x7648             # t8 = 800F7648
    bne     v0, $zero, lbl_80079250
    nop
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    beql    t0, $zero, lbl_80079288
    sll     t7, v0,  4
    beq     $zero, $zero, lbl_80079284
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80079250:
    bnel    v0, $at, lbl_80079288
    sll     t7, v0,  4
    lw      t1, 0x066C(a1)             # 0000066C
    sll     t2, t1,  4
    bgezl   t2, lbl_80079270
    lw      t4, 0x0000(a2)             # 8011BA00
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    lw      t4, 0x0000(a2)             # 8011BA00
lbl_80079270:
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sh      t3, 0x004A(t4)             # 0000004A
    lw      t6, 0x0000(a2)             # 8011BA00
    sh      t5, 0x0074(t6)             # 00000844
lbl_80079284:
    sll     t7, v0,  4
lbl_80079288:
    addu    t7, t7, v0
    sll     t7, t7,  1
    addu    v1, t7, t8
    lh      t9, 0x0000(v1)             # 00000000
    lw      t0, 0x0000(a2)             # 8011BA00
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sh      t9, 0x003A(t0)             # 8012003A
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t1, 0x0002(v1)             # 00000002
    sh      t1, 0x0050(t2)             # 00000050
    lw      t4, 0x0000(a2)             # 8011BA00
    lh      t3, 0x0004(v1)             # 00000004
    sh      t3, 0x0054(t4)             # 00000054
    lw      t6, 0x0000(a2)             # 8011BA00
    lh      t5, 0x0006(v1)             # 00000006
    sh      t5, 0x0058(t6)             # 00000828
    lw      t8, 0x0000(a2)             # 8011BA00
    lh      t7, 0x0008(v1)             # 00000008
    sh      t7, 0x005A(t8)             # 800F76A2
    lw      t0, 0x0000(a2)             # 8011BA00
    lh      t9, 0x000A(v1)             # 0000000A
    sh      t9, 0x005C(t0)             # 8012005C
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t1, 0x000C(v1)             # 0000000C
    sh      t1, 0x005E(t2)             # 0000005E
    lw      t4, 0x0000(a2)             # 8011BA00
    lh      t3, 0x000E(v1)             # 0000000E
    sh      t3, 0x0060(t4)             # 00000060
    lw      t6, 0x0000(a2)             # 8011BA00
    lh      t5, 0x0010(v1)             # 00000010
    sh      t5, 0x006A(t6)             # 0000083A
    lw      t8, 0x0000(a2)             # 8011BA00
    lh      t7, 0x0012(v1)             # 00000012
    sh      t7, 0x006E(t8)             # 800F76B6
    lw      t0, 0x0000(a2)             # 8011BA00
    lh      t9, 0x0014(v1)             # 00000014
    sh      t9, 0x009C(t0)             # 8012009C
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t1, 0x0016(v1)             # 00000016
    sh      t1, 0x009E(t2)             # 0000009E
    lw      t4, 0x0000(a2)             # 8011BA00
    lh      t3, 0x0018(v1)             # 00000018
    sh      t3, 0x0758(t4)             # 00000758
    lw      t6, 0x0000(a2)             # 8011BA00
    lh      t5, 0x001A(v1)             # 0000001A
    lui     t3, 0x0001                 # t3 = 00010000
    addu    t3, t3, a0
    sh      t5, 0x075A(t6)             # 00000F2A
    lw      t8, 0x0000(a2)             # 8011BA00
    lh      t7, 0x001C(v1)             # 0000001C
    sh      t7, 0x075C(t8)             # 800F7DA4
    lw      t0, 0x0000(a2)             # 8011BA00
    lh      t9, 0x001E(v1)             # 0000001E
    sh      t9, 0x075E(t0)             # 8012075E
    lw      t2, 0x0000(a2)             # 8011BA00
    lh      t1, 0x0020(v1)             # 00000020
    sh      t1, 0x0492(t2)             # 00000492
    lbu     t3, 0x1CBF(t3)             # 00011CBF
    bne     t3, $at, lbl_80079384
    nop
    lw      t5, 0x0000(a2)             # 8011BA00
    addiu   t4, $zero, 0x01F4          # t4 = 000001F4
    sh      t4, 0x006E(t5)             # 000000D2
lbl_80079384:
    jr      $ra
    nop


func_8007938C:
# Tests if Link is busy?
# A0 = Global Context
# A1 = Link Instance
# V0 = 1 if true, 0 if false
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      v1, 0x066C(a2)             # 0000066C
    lui     $at, 0x2000                # $at = 20000000
    ori     $at, $at, 0x0080           # $at = 20000080
    and     v0, v1, $at
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x0434(a2)             # 00000434
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lb      v0, 0x1E15(v0)             # 00011E15
    xori    v0, v0, 0x0014             # v0 = 00010014
    sltiu   v0, v0, 0x0001
    bnel    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    andi    v0, v1, 0x0001             # v0 = 00000000
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    lbu     v0, 0x0682(a2)             # 00000682
    andi    v0, v0, 0x0080             # v0 = 00000000
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lh      v0, -0x4640(v0)            # 8011B9C0
    or      a0, a2, $zero              # a0 = 00000000
    sltu    v0, $zero, v0
    beql    v0, $zero, lbl_80079430
    lw      $ra, 0x0014($sp)
    jal     func_80079BA8
    lb      a1, 0x0144(a2)             # 00000144
    slti    v0, v0, 0x0000
    xori    v0, v0, 0x0001             # v0 = 00000001
    lw      $ra, 0x0014($sp)
lbl_80079430:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007943C:
# Tests if Link is busy (Calls 8007938C, but also checks if talking?)
# A0 = Global Context
# V0 = 1 if true, 0 if false
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lw      a1, 0x1C44(a0)             # 00001C44
    jal     func_8007938C
    sw      a1, 0x001C($sp)
    sltu    v0, $zero, v0
    bne     v0, $zero, lbl_80079468
    lw      a1, 0x001C($sp)
    lbu     v0, 0x069D(a1)             # 0000069D
    xori    v0, v0, 0x0004             # v0 = 00000004
    sltiu   v0, v0, 0x0001
lbl_80079468:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80079478:
# A0 = Link Instance
# V0 = Link Instance + 0x66C & 0x10
    lw      v0, 0x066C(a0)             # 0000066C
    andi    v0, v0, 0x0010             # v0 = 00000000
    jr      $ra
    nop


func_80079488:
# Test if Link is a Child with Hylian Shield Equipped
# A0 = Link Instance
# V0 = 1 if true, 0 if false
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_800794A8
    nop
    lb      v0, 0x013E(a0)             # 0000013E
    xori    v0, v0, 0x0002             # v0 = 80120002
    sltiu   v0, v0, 0x0001
lbl_800794A8:
    jr      $ra
    nop


func_800794B0:
# Seems to test if Child Link has Hylian Shield "In Hand" (Calls 80079488)
# A0 = Link Instance
# A1 = Link Instance + 0x141
# V0 = 1 if true, 0 if false
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addu    v1, v1, a1
    lbu     v1, 0x7714(v1)             # 800F7714
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v1, $at, lbl_800794EC
    or      v0, v1, $zero              # v0 = 800F0000
    jal     func_80079488
    sw      v1, 0x001C($sp)
    beq     v0, $zero, lbl_800794E8
    lw      v1, 0x001C($sp)
    beq     $zero, $zero, lbl_800794EC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800794E8:
    or      v0, v1, $zero              # v0 = 00000000
lbl_800794EC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800794FC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t6, 0x066C(a0)             # 0000066C
    sll     t7, t6,  9
    bgezl   t7, lbl_800795DC
    lw      $ra, 0x0014($sp)
    lb      v0, 0x0144(a0)             # 00000144
    bltz    v0, lbl_8007952C
    nop
    lb      t8, 0x0141(a0)             # 00000141
    bnel    t8, v0, lbl_800795DC
    lw      $ra, 0x0014($sp)
lbl_8007952C:
    jal     func_80079C78
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_800795D8
    lw      a0, 0x0018($sp)
    jal     func_80079488
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_800795D8
    lw      a0, 0x0018($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lui     a2, 0x800F                 # a2 = 800F0000
    sb      t9, 0x014D(a0)             # 0000014D
    lw      t0, 0x0004(a1)             # 8011A5D4
    addiu   a2, a2, 0x7A10             # a2 = 800F7A10
    lw      t2, 0x0028(a2)             # 800F7A38
    lbu     v0, 0x014E(a0)             # 0000014E
    sll     t1, t0,  2
    addiu   $at, $zero, 0x0012         # $at = 00000012
    addu    t3, t1, t2
    sw      t3, 0x0150(a0)             # 00000150
    bne     v0, $at, lbl_80079598
    or      v1, v0, $zero              # v1 = 00000000
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    sb      t4, 0x014E(a0)             # 0000014E
    beq     $zero, $zero, lbl_800795AC
    andi    v0, t4, 0x00FF             # v0 = 00000010
lbl_80079598:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     v1, $at, lbl_800795AC
    addiu   t5, $zero, 0x0011          # t5 = 00000011
    sb      t5, 0x014E(a0)             # 0000014E
    andi    v0, t5, 0x00FF             # v0 = 00000011
lbl_800795AC:
    sll     t8, v0,  2
    lw      t6, 0x0004(a1)             # 8011A5D4
    addu    t9, a2, t8
    lw      t0, 0x0000(t9)             # 0000000A
    sll     t7, t6,  2
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addu    t1, t7, t0
    sw      t1, 0x0158(a0)             # 00000158
    sb      t2, 0x014B(a0)             # 0000014B
    sb      t3, 0x0144(a0)             # 00000144
lbl_800795D8:
    lw      $ra, 0x0014($sp)
lbl_800795DC:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800795E8:
# Update Link's Held Item?
# Update Child Link's held item?
# A0 = Link Instance
# A1 = Held Item Index
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v1, 0x8012                 # v1 = 80120000
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0x7A10             # a2 = 800F7A10
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sll     t6, a1,  2
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x7768             # t7 = 800F7768
    addu    t6, t6, a1
    addu    v0, t6, t7
    lbu     t8, 0x0001(v0)             # 00000001
    sb      t8, 0x014C(a0)             # 0000014C
    lbu     t9, 0x0002(v0)             # 00000002
    sb      t9, 0x014D(a0)             # 0000014D
    lbu     t0, 0x0003(v0)             # 00000003
    sb      t0, 0x014E(a0)             # 0000014E
    lbu     t3, 0x0001(v0)             # 00000001
    lw      t1, 0x0004(v1)             # 8011A5D4
    sll     t4, t3,  2
    addu    t5, a2, t4
    lw      t6, 0x0000(t5)             # 00000000
    sll     t2, t1,  2
    addu    t7, t2, t6
    sw      t7, 0x0154(a0)             # 00000154
    lbu     t0, 0x0002(v0)             # 00000002
    lw      t8, 0x0004(v1)             # 8011A5D4
    sll     t1, t0,  2
    addu    t3, a2, t1
    lw      t4, 0x0000(t3)             # 00000000
    sll     t9, t8,  2
    addu    t5, t9, t4
    sw      t5, 0x0150(a0)             # 00000150
    lbu     t7, 0x0003(v0)             # 00000003
    lw      t2, 0x0004(v1)             # 8011A5D4
    sll     t8, t7,  2
    addu    t0, a2, t8
    lw      t1, 0x0000(t0)             # 00000000
    sll     t6, t2,  2
    addu    t3, t6, t1
    sw      t3, 0x0158(a0)             # 00000158
    lbu     t5, 0x0004(v0)             # 00000004
    lw      t9, 0x0004(v1)             # 8011A5D4
    sll     t2, t5,  2
    addu    t7, a2, t2
    lw      t8, 0x0000(t7)             # 800F7768
    sll     t4, t9,  2
    addu    t0, t4, t8
    jal     func_800794FC
    sw      t0, 0x015C(a0)             # 0000015C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800796C0:
# ? Related to updating Child Link's state if Hylian Shield is equipped
# A0 = Link Instance
# A1 = 1 if 800794B0 returns 1, 0 if false
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_800796DC
    sb      a1, 0x0148(a0)             # 00000148
    beq     $zero, $zero, lbl_800796F4
    sb      $zero, 0x014B(a0)          # 0000014B
lbl_800796DC:
    sll     t6, a1,  2
    addu    t6, t6, a1
    lui     t7, 0x800F                 # t7 = 800F0000
    addu    t7, t7, t6
    lbu     t7, 0x7768(t7)             # 800F7768
    sb      t7, 0x014B(a0)             # 0000014B
lbl_800796F4:
    lbu     t8, 0x014B(a0)             # 0000014B
    slti    $at, t8, 0x0003
    beq     $at, $zero, lbl_80079714
    nop
    lb      t9, 0x013E(a0)             # 0000013E
    bne     t9, $zero, lbl_80079714
    nop
    sb      $zero, 0x014B(a0)          # 0000014B
lbl_80079714:
    jal     func_800795E8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007972C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lb      a1, 0x0141(a0)             # 00000141
    sb      a1, 0x0144(a0)             # 00000144
    jal     func_800794B0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_800796C0
    or      a1, v0, $zero              # a1 = 00000000
    lw      a0, 0x0018($sp)
    sb      $zero, 0x069D(a0)          # 0000069D
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80079764:
# Update Link Instance's Equipment
# A0 = Global Context
# A1 = Link Instance
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x0434(a2)             # 00000434
    addiu   $at, $zero, 0x0056         # $at = 00000056
    lui     v0, 0x8012                 # v0 = 80120000
    beq     t6, $at, lbl_80079844
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8C70             # v1 = 800F8C70
    lui     a0, 0x8010                 # a0 = 80100000
    lhu     t8, 0x0002(v1)             # 800F8C72
    lhu     t7, 0x0070(v0)             # 8011A640
    addiu   a0, a0, 0x8CC0             # a0 = 800F8CC0
    lbu     t0, 0x0001(a0)             # 800F8CC1
    and     t9, t7, t8
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    srav    t1, t9, t0
    sb      t1, 0x013E(a2)             # 0000013E
    lhu     t2, 0x0070(v0)             # 8011A640
    lhu     t3, 0x0004(v1)             # 800F8C74
    lbu     t5, 0x0002(a0)             # 800F8CC2
    and     t4, t2, t3
    srav    t6, t4, t5
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x013C(a2)             # 0000013C
    lhu     t9, 0x0006(v1)             # 800F8C76
    lhu     t8, 0x0070(v0)             # 8011A640
    lbu     t1, 0x0003(a0)             # 800F8CC3
    or      a0, a2, $zero              # a0 = 00000000
    and     t0, t8, t9
    srav    t2, t0, t1
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sb      t3, 0x013F(a2)             # 0000013F
    lbu     t4, 0x13E2(v0)             # 8011B9B2
    bnel    a1, t4, lbl_80079808
    lbu     v1, 0x0068(v0)             # 8011A638
    beq     $zero, $zero, lbl_80079820
    sb      a1, 0x013D(a2)             # 0000013D
    lbu     v1, 0x0068(v0)             # 8011A638
lbl_80079808:
    addiu   $at, $zero, 0x0055         # $at = 00000055
    bne     v1, $at, lbl_8007981C
    or      v0, v1, $zero              # v0 = 800F8C70
    beq     $zero, $zero, lbl_8007981C
    addiu   v0, $zero, 0x003D          # v0 = 0000003D
lbl_8007981C:
    sb      v0, 0x013D(a2)             # 0000013D
lbl_80079820:
    lb      a1, 0x0141(a2)             # 00000141
    jal     func_800794B0
    sw      a2, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800796C0
    or      a1, v0, $zero              # a1 = 00000000
    lw      a1, 0x001C($sp)
    jal     func_80079200
    lw      a0, 0x0018($sp)
lbl_80079844:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80079854:
# Update Bottle Contents, Link's Action State
# Calls 80071B7C
# A0 = Global Context
# A1 = Link Instance
# A2 = Item Index (C-Item)
# A3 = Action Parameter
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      t6, 0x001C($sp)
    lbu     a1, 0x0023($sp)
    jal     func_80071B7C
    lbu     a2, 0x0140(t6)             # 00000140
    lw      v1, 0x0020($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lw      v0, 0x001C($sp)
    beq     v1, $at, lbl_80079894
    lw      a0, 0x0024($sp)
    sb      v1, 0x0142(v0)             # 00000142
    sb      a0, 0x0141(v0)             # 00000141
lbl_80079894:
    sb      a0, 0x0144(v0)             # 00000144
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800798A8:
    lw      t6, 0x0670(a0)             # 00000670
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    sw      $zero, 0x0654(a0)          # 00000654
    and     t7, t6, $at
    sw      t7, 0x0670(a0)             # 00000670
    jr      $ra
    nop


func_800798C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    andi    t7, t6, 0x0001             # t7 = 00000000
    bnel    t7, $zero, lbl_80079924
    lw      t0, 0x066C(a0)             # 0000066C
    lw      v0, 0x066C(a0)             # 0000066C
    lui     $at, 0x08A0                # $at = 08A00000
    and     t8, v0, $at
    bne     t8, $zero, lbl_80079920
    lui     $at, 0x000C                # $at = 000C0000
    and     t9, v0, $at
    bnel    t9, $zero, lbl_8007993C
    lui     $at, 0x002C                # $at = 002C0000
    lwc1    $f4, 0x0028(a0)            # 00000028
    lwc1    $f6, 0x0080(a0)            # 00000080
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    sub.s   $f8, $f4, $f6
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_8007993C
    lui     $at, 0x002C                # $at = 002C0000
lbl_80079920:
    lw      t0, 0x066C(a0)             # 0000066C
lbl_80079924:
    lui     $at, 0xBFF0                # $at = BFF00000
    ori     $at, $at, 0x7FFF           # $at = BFF07FFF
    and     t1, t0, $at
    beq     $zero, $zero, lbl_80079950
    sw      t1, 0x066C(a0)             # 0000066C
    lui     $at, 0x002C                # $at = 002C0000
lbl_8007993C:
    and     t2, v0, $at
    bne     t2, $zero, lbl_80079950
    lui     $at, 0x0008                # $at = 00080000
    or      t3, v0, $at                # t3 = 00080000
    sw      t3, 0x066C(a0)             # 0000066C
lbl_80079950:
    jal     func_800798A8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80079968:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x1C44(t6)             # 00001C44
    jal     func_800798C4
    sw      a0, 0x001C($sp)
    lw      a2, 0x001C($sp)
    lw      v0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      t7, 0x066C(a2)             # 0000066C
    sw      v0, 0x0654(a2)             # 00000654
    sw      v0, 0x0674(a2)             # 00000674
    or      t8, t7, $at                # t8 = 00010000
    sw      t8, 0x066C(a2)             # 0000066C
    lw      a0, 0x0020($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_80049818
    lw      a2, 0x0024($sp)
    lw      a0, 0x0020($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80049330
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800799EC:
    lw      v1, 0x1C44(a0)             # 00001C44
    lui     $at, 0x0080                # $at = 00800000
    lw      v0, 0x066C(v1)             # 0000066C
    and     v0, v0, $at
    jr      $ra
    nop


func_80079A04:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t6, a1, 0x0001             # t6 = 00000001
    sb      t6, 0x1E5C($at)            # 00011E5C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    nop


func_80079A20:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    sw      a3, 0x003C($sp)
    lw      v0, 0x1C44(a0)             # 00001C44
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lb      t6, 0x0141(v0)             # 00000141
    bnel    t6, $at, lbl_80079AE8
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t7, 0x0850(v0)             # 00000850
    addiu   a0, v0, 0x08A8             # a0 = 000008A8
    addiu   a2, $sp, 0x0020            # a2 = FFFFFFF0
    beql    t7, $zero, lbl_80079AE8
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f12, 0x0038($sp)
    lwc1    $f0, 0x0020($sp)
    lwc1    $f2, 0x0028($sp)
    lwc1    $f12, 0x0038($sp)
    mul.s   $f4, $f0, $f0
    lwc1    $f0, 0x0024($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f6, $f2, $f2
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f12, $f12
    c.le.s  $f8, $f10
    nop
    bc1f    lbl_80079A98
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079A98:
    beql    v0, $zero, lbl_80079AEC
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f18, 0x003C($sp)
    c.le.s  $f16, $f0
    nop
    bc1f    lbl_80079AC0
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079AC0:
    beql    v0, $zero, lbl_80079AEC
    lw      $ra, 0x0014($sp)
    c.le.s  $f0, $f18
    or      v0, $zero, $zero           # v0 = 00000000
    bc1fl   lbl_80079AEC
    lw      $ra, 0x0014($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80079AEC
    lw      $ra, 0x0014($sp)
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80079AE8:
    lw      $ra, 0x0014($sp)
lbl_80079AEC:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80079AF8:
# Get Strength Upgrade Power Level
# V0 = 0 if no upgrades, Highest Upgrade if Adult, or 1 if Child and Upgrade > 0
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7378(t7)            # 800F8C88
    lw      t6, 0x00A0(v0)             # 8011A670
    lw      t0, 0x0004(v0)             # 8011A5D4
    lui     t9, 0x8010                 # t9 = 80100000
    lbu     t9, -0x733A(t9)            # 800F8CC6
    and     t8, t6, t7
    bne     t0, $zero, lbl_80079B2C
    srav    v1, t8, t9
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000000
lbl_80079B2C:
    beq     v1, $zero, lbl_80079B3C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079B3C:
    jr      $ra
    nop


func_80079B44:
# Get Link's Current Mask (Instance + 0x14F)
# A0 = Global Context
# V0 = Id
    lw      v1, 0x1C44(a0)             # 00001C44
    lbu     v0, 0x014F(v1)             # 0000014F
    jr      $ra
    nop


func_80079B54:
# Unset Link's Current Mask (Instance + 0x14F)
# A0 = Global Context
    lw      v0, 0x1C44(a0)             # 00001C44
    sb      $zero, 0x014F(v0)          # 0000014F
    jr      $ra
    nop


func_80079B64:
# Test if Link is wearing the Mirror Shield (Instance + 0x13E)
# A0 = Global Context
# V0 = 1 if true, 0 if false
    lw      v1, 0x1C44(a0)             # 00001C44
    lb      v0, 0x013E(v1)             # 0000013E
    xori    v0, v0, 0x0003             # v0 = 00000003
    sltiu   v0, v0, 0x0001
    jr      $ra
    nop


func_80079B7C:
# Test if Link is holding a Shield, and Mirror Shield is equipped
# A0 = Global Context
# V0 = 1 if true, 0 if false
    lw      v1, 0x1C44(a0)             # 00001C44
    lbu     v0, 0x014D(v1)             # 0000014D
    xori    v0, v0, 0x000A             # v0 = 0000000A
    sltiu   v0, v0, 0x0001
    beq     v0, $zero, lbl_80079BA0
    nop
    lb      v0, 0x013E(v1)             # 0000013E
    xori    v0, v0, 0x0003             # v0 = 00000009
    sltiu   v0, v0, 0x0001
lbl_80079BA0:
    jr      $ra
    nop


func_80079BA8:
# Test if Link Item Action is Magic Spell
# A0 = Link Instance
# A1 = s8 Action Parameter
# V0 = 0-2 for unused spells, 3 = Farore's, 4 = Nayru's, 5 = Din's Fire
    sw      a0, 0x0000($sp)
    addiu   v0, a1, 0xFFEB             # v0 = FFFFFFEB
    bltz    v0, lbl_80079BC8
    slti    $at, v0, 0x0006
    beql    $at, $zero, lbl_80079BCC
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    jr      $ra
    nop
lbl_80079BC8:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80079BCC:
    jr      $ra
    nop


func_80079BD4:
# Test if Link Item Action (Instance + 0x141) is Hookshot/Longshot
# A0 = Link Instance
# V0 = 1 if true, 0 if false
    lb      v1, 0x0141(a0)             # 00000141
    xori    v0, v1, 0x0010             # v0 = 00000010
    sltiu   v0, v0, 0x0001
    bne     v0, $zero, lbl_80079BF0
    nop
    xori    v0, v1, 0x0011             # v0 = 00000011
    sltiu   v0, v0, 0x0001
lbl_80079BF0:
    jr      $ra
    nop


func_80079BF8:
# Test if Link Item Action is Hookshot/Longshot, and is not holding an item (Instance + 0x039C)
# A0 = Link Instance
# V0 = 1 if true, 0 if false
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80079BD4
    lw      a0, 0x0018($sp)
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_80079C24
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0018($sp)
    lw      v0, 0x039C(t6)             # 0000039C
    sltiu   v0, v0, 0x0001
lbl_80079C24:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80079C2C:
# Test if Action Parameter is Sword-Like (03 to 07)
# A0 = s8 Action Parameter
# V0 = 1 if true, 0 if false
    addiu   v0, a0, 0xFFFE             # v0 = FFFFFFFE
    blez    v0, lbl_80079C48
    slti    $at, v0, 0x0006
    beql    $at, $zero, lbl_80079C4C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop
lbl_80079C48:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80079C4C:
    jr      $ra
    nop


func_80079C54:
# Wrapper for 80079C2C (A0 = Link Instance + 0x141)
# A0 = Link Instance
# V0 = 1 if true, 0 if false
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    jal     func_80079C2C
    lb      a0, 0x0141(a1)             # 00000141
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80079C78:
# Test if Action Parameter is Two-handed Sword-Like (05 to 07)
# A0 = Link Instance
# V0 = 1 if true, 0 if false
    lb      v0, 0x0141(a0)             # 00000141
    slti    $at, v0, 0x0005
    bne     $at, $zero, lbl_80079C98
    slti    $at, v0, 0x0008
    beql    $at, $zero, lbl_80079C9C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079C98:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80079C9C:
    jr      $ra
    nop


func_80079CA4:
    lb      v0, 0x0141(a0)             # 00000141
    lui     t6, 0x8012                 # t6 = 80120000
    xori    v0, v0, 0x0005             # v0 = 00000005
    sltiu   v0, v0, 0x0001
    beq     v0, $zero, lbl_80079CF4
    nop
    lhu     t6, -0x59FA(t6)            # 8011A606
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f6                    # $f6 = 0.00
    bgez    t6, lbl_80079CE0
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80079CE0:
    c.le.s  $f8, $f4
    or      v0, $zero, $zero           # v0 = 00000000
    bc1f    lbl_80079CF4
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079CF4:
    jr      $ra
    nop


func_80079CFC:
    sw      a0, 0x0000($sp)
    addiu   v0, a1, 0xFFE2             # v0 = FFFFFFE2
    bltz    v0, lbl_80079D1C
    slti    $at, v0, 0x000D
    beql    $at, $zero, lbl_80079D20
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    jr      $ra
    nop
lbl_80079D1C:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80079D20:
    jr      $ra
    nop


func_80079D28:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80079CFC
    lb      a1, 0x0141(a0)             # 00000141
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80079D48:
# Tests if Action Parameter is Bomb or Bombchu
# A0 = Link Instance
# A1 = Action Parameter
# V0 = 0 if Bomb, 1 if Bombchu, -1 otherwise
    sw      a0, 0x0000($sp)
    addiu   v0, a1, 0xFFEE             # v0 = FFFFFFEE
    bltz    v0, lbl_80079D68
    slti    $at, v0, 0x0002
    beql    $at, $zero, lbl_80079D6C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    jr      $ra
    nop
lbl_80079D68:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80079D6C:
    jr      $ra
    nop


func_80079D74:
# Test if Link Action is Bomb or Bombchu
# Wrapper for 80079D48 (A0 = Link Instance + 0x141)
# A0 = Link Instance
# V0 = 0 if Bomb, 1 if Bombchu, -1 otherwise
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80079D48
    lb      a1, 0x0141(a0)             # 00000141
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80079D94:
    sw      a0, 0x0000($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a1, $at, lbl_80079DBC
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   v0, a1, 0xFFFD             # v0 = FFFFFFFD
    bltz    v0, lbl_80079DC4
    or      v1, v0, $zero              # v1 = FFFFFFFD
    slti    $at, v0, 0x0003
    beql    $at, $zero, lbl_80079DC8
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80079DBC:
    jr      $ra
    or      v0, v1, $zero              # v0 = FFFFFFFD
lbl_80079DC4:
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_80079DC8:
    jr      $ra
    nop


func_80079DD0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x1CBE(t6)             # 00011CBE
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      a1, 0x1C44(a0)             # 00001C44
    bnel    t6, $at, lbl_80079E00
    lhu     v0, 0x0830(a1)             # 00000830
    beq     $zero, $zero, lbl_80079E6C
    or      v1, $zero, $zero           # v1 = 00000000
    lhu     v0, 0x0830(a1)             # 00000830
lbl_80079E00:
    slti    $at, v0, 0x0051
    bnel    $at, $zero, lbl_80079E50
    lw      t9, 0x066C(a1)             # 0000066C
    lb      v1, 0x013F(a1)             # 0000013F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_80079E20
    slti    $at, v0, 0x012C
    bne     $at, $zero, lbl_80079E4C
lbl_80079E20:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80079E44
    nop
    lhu     t7, 0x0088(a1)             # 00000088
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80079E44
    nop
    beq     $zero, $zero, lbl_80079E6C
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80079E44:
    beq     $zero, $zero, lbl_80079E6C
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_80079E4C:
    lw      t9, 0x066C(a1)             # 0000066C
lbl_80079E50:
    sll     t0, t9,  4
    bgez    t0, lbl_80079E64
    nop
    beq     $zero, $zero, lbl_80079E6C
    addiu   v1, $zero, 0x0002          # v1 = 00000002
lbl_80079E64:
    beq     $zero, $zero, lbl_80079F38
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80079E6C:
    sw      v1, 0x001C($sp)
    sw      a0, 0x0028($sp)
    jal     func_8007943C
    sw      a1, 0x0024($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0028($sp)
    bne     v0, $zero, lbl_80079F34
    lw      a1, 0x0024($sp)
    lui     t2, 0x800F                 # t2 = 800F0000
    addiu   t2, t2, 0x7758             # t2 = 800F7758
    sll     t1, v1,  2
    addu    a3, t1, t2
    lbu     v0, 0x0000(a3)             # 00000000
    lui     t3, 0x8012                 # t3 = 80120000
    beql    v0, $zero, lbl_80079F38
    addiu   v0, v1, 0x0001             # v0 = 00000001
    lbu     t3, -0x466A(t3)            # 8011B996
    and     t4, t3, v0
    bnel    t4, $zero, lbl_80079F38
    addiu   v0, v1, 0x0001             # v0 = 00000001
    bnel    v1, $zero, lbl_80079ED4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lb      t5, 0x013C(a1)             # 0000013C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bne     v0, t5, lbl_80079F00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80079ED4:
    beq     v1, v0, lbl_80079EE4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v1, $at, lbl_80079F38
    addiu   v0, v1, 0x0001             # v0 = 00000001
lbl_80079EE4:
    lb      t6, 0x013F(a1)             # 0000013F
    bnel    v0, t6, lbl_80079F38
    addiu   v0, v1, 0x0001             # v0 = 00000001
    lb      t7, 0x013C(a1)             # 0000013C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t7, $at, lbl_80079F38
    addiu   v0, v1, 0x0001             # v0 = 00000001
lbl_80079F00:
    lhu     a1, 0x0002(a3)             # 00000002
    sw      a3, 0x0018($sp)
    sw      v1, 0x001C($sp)
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x0018($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    lbu     t8, -0x466A(t8)            # 8011B996
    lbu     t9, 0x0000(a3)             # 00000000
    lui     $at, 0x8012                # $at = 80120000
    lw      v1, 0x001C($sp)
    or      t0, t8, t9                 # t0 = 80120000
    sb      t0, -0x466A($at)           # 8011B996
lbl_80079F34:
    addiu   v0, v1, 0x0001             # v0 = 00000001
lbl_80079F38:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80079F48:
# Draw Link (Both Child And Adult Link)
# 0x140 instructions starting with G_MW_SEGMENT #08
# A0 = Global Context
# A1 = Some object_link_boy/_child pointer
# A2 = Link Instance + 0x1F0 pointer (animation data)
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    lh      v0, 0x0084(a2)             # 00000084
    lw      t6, 0x0038($sp)
    lui     $ra, 0x00FF                # $ra = 00FF0000
    andi    t1, v0, 0x000F             # t1 = 00000000
    sra     t4, v0,  4
    addiu   t1, t1, 0xFFFF             # t1 = FFFFFFFF
    addiu   t4, t4, 0xFFFF             # t4 = FFFFFFFF
    bgez    t1, lbl_80079F8C
    lw      t0, 0x0000(t6)             # 00000000
    lw      t7, 0x0054($sp)
    lui     t1, 0x800F                 # t1 = 800F0000
    sll     t8, t7,  1
    addu    t1, t1, t8
    lbu     t1, 0x7A88(t1)             # 800F7A88
lbl_80079F8C:
    ori     $ra, $ra, 0xFFFF           # $ra = 00FFFFFF
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0020             # t6 = DB060020
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sll     t7, t1,  2
    lui     a0, 0x800F                 # a0 = 800F0000
    addu    a0, a0, t7
    sw      t6, 0x0000(v0)             # 00000000
    lw      a0, 0x7AA8(a0)             # 800F7AA8
    lui     $at, 0x8000                # $at = 80000000
    lui     t2, 0x800F                 # t2 = 800F0000
    sll     t9, a0,  4
    srl     t6, t9, 28
    sll     t7, t6,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t7
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t8, a0, $ra
    addu    t6, t8, t9
    addu    t7, t6, $at
    sw      t7, 0x0004(v0)             # 00000004
    bgez    t4, lbl_8007A004
    lw      t5, 0x0048($sp)
    lw      t8, 0x0054($sp)
    lui     t4, 0x800F                 # t4 = 800F0000
    sll     t9, t8,  1
    addu    t4, t4, t9
    lbu     t4, 0x7A89(t4)             # 800F7A89
lbl_8007A004:
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sll     t8, t4,  2
    addu    t2, t2, t8
    sw      t7, 0x0000(v0)             # 00000000
    lw      t2, 0x7AC8(t2)             # 800F7AC8
    lui     $at, 0x8000                # $at = 80000000
    sll     t6, t2,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t6, 0x8012                 # t6 = 80120000
    addu    t6, t6, t8
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t9, t2, $ra
    addu    t7, t9, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    lui     $at, 0x8012                # $at = 80120000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x004C($sp)
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x7AD8             # t9 = 800F7AD8
    sll     t8, t7,  2
    subu    t8, t8, t7
    addu    v1, t8, t9
    lbu     t7, 0x0000(v1)             # 00000000
    lbu     t6, 0x0001(v1)             # 00000001
    sll     t8, t7, 24
    sll     t7, t6, 16
    or      t9, t8, t7                 # t9 = DB060024
    lbu     t8, 0x0002(v1)             # 00000002
    sll     t7, t8,  8
    or      t6, t9, t7                 # t6 = DB060024
    sw      t6, 0x0004(v0)             # 00000004
    lw      t9, 0x0058($sp)
    lw      t7, 0x005C($sp)
    lw      t6, 0x0060($sp)
    sll     t8, t5,  1
    sw      t8, -0x40BC($at)           # 8011BF44
    lw      a0, 0x0038($sp)
    sw      t5, 0x001C($sp)
    sw      t0, 0x0028($sp)
    sw      t9, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_800894A4
    sw      t6, 0x0018($sp)
    lw      v0, 0x0058($sp)
    lui     t8, 0x8008                 # t8 = 80080000
    addiu   t8, t8, 0xAD80             # t8 = 8007AD80
    lw      t0, 0x0028($sp)
    beq     v0, t8, lbl_8007A2E4
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    lui     t9, 0x8008                 # t9 = 80080000
    addiu   t9, t9, 0xAED0             # t9 = 8007AED0
    beq     v0, t9, lbl_8007A2E4
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t7, 0x135C(v0)             # 8011B92C
    beql    t3, t7, lbl_8007A2E8
    lw      $ra, 0x0024($sp)
    lw      t6, 0x0004(v0)             # 8011A5D4
    lui     t9, 0x8010                 # t9 = 80100000
    bne     t6, $zero, lbl_8007A2B4
    nop
    lw      t8, 0x00A0(v0)             # 8011A670
    lw      t9, -0x7378(t9)            # 800F8C88
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x733A(t6)            # 800F8CC6
    and     t7, t8, t9
    lui     t2, 0xDE00                 # t2 = DE000000
    srav    a3, t7, t6
    slti    $at, a3, 0x0002
    bnel    $at, $zero, lbl_8007A264
    lw      a2, 0x0050($sp)
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 8011A5D4
    sw      t9, 0x0000(v0)             # 8011A5D0
    multu   a3, t3
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x7AE4             # t9 = 800F7AE4
    addiu   t7, v0, 0x0008             # t7 = 8011A5D8
    sw      t7, 0x02C0(t0)             # 000002C0
    lui     t6, 0xFB00                 # t6 = FB000000
    sw      t6, 0x0000(v0)             # 8011A5D0
    mflo    t8
    addu    v1, t8, t9
    lbu     t6, -0x0006(v1)            # FFFFFFFA
    lbu     t7, -0x0005(v1)            # FFFFFFFB
    sll     t8, t6, 24
    sll     t6, t7, 16
    or      t9, t8, t6                 # t9 = FB11A5D8
    lbu     t8, -0x0004(v1)            # FFFFFFFC
    sll     t6, t8,  8
    or      t7, t9, t6                 # t7 = FB11A5D8
    sw      t7, 0x0004(v0)             # 8011A5D4
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0x0602                 # t9 = 06020000
    addiu   t9, t9, 0x5218             # t9 = 06025218
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t9, 0x0004(v0)             # 8011A5D4
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0x0602                 # t7 = 06020000
    addiu   t7, t7, 0x5598             # t7 = 06025598
    addiu   t6, v0, 0x0008             # t6 = 8011A5D8
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t7, 0x0004(v0)             # 8011A5D4
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0x8012                 # t9 = 80120000
    lui     t7, 0x0602                 # t7 = 06020000
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      t9, -0x40AC(t9)            # 8011BF54
    addiu   t7, t7, 0x5438             # t7 = 06025438
    lui     t6, 0x0602                 # t6 = 06020000
    bne     t9, $zero, lbl_8007A21C
    or      v1, v0, $zero              # v1 = 8011A5D0
    addiu   t6, t6, 0x52D8             # t6 = 060252D8
    beq     $zero, $zero, lbl_8007A220
    sw      t6, 0x0004(v0)             # 8011A5D4
lbl_8007A21C:
    sw      t7, 0x0004(v1)             # 8011A5D4
lbl_8007A220:
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      t9, -0x40A8(t9)            # 8011BF58
    lui     t7, 0x0602                 # t7 = 06020000
    addiu   t7, t7, 0x57B8             # t7 = 060257B8
    bne     t9, $at, lbl_8007A25C
    or      v1, v0, $zero              # v1 = 8011A5D0
    lui     t6, 0x0602                 # t6 = 06020000
    addiu   t6, t6, 0x5658             # t6 = 06025658
    beq     $zero, $zero, lbl_8007A260
    sw      t6, 0x0004(v0)             # 8011A5D4
lbl_8007A25C:
    sw      t7, 0x0004(v1)             # 8011A5D4
lbl_8007A260:
    lw      a2, 0x0050($sp)
lbl_8007A264:
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t6, 0x800F                 # t6 = 800F0000
    beq     a2, $zero, lbl_8007A2E4
    sll     t9, a2,  3
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t6, t6, 0x7AEC             # t6 = 800F7AEC
    addu    v1, t9, t6
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      t7, -0x0008(v1)            # 8011A5C8
    sw      t7, 0x0004(v0)             # 8011A5D4
    lw      v0, 0x02C0(t0)             # 000002C0
    addiu   t8, v0, 0x0008             # t8 = 8011A5D8
    sw      t8, 0x02C0(t0)             # 000002C0
    sw      t2, 0x0000(v0)             # 8011A5D0
    lw      t9, -0x0004(v1)            # 8011A5CC
    sw      t9, 0x0004(v0)             # 8011A5D4
    beq     $zero, $zero, lbl_8007A2E8
    lw      $ra, 0x0024($sp)
lbl_8007A2B4:
    jal     func_80079AF8
    sw      t0, 0x0028($sp)
    blez    v0, lbl_8007A2E4
    lw      t0, 0x0028($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0x6118             # t7 = 06016118
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(t0)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
lbl_8007A2E4:
    lw      $ra, 0x0024($sp)
lbl_8007A2E8:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8007A2F4:
    addiu   $sp, $sp, 0xFF50           # $sp -= 0xB0
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00B0($sp)
    sw      a1, 0x00B4($sp)
    sw      a2, 0x00B8($sp)
    sw      a3, 0x00BC($sp)
    lw      t6, 0x00B4($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lwc1    $f4, 0x0054(t6)            # 00000054
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_8007A730
    lw      $ra, 0x0024($sp)
    lw      t7, 0x066C(t6)             # 0000066C
    or      a0, t6, $zero              # a0 = 00000000
    andi    t8, t7, 0x0080             # t8 = 00000000
    bnel    t8, $zero, lbl_8007A730
    lw      $ra, 0x0024($sp)
    jal     func_80079BA8
    lb      a1, 0x0144(t6)             # 00000144
    bgez    v0, lbl_8007A72C
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A2C(v1)            # 8011A5D4
    lui     $at, 0x800F                # $at = 800F0000
    lw      t9, 0x00B4($sp)
    sll     v0, v1,  2
    addu    $at, $at, v0
    lwc1    $f8, 0x7B28($at)           # 800F7B28
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, v0
    lwc1    $f10, 0x7B30($at)          # 800F7B30
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, v0
    swc1    $f8, 0x007C($sp)
    swc1    $f10, 0x0078($sp)
    lwc1    $f4, 0x7B38($at)           # 800F7B38
    lwc1    $f6, 0x06B4(t9)            # 000006B4
    jal     func_800AA6EC
    sub.s   $f20, $f4, $f6
    lw      a0, 0x00BC($sp)
    jal     func_800AB1BC
    lw      a1, 0x00C0($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7AFC             # a0 = 800F7AFC
    jal     func_800AB958
    addiu   a1, $sp, 0x00A4            # a1 = FFFFFFF4
    lw      v0, 0x00C8($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A2C(v1)            # 8011A5D4
    lw      t6, 0x00B8($sp)
    addu    $at, v0, $zero
    sll     v0, v0,  2
    sll     t7, v1,  2
    lw      t9, 0x0020(t6)             # 00000020
    subu    v0, v0, $at
    lui     t8, 0x800F                 # t8 = 800F0000
    subu    t7, t7, v1
    sll     t7, t7,  2
    addiu   t8, t8, 0x7B08             # t8 = 800F7B08
    sll     v0, v0,  1
    sw      v0, 0x0038($sp)
    addu    a0, t7, t8
    jal     func_800AB1BC
    addu    a1, t9, v0
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x5A2C(v1)            # 8011A5D4
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x800F                # $at = 800F0000
    sll     t7, v1,  2
    addu    $at, $at, t7
    mfc1    a2, $f14
    lwc1    $f12, 0x7B20($at)          # 800F7B20
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7AFC             # a0 = 800F7AFC
    jal     func_800AB958
    addiu   a1, $sp, 0x0098            # a1 = FFFFFFE8
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7B40             # a0 = 800F7B40
    jal     func_800AB958
    addiu   a1, $sp, 0x008C            # a1 = FFFFFFDC
    jal     func_800AA724
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lwc1    $f8, 0x0090($sp)
    lw      a0, 0x00B0($sp)
    addiu   t8, $sp, 0x008C            # t8 = FFFFFFDC
    add.s   $f4, $f8, $f10
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    sw      a0, 0x0034($sp)
    sw      t8, 0x0010($sp)
    swc1    $f4, 0x0090($sp)
    addiu   a1, $sp, 0x0088            # a1 = FFFFFFD8
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFD4
    jal     func_8002F4B8              # Raycast
    lw      a3, 0x00B4($sp)
    add.s   $f2, $f0, $f20
    lwc1    $f6, 0x009C($sp)
    lwc1    $f8, 0x0098($sp)
    lwc1    $f10, 0x00A4($sp)
    c.lt.s  $f6, $f2
    swc1    $f2, 0x0080($sp)
    bc1fl   lbl_8007A730
    lw      $ra, 0x0024($sp)
    sub.s   $f12, $f8, $f10
    lwc1    $f8, 0x00AC($sp)
    lwc1    $f4, 0x00A0($sp)
    lwc1    $f10, 0x00A8($sp)
    swc1    $f12, 0x0070($sp)
    sub.s   $f14, $f4, $f8
    mul.s   $f4, $f12, $f12
    sub.s   $f16, $f6, $f10
    swc1    $f14, 0x0068($sp)
    mul.s   $f8, $f16, $f16
    add.s   $f6, $f4, $f8
    mul.s   $f10, $f14, $f14
    lwc1    $f8, 0x0078($sp)
    add.s   $f0, $f6, $f10
    sqrt.s  $f0, $f0
    mul.s   $f4, $f0, $f0
    add.s   $f10, $f0, $f0
    add.s   $f6, $f4, $f8
    lwc1    $f4, 0x007C($sp)
    div.s   $f2, $f6, $f10
    mul.s   $f18, $f2, $f2
    swc1    $f2, 0x0060($sp)
    lwc1    $f14, 0x0060($sp)
    c.lt.s  $f4, $f18
    sub.s   $f20, $f4, $f18
    bc1fl   lbl_8007A51C
    sqrt.s  $f0, $f20
    mtc1    $zero, $f20                # $f20 = 0.00
    beq     $zero, $zero, lbl_8007A520
    nop
    sqrt.s  $f0, $f20
lbl_8007A51C:
    mov.s   $f20, $f0
lbl_8007A520:
    jal     func_800CD76C
    mov.s   $f12, $f20
    lwc1    $f8, 0x0080($sp)
    lwc1    $f6, 0x00A8($sp)
    lwc1    $f10, 0x0070($sp)
    swc1    $f0, 0x0054($sp)
    sub.s   $f12, $f8, $f6
    mul.s   $f4, $f10, $f10
    lwc1    $f10, 0x0068($sp)
    mul.s   $f8, $f12, $f12
    add.s   $f6, $f4, $f8
    mul.s   $f4, $f10, $f10
    lwc1    $f10, 0x0078($sp)
    add.s   $f0, $f6, $f4
    sqrt.s  $f0, $f0
    mul.s   $f8, $f0, $f0
    add.s   $f4, $f0, $f0
    add.s   $f6, $f8, $f10
    lwc1    $f10, 0x007C($sp)
    div.s   $f14, $f6, $f4
    mul.s   $f18, $f14, $f14
    sub.s   $f8, $f0, $f14
    swc1    $f8, 0x005C($sp)
    c.lt.s  $f10, $f18
    sub.s   $f20, $f10, $f18
    bc1fl   lbl_8007A59C
    sqrt.s  $f0, $f20
    mtc1    $zero, $f20                # $f20 = 0.00
    beq     $zero, $zero, lbl_8007A5A0
    nop
    sqrt.s  $f0, $f20
lbl_8007A59C:
    mov.s   $f20, $f0
lbl_8007A5A0:
    jal     func_800CD76C
    mov.s   $f12, $f20
    lwc1    $f12, 0x005C($sp)
    mov.s   $f14, $f20
    jal     func_800CD76C
    swc1    $f0, 0x0050($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x76E0($at)         # 80108920
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x76DC($at)          # 80108924
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f2, 0x0050($sp)
    lwc1    $f4, -0x76D8($at)          # 80108928
    lw      t2, 0x00B8($sp)
    lw      t3, 0x0038($sp)
    sub.s   $f8, $f4, $f2
    lw      t6, 0x0020(t2)             # 00000020
    ori     $at, $zero, 0x8000         # $at = 00008000
    add.s   $f10, $f0, $f8
    addu    v1, t6, t3
    lh      t9, 0x0004(v1)             # 00000004
    lh      v0, 0x0000(v1)             # 00000000
    sub.s   $f4, $f6, $f10
    lwc1    $f10, 0x0054($sp)
    subu    a0, $zero, v0
    mul.s   $f8, $f4, $f12
    sub.s   $f4, $f2, $f10
    trunc.w.s $f6, $f8
    mul.s   $f8, $f4, $f12
    mfc1    t6, $f6
    nop
    subu    t1, t6, t9
    sll     t1, t1, 16
    sra     t1, t1, 16
    bltz    v0, lbl_8007A638
    trunc.w.s $f6, $f8
    beq     $zero, $zero, lbl_8007A638
    or      a0, v0, $zero              # a0 = 00000000
lbl_8007A638:
    lh      v0, 0x0002(v1)             # 00000002
    lw      t5, 0x00C0($sp)
    bltz    v0, lbl_8007A650
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_8007A650
    or      v1, v0, $zero              # v1 = 00000000
lbl_8007A650:
    addu    t7, v1, a0
    sll     t8, t7, 16
    sra     t6, t8, 16
    mfc1    v0, $f6
    bgezl   t6, lbl_8007A678
    lh      t7, 0x0004(t5)             # 00000004
    addu    t1, t1, $at
    sll     t1, t1, 16
    sra     t1, t1, 16
    lh      t7, 0x0004(t5)             # 00000004
lbl_8007A678:
    sll     v0, v0, 16
    sra     v0, v0, 16
    subu    t8, t7, v0
    sh      t8, 0x0004(t5)             # 00000004
    lw      t9, 0x00C4($sp)
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    lw      t6, 0x0020(t2)             # 00000020
    multu   t9, t4
    mflo    t7
    addu    a3, t6, t7
    lh      t8, 0x0004(a3)             # 00000004
    subu    t9, t8, v0
    sh      t9, 0x0004(a3)             # 00000004
    lw      t6, 0x0020(t2)             # 00000020
    addu    v1, t6, t3
    lh      t7, 0x0004(v1)             # 00000004
    addu    t8, t7, t1
    sh      t8, 0x0004(v1)             # 00000004
    lw      t6, 0x00CC($sp)
    lw      t9, 0x0020(t2)             # 00000020
    multu   t6, t4
    mflo    t7
    addu    t0, t9, t7
    lh      t8, 0x0004(t0)             # 00000004
    addu    t6, t8, v0
    subu    t9, t6, t1
    sh      t9, 0x0004(t0)             # 00000004
    lw      a2, 0x0084($sp)
    lw      a1, 0x0088($sp)
    jal     func_800343D4
    lw      a0, 0x0034($sp)
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_8007A72C
    slti    $at, v0, 0x0004
    beq     $at, $zero, lbl_8007A72C
    lw      a0, 0x0034($sp)
    lw      a1, 0x0088($sp)
    jal     func_800347C8
    lw      a2, 0x0084($sp)
    bne     v0, $zero, lbl_8007A72C
    lwc1    $f10, 0x0080($sp)
    swc1    $f10, 0x0090($sp)
    lw      a0, 0x00B0($sp)
    jal     func_8001D060
    addiu   a1, $sp, 0x008C            # a1 = FFFFFFDC
lbl_8007A72C:
    lw      $ra, 0x0024($sp)
lbl_8007A730:
    ldc1    $f20, 0x0018($sp)
    addiu   $sp, $sp, 0x00B0           # $sp += 0xB0
    jr      $ra
    nop


func_8007A740:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0028($sp)
    or      s1, a3, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_8007A8B4
    lw      s0, 0x0044($sp)
    lbu     t6, 0x014C(s0)             # 0000014C
    lui     $at, 0x8012                # $at = 80120000
    lui     t9, 0x8012                 # t9 = 80120000
    sw      t6, -0x40AC($at)           # 8011BF54
    lbu     t7, 0x014D(s0)             # 0000014D
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    lui     $at, 0x8012                # $at = 80120000
    sw      t7, -0x40A8($at)           # 8011BF58
    lui     $at, 0x8012                # $at = 80120000
    addiu   t8, s0, 0x08EC             # t8 = 000008EC
    beq     t9, $zero, lbl_8007A7F8
    sw      t8, -0x40C0($at)           # 8011BF40
    lbu     v0, 0x01D9(s0)             # 000001D9
    lui     $at, 0x8011                # $at = 80110000
    andi    v1, v0, 0x0004             # v1 = 00000000
    beq     v1, $zero, lbl_8007A7AC
    andi    t0, v0, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_8007A7D4
    nop
lbl_8007A7AC:
    lwc1    $f0, -0x76D4($at)          # 8010892C
    lwc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f8, 0x0008(s1)            # 00000008
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f10, $f8, $f0
    swc1    $f6, 0x0000(s1)            # 00000000
    swc1    $f10, 0x0008(s1)           # 00000008
    lbu     v0, 0x01D9(s0)             # 000001D9
    andi    v1, v0, 0x0004             # v1 = 00000000
lbl_8007A7D4:
    lui     $at, 0x8011                # $at = 80110000
    beq     v1, $zero, lbl_8007A7EC
    lwc1    $f0, -0x76D0($at)          # 80108930
    andi    t1, v0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_8007A7FC
    lwc1    $f4, 0x0004(s1)            # 00000004
lbl_8007A7EC:
    lwc1    $f16, 0x0004(s1)           # 00000004
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0004(s1)           # 00000004
lbl_8007A7F8:
    lwc1    $f4, 0x0004(s1)            # 00000004
lbl_8007A7FC:
    lwc1    $f6, 0x06B4(s0)            # 000006B4
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(s1)            # 00000004
    lh      a0, 0x06B2(s0)             # 000006B2
    beql    a0, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_80063684              # coss?
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    sub.s   $f16, $f0, $f10
    lwc1    $f6, 0x0004(s1)            # 00000004
    lwc1    $f12, 0x0000(s1)           # 00000000
    lw      a2, 0x0008(s1)             # 00000008
    mul.s   $f4, $f16, $f18
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    add.s   $f14, $f4, $f6
    lh      t2, 0x06B2(s0)             # 000006B2
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x76CC($at)         # 80108934
    mtc1    t2, $f8                    # $f8 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lw      v0, 0x0040($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      a0, 0x0000(v0)             # 00000000
    lh      a1, 0x0002(v0)             # 00000002
    jal     func_800AAF00
    lh      a2, 0x0004(v0)             # 00000004
    lw      v0, 0x0040($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0008(s1)            # 00000008
    swc1    $f0, 0x0004(s1)            # 00000004
    swc1    $f0, 0x0000(s1)            # 00000000
    sh      $zero, 0x0004(v0)          # 00000004
    lh      v1, 0x0004(v0)             # 00000004
    sh      v1, 0x0002(v0)             # 00000002
    beq     $zero, $zero, lbl_8007AA7C
    sh      v1, 0x0000(v0)             # 00000000
lbl_8007A8B4:
    lw      t3, 0x0000(a2)             # 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBF40             # v0 = 8011BF40
    beq     t3, $zero, lbl_8007A8D4
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    lw      t4, 0x0000(v0)             # 8011BF40
    addiu   t5, t4, 0x000C             # t5 = 0000000C
    sw      t5, 0x0000(v0)             # 8011BF40
lbl_8007A8D4:
    bne     a1, $at, lbl_8007A914
    lw      v0, 0x0040($sp)
    lw      s0, 0x0044($sp)
    lh      t6, 0x0000(v0)             # 8011BF40
    lh      t9, 0x0002(v0)             # 8011BF42
    lh      t7, 0x06AA(s0)             # 000006AA
    lh      t2, 0x0004(v0)             # 8011BF44
    addu    t8, t6, t7
    sh      t8, 0x0000(v0)             # 8011BF40
    lh      t0, 0x06A8(s0)             # 000006A8
    subu    t1, t9, t0
    sh      t1, 0x0002(v0)             # 8011BF42
    lh      t3, 0x06A6(s0)             # 000006A6
    addu    t4, t2, t3
    beq     $zero, $zero, lbl_8007AA7C
    sh      t4, 0x0004(v0)             # 8011BF44
lbl_8007A914:
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a1, $at, lbl_8007A9EC
    lw      s0, 0x0044($sp)
    lh      t5, 0x06A0(s0)             # 000006A0
    lui     $at, 0x8011                # $at = 80110000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beql    t5, $zero, lbl_8007A964
    lh      v0, 0x06AE(s0)             # 000006AE
    jal     func_800AAD4C
    lwc1    $f12, -0x76C8($at)         # 80108938
    lh      t6, 0x06A0(s0)             # 000006A0
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x76C4($at)          # 8010893C
    mtc1    t6, $f18                   # $f18 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f4, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
    lh      v0, 0x06AE(s0)             # 000006AE
lbl_8007A964:
    beql    v0, $zero, lbl_8007A990
    lh      v0, 0x06AC(s0)             # 000006AC
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x76C0($at)         # 80108940
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16
    jal     func_800AAB94
    nop
    lh      v0, 0x06AC(s0)             # 000006AC
lbl_8007A990:
    beql    v0, $zero, lbl_8007A9BC
    lh      v0, 0x06B0(s0)             # 000006B0
    mtc1    v0, $f18                   # $f18 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x76BC($at)          # 80108944
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lh      v0, 0x06B0(s0)             # 000006B0
lbl_8007A9BC:
    beql    v0, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x76B8($at)         # 80108948
    cvt.s.w $f10, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16
    jal     func_800AAD4C
    nop
    beq     $zero, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007A9EC:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_8007AA30
    lw      v0, 0x0040($sp)
    lw      s0, 0x0044($sp)
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01A4             # a2 = 000001A4
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8007A2F4
    sw      v0, 0x0010($sp)
    beq     $zero, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AA30:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_8007AA74
    lw      v0, 0x0040($sp)
    lw      s0, 0x0044($sp)
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0006          # t2 = 00000006
    sw      t2, 0x001C($sp)
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01A4             # a2 = 000001A4
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_8007A2F4
    sw      v0, 0x0010($sp)
    beq     $zero, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AA74:
    beq     $zero, $zero, lbl_8007AA80
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AA7C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AA80:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8007AA94:
# ?
# A0 = Global Context
# A1 = ? (0x01 to 0x15 in testing, possibly limbs?)
# A2 = Pointer to segment address (possibly limb dlist)
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    lw      s0, 0x003C($sp)
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    sw      s0, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    jal     func_8007A740
    sw      t6, 0x0010($sp)
    lw      a1, 0x002C($sp)
    bne     v0, $zero, lbl_8007AD68
    lw      a2, 0x0030($sp)
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    bne     a1, a3, lbl_8007ABE0
    addiu   a0, $zero, 0x0013          # a0 = 00000013
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBF54             # a0 = 8011BF54
    lw      v1, 0x0000(a0)             # 8011BF54
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      v0, 0x0154(s0)             # 00000154
    bne     v1, $at, lbl_8007AB30
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lhu     t7, 0x0036(a1)             # 8011A606
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f6                    # $f6 = 0.00
    bgez    t7, lbl_8007AB18
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_8007AB18:
    c.le.s  $f8, $f4
    nop
    bc1f    lbl_8007AB30
    nop
    beq     $zero, $zero, lbl_8007ABC0
    addiu   v0, v0, 0x0010             # v0 = 00000010
lbl_8007AB30:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v1, $at, lbl_8007AB6C
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      t8, 0x066C(s0)             # 0000066C
    lui     t2, 0x800F                 # t2 = 800F0000
    sll     t9, t8,  6
    bgezl   t9, lbl_8007AB70
    lbu     t3, 0x014C(s0)             # 0000014C
    lw      t0, 0x0004(a1)             # 8011A5D4
    addiu   t2, t2, 0x78D8             # t2 = 800F78D8
    sw      $zero, 0x0000(a0)          # 8011BF54
    sll     t1, t0,  2
    beq     $zero, $zero, lbl_8007ABC0
    addu    v0, t1, t2
lbl_8007AB6C:
    lbu     t3, 0x014C(s0)             # 0000014C
lbl_8007AB70:
    lui     $at, 0x4000                # $at = 40000000
    bne     t3, $zero, lbl_8007ABC0
    nop
    mtc1    $at, $f16                  # $f16 = 2.00
    lwc1    $f18, 0x0068(s0)           # 00000068
    c.lt.s  $f16, $f18
    nop
    bc1f    lbl_8007ABC0
    nop
    lw      t4, 0x066C(s0)             # 0000066C
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x78E8             # t8 = 800F78E8
    sll     t5, t4,  4
    bltz    t5, lbl_8007ABC0
    nop
    lw      t6, 0x0004(a1)             # 8011A5D4
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0000(a0)             # 8011BF54
    sll     t7, t6,  2
    addu    v0, t7, t8
lbl_8007ABC0:
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x40BC(t0)            # 8011BF44
    sll     t1, t0,  2
    addu    t2, v0, t1
    lw      t3, 0x0000(t2)             # 800F78D8
    sw      t3, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_8007AD6C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007ABE0:
    bne     a1, a0, lbl_8007AC8C
    addiu   $at, $zero, 0x0014         # $at = 00000014
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBF58             # v1 = 8011BF58
    lw      t4, 0x0000(v1)             # 8011BF58
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    lw      v0, 0x0150(s0)             # 00000150
    bnel    t4, $at, lbl_8007AC18
    lbu     t7, 0x014D(s0)             # 0000014D
    lb      t5, 0x013E(s0)             # 0000013E
    sll     t6, t5,  4
    beq     $zero, $zero, lbl_8007AC6C
    addu    v0, v0, t6
    lbu     t7, 0x014D(s0)             # 0000014D
lbl_8007AC18:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     t7, $at, lbl_8007AC6C
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f6                   # $f6 = 2.00
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.lt.s  $f6, $f10
    nop
    bc1f    lbl_8007AC6C
    nop
    lw      t8, 0x066C(s0)             # 0000066C
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sll     t9, t8,  4
    bltz    t9, lbl_8007AC6C
    lui     t2, 0x800F                 # t2 = 800F0000
    lw      t0, 0x0004(a1)             # 8011A5D4
    addiu   t2, t2, 0x7928             # t2 = 800F7928
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    sll     t1, t0,  2
    addu    v0, t1, t2
    sw      t3, 0x0000(v1)             # 8011BF58
lbl_8007AC6C:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x40BC(t4)            # 8011BF44
    sll     t5, t4,  2
    addu    t6, v0, t5
    lw      t7, 0x0000(t6)             # 00000000
    sw      t7, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_8007AD6C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AC8C:
    bne     a1, $at, lbl_8007AD44
    lui     t3, 0x8012                 # t3 = 80120000
    lbu     v0, 0x014E(s0)             # 0000014E
    addiu   $at, $zero, 0x0012         # $at = 00000012
    lw      v1, 0x0158(s0)             # 00000158
    beq     v0, $at, lbl_8007ACB0
    lui     a1, 0x8012                 # a1 = 80120000
    bne     a0, v0, lbl_8007ACEC
    nop
lbl_8007ACB0:
    lb      v0, 0x013E(s0)             # 0000013E
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      t9, 0x0004(a1)             # 8011A5D4
    sll     t8, v0,  4
    addu    v1, v1, t8
    beq     t9, $zero, lbl_8007AD28
    slti    $at, v0, 0x0002
    beq     $at, $zero, lbl_8007AD28
    nop
    lbu     t0, 0x0068(a1)             # 8011A638
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     t0, $at, lbl_8007AD28
    nop
    beq     $zero, $zero, lbl_8007AD28
    addiu   v1, v1, 0x0040             # v1 = 8011BF98
lbl_8007ACEC:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lw      t1, 0x0004(a1)             # 8011A5D4
    beq     t1, $zero, lbl_8007AD28
    nop
    beq     a3, v0, lbl_8007AD10
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v0, $at, lbl_8007AD28
    nop
lbl_8007AD10:
    lbu     t2, 0x0068(a1)             # 8011A638
    addiu   $at, $zero, 0x003B         # $at = 0000003B
    beq     t2, $at, lbl_8007AD28
    nop
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x7838             # v1 = 800F7838
lbl_8007AD28:
    lw      t3, -0x40BC(t3)            # 8011BF44
    sll     t4, t3,  2
    addu    t5, v1, t4
    lw      t6, 0x0000(t5)             # 00000000
    sw      t6, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_8007AD6C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AD44:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     a1, $at, lbl_8007AD68
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x40BC(t8)            # 8011BF44
    lw      t7, 0x015C(s0)             # 0000015C
    sll     t9, t8,  2
    addu    t0, t7, t9
    lw      t1, 0x0000(t0)             # 80120000
    sw      t1, 0x0000(a2)             # 00000000
lbl_8007AD68:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007AD6C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8007AD80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      t6, 0x0010($sp)
    jal     func_8007A740
    sw      t7, 0x0014($sp)
    lw      a0, 0x0034($sp)
    lw      a1, 0x0024($sp)
    bne     v0, $zero, lbl_8007AEBC
    lw      a2, 0x0028($sp)
    lbu     t8, 0x069D(a0)             # 0000069D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t8, $at, lbl_8007ADD0
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     $zero, $zero, lbl_8007AEBC
    sw      $zero, 0x0000(a2)          # 00000000
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_8007ADD0:
    bne     a1, $at, lbl_8007ADF4
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t0, 0x800F                 # t0 = 800F0000
    sll     t9, v0,  2
    addu    t0, t0, t9
    lw      t0, 0x79E8(t0)             # 800F79E8
    beq     $zero, $zero, lbl_8007AEBC
    sw      t0, 0x0000(a2)             # 00000000
lbl_8007ADF4:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_8007AE1C
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t2, 0x800F                 # t2 = 800F0000
    sll     t1, v0,  2
    addu    t2, t2, t1
    lw      t2, 0x79F0(t2)             # 800F79F0
    beq     $zero, $zero, lbl_8007AEBC
    sw      t2, 0x0000(a2)             # 00000000
lbl_8007AE1C:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     a1, $at, lbl_8007AE44
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t4, 0x800F                 # t4 = 800F0000
    sll     t3, v0,  2
    addu    t4, t4, t3
    lw      t4, 0x79F8(t4)             # 800F79F8
    beq     $zero, $zero, lbl_8007AEBC
    sw      t4, 0x0000(a2)             # 00000000
lbl_8007AE44:
    addiu   $at, $zero, 0x0012         # $at = 00000012
    bne     a1, $at, lbl_8007AE6C
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t6, 0x800F                 # t6 = 800F0000
    sll     t5, v0,  2
    addu    t6, t6, t5
    lw      t6, 0x7A00(t6)             # 800F7A00
    beq     $zero, $zero, lbl_8007AEBC
    sw      t6, 0x0000(a2)             # 00000000
lbl_8007AE6C:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bnel    a1, $at, lbl_8007AEBC
    sw      $zero, 0x0000(a2)          # 00000000
    jal     func_80079BD4
    sw      a2, 0x0028($sp)
    beq     v0, $zero, lbl_8007AE98
    lw      a2, 0x0028($sp)
    lui     t7, 0x0603                 # t7 = 06030000
    addiu   t7, t7, 0xA738             # t7 = 0602A738
    beq     $zero, $zero, lbl_8007AEBC
    sw      t7, 0x0000(a2)             # 00000000
lbl_8007AE98:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t9, 0x800F                 # t9 = 800F0000
    sll     t8, v0,  2
    addu    t9, t9, t8
    lw      t9, 0x7A08(t9)             # 800F7A08
    beq     $zero, $zero, lbl_8007AEBC
    sw      t9, 0x0000(a2)             # 00000000
    sw      $zero, 0x0000(a2)          # 00000000
lbl_8007AEBC:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007AED0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    lw      t6, 0x0030($sp)
    lw      t7, 0x0034($sp)
    lw      a2, 0x0028($sp)
    sw      t6, 0x0010($sp)
    jal     func_8007A740
    sw      t7, 0x0014($sp)
    bne     v0, $zero, lbl_8007AF00
    lw      t8, 0x0028($sp)
    sw      $zero, 0x0000(t8)          # 00000000
lbl_8007AF00:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007AF14:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a3, 0x0034($sp)
    lw      t6, 0x0000(s0)             # 00000000
    lw      t8, 0x0034($sp)
    bnel    t6, $zero, lbl_8007AF80
    lwc1    $f4, 0x0000(t8)            # 00000000
    beq     s1, $zero, lbl_8007AF54
    lw      a0, 0x0028($sp)
    jal     func_8004B9C8
    or      a1, s1, $zero              # a1 = 00000000
lbl_8007AF54:
    addiu   a0, s0, 0x0004             # a0 = 00000004
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0034($sp)
    addiu   a0, s0, 0x0010             # a0 = 00000010
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0038($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0000(s0)             # 00000000
    beq     $zero, $zero, lbl_8007B088
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lwc1    $f4, 0x0000(t8)            # 00000000
lbl_8007AF80:
    lwc1    $f6, 0x0004(s0)            # 00000004
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_8007B028
    nop
    lwc1    $f8, 0x0004(t8)            # 00000004
    lwc1    $f10, 0x0008(s0)           # 00000008
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_8007B028
    nop
    lwc1    $f16, 0x0008(t8)           # 00000008
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lw      a1, 0x0038($sp)
    c.eq.s  $f16, $f18
    nop
    bc1f    lbl_8007B028
    nop
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0010(s0)            # 00000010
    c.eq.s  $f4, $f6
    nop
    bc1f    lbl_8007B028
    nop
    lwc1    $f8, 0x0004(a1)            # 00000004
    lwc1    $f10, 0x0014(s0)           # 00000014
    c.eq.s  $f8, $f10
    nop
    bc1f    lbl_8007B028
    nop
    lwc1    $f16, 0x0008(a1)           # 00000008
    lwc1    $f18, 0x0018(s0)           # 00000018
    c.eq.s  $f16, $f18
    nop
    bc1f    lbl_8007B028
    nop
    beq     s1, $zero, lbl_8007B020
    lw      a0, 0x0028($sp)
    jal     func_8004B9C8
    or      a1, s1, $zero              # a1 = 00000000
lbl_8007B020:
    beq     $zero, $zero, lbl_8007B088
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007B028:
    beq     s1, $zero, lbl_8007B064
    lw      a1, 0x0038($sp)
    addiu   t9, s0, 0x0004             # t9 = 00000004
    sw      t9, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 00000000
    lw      a2, 0x0034($sp)
    jal     func_80050B64
    addiu   a3, s0, 0x0010             # a3 = 00000010
    lw      a0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
    lw      a1, 0x0038($sp)
lbl_8007B064:
    addiu   a0, s0, 0x0010             # a0 = 00000010
    jal     func_80063CAC              # Vec3f_Copy
    addiu   s1, s0, 0x0004             # s1 = 00000004
    or      a0, s1, $zero              # a0 = 00000004
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0034($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0000(s0)             # 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007B088:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_8007B09C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    lw      t6, 0x005C($sp)
    lw      t7, 0x066C(t6)             # 0000066C
    sll     t8, t7,  9
    bgezl   t8, lbl_8007B164
    lw      $ra, 0x001C($sp)
    lb      t9, 0x013E(t6)             # 0000013E
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFD0
    addu    t0, t0, t9
    lbu     t0, 0x7B4C(t0)             # 800F7B4C
    sb      t0, 0x05E8(t6)             # 000005E8
    jal     func_800AB958
    lw      a0, 0x0064($sp)
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFDC
    jal     func_800AB958
    addiu   a0, a0, 0x000C             # a0 = 0000000C
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE8
    jal     func_800AB958
    addiu   a0, a0, 0x0018             # a0 = 00000018
    lw      a0, 0x0064($sp)
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFF4
    jal     func_800AB958
    addiu   a0, a0, 0x0024             # a0 = 00000024
    addiu   t1, $sp, 0x004C            # t1 = FFFFFFF4
    sw      t1, 0x0010($sp)
    lw      a0, 0x0060($sp)
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFDC
    jal     func_80050B64
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFE8
    lw      a0, 0x0058($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0060($sp)
    lw      a1, 0x0024($sp)
    lw      a0, 0x0058($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a2, 0x0060($sp)
    lw      $ra, 0x001C($sp)
lbl_8007B164:
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_8007B170:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7B74             # a0 = 800F7B74
    jal     func_800AB958
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFDC
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7B80             # a0 = 800F7B80
    jal     func_800AB958
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFE8
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7B8C             # a0 = 800F7B8C
    jal     func_800AB958
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    addiu   t6, $sp, 0x002C            # t6 = FFFFFFDC
    sw      t6, 0x0010($sp)
    lw      a0, 0x0050($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s0, 0x08A4             # a2 = 000008A4
    jal     func_8007AF14
    lw      a3, 0x0058($sp)
    beql    v0, $zero, lbl_8007B208
    lb      t9, 0x0833(s0)             # 00000833
    lw      t7, 0x066C(s0)             # 0000066C
    sll     t8, t7,  9
    bltzl   t8, lbl_8007B208
    lb      t9, 0x0833(s0)             # 00000833
    jal     func_8001A890
    lw      a0, 0x0660(s0)             # 00000660
    or      a0, v0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x08A8             # a1 = 000008A8
    jal     func_80013F30
    addiu   a2, s0, 0x08B4             # a2 = 000008B4
    lb      t9, 0x0833(s0)             # 00000833
lbl_8007B208:
    blezl   t9, lbl_8007B270
    lw      $ra, 0x0024($sp)
    lb      t0, 0x0832(s0)             # 00000832
    lw      a0, 0x0050($sp)
    addiu   a1, s0, 0x04D4             # a1 = 000004D4
    slti    $at, t0, 0x0018
    bne     $at, $zero, lbl_8007B238
    addiu   a2, s0, 0x08C0             # a2 = 000008C0
    lw      t1, 0x0670(s0)             # 00000670
    sll     t2, t1, 14
    bgezl   t2, lbl_8007B270
    lw      $ra, 0x0024($sp)
lbl_8007B238:
    lw      a3, 0x0058($sp)
    addiu   t3, $sp, 0x0038            # t3 = FFFFFFE8
    sw      t3, 0x0010($sp)
    jal     func_8007AF14
    addiu   a3, a3, 0x000C             # a3 = 0000000C
    lw      a3, 0x0058($sp)
    addiu   t4, $sp, 0x0044            # t4 = FFFFFFF4
    sw      t4, 0x0010($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, s0, 0x0554             # a1 = 00000554
    addiu   a2, s0, 0x08DC             # a2 = 000008DC
    jal     func_8007AF14
    addiu   a3, a3, 0x0018             # a3 = 00000018
    lw      $ra, 0x0024($sp)
lbl_8007B270:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8007B280:
# Render Get Item Model
# A0 = Global Context
# A1 = Link instance
# A2 = Constant 8011BF48
# A3 = Get Item Model Id
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lb      t6, 0x0683(a1)             # 00000683
    lui     t1, 0xDB06                 # t1 = DB060000
    ori     t1, t1, 0x0018             # t1 = DB060018
    beq     t6, $zero, lbl_8007B2B8
    lw      t7, 0x0038($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f2                   # $f2 = 6.00
    beq     $zero, $zero, lbl_8007B2C4
    nop
lbl_8007B2B8:
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f2                   # $f2 = 14.00
    nop
lbl_8007B2C4:
    lw      t8, 0x01A0(a1)             # 000001A0
    lui     $at, 0x8000                # $at = 80000000
    lw      v0, 0x0000(t7)             # 00000000
    addu    t9, t8, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t9, 0x0C50($at)            # 80120C50
    lw      a2, 0x02C0(v0)             # 000002C0
    addiu   t2, a2, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(v0)             # 000002C0
    sw      t1, 0x0000(a2)             # 00000000
    lw      t3, 0x01A0(a1)             # 000001A0
    sw      t3, 0x0004(a2)             # 00000004
    lw      t0, 0x02D0(v0)             # 000002D0
    addiu   t4, t0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(v0)             # 000002D0
    sw      t1, 0x0000(t0)             # 00000000
    lw      t5, 0x01A0(a1)             # 000001A0
    sw      t5, 0x0004(t0)             # 00000004
    lh      a0, 0x00B6(a1)             # 000000B6
    swc1    $f2, 0x0034($sp)
    jal     func_800636C4              # sins?
    sw      a1, 0x003C($sp)
    lw      a1, 0x003C($sp)
    swc1    $f0, 0x001C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(a1)             # 000000B6
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x76B4($at)         # 8010894C
    lwc1    $f4, 0x001C($sp)
    lh      t7, 0x0788(t6)             # 80120788
    lw      v0, 0x0040($sp)
    mul.s   $f6, $f4, $f16
    mtc1    t7, $f18                   # $f18 = 0.00
    lwc1    $f8, 0x0000(v0)            # 00000000
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f2, 0x0034($sp)
    lwc1    $f10, 0x0004(v0)           # 00000004
    cvt.s.w $f4, $f18
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f6, $f8
    mtc1    $at, $f6                   # $f6 = 10.00
    add.s   $f14, $f10, $f2
    div.s   $f8, $f4, $f6
    lwc1    $f4, 0x0008(v0)            # 00000008
    add.s   $f10, $f16, $f8
    mul.s   $f18, $f0, $f10
    add.s   $f6, $f18, $f4
    mfc1    a2, $f6
    jal     func_800AA7F4
    nop
    lw      t8, 0x0038($sp)
    lui     a1, 0x0001                 # a1 = 00010000
    or      a0, $zero, $zero           # a0 = 00000000
    addu    a1, a1, t8
    lw      a1, 0x1DE4(a1)             # 00011DE4
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addu    $at, a1, $zero
    sll     a1, a1,  5
    subu    a1, a1, $at
    sll     a1, a1,  2
    addu    a1, a1, $at
    sll     a1, a1,  3
    sll     a1, a1, 16
    jal     func_800AAF00
    sra     a1, a1, 16
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x76B0($at)         # 80108950
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a1, 0x0044($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, a1, 0xFFFF             # a1 = FFFFFFFF
    sll     a1, a1, 16
    jal     func_800570C0
    sra     a1, a1, 16
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8007B414:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lbu     t6, 0x0160(s0)             # 00000160
    addiu   a0, s0, 0x0184             # a0 = 00000184
    or      a1, $zero, $zero           # a1 = 00000000
    beql    t6, $zero, lbl_8007B450
    lb      v0, 0x0852(s0)             # 00000852
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_8007B47C
    lw      $ra, 0x001C($sp)
    lb      v0, 0x0852(s0)             # 00000852
lbl_8007B450:
    sb      $zero, 0x0160(s0)          # 00000160
    lw      a0, 0x0020($sp)
    bltz    v0, lbl_8007B468
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_8007B46C
    or      a3, v0, $zero              # a3 = 00000000
lbl_8007B468:
    subu    a3, $zero, v0
lbl_8007B46C:
    lui     a2, 0x8012                 # a2 = 80120000
    jal     func_8007B280
    addiu   a2, a2, 0xBF48             # a2 = 8011BF48
    lw      $ra, 0x001C($sp)
lbl_8007B47C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8007B48C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x7B50             # a3 = 800F7B50
    addiu   a2, a2, 0x7B5C             # a2 = 800F7B5C
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f4, 0x0000(a3)            # 800F7B50
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    swc1    $f4, 0x0000(a2)            # 800F7B5C
    lbu     v0, 0x0835(a0)             # 00000835
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_8007B4FC
    addiu   t6, v0, 0x0001             # t6 = 00000001
    andi    t7, t6, 0x00FF             # t7 = 00000001
    subu    t9, t8, t7
    mtc1    t9, $f6                    # $f6 = 0.00
    sb      t6, 0x0835(a0)             # 00000835
    lui     $at, 0x8011                # $at = 80110000
    cvt.s.w $f8, $f6
    lwc1    $f10, -0x76AC($at)         # 80108954
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f6, 0x0000(a2)            # 800F7B5C
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f18, $f16
    mul.s   $f8, $f6, $f4
    swc1    $f8, 0x0000(a2)            # 800F7B5C
lbl_8007B4FC:
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f18                  # $f18 = 1200.00
    lwc1    $f10, 0x0000(a2)           # 800F7B5C
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, a3, $zero              # a0 = 800F7B50
    add.s   $f16, $f10, $f18
    lw      a1, 0x001C($sp)
    swc1    $f16, 0x0000(a2)           # 800F7B5C
    lwc1    $f6, 0x0000(a2)            # 800F7B5C
    jal     func_800AB958
    swc1    $f6, 0x7B68($at)           # 800F7B68
    lw      a1, 0x001C($sp)
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a0, a2, 0x7B5C             # a0 = 800F7B5C
    jal     func_800AB958
    addiu   a1, a1, 0x000C             # a1 = 0000000C
    lw      a1, 0x001C($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7B68             # a0 = 800F7B68
    jal     func_800AB958
    addiu   a1, a1, 0x0018             # a1 = 00000018
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8007B560:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0034($sp)
    sdc1    $f20, 0x0028($sp)
    lui     s0, 0x800F                 # s0 = 800F0000
    sw      s1, 0x0038($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s1, a0, $zero              # s1 = 00000000
    addiu   s0, s0, 0x7B98             # s0 = 800F7B98
    sw      $ra, 0x003C($sp)
    sw      a1, 0x009C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s0, $zero              # a0 = 800F7B98
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFEC
    jal     func_800AB958
    swc1    $f4, 0x7BA0($at)           # 800F7BA0
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f20, 0x7BA0($at)          # 800F7BA0
    or      a0, s0, $zero              # a0 = 800F7B98
    jal     func_800AB958
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFE0
    addiu   t6, $sp, 0x0094            # t6 = FFFFFFFC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $sp, 0x0090            # t1 = FFFFFFF8
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a0, s1, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x0084            # a1 = FFFFFFEC
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFE0
    jal     func_80030BB8
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFD4
    beql    v0, $zero, lbl_8007B720
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0000(s1)             # 00000000
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    jal     func_8007DFBC
    lw      a0, 0x02B0(s0)             # 800F7E48
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    sw      v0, 0x02B0(s0)             # 800F7E48
    addu    a0, s1, $at
    addiu   a1, $sp, 0x006C            # a1 = FFFFFFD4
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFC8
    jal     func_8008EC20
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFC4
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    lwc1    $f0, 0x005C($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, 0x006C($sp)
    c.lt.s  $f0, $f2
    lwc1    $f14, 0x0070($sp)
    lw      a2, 0x0074($sp)
    bc1fl   lbl_8007B664
    div.s   $f6, $f0, $f2
    beq     $zero, $zero, lbl_8007B674
    lwc1    $f20, -0x76A8($at)         # 80108958
    div.s   $f6, $f0, $f2
lbl_8007B664:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x76A4($at)          # 8010895C
    mul.s   $f20, $f6, $f8
    nop
lbl_8007B674:
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    mfc1    a2, $f20
    mov.s   $f12, $f20
    mov.s   $f14, $f20
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02B0(s0)             # 800F7E48
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02B0(s0)             # 800F7E48
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x004C($sp)
    lw      a2, 0x004C($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02B0(s0)             # 800F7E48
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0018             # t5 = DB060018
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 800F7E48
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x009C($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    lb      t7, 0x001E(t6)             # 0000001E
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, s1, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    sw      t0, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(s0)             # 800F7E48
    lui     t3, 0x0603                 # t3 = 06030000
    addiu   t3, t3, 0xCB48             # t3 = 0602CB48
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02B0(s0)             # 800F7E48
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      $ra, 0x003C($sp)
lbl_8007B720:
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_8007B734:
    addiu   $sp, $sp, 0xFE90           # $sp -= 0x170
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0170($sp)
    sw      a1, 0x0174($sp)
    sw      a2, 0x0178($sp)
    sw      a3, 0x017C($sp)
    lw      t6, 0x0178($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7AFC             # a0 = 800F7AFC
    lw      t7, 0x0000(t6)             # 00000000
    lui     a1, 0x8012                 # a1 = 80120000
    beql    t7, $zero, lbl_8007B778
    lw      t8, 0x0174($sp)
    jal     func_800AB958
    lw      a1, -0x40C0(a1)            # 8011BF40
    lw      t8, 0x0174($sp)
lbl_8007B778:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lw      s0, 0x0180($sp)
    bne     t8, $at, lbl_8007BB8C
    lw      t9, 0x0174($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x40C0(a1)            # 8011BF40
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, s0, 0x03A0             # a0 = 000003A0
    lb      a1, 0x0144(s0)             # 00000144
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      t9, 0x0170($sp)
    bnel    a1, $at, lbl_8007B8D0
    lwc1    $f0, 0x0054(s0)            # 00000054
    lw      t2, 0x0000(t9)             # 00000000
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x8011                # $at = 80110000
    sw      t2, 0x0100($sp)
    lwc1    $f4, 0x0054(s0)            # 00000054
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_8007B81C
    nop
    lwc1    $f8, 0x084C(s0)            # 0000084C
    lwc1    $f10, -0x76A0($at)         # 80108960
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f16, $f8, $f10
    addiu   a1, $sp, 0x0104            # a1 = FFFFFF94
    jal     func_8007B48C
    swc1    $f16, 0x7B50($at)          # 800F7B50
    lb      t3, 0x0833(s0)             # 00000833
    addiu   a2, $sp, 0x0104            # a2 = FFFFFF94
    or      a1, s0, $zero              # a1 = 00000000
    beq     t3, $zero, lbl_8007B814
    addiu   a0, s0, 0x08A8             # a0 = 000008A8
    jal     func_8007B170
    lw      a0, 0x0170($sp)
    beq     $zero, $zero, lbl_8007B81C
    nop
lbl_8007B814:
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
lbl_8007B81C:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x769C($at)         # 80108964
    lui     $at, 0x8011                # $at = 80110000
    lui     a2, 0xC207                 # a2 = C2070000
    ori     a2, a2, 0x47AE             # a2 = C20747AE
    lwc1    $f14, -0x7698($at)         # 80108968
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   a0, $zero, 0x8000          # a0 = FFFF8000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x4000          # a2 = 00004000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f14, 0x084C(s0)           # 0000084C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lw      v0, 0x0100($sp)
    lw      v1, 0x02C0(v0)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(v0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x0170($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x00F8($sp)
    lw      a1, 0x00F8($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      t7, 0x0100($sp)
    lw      v1, 0x02C0(t7)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x6CC0             # t2 = 06006CC0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(t7)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    beq     $zero, $zero, lbl_8007BA44
    lwc1    $f0, 0x0054(s0)            # 00000054
    lwc1    $f0, 0x0054(s0)            # 00000054
lbl_8007B8D0:
    mtc1    $zero, $f18                # $f18 = 0.00
    lw      t5, 0x0178($sp)
    c.le.s  $f18, $f0
    nop
    bc1fl   lbl_8007B95C
    lw      t6, 0x0000(t5)             # 00000000
    lb      t3, 0x0833(s0)             # 00000833
    beql    t3, $zero, lbl_8007B95C
    lw      t6, 0x0000(t5)             # 00000000
    jal     func_80079CA4
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8007B914
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7694($at)          # 8010896C
    lui     $at, 0x800F                # $at = 800F0000
    beq     $zero, $zero, lbl_8007B934
    swc1    $f4, 0x7B50($at)           # 800F7B50
lbl_8007B914:
    jal     func_80079C54
    or      a0, s0, $zero              # a0 = 00000000
    sll     t4, v0,  2
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, t4
    lwc1    $f6, 0x7BB0($at)           # 800F7BB0
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f6, 0x7B50($at)           # 800F7B50
lbl_8007B934:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8007B48C
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFF60
    lw      a0, 0x0170($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8007B170
    addiu   a2, $sp, 0x00D0            # a2 = FFFFFF60
    beq     $zero, $zero, lbl_8007BA44
    lwc1    $f0, 0x0054(s0)            # 00000054
    lw      t6, 0x0000(t5)             # 00000000
lbl_8007B95C:
    beql    t6, $zero, lbl_8007BA48
    mtc1    $zero, $f8                 # $f8 = 0.00
    lbu     t8, 0x014C(s0)             # 0000014C
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    t8, $at, lbl_8007BA48
    mtc1    $zero, $f8                 # $f8 = 0.00
    jal     func_80079CFC
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, v0,  2
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x7BD0             # t9 = 800F7BD0
    subu    t7, t7, v0
    addu    a3, t7, t9
    lw      t2, 0x0170($sp)
    lw      a1, 0x0000(t2)             # 00000000
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(a1)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x0170($sp)
    lw      a0, 0x0000(t5)             # 00000000
    sw      a3, 0x00CC($sp)
    sw      a1, 0x00C8($sp)
    jal     func_800AB900
    sw      v1, 0x00C0($sp)
    lw      t1, 0x00C0($sp)
    lw      a1, 0x00C8($sp)
    lw      a3, 0x00CC($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t9, 0x0000(a3)             # 00000000
    lbu     t4, 0x0001(a3)             # 00000001
    lbu     t7, 0x0002(a3)             # 00000002
    sll     t2, t9, 24
    sll     t5, t4, 16
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t7,  8
    or      t3, t6, t9                 # t3 = 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a1)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(a1)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    lui     t8, 0x800F                 # t8 = 800F0000
    sll     t5, t0,  2
    addu    t8, t8, t5
    lw      t8, 0x7BC8(t8)             # 800F7BC8
    sw      t8, 0x0004(v1)             # 00000004
    lwc1    $f0, 0x0054(s0)            # 00000054
lbl_8007BA44:
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8007BA48:
    nop
    c.le.s  $f8, $f0
    nop
    bc1fl   lbl_8007C08C
    lw      $ra, 0x0024($sp)
    jal     func_80079BD4
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8007BB6C
    addiu   a0, s0, 0x09D0             # a0 = 000009D0
    lw      v1, 0x039C(s0)             # 0000039C
    beq     v1, $zero, lbl_8007BB6C
    nop
    lw      v0, 0x066C(s0)             # 0000066C
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7BF8             # a0 = 800F7BF8
    andi    t7, v0, 0x0200             # t7 = 00000000
    beq     t7, $zero, lbl_8007BAF4
    andi    t3, v0, 0x0800             # t3 = 00000000
    addiu   a1, v1, 0x0024             # a1 = 00000024
    jal     func_800AB958
    sw      v1, 0x0128($sp)
    addiu   a0, $zero, 0x69E8          # a0 = 000069E8
    addiu   a1, $zero, 0xA8F8          # a1 = FFFFA8F8
    addiu   a2, $zero, 0x458E          # a2 = 0000458E
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740
    addiu   a0, $sp, 0x012C            # a0 = FFFFFFBC
    lw      v1, 0x0128($sp)
    addiu   a0, $sp, 0x012C            # a0 = FFFFFFBC
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   s0, v1, 0x0030             # s0 = 00000030
    jal     func_800ABF50
    or      a1, s0, $zero              # a1 = 00000030
    lwl     t9, 0x0000(s0)             # 00000030
    lw      v1, 0x0128($sp)
    lwr     t9, 0x0003(s0)             # 00000033
    swl     t9, 0x00B4(v1)             # 000000B4
    swr     t9, 0x00B7(v1)             # 000000B7
    lhu     t9, 0x0004(s0)             # 00000034
    sh      t9, 0x00B8(v1)             # 000000B8
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007BAF4:
    beq     t3, $zero, lbl_8007C088
    addiu   a0, $sp, 0x012C            # a0 = FFFFFFBC
    jal     func_800AA740
    sw      v1, 0x0128($sp)
    addiu   a0, $sp, 0x012C            # a0 = FFFFFFBC
    addiu   a1, $sp, 0x00B0            # a1 = FFFFFF40
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    lw      v1, 0x0128($sp)
    lh      t5, 0x00B0($sp)
    lw      t4, 0x0004(v1)             # 00000004
    sll     t2, t4, 14
    bgezl   t2, lbl_8007BB4C
    lh      t7, 0x00B6(s0)             # 000000E6
    lh      t8, 0x03AC(s0)             # 000003DC
    subu    v0, t5, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x00B4(v1)             # 000000B4
    beq     $zero, $zero, lbl_8007C088
    sh      v0, 0x0030(v1)             # 00000030
    lh      t7, 0x00B6(s0)             # 000000E6
lbl_8007BB4C:
    lh      t6, 0x03AE(s0)             # 000003DE
    addu    v0, t7, t6
    sll     v0, v0, 16
    sra     v0, v0, 16
    sh      v0, 0x00B6(v1)             # 000000B6
    sh      v0, 0x0032(v1)             # 00000032
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007BB6C:
    jal     func_800AA740
    sw      a0, 0x0030($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, s0, 0x03AC             # a1 = 000003DC
    jal     func_800ABF50
    or      a2, $zero, $zero           # a2 = 00000000
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007BB8C:
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     t9, $at, lbl_8007BFA4
    lw      s0, 0x0180($sp)
    lw      s0, 0x0180($sp)
    lw      t3, 0x039C(s0)             # 000003CC
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    sw      t3, 0x00AC($sp)
    lbu     v0, 0x014D(s0)             # 0000017D
    bnel    v0, $at, lbl_8007BBC8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    jal     func_800AA740
    addiu   a0, s0, 0x0A10             # a0 = 00000A40
    beq     $zero, $zero, lbl_8007BDC8
    lwc1    $f0, 0x0054(s0)            # 00000084
    addiu   $at, $zero, 0x000B         # $at = 0000000B
lbl_8007BBC8:
    beq     v0, $at, lbl_8007BBDC
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bnel    v0, $at, lbl_8007BD84
    lwc1    $f0, 0x0054(s0)            # 00000084
lbl_8007BBDC:
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x7C04             # t5 = 800F7C04
    sll     t2, t4,  4
    addu    t8, t2, t5
    sw      t8, 0x00A8($sp)
    lw      t7, 0x0170($sp)
    lw      t6, 0x0000(t7)             # 00000000
    jal     func_800AA6EC
    sw      t6, 0x00A4($sp)
    lw      v0, 0x00A8($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0004(v0)           # 00000004
    lwc1    $f14, 0x0008(v0)           # 00000008
    jal     func_800AA7F4
    lw      a2, 0x000C(v0)             # 0000000C
    lw      t9, 0x066C(s0)             # 0000069C
    andi    t3, t9, 0x0200             # t3 = 00000000
    beql    t3, $zero, lbl_8007BCD4
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t4, 0x0850(s0)             # 00000880
    bltzl   t4, lbl_8007BCD4
    lui     $at, 0x3F80                # $at = 3F800000
    lh      t2, 0x0824(s0)             # 00000854
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7AFC             # a0 = 800F7AFC
    slti    $at, t2, 0x000B
    beql    $at, $zero, lbl_8007BCD4
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_800AB958
    addiu   a1, $sp, 0x0094            # a1 = FFFFFF24
    lui     a0, 0x8012                 # a0 = 80120000
    lw      a0, -0x40C0(a0)            # 8011BF40
    jal     func_80063E18
    addiu   a1, $sp, 0x0094            # a1 = FFFFFF24
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f2
    sub.s   $f10, $f0, $f2
    bc1f    lbl_8007BC90
    swc1    $f10, 0x0848(s0)           # 00000878
    mtc1    $zero, $f16                # $f16 = 0.00
    beq     $zero, $zero, lbl_8007BCC0
    swc1    $f16, 0x0848(s0)           # 00000878
lbl_8007BC90:
    mtc1    $at, $f12                  # $f12 = 1.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7690($at)          # 80108970
    lwc1    $f18, 0x0848(s0)           # 00000878
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x0848(s0)            # 00000878
    lwc1    $f8, 0x0848(s0)            # 00000878
    c.lt.s  $f12, $f8
    nop
    bc1fl   lbl_8007BCC4
    lui     $at, 0xBF00                # $at = BF000000
    swc1    $f12, 0x0848(s0)           # 00000878
lbl_8007BCC0:
    lui     $at, 0xBF00                # $at = BF000000
lbl_8007BCC4:
    mtc1    $at, $f10                  # $f10 = -0.50
    nop
    swc1    $f10, 0x084C(s0)           # 0000087C
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8007BCD4:
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f14, 0x0848(s0)           # 00000878
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A2C(t5)            # 8011A5D4
    lui     $at, 0x8011                # $at = 80110000
    beql    t5, $zero, lbl_8007BD1C
    lw      v0, 0x00A4($sp)
    lwc1    $f16, 0x0848(s0)           # 00000878
    lwc1    $f18, -0x768C($at)         # 80108974
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lw      v0, 0x00A4($sp)
lbl_8007BD1C:
    lw      v1, 0x02D0(v0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(v0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t6, 0x0170($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x008C($sp)
    lw      a1, 0x008C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      t9, 0x00A4($sp)
    lw      v1, 0x02D0(t9)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(t9)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t2, 0x00A8($sp)
    lw      t5, 0x0000(t2)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    beq     $zero, $zero, lbl_8007BDC8
    lwc1    $f0, 0x0054(s0)            # 00000084
    lwc1    $f0, 0x0054(s0)            # 00000084
lbl_8007BD84:
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_8007BDCC
    mtc1    $zero, $f6                 # $f6 = 0.00
    bnel    v0, $at, lbl_8007BDCC
    mtc1    $zero, $f6                 # $f6 = 0.00
    jal     func_800AA740
    addiu   a0, s0, 0x0A10             # a0 = 00000A40
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x7C24             # a3 = 800F7C24
    lw      a0, 0x0170($sp)
    or      a1, s0, $zero              # a1 = 00000030
    jal     func_8007B09C
    addiu   a2, s0, 0x05D4             # a2 = 00000604
    lwc1    $f0, 0x0054(s0)            # 00000084
lbl_8007BDC8:
    mtc1    $zero, $f6                 # $f6 = 0.00
lbl_8007BDCC:
    nop
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_8007C08C
    lw      $ra, 0x0024($sp)
    lb      v0, 0x0141(s0)             # 00000171
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lui     a0, 0x800F                 # a0 = 800F0000
    beq     v0, $at, lbl_8007BE00
    addiu   a0, a0, 0x7C54             # a0 = 800F7C54
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v0, $at, lbl_8007BED4
    lb      t4, 0x0852(s0)             # 00000882
lbl_8007BE00:
    jal     func_800AB958
    addiu   a1, s0, 0x03B8             # a1 = 000003E8
    lw      t8, 0x00AC($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7C60             # a0 = 800F7C60
    beql    t8, $zero, lbl_8007BED4
    lb      t4, 0x0852(s0)             # 00000882
    jal     func_800AB958
    addiu   a1, t8, 0x0024             # a1 = 00000024
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    addiu   a2, $zero, 0xC000          # a2 = FFFFC000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA740
    addiu   a0, $sp, 0x0048            # a0 = FFFFFED8
    lw      a1, 0x00AC($sp)
    addiu   a0, $sp, 0x0048            # a0 = FFFFFED8
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a1, a1, 0x0030             # a1 = 00000030
    jal     func_800ABF50
    sw      a1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    lw      t7, 0x00AC($sp)
    or      a0, s0, $zero              # a0 = 00000030
    lwl     t3, 0x0000(a1)             # 00000000
    lwr     t3, 0x0003(a1)             # 00000003
    swl     t3, 0x00B4(t7)             # 000000B4
    swr     t3, 0x00B7(t7)             # 000000B7
    lhu     t3, 0x0004(a1)             # 00000004
    jal     func_800216F8
    sh      t3, 0x00B8(t7)             # 000000B8
    beq     v0, $zero, lbl_8007BED0
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f12                  # $f12 = 500.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f14                  # $f14 = 300.00
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lb      t9, 0x0141(s0)             # 00000171
    addiu   $at, $zero, 0x0010         # $at = 00000010
    lw      a0, 0x0170($sp)
    bne     t9, $at, lbl_8007BEBC
    lui     $at, 0x8011                # $at = 80110000
    beq     $zero, $zero, lbl_8007BEC4
    lwc1    $f0, -0x7688($at)          # 80108978
lbl_8007BEBC:
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f0, -0x7684($at)          # 8010897C
lbl_8007BEC4:
    mfc1    a2, $f0
    jal     func_8007B560
    or      a1, s0, $zero              # a1 = 00000030
lbl_8007BED0:
    lb      t4, 0x0852(s0)             # 00000882
lbl_8007BED4:
    bnel    t4, $zero, lbl_8007BEF8
    lw      t5, 0x066C(s0)             # 0000069C
    jal     func_800216E8
    or      a0, s0, $zero              # a0 = 00000030
    bne     v0, $zero, lbl_8007C088
    lw      t2, 0x00AC($sp)
    beql    t2, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
    lw      t5, 0x066C(s0)             # 0000069C
lbl_8007BEF8:
    andi    t8, t5, 0x0400             # t8 = 00000000
    bnel    t8, $zero, lbl_8007BF38
    lwc1    $f8, 0x09AC(s0)            # 000009DC
    lb      t7, 0x0852(s0)             # 00000882
    beql    t7, $zero, lbl_8007BF38
    lwc1    $f8, 0x09AC(s0)            # 000009DC
    lb      t6, 0x0683(s0)             # 000006B3
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xBF48             # a0 = 8011BF48
    beql    t6, $zero, lbl_8007BF38
    lwc1    $f8, 0x09AC(s0)            # 000009DC
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x03A0             # a1 = 000003D0
    beq     $zero, $zero, lbl_8007BF84
    lb      t3, 0x0852(s0)             # 00000882
    lwc1    $f8, 0x09AC(s0)            # 000009DC
lbl_8007BF38:
    lwc1    $f10, 0x03A0(s0)           # 000003D0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f0                   # $f0 = 0.50
    add.s   $f16, $f8, $f10
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f18, $f16, $f0
    swc1    $f18, -0x40B8($at)         # 8011BF48
    lwc1    $f6, 0x03A4(s0)            # 000003D4
    lwc1    $f4, 0x09B0(s0)            # 000009E0
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f8, $f0
    swc1    $f10, -0x40B4($at)         # 8011BF4C
    lwc1    $f18, 0x03A8(s0)           # 000003D8
    lwc1    $f16, 0x09B4(s0)           # 000009E4
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f4, $f16, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, -0x40B0($at)          # 8011BF50
    lb      t3, 0x0852(s0)             # 00000882
lbl_8007BF84:
    lw      a0, 0x00AC($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    bne     t3, $zero, lbl_8007C088
    addiu   a0, a0, 0x0024             # a0 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0xBF48             # a1 = 8011BF48
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007BFA4:
    lwc1    $f8, 0x0054(s0)            # 00000084
    mtc1    $zero, $f10                # $f10 = 0.00
    lw      t9, 0x0174($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    c.le.s  $f10, $f8
    nop
    bc1fl   lbl_8007C08C
    lw      $ra, 0x0024($sp)
    bne     t9, $at, lbl_8007C02C
    lw      t4, 0x0174($sp)
    lbu     v0, 0x014D(s0)             # 0000017D
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    beq     v0, $at, lbl_8007C088
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    v0, $at, lbl_8007C08C
    lw      $ra, 0x0024($sp)
    jal     func_80079488
    or      a0, s0, $zero              # a0 = 00000030
    beq     v0, $zero, lbl_8007C008
    lw      a0, 0x0170($sp)
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x7C6C             # a3 = 800F7C6C
    or      a1, s0, $zero              # a1 = 00000030
    jal     func_8007B09C
    addiu   a2, s0, 0x05D4             # a2 = 00000604
lbl_8007C008:
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     a1, 0x800F                 # a1 = 800F0000
    addiu   a1, a1, 0x7CA8             # a1 = 800F7CA8
    jal     func_800AB1BC
    addiu   a0, a0, 0x7C9C             # a0 = 800F7C9C
    jal     func_800AA740
    addiu   a0, s0, 0x0A10             # a0 = 00000A40
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007C02C:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     t4, $at, lbl_8007C050
    lui     t0, 0x8012                 # t0 = 80120000
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x7BA4             # a0 = 800F7BA4
    jal     func_800AB958
    addiu   a1, s0, 0x0038             # a1 = 00000068
    beq     $zero, $zero, lbl_8007C08C
    lw      $ra, 0x0024($sp)
lbl_8007C050:
    lw      t0, -0x5A2C(t0)            # FFFFA5D4
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x7CB0             # t5 = 800F7CB0
    sll     t2, t0,  2
    subu    t2, t2, t0
    sll     t2, t2,  2
    addu    a3, t2, t5
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sw      t8, 0x0010($sp)
    sw      a3, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000030
    lw      a1, 0x0174($sp)
    jal     func_8001F74C
    addiu   a2, $zero, 0x0009          # a2 = 00000009
lbl_8007C088:
    lw      $ra, 0x0024($sp)
lbl_8007C08C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0170           # $sp += 0x170
    jr      $ra
    nop


func_8007C09C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    lui     v1, 0x8010                 # v1 = 80100000
    addiu   v1, v1, 0x8FF8             # v1 = 800F8FF8
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     t7, 0x8010                 # t7 = 80100000
    lw      a1, 0x0008(v1)             # 800F9000
    sll     t6, v0,  1
    addu    t7, t7, t6
    lh      t7, -0x7010(t7)            # 800F8FF0
    lw      t8, 0x000C(v1)             # 800F9004
    lw      a0, 0x004C($sp)
    sh      t7, 0x0046($sp)
    subu    a2, t8, a1
    jal     func_80000DF0
    addiu   a0, a0, 0x3800             # a0 = 00003800
    lh      t9, 0x0046($sp)
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x8FF8             # t3 = 800F8FF8
    sll     t2, t9,  3
    addu    v0, t2, t3
    lw      a1, 0x0000(v0)             # 00000000
    lw      t4, 0x0004(v0)             # 00000004
    lw      a0, 0x004C($sp)
    ori     $at, $zero, 0x8800         # $at = 00008800
    subu    s0, t4, a1
    addu    a0, a0, $at
    sw      a0, 0x0034($sp)
    jal     func_80000DF0
    or      a2, s0, $zero              # a2 = 00000000
    lw      t5, 0x0034($sp)
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    lw      t1, 0x004C($sp)
    addu    v1, t5, s0
    addiu   v1, v1, 0x000F             # v1 = 0000000F
    and     v1, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x3800           # $at = 80003800
    addu    t6, t1, $at
    lui     t0, 0x8012                 # t0 = 80120000
    lui     $at, 0x8000                # $at = 80000000
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    ori     $at, $at, 0x8800           # $at = 80008800
    addu    t7, t1, $at
    sw      t6, 0x0010(t0)             # 80120C48
    sw      t7, 0x0018(t0)             # 80120C50
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x0400                 # a3 = 04000000
    sll     t8, v0,  2
    addu    a2, a2, t8
    addiu   t9, $zero, 0x0009          # t9 = 00000009
    addiu   t2, $zero, 0x0016          # t2 = 00000016
    sw      t2, 0x001C($sp)
    sw      t9, 0x0010($sp)
    lw      a2, 0x7640(a2)             # 800F7640
    addiu   a3, a3, 0x3238             # a3 = 04003238
    sw      v1, 0x0014($sp)
    sw      v1, 0x0018($sp)
    lw      a0, 0x0048($sp)
    jal     func_8008BB08
    lw      a1, 0x0050($sp)
    ori     $at, $zero, 0x8890         # $at = 00008890
    addu    v0, s0, $at
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8007C1C8:
    sw      a0, 0x0000($sp)
    sw      a3, 0x000C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      a0, 0x0014($sp)
    sw      a2, 0x0008($sp)
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    lbu     t6, 0x0000(a0)             # 00000000
    lui     v0, 0x800F                 # v0 = 800F0000
    or      v1, $zero, $zero           # v1 = 00000000
    addu    v0, v0, t6
    lbu     v0, 0x7CC7(v0)             # 800F7CC7
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     t0, v0, lbl_8007C220
    addiu   t1, $zero, 0x0013          # t1 = 00000013
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    beq     t7, $zero, lbl_8007C220
    nop
    lbu     t8, 0x0001(a0)             # 00000001
    bne     t0, t8, lbl_8007C220
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8007C220:
    bne     a1, $at, lbl_8007C294
    lui     t8, 0x800F                 # t8 = 800F0000
    sll     t9, v0,  2
    addu    t9, t9, v0
    lui     a2, 0x800F                 # a2 = 800F0000
    addu    a2, a2, t9
    lbu     a2, 0x7769(a2)             # 800F7769
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    sw      a2, -0x40AC($at)           # 8011BF54
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a2, $at, lbl_8007C33C
    lw      a1, -0x5A2C(a1)            # 8011A5D4
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x59FA(t2)            # 8011A606
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f6                    # $f6 = 0.00
    bgez    t2, lbl_8007C27C
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_8007C27C:
    c.le.s  $f8, $f4
    nop
    bc1fl   lbl_8007C340
    sll     t7, a2,  2
    beq     $zero, $zero, lbl_8007C33C
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_8007C294:
    bne     a1, t1, lbl_8007C2D4
    addiu   $at, $zero, 0x0014         # $at = 00000014
    sll     t3, v0,  2
    addu    t3, t3, v0
    lui     a2, 0x800F                 # a2 = 800F0000
    addu    a2, a2, t3
    lbu     a2, 0x776A(a2)             # 800F776A
    lui     $at, 0x8012                # $at = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    sw      a2, -0x40A8($at)           # 8011BF58
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a2, $at, lbl_8007C33C
    lw      a1, -0x5A2C(a1)            # 8011A5D4
    lbu     v1, 0x0001(a0)             # 00000001
    beq     $zero, $zero, lbl_8007C33C
    sll     v1, v1,  2
lbl_8007C2D4:
    bne     a1, $at, lbl_8007C310
    sll     t4, v0,  2
    addu    t4, t4, v0
    lui     a2, 0x800F                 # a2 = 800F0000
    addu    a2, a2, t4
    lbu     a2, 0x776B(a2)             # 800F776B
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   $at, $zero, 0x0012         # $at = 00000012
    beq     a2, $at, lbl_8007C304
    lw      a1, -0x5A2C(a1)            # 8011A5D4
    bnel    a2, t1, lbl_8007C340
    sll     t7, a2,  2
lbl_8007C304:
    lbu     v1, 0x0001(a0)             # 00000001
    beq     $zero, $zero, lbl_8007C33C
    sll     v1, v1,  2
lbl_8007C310:
    bne     a1, t0, lbl_8007C334
    sll     t5, v0,  2
    addu    t5, t5, v0
    lui     a2, 0x800F                 # a2 = 800F0000
    addu    a2, a2, t5
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x5A2C(a1)            # 8011A5D4
    beq     $zero, $zero, lbl_8007C33C
    lbu     a2, 0x776C(a2)             # 800F776C
lbl_8007C334:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8007C33C:
    sll     t7, a2,  2
lbl_8007C340:
    addu    t8, t8, t7
    lw      t8, 0x7A10(t8)             # 800F7A10
    sll     t6, a1,  2
    sll     t9, v1,  2
    addu    a0, t6, t8
    addu    t2, a0, t9
    lw      t3, 0x0000(t2)             # 80120000
    or      v0, $zero, $zero           # v0 = 00000000
    sw      t3, 0x0000(a3)             # 00000000
    jr      $ra
    nop


func_8007C36C:
    addiu   $sp, $sp, 0xFEC8           # $sp -= 0x138
    sw      s3, 0x0040($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sw      a1, 0x013C($sp)
    sw      a2, 0x0140($sp)
    sw      a3, 0x0144($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    lw      v0, 0x0000(s3)             # 00000000
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    lw      s2, 0x02C4(v0)             # 000002C4
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFFC0
    sw      s2, 0x02C4(v0)             # 000002C4
    sw      s2, 0x0124($sp)
    lw      v0, 0x0000(s3)             # 00000000
    lw      s2, 0x02C4(v0)             # 000002C4
    addiu   s2, s2, 0xFFC0             # s2 = FFFFFF80
    sw      s2, 0x02C4(v0)             # 000002C4
    lw      s1, 0x0000(s3)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    sw      s0, 0x0130($sp)
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      v1, 0x012C($sp)
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    lw      t1, 0x01BC(s1)             # 000001BC
    lui     a2, 0xD900                 # a2 = D9000000
    lui     t4, 0xE700                 # t4 = E7000000
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x01BC(s1)             # 000001BC
    sw      t2, 0x0000(t1)             # 00000000
    lw      t9, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0004(t1)             # 00000004
    lw      t1, 0x01BC(s1)             # 000001BC
    addiu   t6, t1, 0x0008             # t6 = 00000008
    sw      t6, 0x01BC(s1)             # 000001BC
    sw      t2, 0x0000(t1)             # 00000000
    lw      t7, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(t1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t1, $zero, 0xFFFF          # t1 = 0000FFFF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     $ra, 0xE300                # $ra = E3000000
    ori     $ra, $ra, 0x0A01           # $ra = E3000A01
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     $at, 0xFF10                # $at = FF100000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      a2, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xD700                 # t9 = D7000000
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFCFF                 # t8 = FCFF0000
    lui     t9, 0xFFFE                 # t9 = FFFE0000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    ori     t9, t9, 0x793C             # t9 = FFFE793C
    ori     t8, t8, 0xFFFF             # t8 = FCFFFFFF
    sw      t8, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xEF38                 # t7 = EF380000
    ori     t7, t7, 0x2C30             # t7 = EF382C30
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0x0022                 # t9 = 00220000
    ori     t9, t9, 0x0405             # t9 = 00220405
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0004(s0)             # 00000004
    sw      a2, 0x0000(s0)             # 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t2, 0x0164($sp)
    lw      t3, 0x0168($sp)
    mtc1    t2, $f4                    # $f4 = -2305843000000000000.00
    mtc1    t3, $f6                    # $f6 = 0.00
    lw      s0, 0x02C0(s1)             # 000002C0
    cvt.s.w $f0, $f4
    lui     t7, 0xED00                 # t7 = ED000000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    cvt.s.w $f2, $f6
    mul.s   $f8, $f0, $f12
    trunc.w.s $f10, $f8
    mul.s   $f16, $f2, $f12
    mfc1    t9, $f10
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000405
    trunc.w.s $f18, $f16
    sll     t7, t6, 12
    mfc1    t9, $f18
    nop
    andi    t6, t9, 0x0FFF             # t6 = 00000405
    or      t8, t7, t6                 # t8 = ED000405
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB04                 # t7 = DB040000
    ori     t7, t7, 0x0004             # t7 = DB040004
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      a2, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB04                 # t8 = DB040000
    ori     t8, t8, 0x000C             # t8 = DB04000C
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      a2, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB04                 # t7 = DB040000
    ori     t7, t7, 0x0014             # t7 = DB040014
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    lw      t5, 0x017C($sp)
    sw      t1, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB04                 # t8 = DB040000
    ori     t8, t8, 0x001C             # t8 = DB04001C
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   a2, t2, 0xFFFF             # a2 = DDFFFFFF
    andi    a3, a2, 0x0FFF             # a3 = 00000FFF
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    or      a3, a3, $at                # a3 = FF100FFF
    sw      a3, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0x0030                 # t6 = 00300000
    lui     $at, 0xF600                # $at = F6000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0004(s0)             # 00000004
    sw      $ra, 0x0000(s0)            # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xE200                 # t9 = E2000000
    ori     t9, t9, 0x001C             # t9 = E200001C
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFFFC                 # t8 = FFFC0000
    ori     t8, t8, 0xFFFC             # t8 = FFFCFFFC
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    lui     t6, 0xF700                 # t6 = F7000000
    sw      t6, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    andi    t7, a2, 0x03FF             # t7 = 000003FF
    sll     t6, t7, 14
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    addiu   t9, t3, 0xFFFF             # t9 = FFFFFFFF
    andi    t7, t9, 0x03FF             # t7 = 000003FF
    or      t8, t6, $at                # t8 = F7000000
    sll     t6, t7,  2
    or      a1, t8, t6                 # a1 = F7000000
    sw      a1, 0x0000(s0)             # 00000000
    sw      $zero, 0x0004(s0)          # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     v0, 0x800F                 # v0 = 800F0000
    sll     v1, t2,  1
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      a3, 0x0000(s0)             # 00000000
    lw      t8, 0x0178($sp)
    sll     t0, t3,  1
    div.s   $f4, $f0, $f2
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0x0030                 # t9 = 00300000
    mfc1    a3, $f4
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0004(s0)             # 00000004
    sw      $ra, 0x0000(s0)            # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xE200                 # t8 = E2000000
    ori     t8, t8, 0x001C             # t8 = E200001C
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0x0001                 # t7 = 00010000
    ori     t7, t7, 0x0001             # t7 = 00010001
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    lui     t9, 0xF700                 # t9 = F7000000
    sw      t9, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f8                   # $f8 = 4000.00
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      a1, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   a1, $sp, 0x012A            # a1 = FFFFFFF2
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xFE00                 # t7 = FE000000
    addiu   v0, v0, 0x7CD0             # v0 = 800F7CD0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    sh      v1, 0x0008(v0)             # 800F7CD8
    sh      v1, 0x0000(v0)             # 800F7CD0
    sh      t0, 0x000A(v0)             # 800F7CDA
    sh      t0, 0x0002(v0)             # 800F7CD2
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDC08                 # t6 = DC080000
    ori     t6, t6, 0x0008             # t6 = DC080008
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      v0, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    mtc1    $at, $f10                  # $f10 = 1.00
    lw      a0, 0x0124($sp)
    lw      a2, 0x0174($sp)
    swc1    $f6, 0x0010($sp)
    swc1    $f8, 0x0014($sp)
    jal     func_800D0570
    swc1    $f10, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      t0, 0x016C($sp)
    lw      t1, 0x0170($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB0E                 # t7 = DB0E0000
    or      a0, s2, $zero              # a0 = FFFFFF80
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(s0)             # 00000000
    lhu     t8, 0x012A($sp)
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0007             # t9 = DA380007
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t7, 0x0124($sp)
    sw      t7, 0x0004(s0)             # 00000004
    lwc1    $f16, 0x0000(t1)           # 00000000
    lw      a1, 0x0000(t0)             # 00000000
    lw      a2, 0x0004(t0)             # 00000004
    lw      a3, 0x0008(t0)             # 00000008
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0004(t1)           # 00000004
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x0008(t1)            # 00000008
    swc1    $f0, 0x0024($sp)
    swc1    $f0, 0x001C($sp)
    swc1    $f6, 0x0020($sp)
    jal     func_800D0C58
    swc1    $f4, 0x0018($sp)
    lw      v1, 0x0148($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0005             # t6 = DA380005
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      s2, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      t9, 0x0154($sp)
    lw      t7, 0x015C($sp)
    lw      a3, 0x014C($sp)
    sb      t9, 0x0134($sp)
    sb      t7, 0x0135($sp)
    lw      a2, 0x0008(v1)             # 00000008
    lwc1    $f14, 0x0004(v1)           # 00000004
    jal     func_800AB510
    lwc1    $f12, 0x0000(v1)           # 00000000
    lwc1    $f12, 0x0150($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0010             # t6 = DB060010
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t9, 0x013C($sp)
    sw      t9, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0018             # t8 = DB060018
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      t6, 0x0140($sp)
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB02                 # t7 = DB020000
    addiu   t8, $zero, 0x0018          # t8 = 00000018
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDC08                 # t9 = DC080000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    addiu   t7, t7, 0x7CE8             # t7 = 800F7CE8
    ori     t9, t9, 0x060A             # t9 = DC08060A
    sw      t9, 0x0000(s0)             # 00000000
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDC08                 # t6 = DC080000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    addiu   t9, t9, 0x7CE0             # t9 = 800F7CE0
    ori     t6, t6, 0x090A             # t6 = DC08090A
    sw      t6, 0x0000(s0)             # 00000000
    sw      t9, 0x0004(s0)             # 00000004
    jal     func_8007E22C
    or      a0, s3, $zero              # a0 = 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t7, $zero, 0x03E5          # t7 = 000003E5
    addiu   t8, $zero, 0x03E8          # t8 = 000003E8
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007DF4C
    or      a0, s0, $zero              # a0 = 00000000
    sw      v0, 0x02C0(s1)             # 000002C0
    lui     a2, 0x800F                 # a2 = 800F0000
    addiu   a2, a2, 0x7CF8             # a2 = 800F7CF8
    lw      a3, 0x0000(s3)             # 00000000
    lw      a0, 0x0148($sp)
    jal     func_800223C8
    addiu   a1, s3, 0x00E0             # a1 = 000000E0
    lw      t0, 0x0144($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    addiu   t8, t8, 0x7A68             # t8 = 800F7A68
    ori     t7, t7, 0x0030             # t7 = DB060030
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      a1, 0x0004(t0)             # 00000004
    lw      a2, 0x0020(t0)             # 00000020
    lbu     a3, 0x0002(t0)             # 00000002
    lw      t6, 0x0158($sp)
    lw      t9, 0x0160($sp)
    lui     t7, 0x8008                 # t7 = 80080000
    addiu   t7, t7, 0xC1C8             # t7 = 8007C1C8
    addiu   t8, $sp, 0x0134            # t8 = FFFFFFFC
    sw      t8, 0x0028($sp)
    sw      t7, 0x0020($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s3, $zero              # a0 = 00000000
    sw      t6, 0x0014($sp)
    jal     func_80079F48
    sw      t9, 0x0018($sp)
    lui     a1, 0xDF00                 # a1 = DF000000
    lui     a2, 0xDE01                 # a2 = DE010000
    lw      a3, 0x0130($sp)
    lw      t0, 0x012C($sp)
    lw      s0, 0x02C0(s1)             # 000002C0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      a1, 0x0000(s0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a1, 0x0000(v1)             # 00000000
    sw      a2, 0x0000(a3)             # 00000000
    lw      t7, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0004(a3)             # 00000004
    sw      a2, 0x0000(t0)             # 00000000
    lw      t8, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(t0)             # 00000004
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0138           # $sp += 0x138


func_8007CA54:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0050($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0x0C38             # t0 = 80120C38
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0054($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a3, 0x0064($sp)
    lw      t6, 0x005C($sp)
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x3800           # $at = 80003800
    lw      t8, 0x005C($sp)
    addu    t7, t6, $at
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x8800           # $at = 80008800
    addu    t9, t8, $at
    sw      t7, 0x0010(t0)             # 80120C48
    sw      t9, 0x0018(t0)             # 80120C50
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    lw      t3, 0x0070($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t1, $zero, lbl_8007CAE0
    or      v1, $zero, $zero           # v1 = 00000000
    lw      t2, 0x0078($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a0, 0x0400                 # a0 = 04000000
    bne     t2, $at, lbl_8007CAD8
    nop
    lui     a0, 0x0400                 # a0 = 04000000
    beq     $zero, $zero, lbl_8007CB0C
    addiu   a0, a0, 0x20D0             # a0 = 040020D0
lbl_8007CAD8:
    beq     $zero, $zero, lbl_8007CB0C
    addiu   a0, a0, 0x2040             # a0 = 04004110
lbl_8007CAE0:
    bne     t3, $at, lbl_8007CAF4
    lw      t4, 0x0078($sp)
    lui     a0, 0x0400                 # a0 = 04000000
    beq     $zero, $zero, lbl_8007CB0C
    addiu   a0, a0, 0x2160             # a0 = 04002160
lbl_8007CAF4:
    beq     t4, $zero, lbl_8007CB08
    lui     a0, 0x0400                 # a0 = 04000000
    lui     a0, 0x0400                 # a0 = 04000000
    beq     $zero, $zero, lbl_8007CB0C
    addiu   a0, a0, 0x2280             # a0 = 04002280
lbl_8007CB08:
    addiu   a0, a0, 0x21F0             # a0 = 04004470
lbl_8007CB0C:
    sll     t5, a0,  4
    srl     t6, t5, 28
    sll     t7, t6,  2
    addu    t8, t0, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0000(t8)             # 00000000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    lbu     t2, 0x0000(s0)             # 00000000
    and     t1, a0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    a0, t9, t1
    addu    a0, a0, $at
    blez    t2, lbl_8007CB78
    lw      v0, 0x0020(s0)             # 00000020
    lwl     t4, 0x0000(a0)             # 04004470
lbl_8007CB48:
    lwr     t4, 0x0003(a0)             # 04004473
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   v0, v0, 0x0006             # v0 = 00000006
    swl     t4, -0x0006(v0)            # 00000000
    swr     t4, -0x0003(v0)            # 00000003
    lhu     t4, 0x0004(a0)             # 04004474
    addiu   a0, a0, 0x0006             # a0 = 04004476
    sh      t4, -0x0002(v0)            # 00000004
    lbu     t5, 0x0000(s0)             # 00000000
    slt     $at, v1, t5
    bnel    $at, $zero, lbl_8007CB48
    lwl     t4, 0x0000(a0)             # 04004476
lbl_8007CB78:
    lw      t7, 0x005C($sp)
    lw      t8, 0x0064($sp)
    lw      t9, 0x0068($sp)
    ori     $at, $zero, 0x8800         # $at = 00008800
    addu    a2, t7, $at
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x006C($sp)
    lw      t1, 0x0070($sp)
    lw      t2, 0x0074($sp)
    lw      t3, 0x0078($sp)
    lw      t4, 0x007C($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    lw      a0, 0x0058($sp)
    lui     t9, 0x800F                 # t9 = 800F0000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   a1, t7, 0x3800             # a1 = 00003800
    addiu   t7, $zero, 0x0070          # t7 = 00000070
    addiu   t8, t8, 0x7D04             # t8 = 800F7D04
    addiu   t9, t9, 0x7D10             # t9 = 800F7D10
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    sw      t5, 0x002C($sp)
    sw      t9, 0x0038($sp)
    sw      t8, 0x0034($sp)
    sw      t7, 0x0030($sp)
    swc1    $f4, 0x0018($sp)
    swc1    $f6, 0x003C($sp)
    sw      t1, 0x001C($sp)
    sw      t2, 0x0020($sp)
    sw      t3, 0x0024($sp)
    sw      t4, 0x0028($sp)
    lw      t1, 0x0000(a0)             # 04004476
    or      a3, s0, $zero              # a3 = 00000000
    lw      v0, 0x02DC(t1)             # 801202DC
    addiu   t2, v0, 0x3800             # t2 = 00003806
    sw      t2, 0x0044($sp)
    jal     func_8007C36C
    sw      v0, 0x0040($sp)
    lw      $ra, 0x0054($sp)
    lw      s0, 0x0050($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop
    nop
    nop
