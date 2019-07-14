# "Save RAM" part of the code file
#
# Handles the creation and management of save files.
#
# General Documentation about Save Files:
# https://wiki.cloudmodding.com/oot/Save_Format
#
# Starts at VRAM: 8008FFC0 / VROM: B05F20
#

.section .text
func_8008FFC0:
# Create New File Function (Inner)
# Creates a new file at 8011A5D0. Does not write to the first 0x1C bytes or perform checksum (I think).
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5EC             # a0 = 8011A5EC
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x1338          # a1 = 00001338
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xBF18             # t7 = 800FBF18
    lui     t6, 0x8012                 # t6 = 80120000
    sw      $zero, 0x0014(v0)          # 8011A5E4
    sw      $zero, 0x0018(v0)          # 8011A5E8
    addiu   t6, t6, 0xA5EC             # t6 = 8011A5EC
    addiu   t0, t7, 0x0048             # t0 = 800FBF60
lbl_8008FFFC:
    lw      t9, 0x0000(t7)             # 800FBF18
    addiu   t7, t7, 0x000C             # t7 = 800FBF24
    addiu   t6, t6, 0x000C             # t6 = 8011A5F8
    sw      t9, -0x000C(t6)            # 8011A5EC
    lw      t8, -0x0008(t7)            # 800FBF1C
    sw      t8, -0x0008(t6)            # 8011A5F0
    lw      t9, -0x0004(t7)            # 800FBF20
    bne     t7, t0, lbl_8008FFFC
    sw      t9, -0x0004(t6)            # 8011A5F4
    lw      t9, 0x0000(t7)             # 800FBF24
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xBF64             # t2 = 800FBF64
    sw      t9, 0x0000(t6)             # 8011A5F8
    lw      t4, 0x0000(t2)             # 800FBF64
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA638             # t1 = 8011A638
    swl     t4, 0x0000(t1)             # 8011A638
    lw      t3, 0x0004(t2)             # 800FBF68
    swr     t4, 0x0003(t1)             # 8011A63B
    lhu     t4, 0x0008(t2)             # 800FBF6C
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0xBF70             # t0 = 800FBF70
    lui     t5, 0x8012                 # t5 = 80120000
    swl     t3, 0x0004(t1)             # 8011A63C
    addiu   t5, t5, 0xA644             # t5 = 8011A644
    addiu   t8, t0, 0x0060             # t8 = 800FBFD0
    swr     t3, 0x0007(t1)             # 8011A63F
    sh      t4, 0x0008(t1)             # 8011A640
lbl_8009006C:
    lw      t6, 0x0000(t0)             # 800FBF70
    addiu   t0, t0, 0x000C             # t0 = 800FBF7C
    addiu   t5, t5, 0x000C             # t5 = 8011A650
    sw      t6, -0x000C(t5)            # 8011A644
    lw      t7, -0x0008(t0)            # 800FBF74
    sw      t7, -0x0008(t5)            # 8011A648
    lw      t6, -0x0004(t0)            # 800FBF78
    bne     t0, t8, lbl_8009006C
    sw      t6, -0x0004(t5)            # 8011A64C
    lui     t9, 0x8010                 # t9 = 80100000
    lhu     t9, -0x4030(t9)            # 800FBFD0
    lui     $at, 0x8012                # $at = 80120000
    addiu   t1, $zero, 0x0051          # t1 = 00000051
    sh      t9, -0x46DE($at)           # 8011B922
    addiu   t2, $zero, 0xF8D0          # t2 = FFFFF8D0
    addiu   t3, $zero, 0x0048          # t3 = 00000048
    addiu   t4, $zero, 0x1579          # t4 = 00001579
    addiu   t8, $zero, 0x9527          # t8 = FFFF9527
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     t5, 0x4000                 # t5 = 40000000
    sh      t1, 0x1348(v0)             # 8011B918
    sh      t2, 0x134A(v0)             # 8011B91A
    sh      t3, 0x134C(v0)             # 8011B91C
    sh      t4, 0x134E(v0)             # 8011B91E
    sh      t8, 0x1350(v0)             # 8011B920
    sb      $zero, 0x0032(v0)          # 8011A602
    sh      t0, 0x0F32(v0)             # 8011B502
    sw      t5, 0x0164(v0)             # 8011A734
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800900EC:
# Load Title Screen Save File
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5EC             # a0 = 8011A5EC
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x1338          # a1 = 00001338
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xBFD4             # t7 = 800FBFD4
    lui     t6, 0x8012                 # t6 = 80120000
    sw      $zero, 0x0014(v0)          # 8011A5E4
    sw      $zero, 0x0018(v0)          # 8011A5E8
    addiu   t6, t6, 0xA5EC             # t6 = 8011A5EC
    addiu   t0, t7, 0x0048             # t0 = 800FC01C
lbl_80090128:
    lw      t9, 0x0000(t7)             # 800FBFD4
    addiu   t7, t7, 0x000C             # t7 = 800FBFE0
    addiu   t6, t6, 0x000C             # t6 = 8011A5F8
    sw      t9, -0x000C(t6)            # 8011A5EC
    lw      t8, -0x0008(t7)            # 800FBFD8
    sw      t8, -0x0008(t6)            # 8011A5F0
    lw      t9, -0x0004(t7)            # 800FBFDC
    bne     t7, t0, lbl_80090128
    sw      t9, -0x0004(t6)            # 8011A5F4
    lw      t9, 0x0000(t7)             # 800FBFE0
    lui     t2, 0x8010                 # t2 = 80100000
    addiu   t2, t2, 0xC020             # t2 = 800FC020
    sw      t9, 0x0000(t6)             # 8011A5F8
    lw      t4, 0x0000(t2)             # 800FC020
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xA638             # t1 = 8011A638
    swl     t4, 0x0000(t1)             # 8011A638
    lw      t3, 0x0004(t2)             # 800FC024
    swr     t4, 0x0003(t1)             # 8011A63B
    lhu     t4, 0x0008(t2)             # 800FC028
    lui     t0, 0x8010                 # t0 = 80100000
    addiu   t0, t0, 0xC02C             # t0 = 800FC02C
    lui     t5, 0x8012                 # t5 = 80120000
    swl     t3, 0x0004(t1)             # 8011A63C
    addiu   t5, t5, 0xA644             # t5 = 8011A644
    addiu   t8, t0, 0x0060             # t8 = 800FC08C
    swr     t3, 0x0007(t1)             # 8011A63F
    sh      t4, 0x0008(t1)             # 8011A640
