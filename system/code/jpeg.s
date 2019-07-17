# "JPEG" part of the code file
#
# Handles JPEG backgrounds.
#
# Starts at VRAM: 8005B0A0 / VROM: AD1000
#

.section .text
func_8005B0A0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      v1, 0x00B4(a3)             # 000000B4
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x06C0           # $at = 800006C0
    addu    t6, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x0220           # $at = 80000220
    addu    t9, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x0028(a3)             # 00000028
    ori     $at, $at, 0x02A0           # $at = 800002A0
    addu    t1, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    ori     $at, $at, 0x0320           # $at = 80000320
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    addu    t2, v1, $at
    sw      t8, 0x0004(v1)             # 00000004
    sw      t9, 0x000C(v1)             # 0000000C
    sw      t1, 0x0010(v1)             # 00000010
    sw      t2, 0x0014(v1)             # 00000014
    sw      t7, 0x0008(v1)             # 00000008
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, 0x1574($at)         # 800F1574
    sw      a3, 0x0028($sp)
    jal     func_800ACAB0
    sw      v1, 0x0024($sp)
    lui     $at, 0x800F                # $at = 800F0000
    jal     func_800ACAC0
    sw      v0, 0x1578($at)            # 800F1578
    lw      v1, 0x0024($sp)
    lw      a3, 0x0028($sp)
    lui     $at, 0x800F                # $at = 800F0000
    sw      v0, 0x157C($at)            # 800F157C
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t3, v1, 0x0020             # t3 = 00000020
    sw      t3, 0x15A8($at)            # 800F15A8
    sw      v1, 0x15A0($at)            # 800F15A0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t5, t5, 0x1570             # t5 = 800F1570
    addiu   t0, a3, 0x0098             # t0 = 00000098
    addiu   t9, t5, 0x003C             # t9 = 800F15AC
    sw      $zero, 0x0030(a3)          # 00000030
    sw      t4, 0x0038(a3)             # 00000038
    sw      t0, 0x0080(a3)             # 00000080
    sw      $zero, 0x0084(a3)          # 00000084
    sw      $zero, 0x003C(a3)          # 0000003C
    or      t8, a3, $zero              # t8 = 00000000