lbl_80090198:
    lw      t6, 0x0000(t0)             # 800FC02C
    addiu   t0, t0, 0x000C             # t0 = 800FC038
    addiu   t5, t5, 0x000C             # t5 = 8011A650
    sw      t6, -0x000C(t5)            # 8011A644
    lw      t7, -0x0008(t0)            # 800FC030
    sw      t7, -0x0008(t5)            # 8011A648
    lw      t6, -0x0004(t0)            # 800FC034
    bne     t0, t8, lbl_80090198
    sw      t6, -0x0004(t5)            # 8011A64C
    lui     t9, 0x8010                 # t9 = 80100000
    lhu     t9, -0x3F74(t9)            # 800FC08C
    lui     $at, 0x8012                # $at = 80120000
    addiu   t2, $zero, 0xF8D0          # t2 = FFFFF8D0
    sh      t9, -0x46DE($at)           # 8011B922
    sh      t2, 0x134A(v0)             # 8011B91A
    addiu   t4, $zero, 0x1579          # t4 = 00001579
    lhu     t0, 0x0EF8(v0)             # 8011B4C8
    lhu     t7, 0x0ED4(v0)             # 8011B4A4
    lhu     t9, 0x0EE4(v0)             # 8011B4B4
    lhu     t2, 0x0EEC(v0)             # 8011B4BC
    sh      t4, 0x134E(v0)             # 8011B91E
    lw      t4, 0x0004(v0)             # 8011A5D4
    addiu   t1, $zero, 0x0051          # t1 = 00000051
    addiu   t3, $zero, 0x0048          # t3 = 00000048
    sh      t1, 0x1348(v0)             # 8011B918
    sh      t3, 0x134C(v0)             # 8011B91C
    addiu   t8, $zero, 0x9527          # t8 = FFFF9527
    ori     t5, t0, 0x5009             # t5 = 800FD039
    ori     t6, t7, 0x123F             # t6 = 800FBFFF
    ori     t1, t9, 0x0001             # t1 = 80100001
    ori     t3, t2, 0x0010             # t3 = FFFFF8D0
    sh      t8, 0x1350(v0)             # 8011B920
    sh      t5, 0x0EF8(v0)             # 8011B4C8
    sh      t6, 0x0ED4(v0)             # 8011B4A4
    sh      t1, 0x0EE4(v0)             # 8011B4B4
    beq     t4, $zero, lbl_80090234
    sh      t3, 0x0EEC(v0)             # 8011B4BC
    beq     $zero, $zero, lbl_80090238
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_80090234:
    addiu   v1, $zero, 0x0011          # v1 = 00000011
lbl_80090238:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v1, $at, lbl_80090288
    addiu   t8, $zero, 0x003B          # t8 = 0000003B
    sb      t8, 0x0068(v0)             # 8011A638
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80081130
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t0, 0x1354(v0)             # 8011B924
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    bne     t0, $at, lbl_80090288
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sb      v1, 0x0069(v0)             # 8011A639
    sb      v1, 0x006C(v0)             # 8011A63C
    jal     func_80081130
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
lbl_80090288:
    addiu   t5, $zero, 0x00CD          # t5 = 000000CD
    lui     t7, 0x4000                 # t7 = 40000000
    sw      t5, 0x0000(v0)             # 8011A5D0
    sb      $zero, 0x0032(v0)          # 8011A602
    sw      t7, 0x0164(v0)             # 8011A734
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800902AC:
# Loads Save data
# A0 = Global Context + 0x1D0
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    addiu   s0, s0, 0xA5D0             # s0 = 8011A5D0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      t6, 0x1354(s0)             # 8011B924
    lw      t8, 0x0020($sp)
    lui     a3, 0x8010                 # a3 = 80100000
    sll     t7, t6,  1
    addu    a3, a3, t7
    lhu     a3, -0x4100(a3)            # 800FBF00
    lw      t9, 0x0000(t8)             # 00000000
    or      a0, s0, $zero              # a0 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a1, t9, a3
    lh      v1, 0x0066(s0)             # 8011A636
    slti    $at, v1, 0x001B
    bne     $at, $zero, lbl_80090314
    or      v0, v1, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x004F         # $at = 0000004F
    beql    v0, $at, lbl_800903AC
    addiu   t8, $zero, 0x041B          # t8 = 0000041B
    beq     $zero, $zero, lbl_800903B8
    addiu   $at, $zero, 0x0034         # $at = 00000034
lbl_80090314:
    sltiu   $at, v0, 0x001B
    beq     $at, $zero, lbl_800903B4
    sll     t4, v0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t4
    lw      t4, -0x7520($at)           # 80108AE0
    jr      t4
    nop
    sll     t5, v1,  1
    lui     t6, 0x8010                 # t6 = 80100000
    addu    t6, t6, t5
    lh      t6, -0x3F70(t6)            # 800FC090
    beq     $zero, $zero, lbl_800903F8
    sw      t6, 0x0000(s0)             # 8011A5D0
    beq     $zero, $zero, lbl_800903F8
    sw      $zero, 0x0000(s0)          # 8011A5D0
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    beq     $zero, $zero, lbl_800903F8
    sw      t7, 0x0000(s0)             # 8011A5D0
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    beq     $zero, $zero, lbl_800903F8
    sw      t8, 0x0000(s0)             # 8011A5D0
    addiu   t9, $zero, 0x0169          # t9 = 00000169
    beq     $zero, $zero, lbl_800903F8
    sw      t9, 0x0000(s0)             # 8011A5D0
    addiu   t4, $zero, 0x0165          # t4 = 00000165
    beq     $zero, $zero, lbl_800903F8
    sw      t4, 0x0000(s0)             # 8011A5D0
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    beq     $zero, $zero, lbl_800903F8
    sw      t5, 0x0000(s0)             # 8011A5D0
    addiu   t6, $zero, 0x0082          # t6 = 00000082
    beq     $zero, $zero, lbl_800903F8
    sw      t6, 0x0000(s0)             # 8011A5D0
    addiu   t7, $zero, 0x0037          # t7 = 00000037
    beq     $zero, $zero, lbl_800903F8
    sw      t7, 0x0000(s0)             # 8011A5D0
    addiu   t8, $zero, 0x041B          # t8 = 0000041B
lbl_800903AC:
    beq     $zero, $zero, lbl_800903F8
    sw      t8, 0x0000(s0)             # 8011A5D0
lbl_800903B4:
    addiu   $at, $zero, 0x0034         # $at = 00000034
lbl_800903B8:
    beq     v1, $at, lbl_800903F4
    addiu   t6, $zero, 0x00BB          # t6 = 000000BB
    lw      t9, 0x0004(s0)             # 8011A5D4
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t9, $zero, lbl_800903DC
    addiu   t5, $zero, 0x05F4          # t5 = 000005F4
    beq     $zero, $zero, lbl_800903DC
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_800903DC:
    bne     v0, $at, lbl_800903EC
    addiu   t4, $zero, 0x00BB          # t4 = 000000BB
    beq     $zero, $zero, lbl_800903F8
    sw      t4, 0x0000(s0)             # 8011A5D0
lbl_800903EC:
    beq     $zero, $zero, lbl_800903F8
    sw      t5, 0x0000(s0)             # 8011A5D0
lbl_800903F4:
    sw      t6, 0x0000(s0)             # 8011A5D0
lbl_800903F8:
    lh      t7, 0x0030(s0)             # 8011A600
    addiu   t8, $zero, 0x0030          # t8 = 00000030
    lui     a0, 0x8010                 # a0 = 80100000
    slti    $at, t7, 0x0030
    beq     $at, $zero, lbl_80090414
    lui     a1, 0x8012                 # a1 = 80120000
    sh      t8, 0x0030(s0)             # 8011A600
lbl_80090414:
    lbu     t9, 0x0F40(s0)             # 8011B510
    addiu   a1, a1, 0xB511             # a1 = 8011B511
    addiu   a2, $zero, 0x0360          # a2 = 00000360
    beql    t9, $zero, lbl_8009044C
    lbu     t4, 0x12C5(s0)             # 8011B895
    jal     func_80057030
    lw      a0, 0x2EE0(a0)             # 80102EE0
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a3, a3, 0x0001             # a3 = 00000001
lbl_80090438:
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    slti    $at, a3, 0x0360
    bnel    $at, $zero, lbl_80090438
    addiu   a3, a3, 0x0001             # a3 = 00000002
    lbu     t4, 0x12C5(s0)             # 8011B895
lbl_8009044C:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xB896             # a1 = 8011B896
    beq     t4, $zero, lbl_80090480
    lui     a0, 0x8010                 # a0 = 80100000
    lw      a0, 0x2EE4(a0)             # 80102EE4
    jal     func_80057030
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   a3, a3, 0x0001             # a3 = 00000001
lbl_80090470:
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    slti    $at, a3, 0x0080
    bnel    $at, $zero, lbl_80090470
    addiu   a3, a3, 0x0001             # a3 = 00000002
lbl_80090480:
    lhu     v0, 0x0EDC(s0)             # 8011B4AC
    lui     t2, 0x800F                 # t2 = 800F0000
    addiu   t2, t2, 0x7500             # t2 = 800F7500
    andi    t5, v0, 0x0001             # t5 = 00000000
    beq     t5, $zero, lbl_800904F8
    lui     t1, 0x800F                 # t1 = 800F0000
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73E0(t6)            # 800F8C20
    lw      t7, 0x00A4(s0)             # 8011A674
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x8F34             # t3 = 800F8F34
    and     t8, t6, t7
    bne     t8, $zero, lbl_800904F8
    addiu   a0, $zero, 0x0022          # a0 = 00000022
    lbu     t9, 0x0023(t3)             # 800F8F57
    andi    a3, v0, 0xFFFE             # a3 = 00000000
    sh      a3, 0x0EDC(s0)             # 8011B4AC
    addu    t4, s0, t9
    sb      a0, 0x0074(t4)             # 00000074
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    addu    v0, s0, v1
lbl_800904D8:
    lbu     t5, 0x0068(v0)             # 00000068
    addiu   v1, v1, 0x0001             # v1 = 00000002
    andi    v1, v1, 0xFFFF             # v1 = 00000002
    bne     a1, t5, lbl_800904F0
    slti    $at, v1, 0x0004
    sb      a0, 0x0068(v0)             # 00000068
lbl_800904F0:
    bnel    $at, $zero, lbl_800904D8
    addu    v0, s0, v1
lbl_800904F8:
    lw      t6, 0x0004(s0)             # 8011A5D4
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0x8F34             # t3 = 800F8F34
    beq     t6, $zero, lbl_80090514
    addiu   $at, $zero, 0x0011         # $at = 00000011
    beq     $zero, $zero, lbl_80090518
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_80090514:
    addiu   v0, $zero, 0x0011          # v0 = 00000011
lbl_80090518:
    bne     v0, $at, lbl_80090544
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x7340(t8)            # 800F8CC0
    lw      t7, -0x740C(t7)            # 800F8BF4
    lhu     v1, 0x009C(s0)             # 8011A66C
    sllv    v0, t7, t8
    and     t9, v0, v1
    bne     t9, $zero, lbl_80090544
    or      t4, v1, v0                 # t4 = 00000013
    sh      t4, 0x009C(s0)             # 8011A66C