lbl_8005B16C:
    lw      t7, 0x0000(t5)             # 800F1570
    addiu   t5, t5, 0x000C             # t5 = 800F157C
    addiu   t8, t8, 0x000C             # t8 = 0000000C
    sw      t7, 0x0034(t8)             # 00000040
    lw      t6, -0x0008(t5)            # 800F1574
    sw      t6, 0x0038(t8)             # 00000044
    lw      t7, -0x0004(t5)            # 800F1578
    bne     t5, t9, lbl_8005B16C
    sw      t7, 0x003C(t8)             # 00000048
    lw      t7, 0x0000(t5)             # 800F157C
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xD2E0             # a0 = 8011D2E0
    sw      t7, 0x0040(t8)             # 0000004C
    sw      t0, 0x0018($sp)
    addiu   a1, a3, 0x0030             # a1 = 00000030
    jal     func_80001E20              # osSendMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800A3644
    addiu   a0, a0, 0xD2A8             # a0 = 8011D2A8
    lw      a0, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8005B1DC:
    sll     t6, a3,  2
    addu    t6, t6, a3
    sll     t6, t6,  6
    addu    t7, t6, a2
    sll     t8, t7,  5
    addu    v0, t8, a1
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8005B1FC:
    lhu     t9, 0x0000(a0)             # 00000000
    addiu   v1, v1, 0x0002             # v1 = 00000002
    addiu   a0, a0, 0x0040             # a0 = 00000040
    sh      t9, 0x0000(v0)             # 00000000
    lhu     t0, -0x003E(a0)            # 00000002
    addiu   v0, v0, 0x0500             # v0 = 00000500
    sh      t0, -0x04FE(v0)            # 00000002
    lhu     t1, -0x003C(a0)            # 00000004
    sh      t1, -0x04FC(v0)            # 00000004
    lhu     t2, -0x003A(a0)            # 00000006
    sh      t2, -0x04FA(v0)            # 00000006
    lhu     t3, -0x0038(a0)            # 00000008
    sh      t3, -0x04F8(v0)            # 00000008
    lhu     t4, -0x0036(a0)            # 0000000A
    sh      t4, -0x04F6(v0)            # 0000000A
    lhu     t5, -0x0034(a0)            # 0000000C
    sh      t5, -0x04F4(v0)            # 0000000C
    lhu     t6, -0x0032(a0)            # 0000000E
    sh      t6, -0x04F2(v0)            # 0000000E
    lhu     t7, -0x0030(a0)            # 00000010
    sh      t7, -0x04F0(v0)            # 00000010
    lhu     t8, -0x002E(a0)            # 00000012
    sh      t8, -0x04EE(v0)            # 00000012
    lhu     t9, -0x002C(a0)            # 00000014
    sh      t9, -0x04EC(v0)            # 00000014
    lhu     t0, -0x002A(a0)            # 00000016
    sh      t0, -0x04EA(v0)            # 00000016
    lhu     t1, -0x0028(a0)            # 00000018
    sh      t1, -0x04E8(v0)            # 00000018
    lhu     t2, -0x0026(a0)            # 0000001A
    sh      t2, -0x04E6(v0)            # 0000001A
    lhu     t3, -0x0024(a0)            # 0000001C
    sh      t3, -0x04E4(v0)            # 0000001C
    lhu     t4, -0x0022(a0)            # 0000001E
    sh      t4, -0x04E2(v0)            # 0000001E
    lhu     t5, -0x0020(a0)            # 00000020
    sh      t5, -0x0280(v0)            # 00000280
    lhu     t6, -0x001E(a0)            # 00000022
    sh      t6, -0x027E(v0)            # 00000282
    lhu     t7, -0x001C(a0)            # 00000024
    sh      t7, -0x027C(v0)            # 00000284
    lhu     t8, -0x001A(a0)            # 00000026
    sh      t8, -0x027A(v0)            # 00000286
    lhu     t9, -0x0018(a0)            # 00000028
    sh      t9, -0x0278(v0)            # 00000288
    lhu     t0, -0x0016(a0)            # 0000002A
    sh      t0, -0x0276(v0)            # 0000028A
    lhu     t1, -0x0014(a0)            # 0000002C
    sh      t1, -0x0274(v0)            # 0000028C
    lhu     t2, -0x0012(a0)            # 0000002E
    sh      t2, -0x0272(v0)            # 0000028E
    lhu     t3, -0x0010(a0)            # 00000030
    sh      t3, -0x0270(v0)            # 00000290
    lhu     t4, -0x000E(a0)            # 00000032
    sh      t4, -0x026E(v0)            # 00000292
    lhu     t5, -0x000C(a0)            # 00000034
    sh      t5, -0x026C(v0)            # 00000294
    lhu     t6, -0x000A(a0)            # 00000036
    sh      t6, -0x026A(v0)            # 00000296
    lhu     t7, -0x0008(a0)            # 00000038
    sh      t7, -0x0268(v0)            # 00000298
    lhu     t8, -0x0006(a0)            # 0000003A
    sh      t8, -0x0266(v0)            # 0000029A
    lhu     t9, -0x0004(a0)            # 0000003C
    sh      t9, -0x0264(v0)            # 0000029C
    lhu     t0, -0x0002(a0)            # 0000003E
    bne     v1, a1, lbl_8005B1FC
    sh      t0, -0x0262(v0)            # 0000029E
    jr      $ra
    nop


func_8005B314:
    andi    t6, a0, 0x0001             # t6 = 00000000
    bnel    t6, $zero, lbl_8005B32C
    lbu     $at, 0x0001(a0)            # 00000001
    jr      $ra
    lhu     v0, 0x0000(a0)             # 00000000
lbl_8005B328:
    lbu     $at, 0x0001(a0)            # 00000001
lbl_8005B32C:
    lbu     t7, 0x0002(a0)             # 00000002
    lbu     t9, 0x0000(a0)             # 00000000
    sll     $at, $at,  8
    or      t7, t7, $at                # t7 = 00000000
    lbu     $at, -0x0001(a0)           # FFFFFFFF
    sra     t8, t7,  8
    sll     $at, $at,  8
    or      t9, t9, $at                # t9 = 00000000
    sll     t0, t9,  8
    or      v0, t8, t0                 # v0 = 00000000
    andi    v0, v0, 0xFFFF             # v0 = 00000000
    jr      $ra
    nop


func_8005B360:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    sb      $zero, 0x0000(s1)          # 00000000
    sb      $zero, 0x0010(s1)          # 00000010
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    addiu   s5, $zero, 0x0022          # s5 = 00000022
    addiu   s4, $zero, 0x0021          # s4 = 00000021
    addiu   s3, $zero, 0x00FF          # s3 = 000000FF
lbl_8005B3A8:
    bnel    s2, $zero, lbl_8005B508
    lw      $ra, 0x0034($sp)
    lbu     t6, 0x0000(s0)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000001
    xor     v0, s3, t6
    sltiu   v0, v0, 0x0001
    beq     v0, $zero, lbl_8005B3A8
    nop
    lbu     v0, 0x0000(s0)             # 00000001
    addiu   s0, s0, 0x0001             # s0 = 00000002
    blez    v0, lbl_8005B3F8
    addiu   t7, v0, 0xFF40             # t7 = FFFFFF40
    sltiu   $at, t7, 0x0023
    beq     $at, $zero, lbl_8005B4F4
    sll     t7, t7,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t7
    lw      t7, 0x7920($at)            # 80107920
    jr      t7
    nop