lbl_80090544:
    lbu     t5, 0x002D(t3)             # 800F8F61
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t1, t1, 0x74F8             # t1 = 800F74F8
    addu    t0, s0, t5
    sll     a2, a3,  1
lbl_80090558:
    addu    t6, t1, a2
    lh      a0, 0x0000(t6)             # 80100000
    lbu     t7, 0x0074(t0)             # 00000074
    addiu   a3, a3, 0x0001             # a3 = 00000001
    andi    a3, a3, 0xFFFF             # a3 = 00000001
    bne     t7, a0, lbl_800905B0
    addu    t8, t2, a2
    lh      a1, 0x0000(t8)             # 80100000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addu    t9, t3, a1
    lbu     t4, 0x0000(t9)             # 00000000
    addu    t5, s0, t4
    sb      a1, 0x0074(t5)             # 00000074
    addu    v0, s0, v1
lbl_80090590:
    lbu     t6, 0x0068(v0)             # 00000079
    addiu   v1, v1, 0x0001             # v1 = 00000002
    andi    v1, v1, 0xFFFF             # v1 = 00000002
    bne     t6, a0, lbl_800905A8
    slti    $at, v1, 0x0004
    sb      a1, 0x0068(v0)             # 00000079
lbl_800905A8:
    bnel    $at, $zero, lbl_80090590
    addu    v0, s0, v1
lbl_800905B0:
    slti    $at, a3, 0x0003
    bnel    $at, $zero, lbl_80090558
    sll     a2, a3,  1
    sb      $zero, 0x0032(s0)          # 8011A602
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800905D4:
# Saves the current game data to SRAM
# A0 = Global Context + 0x1F74?
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sh      $zero, 0x1352(a1)          # 8011B922
    or      v1, a1, $zero              # v1 = 8011A5D0
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
lbl_80090600:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    bne     t1, v0, lbl_80090614
    addiu   t0, t0, 0x0001             # t0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80090614:
    lhu     t6, 0x0000(v1)             # 8011A5D0
    andi    t0, t0, 0xFFFF             # t0 = 00000001
    sltiu   $at, t0, 0x09AA
    addu    a0, a0, t6
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    bne     $at, $zero, lbl_80090600
    addiu   v1, v1, 0x0002             # v1 = 8011A5D2
    sh      a0, 0x1352(a1)             # 8011B922
    or      v1, a1, $zero              # v1 = 8011A5D0
    or      a0, $zero, $zero           # a0 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80090640:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    bne     t1, v0, lbl_80090654
    addiu   t0, t0, 0x0001             # t0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80090654:
    lhu     t7, 0x0000(v1)             # 8011A5D0
    andi    t0, t0, 0xFFFF             # t0 = 00000001
    sltiu   $at, t0, 0x09AA
    addu    a0, a0, t7
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    bne     $at, $zero, lbl_80090640
    addiu   v1, v1, 0x0002             # v1 = 8011A5D2
    lw      t8, 0x1354(a1)             # 8011B924
    lui     t0, 0x8010                 # t0 = 80100000
    lui     $at, 0x0800                # $at = 08000000
    sll     t9, t8,  1
    addu    t0, t0, t9
    lhu     t0, -0x4100(t0)            # 800FBF00
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sh      v0, 0x001A($sp)
    jal     func_80091474
    addu    a0, t0, $at
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    lhu     v0, 0x001A($sp)
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    or      v1, a1, $zero              # v1 = 8011A5D0
    or      a0, $zero, $zero           # a0 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
lbl_800906B8:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    bne     t1, v0, lbl_800906CC
    addiu   t0, t0, 0x0001             # t0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800906CC:
    lhu     t2, 0x0000(v1)             # 8011A5D0
    andi    t0, t0, 0xFFFF             # t0 = 00000001
    sltiu   $at, t0, 0x09AA
    addu    a0, a0, t2
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    bne     $at, $zero, lbl_800906B8
    addiu   v1, v1, 0x0002             # v1 = 8011A5D2
    lw      t3, 0x1354(a1)             # 8011B924
    lui     t0, 0x8010                 # t0 = 80100000
    lui     $at, 0x0800                # $at = 08000000
    sll     t4, t3,  1
    addu    t0, t0, t4
    lhu     t0, -0x40FA(t0)            # 800FBF06
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80091474
    addu    a0, t0, $at
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80090720:
# Loads SRAM to RAM and verifies save file integrity
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      s7, 0x0034($sp)
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0058($sp)
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_80002E80              # bzero
    ori     a1, $zero, 0x8000          # a1 = 00008000
    lui     a0, 0x0800                 # a0 = 08000000
    lw      a1, 0x0000(s7)             # 00000000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80091474
    or      a3, $zero, $zero           # a3 = 00000000
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0xA5D0             # s3 = 8011A5D0
    lhu     t6, 0x000C(s3)             # 8011A5DC
    lui     s8, 0x8010                 # s8 = 80100000
    addiu   s8, s8, 0xBF00             # s8 = 800FBF00
    or      s4, $zero, $zero           # s4 = 00000000
    addiu   s2, $zero, 0x0020          # s2 = 00000020
    sh      t6, 0x0046($sp)
    sll     t7, s4,  1
lbl_80090798:
    addu    s6, s8, t7
    lhu     s1, 0x0000(s6)             # 00000000
    lw      t8, 0x0000(s7)             # 00000000
    or      a0, s3, $zero              # a0 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    or      s0, $zero, $zero           # s0 = 00000000
    jal     func_80057030
    addu    a1, t8, s1
    lhu     a1, 0x1352(s3)             # 8011B922
    sh      $zero, 0x1352(s3)          # 8011B922
    or      v0, s3, $zero              # v0 = 8011A5D0
    or      t0, $zero, $zero           # t0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800907CC:
    addiu   s0, s0, 0x0002             # s0 = 00000002
    andi    s0, s0, 0xFFFF             # s0 = 00000002
    bne     s2, s0, lbl_800907E0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      s0, $zero, $zero           # s0 = 00000000