lbl_8005B3F8:
    beq     v0, $zero, lbl_8005B3A8
    nop
    beq     $zero, $zero, lbl_8005B4F4
    nop
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    lbu     t9, 0x0000(s1)             # 00000000
    addiu   t8, s0, 0x0002             # t8 = 00000004
    or      a0, s0, $zero              # a0 = 00000002
    sll     t0, t9,  2
    addu    t1, s1, t0
    sw      t8, 0x0004(t1)             # 00000004
    lbu     t2, 0x0000(s1)             # 00000000
    addiu   t3, t2, 0x0001             # t3 = 00000001
    jal     func_8005B314
    sb      t3, 0x0000(s1)             # 00000000
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    lbu     t5, 0x0010(s1)             # 00000010
    addiu   t4, s0, 0x0002             # t4 = 00000004
    or      a0, s0, $zero              # a0 = 00000002
    sll     t6, t5,  2
    addu    t7, s1, t6
    sw      t4, 0x0014(t7)             # 00000014
    lbu     t9, 0x0010(s1)             # 00000010
    addiu   t0, t9, 0x0001             # t0 = 00000001
    jal     func_8005B314
    sb      t0, 0x0010(s1)             # 00000010
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    lbu     v0, 0x0009(s0)             # 0000000B
    bne     s4, v0, lbl_8005B4BC
    nop
    beq     $zero, $zero, lbl_8005B4C8
    sw      $zero, 0x0028(s1)          # 00000028
lbl_8005B4BC:
    bne     s5, v0, lbl_8005B4C8
    nop
    sw      s6, 0x0028(s1)             # 00000028
lbl_8005B4C8:
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    addu    s0, s0, v0
    beq     $zero, $zero, lbl_8005B3A8
    sw      s0, 0x0024(s1)             # 00000024
    beq     $zero, $zero, lbl_8005B3A8
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_8005B4F4:
    jal     func_8005B314
    or      a0, s0, $zero              # a0 = 00000002
    beq     $zero, $zero, lbl_8005B3A8
    addu    s0, s0, v0
    lw      $ra, 0x0034($sp)