lbl_800907E0:
    lhu     t9, 0x0000(v0)             # 8011A5D0
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    sltiu   $at, v1, 0x09AA
    addiu   s1, s1, 0x0002             # s1 = 00000002
    addu    t0, t0, t9
    andi    s1, s1, 0xFFFF             # s1 = 00000002
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    bne     $at, $zero, lbl_800907CC
    addiu   v0, v0, 0x0002             # v0 = 8011A5D2
    beq     a1, t0, lbl_8009096C
    sll     t1, s4,  1
    addu    s5, s8, t1
    lhu     s1, 0x0006(s5)             # 00000006
    lw      t2, 0x0000(s7)             # 00000000
    or      a0, s3, $zero              # a0 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    or      s0, $zero, $zero           # s0 = 00000000
    jal     func_80057030
    addu    a1, t2, s1
    lhu     a1, 0x1352(s3)             # 8011B922
    sh      $zero, 0x1352(s3)          # 8011B922
    or      v0, s3, $zero              # v0 = 8011A5D0
    or      t0, $zero, $zero           # t0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80090840:
    addiu   s0, s0, 0x0002             # s0 = 00000002
    andi    s0, s0, 0xFFFF             # s0 = 00000002
    bne     s2, s0, lbl_80090854
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80090854:
    lhu     t3, 0x0000(v0)             # 8011A5D0
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    sltiu   $at, v1, 0x09AA
    addiu   s1, s1, 0x0002             # s1 = 00000004
    addu    t0, t0, t3
    andi    s1, s1, 0xFFFF             # s1 = 00000004
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    bne     $at, $zero, lbl_80090840
    addiu   v0, v0, 0x0002             # v0 = 8011A5D2
    beq     a1, t0, lbl_80090950
    or      a0, s3, $zero              # a0 = 8011A5D0
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80002E80              # bzero
    or      s0, $zero, $zero           # s0 = 00000000
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D4             # a0 = 8011A5D4
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D8             # a0 = 8011A5D8
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5DC             # a0 = 8011A5DC
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5E0             # a0 = 8011A5E0
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5E4             # a0 = 8011A5E4
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5E8             # a0 = 8011A5E8
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_8008FFC0
    nop
    or      v0, s3, $zero              # v0 = 8011A5D0
    or      t0, $zero, $zero           # t0 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80090900:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0xFFFF             # s0 = 00000001
    bne     s2, s0, lbl_80090914
    addiu   v1, v1, 0x0001             # v1 = 00000001
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80090914:
    lhu     t4, 0x0000(v0)             # 8011A5D0
    andi    v1, v1, 0xFFFF             # v1 = 00000001
    sltiu   $at, v1, 0x09AA
    addu    t0, t0, t4
    andi    t0, t0, 0xFFFF             # t0 = 00000000
    bne     $at, $zero, lbl_80090900
    addiu   v0, v0, 0x0002             # v0 = 8011A5D2
    lhu     v1, 0x0006(s5)             # 00000006
    lui     $at, 0x0800                # $at = 08000000
    sh      t0, 0x1352(s3)             # 8011B922
    or      a1, s3, $zero              # a1 = 8011A5D0
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80091474
    addu    a0, v1, $at
lbl_80090950:
    lhu     v1, 0x0000(s6)             # 00000000
    lui     $at, 0x0800                # $at = 08000000
    or      a1, s3, $zero              # a1 = 8011A5D0
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80091474
    addu    a0, v1, $at