lbl_8005B508:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_8005B52C:
    addiu   $sp, $sp, 0xFD40           # $sp -= 0x2C0
    sw      s7, 0x003C($sp)
    sw      s5, 0x0034($sp)
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s6, 0x0038($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      a3, 0x02CC($sp)
    jal     func_800048C0              # osGetTime
    nop
    addiu   a0, $sp, 0x0290            # a0 = FFFFFFD0
    addiu   a1, $sp, 0x02A8            # a1 = FFFFFFE8
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80067500
    nop
    jal     func_800048C0              # osGetTime
    nop
    sw      s5, 0x02AC($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005B360
    addiu   a1, $sp, 0x01F8            # a1 = FFFFFF38
    jal     func_800048C0              # osGetTime
    nop
    lbu     a0, 0x01F8($sp)
    addiu   s0, $zero, 0x0001          # s0 = 00000001
    addiu   a1, s5, 0x0220             # a1 = 00000220
    beq     s0, a0, lbl_8005B5DC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a0, $at, lbl_8005B5EC
    addiu   a1, s5, 0x0220             # a1 = 00000220
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a0, $at, lbl_8005B620
    addiu   a1, s5, 0x0220             # a1 = 00000220
    beq     $zero, $zero, lbl_8005B828
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8005B5DC:
    jal     func_800CE870
    lw      a0, 0x01FC($sp)
    beq     $zero, $zero, lbl_8005B65C
    nop
lbl_8005B5EC:
    lw      a0, 0x01FC($sp)
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0200($sp)
    addiu   a1, s5, 0x02A0             # a1 = 000002A0
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0200($sp)
    addiu   a1, s5, 0x0320             # a1 = 00000320
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8005B65C
    nop
lbl_8005B620:
    lw      a0, 0x01FC($sp)
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0200($sp)
    addiu   a1, s5, 0x02A0             # a1 = 000002A0
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0204($sp)
    addiu   a1, s5, 0x0320             # a1 = 00000320
    jal     func_800CE870
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8005B65C
    nop
    beq     $zero, $zero, lbl_8005B828
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8005B65C:
    jal     func_800048C0              # osGetTime
    nop
    lbu     a0, 0x0208($sp)
    addiu   s4, $sp, 0x00A8            # s4 = FFFFFDE8
    or      a1, s4, $zero              # a1 = FFFFFDE8
    beq     s0, a0, lbl_8005B68C
    addiu   a2, s5, 0x03A0             # a2 = 000003A0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a0, $at, lbl_8005B6B0
    addiu   s4, $sp, 0x00A8            # s4 = FFFFFDE8
    beq     $zero, $zero, lbl_8005B828
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8005B68C:
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0010($sp)
    lw      a0, 0x020C($sp)
    jal     func_800CEB2C
    addiu   a3, s5, 0x04B0             # a3 = 000004B0
    beq     v0, $zero, lbl_8005B740
    nop
    beq     $zero, $zero, lbl_8005B740
    nop
lbl_8005B6B0:
    addiu   s0, s5, 0x03A0             # s0 = 000003A0
    addiu   s1, s5, 0x04B0             # s1 = 000004B0
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0010($sp)
    or      a3, s1, $zero              # a3 = 000004B0
    or      a2, s0, $zero              # a2 = 000003A0
    lw      a0, 0x020C($sp)
    jal     func_800CEB2C
    or      a1, s4, $zero              # a1 = FFFFFDE8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0010($sp)
    lw      a0, 0x0210($sp)
    addiu   a1, $sp, 0x00FC            # a1 = FFFFFE3C
    or      a2, s0, $zero              # a2 = 000003A0
    jal     func_800CEB2C
    or      a3, s1, $zero              # a3 = 000004B0
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    lw      a0, 0x0214($sp)
    addiu   a1, $sp, 0x0150            # a1 = FFFFFE90
    or      a2, s0, $zero              # a2 = 000003A0
    jal     func_800CEB2C
    or      a3, s1, $zero              # a3 = 000004B0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)
    lw      a0, 0x0218($sp)
    addiu   a1, $sp, 0x01A4            # a1 = FFFFFEE4
    or      a2, s0, $zero              # a2 = 000003A0
    jal     func_800CEB2C
    or      a3, s1, $zero              # a3 = 000004B0
    beq     v0, $zero, lbl_8005B740
    nop
    beq     $zero, $zero, lbl_8005B740
    nop
    beq     $zero, $zero, lbl_8005B828
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8005B740:
    jal     func_800048C0              # osGetTime
    nop
    lw      t1, 0x021C($sp)
    lw      t2, 0x0220($sp)
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    sw      s4, 0x0094($sp)
    addiu   t4, $sp, 0x00FC            # t4 = FFFFFE3C
    addiu   t5, $sp, 0x0150            # t5 = FFFFFE90
    addiu   t6, $sp, 0x01A4            # t6 = FFFFFEE4
    sb      t3, 0x0091($sp)
    sw      t4, 0x0098($sp)
    sw      t5, 0x009C($sp)
    sw      t6, 0x00A0($sp)
    sb      $zero, 0x00A4($sp)
    or      s3, $zero, $zero           # s3 = 00000000
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s4, $zero, 0x0C00          # s4 = 00000C00
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   s8, s5, 0x06C0             # s8 = 000006C0
    sw      t1, 0x008C($sp)
    sb      t2, 0x0090($sp)
    sltu    a3, $zero, s6
lbl_8005B798:
    addiu   t7, $sp, 0x0078            # t7 = FFFFFDB8
    sw      t7, 0x0010($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    addiu   a0, $sp, 0x008C            # a0 = FFFFFDCC
    or      a1, s8, $zero              # a1 = 000006C0
    jal     func_800CED80
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    bnel    v0, $zero, lbl_8005B810
    addiu   s6, s6, 0x0004             # s6 = 00000004
    jal     func_8005B0A0
    addiu   a0, $sp, 0x01F8            # a0 = FFFFFF38
    or      a0, s8, $zero              # a0 = 000006C0
    jal     func_80004250              # osInvalDCache
    addiu   a1, $zero, 0x0300          # a1 = 00000300
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s1, s5, 0x06C0             # s1 = 000006C0
lbl_8005B7D8:
    or      a0, s1, $zero              # a0 = 000006C0
    or      a1, s7, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_8005B1DC
    or      a3, s3, $zero              # a3 = 00000000
    addiu   s2, s2, 0x0001             # s2 = 00000001
    slti    $at, s2, 0x0014
    bne     $at, $zero, lbl_8005B804
    addiu   s0, s0, 0x0300             # s0 = 00000300
    or      s2, $zero, $zero           # s2 = 00000000
    addiu   s3, s3, 0x0001             # s3 = 00000001
lbl_8005B804:
    bne     s0, s4, lbl_8005B7D8
    addiu   s1, s1, 0x0300             # s1 = 000009C0
    addiu   s6, s6, 0x0004             # s6 = 00000008
lbl_8005B810:
    addiu   $at, $zero, 0x012C         # $at = 0000012C
    bnel    s6, $at, lbl_8005B798
    sltu    a3, $zero, s6
    jal     func_800048C0              # osGetTime
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005B828:
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
    addiu   $sp, $sp, 0x02C0           # $sp += 0x2C0
    nop
    nop