lbl_8009096C:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    andi    s4, s4, 0xFFFF             # s4 = 00000001
    slti    $at, s4, 0x0003
    bnel    $at, $zero, lbl_80090798
    sll     t7, s4,  1
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_80002E80              # bzero
    ori     a1, $zero, 0x8000          # a1 = 00008000
    lui     a0, 0x0800                 # a0 = 08000000
    lw      a1, 0x0000(s7)             # 00000000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80091474
    or      a3, $zero, $zero           # a3 = 00000000
    lhu     t5, 0x0046($sp)
    lw      a0, 0x0058($sp)
    lui     $at, 0x0001                # $at = 00010000
    sh      t5, 0x000C(s3)             # 8011A5DC
    lw      a1, 0x0000(s7)             # 00000000
    ori     $at, $at, 0xC9EE           # $at = 0001C9EE
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x0042             # a1 = 00000042
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9F0           # $at = 0001C9F0
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x1492             # a1 = 00001492
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9F2           # $at = 0001C9F2
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x28E2             # a1 = 000028E2
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9F4           # $at = 0001C9F4
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x0044             # a1 = 00000044
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9FC           # $at = 0001C9FC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x1494             # a1 = 00001494
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA04           # $at = 0001CA04
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x28E4             # a1 = 000028E4
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA0C           # $at = 0001CA0C
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x004E             # a1 = 0000004E
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA0E           # $at = 0001CA0E
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x149E             # a1 = 0000149E
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA10           # $at = 0001CA10
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x28EE             # a1 = 000028EE
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA14           # $at = 0001CA14
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x00C4             # a1 = 000000C4
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA18           # $at = 0001CA18
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x1514             # a1 = 00001514
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA1C           # $at = 0001CA1C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x2964             # a1 = 00002964
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA20           # $at = 0001CA20
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x004C             # a1 = 0000004C
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA22           # $at = 0001CA22
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x149C             # a1 = 0000149C
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA24           # $at = 0001CA24
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x28EC             # a1 = 000028EC
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA26           # $at = 0001CA26
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x00EF             # a1 = 000000EF
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA27           # $at = 0001CA27
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x153F             # a1 = 0000153F
    lw      a0, 0x0058($sp)
    lw      a1, 0x0000(s7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA28           # $at = 0001CA28
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a1, a1, 0x298F             # a1 = 0000298F
    lw      $ra, 0x003C($sp)
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
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80090C18:
# Create New File Function
# Sets initial spawn/age/cutscene/time of day, calls 8008FFC0
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    jal     func_8008FFC0
    nop
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0xA5D0             # s1 = 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x00BB          # t6 = 000000BB
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x6AAB          # t8 = 00006AAB
    ori     t9, $zero, 0xFFF1          # t9 = 0000FFF1
    ori     v1, $at, 0x8000            # v1 = 00018000
    sw      t6, 0x0000(s1)             # 8011A5D0
    sw      t7, 0x0004(s1)             # 8011A5D4
    sh      t8, 0x000C(s1)             # 8011A5DC
    sw      t9, 0x0008(s1)             # 8011A5D8
    addu    a0, s2, v1
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80090C78:
    lh      t0, 0x4A2A(a0)             # 00004A2A
    addu    t6, s1, v0
    sll     t1, t0,  3
    addu    t2, s2, t1
    addu    t3, t2, v0
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addu    t4, t3, v1
    lbu     t5, 0x49F4(t4)             # 000049F4
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    slti    $at, v0, 0x0008
    bne     $at, $zero, lbl_80090C78
    sb      t5, 0x0024(t6)             # 000000DF
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    addiu   t7, $zero, 0x0045          # t7 = 00000045
    addiu   t8, $zero, 0x004C          # t8 = 0000004C
    addiu   t9, $zero, 0x0044          # t9 = 00000044
    addiu   t0, $zero, 0x0041          # t0 = 00000041
    sb      a1, 0x001C(s1)             # 8011A5EC
    sb      t7, 0x001D(s1)             # 8011A5ED
    sb      t8, 0x001E(s1)             # 8011A5EE
    sb      t9, 0x001F(s1)             # 8011A5EF
    sb      t0, 0x0020(s1)             # 8011A5F0
    sb      a1, 0x0021(s1)             # 8011A5F1
    lbu     t1, 0x49EC(a0)             # 000049EC
    or      v1, s1, $zero              # v1 = 8011A5D0
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    or      s0, $zero, $zero           # s0 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    sh      t1, 0x002C(s1)             # 8011A5FC
    lhu     t2, 0x0000(v1)             # 8011A5D0
lbl_80090CF4:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    andi    s0, s0, 0xFFFF             # s0 = 00000001
    addu    a3, a3, t2
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    bne     a0, s0, lbl_80090D10
    addiu   v1, v1, 0x0002             # v1 = 8011A5D2
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80090D10:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    sltiu   $at, v0, 0x09AA
    bnel    $at, $zero, lbl_80090CF4
    lhu     t2, 0x0000(v1)             # 8011A5D2
    lw      t3, 0x1354(s1)             # 8011B924
    sh      a3, 0x1352(s1)             # 8011B922
    lui     v0, 0x8010                 # v0 = 80100000
    sll     t4, t3,  1
    addu    v0, v0, t4
    lhu     v0, -0x4100(v0)            # 800FBF00
    lw      t5, 0x0000(s3)             # 00000000
    or      a1, s1, $zero              # a1 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t5, v0
    lw      t6, 0x1354(s1)             # 8011B924
    lui     v0, 0x8010                 # v0 = 80100000
    lw      t8, 0x0000(s3)             # 00000000
    sll     t7, t6,  1
    addu    v0, v0, t7
    lhu     v0, -0x40FA(v0)            # 800FBF06
    or      a1, s1, $zero              # a1 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t8, v0
    lui     a0, 0x0800                 # a0 = 08000000
    lw      a1, 0x0000(s3)             # 00000000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80091474
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x1354(s1)             # 8011B924
    lui     s0, 0x8010                 # s0 = 80100000
    lw      t9, 0x0000(s3)             # 00000000
    sll     v0, v0,  1
    addu    s0, s0, v0
    lhu     s0, -0x4100(s0)            # 800FBF00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9EE           # $at = 0001C9EE
    addu    a0, s2, v0
    addu    a1, t9, s0
    addiu   a1, a1, 0x0022             # a1 = 00000022
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t0, 0x1354(s1)             # 8011B924
    lw      t2, 0x0000(s3)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t1, t0,  3
    addu    a0, s2, t1
    ori     $at, $at, 0xC9F4           # $at = 0001C9F4
    addu    a1, t2, s0
    addiu   a1, a1, 0x0024             # a1 = 00000024
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      t3, 0x1354(s1)             # 8011B924
    lw      t5, 0x0000(s3)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t4, t3,  1
    addu    a0, s2, t4
    ori     $at, $at, 0xCA0C           # $at = 0001CA0C
    addu    a1, t5, s0
    addiu   a1, a1, 0x002E             # a1 = 0000002E
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t6, 0x1354(s1)             # 8011B924
    lw      t8, 0x0000(s3)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t7, t6,  2
    addu    a0, s2, t7
    ori     $at, $at, 0xCA14           # $at = 0001CA14
    addu    a1, t8, s0
    addiu   a1, a1, 0x00A4             # a1 = 000000A4
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t9, 0x1354(s1)             # 8011B924
    lw      t1, 0x0000(s3)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t0, t9,  1
    addu    a0, s2, t0
    ori     $at, $at, 0xCA20           # $at = 0001CA20
    addu    a1, t1, s0
    addiu   a1, a1, 0x002C             # a1 = 0000002C
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t2, 0x1354(s1)             # 8011B924
    lw      t3, 0x0000(s3)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA26           # $at = 0001CA26
    addu    a0, s2, t2
    addu    a1, t3, s0
    addiu   a1, a1, 0x00CF             # a1 = 000000CF
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_80090EB8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008FFC0
    nop
    lw      v0, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x8000           # $at = 00018000
    addu    v0, v0, $at
    lh      t6, 0x4A38(v0)             # 00004A38
    lw      t8, 0x002C($sp)
    lui     s0, 0x8010                 # s0 = 80100000
    sll     t7, t6,  1
    addu    s0, s0, t7
    lhu     s0, -0x4100(s0)            # 800FBF00
    lw      t9, 0x0000(t8)             # 00000000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sw      v0, 0x0020($sp)
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t9, s0
    lui     $at, 0x0800                # $at = 08000000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addu    a0, s0, $at
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    jal     func_80091474
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t1, 0x0020($sp)
    lw      t4, 0x002C($sp)
    lw      t0, 0x0028($sp)
    lh      t2, 0x4A38(t1)             # 00004A38
    lw      t5, 0x0000(t4)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t3, t2,  1
    ori     $at, $at, 0xCA20           # $at = 0001CA20
    addu    a0, t0, t3
    addu    a1, t5, s0
    addiu   a1, a1, 0x002C             # a1 = 0000002C
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      t6, 0x0020($sp)
    lw      t9, 0x002C($sp)
    lui     s0, 0x8010                 # s0 = 80100000
    lh      t7, 0x4A38(t6)             # 00004A38
    lw      t1, 0x0000(t9)             # 00000000
    lui     a1, 0x8012                 # a1 = 80120000
    sll     t8, t7,  1
    addu    s0, s0, t8
    lhu     s0, -0x40FA(s0)            # 800FBF06
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t1, s0
    lui     $at, 0x0800                # $at = 08000000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addu    a0, s0, $at
    addiu   a2, $zero, 0x1450          # a2 = 00001450
    jal     func_80091474
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80090FD0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x8000           # $at = 00018000
    addu    s1, s3, $at
    lh      t6, 0x4A38(s1)             # 00004A38
    lui     s0, 0x8010                 # s0 = 80100000
    lw      t8, 0x0000(s2)             # 00000000
    sll     t7, t6,  1
    addu    s0, s0, t7
    lhu     s0, -0x4100(s0)            # 800FBF00
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a1, t8, s0
    lh      t9, 0x4A50(s1)             # 00004A50
    lui     s0, 0x8010                 # s0 = 80100000
    lw      t1, 0x0000(s2)             # 00000000
    sll     t0, t9,  1
    addu    s0, s0, t0
    lhu     s0, -0x4100(s0)            # 800FBF00
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t1, s0
    lh      t2, 0x4A50(s1)             # 00004A50
    lui     s0, 0x8010                 # s0 = 80100000
    lw      t4, 0x0000(s2)             # 00000000
    sll     t3, t2,  1
    addu    s0, s0, t3
    lhu     s0, -0x40FA(s0)            # 800FBF06
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    addiu   a2, $zero, 0x1354          # a2 = 00001354
    jal     func_80057030
    addu    a0, t4, s0
    lui     a0, 0x0800                 # a0 = 08000000
    lw      a1, 0x0000(s2)             # 00000000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80091474
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lh      v0, 0x4A50(s1)             # 00004A50
    lui     s0, 0x8010                 # s0 = 80100000
    lw      t5, 0x0000(s2)             # 00000000
    sll     v0, v0,  1
    addu    s0, s0, v0
    lhu     s0, -0x4100(s0)            # 800FBF00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xC9EE           # $at = 0001C9EE
    addu    a0, s3, v0
    addu    a1, t5, s0
    addiu   a1, a1, 0x0022             # a1 = 00000022
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      t6, 0x4A50(s1)             # 00004A50
    lw      t8, 0x0000(s2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t7, t6,  3
    addu    a0, s3, t7
    ori     $at, $at, 0xC9F4           # $at = 0001C9F4
    addu    a1, t8, s0
    addiu   a1, a1, 0x0024             # a1 = 00000024
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      t9, 0x4A50(s1)             # 00004A50
    lw      t1, 0x0000(s2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t0, t9,  1
    addu    a0, s3, t0
    ori     $at, $at, 0xCA0C           # $at = 0001CA0C
    addu    a1, t1, s0
    addiu   a1, a1, 0x002E             # a1 = 0000002E
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      t2, 0x4A50(s1)             # 00004A50
    lw      t4, 0x0000(s2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t3, t2,  2
    addu    a0, s3, t3
    ori     $at, $at, 0xCA14           # $at = 0001CA14
    addu    a1, t4, s0
    addiu   a1, a1, 0x00A4             # a1 = 000000A4
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lh      t5, 0x4A50(s1)             # 00004A50
    lw      t7, 0x0000(s2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    sll     t6, t5,  1
    addu    a0, s3, t6
    ori     $at, $at, 0xCA20           # $at = 0001CA20
    addu    a1, t7, s0
    addiu   a1, a1, 0x002C             # a1 = 0000002C
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      t8, 0x4A50(s1)             # 00004A50
    lw      t9, 0x0000(s2)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0xCA26           # $at = 0001CA26
    addu    a0, s3, t8
    addu    a1, t9, s0
    addiu   a1, a1, 0x00CF             # a1 = 000000CF
    addu    a0, a0, $at
    jal     func_80057030
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800911C0:
# Save game settings data
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     a0, 0x0800                 # a0 = 08000000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_80091474
    lw      a1, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_800911F4:
# Load game setting data from save, initialize setting variables
# A0 = Global Context
# A1 = Global Context + 0x1D0
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x0020($sp)
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0800                 # a0 = 08000000
    lw      a1, 0x0000(s2)             # 00000000
    ori     a2, $zero, 0x8000          # a2 = 00008000
    jal     func_80091474
    or      a3, $zero, $zero           # a3 = 00000000
    lui     s1, 0x8010                 # s1 = 80100000
    addiu   s1, s1, 0xBF0C             # s1 = 800FBF0C
    or      s0, $zero, $zero           # s0 = 00000000
    lw      a3, 0x0000(s2)             # 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80091238:
    addu    t6, s1, v0
    addu    t8, a3, v0
    lbu     t9, 0x0003(t8)             # 00000003
    lbu     t7, 0x0003(t6)             # 00000003
    or      a0, a3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 800FBF0C
    beql    t7, t9, lbl_80091270
    addiu   s0, s0, 0x0001             # s0 = 00000001
    jal     func_80057030
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_800911C0
    or      a0, s2, $zero              # a0 = 00000000
    lw      a3, 0x0000(s2)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_80091270:
    andi    s0, s0, 0xFFFF             # s0 = 00000002
    sltiu   $at, s0, 0x0009
    bne     $at, $zero, lbl_80091238
    or      v0, s0, $zero              # v0 = 00000002
    lbu     t0, 0x0000(a3)             # 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    andi    t1, t0, 0x0003             # t1 = 00000000
    sb      t1, 0x140A(v0)             # 8011B9DA
    lw      t2, 0x0000(s2)             # 00000000
    lb      a0, 0x140A(v0)             # 8011B9DA
    lbu     t3, 0x0001(t2)             # 00000001
    andi    t4, t3, 0x0001             # t4 = 00000000
    jal     func_800C7420
    sb      t4, 0x140C(v0)             # 8011B9DC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_800912C4:
# Allocate SRAM space?
# A0 = Global Context
# A1 = Global Context + 0x1D0
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x0074             # a0 = 00000074
    jal     func_800A01B8
    ori     a1, $zero, 0x8000          # a1 = 00008000
    lw      t6, 0x001C($sp)
    sw      v0, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800912F4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop
    nop
    nop
    nop


func_80091310:
# Initialize OSPiHandle and partially OSIoMesg for save data transfers
# A0 = baseAddress
# A1 = OSPiHandle.type
# A2 = OSPiHandle.domain
# A3 = OSPiHandle.latency
# SP + 0x10 = OSPiHandle.pageSize
# SP + 0x14 = OSPiHandle.relDuration
# SP + 0x18 = OSPiHandle.pulse
# SP + 0x1C = OSPiHandle.speed
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    lui     s0, 0x8010                 # s0 = 80100000
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    addiu   s0, s0, 0xC0B0             # s0 = 800FC0B0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x0020($sp)
    lw      t6, 0x000C(s0)             # 800FC0BC
    lui     $at, 0xA000                # $at = A0000000
    addu    v0, v0, $at
    beq     v0, t6, lbl_800913D4
    lbu     t7, 0x0027($sp)
    sb      t7, 0x0004(s0)             # 800FC0B4
    lui     $at, 0x8010                # $at = 80100000
    sw      v0, -0x3F44($at)           # 800FC0BC
    lbu     t8, 0x003B($sp)
    lbu     t9, 0x0033($sp)
    lbu     t0, 0x0037($sp)
    lw      t1, 0x003C($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    sb      a3, 0x0005(s0)             # 800FC0B5
    sb      a2, 0x0009(s0)             # 800FC0B9
    addiu   a0, a0, 0xC0C4             # a0 = 800FC0C4
    addiu   a1, $zero, 0x0060          # a1 = 00000060
    sb      t8, 0x0008(s0)             # 800FC0B8
    sb      t9, 0x0006(s0)             # 800FC0B6
    sb      t0, 0x0007(s0)             # 800FC0B7
    jal     func_80002E80              # bzero
    sw      t1, 0x0010(s0)             # 800FC0C0
    jal     func_80005130              # __osResetGlobalIntMask
    nop
    lui     v1, 0x8000                 # v1 = 80000000
    addiu   v1, v1, 0x638C             # v1 = 8000638C
    lw      t2, 0x0000(v1)             # 8000638C
    sw      s0, 0x0000(v1)             # 8000638C
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800051A0
    sw      t2, 0x0000(s0)             # 800FC0B0
    lw      t4, 0x0020($sp)
    lui     t3, 0x8010                 # t3 = 80100000
    addiu   t3, t3, 0xC13C             # t3 = 800FC13C
    sb      $zero, 0x0076(s0)          # 800FC126
    sw      t3, 0x0078(s0)             # 800FC128
    sw      t4, 0x0080(s0)             # 800FC130
lbl_800913D4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_800913E8:
# Load/Save Data from/to SRAM (inner function)
# A0 = Copy to/from address
# A1 = Transfer Size
# A2 = 0 if loading data, 1 if saving data
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0xC13C             # a0 = 800FC13C
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0020($sp)
    lw      a1, 0x0024($sp)
    lui     v0, 0x8010                 # v0 = 80100000
    addiu   v0, v0, 0xC0B0             # v0 = 800FC0B0
    sw      a0, 0x007C(v0)             # 800FC12C
    jal     func_80003440              # osWritebackDCache
    sw      a1, 0x0084(v0)             # 800FC134
    lui     a0, 0x8010                 # a0 = 80100000
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xC124             # a1 = 800FC124
    addiu   a0, a0, 0xC0B0             # a0 = 800FC0B0
    jal     func_800040C0
    lw      a2, 0x0028($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0xC13C             # a0 = 800FC13C
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0020($sp)
    jal     func_80004250              # osInvalDCache
    lw      a1, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80091474:
# Load/Save Data from/to SRAM (outer function)
# Called by the Save Game function, saves the game to one of the 6 file slots on sram
# A0 = 0800 0000 (SRAM address) + offset to whatever data is being saved/loaded
# A1 = Copy to or Copy From address
# A2 = Transfer Size (0x8000 maximum, 0x1450 for individual saves)
# A3 = 0 if loading data, 1 if saving data
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   t6, $zero, 0x000D          # t6 = 0000000D
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    jal     func_80091310
    sw      $zero, 0x001C($sp)
    lw      a0, 0x002C($sp)
    lw      a1, 0x0030($sp)
    jal     func_800913E8
    lw      a2, 0x0034($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop
