# "Particle Effects" part of the code file
#
# Handles all particle effects, including blur, shield, spark and soft sprites.
#
# General Documentation about particles:
# https://wiki.cloudmodding.com/oot/Particles
#
# Starts at VRAM: 80013F30 / VROM: A89E90
#

.section .text
func_80013F30:
    addiu   $sp, $sp, 0xFE80           # $sp = FFFFFE80
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a2, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x001C($sp)
    beql    s1, $zero, lbl_8001423C
    lw      $ra, 0x002C($sp)
    lbu     v0, 0x019E(s1)             # 0000019E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    slti    $at, v0, 0x0010
    beq     $at, $zero, lbl_80014238
    sll     t6, v0,  2
    subu    t6, t6, v0
    sll     t6, t6,  3
    addu    s0, s1, t6
    sw      t7, 0x0000(s0)             # 00000000
    lhu     t8, 0x0188(s1)             # 00000188
    lui     $at, 0x3F00                # $at = 3F000000
    andi    t9, t8, 0x0002             # t9 = 00000000
    bnel    t9, $zero, lbl_80014010
    mtc1    $at, $f0                   # $f0 = 0.50
    lwc1    $f4, 0x0000(s2)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    sh      t1, 0x0008(s0)             # 00000008
    lwc1    $f8, 0x0004(s2)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x000A(s0)             # 0000000A
    lwc1    $f16, 0x0008(s2)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    sh      t5, 0x000C(s0)             # 0000000C
    lwc1    $f4, 0x0000(s3)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x000E(s0)             # 0000000E
    lwc1    $f8, 0x0004(s3)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0010(s0)             # 00000010
    lwc1    $f16, 0x0008(s3)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    beq     $zero, $zero, lbl_80014224
    sh      t1, 0x0012(s0)             # 00000012
    mtc1    $at, $f0                   # $f0 = 0.50
lbl_80014010:
    nop
    lh      t2, -0x000A(s0)            # FFFFFFF6
    lh      t3, -0x0010(s0)            # FFFFFFF0
    addiu   a0, $sp, 0x0160            # a0 = FFFFFFE0
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    addiu   a1, $sp, 0x016C            # a1 = FFFFFFEC
    cvt.s.w $f6, $f4
    addiu   a2, $sp, 0x0154            # a2 = FFFFFFD4
    cvt.s.w $f10, $f8
    add.s   $f16, $f6, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x016C($sp)
    lh      t5, -0x000E(s0)            # FFFFFFF2
    lh      t4, -0x0008(s0)            # FFFFFFF8
    mtc1    t5, $f6                    # $f6 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f6
    cvt.s.w $f8, $f4
    add.s   $f16, $f8, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0170($sp)
    lh      t7, -0x000C(s0)            # FFFFFFF4
    lh      t6, -0x0006(s0)            # FFFFFFFA
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0174($sp)
    lwc1    $f8, 0x0000(s3)            # 00000000
    lwc1    $f4, 0x0000(s2)            # 00000000
    add.s   $f6, $f4, $f8
    mul.s   $f10, $f6, $f0
    swc1    $f10, 0x0160($sp)
    lwc1    $f18, 0x0004(s3)           # 00000004
    lwc1    $f16, 0x0004(s2)           # 00000004
    add.s   $f4, $f16, $f18
    mul.s   $f8, $f4, $f0
    swc1    $f8, 0x0164($sp)
    lwc1    $f10, 0x0008(s3)           # 00000008
    lwc1    $f6, 0x0008(s2)            # 00000008
    add.s   $f16, $f6, $f10
    mul.s   $f18, $f16, $f0
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f18, 0x0168($sp)
    jal     func_800A5510
    addiu   a0, $sp, 0x0154            # a0 = FFFFFFD4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6020($at)           # 80106020
    mov.s   $f2, $f0
    abs.s   $f0, $f0
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f0, $f4
    nop
    bc1tl   lbl_80014228
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mtc1    $at, $f8                   # $f8 = 1.00
    addiu   a0, $sp, 0x0154            # a0 = FFFFFFD4
    div.s   $f2, $f8, $f2
    mfc1    a1, $f2
    jal     func_80063DDC
    nop
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF90
    lw      a1, 0x0160($sp)
    lw      a2, 0x0164($sp)
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x0168($sp)
    lwc1    $f6, 0x015C($sp)
    lh      a1, 0x018C(s1)             # 0000018C
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFF50
    lw      a2, 0x0154($sp)
    lw      a3, 0x0158($sp)
    jal     func_8008FCE0
    swc1    $f6, 0x0010($sp)
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF90
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFF50
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0090            # a2 = FFFFFF10
    lwc1    $f10, 0x0160($sp)
    lwc1    $f18, 0x0164($sp)
    lwc1    $f8, 0x0168($sp)
    neg.s   $f16, $f10
    neg.s   $f4, $f18
    neg.s   $f6, $f8
    mfc1    a2, $f4
    mfc1    a3, $f6
    mfc1    a1, $f16
    jal     func_8008F82C              # guTranslateF
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF90
    addiu   a0, $sp, 0x0090            # a0 = FFFFFF10
    addiu   a1, $sp, 0x0110            # a1 = FFFFFF90
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0050            # a2 = FFFFFED0
    addiu   a0, $sp, 0x0050            # a0 = FFFFFED0
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_8008ED08
    addiu   a2, $sp, 0x0038            # a2 = FFFFFEB8
    addiu   a0, $sp, 0x0050            # a0 = FFFFFED0
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_8008ED08
    addiu   a2, $sp, 0x0044            # a2 = FFFFFEC4
    lwc1    $f10, 0x0038($sp)
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    nop
    sh      t9, 0x0008(s0)             # 00000008
    lwc1    $f18, 0x003C($sp)
    trunc.w.s $f4, $f18
    mfc1    t1, $f4
    nop
    sh      t1, 0x000A(s0)             # 0000000A
    lwc1    $f8, 0x0040($sp)
    trunc.w.s $f6, $f8
    mfc1    t3, $f6
    nop
    sh      t3, 0x000C(s0)             # 0000000C
    lwc1    $f10, 0x0044($sp)
    trunc.w.s $f16, $f10
    mfc1    t5, $f16
    nop
    sh      t5, 0x000E(s0)             # 0000000E
    lwc1    $f18, 0x0048($sp)
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x0010(s0)             # 00000010
    lwc1    $f8, 0x004C($sp)
    trunc.w.s $f6, $f8
    mfc1    t9, $f6
    nop
    sh      t9, 0x0012(s0)             # 00000012
lbl_80014224:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_80014228:
    sw      t0, 0x0004(s0)             # 00000004
    lbu     t1, 0x019E(s1)             # 0000019E
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x019E(s1)             # 0000019E
lbl_80014238:
    lw      $ra, 0x002C($sp)
lbl_8001423C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0180           # $sp = 00000000


func_80014254:
    beq     a0, $zero, lbl_80014290
    nop
    lbu     v0, 0x019E(a0)             # 0000019E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    slti    $at, v0, 0x0010
    beq     $at, $zero, lbl_80014290
    sll     t6, v0,  2
    subu    t6, t6, v0
    sll     t6, t6,  3
    addu    v1, a0, t6
    sw      $zero, 0x0000(v1)          # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lbu     t8, 0x019E(a0)             # 0000019E
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x019E(a0)             # 0000019E
lbl_80014290:
    jr      $ra
    nop


func_80014298:
    sb      $zero, 0x019E(a0)          # 0000019E
    or      v1, a0, $zero              # v1 = 00000000
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0x0010          # a1 = 00000010
lbl_800142AC:
    addiu   v0, v0, 0x0004             # v0 = 00000004
    sw      a0, 0x0018(v1)             # 00000018
    sh      $zero, 0x0020(v1)          # 00000020
    sh      $zero, 0x0022(v1)          # 00000022
    sh      $zero, 0x0024(v1)          # 00000024
    sh      $zero, 0x0026(v1)          # 00000026
    sh      $zero, 0x0028(v1)          # 00000028
    sh      $zero, 0x002A(v1)          # 0000002A
    sw      $zero, 0x001C(v1)          # 0000001C
    sh      $zero, 0x002C(v1)          # 0000002C
    sw      a0, 0x0030(v1)             # 00000030
    sh      $zero, 0x0038(v1)          # 00000038
    sh      $zero, 0x003A(v1)          # 0000003A
    sh      $zero, 0x003C(v1)          # 0000003C
    sh      $zero, 0x003E(v1)          # 0000003E
    sh      $zero, 0x0040(v1)          # 00000040
    sh      $zero, 0x0042(v1)          # 00000042
    sw      $zero, 0x0034(v1)          # 00000034
    sh      $zero, 0x0044(v1)          # 00000044
    sw      a0, 0x0048(v1)             # 00000048
    sh      $zero, 0x0050(v1)          # 00000050
    sh      $zero, 0x0052(v1)          # 00000052
    sh      $zero, 0x0054(v1)          # 00000054
    sh      $zero, 0x0056(v1)          # 00000056
    sh      $zero, 0x0058(v1)          # 00000058
    sh      $zero, 0x005A(v1)          # 0000005A
    sw      $zero, 0x004C(v1)          # 0000004C
    sh      $zero, 0x005C(v1)          # 0000005C
    addiu   v1, v1, 0x0060             # v1 = 00000060
    sw      a0, -0x0060(v1)            # 00000000
    sh      $zero, -0x0058(v1)         # 00000008
    sh      $zero, -0x0056(v1)         # 0000000A
    sh      $zero, -0x0054(v1)         # 0000000C
    sh      $zero, -0x0052(v1)         # 0000000E
    sh      $zero, -0x0050(v1)         # 00000010
    sh      $zero, -0x004E(v1)         # 00000012
    sw      $zero, -0x005C(v1)         # 00000004
    bne     v0, a1, lbl_800142AC
    sh      $zero, -0x004C(v1)         # 00000014
    jr      $ra
    nop


func_80014350:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    beql    a0, $zero, lbl_80014454
    lw      $ra, 0x0014($sp)
    beql    a1, $zero, lbl_80014454
    lw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80014298
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    lbu     t6, 0x0184(a1)             # 00000184
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t6, 0x018E(a0)             # 0000018E
    lbu     t7, 0x0188(a1)             # 00000188
    sb      t7, 0x0192(a0)             # 00000192
    lbu     t8, 0x018C(a1)             # 0000018C
    sb      t8, 0x0196(a0)             # 00000196
    lbu     t9, 0x0190(a1)             # 00000190
    sb      t9, 0x019A(a0)             # 0000019A
    lbu     t0, 0x0185(a1)             # 00000185
    sb      t0, 0x018F(a0)             # 0000018F
    lbu     t1, 0x0189(a1)             # 00000189
    sb      t1, 0x0193(a0)             # 00000193
    lbu     t2, 0x018D(a1)             # 0000018D
    sb      t2, 0x0197(a0)             # 00000197
    lbu     t3, 0x0191(a1)             # 00000191
    sb      t3, 0x019B(a0)             # 0000019B
    lbu     t4, 0x0186(a1)             # 00000186
    sb      t4, 0x0190(a0)             # 00000190
    lbu     t5, 0x018A(a1)             # 0000018A
    sb      t5, 0x0194(a0)             # 00000194
    lbu     t6, 0x018E(a1)             # 0000018E
    sb      t6, 0x0198(a0)             # 00000198
    lbu     t7, 0x0192(a1)             # 00000192
    sb      t7, 0x019C(a0)             # 0000019C
    lbu     t8, 0x0187(a1)             # 00000187
    sb      t8, 0x0191(a0)             # 00000191
    lbu     t9, 0x018B(a1)             # 0000018B
    sb      t9, 0x0195(a0)             # 00000195
    lbu     t0, 0x018F(a1)             # 0000018F
    sb      t0, 0x0199(a0)             # 00000199
    lbu     t1, 0x0193(a1)             # 00000193
    sb      t1, 0x019D(a0)             # 0000019D
    lw      t2, 0x0194(a1)             # 00000194
    sb      t2, 0x019F(a0)             # 0000019F
    lw      t3, 0x0198(a1)             # 00000198
    sb      t3, 0x01A0(a0)             # 000001A0
    lw      t4, 0x019C(a1)             # 0000019C
    sh      $zero, 0x0188(a0)          # 00000188
    sh      $zero, 0x018A(a0)          # 0000018A
    sh      $zero, 0x018C(a0)          # 0000018C
    sb      $zero, 0x01A1(a0)          # 000001A1
    sb      $zero, 0x01A2(a0)          # 000001A2
    sb      $zero, 0x01A3(a0)          # 000001A3
    sb      $zero, 0x01A4(a0)          # 000001A4
    sb      $zero, 0x01A5(a0)          # 000001A5
    sb      $zero, 0x01A6(a0)          # 000001A6
    sb      $zero, 0x01A7(a0)          # 000001A7
    sb      $zero, 0x01A8(a0)          # 000001A8
    sb      $zero, 0x01A9(a0)          # 000001A9
    swc1    $f4, 0x0184(a0)            # 00000184
    sw      t4, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)
lbl_80014454:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80014460:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    beql    a0, $zero, lbl_80014588
    lw      $ra, 0x0014($sp)
    beql    a1, $zero, lbl_80014588
    lw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80014298
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4F80                # $at = 4F800000
    lbu     t6, 0x0008(a1)             # 00000008
    sb      t6, 0x018E(a0)             # 0000018E
    lbu     t7, 0x000C(a1)             # 0000000C
    sb      t7, 0x0192(a0)             # 00000192
    lbu     t8, 0x0010(a1)             # 00000010
    sb      t8, 0x0196(a0)             # 00000196
    lbu     t9, 0x0014(a1)             # 00000014
    sb      t9, 0x019A(a0)             # 0000019A
    lbu     t0, 0x0009(a1)             # 00000009
    sb      t0, 0x018F(a0)             # 0000018F
    lbu     t1, 0x000D(a1)             # 0000000D
    sb      t1, 0x0193(a0)             # 00000193
    lbu     t2, 0x0011(a1)             # 00000011
    sb      t2, 0x0197(a0)             # 00000197
    lbu     t3, 0x0015(a1)             # 00000015
    sb      t3, 0x019B(a0)             # 0000019B
    lbu     t4, 0x000A(a1)             # 0000000A
    sb      t4, 0x0190(a0)             # 00000190
    lbu     t5, 0x000E(a1)             # 0000000E
    sb      t5, 0x0194(a0)             # 00000194
    lbu     t6, 0x0012(a1)             # 00000012
    sb      t6, 0x0198(a0)             # 00000198
    lbu     t7, 0x0016(a1)             # 00000016
    sb      t7, 0x019C(a0)             # 0000019C
    lbu     t8, 0x000B(a1)             # 0000000B
    sb      t8, 0x0191(a0)             # 00000191
    lbu     t9, 0x000F(a1)             # 0000000F
    sb      t9, 0x0195(a0)             # 00000195
    lbu     t0, 0x0013(a1)             # 00000013
    sb      t0, 0x0199(a0)             # 00000199
    lbu     t1, 0x0017(a1)             # 00000017
    sb      t1, 0x019D(a0)             # 0000019D
    lbu     t2, 0x0018(a1)             # 00000018
    sb      t2, 0x019F(a0)             # 0000019F
    lbu     t3, 0x0019(a1)             # 00000019
    sb      t3, 0x01A0(a0)             # 000001A0
    lw      t4, 0x0000(a1)             # 00000000
    sw      t4, 0x0180(a0)             # 00000180
    lhu     t5, 0x0004(a1)             # 00000004
    sh      t5, 0x0188(a0)             # 00000188
    lbu     t6, 0x001A(a1)             # 0000001A
    sb      t6, 0x01A1(a0)             # 000001A1
    lh      t7, 0x0006(a1)             # 00000006
    sh      $zero, 0x018C(a0)          # 0000018C
    sh      t7, 0x018A(a0)             # 0000018A
    lbu     t8, 0x001B(a1)             # 0000001B
    mtc1    t8, $f4                    # $f4 = 0.00
    bgez    t8, lbl_80014560
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80014560:
    swc1    $f6, 0x0184(a0)            # 00000184
    lwl     t0, 0x001C(a1)             # 0000001C
    lwr     t0, 0x001F(a1)             # 0000001F
    swl     t0, 0x01A2(a0)             # 000001A2
    swr     t0, 0x01A5(a0)             # 000001A5
    lwl     t2, 0x0020(a1)             # 00000020
    lwr     t2, 0x0023(a1)             # 00000023
    swl     t2, 0x01A6(a0)             # 000001A6
    swr     t2, 0x01A9(a0)             # 000001A9
    lw      $ra, 0x0014($sp)
lbl_80014588:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80014594:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800145A0:
    addiu   $sp, $sp, 0xFFF8           # $sp = FFFFFFF8
    sw      s0, 0x0004($sp)
    bnel    a0, $zero, lbl_800145BC
    lbu     v1, 0x019E(a0)             # 0000019E
    beq     $zero, $zero, lbl_800149F8
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v1, 0x019E(a0)             # 0000019E
lbl_800145BC:
    addiu   s0, $zero, 0x0002          # s0 = 00000002
    addiu   t5, $zero, 0x000F          # t5 = 0000000F
    bne     v1, $zero, lbl_800145D4
    nop
    beq     $zero, $zero, lbl_800149F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800145D4:
    lw      v0, 0x0000(a0)             # 00000000
    addiu   t2, a0, 0x0018             # t2 = 00000018
    bne     v0, $zero, lbl_800147B4
    nop
    lw      t7, 0x0000(t2)             # 00000018
    addiu   t3, a0, 0x0030             # t3 = 00000030
    addiu   t4, a0, 0x0048             # t4 = 00000048
    sw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x0004(t2)             # 0000001C
    addiu   v1, a0, 0x0048             # v1 = 00000048
    addiu   a1, v1, 0x0018             # a1 = 00000060
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0008(t2)             # 00000020
    addiu   a2, v1, 0x0030             # a2 = 00000078
    addiu   a3, v1, 0x0048             # a3 = 00000090
    sw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x000C(t2)             # 00000024
    addiu   t0, v1, 0x0060             # t0 = 000000A8
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    sw      t6, 0x000C(a0)             # 0000000C
    lw      t7, 0x0010(t2)             # 00000028
    sw      t7, 0x0010(a0)             # 00000010
    lw      t6, 0x0014(t2)             # 0000002C
    sw      t6, 0x0014(a0)             # 00000014
    lw      t9, 0x0000(t3)             # 00000030
    sw      t9, 0x0000(t2)             # 00000018
    lw      t8, 0x0004(t3)             # 00000034
    sw      t8, 0x0004(t2)             # 0000001C
    lw      t9, 0x0008(t3)             # 00000038
    sw      t9, 0x0008(t2)             # 00000020
    lw      t8, 0x000C(t3)             # 0000003C
    sw      t8, 0x000C(t2)             # 00000024
    lw      t9, 0x0010(t3)             # 00000040
    sw      t9, 0x0010(t2)             # 00000028
    lw      t8, 0x0014(t3)             # 00000044
    sw      t8, 0x0014(t2)             # 0000002C
    lw      t7, 0x0000(t4)             # 00000048
    sw      t7, 0x0000(t3)             # 00000030
    lw      t6, 0x0004(t4)             # 0000004C
    sw      t6, 0x0004(t3)             # 00000034
    lw      t7, 0x0008(t4)             # 00000050
    sw      t7, 0x0008(t3)             # 00000038
    lw      t6, 0x000C(t4)             # 00000054
    sw      t6, 0x000C(t3)             # 0000003C
    lw      t7, 0x0010(t4)             # 00000058
    sw      t7, 0x0010(t3)             # 00000040
    lw      t6, 0x0014(t4)             # 0000005C
    sw      t6, 0x0014(t3)             # 00000044
lbl_80014694:
    lw      t9, 0x0000(a1)             # 00000060
    addiu   v0, v0, 0x0004             # v0 = 00000007
    addiu   v1, v1, 0x0060             # v1 = 000000A8
    sw      t9, -0x0060(v1)            # 00000048
    lw      t8, 0x0004(a1)             # 00000064
    addiu   a1, a1, 0x0060             # a1 = 000000C0
    addiu   a2, a2, 0x0060             # a2 = 000000D8
    sw      t8, -0x005C(v1)            # 0000004C
    lw      t9, -0x0058(a1)            # 00000068
    addiu   a3, a3, 0x0060             # a3 = 000000F0
    addiu   t0, t0, 0x0060             # t0 = 00000108
    sw      t9, -0x0058(v1)            # 00000050
    lw      t8, -0x0054(a1)            # 0000006C
    sw      t8, -0x0054(v1)            # 00000054
    lw      t9, -0x0050(a1)            # 00000070
    sw      t9, -0x0050(v1)            # 00000058
    lw      t8, -0x004C(a1)            # 00000074
    sw      t8, -0x004C(v1)            # 0000005C
    lw      t7, -0x0060(a2)            # 00000078
    sw      t7, -0x0060(a1)            # 00000060
    lw      t6, -0x005C(a2)            # 0000007C
    sw      t6, -0x005C(a1)            # 00000064
    lw      t7, -0x0058(a2)            # 00000080
    sw      t7, -0x0058(a1)            # 00000068
    lw      t6, -0x0054(a2)            # 00000084
    sw      t6, -0x0054(a1)            # 0000006C
    lw      t7, -0x0050(a2)            # 00000088
    sw      t7, -0x0050(a1)            # 00000070
    lw      t6, -0x004C(a2)            # 0000008C
    sw      t6, -0x004C(a1)            # 00000074
    lw      t9, -0x0060(a3)            # 00000090
    sw      t9, -0x0060(a2)            # 00000078
    lw      t8, -0x005C(a3)            # 00000094
    sw      t8, -0x005C(a2)            # 0000007C
    lw      t9, -0x0058(a3)            # 00000098
    sw      t9, -0x0058(a2)            # 00000080
    lw      t8, -0x0054(a3)            # 0000009C
    sw      t8, -0x0054(a2)            # 00000084
    lw      t9, -0x0050(a3)            # 000000A0
    sw      t9, -0x0050(a2)            # 00000088
    lw      t8, -0x004C(a3)            # 000000A4
    sw      t8, -0x004C(a2)            # 0000008C
    lw      t7, -0x0060(t0)            # 000000A8
    sw      t7, -0x0060(a3)            # 00000090
    lw      t6, -0x005C(t0)            # 000000AC
    sw      t6, -0x005C(a3)            # 00000094
    lw      t7, -0x0058(t0)            # 000000B0
    sw      t7, -0x0058(a3)            # 00000098
    lw      t6, -0x0054(t0)            # 000000B4
    sw      t6, -0x0054(a3)            # 0000009C
    lw      t7, -0x0050(t0)            # 000000B8
    sw      t7, -0x0050(a3)            # 000000A0
    lw      t6, -0x004C(t0)            # 000000BC
    bne     v0, t5, lbl_80014694
    sw      t6, -0x004C(a3)            # 000000A4
    sw      s0, 0x0000(v1)             # 000000A8
    sh      $zero, 0x0008(v1)          # 000000B0
    sh      $zero, 0x000A(v1)          # 000000B2
    sh      $zero, 0x000C(v1)          # 000000B4
    sh      $zero, 0x000E(v1)          # 000000B6
    sh      $zero, 0x0010(v1)          # 000000B8
    sh      $zero, 0x0012(v1)          # 000000BA
    sh      $zero, 0x0014(v1)          # 000000BC
    sw      $zero, 0x0004(v1)          # 000000AC
    lbu     t8, 0x019E(a0)             # 0000019E
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    andi    v1, t9, 0x00FF             # v1 = 000000FF
    bgtz    v1, lbl_800145D4
    sb      t9, 0x019E(a0)             # 0000019E
    sb      $zero, 0x019E(a0)          # 0000019E
    beq     $zero, $zero, lbl_800149F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800147B4:
    bne     s0, v0, lbl_800147C4
    nop
    beq     $zero, $zero, lbl_800149F8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800147C4:
    blez    v1, lbl_800147F4
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, a0, $zero              # v1 = 00000000
    lw      t6, 0x0004(v1)             # 00000004
lbl_800147D4:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0018             # v1 = 00000018
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sw      t7, -0x0014(v1)            # 00000004
    lbu     t8, 0x019E(a0)             # 0000019E
    slt     $at, v0, t8
    bnel    $at, $zero, lbl_800147D4
    lw      t6, 0x0004(v1)             # 0000001C
lbl_800147F4:
    lbu     t9, 0x019F(a0)             # 0000019F
    lw      t6, 0x0004(a0)             # 00000004
    addiu   t2, a0, 0x0018             # t2 = 00000018
    slt     $at, t9, t6
    beql    $at, $zero, lbl_800149E8
    lh      t8, 0x018C(a0)             # 0000018C
    lw      t8, 0x0000(t2)             # 00000018
    addiu   t3, a0, 0x0030             # t3 = 00000030
    addiu   t4, a0, 0x0048             # t4 = 00000048
    sw      t8, 0x0000(a0)             # 00000000
    lw      t7, 0x0004(t2)             # 0000001C
    addiu   v1, a0, 0x0048             # v1 = 00000048
    addiu   a1, v1, 0x0018             # a1 = 00000060
    sw      t7, 0x0004(a0)             # 00000004
    lw      t8, 0x0008(t2)             # 00000020
    addiu   a2, v1, 0x0030             # a2 = 00000078
    addiu   a3, v1, 0x0048             # a3 = 00000090
    sw      t8, 0x0008(a0)             # 00000008
    lw      t7, 0x000C(t2)             # 00000024
    addiu   t0, v1, 0x0060             # t0 = 000000A8
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    sw      t7, 0x000C(a0)             # 0000000C
    lw      t8, 0x0010(t2)             # 00000028
    sw      t8, 0x0010(a0)             # 00000010
    lw      t7, 0x0014(t2)             # 0000002C
    sw      t7, 0x0014(a0)             # 00000014
    lw      t6, 0x0000(t3)             # 00000030
    sw      t6, 0x0000(t2)             # 00000018
    lw      t9, 0x0004(t3)             # 00000034
    sw      t9, 0x0004(t2)             # 0000001C
    lw      t6, 0x0008(t3)             # 00000038
    sw      t6, 0x0008(t2)             # 00000020
    lw      t9, 0x000C(t3)             # 0000003C
    sw      t9, 0x000C(t2)             # 00000024
    lw      t6, 0x0010(t3)             # 00000040
    sw      t6, 0x0010(t2)             # 00000028
    lw      t9, 0x0014(t3)             # 00000044
    sw      t9, 0x0014(t2)             # 0000002C
    lw      t8, 0x0000(t4)             # 00000048
    sw      t8, 0x0000(t3)             # 00000030
    lw      t7, 0x0004(t4)             # 0000004C
    sw      t7, 0x0004(t3)             # 00000034
    lw      t8, 0x0008(t4)             # 00000050
    sw      t8, 0x0008(t3)             # 00000038
    lw      t7, 0x000C(t4)             # 00000054
    sw      t7, 0x000C(t3)             # 0000003C
    lw      t8, 0x0010(t4)             # 00000058
    sw      t8, 0x0010(t3)             # 00000040
    lw      t7, 0x0014(t4)             # 0000005C
    sw      t7, 0x0014(t3)             # 00000044
lbl_800148BC:
    lw      t6, 0x0000(a1)             # 00000060
    addiu   v0, v0, 0x0004             # v0 = 00000007
    addiu   v1, v1, 0x0060             # v1 = 000000A8
    sw      t6, -0x0060(v1)            # 00000048
    lw      t9, 0x0004(a1)             # 00000064
    addiu   a1, a1, 0x0060             # a1 = 000000C0
    addiu   a2, a2, 0x0060             # a2 = 000000D8
    sw      t9, -0x005C(v1)            # 0000004C
    lw      t6, -0x0058(a1)            # 00000068
    addiu   a3, a3, 0x0060             # a3 = 000000F0
    addiu   t0, t0, 0x0060             # t0 = 00000108
    sw      t6, -0x0058(v1)            # 00000050
    lw      t9, -0x0054(a1)            # 0000006C
    sw      t9, -0x0054(v1)            # 00000054
    lw      t6, -0x0050(a1)            # 00000070
    sw      t6, -0x0050(v1)            # 00000058
    lw      t9, -0x004C(a1)            # 00000074
    sw      t9, -0x004C(v1)            # 0000005C
    lw      t8, -0x0060(a2)            # 00000078
    sw      t8, -0x0060(a1)            # 00000060
    lw      t7, -0x005C(a2)            # 0000007C
    sw      t7, -0x005C(a1)            # 00000064
    lw      t8, -0x0058(a2)            # 00000080
    sw      t8, -0x0058(a1)            # 00000068
    lw      t7, -0x0054(a2)            # 00000084
    sw      t7, -0x0054(a1)            # 0000006C
    lw      t8, -0x0050(a2)            # 00000088
    sw      t8, -0x0050(a1)            # 00000070
    lw      t7, -0x004C(a2)            # 0000008C
    sw      t7, -0x004C(a1)            # 00000074
    lw      t6, -0x0060(a3)            # 00000090
    sw      t6, -0x0060(a2)            # 00000078
    lw      t9, -0x005C(a3)            # 00000094
    sw      t9, -0x005C(a2)            # 0000007C
    lw      t6, -0x0058(a3)            # 00000098
    sw      t6, -0x0058(a2)            # 00000080
    lw      t9, -0x0054(a3)            # 0000009C
    sw      t9, -0x0054(a2)            # 00000084
    lw      t6, -0x0050(a3)            # 000000A0
    sw      t6, -0x0050(a2)            # 00000088
    lw      t9, -0x004C(a3)            # 000000A4
    sw      t9, -0x004C(a2)            # 0000008C
    lw      t8, -0x0060(t0)            # 000000A8
    sw      t8, -0x0060(a3)            # 00000090
    lw      t7, -0x005C(t0)            # 000000AC
    sw      t7, -0x005C(a3)            # 00000094
    lw      t8, -0x0058(t0)            # 000000B0
    sw      t8, -0x0058(a3)            # 00000098
    lw      t7, -0x0054(t0)            # 000000B4
    sw      t7, -0x0054(a3)            # 0000009C
    lw      t8, -0x0050(t0)            # 000000B8
    sw      t8, -0x0050(a3)            # 000000A0
    lw      t7, -0x004C(t0)            # 000000BC
    bne     v0, t5, lbl_800148BC
    sw      t7, -0x004C(a3)            # 000000A4
    sw      s0, 0x0000(v1)             # 000000A8
    sh      $zero, 0x0008(v1)          # 000000B0
    sh      $zero, 0x000A(v1)          # 000000B2
    sh      $zero, 0x000C(v1)          # 000000B4
    sh      $zero, 0x000E(v1)          # 000000B6
    sh      $zero, 0x0010(v1)          # 000000B8
    sh      $zero, 0x0012(v1)          # 000000BA
    sh      $zero, 0x0014(v1)          # 000000BC
    sw      $zero, 0x0004(v1)          # 000000AC
    lbu     t9, 0x019E(a0)             # 0000019E
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFE
    andi    t7, t6, 0x00FF             # t7 = 000000FE
    bgtz    t7, lbl_800149DC
    sb      t6, 0x019E(a0)             # 0000019E
    beq     $zero, $zero, lbl_800149F8
    sb      $zero, 0x019E(a0)          # 0000019E
lbl_800149DC:
    beq     $zero, $zero, lbl_800149F8
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x018C(a0)             # 0000018C
lbl_800149E8:
    lh      t9, 0x018A(a0)             # 0000018A
    or      v0, $zero, $zero           # v0 = 00000000
    addu    t6, t8, t9
    sh      t6, 0x018C(a0)             # 0000018C
lbl_800149F8:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp = 00000000


func_80014A04:
    addiu   $sp, $sp, 0xFF90           # $sp = FFFFFF90
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, -0x0018(s0)            # FFFFFFE8
    beql    t6, $zero, lbl_80014A38
    lhu     t8, 0x0014(s0)             # 00000014
    lw      t7, 0x0018(s0)             # 00000018
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0008             # a1 = 00000008
    bne     t7, $zero, lbl_80014A4C
    addiu   v0, s0, 0xFFE8             # v0 = FFFFFFE8
    lhu     t8, 0x0014(s0)             # 00000014
lbl_80014A38:
    andi    t0, t8, 0xFFFC             # t0 = 00000000
    sh      t0, 0x0014(s0)             # 00000014
    ori     t1, t0, 0x0002             # t1 = 00000002
    beq     $zero, $zero, lbl_80014B60
    sh      t1, 0x0014(s0)             # 00000014
lbl_80014A4C:
    addiu   a2, v0, 0x0008             # a2 = FFFFFFF0
    sw      v0, 0x0028($sp)
    jal     func_80063D80
    sw      a1, 0x0024($sp)
    lw      v0, 0x0028($sp)
    addiu   a1, s0, 0x000E             # a1 = 0000000E
    sw      a1, 0x0020($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE8
    jal     func_80063D80
    addiu   a2, v0, 0x000E             # a2 = 0000000E
    addiu   v0, s0, 0x0018             # v0 = 00000018
    addiu   a1, v0, 0x0008             # a1 = 00000020
    sw      v0, 0x0028($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFDC
    jal     func_80063D80
    lw      a2, 0x0024($sp)
    lw      v0, 0x0028($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFD0
    lw      a2, 0x0020($sp)
    jal     func_80063D80
    addiu   a1, v0, 0x000E             # a1 = 0000000E
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFF4
    addiu   a1, $sp, 0x004C            # a1 = FFFFFFDC
    jal     func_800A4EE0
    addiu   a2, $sp, 0x0034            # a2 = FFFFFFC4
    bne     v0, $zero, lbl_80014AE0
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFE8
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFD0
    jal     func_800A4EE0
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFC0
    bne     v0, $zero, lbl_80014AE0
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFDC
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFD0
    jal     func_800A4EE0
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFBC
    beq     v0, $zero, lbl_80014AF4
    lui     $at, 0xBF00                # $at = BF000000
lbl_80014AE0:
    lhu     t2, 0x0014(s0)             # 00000014
    andi    t4, t2, 0xFFFC             # t4 = 00000000
    sh      t4, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_80014B60
    sh      t4, 0x0014(s0)             # 00000014
lbl_80014AF4:
    mtc1    $at, $f0                   # $f0 = -0.50
    lwc1    $f4, 0x0034($sp)
    lwc1    $f6, 0x0030($sp)
    c.le.s  $f4, $f0
    nop
    bc1tl   lbl_80014B3C
    lhu     t5, 0x0014(s0)             # 00000014
    c.le.s  $f6, $f0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x002C($sp)
    bc1tl   lbl_80014B3C
    lhu     t5, 0x0014(s0)             # 00000014
    lwc1    $f8, 0x6024($at)           # 80106024
    c.le.s  $f10, $f8
    nop
    bc1fl   lbl_80014B50
    lhu     t8, 0x0014(s0)             # 00000014
    lhu     t5, 0x0014(s0)             # 00000014
lbl_80014B3C:
    andi    t7, t5, 0xFFFC             # t7 = 00000000
    sh      t7, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_80014B60
    sh      t7, 0x0014(s0)             # 00000014
    lhu     t8, 0x0014(s0)             # 00000014
lbl_80014B50:
    andi    t0, t8, 0xFFFC             # t0 = 00000000
    sh      t0, 0x0014(s0)             # 00000014
    ori     t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0014(s0)             # 00000014
lbl_80014B60:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0070           # $sp = 00000000
    jr      $ra
    nop


func_80014B74:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sdc1    $f20, 0x0018($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s1, a3, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0020($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0180(s2)             # 00000180
    sltiu   $at, t6, 0x0005
    beq     $at, $zero, lbl_80014F30
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x6028($at)            # 80106028
    jr      t6
    nop
    lw      t7, 0x003C($sp)
    mfc1    a2, $f20
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    s0, s2, t8
    lh      a0, 0x0008(s0)             # 00000008
    jal     func_8001B960
    lh      a1, 0x000E(s0)             # 0000000E
    sh      v0, 0x0000(s1)             # 00000000
    mfc1    a2, $f20
    lh      a1, 0x0010(s0)             # 00000010
    jal     func_8001B960
    lh      a0, 0x000A(s0)             # 0000000A
    sh      v0, 0x0002(s1)             # 00000002
    mfc1    a2, $f20
    lh      a1, 0x0012(s0)             # 00000012
    jal     func_8001B960
    lh      a0, 0x000C(s0)             # 0000000C
    lw      v1, 0x0048($sp)
    sh      v0, 0x0004(s1)             # 00000004
    lh      t9, 0x000E(s0)             # 0000000E
    sh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0010(s0)             # 00000010
    sh      t0, 0x0002(v1)             # 00000002
    lh      t1, 0x0012(s0)             # 00000012
    beq     $zero, $zero, lbl_80014F78
    sh      t1, 0x0004(v1)             # 00000004
    lw      t2, 0x003C($sp)
    mfc1    a2, $f20
    sll     t3, t2,  2
    subu    t3, t3, t2
    sll     t3, t3,  3
    addu    s0, s2, t3
    lh      t4, 0x0008(s0)             # 00000008
    sh      t4, 0x0000(s1)             # 00000000
    lh      t5, 0x000A(s0)             # 0000000A
    sh      t5, 0x0002(s1)             # 00000002
    lh      t6, 0x000C(s0)             # 0000000C
    sh      t6, 0x0004(s1)             # 00000004
    lh      a1, 0x0008(s0)             # 00000008
    jal     func_8001B960
    lh      a0, 0x000E(s0)             # 0000000E
    lw      v1, 0x0048($sp)
    mfc1    a2, $f20
    sh      v0, 0x0000(v1)             # 00000000
    lh      a1, 0x000A(s0)             # 0000000A
    jal     func_8001B960
    lh      a0, 0x0010(s0)             # 00000010
    lw      v1, 0x0048($sp)
    mfc1    a2, $f20
    sh      v0, 0x0002(v1)             # 00000002
    lh      a1, 0x000C(s0)             # 0000000C
    jal     func_8001B960
    lh      a0, 0x0012(s0)             # 00000012
    lw      v1, 0x0048($sp)
    beq     $zero, $zero, lbl_80014F78
    sh      v0, 0x0004(v1)             # 00000004
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    lw      t7, 0x003C($sp)
    mul.s   $f20, $f20, $f2
    sll     t8, t7,  2
    subu    t8, t8, t7
    sll     t8, t8,  3
    addu    s0, s2, t8
    lh      a0, 0x0008(s0)             # 00000008
    lh      a1, 0x000E(s0)             # 0000000E
    mfc1    a2, $f20
    jal     func_8001B960
    nop
    sh      v0, 0x0000(s1)             # 00000000
    mfc1    a2, $f20
    lh      a1, 0x0010(s0)             # 00000010
    jal     func_8001B960
    lh      a0, 0x000A(s0)             # 0000000A
    sh      v0, 0x0002(s1)             # 00000002
    mfc1    a2, $f20
    lh      a1, 0x0012(s0)             # 00000012
    jal     func_8001B960
    lh      a0, 0x000C(s0)             # 0000000C
    sh      v0, 0x0004(s1)             # 00000004
    mfc1    a2, $f20
    lh      a1, 0x0008(s0)             # 00000008
    jal     func_8001B960
    lh      a0, 0x000E(s0)             # 0000000E
    lw      v1, 0x0048($sp)
    mfc1    a2, $f20
    sh      v0, 0x0000(v1)             # 00000000
    lh      a1, 0x000A(s0)             # 0000000A
    jal     func_8001B960
    lh      a0, 0x0010(s0)             # 00000010
    lw      v1, 0x0048($sp)
    mfc1    a2, $f20
    sh      v0, 0x0002(v1)             # 00000002
    lh      a1, 0x000C(s0)             # 0000000C
    jal     func_8001B960
    lh      a0, 0x0012(s0)             # 00000012
    lw      v1, 0x0048($sp)
    add.s   $f20, $f20, $f20
    beq     $zero, $zero, lbl_80014F78
    sh      v0, 0x0004(v1)             # 00000004
    lw      t9, 0x003C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f2                   # $f2 = 0.50
    sll     t0, t9,  2
    subu    t0, t0, t9
    sll     t0, t0,  3
    addu    s0, s2, t0
    lh      t1, 0x0008(s0)             # 00000008
    lh      t2, 0x000E(s0)             # 0000000E
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    subu    t3, t1, t2
    sh      t3, 0x0030($sp)
    lh      t0, 0x0030($sp)
    lh      t5, 0x0010(s0)             # 00000010
    lh      t4, 0x000A(s0)             # 0000000A
    mtc1    t0, $f8                    # $f8 = 0.00
    subu    t6, t4, t5
    sh      t6, 0x0032($sp)
    cvt.s.w $f10, $f8
    lh      t8, 0x0012(s0)             # 00000012
    lh      t7, 0x000C(s0)             # 0000000C
    subu    t9, t7, t8
    sh      t9, 0x0034($sp)
    mul.s   $f16, $f10, $f2
    lwc1    $f4, 0x0184(s2)            # 00000184
    lh      t1, 0x0008(s0)             # 00000008
    sub.s   $f0, $f4, $f6
    mtc1    t1, $f6                    # $f6 = 0.00
    mul.s   $f18, $f16, $f0
    cvt.s.w $f8, $f6
    mul.s   $f4, $f18, $f20
    add.s   $f10, $f4, $f8
    trunc.w.s $f16, $f10
    mfc1    t3, $f16
    nop
    sh      t3, 0x0000(s1)             # 00000000
    lh      t4, 0x0032($sp)
    lh      t5, 0x000A(s0)             # 0000000A
    mtc1    t4, $f18                   # $f18 = 0.00
    mtc1    t5, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f18
    cvt.s.w $f18, $f16
    mul.s   $f4, $f6, $f2
    nop
    mul.s   $f8, $f4, $f0
    nop
    mul.s   $f10, $f8, $f20
    add.s   $f6, $f10, $f18
    trunc.w.s $f4, $f6
    mfc1    t7, $f4
    nop
    sh      t7, 0x0002(s1)             # 00000002
    lh      t8, 0x0034($sp)
    lh      t9, 0x000C(s0)             # 0000000C
    lw      v1, 0x0048($sp)
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f8
    cvt.s.w $f8, $f4
    mul.s   $f10, $f16, $f2
    nop
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f6, $f18, $f20
    add.s   $f16, $f6, $f8
    trunc.w.s $f10, $f16
    mfc1    t1, $f10
    nop
    sh      t1, 0x0004(s1)             # 00000004
    lh      t3, 0x0030($sp)
    lh      t2, 0x000E(s0)             # 0000000E
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t2, $f18                   # $f18 = 0.00
    cvt.s.w $f8, $f6
    cvt.s.w $f4, $f18
    mul.s   $f16, $f8, $f2
    nop
    mul.s   $f10, $f16, $f0
    nop
    mul.s   $f18, $f10, $f20
    sub.s   $f6, $f4, $f18
    trunc.w.s $f8, $f6
    mfc1    t5, $f8
    nop
    sh      t5, 0x0000(v1)             # 00000000
    lh      t7, 0x0032($sp)
    lh      t6, 0x0010(s0)             # 00000010
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    cvt.s.w $f18, $f4
    cvt.s.w $f10, $f16
    mul.s   $f6, $f18, $f2
    nop
    mul.s   $f8, $f6, $f0
    nop
    mul.s   $f16, $f8, $f20
    sub.s   $f4, $f10, $f16
    trunc.w.s $f18, $f4
    mfc1    t9, $f18
    nop
    sh      t9, 0x0002(v1)             # 00000002
    lh      t1, 0x0034($sp)
    lh      t0, 0x0012(s0)             # 00000012
    mtc1    t1, $f10                   # $f10 = 0.00
    mtc1    t0, $f6                    # $f6 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f8, $f6
    mul.s   $f4, $f16, $f2
    nop
    mul.s   $f18, $f4, $f0
    nop
    mul.s   $f6, $f18, $f20
    sub.s   $f10, $f8, $f6
    trunc.w.s $f16, $f10
    mfc1    t3, $f16
    beq     $zero, $zero, lbl_80014F78
    sh      t3, 0x0004(v1)             # 00000004
lbl_80014F30:
    lw      t4, 0x003C($sp)
    lw      v1, 0x0048($sp)
    sll     t5, t4,  2
    subu    t5, t5, t4
    sll     t5, t5,  3
    addu    s0, s2, t5
    lh      t6, 0x0008(s0)             # 00000008
    sh      t6, 0x0000(s1)             # 00000000
    lh      t7, 0x000A(s0)             # 0000000A
    sh      t7, 0x0002(s1)             # 00000002
    lh      t8, 0x000C(s0)             # 0000000C
    sh      t8, 0x0004(s1)             # 00000004
    lh      t9, 0x000E(s0)             # 0000000E
    sh      t9, 0x0000(v1)             # 00000000
    lh      t0, 0x0010(s0)             # 00000010
    sh      t0, 0x0002(v1)             # 00000002
    lh      t1, 0x0012(s0)             # 00000012
    sh      t1, 0x0004(v1)             # 00000004
lbl_80014F78:
    lhu     t2, 0x0188(s2)             # 00000188
    andi    t3, t2, 0x0010             # t3 = 00000000
    beql    t3, $zero, lbl_80014FBC
    mfc1    a2, $f20
    lw      v1, 0x0050($sp)
    lw      s0, 0x004C($sp)
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sb      v0, 0x0003(s0)             # 00000003
    sb      v0, 0x0002(s0)             # 00000002
    sb      v0, 0x0001(s0)             # 00000001
    sb      v0, 0x0000(s0)             # 00000000
    sb      v0, 0x0000(v1)             # 00000000
    sb      v0, 0x0001(v1)             # 00000001
    sb      v0, 0x0002(v1)             # 00000002
    beq     $zero, $zero, lbl_8001506C
    sb      v0, 0x0003(v1)             # 00000003
    mfc1    a2, $f20
lbl_80014FBC:
    lbu     a0, 0x018E(s2)             # 0000018E
    jal     func_8001B9B4
    lbu     a1, 0x0196(s2)             # 00000196
    lw      s0, 0x004C($sp)
    mfc1    a2, $f20
    sb      v0, 0x0000(s0)             # 00000000
    lbu     a1, 0x0197(s2)             # 00000197
    jal     func_8001B9B4
    lbu     a0, 0x018F(s2)             # 0000018F
    sb      v0, 0x0001(s0)             # 00000001
    mfc1    a2, $f20
    lbu     a1, 0x0198(s2)             # 00000198
    jal     func_8001B9B4
    lbu     a0, 0x0190(s2)             # 00000190
    sb      v0, 0x0002(s0)             # 00000002
    mfc1    a2, $f20
    lbu     a1, 0x0199(s2)             # 00000199
    jal     func_8001B9B4
    lbu     a0, 0x0191(s2)             # 00000191
    sb      v0, 0x0003(s0)             # 00000003
    mfc1    a2, $f20
    lbu     a1, 0x019A(s2)             # 0000019A
    jal     func_8001B9B4
    lbu     a0, 0x0192(s2)             # 00000192
    lw      v1, 0x0050($sp)
    mfc1    a2, $f20
    sb      v0, 0x0000(v1)             # 00000000
    lbu     a1, 0x019B(s2)             # 0000019B
    jal     func_8001B9B4
    lbu     a0, 0x0193(s2)             # 00000193
    lw      v1, 0x0050($sp)
    mfc1    a2, $f20
    sb      v0, 0x0001(v1)             # 00000001
    lbu     a1, 0x019C(s2)             # 0000019C
    jal     func_8001B9B4
    lbu     a0, 0x0194(s2)             # 00000194
    lw      v1, 0x0050($sp)
    mfc1    a2, $f20
    sb      v0, 0x0002(v1)             # 00000002
    lbu     a1, 0x019D(s2)             # 0000019D
    jal     func_8001B9B4
    lbu     a0, 0x0195(s2)             # 00000195
    lw      v1, 0x0050($sp)
    sb      v0, 0x0003(v1)             # 00000003
lbl_8001506C:
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_80015088:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x001C($sp)
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    jal     func_8007DFBC
    lw      a0, 0x02D0(t6)             # 000002D0
    lw      t7, 0x001C($sp)
    sw      v0, 0x02D0(t7)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800150BC:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a3, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x0094($sp)
    sw      a2, 0x0098($sp)
    addiu   a0, $sp, 0x0064            # a0 = FFFFFFD4
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s2, 0x000E             # a1 = 0000000E
    lw      s0, 0x02C4(s3)             # 000002C4
    lui     v0, 0x800E                 # v0 = 800E0000
    addiu   v0, v0, 0x79F0             # v0 = 800E79F0
    addiu   s0, s0, 0xFFC0             # s0 = FFFFFFC0
    beq     s0, $zero, lbl_80015574
    sw      s0, 0x02C4(s3)             # 000002C4
    lw      t7, 0x0000(v0)             # 800E79F0
    swl     t7, 0x0000(s0)             # FFFFFFC0
    swr     t7, 0x0003(s0)             # FFFFFFC3
    lw      t6, 0x0004(v0)             # 800E79F4
    swl     t6, 0x0004(s0)             # FFFFFFC4
    swr     t6, 0x0007(s0)             # FFFFFFC7
    lw      t7, 0x0008(v0)             # 800E79F8
    swl     t7, 0x0008(s0)             # FFFFFFC8
    swr     t7, 0x000B(s0)             # FFFFFFCB
    lw      t6, 0x000C(v0)             # 800E79FC
    swl     t6, 0x000C(s0)             # FFFFFFCC
    swr     t6, 0x000F(s0)             # FFFFFFCF
    lw      t9, 0x0000(v0)             # 800E79F0
    swl     t9, 0x0010(s0)             # FFFFFFD0
    swr     t9, 0x0013(s0)             # FFFFFFD3
    lw      t8, 0x0004(v0)             # 800E79F4
    swl     t8, 0x0014(s0)             # FFFFFFD4
    swr     t8, 0x0017(s0)             # FFFFFFD7
    lw      t9, 0x0008(v0)             # 800E79F8
    swl     t9, 0x0018(s0)             # FFFFFFD8
    swr     t9, 0x001B(s0)             # FFFFFFDB
    lw      t8, 0x000C(v0)             # 800E79FC
    swl     t8, 0x001C(s0)             # FFFFFFDC
    swr     t8, 0x001F(s0)             # FFFFFFDF
    lw      t1, 0x0000(v0)             # 800E79F0
    swl     t1, 0x0020(s0)             # FFFFFFE0
    swr     t1, 0x0023(s0)             # FFFFFFE3
    lw      t0, 0x0004(v0)             # 800E79F4
    swl     t0, 0x0024(s0)             # FFFFFFE4
    swr     t0, 0x0027(s0)             # FFFFFFE7
    lw      t1, 0x0008(v0)             # 800E79F8
    swl     t1, 0x0028(s0)             # FFFFFFE8
    swr     t1, 0x002B(s0)             # FFFFFFEB
    lw      t0, 0x000C(v0)             # 800E79FC
    swl     t0, 0x002C(s0)             # FFFFFFEC
    swr     t0, 0x002F(s0)             # FFFFFFEF
    lw      t3, 0x0000(v0)             # 800E79F0
    swl     t3, 0x0030(s0)             # FFFFFFF0
    swr     t3, 0x0033(s0)             # FFFFFFF3
    lw      t2, 0x0004(v0)             # 800E79F4
    swl     t2, 0x0034(s0)             # FFFFFFF4
    swr     t2, 0x0037(s0)             # FFFFFFF7
    lw      t3, 0x0008(v0)             # 800E79F8
    swl     t3, 0x0038(s0)             # FFFFFFF8
    swr     t3, 0x003B(s0)             # FFFFFFFB
    lw      t2, 0x000C(v0)             # 800E79FC
    swl     t2, 0x003C(s0)             # FFFFFFFC
    swr     t2, 0x003F(s0)             # FFFFFFFF
    lw      t4, 0x0094($sp)
    lbu     t6, 0x019F(s2)             # 0000019F
    lw      t5, 0x0004(t4)             # 00000004
    mtc1    t6, $f8                    # $f8 = 0.00
    mtc1    t5, $f4                    # $f4 = 0.00
    cvt.s.w $f10, $f8
    bgez    t6, lbl_800151F8
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_800151F8:
    div.s   $f0, $f6, $f10
    addiu   t7, $sp, 0x007C            # t7 = FFFFFFEC
    addiu   t8, $sp, 0x0074            # t8 = FFFFFFE4
    addiu   t9, $sp, 0x0070            # t9 = FFFFFFE0
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x0098($sp)
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFF4
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    lh      t0, 0x007C($sp)
    lh      t1, 0x007E($sp)
    lh      t2, 0x0080($sp)
    mtc1    t0, $f18                   # $f18 = 0.00
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f4, $f18
    addiu   s1, $sp, 0x004C            # s1 = FFFFFFBC
    or      a2, s1, $zero              # a2 = FFFFFFBC
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    cvt.s.w $f16, $f8
    swc1    $f4, 0x0058($sp)
    cvt.s.w $f10, $f6
    swc1    $f16, 0x005C($sp)
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f10, 0x0060($sp)
    or      a0, s1, $zero              # a0 = FFFFFFBC
    jal     func_80063DDC
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f18, 0x004C($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    trunc.w.s $f4, $f18
    or      a2, s1, $zero              # a2 = FFFFFFBC
    mfc1    t4, $f4
    nop
    sh      t4, 0x0000(s0)             # FFFFFFC0
    lwc1    $f8, 0x0050($sp)
    trunc.w.s $f16, $f8
    mfc1    t6, $f16
    nop
    sh      t6, 0x0002(s0)             # FFFFFFC2
    lwc1    $f6, 0x0054($sp)
    trunc.w.s $f10, $f6
    mfc1    t8, $f10
    nop
    sh      t8, 0x0004(s0)             # FFFFFFC4
    lbu     t9, 0x0070($sp)
    sb      t9, 0x000C(s0)             # FFFFFFCC
    lbu     t0, 0x0071($sp)
    sb      t0, 0x000D(s0)             # FFFFFFCD
    lbu     t1, 0x0072($sp)
    sb      t1, 0x000E(s0)             # FFFFFFCE
    lbu     t2, 0x0073($sp)
    sb      t2, 0x000F(s0)             # FFFFFFCF
    lh      t3, 0x0084($sp)
    lh      t4, 0x0086($sp)
    lh      t5, 0x0088($sp)
    mtc1    t3, $f18                   # $f18 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    mtc1    t5, $f6                    # $f6 = 0.00
    cvt.s.w $f4, $f18
    cvt.s.w $f16, $f8
    swc1    $f4, 0x0058($sp)
    cvt.s.w $f10, $f6
    swc1    $f16, 0x005C($sp)
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f10, 0x0060($sp)
    or      a0, s1, $zero              # a0 = FFFFFFBC
    jal     func_80063DDC
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f18, 0x004C($sp)
    lui     $at, 0x4F80                # $at = 4F800000
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x0010(s0)             # FFFFFFD0
    lwc1    $f8, 0x0050($sp)
    trunc.w.s $f16, $f8
    mfc1    t9, $f16
    nop
    sh      t9, 0x0012(s0)             # FFFFFFD2
    lwc1    $f6, 0x0054($sp)
    trunc.w.s $f10, $f6
    mfc1    t1, $f10
    nop
    sh      t1, 0x0014(s0)             # FFFFFFD4
    lbu     t2, 0x0074($sp)
    sb      t2, 0x001C(s0)             # FFFFFFDC
    lbu     t3, 0x0075($sp)
    sb      t3, 0x001D(s0)             # FFFFFFDD
    lbu     t4, 0x0076($sp)
    sb      t4, 0x001E(s0)             # FFFFFFDE
    lbu     t5, 0x0077($sp)
    sb      t5, 0x001F(s0)             # FFFFFFDF
    lw      t6, 0x0094($sp)
    lbu     t8, 0x019F(s2)             # 0000019F
    lw      t7, 0x001C(t6)             # 0000001C
    mtc1    t8, $f8                    # $f8 = 0.00
    mtc1    t7, $f18                   # $f18 = 0.00
    cvt.s.w $f16, $f8
    bgez    t8, lbl_800153B0
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_800153B0:
    div.s   $f0, $f4, $f16
    lw      a1, 0x0098($sp)
    addiu   t9, $sp, 0x007C            # t9 = FFFFFFEC
    addiu   t0, $sp, 0x0074            # t0 = FFFFFFE4
    addiu   t1, $sp, 0x0070            # t1 = FFFFFFE0
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFF4
    addiu   a1, a1, 0x0001             # a1 = 00000001
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    lh      t2, 0x0084($sp)
    lh      t3, 0x0086($sp)
    lh      t4, 0x0088($sp)
    mtc1    t2, $f10                   # $f10 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    mtc1    t4, $f4                    # $f4 = 0.00
    cvt.s.w $f18, $f10
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    or      a2, s1, $zero              # a2 = FFFFFFBC
    cvt.s.w $f6, $f8
    swc1    $f18, 0x0058($sp)
    cvt.s.w $f16, $f4
    swc1    $f6, 0x005C($sp)
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f16, 0x0060($sp)
    or      a0, s1, $zero              # a0 = FFFFFFBC
    jal     func_80063DDC
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f10, 0x004C($sp)
    addiu   a0, $sp, 0x0058            # a0 = FFFFFFC8
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFD4
    trunc.w.s $f18, $f10
    or      a2, s1, $zero              # a2 = FFFFFFBC
    mfc1    t6, $f18
    nop
    sh      t6, 0x0020(s0)             # FFFFFFE0
    lwc1    $f8, 0x0050($sp)
    trunc.w.s $f6, $f8
    mfc1    t8, $f6
    nop
    sh      t8, 0x0022(s0)             # FFFFFFE2
    lwc1    $f4, 0x0054($sp)
    trunc.w.s $f16, $f4
    mfc1    t0, $f16
    nop
    sh      t0, 0x0024(s0)             # FFFFFFE4
    lbu     t1, 0x0074($sp)
    sb      t1, 0x002C(s0)             # FFFFFFEC
    lbu     t2, 0x0075($sp)
    sb      t2, 0x002D(s0)             # FFFFFFED
    lbu     t3, 0x0076($sp)
    sb      t3, 0x002E(s0)             # FFFFFFEE
    lbu     t4, 0x0077($sp)
    sb      t4, 0x002F(s0)             # FFFFFFEF
    lh      t5, 0x007C($sp)
    lh      t6, 0x007E($sp)
    lh      t7, 0x0080($sp)
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    mtc1    t7, $f4                    # $f4 = 0.00
    cvt.s.w $f18, $f10
    cvt.s.w $f6, $f8
    swc1    $f18, 0x0058($sp)
    cvt.s.w $f16, $f4
    swc1    $f6, 0x005C($sp)
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f16, 0x0060($sp)
    or      a0, s1, $zero              # a0 = FFFFFFBC
    jal     func_80063DDC
    lui     a1, 0x4120                 # a1 = 41200000
    lwc1    $f10, 0x004C($sp)
    trunc.w.s $f18, $f10
    mfc1    t9, $f18
    nop
    sh      t9, 0x0030(s0)             # FFFFFFF0
    lwc1    $f8, 0x0050($sp)
    trunc.w.s $f6, $f8
    mfc1    t1, $f6
    nop
    sh      t1, 0x0032(s0)             # FFFFFFF2
    lwc1    $f4, 0x0054($sp)
    lui     t1, 0x0600                 # t1 = 06000000
    trunc.w.s $f16, $f4
    mfc1    t3, $f16
    nop
    sh      t3, 0x0034(s0)             # FFFFFFF4
    lbu     t4, 0x0070($sp)
    sb      t4, 0x003C(s0)             # FFFFFFFC
    lbu     t5, 0x0071($sp)
    sb      t5, 0x003D(s0)             # FFFFFFFD
    lbu     t6, 0x0072($sp)
    sb      t6, 0x003E(s0)             # FFFFFFFE
    lbu     t7, 0x0073($sp)
    sb      t7, 0x003F(s0)             # FFFFFFFF
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t9, 0x0100                 # t9 = 01000000
    ori     t9, t9, 0x4008             # t9 = 01004008
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    sw      s0, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s3)             # 000002D0
    ori     t1, t1, 0x0204             # t1 = 06000204
    addiu   t2, $zero, 0x0406          # t2 = 00000406
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s3)             # 000002D0
    sw      t2, 0x0004(v0)             # 00000004
    sw      t1, 0x0000(v0)             # 00000000
lbl_80015574:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80015590:
    addiu   $sp, $sp, 0xFDF8           # $sp = FFFFFDF8
    sw      s4, 0x0068($sp)
    sw      s2, 0x0060($sp)
    sw      s0, 0x0058($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    or      s4, a2, $zero              # s4 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s8, 0x0078($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s1, 0x005C($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a3, 0x0214($sp)
    addiu   a0, $sp, 0x0148            # a0 = FFFFFF40
    jal     func_80063CCC              # Vec3f_CopyVec3s
    addiu   a1, s0, 0x000E             # a1 = 0000000E
    lw      t6, 0x0004(s2)             # 00000004
    lbu     t7, 0x019F(s0)             # 0000019F
    addiu   s1, $sp, 0x01FC            # s1 = FFFFFFF4
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    addiu   s3, $sp, 0x01F4            # s3 = FFFFFFEC
    cvt.s.w $f6, $f4
    bgez    t7, lbl_80015624
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80015624:
    div.s   $f0, $f6, $f10
    addiu   t8, $sp, 0x01B4            # t8 = FFFFFFAC
    addiu   t9, $sp, 0x01B0            # t9 = FFFFFFA8
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a3, s1, $zero              # a3 = FFFFFFF4
    sw      s3, 0x0010($sp)
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    addiu   a0, $sp, 0x01DC            # a0 = FFFFFFD4
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = FFFFFFF4
    addiu   a0, $sp, 0x01D0            # a0 = FFFFFFC8
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s3, $zero              # a1 = FFFFFFEC
    lw      t1, 0x001C(s2)             # 0000001C
    lbu     t2, 0x019F(s0)             # 0000019F
    mtc1    t1, $f18                   # $f18 = 0.00
    mtc1    t2, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f18
    bgez    t2, lbl_80015698
    cvt.s.w $f16, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_80015698:
    div.s   $f0, $f4, $f16
    addiu   t3, $sp, 0x01AC            # t3 = FFFFFFA4
    addiu   t4, $sp, 0x01A8            # t4 = FFFFFFA0
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s4, 0x0001             # a1 = 00000001
    or      a3, s1, $zero              # a3 = FFFFFFF4
    sw      s3, 0x0010($sp)
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    addiu   s5, $sp, 0x019C            # s5 = FFFFFF94
    or      a0, s5, $zero              # a0 = FFFFFF94
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = FFFFFFF4
    addiu   s6, $sp, 0x0190            # s6 = FFFFFF88
    or      a0, s6, $zero              # a0 = FFFFFF88
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s3, $zero              # a1 = FFFFFFEC
    lhu     t5, 0x0014(s2)             # 00000014
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t6, t5, 0x0003             # t6 = 00000000
    bne     t6, $at, lbl_80015724
    or      a0, s5, $zero              # a0 = FFFFFF94
    addiu   a1, $sp, 0x01DC            # a1 = FFFFFFD4
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x01C4            # a2 = FFFFFFBC
    addiu   s7, $sp, 0x01B8            # s7 = FFFFFFB0
    or      a2, s7, $zero              # a2 = FFFFFFB0
    or      a0, s6, $zero              # a0 = FFFFFF88
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x01D0            # a1 = FFFFFFC8
    beq     $zero, $zero, lbl_800157C8
    lui     $at, 0x3F00                # $at = 3F000000
lbl_80015724:
    lw      t7, -0x0014(s2)            # FFFFFFEC
    lbu     t8, 0x019F(s0)             # 0000019F
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f10                   # $f10 = 0.00
    mtc1    t8, $f8                    # $f8 = 0.00
    cvt.s.w $f18, $f10
    bgez    t8, lbl_80015750
    cvt.s.w $f6, $f8
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f6, $f6, $f4
lbl_80015750:
    div.s   $f0, $f18, $f6
    addiu   t9, $sp, 0x01EC            # t9 = FFFFFFE4
    addiu   t1, $sp, 0x01E8            # t1 = FFFFFFE0
    sw      t1, 0x0018($sp)
    sw      t9, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s4, 0xFFFF             # a1 = FFFFFFFF
    or      a3, s1, $zero              # a3 = FFFFFFF4
    sw      s3, 0x0010($sp)
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    addiu   s7, $sp, 0x0134            # s7 = FFFFFF2C
    or      a0, s7, $zero              # a0 = FFFFFF2C
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = FFFFFFF4
    addiu   s8, $sp, 0x0128            # s8 = FFFFFF20
    or      a0, s8, $zero              # a0 = FFFFFF20
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s3, $zero              # a1 = FFFFFFEC
    or      a0, s5, $zero              # a0 = FFFFFF94
    or      a1, s7, $zero              # a1 = FFFFFF2C
    jal     func_80063D48              # Vec3f_Sub
    addiu   a2, $sp, 0x01C4            # a2 = FFFFFFBC
    addiu   s7, $sp, 0x01B8            # s7 = FFFFFFB0
    or      a2, s7, $zero              # a2 = FFFFFFB0
    or      a0, s6, $zero              # a0 = FFFFFF88
    jal     func_80063D48              # Vec3f_Sub
    or      a1, s8, $zero              # a1 = FFFFFF20
    lui     $at, 0x3F00                # $at = 3F000000
lbl_800157C8:
    mtc1    $at, $f20                  # $f20 = 0.50
    addiu   a0, $sp, 0x01C4            # a0 = FFFFFFBC
    mfc1    a1, $f20
    jal     func_80063DDC
    nop
    mfc1    a1, $f20
    jal     func_80063DDC
    or      a0, s7, $zero              # a0 = FFFFFFB0
    lhu     t2, 0x002C(s2)             # 0000002C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    andi    t3, t2, 0x0003             # t3 = 00000000
    bnel    t3, $at, lbl_80015830
    lw      t4, 0x0034(s2)             # 00000034
    addiu   s2, $sp, 0x0184            # s2 = FFFFFF7C
    or      a2, s2, $zero              # a2 = FFFFFF7C
    or      a0, s5, $zero              # a0 = FFFFFF94
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x01DC            # a1 = FFFFFFD4
    addiu   s0, $sp, 0x0178            # s0 = FFFFFF70
    or      a2, s0, $zero              # a2 = FFFFFF70
    or      a0, s6, $zero              # a0 = FFFFFF88
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x01D0            # a1 = FFFFFFC8
    beq     $zero, $zero, lbl_800158D4
    mfc1    a1, $f20
    lw      t4, 0x0034(s2)             # FFFFFFB0
lbl_80015830:
    lbu     t5, 0x019F(s0)             # 0000010F
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f16                   # $f16 = 0.00
    mtc1    t5, $f8                    # $f8 = 0.00
    cvt.s.w $f10, $f16
    bgez    t5, lbl_80015858
    cvt.s.w $f4, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f4, $f4, $f18
lbl_80015858:
    div.s   $f0, $f10, $f4
    addiu   t6, $sp, 0x01EC            # t6 = FFFFFFE4
    addiu   t7, $sp, 0x01E8            # t7 = FFFFFFE0
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    or      a0, s0, $zero              # a0 = FFFFFF70
    addiu   a1, s4, 0x0002             # a1 = 00000002
    or      a3, s1, $zero              # a3 = FFFFFFF4
    sw      s3, 0x0010($sp)
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    addiu   s0, $sp, 0x011C            # s0 = FFFFFF14
    or      a0, s0, $zero              # a0 = FFFFFF14
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s1, $zero              # a1 = FFFFFFF4
    addiu   s1, $sp, 0x0110            # s1 = FFFFFF08
    or      a0, s1, $zero              # a0 = FFFFFF08
    jal     func_80063CCC              # Vec3f_CopyVec3s
    or      a1, s3, $zero              # a1 = FFFFFFEC
    addiu   s2, $sp, 0x0184            # s2 = FFFFFF7C
    or      a2, s2, $zero              # a2 = FFFFFF7C
    or      a0, s0, $zero              # a0 = FFFFFF14
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x01DC            # a1 = FFFFFFD4
    addiu   s0, $sp, 0x0178            # s0 = FFFFFF70
    or      a2, s0, $zero              # a2 = FFFFFF70
    or      a0, s1, $zero              # a0 = FFFFFF08
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x01D0            # a1 = FFFFFFC8
    mfc1    a1, $f20
lbl_800158D4:
    jal     func_80063DDC
    or      a0, s2, $zero              # a0 = FFFFFF7C
    mfc1    a1, $f20
    jal     func_80063DDC
    or      a0, s0, $zero              # a0 = FFFFFF70
    lw      v0, 0x0214($sp)
    addiu   s7, $sp, 0x0168            # s7 = FFFFFF60
    addiu   a0, $sp, 0x01DC            # a0 = FFFFFFD4
    lw      s0, 0x02C4(v0)             # 000002C4
    addiu   a1, $sp, 0x0148            # a1 = FFFFFF40
    addiu   s0, s0, 0xFF00             # s0 = FFFFFE70
    beq     s0, $zero, lbl_80015F1C
    sw      s0, 0x02C4(v0)             # 000002C4
    jal     func_80063D48              # Vec3f_Sub
    or      a2, s7, $zero              # a2 = FFFFFF60
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f30                  # $f30 = 10.00
    or      a0, s7, $zero              # a0 = FFFFFF60
    mfc1    a1, $f30
    jal     func_80063DDC
    nop
    addiu   s8, $sp, 0x015C            # s8 = FFFFFF54
    or      a2, s8, $zero              # a2 = FFFFFF54
    addiu   a0, $sp, 0x01D0            # a0 = FFFFFFC8
    jal     func_80063D48              # Vec3f_Sub
    addiu   a1, $sp, 0x0148            # a1 = FFFFFF40
    mfc1    a1, $f30
    jal     func_80063DDC
    or      a0, s8, $zero              # a0 = FFFFFF54
    addiu   a0, $sp, 0x0158            # a0 = FFFFFF50
    jal     func_800646C8
    addiu   a1, $sp, 0x01B4            # a1 = FFFFFFAC
    addiu   a0, $sp, 0x0154            # a0 = FFFFFF4C
    jal     func_800646C8
    addiu   a1, $sp, 0x01B0            # a1 = FFFFFFA8
    lui     s6, 0x800E                 # s6 = 800E0000
    addiu   s6, s6, 0x7A00             # s6 = 800E7A00
    lw      t9, 0x0000(s6)             # 800E7A00
    swl     t9, 0x0000(s0)             # FFFFFE70
    swr     t9, 0x0003(s0)             # FFFFFE73
    lw      t8, 0x0004(s6)             # 800E7A04
    swl     t8, 0x0004(s0)             # FFFFFE74
    swr     t8, 0x0007(s0)             # FFFFFE77
    lw      t9, 0x0008(s6)             # 800E7A08
    swl     t9, 0x0008(s0)             # FFFFFE78
    swr     t9, 0x000B(s0)             # FFFFFE7B
    lw      t8, 0x000C(s6)             # 800E7A0C
    swl     t8, 0x000C(s0)             # FFFFFE7C
    swr     t8, 0x000F(s0)             # FFFFFE7F
    lw      t2, 0x0000(s6)             # 800E7A00
    swl     t2, 0x0010(s0)             # FFFFFE80
    swr     t2, 0x0013(s0)             # FFFFFE83
    lw      t1, 0x0004(s6)             # 800E7A04
    swl     t1, 0x0014(s0)             # FFFFFE84
    swr     t1, 0x0017(s0)             # FFFFFE87
    lw      t2, 0x0008(s6)             # 800E7A08
    swl     t2, 0x0018(s0)             # FFFFFE88
    swr     t2, 0x001B(s0)             # FFFFFE8B
    lw      t1, 0x000C(s6)             # 800E7A0C
    swl     t1, 0x001C(s0)             # FFFFFE8C
    swr     t1, 0x001F(s0)             # FFFFFE8F
    jal     func_800CD628
    lwc1    $f12, 0x0168($sp)
    trunc.w.s $f6, $f0
    mfc1    t4, $f6
    nop
    sh      t4, 0x0000(s0)             # FFFFFE70
    jal     func_800CD628
    lwc1    $f12, 0x016C($sp)
    trunc.w.s $f16, $f0
    mfc1    t6, $f16
    nop
    sh      t6, 0x0002(s0)             # FFFFFE72
    jal     func_800CD628
    lwc1    $f12, 0x0170($sp)
    trunc.w.s $f8, $f0
    mfc1    t8, $f8
    nop
    sh      t8, 0x0004(s0)             # FFFFFE74
    lbu     t9, 0x0158($sp)
    sb      t9, 0x000C(s0)             # FFFFFE7C
    lbu     t1, 0x0159($sp)
    sb      t1, 0x000D(s0)             # FFFFFE7D
    lbu     t2, 0x015A($sp)
    sb      t2, 0x000E(s0)             # FFFFFE7E
    lbu     t3, 0x015B($sp)
    sb      t3, 0x000F(s0)             # FFFFFE7F
    jal     func_800CD628
    lwc1    $f12, 0x015C($sp)
    trunc.w.s $f18, $f0
    mfc1    t5, $f18
    nop
    sh      t5, 0x0010(s0)             # FFFFFE80
    jal     func_800CD628
    lwc1    $f12, 0x0160($sp)
    trunc.w.s $f10, $f0
    mfc1    t7, $f10
    nop
    sh      t7, 0x0012(s0)             # FFFFFE82
    jal     func_800CD628
    lwc1    $f12, 0x0164($sp)
    trunc.w.s $f4, $f0
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    addiu   s2, s0, 0x0030             # s2 = FFFFFEA0
    mfc1    t9, $f4
    addiu   s1, s0, 0x0020             # s1 = FFFFFE90
    sh      t9, 0x0014(s0)             # FFFFFE84
    lbu     t1, 0x0154($sp)
    sb      t1, 0x001C(s0)             # FFFFFE8C
    lbu     t2, 0x0155($sp)
    sb      t2, 0x001D(s0)             # FFFFFE8D
    lbu     t3, 0x0156($sp)
    sb      t3, 0x001E(s0)             # FFFFFE8E
    lbu     t4, 0x0157($sp)
    sb      t4, 0x001F(s0)             # FFFFFE8F
lbl_80015AA4:
    mtc1    s3, $f6                    # $f6 = 0.00
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f8                   # $f8 = 7.00
    cvt.s.w $f16, $f6
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    or      s5, s4, $zero              # s5 = 00000003
    div.s   $f28, $f16, $f8
    lwc1    $f8, 0x01DC($sp)
    addiu   a0, $sp, 0x00FC            # a0 = FFFFFEF4
    addiu   a1, $sp, 0x0148            # a1 = FFFFFF40
    or      a2, s7, $zero              # a2 = FFFFFF60
    mul.s   $f0, $f28, $f28
    nop
    mul.s   $f2, $f0, $f28
    add.s   $f6, $f0, $f0
    mul.s   $f14, $f0, $f18
    add.s   $f12, $f2, $f2
    sub.s   $f16, $f2, $f6
    sub.s   $f10, $f12, $f14
    sub.s   $f26, $f14, $f12
    add.s   $f24, $f10, $f4
    lwc1    $f10, 0x019C($sp)
    add.s   $f22, $f16, $f28
    mul.s   $f18, $f24, $f8
    lwc1    $f16, 0x01C4($sp)
    sub.s   $f20, $f2, $f0
    mul.s   $f4, $f26, $f10
    add.s   $f6, $f18, $f4
    mul.s   $f8, $f22, $f16
    lwc1    $f18, 0x0184($sp)
    mul.s   $f4, $f20, $f18
    lwc1    $f18, 0x01A0($sp)
    add.s   $f10, $f6, $f8
    lwc1    $f6, 0x01E0($sp)
    mul.s   $f8, $f24, $f6
    add.s   $f16, $f10, $f4
    mul.s   $f10, $f26, $f18
    swc1    $f16, 0x00FC($sp)
    lwc1    $f16, 0x01C8($sp)
    mul.s   $f6, $f22, $f16
    add.s   $f4, $f8, $f10
    lwc1    $f8, 0x0188($sp)
    mul.s   $f10, $f20, $f8
    lwc1    $f8, 0x01A4($sp)
    add.s   $f18, $f4, $f6
    lwc1    $f4, 0x01E4($sp)
    mul.s   $f6, $f24, $f4
    add.s   $f16, $f18, $f10
    mul.s   $f18, $f26, $f8
    swc1    $f16, 0x0100($sp)
    lwc1    $f16, 0x01CC($sp)
    mul.s   $f4, $f22, $f16
    add.s   $f10, $f6, $f18
    lwc1    $f6, 0x018C($sp)
    mul.s   $f18, $f20, $f6
    add.s   $f8, $f10, $f4
    add.s   $f16, $f8, $f18
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f16, 0x0104($sp)
    mfc1    a1, $f30
    jal     func_80063DDC
    or      a0, s7, $zero              # a0 = FFFFFF60
    lwc1    $f10, 0x01D0($sp)
    lwc1    $f6, 0x0190($sp)
    lwc1    $f16, 0x01B8($sp)
    mul.s   $f4, $f24, $f10
    addiu   a0, $sp, 0x00FC            # a0 = FFFFFEF4
    addiu   a1, $sp, 0x0148            # a1 = FFFFFF40
    mul.s   $f8, $f26, $f6
    or      a2, s8, $zero              # a2 = FFFFFF54
    mul.s   $f10, $f22, $f16
    add.s   $f18, $f4, $f8
    lwc1    $f4, 0x0178($sp)
    mul.s   $f8, $f20, $f4
    add.s   $f6, $f18, $f10
    lwc1    $f18, 0x01D4($sp)
    lwc1    $f4, 0x0194($sp)
    mul.s   $f10, $f24, $f18
    add.s   $f16, $f6, $f8
    mul.s   $f6, $f26, $f4
    swc1    $f16, 0x00FC($sp)
    lwc1    $f16, 0x01BC($sp)
    mul.s   $f18, $f22, $f16
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x017C($sp)
    mul.s   $f6, $f20, $f10
    lwc1    $f10, 0x0198($sp)
    add.s   $f4, $f8, $f18
    lwc1    $f8, 0x01D8($sp)
    mul.s   $f18, $f24, $f8
    add.s   $f16, $f4, $f6
    mul.s   $f4, $f26, $f10
    swc1    $f16, 0x0100($sp)
    lwc1    $f16, 0x01C0($sp)
    mul.s   $f8, $f22, $f16
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x0180($sp)
    mul.s   $f4, $f20, $f18
    add.s   $f10, $f6, $f8
    add.s   $f16, $f10, $f4
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f16, 0x0104($sp)
    mfc1    a1, $f30
    jal     func_80063DDC
    or      a0, s8, $zero              # a0 = FFFFFF54
    lw      t6, 0x0000(s6)             # 800E7A00
    swl     t6, 0x0000(s1)             # FFFFFE90
    swr     t6, 0x0003(s1)             # FFFFFE93
    lw      t5, 0x0004(s6)             # 800E7A04
    swl     t5, 0x0004(s1)             # FFFFFE94
    swr     t5, 0x0007(s1)             # FFFFFE97
    lw      t6, 0x0008(s6)             # 800E7A08
    swl     t6, 0x0008(s1)             # FFFFFE98
    swr     t6, 0x000B(s1)             # FFFFFE9B
    lw      t5, 0x000C(s6)             # 800E7A0C
    swl     t5, 0x000C(s1)             # FFFFFE9C
    swr     t5, 0x000F(s1)             # FFFFFE9F
    lw      t8, 0x0000(s6)             # 800E7A00
    swl     t8, 0x0000(s2)             # FFFFFEA0
    swr     t8, 0x0003(s2)             # FFFFFEA3
    lw      t7, 0x0004(s6)             # 800E7A04
    swl     t7, 0x0004(s2)             # FFFFFEA4
    swr     t7, 0x0007(s2)             # FFFFFEA7
    lw      t8, 0x0008(s6)             # 800E7A08
    swl     t8, 0x0008(s2)             # FFFFFEA8
    swr     t8, 0x000B(s2)             # FFFFFEAB
    lw      t7, 0x000C(s6)             # 800E7A0C
    swl     t7, 0x000C(s2)             # FFFFFEAC
    swr     t7, 0x000F(s2)             # FFFFFEAF
    jal     func_800CD628
    lwc1    $f12, 0x0168($sp)
    trunc.w.s $f6, $f0
    mfc1    t1, $f6
    nop
    sh      t1, 0x0000(s1)             # FFFFFE90
    jal     func_800CD628
    lwc1    $f12, 0x016C($sp)
    trunc.w.s $f8, $f0
    mfc1    t3, $f8
    nop
    sh      t3, 0x0002(s1)             # FFFFFE92
    jal     func_800CD628
    lwc1    $f12, 0x0170($sp)
    trunc.w.s $f18, $f0
    mfc1    a2, $f28
    mfc1    t5, $f18
    nop
    sh      t5, 0x0004(s1)             # FFFFFE94
    lbu     a1, 0x01AC($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B4($sp)
    sb      v0, 0x000C(s1)             # FFFFFE9C
    mfc1    a2, $f28
    lbu     a1, 0x01AD($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B5($sp)
    sb      v0, 0x000D(s1)             # FFFFFE9D
    mfc1    a2, $f28
    lbu     a1, 0x01AE($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B6($sp)
    sb      v0, 0x000E(s1)             # FFFFFE9E
    mfc1    a2, $f28
    lbu     a1, 0x01AF($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B7($sp)
    sb      v0, 0x000F(s1)             # FFFFFE9F
    jal     func_800CD628
    lwc1    $f12, 0x015C($sp)
    trunc.w.s $f10, $f0
    mfc1    t7, $f10
    nop
    sh      t7, 0x0000(s2)             # FFFFFEA0
    jal     func_800CD628
    lwc1    $f12, 0x0160($sp)
    trunc.w.s $f4, $f0
    mfc1    t9, $f4
    nop
    sh      t9, 0x0002(s2)             # FFFFFEA2
    jal     func_800CD628
    lwc1    $f12, 0x0164($sp)
    trunc.w.s $f16, $f0
    mfc1    a2, $f28
    mfc1    t2, $f16
    nop
    sh      t2, 0x0004(s2)             # FFFFFEA4
    lbu     a1, 0x01A8($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B0($sp)
    sb      v0, 0x000C(s2)             # FFFFFEAC
    mfc1    a2, $f28
    lbu     a1, 0x01A9($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B1($sp)
    sb      v0, 0x000D(s2)             # FFFFFEAD
    mfc1    a2, $f28
    lbu     a1, 0x01AA($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B2($sp)
    sb      v0, 0x000E(s2)             # FFFFFEAE
    mfc1    a2, $f28
    lbu     a1, 0x01AB($sp)
    jal     func_8001B9B4
    lbu     a0, 0x01B3($sp)
    sll     t3, s5,  4
    addu    t4, s0, t3
    sb      v0, 0x000F(t4)             # 0000000F
    addiu   s3, s3, 0x0001             # s3 = 00000002
    addiu   $at, $zero, 0x0008         # $at = 00000008
    addiu   s4, s4, 0x0002             # s4 = 00000005
    addiu   s2, s2, 0x0020             # s2 = FFFFFEC0
    bne     s3, $at, lbl_80015AA4
    addiu   s1, s1, 0x0020             # s1 = FFFFFEB0
    lw      t0, 0x0214($sp)
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t6, 0x0101                 # t6 = 01010000
    ori     t6, t6, 0x0020             # t6 = 01010020
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(t0)             # 000002D0
    sw      s0, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    ori     t8, t8, 0x0206             # t8 = 06000206
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    addiu   t9, $zero, 0x0604          # t9 = 00000604
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t2, 0x0604                 # t2 = 06040000
    lui     t3, 0x0004                 # t3 = 00040000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(t0)             # 000002D0
    ori     t3, t3, 0x0A08             # t3 = 00040A08
    ori     t2, t2, 0x060A             # t2 = 0604060A
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t5, 0x0608                 # t5 = 06080000
    lui     t6, 0x0008                 # t6 = 00080000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t0)             # 000002D0
    ori     t6, t6, 0x0E0C             # t6 = 00080E0C
    ori     t5, t5, 0x0A0E             # t5 = 06080A0E
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t8, 0x060C                 # t8 = 060C0000
    lui     t9, 0x000C                 # t9 = 000C0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    ori     t9, t9, 0x1210             # t9 = 000C1210
    ori     t8, t8, 0x0E12             # t8 = 060C0E12
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t2, 0x0610                 # t2 = 06100000
    lui     t3, 0x0010                 # t3 = 00100000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(t0)             # 000002D0
    ori     t3, t3, 0x1614             # t3 = 00101614
    ori     t2, t2, 0x1216             # t2 = 06101216
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t5, 0x0614                 # t5 = 06140000
    lui     t6, 0x0014                 # t6 = 00140000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(t0)             # 000002D0
    ori     t6, t6, 0x1A18             # t6 = 00141A18
    ori     t5, t5, 0x161A             # t5 = 0614161A
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(t0)             # 000002D0
    lui     t8, 0x0618                 # t8 = 06180000
    lui     t9, 0x0018                 # t9 = 00180000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    ori     t9, t9, 0x1E1C             # t9 = 00181E1C
    ori     t8, t8, 0x1A1E             # t8 = 06181A1E
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
lbl_80015F1C:
    lw      $ra, 0x007C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    ldc1    $f30, 0x0050($sp)
    lw      s0, 0x0058($sp)
    lw      s1, 0x005C($sp)
    lw      s2, 0x0060($sp)
    lw      s3, 0x0064($sp)
    lw      s4, 0x0068($sp)
    lw      s5, 0x006C($sp)
    lw      s6, 0x0070($sp)
    lw      s7, 0x0074($sp)
    lw      s8, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0208           # $sp = 00000000


func_80015F64:
    addiu   $sp, $sp, 0xFEE8           # $sp = FFFFFEE8
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s1, s4, $zero              # s1 = 00000000
    lbu     v1, 0x019E(s4)             # 0000019E
    addiu   s3, $zero, 0x0018          # s3 = 00000018
    slti    $at, v1, 0x0002
    bnel    $at, $zero, lbl_80016214
    lw      $ra, 0x002C($sp)
    multu   v1, s3
    lhu     t6, 0x0014(s4)             # 00000014
    addiu   s0, s4, 0x0018             # s0 = 00000018
    addiu   s2, $zero, 0xFFFC          # s2 = FFFFFFFC
    andi    t8, t6, 0xFFFC             # t8 = 00000000
    sh      t8, 0x0014(s4)             # 00000014
    ori     t9, t8, 0x0002             # t9 = 00000002
    sh      t9, 0x0014(s4)             # 00000014
    mflo    t0
    addu    t1, s4, t0
    addiu   t2, t1, 0xFFE8             # t2 = FFFFFFE8
    sltu    $at, s0, t2
    beql    $at, $zero, lbl_80016010
    addiu   a2, $zero, 0x0018          # a2 = 00000018
lbl_80015FDC:
    jal     func_80014A04
    or      a0, s0, $zero              # a0 = 00000018
    lbu     t3, 0x019E(s1)             # 0000019E
    addiu   s0, s0, 0x0018             # s0 = 00000030
    multu   t3, s3
    mflo    t4
    addu    t5, s1, t4
    addiu   t6, t5, 0xFFE8             # t6 = FFFFFFE8
    sltu    $at, s0, t6
    bne     $at, $zero, lbl_80015FDC
    nop
    lbu     v1, 0x019E(s4)             # 0000019E
    addiu   a2, $zero, 0x0018          # a2 = 00000018
lbl_80016010:
    multu   v1, a2
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    mflo    t7
    addu    v0, s4, t7
    lhu     t8, -0x0004(v0)            # FFFFFFFC
    and     t9, t8, s2
    sh      t9, -0x0004(v0)            # FFFFFFFC
    lbu     t0, 0x019E(s4)             # 0000019E
    multu   t0, a2
    mflo    t1
    addu    v0, s4, t1
    lhu     t2, -0x0004(v0)            # FFFFFFFC
    ori     t3, t2, 0x0002             # t3 = 00000002
    jal     func_80015088
    sh      t3, -0x0004(v0)            # FFFFFFFC
    lh      t4, 0x000E(s4)             # 0000000E
    lh      t5, 0x0010(s4)             # 00000010
    lh      t6, 0x0012(s4)             # 00000012
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t5, $f6                    # $f6 = 0.00
    mtc1    t6, $f8                    # $f8 = 0.00
    cvt.s.w $f4, $f4
    addiu   s0, $sp, 0x00CC            # s0 = FFFFFFB4
    or      a0, s0, $zero              # a0 = FFFFFFB4
    cvt.s.w $f6, $f6
    mfc1    a1, $f4
    cvt.s.w $f8, $f8
    mfc1    a2, $f6
    mfc1    a3, $f8
    jal     func_8008F82C              # guTranslateF
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f0, 0x603C($at)           # 8010603C
    addiu   s2, $sp, 0x008C            # s2 = FFFFFF74
    or      a0, s2, $zero              # a0 = FFFFFF74
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8008F4A8              # guScaleF
    nop
    or      a0, s0, $zero              # a0 = FFFFFFB4
    or      a1, s2, $zero              # a1 = FFFFFF74
    jal     func_8008EDB8
    addiu   a2, $sp, 0x004C            # a2 = FFFFFF34
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x004C            # a1 = FFFFFF34
    beql    v0, $zero, lbl_80016214
    lw      $ra, 0x002C($sp)
    lw      a0, 0x02D0(s5)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, a0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s5)             # 000002D0
    sw      v0, 0x0004(a0)             # 00000004
    sw      t8, 0x0000(a0)             # 00000000
    lbu     t9, 0x019E(s4)             # 0000019E
    or      s2, $zero, $zero           # s2 = 00000000
    or      s0, s4, $zero              # s0 = 00000000
    multu   t9, s3
    addiu   s3, $zero, 0x0002          # s3 = 00000002
    mflo    t0
    addu    t1, s4, t0
    addiu   t2, t1, 0xFFE8             # t2 = FFFFFFE8
    sltu    $at, s4, t2
    beql    $at, $zero, lbl_80016214
    lw      $ra, 0x002C($sp)
lbl_80016120:
    lw      t3, 0x0000(s0)             # 00000000
    beql    t3, $zero, lbl_8001613C
    lbu     t5, 0x019E(s1)             # 0000019E
    lw      t4, 0x0018(s0)             # 00000018
    bnel    t4, $zero, lbl_80016158
    lhu     v0, 0x0014(s0)             # 00000014
    lbu     t5, 0x019E(s1)             # 0000019E
lbl_8001613C:
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  3
    addu    v0, s1, t6
    beq     $zero, $zero, lbl_80016200
    addiu   v0, v0, 0xFFE8             # v0 = FFFFFFE8
    lhu     v0, 0x0014(s0)             # 00000014
lbl_80016158:
    andi    v0, v0, 0x0003             # v0 = 00000000
    bne     v0, $zero, lbl_80016174
    nop
    lhu     t7, 0x002C(s0)             # 0000002C
    andi    t8, t7, 0x0003             # t8 = 00000000
    beql    t8, $zero, lbl_800161C0
    or      a0, s4, $zero              # a0 = 00000000
lbl_80016174:
    bne     s3, v0, lbl_8001618C
    nop
    lhu     t9, 0x002C(s0)             # 0000002C
    andi    t0, t9, 0x0003             # t0 = 00000000
    beql    t0, $zero, lbl_800161C0
    or      a0, s4, $zero              # a0 = 00000000
lbl_8001618C:
    bne     v0, $zero, lbl_800161A4
    nop
    lhu     t1, 0x002C(s0)             # 0000002C
    andi    t2, t1, 0x0003             # t2 = 00000000
    beql    s3, t2, lbl_800161C0
    or      a0, s4, $zero              # a0 = 00000000
lbl_800161A4:
    bne     s3, v0, lbl_800161D8
    or      a0, s4, $zero              # a0 = 00000000
    lhu     t3, 0x002C(s0)             # 0000002C
    andi    t4, t3, 0x0003             # t4 = 00000000
    bnel    s3, t4, lbl_800161DC
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s4, $zero              # a0 = 00000000
lbl_800161C0:
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_800150BC
    or      a3, s5, $zero              # a3 = 00000000
    beq     $zero, $zero, lbl_800161EC
    lbu     t5, 0x019E(s1)             # 0000019E
lbl_800161D8:
    or      a1, s0, $zero              # a1 = 00000000
lbl_800161DC:
    or      a2, s2, $zero              # a2 = 00000000
    jal     func_80015590
    or      a3, s5, $zero              # a3 = 00000000
    lbu     t5, 0x019E(s1)             # 0000019E
lbl_800161EC:
    sll     t6, t5,  2
    subu    t6, t6, t5
    sll     t6, t6,  3
    addu    v0, s1, t6
    addiu   v0, v0, 0xFFE8             # v0 = FFFFFFE8
lbl_80016200:
    addiu   s0, s0, 0x0018             # s0 = 00000018
    sltu    $at, s0, v0
    bne     $at, $zero, lbl_80016120
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lw      $ra, 0x002C($sp)
lbl_80016214:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0118           # $sp = 00000000


func_80016234:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      t6, 0x0018($sp)
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    jal     func_8007DFBC
    lw      a0, 0x02D0(t6)             # 000002D0
    lw      t7, 0x0018($sp)
    sw      v0, 0x02D0(t7)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_8001626C:
# gameplay_keep texture: Flare
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x02D0(a2)             # 000002D0
    jal     func_8007DFBC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      t0, 0x001C($sp)
    lui     t1, 0xE700                 # t1 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a2)             # 000002D0
    lui     t9, 0xE300                 # t9 = E3000000
    ori     t9, t9, 0x0A01             # t9 = E3000A01
    lui     t2, 0x0010                 # t2 = 00100000
    sw      t2, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t4, 0xE300                 # t4 = E3000000
    ori     t4, t4, 0x1001             # t4 = E3001001
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t6, 0xD700                 # t6 = D7000000
    ori     t6, t6, 0x0002             # t6 = D7000002
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a2)             # 000002D0
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0x0400                 # t2 = 04000000
    addiu   t2, t2, 0x6020             # t2 = 04006020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a2)             # 000002D0
    lui     t9, 0xFD90                 # t9 = FD900000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t5, 0x0701                 # t5 = 07010000
    ori     t5, t5, 0x4260             # t5 = 07014260
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(a2)             # 000002D0
    lui     t4, 0xF590                 # t4 = F5900000
    sw      t4, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t2, 0x073F                 # t2 = 073F0000
    ori     t2, t2, 0xF100             # t2 = 073FF100
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a2)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t5, 0xF588                 # t5 = F5880000
    ori     t5, t5, 0x1000             # t5 = F5881000
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t6, 0x0001                 # t6 = 00010000
    ori     t6, t6, 0x4260             # t6 = 00014260
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(a2)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t9, 0x000F                 # t9 = 000F0000
    ori     t9, t9, 0xC07C             # t9 = 000FC07C
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    lui     t8, 0xF200                 # t8 = F2000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t3, 0xFC17                 # t3 = FC170000
    lui     t4, 0x35FC                 # t4 = 35FC0000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(a2)             # 000002D0
    ori     t4, t4, 0xFF78             # t4 = 35FCFF78
    ori     t3, t3, 0x1660             # t3 = FC171660
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t6, 0xE200                 # t6 = E2000000
    lui     t7, 0x0C18                 # t7 = 0C180000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a2)             # 000002D0
    ori     t7, t7, 0x4B50             # t7 = 0C184B50
    ori     t6, t6, 0x001C             # t6 = E200001C
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t9, 0xD9F0                 # t9 = D9F00000
    ori     t9, t9, 0xFFFF             # t9 = D9F0FFFF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t3, 0xD9FF                 # t3 = D9FF0000
    lui     t4, 0x0020                 # t4 = 00200000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(a2)             # 000002D0
    ori     t4, t4, 0x0005             # t4 = 00200005
    ori     t3, t3, 0xFFFF             # t3 = D9FFFFFF
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lbu     t4, 0x01A7(t0)             # 000001A7
    lbu     t9, 0x01A6(t0)             # 000001A6
    lbu     t8, 0x01A8(t0)             # 000001A8
    sll     t5, t4, 16
    sll     t2, t9, 24
    or      t6, t2, t5                 # t6 = 00000008
    lbu     t2, 0x01A9(t0)             # 000001A9
    sll     t9, t8,  8
    or      t3, t6, t9                 # t3 = D9F0FFFF
    or      t5, t3, t2                 # t5 = D9F0FFFF
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_800164C8:
    addiu   $sp, $sp, 0xFE30           # $sp = FFFFFE30
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a2, 0x01D8($sp)
    lbu     t6, 0x01A1(s1)             # 000001A1
    lui     t9, 0x800E                 # t9 = 800E0000
    or      a0, s0, $zero              # a0 = 00000000
    sll     t7, t6,  2
    addu    t9, t9, t7
    lw      t9, 0x7A10(t9)             # 800E7A10
    or      a1, s1, $zero              # a1 = 00000000
    lw      a2, 0x01D8($sp)
    jalr    $ra, t9
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xE700                 # t1 = E7000000
    lui     $at, 0x8010                # $at = 80100000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lbu     t2, 0x019E(s1)             # 0000019E
    or      s2, $zero, $zero           # s2 = 00000000
    lw      s5, 0x01D8($sp)
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    blez    t3, lbl_80016978
    addiu   s8, $zero, 0x0604          # s8 = 00000604
    lwc1    $f24, 0x6040($at)          # 80106040
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x3F00                # $at = 3F000000
    lui     s7, 0x0600                 # s7 = 06000000
    lui     s6, 0x0100                 # s6 = 01000000
    mtc1    $at, $f20                  # $f20 = 0.50
    ori     s6, s6, 0x4008             # s6 = 01004008
    ori     s7, s7, 0x0206             # s7 = 06000206
    addiu   s3, $sp, 0x0158            # s3 = FFFFFF88
    lbu     t4, 0x01A1(s1)             # 000001A1
lbl_80016594:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sll     t5, s2,  2
    bne     t4, $at, lbl_800166E4
    subu    t5, t5, s2
    sll     t5, t5,  3
    addu    t6, s1, t5
    lw      t7, 0x0004(t6)             # 00000004
    lbu     t9, 0x019F(s1)             # 0000019F
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t9, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    bgez    t9, lbl_800165D8
    cvt.s.w $f10, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_800165D8:
    div.s   $f0, $f6, $f10
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    ori     t1, t1, 0x0080             # t1 = FA000080
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lbu     t5, 0x01A5(s1)             # 000001A5
    lbu     t6, 0x01A3(s1)             # 000001A3
    lbu     t3, 0x01A2(s1)             # 000001A2
    lbu     t1, 0x01A4(s1)             # 000001A4
    mtc1    t5, $f4                    # $f4 = 0.00
    sll     t7, t6, 16
    sll     t4, t3, 24
    or      t9, t4, t7                 # t9 = 00000000
    sll     t2, t1,  8
    or      t3, t9, t2                 # t3 = 00000000
    bgez    t5, lbl_80016634
    cvt.s.w $f8, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f8, $f8, $f18
lbl_80016634:
    sub.s   $f6, $f22, $f0
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f8, $f6
    cfc1    t6, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_800166B0
    mfc1    t4, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f4, $f10, $f4
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800166A4
    nop
    mfc1    t4, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800166BC
    or      t4, t4, $at                # t4 = 80000000
lbl_800166A4:
    beq     $zero, $zero, lbl_800166BC
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f4
lbl_800166B0:
    nop
    bltz    t4, lbl_800166A4
    nop
lbl_800166BC:
    andi    t7, t4, 0x00FF             # t7 = 000000FF
    ctc1    t6, $f31
    or      t8, t3, t7                 # t8 = 000000FF
    sw      t8, 0x0004(v0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
lbl_800166E4:
    lw      v1, 0x02D0(s0)             # 000002D0
    or      s4, s5, $zero              # s4 = 00000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      s5, 0x0004(v1)             # 00000004
    sw      s6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      s8, 0x0004(v1)             # 00000004
    sw      s7, 0x0000(v1)             # 00000000
    lhu     t6, 0x0188(s1)             # 00000188
    lw      t3, 0x01D8($sp)
    sll     t8, s2,  6
    andi    t4, t6, 0x0004             # t4 = 00000000
    beq     t4, $zero, lbl_8001695C
    addu    v0, t3, t8
    lh      t1, 0x0010(v0)             # 00000010
    lh      t9, 0x0000(v0)             # 00000000
    addiu   a0, $sp, 0x01A8            # a0 = FFFFFFD8
    mtc1    t1, $f18                   # $f18 = 0.00
    mtc1    t9, $f6                    # $f6 = -604462900000000000000000.00
    addiu   a1, $sp, 0x01B4            # a1 = FFFFFFE4
    cvt.s.w $f8, $f18
    addiu   a2, $sp, 0x019C            # a2 = FFFFFFCC
    cvt.s.w $f10, $f6
    add.s   $f4, $f8, $f10
    mul.s   $f18, $f4, $f20
    swc1    $f18, 0x01B4($sp)
    lh      t5, 0x0002(v0)             # 00000002
    lh      t2, 0x0012(v0)             # 00000012
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    t2, $f6                    # $f6 = 0.00
    cvt.s.w $f4, $f10
    cvt.s.w $f8, $f6
    add.s   $f18, $f8, $f4
    mul.s   $f6, $f18, $f20
    swc1    $f6, 0x01B8($sp)
    lh      t4, 0x0004(v0)             # 00000004
    lh      t6, 0x0014(v0)             # 00000014
    mtc1    t4, $f4                    # $f4 = 0.00
    mtc1    t6, $f10                   # $f10 = 0.00
    cvt.s.w $f18, $f4
    cvt.s.w $f8, $f10
    add.s   $f6, $f8, $f18
    mul.s   $f10, $f6, $f20
    swc1    $f10, 0x01BC($sp)
    lh      t3, 0x0020(v0)             # 00000020
    lh      t7, 0x0030(v0)             # 00000030
    mtc1    t3, $f18                   # $f18 = 0.00
    mtc1    t7, $f4                    # $f4 = 0.00
    cvt.s.w $f6, $f18
    cvt.s.w $f8, $f4
    add.s   $f10, $f8, $f6
    mul.s   $f4, $f10, $f20
    swc1    $f4, 0x01A8($sp)
    lh      t1, 0x0022(v0)             # 00000022
    lh      t8, 0x0032(v0)             # 00000032
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t8, $f18                   # $f18 = 0.00
    cvt.s.w $f10, $f6
    cvt.s.w $f8, $f18
    add.s   $f4, $f8, $f10
    mul.s   $f18, $f4, $f20
    swc1    $f18, 0x01AC($sp)
    lh      t2, 0x0024(v0)             # 00000024
    lh      t9, 0x0034(v0)             # 00000034
    mtc1    t2, $f10                   # $f10 = 0.00
    mtc1    t9, $f6                    # $f6 = -604462900000000000000000.00
    cvt.s.w $f4, $f10
    cvt.s.w $f8, $f6
    add.s   $f18, $f8, $f4
    mul.s   $f6, $f18, $f20
    jal     func_80063D48              # Vec3f_Sub
    swc1    $f6, 0x01B0($sp)
    lwc1    $f12, 0x019C($sp)
    lwc1    $f14, 0x01A0($sp)
    lwc1    $f16, 0x01A4($sp)
    mul.s   $f10, $f12, $f12
    nop
    mul.s   $f8, $f14, $f14
    add.s   $f4, $f10, $f8
    mul.s   $f18, $f16, $f16
    add.s   $f0, $f4, $f18
    sqrt.s  $f2, $f0
    abs.s   $f0, $f2
    c.lt.s  $f24, $f0
    nop
    bc1f    lbl_8001695C
    nop
    div.s   $f2, $f22, $f2
    addiu   a0, $sp, 0x019C            # a0 = FFFFFFCC
    mfc1    a1, $f2
    jal     func_80063DDC
    nop
    or      a0, s3, $zero              # a0 = FFFFFF88
    lw      a1, 0x01B4($sp)
    lw      a2, 0x01B8($sp)
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x01BC($sp)
    lwc1    $f12, 0x019C($sp)
    lwc1    $f14, 0x01A0($sp)
    lwc1    $f16, 0x01A4($sp)
    mfc1    a2, $f12
    mfc1    a3, $f14
    addiu   a0, $sp, 0x0118            # a0 = FFFFFF48
    addiu   a1, $zero, 0x3FFF          # a1 = 00003FFF
    jal     func_8008FCE0
    swc1    $f16, 0x0010($sp)
    or      a0, s3, $zero              # a0 = FFFFFF88
    addiu   a1, $sp, 0x0118            # a1 = FFFFFF48
    jal     func_8008EDB8
    addiu   a2, $sp, 0x00D8            # a2 = FFFFFF08
    lwc1    $f6, 0x01B4($sp)
    lwc1    $f8, 0x01B8($sp)
    lwc1    $f18, 0x01BC($sp)
    neg.s   $f10, $f6
    neg.s   $f4, $f8
    neg.s   $f6, $f18
    mfc1    a2, $f4
    mfc1    a3, $f6
    mfc1    a1, $f10
    jal     func_8008F82C              # guTranslateF
    or      a0, s3, $zero              # a0 = FFFFFF88
    addiu   a0, $sp, 0x00D8            # a0 = FFFFFF08
    or      a1, s3, $zero              # a1 = FFFFFF88
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0098            # a2 = FFFFFEC8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x0098            # a1 = FFFFFEC8
    beq     v0, $zero, lbl_80016978
    lui     t0, 0x8010                 # t0 = 80100000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t0, t0, 0xEDB0             # t0 = 800FEDB0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      s4, 0x0004(v1)             # 00000004
    sw      s6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      s8, 0x0004(v1)             # 00000004
    sw      s7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
lbl_8001695C:
    lbu     t1, 0x019E(s1)             # 0000019E
    addiu   s2, s2, 0x0001             # s2 = 00000001
    addiu   s5, s5, 0x0040             # s5 = 00000040
    addiu   t9, t1, 0xFFFF             # t9 = FFFFFFFF
    slt     $at, s2, t9
    bnel    $at, $zero, lbl_80016594
    lbu     t4, 0x01A1(s1)             # 000001A1
lbl_80016978:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x01D0           # $sp = 00000000


func_800169B4:
    addiu   $sp, $sp, 0xFF68           # $sp = FFFFFF68
    sw      s5, 0x003C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a1, 0x009C($sp)
    lbu     v1, 0x019E(s5)             # 0000019E
    or      s6, s5, $zero              # s6 = 00000000
    lw      t6, 0x009C($sp)
    slti    $at, v1, 0x0002
    bne     $at, $zero, lbl_80016E90
    sll     s7, v1,  2
    lw      t7, 0x02C4(t6)             # 000002C4
    sll     t8, s7,  4
    addiu   t9, t8, 0x000F             # t9 = 0000000F
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    and     t1, t9, $at
    subu    s2, t7, t1
    beq     s2, $zero, lbl_80016E90
    sw      s2, 0x02C4(t6)             # 000002C4
    lui     t2, 0x800E                 # t2 = 800E0000
    addiu   t2, t2, 0x7A1C             # t2 = 800E7A1C
    lwl     t4, 0x0000(t2)             # 800E7A1C
    lwr     t4, 0x0003(t2)             # 800E7A1F
    lui     t5, 0x800E                 # t5 = 800E0000
    addiu   t5, t5, 0x7A2C             # t5 = 800E7A2C
    swl     t4, 0x0000(s2)             # 00000000
    swr     t4, 0x0003(s2)             # 00000003
    lwl     t3, 0x0004(t2)             # 800E7A20
    lwr     t3, 0x0007(t2)             # 800E7A23
    or      v0, s2, $zero              # v0 = 00000000
    lui     t7, 0x800E                 # t7 = 800E0000
    swl     t3, 0x0004(s2)             # 00000004
    swr     t3, 0x0007(s2)             # 00000007
    lwl     t4, 0x0008(t2)             # 800E7A24
    lwr     t4, 0x000B(t2)             # 800E7A27
    addiu   t7, t7, 0x7A3C             # t7 = 800E7A3C
    addiu   v0, v0, 0x0040             # v0 = 00000040
    swl     t4, 0x0008(s2)             # 00000008
    swr     t4, 0x000B(s2)             # 0000000B
    lwl     t3, 0x000C(t2)             # 800E7A28
    lwr     t3, 0x000F(t2)             # 800E7A2B
    lui     t2, 0x800E                 # t2 = 800E0000
    addiu   t2, t2, 0x7A4C             # t2 = 800E7A4C
    swl     t3, 0x000C(s2)             # 0000000C
    swr     t3, 0x000F(s2)             # 0000000F
    lwl     t9, 0x0000(t5)             # 800E7A2C
    lwr     t9, 0x0003(t5)             # 800E7A2F
    addiu   t0, $zero, 0x0018          # t0 = 00000018
    addiu   s0, $zero, 0xFFFE          # s0 = FFFFFFFE
    swl     t9, -0x0030(v0)            # 00000010
    swr     t9, -0x002D(v0)            # 00000013
    lwl     t8, 0x0004(t5)             # 800E7A30
    lwr     t8, 0x0007(t5)             # 800E7A33
    addiu   s3, $zero, 0xFFFF          # s3 = FFFFFFFF
    or      s4, s5, $zero              # s4 = 00000000
    swl     t8, -0x002C(v0)            # 00000014
    swr     t8, -0x0029(v0)            # 00000017
    lwl     t9, 0x0008(t5)             # 800E7A34
    lwr     t9, 0x000B(t5)             # 800E7A37
    swl     t9, -0x0028(v0)            # 00000018
    swr     t9, -0x0025(v0)            # 0000001B
    lwl     t8, 0x000C(t5)             # 800E7A38
    lwr     t8, 0x000F(t5)             # 800E7A3B
    swl     t8, -0x0024(v0)            # 0000001C
    swr     t8, -0x0021(v0)            # 0000001F
    lwl     t6, 0x0000(t7)             # 800E7A3C
    lwr     t6, 0x0003(t7)             # 800E7A3F
    swl     t6, -0x0020(v0)            # 00000020
    swr     t6, -0x001D(v0)            # 00000023
    lwl     t1, 0x0004(t7)             # 800E7A40
    lwr     t1, 0x0007(t7)             # 800E7A43
    swl     t1, -0x001C(v0)            # 00000024
    swr     t1, -0x0019(v0)            # 00000027
    lwl     t6, 0x0008(t7)             # 800E7A44
    lwr     t6, 0x000B(t7)             # 800E7A47
    swl     t6, -0x0018(v0)            # 00000028
    swr     t6, -0x0015(v0)            # 0000002B
    lwl     t1, 0x000C(t7)             # 800E7A48
    lwr     t1, 0x000F(t7)             # 800E7A4B
    swl     t1, -0x0014(v0)            # 0000002C
    swr     t1, -0x0011(v0)            # 0000002F
    lwl     t4, 0x0000(t2)             # 800E7A4C
    lwr     t4, 0x0003(t2)             # 800E7A4F
    swl     t4, -0x0010(v0)            # 00000030
    swr     t4, -0x000D(v0)            # 00000033
    lwl     t3, 0x0004(t2)             # 800E7A50
    lwr     t3, 0x0007(t2)             # 800E7A53
    swl     t3, -0x000C(v0)            # 00000034
    swr     t3, -0x0009(v0)            # 00000037
    lwl     t4, 0x0008(t2)             # 800E7A54
    lwr     t4, 0x000B(t2)             # 800E7A57
    swl     t4, -0x0008(v0)            # 00000038
    swr     t4, -0x0005(v0)            # 0000003B
    lwl     t3, 0x000C(t2)             # 800E7A58
    lwr     t3, 0x000F(t2)             # 800E7A5B
    swl     t3, -0x0004(v0)            # 0000003C
    swr     t3, -0x0001(v0)            # 0000003F
    lbu     a0, 0x019E(s5)             # 0000019E
    slti    $at, a0, 0x0002
    bne     $at, $zero, lbl_80016CD4
    or      v1, a0, $zero              # v1 = 00000000
    multu   a0, t0
    lui     a0, 0x800E                 # a0 = 800E0000
    lui     a2, 0x800E                 # a2 = 800E0000
    lui     a1, 0x800E                 # a1 = 800E0000
    addiu   a1, a1, 0x7A7C             # a1 = 800E7A7C
    addiu   a2, a2, 0x7A8C             # a2 = 800E7A8C
    addiu   a0, a0, 0x7A6C             # a0 = 800E7A6C
    or      a3, s5, $zero              # a3 = 00000000
    mflo    t5
    addu    t8, s5, t5
    addiu   t9, t8, 0xFFD0             # t9 = FFFFFFD0
    sltu    $at, s5, t9
    beq     $at, $zero, lbl_80016CD4
    nop
    lui     v1, 0x800E                 # v1 = 800E0000
    addiu   v1, v1, 0x7A5C             # v1 = 800E7A5C
    lwl     t1, 0x0000(v1)             # 800E7A5C
lbl_80016BAC:
    lwr     t1, 0x0003(v1)             # 800E7A5F
    addiu   a3, a3, 0x0018             # a3 = 00000018
    addiu   v0, v0, 0x0040             # v0 = 00000080
    swl     t1, -0x0040(v0)            # 00000040
    swr     t1, -0x003D(v0)            # 00000043
    lwl     t7, 0x0004(v1)             # 800E7A60
    lwr     t7, 0x0007(v1)             # 800E7A63
    swl     t7, -0x003C(v0)            # 00000044
    swr     t7, -0x0039(v0)            # 00000047
    lwl     t1, 0x0008(v1)             # 800E7A64
    lwr     t1, 0x000B(v1)             # 800E7A67
    swl     t1, -0x0038(v0)            # 00000048
    swr     t1, -0x0035(v0)            # 0000004B
    lwl     t7, 0x000C(v1)             # 800E7A68
    lwr     t7, 0x000F(v1)             # 800E7A6B
    swl     t7, -0x0034(v0)            # 0000004C
    swr     t7, -0x0031(v0)            # 0000004F
    lwl     t2, 0x0000(a0)             # 800E7A6C
    lwr     t2, 0x0003(a0)             # 800E7A6F
    swl     t2, -0x0030(v0)            # 00000050
    swr     t2, -0x002D(v0)            # 00000053
    lwl     t6, 0x0004(a0)             # 800E7A70
    lwr     t6, 0x0007(a0)             # 800E7A73
    swl     t6, -0x002C(v0)            # 00000054
    swr     t6, -0x0029(v0)            # 00000057
    lwl     t2, 0x0008(a0)             # 800E7A74
    lwr     t2, 0x000B(a0)             # 800E7A77
    swl     t2, -0x0028(v0)            # 00000058
    swr     t2, -0x0025(v0)            # 0000005B
    lwl     t6, 0x000C(a0)             # 800E7A78
    lwr     t6, 0x000F(a0)             # 800E7A7B
    swl     t6, -0x0024(v0)            # 0000005C
    swr     t6, -0x0021(v0)            # 0000005F
    lwl     t4, 0x0000(a1)             # 800E7A7C
    lwr     t4, 0x0003(a1)             # 800E7A7F
    swl     t4, -0x0020(v0)            # 00000060
    swr     t4, -0x001D(v0)            # 00000063
    lwl     t3, 0x0004(a1)             # 800E7A80
    lwr     t3, 0x0007(a1)             # 800E7A83
    swl     t3, -0x001C(v0)            # 00000064
    swr     t3, -0x0019(v0)            # 00000067
    lwl     t4, 0x0008(a1)             # 800E7A84
    lwr     t4, 0x000B(a1)             # 800E7A87
    swl     t4, -0x0018(v0)            # 00000068
    swr     t4, -0x0015(v0)            # 0000006B
    lwl     t3, 0x000C(a1)             # 800E7A88
    lwr     t3, 0x000F(a1)             # 800E7A8B
    swl     t3, -0x0014(v0)            # 0000006C
    swr     t3, -0x0011(v0)            # 0000006F
    lwl     t8, 0x0000(a2)             # 800E7A8C
    lwr     t8, 0x0003(a2)             # 800E7A8F
    swl     t8, -0x0010(v0)            # 00000070
    swr     t8, -0x000D(v0)            # 00000073
    lwl     t5, 0x0004(a2)             # 800E7A90
    lwr     t5, 0x0007(a2)             # 800E7A93
    swl     t5, -0x000C(v0)            # 00000074
    swr     t5, -0x0009(v0)            # 00000077
    lwl     t8, 0x0008(a2)             # 800E7A94
    lwr     t8, 0x000B(a2)             # 800E7A97
    swl     t8, -0x0008(v0)            # 00000078
    swr     t8, -0x0005(v0)            # 0000007B
    lwl     t5, 0x000C(a2)             # 800E7A98
    lwr     t5, 0x000F(a2)             # 800E7A9B
    swl     t5, -0x0004(v0)            # 0000007C
    swr     t5, -0x0001(v0)            # 0000007F
    lbu     t9, 0x019E(s6)             # 0000019E
    multu   t9, t0
    mflo    t7
    addu    t1, s6, t7
    addiu   t6, t1, 0xFFD0             # t6 = FFFFFFD0
    sltu    $at, a3, t6
    bnel    $at, $zero, lbl_80016BAC
    lwl     t1, 0x0000(v1)             # 800E7A5C
    lbu     v1, 0x019E(s5)             # 0000019E
lbl_80016CD4:
    blez    v1, lbl_80016E80
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s8, $sp, 0x0074            # s8 = FFFFFFDC
lbl_80016CE0:
    lw      t2, 0x0004(s4)             # 00000004
    lbu     t3, 0x019F(s5)             # 0000019F
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f4                    # $f4 = 0.00
    mtc1    t3, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    bgez    t3, lbl_80016D0C
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80016D0C:
    div.s   $f0, $f6, $f10
    addiu   t4, $sp, 0x006C            # t4 = FFFFFFD4
    addiu   t5, $sp, 0x0064            # t5 = FFFFFFCC
    addiu   t8, $sp, 0x0060            # t8 = FFFFFFC8
    sw      t8, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    or      a3, s8, $zero              # a3 = FFFFFFDC
    mfc1    a2, $f0
    jal     func_80014B74
    nop
    bltz    s0, lbl_80016D88
    addiu   s1, s1, 0x0001             # s1 = 00000001
    lh      t7, 0x0074($sp)
    sll     t9, s0,  4
    addu    v0, s2, t9
    sh      t7, 0x0000(v0)             # 00000000
    lh      t1, 0x0076($sp)
    sh      t1, 0x0002(v0)             # 00000002
    lh      t6, 0x0078($sp)
    sh      t6, 0x0004(v0)             # 00000004
    lbu     t2, 0x0064($sp)
    sb      t2, 0x000C(v0)             # 0000000C
    lbu     t3, 0x0065($sp)
    sb      t3, 0x000D(v0)             # 0000000D
    lbu     t4, 0x0066($sp)
    sb      t4, 0x000E(v0)             # 0000000E
    lbu     t5, 0x0067($sp)
    sb      t5, 0x000F(v0)             # 0000000F
lbl_80016D88:
    bltz    s3, lbl_80016DD0
    or      v1, s3, $zero              # v1 = FFFFFFFF
    lh      t9, 0x006C($sp)
    sll     t8, v1,  4
    addu    v0, s2, t8
    sh      t9, 0x0000(v0)             # 00000000
    lh      t7, 0x006E($sp)
    sh      t7, 0x0002(v0)             # 00000002
    lh      t1, 0x0070($sp)
    sh      t1, 0x0004(v0)             # 00000004
    lbu     t6, 0x0060($sp)
    sb      t6, 0x000C(v0)             # 0000000C
    lbu     t2, 0x0061($sp)
    sb      t2, 0x000D(v0)             # 0000000D
    lbu     t3, 0x0062($sp)
    sb      t3, 0x000E(v0)             # 0000000E
    lbu     t4, 0x0063($sp)
    sb      t4, 0x000F(v0)             # 0000000F
lbl_80016DD0:
    addiu   v1, v1, 0x0001             # v1 = 00000000
    slt     $at, s7, v1
    bne     $at, $zero, lbl_80016E1C
    lh      t8, 0x0074($sp)
    sll     t5, v1,  4
    addu    v0, s2, t5
    sh      t8, 0x0000(v0)             # 00000000
    lh      t9, 0x0076($sp)
    sh      t9, 0x0002(v0)             # 00000002
    lh      t7, 0x0078($sp)
    sh      t7, 0x0004(v0)             # 00000004
    lbu     t1, 0x0064($sp)
    sb      t1, 0x000C(v0)             # 0000000C
    lbu     t6, 0x0065($sp)
    sb      t6, 0x000D(v0)             # 0000000D
    lbu     t2, 0x0066($sp)
    sb      t2, 0x000E(v0)             # 0000000E
    lbu     t3, 0x0067($sp)
    sb      t3, 0x000F(v0)             # 0000000F
lbl_80016E1C:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    slt     $at, s7, v1
    bne     $at, $zero, lbl_80016E68
    lh      t5, 0x006C($sp)
    sll     t4, v1,  4
    addu    v0, s2, t4
    sh      t5, 0x0000(v0)             # 00000000
    lh      t8, 0x006E($sp)
    sh      t8, 0x0002(v0)             # 00000002
    lh      t9, 0x0070($sp)
    sh      t9, 0x0004(v0)             # 00000004
    lbu     t7, 0x0060($sp)
    sb      t7, 0x000C(v0)             # 0000000C
    lbu     t1, 0x0061($sp)
    sb      t1, 0x000D(v0)             # 0000000D
    lbu     t6, 0x0062($sp)
    sb      t6, 0x000E(v0)             # 0000000E
    lbu     t2, 0x0063($sp)
    sb      t2, 0x000F(v0)             # 0000000F
lbl_80016E68:
    lbu     t3, 0x019E(s6)             # 0000019E
    addiu   s0, s0, 0x0004             # s0 = 00000002
    addiu   s3, s3, 0x0004             # s3 = 00000003
    slt     $at, s1, t3
    bne     $at, $zero, lbl_80016CE0
    addiu   s4, s4, 0x0018             # s4 = 00000018
lbl_80016E80:
    lw      a0, 0x009C($sp)
    or      a1, s5, $zero              # a1 = 00000000
    jal     func_800164C8
    or      a2, s2, $zero              # a2 = 00000000
lbl_80016E90:
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    lw      s7, 0x0044($sp)
    lw      s8, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp = 00000000


func_80016EC0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s7, 0x0038($sp)
    sw      s2, 0x0024($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0034($sp)
    sw      s5, 0x0030($sp)
    sw      s4, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    or      s6, s2, $zero              # s6 = 00000000
    lw      a2, 0x02D0(s7)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s7)             # 000002D0
    addiu   t8, t8, 0xEDB0             # t8 = 800FEDB0
    ori     t7, t7, 0x0003             # t7 = DA380003
    sw      t7, 0x0000(a2)             # 00000000
    sw      t8, 0x0004(a2)             # 00000004
    lbu     t9, 0x019E(s2)             # 0000019E
    beql    t9, $zero, lbl_80017378
    lw      $ra, 0x003C($sp)
    lhu     t1, 0x0188(s2)             # 00000188
    bnel    t1, $zero, lbl_80017348
    lbu     t6, 0x01A1(s2)             # 000001A1
    jal     func_8007E51C
    or      a0, s7, $zero              # a0 = 00000000
    lw      a2, 0x02D0(s7)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    addiu   t2, a2, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s7)             # 000002D0
    sw      $zero, 0x0004(a2)          # 00000004
    sw      t3, 0x0000(a2)             # 00000000
    lw      v0, 0x02C4(s7)             # 000002C4
    addiu   v0, v0, 0xFE00             # v0 = FFFFFE00
    sw      v0, 0x02C4(s7)             # 000002C4
    beq     v0, $zero, lbl_80017374
    sw      v0, 0x0040($sp)
    lbu     t4, 0x019E(s2)             # 0000019E
    or      s3, $zero, $zero           # s3 = 00000000
    or      s4, $zero, $zero           # s4 = 00000000
    blez    t4, lbl_80017240
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    lw      t5, 0x0000(s1)             # 00000000
lbl_80016F84:
    lw      t8, 0x0040($sp)
    bnel    s5, t5, lbl_80017228
    lbu     t4, 0x019E(s6)             # 0000019E
    lw      t6, 0x0004(s1)             # 00000004
    lbu     t7, 0x019F(s2)             # 0000019F
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    bgez    t7, lbl_80016FBC
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80016FBC:
    lw      v0, 0x0180(s2)             # 00000180
    sll     t9, s3,  4
    div.s   $f20, $f6, $f10
    beq     v0, $zero, lbl_80017130
    addu    s0, t8, t9
    beq     v0, s5, lbl_80016FF0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80017048
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_800170A4
    lui     $at, 0x3F00                # $at = 3F000000
    beq     $zero, $zero, lbl_80017134
    lh      t7, 0x0008(s1)             # 00000008
lbl_80016FF0:
    mfc1    a2, $f20
    lh      a0, 0x0008(s1)             # 00000008
    jal     func_8001B960
    lh      a1, 0x000E(s1)             # 0000000E
    sh      v0, 0x0000(s0)             # 00000000
    mfc1    a2, $f20
    lh      a1, 0x0010(s1)             # 00000010
    jal     func_8001B960
    lh      a0, 0x000A(s1)             # 0000000A
    sh      v0, 0x0002(s0)             # 00000002
    mfc1    a2, $f20
    lh      a1, 0x0012(s1)             # 00000012
    jal     func_8001B960
    lh      a0, 0x000C(s1)             # 0000000C
    sh      v0, 0x0004(s0)             # 00000004
    lh      t1, 0x000E(s1)             # 0000000E
    sh      t1, 0x0010(s0)             # 00000010
    lh      t2, 0x0010(s1)             # 00000010
    sh      t2, 0x0012(s0)             # 00000012
    lh      t3, 0x0012(s1)             # 00000012
    beq     $zero, $zero, lbl_80017160
    sh      t3, 0x0014(s0)             # 00000014
lbl_80017048:
    lh      t4, 0x0008(s1)             # 00000008
    mfc1    a2, $f20
    sh      t4, 0x0000(s0)             # 00000000
    lh      t5, 0x000A(s1)             # 0000000A
    sh      t5, 0x0002(s0)             # 00000002
    lh      t6, 0x000C(s1)             # 0000000C
    sh      t6, 0x0004(s0)             # 00000004
    lh      a1, 0x0008(s1)             # 00000008
    jal     func_8001B960
    lh      a0, 0x000E(s1)             # 0000000E
    sh      v0, 0x0010(s0)             # 00000010
    mfc1    a2, $f20
    lh      a1, 0x000A(s1)             # 0000000A
    jal     func_8001B960
    lh      a0, 0x0010(s1)             # 00000010
    sh      v0, 0x0012(s0)             # 00000012
    mfc1    a2, $f20
    lh      a1, 0x000C(s1)             # 0000000C
    jal     func_8001B960
    lh      a0, 0x0012(s1)             # 00000012
    beq     $zero, $zero, lbl_80017160
    sh      v0, 0x0014(s0)             # 00000014
    lui     $at, 0x3F00                # $at = 3F000000
lbl_800170A4:
    mtc1    $at, $f18                  # $f18 = 0.50
    lh      a0, 0x0008(s1)             # 00000008
    lh      a1, 0x000E(s1)             # 0000000E
    mul.s   $f20, $f20, $f18
    mfc1    a2, $f20
    jal     func_8001B960
    nop
    sh      v0, 0x0000(s0)             # 00000000
    mfc1    a2, $f20
    lh      a1, 0x0010(s1)             # 00000010
    jal     func_8001B960
    lh      a0, 0x000A(s1)             # 0000000A
    sh      v0, 0x0002(s0)             # 00000002
    mfc1    a2, $f20
    lh      a1, 0x0012(s1)             # 00000012
    jal     func_8001B960
    lh      a0, 0x000C(s1)             # 0000000C
    sh      v0, 0x0004(s0)             # 00000004
    mfc1    a2, $f20
    lh      a1, 0x0008(s1)             # 00000008
    jal     func_8001B960
    lh      a0, 0x000E(s1)             # 0000000E
    sh      v0, 0x0010(s0)             # 00000010
    mfc1    a2, $f20
    lh      a1, 0x000A(s1)             # 0000000A
    jal     func_8001B960
    lh      a0, 0x0010(s1)             # 00000010
    sh      v0, 0x0012(s0)             # 00000012
    mfc1    a2, $f20
    lh      a1, 0x000C(s1)             # 0000000C
    jal     func_8001B960
    lh      a0, 0x0012(s1)             # 00000012
    sh      v0, 0x0014(s0)             # 00000014
    beq     $zero, $zero, lbl_80017160
    add.s   $f20, $f20, $f20
lbl_80017130:
    lh      t7, 0x0008(s1)             # 00000008
lbl_80017134:
    sh      t7, 0x0000(s0)             # 00000000
    lh      t8, 0x000A(s1)             # 0000000A
    sh      t8, 0x0002(s0)             # 00000002
    lh      t9, 0x000C(s1)             # 0000000C
    sh      t9, 0x0004(s0)             # 00000004
    lh      t1, 0x000E(s1)             # 0000000E
    sh      t1, 0x0010(s0)             # 00000010
    lh      t2, 0x0010(s1)             # 00000010
    sh      t2, 0x0012(s0)             # 00000012
    lh      t3, 0x0012(s1)             # 00000012
    sh      t3, 0x0014(s0)             # 00000014
lbl_80017160:
    sh      $zero, 0x0006(s0)          # 00000006
    sh      $zero, 0x0008(s0)          # 00000008
    sh      $zero, 0x000A(s0)          # 0000000A
    mfc1    a2, $f20
    lbu     a1, 0x0196(s2)             # 00000196
    jal     func_8001B9B4
    lbu     a0, 0x018E(s2)             # 0000018E
    sb      v0, 0x000C(s0)             # 0000000C
    mfc1    a2, $f20
    lbu     a1, 0x0197(s2)             # 00000197
    jal     func_8001B9B4
    lbu     a0, 0x018F(s2)             # 0000018F
    sb      v0, 0x000D(s0)             # 0000000D
    mfc1    a2, $f20
    lbu     a1, 0x0198(s2)             # 00000198
    jal     func_8001B9B4
    lbu     a0, 0x0190(s2)             # 00000190
    sb      v0, 0x000E(s0)             # 0000000E
    mfc1    a2, $f20
    lbu     a1, 0x0199(s2)             # 00000199
    jal     func_8001B9B4
    lbu     a0, 0x0191(s2)             # 00000191
    sb      v0, 0x000F(s0)             # 0000000F
    sh      $zero, 0x0016(s0)          # 00000016
    sh      $zero, 0x0018(s0)          # 00000018
    sh      $zero, 0x001A(s0)          # 0000001A
    mfc1    a2, $f20
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s0, s0, 0x0010             # s0 = 00000010
    lbu     a1, 0x019A(s2)             # 0000019A
    jal     func_8001B9B4
    lbu     a0, 0x0192(s2)             # 00000192
    sb      v0, 0x000C(s0)             # 0000001C
    mfc1    a2, $f20
    lbu     a1, 0x019B(s2)             # 0000019B
    jal     func_8001B9B4
    lbu     a0, 0x0193(s2)             # 00000193
    sb      v0, 0x000D(s0)             # 0000001D
    mfc1    a2, $f20
    lbu     a1, 0x019C(s2)             # 0000019C
    jal     func_8001B9B4
    lbu     a0, 0x0194(s2)             # 00000194
    sb      v0, 0x000E(s0)             # 0000001E
    mfc1    a2, $f20
    lbu     a1, 0x019D(s2)             # 0000019D
    jal     func_8001B9B4
    lbu     a0, 0x0195(s2)             # 00000195
    sb      v0, 0x000F(s0)             # 0000001F
    addiu   s3, s3, 0x0001             # s3 = 00000002
    lbu     t4, 0x019E(s6)             # 0000019E
lbl_80017228:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    addiu   s1, s1, 0x0018             # s1 = 00000018
    slt     $at, s4, t4
    bnel    $at, $zero, lbl_80016F84
    lw      t5, 0x0000(s1)             # 00000018
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80017240:
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a2, 0x02D0(s7)             # 000002D0
    lui     t6, 0x0102                 # t6 = 01020000
    ori     t6, t6, 0x0040             # t6 = 01020040
    addiu   t5, a2, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s7)             # 000002D0
    sw      t6, 0x0000(a2)             # 00000000
    lw      t7, 0x0040($sp)
    or      s1, s2, $zero              # s1 = 00000000
    lui     t0, 0x0700                 # t0 = 07000000
    sw      t7, 0x0004(a2)             # 00000004
    lbu     t8, 0x019E(s2)             # 0000019E
    blezl   t8, lbl_80017378
    lw      $ra, 0x003C($sp)
    lw      t9, 0x0000(s1)             # 00000000
lbl_80017280:
    addiu   s1, s1, 0x0018             # s1 = 00000018
    bne     t9, $zero, lbl_800172A8
    nop
    lbu     v0, 0x019E(s6)             # 0000019E
    or      a3, $zero, $zero           # a3 = 00000000
    sll     t1, v0,  2
    subu    t1, t1, v0
    sll     t1, t1,  3
    beq     $zero, $zero, lbl_80017330
    addu    v1, t1, s2
lbl_800172A8:
    bne     a3, $zero, lbl_800172B8
    sll     v0, s3,  1
    beq     $zero, $zero, lbl_80017318
    or      a3, s5, $zero              # a3 = 00000001
lbl_800172B8:
    lw      a2, 0x02D0(s7)             # 000002D0
    addiu   a0, v0, 0xFFFC             # a0 = FFFFFFFC
    addiu   t3, v0, 0xFFFE             # t3 = FFFFFFFE
    andi    t4, t3, 0x00FF             # t4 = 000000FE
    andi    a0, a0, 0x00FF             # a0 = 000000FC
    addiu   a1, v0, 0x0002             # a1 = 00000002
    andi    a1, a1, 0x00FF             # a1 = 00000002
    sll     a0, a0, 16
    sll     t5, t4,  8
    addiu   t2, a2, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s7)             # 000002D0
    or      t6, a0, t5                 # t6 = 000000FC
    sll     t9, a1,  8
    or      t1, a0, t9                 # t1 = 000000FC
    or      t7, t6, a1                 # t7 = 000000FE
    andi    t2, v0, 0x00FF             # t2 = 00000000
    or      t3, t1, t2                 # t3 = 000000FC
    or      t8, t7, t0                 # t8 = 070000FE
    sw      t8, 0x0000(a2)             # 00000000
    sw      t3, 0x0004(a2)             # 00000004
    lbu     t4, 0x01A0(s2)             # 000001A0
    bnel    s5, t4, lbl_8001731C
    lbu     v0, 0x019E(s6)             # 0000019E
    or      a3, $zero, $zero           # a3 = 00000000
lbl_80017318:
    lbu     v0, 0x019E(s6)             # 0000019E
lbl_8001731C:
    addiu   s3, s3, 0x0002             # s3 = 00000002
    sll     t5, v0,  2
    subu    t5, t5, v0
    sll     t5, t5,  3
    addu    v1, t5, s2
lbl_80017330:
    sltu    $at, s1, v1
    bnel    $at, $zero, lbl_80017280
    lw      t9, 0x0000(s1)             # 00000018
    beq     $zero, $zero, lbl_80017378
    lw      $ra, 0x003C($sp)
    lbu     t6, 0x01A1(s2)             # 000001A1
lbl_80017348:
    or      a1, s7, $zero              # a1 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    slti    $at, t6, 0x0002
    beq     $at, $zero, lbl_8001736C
    nop
    jal     func_800169B4
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80017378
    lw      $ra, 0x003C($sp)
lbl_8001736C:
    jal     func_80015F64
    or      a1, s7, $zero              # a1 = 00000000
lbl_80017374:
    lw      $ra, 0x003C($sp)
lbl_80017378:
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    lw      s6, 0x0034($sp)
    lw      s7, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop
    nop
    nop


func_800173B0:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s3, 0x003C($sp)
    sw      s1, 0x0034($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s4, 0x0040($sp)
    sw      s2, 0x0038($sp)
    sw      s0, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    beq     s1, $zero, lbl_800175BC
    or      s2, s1, $zero              # s2 = 00000000
    beql    s3, $zero, lbl_800175C0
    lw      $ra, 0x0044($sp)
    lbu     t6, 0x0000(s3)             # 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    slti    $at, t7, 0x0011
    beq     $at, $zero, lbl_800175BC
    sb      t6, 0x0180(s1)             # 00000180
    lwl     t9, 0x0002(s3)             # 00000002
    lwr     t9, 0x0005(s3)             # 00000005
    addiu   s4, $zero, 0x0018          # s4 = 00000018
    or      s0, s1, $zero              # s0 = 00000000
    swl     t9, 0x0182(s1)             # 00000182
    swr     t9, 0x0185(s1)             # 00000185
    lhu     t9, 0x0006(s3)             # 00000006
    sh      t9, 0x0186(s1)             # 00000186
    lwl     t1, 0x0008(s3)             # 00000008
    lwr     t1, 0x000B(s3)             # 0000000B
    swl     t1, 0x0188(s1)             # 00000188
    swr     t1, 0x018B(s1)             # 0000018B
    lwl     t3, 0x000C(s3)             # 0000000C
    lwr     t3, 0x000F(s3)             # 0000000F
    swl     t3, 0x018C(s1)             # 0000018C
    swr     t3, 0x018F(s1)             # 0000018F
    lwl     t5, 0x0010(s3)             # 00000010
    lwr     t5, 0x0013(s3)             # 00000013
    andi    t3, t6, 0x00FF             # t3 = 00000000
    multu   t3, s4
    swl     t5, 0x0190(s1)             # 00000190
    swr     t5, 0x0193(s1)             # 00000193
    lwl     t7, 0x0014(s3)             # 00000014
    lwr     t7, 0x0017(s3)             # 00000017
    swl     t7, 0x0194(s1)             # 00000194
    swr     t7, 0x0197(s1)             # 00000197
    lwl     t9, 0x0018(s3)             # 00000018
    lwr     t9, 0x001B(s3)             # 0000001B
    mflo    t4
    addu    t5, s1, t4
    swl     t9, 0x0198(s1)             # 00000198
    swr     t9, 0x019B(s1)             # 0000019B
    lwl     t1, 0x001C(s3)             # 0000001C
    lwr     t1, 0x001F(s3)             # 0000001F
    sltu    $at, s1, t5
    swl     t1, 0x019C(s1)             # 0000019C
    swr     t1, 0x019F(s1)             # 0000019F
    lwc1    $f4, 0x0020(s3)            # 00000020
    swc1    $f4, 0x01A0(s1)            # 000001A0
    lwc1    $f6, 0x0024(s3)            # 00000024
    swc1    $f6, 0x01A8(s1)            # 000001A8
    lwc1    $f8, 0x0028(s3)            # 00000028
    swc1    $f8, 0x01AC(s1)            # 000001AC
    lbu     t2, 0x002C(s3)             # 0000002C
    sb      $zero, 0x01B1(s1)          # 000001B1
    beq     $at, $zero, lbl_80017550
    sb      t2, 0x01B0(s1)             # 000001B0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f20                # $f20 = 0.00
    lwc1    $f22, 0x6050($at)          # 80106050
lbl_800174D4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f10, 0x01A8(s1)           # 000001A8
    swc1    $f20, 0x0008(s0)           # 00000008
    swc1    $f20, 0x000C(s0)           # 0000000C
    mul.s   $f2, $f10, $f24
    swc1    $f20, 0x0010(s0)           # 00000010
    mul.s   $f16, $f0, $f2
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0000(s0)           # 00000000
    lwc1    $f4, 0x0000(s0)            # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0004(s0)            # 00000004
    mul.s   $f6, $f0, $f22
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t7, 0x0014(s0)             # 00000014
    mul.s   $f10, $f0, $f22
    addiu   s0, s0, 0x0018             # s0 = 00000018
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    nop
    sh      t9, -0x0002(s0)            # 00000016
    lbu     t0, 0x0180(s2)             # 00000180
    multu   t0, s4
    mflo    t1
    addu    t2, s2, t1
    sltu    $at, s0, t2
    bne     $at, $zero, lbl_800174D4
    nop
lbl_80017550:
    lw      t3, 0x003C(s3)             # 0000003C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t3, $at, lbl_800175B8
    sw      t3, 0x01C4(s1)             # 000001C4
    sb      $zero, 0x01B2(s1)          # 000001B2
    lwl     t6, 0x002E(s3)             # 0000002E
    lwr     t6, 0x0031(s3)             # 00000031
    swl     t6, 0x01B4(s1)             # 000001B4
    swr     t6, 0x01B7(s1)             # 000001B7
    lwl     t5, 0x0032(s3)             # 00000032
    lwr     t5, 0x0035(s3)             # 00000035
    swl     t5, 0x01B8(s1)             # 000001B8
    swr     t5, 0x01BB(s1)             # 000001BB
    lwl     t6, 0x0036(s3)             # 00000036
    lwr     t6, 0x0039(s3)             # 00000039
    swl     t6, 0x01BC(s1)             # 000001BC
    jal     func_8001A880
    swr     t6, 0x01BF(s1)             # 000001BF
    jal     func_8001A880
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, v0, 0x07A8             # a1 = 000007A8
    jal     func_800665B0
    addiu   a2, s1, 0x01B2             # a2 = 000001B2
    beq     $zero, $zero, lbl_800175BC
    sw      v0, 0x01C0(s1)             # 000001C0
lbl_800175B8:
    sw      $zero, 0x01C0(s1)          # 000001C0
lbl_800175BC:
    lw      $ra, 0x0044($sp)
lbl_800175C0:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_800175E8:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    beql    a3, $zero, lbl_80017668
    lw      $ra, 0x0014($sp)
    lw      t6, 0x01C4(a3)             # 000001C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_80017668
    lw      $ra, 0x0014($sp)
    jal     func_8001A880
    sw      a3, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lw      t8, 0x07A8(v0)             # 000007A8
    lw      t7, 0x01C0(a3)             # 000001C0
    bne     t7, t8, lbl_80017640
    nop
    jal     func_8001A880
    sw      a3, 0x0028($sp)
    lw      a3, 0x0028($sp)
    lw      t9, 0x01C0(a3)             # 000001C0
    lw      t0, 0x0008(t9)             # 00000008
    sw      t0, 0x07A8(v0)             # 000007A8
lbl_80017640:
    jal     func_8001A880
    sw      a3, 0x0028($sp)
    jal     func_8001A880
    sw      v0, 0x001C($sp)
    lw      a3, 0x0028($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, v0, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x01C0(a3)             # 000001C0
    lw      $ra, 0x0014($sp)
lbl_80017668:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80017674:
    bne     a0, $zero, lbl_80017684
    or      v0, a0, $zero              # v0 = 00000000
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80017684:
    lbu     t6, 0x0180(a0)             # 00000180
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    or      v1, a0, $zero              # v1 = 00000000
    multu   t6, a1
    mflo    t7
    addu    t8, a0, t7
    sltu    $at, a0, t8
    beql    $at, $zero, lbl_80017784
    lw      t2, 0x01C4(a0)             # 000001C4
    mtc1    $zero, $f2                 # $f2 = 0.00
    nop
    lwc1    $f4, 0x0004(v1)            # 00000004
lbl_800176B4:
    lwc1    $f6, 0x01A0(a0)            # 000001A0
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(v1)            # 00000004
    lwc1    $f10, 0x0004(v1)           # 00000004
    c.lt.s  $f10, $f2
    nop
    bc1fl   lbl_800176DC
    lwc1    $f0, 0x000C(v1)            # 0000000C
    swc1    $f2, 0x0004(v1)            # 00000004
    lwc1    $f0, 0x000C(v1)            # 0000000C
lbl_800176DC:
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80017718
    lwc1    $f4, 0x0008(v1)            # 00000008
    lwc1    $f16, 0x01A0(a0)           # 000001A0
    sub.s   $f18, $f0, $f16
    swc1    $f18, 0x000C(v1)           # 0000000C
    lwc1    $f0, 0x000C(v1)            # 0000000C
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80017718
    lwc1    $f4, 0x0008(v1)            # 00000008
    swc1    $f2, 0x000C(v1)            # 0000000C
    lwc1    $f0, 0x000C(v1)            # 0000000C
    lwc1    $f4, 0x0008(v1)            # 00000008
lbl_80017718:
    lwc1    $f6, 0x0004(v1)            # 00000004
    lwc1    $f10, 0x0010(v1)           # 00000010
    c.eq.s  $f2, $f0
    add.s   $f8, $f4, $f6
    add.s   $f16, $f10, $f0
    swc1    $f8, 0x0008(v1)            # 00000008
    bc1f    lbl_80017760
    swc1    $f16, 0x0010(v1)           # 00000010
    lwc1    $f4, 0x0008(v1)            # 00000008
    lwc1    $f6, 0x0010(v1)            # 00000010
    lwc1    $f18, 0x01AC(a0)           # 000001AC
    sub.s   $f8, $f4, $f6
    c.lt.s  $f18, $f8
    nop
    bc1fl   lbl_80017764
    lbu     t9, 0x0180(v0)             # 00000180
    lwc1    $f10, 0x0000(v1)           # 00000000
    swc1    $f10, 0x000C(v1)           # 0000000C
lbl_80017760:
    lbu     t9, 0x0180(v0)             # 00000180
lbl_80017764:
    addiu   v1, v1, 0x0018             # v1 = 00000018
    multu   t9, a1
    mflo    t0
    addu    t1, v0, t0
    sltu    $at, v1, t1
    bnel    $at, $zero, lbl_800176B4
    lwc1    $f4, 0x0004(v1)            # 0000001C
    lw      t2, 0x01C4(a0)             # 000001C4
lbl_80017784:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    t2, $at, lbl_800177B0
    lbu     t5, 0x01B1(a0)             # 000001B1
    lh      t3, 0x01BE(a0)             # 000001BE
    bgez    t3, lbl_800177A8
    sra     t4, t3,  1
    addiu   $at, t3, 0x0001            # $at = 00000001
    sra     t4, $at,  1
lbl_800177A8:
    sh      t4, 0x01BE(a0)             # 000001BE
    lbu     t5, 0x01B1(a0)             # 000001B1
lbl_800177B0:
    lbu     t7, 0x01B0(a0)             # 000001B0
    addiu   t6, t5, 0x0001             # t6 = 00000001
    andi    t8, t6, 0x00FF             # t8 = 00000001
    slt     $at, t7, t8
    beq     $at, $zero, lbl_800177D0
    sb      t6, 0x01B1(a0)             # 000001B1
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800177D0:
    jr      $ra
    nop


func_800177D8:
    addiu   $sp, $sp, 0xFFF8           # $sp = FFFFFFF8
    sw      s0, 0x0004($sp)
    or      s0, a2, $zero              # s0 = 00000000
    lbu     t6, 0x01B0(a0)             # 000001B0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    bgez    t6, lbl_80017804
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80017804:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    nop
    mul.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    bnel    v0, $zero, lbl_80017870
    lbu     t1, 0x01B1(a0)             # 000001B1
    lbu     t8, 0x0188(a0)             # 00000188
    sb      t8, 0x0000(a1)             # 00000000
    lbu     t9, 0x0189(a0)             # 00000189
    sb      t9, 0x0001(a1)             # 00000001
    lbu     t2, 0x018A(a0)             # 0000018A
    sb      t2, 0x0002(a1)             # 00000002
    lbu     t3, 0x018B(a0)             # 0000018B
    sb      t3, 0x0003(a1)             # 00000003
    lbu     t4, 0x018C(a0)             # 0000018C
    sb      t4, 0x0000(s0)             # 00000000
    lbu     t5, 0x018D(a0)             # 0000018D
    sb      t5, 0x0001(s0)             # 00000001
    lbu     t6, 0x018E(a0)             # 0000018E
    sb      t6, 0x0002(s0)             # 00000002
    lbu     t7, 0x018F(a0)             # 0000018F
    beq     $zero, $zero, lbl_800184EC
    sb      t7, 0x0003(s0)             # 00000003
    lbu     t1, 0x01B1(a0)             # 000001B1
lbl_80017870:
    slt     $at, t1, v0
    beq     $at, $zero, lbl_80017EC0
    or      v1, t1, $zero              # v1 = 00000000
    mtc1    t1, $f4                    # $f4 = 0.00
    mtc1    v0, $f10                   # $f10 = 0.00
    bgez    t1, lbl_8001789C
    cvt.s.w $f8, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f8, $f8, $f6
lbl_8001789C:
    cvt.s.w $f16, $f10
    lbu     v1, 0x0188(a0)             # 00000188
    mtc1    v1, $f18                   # $f18 = 0.00
    div.s   $f0, $f8, $f16
    bgez    v1, lbl_800178C4
    cvt.s.w $f4, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_800178C4:
    lbu     t8, 0x0190(a0)             # 00000190
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    subu    t9, t8, v1
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f16, $f8, $f0
    add.s   $f18, $f4, $f16
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_8001794C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80017944
    nop
    mfc1    t3, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001795C
    or      t3, t3, $at                # t3 = 80000000
lbl_80017944:
    beq     $zero, $zero, lbl_8001795C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_8001794C:
    mfc1    t3, $f6
    nop
    bltz    t3, lbl_80017944
    nop
lbl_8001795C:
    sb      t3, 0x0000(a1)             # 00000000
    lbu     a2, 0x0189(a0)             # 00000189
    ctc1    t2, $f31
    mtc1    a2, $f10                   # $f10 = 0.00
    bgez    a2, lbl_80017984
    cvt.s.w $f8, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f8, $f8, $f4
lbl_80017984:
    lbu     t4, 0x0191(a0)             # 00000191
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    subu    t5, t4, a2
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f0
    add.s   $f10, $f8, $f6
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_80017A0C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f4, $f10, $f4
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80017A04
    nop
    mfc1    t7, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017A1C
    or      t7, t7, $at                # t7 = 80000000
lbl_80017A04:
    beq     $zero, $zero, lbl_80017A1C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80017A0C:
    mfc1    t7, $f4
    nop
    bltz    t7, lbl_80017A04
    nop
lbl_80017A1C:
    sb      t7, 0x0001(a1)             # 00000001
    lbu     a3, 0x018A(a0)             # 0000018A
    ctc1    t6, $f31
    mtc1    a3, $f16                   # $f16 = 0.00
    bgez    a3, lbl_80017A44
    cvt.s.w $f18, $f16
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f18, $f18, $f8
lbl_80017A44:
    lbu     t8, 0x0192(a0)             # 00000192
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    subu    t9, t8, a3
    mtc1    t9, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f4, $f10, $f0
    add.s   $f16, $f18, $f4
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f16
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_80017ACC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f16, $f8
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80017AC4
    nop
    mfc1    t3, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017ADC
    or      t3, t3, $at                # t3 = 80000000
lbl_80017AC4:
    beq     $zero, $zero, lbl_80017ADC
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_80017ACC:
    mfc1    t3, $f8
    nop
    bltz    t3, lbl_80017AC4
    nop
lbl_80017ADC:
    sb      t3, 0x0002(a1)             # 00000002
    lbu     t0, 0x018B(a0)             # 0000018B
    ctc1    t2, $f31
    mtc1    t0, $f6                    # $f6 = 0.00
    bgez    t0, lbl_80017B04
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_80017B04:
    lbu     t4, 0x0193(a0)             # 00000193
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    subu    t5, t4, t0
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f16, $f4
    mul.s   $f8, $f16, $f0
    add.s   $f6, $f10, $f8
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_80017B8C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80017B84
    nop
    mfc1    t7, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017B9C
    or      t7, t7, $at                # t7 = 80000000
lbl_80017B84:
    beq     $zero, $zero, lbl_80017B9C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80017B8C:
    mfc1    t7, $f18
    nop
    bltz    t7, lbl_80017B84
    nop
lbl_80017B9C:
    sb      t7, 0x0003(a1)             # 00000003
    lbu     v0, 0x018C(a0)             # 0000018C
    ctc1    t6, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v0, $f4                    # $f4 = 0.00
    bgez    v0, lbl_80017BC4
    cvt.s.w $f16, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f16, $f16, $f10
lbl_80017BC4:
    lbu     t8, 0x0194(a0)             # 00000194
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t9, t8, v0
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f6, $f8
    mul.s   $f18, $f6, $f0
    add.s   $f4, $f16, $f18
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80017C54
    mfc1    t3, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t3, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80017C48
    nop
    mfc1    t3, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017C60
    or      t3, t3, $at                # t3 = 80000000
lbl_80017C48:
    beq     $zero, $zero, lbl_80017C60
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f10
lbl_80017C54:
    nop
    bltz    t3, lbl_80017C48
    nop
lbl_80017C60:
    sb      t3, 0x0000(s0)             # 00000000
    lbu     v1, 0x018D(a0)             # 0000018D
    ctc1    t2, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v1, $f8                    # $f8 = 0.00
    bgez    v1, lbl_80017C88
    cvt.s.w $f6, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f6, $f6, $f16
lbl_80017C88:
    lbu     t4, 0x0195(a0)             # 00000195
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t5, t4, v1
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f10, $f4, $f0
    add.s   $f8, $f6, $f10
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80017D18
    mfc1    t7, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80017D0C
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017D24
    or      t7, t7, $at                # t7 = 80000000
lbl_80017D0C:
    beq     $zero, $zero, lbl_80017D24
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f16
lbl_80017D18:
    nop
    bltz    t7, lbl_80017D0C
    nop
lbl_80017D24:
    sb      t7, 0x0001(s0)             # 00000001
    lbu     a1, 0x018E(a0)             # 0000018E
    ctc1    t6, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    a1, $f18                   # $f18 = 0.00
    bgez    a1, lbl_80017D4C
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_80017D4C:
    lbu     t8, 0x0196(a0)             # 00000196
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t9, t8, a1
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f8, $f10
    mul.s   $f16, $f8, $f0
    add.s   $f18, $f4, $f16
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80017DDC
    mfc1    t3, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80017DD0
    nop
    mfc1    t3, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017DE8
    or      t3, t3, $at                # t3 = 80000000
lbl_80017DD0:
    beq     $zero, $zero, lbl_80017DE8
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f6
lbl_80017DDC:
    nop
    bltz    t3, lbl_80017DD0
    nop
lbl_80017DE8:
    sb      t3, 0x0002(s0)             # 00000002
    lbu     a2, 0x018F(a0)             # 0000018F
    ctc1    t2, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    a2, $f10                   # $f10 = 0.00
    bgez    a2, lbl_80017E10
    cvt.s.w $f8, $f10
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f8, $f8, $f4
lbl_80017E10:
    lbu     t4, 0x0197(a0)             # 00000197
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t5, t4, a2
    mtc1    t5, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f0
    add.s   $f10, $f8, $f6
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80017EA0
    mfc1    t7, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f4, $f10, $f4
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80017E94
    nop
    mfc1    t7, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017EAC
    or      t7, t7, $at                # t7 = 80000000
lbl_80017E94:
    beq     $zero, $zero, lbl_80017EAC
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f4
lbl_80017EA0:
    nop
    bltz    t7, lbl_80017E94
    nop
lbl_80017EAC:
    ctc1    t6, $f31
    sb      t7, 0x0003(s0)             # 00000003
    nop
    beq     $zero, $zero, lbl_800184F0
    lw      s0, 0x0004($sp)
lbl_80017EC0:
    subu    t8, v1, v0
    mtc1    t8, $f16                   # $f16 = 0.00
    mtc1    v0, $f8                    # $f8 = 0.00
    lbu     a2, 0x0190(a0)             # 00000190
    cvt.s.w $f18, $f16
    mtc1    a2, $f10                   # $f10 = 0.00
    cvt.s.w $f6, $f8
    cvt.s.w $f4, $f10
    bgez    a2, lbl_80017EF8
    div.s   $f0, $f18, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f4, $f4, $f16
lbl_80017EF8:
    lbu     t9, 0x0198(a0)             # 00000198
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    subu    t2, t9, a2
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f18, $f8
    mul.s   $f6, $f18, $f0
    add.s   $f10, $f4, $f6
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_80017F80
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t4, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80017F78
    nop
    mfc1    t4, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80017F90
    or      t4, t4, $at                # t4 = 80000000
lbl_80017F78:
    beq     $zero, $zero, lbl_80017F90
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_80017F80:
    mfc1    t4, $f16
    nop
    bltz    t4, lbl_80017F78
    nop
lbl_80017F90:
    sb      t4, 0x0000(a1)             # 00000000
    lbu     a3, 0x0191(a0)             # 00000191
    ctc1    t3, $f31
    mtc1    a3, $f8                    # $f8 = 0.00
    bgez    a3, lbl_80017FB8
    cvt.s.w $f18, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_80017FB8:
    lbu     t5, 0x0199(a0)             # 00000199
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    subu    t6, t5, a3
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f16, $f10, $f0
    add.s   $f8, $f18, $f16
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_80018040
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f8, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80018038
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80018050
    or      t8, t8, $at                # t8 = 80000000
lbl_80018038:
    beq     $zero, $zero, lbl_80018050
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_80018040:
    mfc1    t8, $f4
    nop
    bltz    t8, lbl_80018038
    nop
lbl_80018050:
    sb      t8, 0x0001(a1)             # 00000001
    lbu     t0, 0x0192(a0)             # 00000192
    ctc1    t7, $f31
    mtc1    t0, $f6                    # $f6 = 0.00
    bgez    t0, lbl_80018078
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_80018078:
    lbu     t9, 0x019A(a0)             # 0000019A
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    subu    t2, t9, t0
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f8, $f16
    mul.s   $f4, $f8, $f0
    add.s   $f6, $f10, $f4
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_80018100
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    t4, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800180F8
    nop
    mfc1    t4, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80018110
    or      t4, t4, $at                # t4 = 80000000
lbl_800180F8:
    beq     $zero, $zero, lbl_80018110
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_80018100:
    mfc1    t4, $f18
    nop
    bltz    t4, lbl_800180F8
    nop
lbl_80018110:
    sb      t4, 0x0002(a1)             # 00000002
    lbu     t1, 0x0193(a0)             # 00000193
    ctc1    t3, $f31
    mtc1    t1, $f16                   # $f16 = 0.00
    bgez    t1, lbl_80018138
    cvt.s.w $f8, $f16
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80018138:
    lbu     t5, 0x019B(a0)             # 0000019B
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    subu    t6, t5, t1
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f18, $f6, $f0
    add.s   $f16, $f8, $f18
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beq     t8, $zero, lbl_800181C0
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f10, $f16, $f10
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_800181B8
    nop
    mfc1    t8, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800181D0
    or      t8, t8, $at                # t8 = 80000000
lbl_800181B8:
    beq     $zero, $zero, lbl_800181D0
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
lbl_800181C0:
    mfc1    t8, $f10
    nop
    bltz    t8, lbl_800181B8
    nop
lbl_800181D0:
    sb      t8, 0x0003(a1)             # 00000003
    lbu     v0, 0x0194(a0)             # 00000194
    ctc1    t7, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v0, $f4                    # $f4 = 0.00
    bgez    v0, lbl_800181F8
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_800181F8:
    lbu     t9, 0x019C(a0)             # 0000019C
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t2, t9, v0
    mtc1    t2, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f16, $f18
    mul.s   $f10, $f16, $f0
    add.s   $f4, $f6, $f10
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80018288
    mfc1    t4, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8001827C
    nop
    mfc1    t4, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80018294
    or      t4, t4, $at                # t4 = 80000000
lbl_8001827C:
    beq     $zero, $zero, lbl_80018294
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f8
lbl_80018288:
    nop
    bltz    t4, lbl_8001827C
    nop
lbl_80018294:
    sb      t4, 0x0000(s0)             # 00000000
    lbu     v1, 0x0195(a0)             # 00000195
    ctc1    t3, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v1, $f18                   # $f18 = 0.00
    bgez    v1, lbl_800182BC
    cvt.s.w $f16, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_800182BC:
    lbu     t5, 0x019D(a0)             # 0000019D
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t6, t5, v1
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    mul.s   $f8, $f4, $f0
    add.s   $f18, $f16, $f8
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8001834C
    mfc1    t8, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80018340
    nop
    mfc1    t8, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80018358
    or      t8, t8, $at                # t8 = 80000000
lbl_80018340:
    beq     $zero, $zero, lbl_80018358
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f6
lbl_8001834C:
    nop
    bltz    t8, lbl_80018340
    nop
lbl_80018358:
    sb      t8, 0x0001(s0)             # 00000001
    lbu     a1, 0x0196(a0)             # 00000196
    ctc1    t7, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    a1, $f10                   # $f10 = 0.00
    bgez    a1, lbl_80018380
    cvt.s.w $f4, $f10
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f4, $f4, $f16
lbl_80018380:
    lbu     t9, 0x019E(a0)             # 0000019E
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t2, t9, a1
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f18, $f8
    mul.s   $f6, $f18, $f0
    add.s   $f10, $f4, $f6
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80018410
    mfc1    t4, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t4, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80018404
    nop
    mfc1    t4, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001841C
    or      t4, t4, $at                # t4 = 80000000
lbl_80018404:
    beq     $zero, $zero, lbl_8001841C
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f16
lbl_80018410:
    nop
    bltz    t4, lbl_80018404
    nop
lbl_8001841C:
    sb      t4, 0x0002(s0)             # 00000002
    lbu     a2, 0x0197(a0)             # 00000197
    ctc1    t3, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    a2, $f8                    # $f8 = 0.00
    bgez    a2, lbl_80018444
    cvt.s.w $f18, $f8
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_80018444:
    lbu     t5, 0x019F(a0)             # 0000019F
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    subu    t6, t5, a2
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f10, $f6
    mul.s   $f16, $f10, $f0
    add.s   $f8, $f18, $f16
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_800184D4
    mfc1    t8, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f4, $f8, $f4
    ctc1    t8, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_800184C8
    nop
    mfc1    t8, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800184E0
    or      t8, t8, $at                # t8 = 80000000
lbl_800184C8:
    beq     $zero, $zero, lbl_800184E0
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f4
lbl_800184D4:
    nop
    bltz    t8, lbl_800184C8
    nop
lbl_800184E0:
    ctc1    t7, $f31
    sb      t8, 0x0003(s0)             # 00000003
    nop
lbl_800184EC:
    lw      s0, 0x0004($sp)
lbl_800184F0:
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp = 00000000


func_800184F8:
# gameplay_keep texture: Blank Circle
    addiu   $sp, $sp, 0xFE50           # $sp = FFFFFE50
    sw      s5, 0x005C($sp)
    sw      s1, 0x004C($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      s6, s5, $zero              # s6 = 00000000
    beq     s5, $zero, lbl_800189D0
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    jal     func_8007DFBC
    lw      a0, 0x02D0(s1)             # 000002D0
    lui     s0, 0xE700                 # s0 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t7, 0xE300                 # t7 = E3000000
    ori     t7, t7, 0x0A01             # t7 = E3000A01
    lui     t8, 0x0010                 # t8 = 00100000
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t1, 0xD700                 # t1 = D7000000
    lui     t4, 0xFD90                 # t4 = FD900000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      s0, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    ori     t1, t1, 0x0002             # t1 = D7000002
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t5, 0x0404                 # t5 = 04040000
    addiu   t5, t5, 0x9450             # t5 = 04039450
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0x0701                 # t8 = 07010000
    ori     t8, t8, 0x4050             # t8 = 07014050
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    lui     t7, 0xF590                 # t7 = F5900000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t0, 0xE600                 # t0 = E6000000
    lui     t2, 0xF300                 # t2 = F3000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0x071F                 # t3 = 071F0000
    ori     t3, t3, 0xF200             # t3 = 071FF200
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t6, 0xF588                 # t6 = F5880000
    ori     t6, t6, 0x0800             # t6 = F5880800
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      s0, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t7, 0x0001                 # t7 = 00010000
    ori     t7, t7, 0x4050             # t7 = 00014050
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t0, 0x0007                 # t0 = 00070000
    ori     t0, t0, 0xC07C             # t0 = 0007C07C
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      t0, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFC30                 # t2 = FC300000
    lui     t3, 0x5FFE                 # t3 = 5FFE0000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    ori     t3, t3, 0xFE38             # t3 = 5FFEFE38
    ori     t2, t2, 0xB3FF             # t2 = FC30B3FF
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t5, 0xE200                 # t5 = E2000000
    lui     t6, 0x0C18                 # t6 = 0C180000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    ori     t6, t6, 0x4B50             # t6 = 0C184B50
    ori     t5, t5, 0x001C             # t5 = E200001C
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xD9F0                 # t8 = D9F00000
    ori     t8, t8, 0xF9FF             # t8 = D9F0F9FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t0, 0xD9FF                 # t0 = D9FF0000
    lui     t1, 0x0020                 # t1 = 00200000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    ori     t1, t1, 0x0005             # t1 = 00200005
    ori     t0, t0, 0xFFFF             # t0 = D9FFFFFF
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    or      a0, s5, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x01A4            # a1 = FFFFFFF4
    jal     func_800177D8
    addiu   a2, $sp, 0x01A0            # a2 = FFFFFFF0
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    lui     s8, 0xDA38                 # s8 = DA380000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lbu     t8, 0x01A5($sp)
    lbu     t5, 0x01A4($sp)
    lbu     t2, 0x01A6($sp)
    lbu     t7, 0x01A7($sp)
    sll     t9, t8, 16
    sll     t6, t5, 24
    or      t0, t6, t9                 # t0 = 00000000
    sll     t3, t2,  8
    or      t4, t0, t3                 # t4 = FA000000
    or      t8, t4, t7                 # t8 = FA000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t5, 0x01A1($sp)
    lbu     t2, 0x01A0($sp)
    lbu     t6, 0x01A2($sp)
    lbu     t3, 0x01A3($sp)
    sll     t4, t5, 16
    sll     t0, t2, 24
    or      t7, t0, t4                 # t7 = FA000000
    sll     t9, t6,  8
    or      t1, t7, t9                 # t1 = FB000000
    or      t5, t1, t3                 # t5 = FB000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    addiu   s7, $zero, 0x0018          # s7 = 00000018
    addiu   s4, $sp, 0x0090            # s4 = FFFFFEE0
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      s0, 0x0000(v1)             # 00000000
    lbu     t4, 0x0180(s5)             # 00000180
    or      s2, s5, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x00D0            # s3 = FFFFFF20
    multu   t4, s7
    addiu   s0, $sp, 0x0110            # s0 = FFFFFF60
    mflo    t8
    addu    t6, s5, t8
    sltu    $at, s5, t6
    beq     $at, $zero, lbl_800189D0
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f30                  # $f30 = 0.50
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    mtc1    $zero, $f28                # $f28 = 0.00
    lwc1    $f20, 0x6054($at)          # 80106054
    lwc1    $f0, 0x0008(s2)            # 00000008
lbl_800187FC:
    lwc1    $f2, 0x0010(s2)            # 00000010
    lui     $at, 0x3C80                # $at = 3C800000
    mtc1    $at, $f16                  # $f16 = 0.02
    add.s   $f4, $f0, $f2
    sub.s   $f14, $f0, $f2
    mul.s   $f6, $f4, $f30
    nop
    mul.s   $f18, $f14, $f16
    trunc.w.s $f8, $f6
    div.s   $f4, $f18, $f20
    mfc1    t9, $f8
    nop
    sll     t2, t9, 16
    sra     t1, t2, 16
    mtc1    t1, $f10                   # $f10 = -664614000000000000000000000000000000.00
    nop
    cvt.s.w $f24, $f10
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    sll     t0, t5, 16
    sra     t4, t0, 16
    mtc1    t4, $f8                    # $f8 = -166153500000000000000000000000000000.00
    nop
    cvt.s.w $f22, $f8
    c.lt.s  $f22, $f26
    nop
    bc1f    lbl_80018874
    nop
    mov.s   $f22, $f26
lbl_80018874:
    lh      t8, 0x0182(s5)             # 00000182
    lh      t6, 0x0184(s5)             # 00000184
    lh      t7, 0x0186(s5)             # 00000186
    mtc1    t8, $f10                   # $f10 = -166153500000000000000000000000000000.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mtc1    t7, $f18                   # $f18 = -166153500000000000000000000000000000.00
    cvt.s.w $f10, $f10
    or      a0, s3, $zero              # a0 = FFFFFF20
    cvt.s.w $f16, $f16
    mfc1    a1, $f10
    cvt.s.w $f18, $f18
    mfc1    a2, $f16
    mfc1    a3, $f18
    jal     func_8008F82C              # guTranslateF
    nop
    or      a0, s0, $zero              # a0 = FFFFFF60
    or      a1, $zero, $zero           # a1 = 00000000
    lh      a2, 0x0014(s2)             # 00000014
    jal     func_8008F50C
    or      a3, $zero, $zero           # a3 = 00000000
    or      a0, s3, $zero              # a0 = FFFFFF20
    or      a1, s0, $zero              # a1 = FFFFFF60
    jal     func_8008EDB8
    or      a2, s4, $zero              # a2 = FFFFFEE0
    or      a0, s0, $zero              # a0 = FFFFFF60
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8008F50C
    lh      a3, 0x0016(s2)             # 00000016
    or      a0, s4, $zero              # a0 = FFFFFEE0
    or      a1, s0, $zero              # a1 = FFFFFF60
    jal     func_8008EDB8
    or      a2, s3, $zero              # a2 = FFFFFF20
    mfc1    a1, $f24
    mfc1    a2, $f28
    mfc1    a3, $f28
    jal     func_8008F82C              # guTranslateF
    or      a0, s0, $zero              # a0 = FFFFFF60
    or      a0, s3, $zero              # a0 = FFFFFF20
    or      a1, s0, $zero              # a1 = FFFFFF60
    jal     func_8008EDB8
    or      a2, s4, $zero              # a2 = FFFFFEE0
    mul.s   $f4, $f22, $f20
    mfc1    a2, $f20
    mfc1    a3, $f20
    or      a0, s0, $zero              # a0 = FFFFFF60
    mfc1    a1, $f4
    jal     func_8008F4A8              # guScaleF
    nop
    or      a0, s4, $zero              # a0 = FFFFFEE0
    or      a1, s0, $zero              # a1 = FFFFFF60
    jal     func_8008EDB8
    or      a2, s3, $zero              # a2 = FFFFFF20
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008FC98
    or      a1, s3, $zero              # a1 = FFFFFF20
    beq     v0, $zero, lbl_800189D0
    lui     t1, 0x0100                 # t1 = 01000000
    lw      v1, 0x02D0(s1)             # 000002D0
    ori     t1, t1, 0x4008             # t1 = 01004008
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000004
    sw      s8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0x800E                 # t3 = 800E0000
    addiu   t3, t3, 0x7AA0             # t3 = 800E7AA0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    ori     t0, t0, 0x0204             # t0 = 06000204
    addiu   t4, $zero, 0x0602          # t4 = 00000602
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lbu     t8, 0x0180(s6)             # 00000180
    addiu   s2, s2, 0x0018             # s2 = 00000018
    multu   t8, s7
    mflo    t6
    addu    t7, s6, t6
    sltu    $at, s2, t7
    bnel    $at, $zero, lbl_800187FC
    lwc1    $f0, 0x0008(s2)            # 00000020
lbl_800189D0:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x0048($sp)
    lw      s1, 0x004C($sp)
    lw      s2, 0x0050($sp)
    lw      s3, 0x0054($sp)
    lw      s4, 0x0058($sp)
    lw      s5, 0x005C($sp)
    lw      s6, 0x0060($sp)
    lw      s7, 0x0064($sp)
    lw      s8, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x01B0           # $sp = 00000000
    nop
    nop


func_80018A20:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s1, 0x0048($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s5, 0x0058($sp)
    sw      s4, 0x0054($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f30, 0x0038($sp)
    sdc1    $f28, 0x0030($sp)
    sdc1    $f26, 0x0028($sp)
    sdc1    $f24, 0x0020($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    beq     s1, $zero, lbl_80018DC0
    or      s5, s1, $zero              # s5 = 00000000
    beql    a1, $zero, lbl_80018DC4
    lw      $ra, 0x005C($sp)
    lw      t6, 0x0494(a1)             # 00000494
    beql    t6, $zero, lbl_80018DC4
    lw      $ra, 0x005C($sp)
    lw      t7, 0x0498(a1)             # 00000498
    beql    t7, $zero, lbl_80018DC4
    lw      $ra, 0x005C($sp)
    lwl     t9, 0x0000(a1)             # 00000000
    lwr     t9, 0x0003(a1)             # 00000003
    swl     t9, 0x0000(s1)             # 00000000
    swr     t9, 0x0003(s1)             # 00000003
    lhu     t9, 0x0004(a1)             # 00000004
    sh      t9, 0x0004(s1)             # 00000004
    lwc1    $f4, 0x048C(a1)            # 0000048C
    swc1    $f4, 0x048C(s1)            # 0000048C
    lwc1    $f6, 0x0490(a1)            # 00000490
    swc1    $f6, 0x0490(s1)            # 00000490
    lw      t0, 0x0494(a1)             # 00000494
    sw      t0, 0x0494(s1)             # 00000494
    lw      t1, 0x0498(a1)             # 00000498
    sw      t1, 0x0498(s1)             # 00000498
    lbu     t2, 0x049C(a1)             # 0000049C
    sb      t2, 0x049C(s1)             # 0000049C
    lbu     t3, 0x049D(a1)             # 0000049D
    sb      t3, 0x049D(s1)             # 0000049D
    lbu     t4, 0x049E(a1)             # 0000049E
    sb      t4, 0x049E(s1)             # 0000049E
    lbu     t5, 0x049F(a1)             # 0000049F
    sb      t5, 0x049F(s1)             # 0000049F
    lbu     t6, 0x04A0(a1)             # 000004A0
    sb      t6, 0x04A0(s1)             # 000004A0
    lbu     t7, 0x04A1(a1)             # 000004A1
    sb      t7, 0x04A1(s1)             # 000004A1
    lbu     t8, 0x04A2(a1)             # 000004A2
    sb      t8, 0x04A2(s1)             # 000004A2
    lbu     t9, 0x04A3(a1)             # 000004A3
    sb      t9, 0x04A3(s1)             # 000004A3
    lbu     t0, 0x04A4(a1)             # 000004A4
    sb      t0, 0x04A4(s1)             # 000004A4
    lbu     t1, 0x04A5(a1)             # 000004A5
    sb      t1, 0x04A5(s1)             # 000004A5
    lbu     t2, 0x04A6(a1)             # 000004A6
    sb      t2, 0x04A6(s1)             # 000004A6
    lbu     t3, 0x04A7(a1)             # 000004A7
    sb      t3, 0x04A7(s1)             # 000004A7
    lbu     t4, 0x04A8(a1)             # 000004A8
    sb      t4, 0x04A8(s1)             # 000004A8
    lbu     t5, 0x04A9(a1)             # 000004A9
    sb      t5, 0x04A9(s1)             # 000004A9
    lbu     t6, 0x04AA(a1)             # 000004AA
    sb      t6, 0x04AA(s1)             # 000004AA
    lbu     t7, 0x04AB(a1)             # 000004AB
    sb      t7, 0x04AB(s1)             # 000004AB
    lbu     t8, 0x04AC(a1)             # 000004AC
    sb      t8, 0x04AC(s1)             # 000004AC
    lbu     t9, 0x04AD(a1)             # 000004AD
    sb      t9, 0x04AD(s1)             # 000004AD
    lbu     t0, 0x04AE(a1)             # 000004AE
    sb      t0, 0x04AE(s1)             # 000004AE
    lbu     t1, 0x04AF(a1)             # 000004AF
    sb      t1, 0x04AF(s1)             # 000004AF
    lbu     t2, 0x04B0(a1)             # 000004B0
    sb      t2, 0x04B0(s1)             # 000004B0
    lbu     t3, 0x04B1(a1)             # 000004B1
    sb      t3, 0x04B1(s1)             # 000004B1
    lbu     t4, 0x04B2(a1)             # 000004B2
    sb      t4, 0x04B2(s1)             # 000004B2
    lbu     t5, 0x04B3(a1)             # 000004B3
    sb      t5, 0x04B3(s1)             # 000004B3
    lbu     t6, 0x04B4(a1)             # 000004B4
    lw      t5, 0x0494(s1)             # 00000494
    sb      t6, 0x04B4(s1)             # 000004B4
    lbu     t7, 0x04B5(a1)             # 000004B5
    lw      t6, 0x0498(s1)             # 00000498
    sb      t7, 0x04B5(s1)             # 000004B5
    lbu     t8, 0x04B6(a1)             # 000004B6
    multu   t5, t6
    sb      t8, 0x04B6(s1)             # 000004B6
    lbu     t9, 0x04B7(a1)             # 000004B7
    sb      t9, 0x04B7(s1)             # 000004B7
    lbu     t0, 0x04B8(a1)             # 000004B8
    sb      t0, 0x04B8(s1)             # 000004B8
    lbu     t1, 0x04B9(a1)             # 000004B9
    mflo    v0
    addiu   v0, v0, 0x0002             # v0 = 00000002
    sb      t1, 0x04B9(s1)             # 000004B9
    lbu     t2, 0x04BA(a1)             # 000004BA
    slti    $at, v0, 0x0021
    sb      t2, 0x04BA(s1)             # 000004BA
    lbu     t3, 0x04BB(a1)             # 000004BB
    sb      t3, 0x04BB(s1)             # 000004BB
    lw      t4, 0x04C0(a1)             # 000004C0
    sw      v0, 0x0008(s1)             # 00000008
    beq     $at, $zero, lbl_80018DC0
    sw      t4, 0x04C0(s1)             # 000004C0
    blez    v0, lbl_80018DBC
    or      s3, $zero, $zero           # s3 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f30, 0x6060($at)          # 80106060
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f26, 0x6064($at)          # 80106064
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f24, 0x6068($at)          # 80106068
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f22, 0x606C($at)          # 8010606C
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f20                  # $f20 = 0.50
    mtc1    $zero, $f28                # $f28 = 0.00
    or      s2, s1, $zero              # s2 = 00000000
    addiu   s0, s1, 0x000C             # s0 = 0000000C
lbl_80018C20:
    lh      t8, 0x0000(s1)             # 00000000
    or      s4, s0, $zero              # s4 = 0000000C
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0018(s2)           # 00000018
    lh      t9, 0x0002(s1)             # 00000002
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x001C(s2)            # 0000001C
    lh      t0, 0x0004(s1)             # 00000004
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0020(s2)            # 00000020
    sub.s   $f10, $f0, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0000(s0)           # 0000000C
    sub.s   $f18, $f0, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0004(s0)           # 00000010
    lwc1    $f12, 0x0000(s0)           # 0000000C
    lwc1    $f14, 0x0004(s0)           # 00000010
    sub.s   $f2, $f0, $f20
    mul.s   $f4, $f12, $f12
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f14, $f14
    swc1    $f2, 0x0008(s0)            # 00000014
    mul.s   $f10, $f2, $f2
    add.s   $f8, $f4, $f6
    add.s   $f0, $f8, $f10
    sqrt.s  $f16, $f0
    abs.s   $f0, $f16
    c.lt.s  $f0, $f30
    nop
    bc1tl   lbl_80018D0C
    swc1    $f28, 0x0008(s0)           # 00000014
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f4, 0x048C(s1)            # 0000048C
    div.s   $f0, $f18, $f16
    mul.s   $f6, $f4, $f0
    nop
    mul.s   $f8, $f12, $f6
    lwc1    $f6, 0x0008(s0)            # 00000014
    swc1    $f8, 0x0000(s0)            # 0000000C
    lwc1    $f10, 0x048C(s1)           # 0000048C
    mul.s   $f18, $f10, $f0
    nop
    mul.s   $f4, $f14, $f18
    swc1    $f4, 0x0004(s0)            # 00000010
    lwc1    $f8, 0x048C(s1)            # 0000048C
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f6, $f10
    beq     $zero, $zero, lbl_80018D18
    swc1    $f18, 0x0008(s0)           # 00000014
    swc1    $f28, 0x0008(s0)           # 00000014
lbl_80018D0C:
    swc1    $f28, 0x0000(s0)           # 0000000C
    lwc1    $f4, 0x048C(s1)            # 0000048C
    swc1    $f4, 0x0004(s0)            # 00000010
lbl_80018D18:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f24
    sub.s   $f6, $f22, $f8
    trunc.w.s $f10, $f6
    mfc1    t2, $f10
    jal     func_800CDCCC              # Rand.Next() float
    sh      t2, 0x0018(s0)             # 00000024
    mul.s   $f18, $f0, $f24
    sub.s   $f4, $f22, $f18
    trunc.w.s $f8, $f4
    mfc1    t4, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t4, 0x001A(s0)             # 00000026
    mul.s   $f6, $f0, $f24
    sub.s   $f10, $f22, $f6
    trunc.w.s $f18, $f10
    mfc1    t6, $f18
    jal     func_800CDCCC              # Rand.Next() float
    sh      t6, 0x001C(s0)             # 00000028
    mul.s   $f4, $f0, $f26
    trunc.w.s $f8, $f4
    mfc1    t8, $f8
    jal     func_800CDCCC              # Rand.Next() float
    sh      t8, 0x001E(s0)             # 0000002A
    mul.s   $f6, $f0, $f26
    trunc.w.s $f10, $f6
    mfc1    t0, $f10
    jal     func_800CDCCC              # Rand.Next() float
    sh      t0, 0x0020(s0)             # 0000002C
    mul.s   $f18, $f0, $f26
    trunc.w.s $f4, $f18
    mfc1    t2, $f4
    nop
    sh      t2, 0x0022(s4)             # 0000002E
    lw      t3, 0x0008(s5)             # 00000008
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   s2, s2, 0x0024             # s2 = 00000024
    slt     $at, s3, t3
    bne     $at, $zero, lbl_80018C20
    addiu   s0, s0, 0x0024             # s0 = 00000030
lbl_80018DBC:
    sw      $zero, 0x04BC(s1)          # 000004BC
lbl_80018DC0:
    lw      $ra, 0x005C($sp)
lbl_80018DC4:
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    ldc1    $f24, 0x0020($sp)
    ldc1    $f26, 0x0028($sp)
    ldc1    $f28, 0x0030($sp)
    ldc1    $f30, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    lw      s4, 0x0054($sp)
    lw      s5, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp = 00000000


func_80018DFC:
# Store A0 to stack
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_80018E08:
    lw      t6, 0x0008(a0)             # 00000008
    or      v0, $zero, $zero           # v0 = 00000000
    or      v1, a0, $zero              # v1 = 00000000
    blezl   t6, lbl_80018EA4
    lw      t7, 0x04BC(a0)             # 000004BC
    lwc1    $f4, 0x0018(v1)            # 00000018
lbl_80018E20:
    lwc1    $f6, 0x000C(v1)            # 0000000C
    lwc1    $f0, 0x0010(v1)            # 00000010
    lwc1    $f10, 0x001C(v1)           # 0000001C
    add.s   $f8, $f4, $f6
    lwc1    $f4, 0x0014(v1)            # 00000014
    lwc1    $f18, 0x0020(v1)           # 00000020
    add.s   $f16, $f10, $f0
    swc1    $f8, 0x0018(v1)            # 00000018
    lh      t7, 0x002A(v1)             # 0000002A
    add.s   $f6, $f18, $f4
    swc1    $f16, 0x001C(v1)           # 0000001C
    lh      t8, 0x0024(v1)             # 00000024
    lh      t0, 0x002C(v1)             # 0000002C
    swc1    $f6, 0x0020(v1)            # 00000020
    lwc1    $f8, 0x0490(a0)            # 00000490
    lh      t1, 0x0026(v1)             # 00000026
    lh      t3, 0x002E(v1)             # 0000002E
    add.s   $f10, $f0, $f8
    lh      t4, 0x0028(v1)             # 00000028
    addu    t9, t7, t8
    addu    t2, t0, t1
    addu    t5, t3, t4
    swc1    $f10, 0x0010(v1)           # 00000010
    sh      t9, 0x002A(v1)             # 0000002A
    sh      t2, 0x002C(v1)             # 0000002C
    sh      t5, 0x002E(v1)             # 0000002E
    lw      t6, 0x0008(a0)             # 00000008
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   v1, v1, 0x0024             # v1 = 00000024
    slt     $at, v0, t6
    bnel    $at, $zero, lbl_80018E20
    lwc1    $f4, 0x0018(v1)            # 0000003C
    lw      t7, 0x04BC(a0)             # 000004BC
lbl_80018EA4:
    lw      t9, 0x04C0(a0)             # 000004C0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    slt     $at, t9, t8
    beq     $at, $zero, lbl_80018EC4
    sw      t8, 0x04BC(a0)             # 000004BC
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80018EC4:
    jr      $ra
    nop


func_80018ECC:
# gameplay_keep texture: Blank Circle
    addiu   $sp, $sp, 0xFE00           # $sp = FFFFFE00
    sw      s8, 0x0058($sp)
    sw      s2, 0x0040($sp)
    or      s2, a1, $zero              # s2 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    jal     func_8001A880
    sw      s8, 0x01F8($sp)
    or      s4, v0, $zero              # s4 = 00000000
    beq     s8, $zero, lbl_8001A0A0
    lui     t7, 0xDA38                 # t7 = DA380000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0xEDB0             # t8 = 800FEDB0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    ori     t7, t7, 0x0003             # t7 = DA380003
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      a0, 0x02D0(s2)             # 000002D0
    jal     func_8007DFBC
    addiu   a1, $zero, 0x0026          # a1 = 00000026
    lui     a3, 0xE700                 # a3 = E7000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    lui     t0, 0xE300                 # t0 = E3000000
    ori     t0, t0, 0x0A01             # t0 = E3000A01
    lui     t1, 0x0010                 # t1 = 00100000
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t4, 0xD700                 # t4 = D7000000
    lui     t7, 0xFD90                 # t7 = FD900000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    ori     t4, t4, 0x0002             # t4 = D7000002
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t8, 0x0404                 # t8 = 04040000
    addiu   t8, t8, 0x9450             # t8 = 04039450
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t1, 0x0701                 # t1 = 07010000
    ori     t1, t1, 0x4050             # t1 = 07014050
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    lui     t0, 0xF590                 # t0 = F5900000
    sw      t0, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t3, 0xE600                 # t3 = E6000000
    lui     t5, 0xF300                 # t5 = F3000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t6, 0x071F                 # t6 = 071F0000
    ori     t6, t6, 0xF200             # t6 = 071FF200
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t9, 0xF588                 # t9 = F5880000
    ori     t9, t9, 0x0800             # t9 = F5880800
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x4050             # t0 = 00014050
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t3, 0x0007                 # t3 = 00070000
    ori     t3, t3, 0xC07C             # t3 = 0007C07C
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    lui     t2, 0xF200                 # t2 = F2000000
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t5, 0xFCFF                 # t5 = FCFF0000
    lui     t6, 0xFFFE                 # t6 = FFFE0000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    ori     t6, t6, 0x7238             # t6 = FFFE7238
    ori     t5, t5, 0xFFFF             # t5 = FCFFFFFF
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t8, 0xE200                 # t8 = E2000000
    lui     t9, 0x0C18                 # t9 = 0C180000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    ori     t9, t9, 0x4B50             # t9 = 0C184B50
    ori     t8, t8, 0x001C             # t8 = E200001C
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t1, 0xD9F0                 # t1 = D9F00000
    ori     t1, t1, 0xF9FF             # t1 = D9F0F9FF
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t3, 0xD9FF                 # t3 = D9FF0000
    lui     t4, 0x0020                 # t4 = 00200000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    ori     t4, t4, 0x0005             # t4 = 00200005
    ori     t3, t3, 0xFFFF             # t3 = D9FFFFFF
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
    lw      t7, 0x0008(s8)             # 00000008
    lw      t6, 0x02C4(s2)             # 000002C4
    addiu   $at, $zero, 0xFFF0         # $at = FFFFFFF0
    sll     t8, t7,  6
    addiu   t9, t8, 0x000F             # t9 = E200002B
    and     t0, t9, $at
    subu    s1, t6, t0
    beq     s1, $zero, lbl_8001A0A0
    sw      s1, 0x02C4(s2)             # 000002C4
    lw      t1, 0x04BC(s8)             # 000004BC
    lw      t2, 0x04C0(s8)             # 000004C0
    lbu     t3, 0x049C(s8)             # 0000049C
    mtc1    t1, $f4                    # $f4 = -8478609000000000.00
    mtc1    t2, $f8                    # $f8 = 0.00
    or      v0, $zero, $zero           # v0 = 00000000
    cvt.s.w $f6, $f4
    mtc1    t3, $f4                    # $f4 = -9007199000000000.00
    cvt.s.w $f10, $f8
    cvt.s.w $f2, $f4
    bgez    t3, lbl_80019174
    div.s   $f0, $f6, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f2, $f2, $f8
lbl_80019174:
    lbu     t4, 0x04AC(s8)             # 000004AC
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_80019194
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80019194:
    sub.s   $f8, $f10, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mul.s   $f6, $f8, $f0
    add.s   $f4, $f6, $f2
    cfc1    t5, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_8001920C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80019204
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001921C
    or      t7, t7, $at                # t7 = 80000000
lbl_80019204:
    beq     $zero, $zero, lbl_8001921C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_8001920C:
    mfc1    t7, $f10
    nop
    bltz    t7, lbl_80019204
    nop
lbl_8001921C:
    sb      t7, 0x01EB($sp)
    lbu     t8, 0x049D(s8)             # 0000049D
    ctc1    t5, $f31
    mtc1    t8, $f8                    # $f8 = -590297800000000000000.00
    bgez    t8, lbl_80019244
    cvt.s.w $f12, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f12, $f12, $f6
lbl_80019244:
    lbu     t9, 0x04AD(s8)             # 000004AD
    mtc1    t9, $f4                    # $f4 = -590298800000000000000.00
    bgez    t9, lbl_80019264
    cvt.s.w $f10, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_80019264:
    sub.s   $f6, $f10, $f12
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f4, $f6, $f0
    add.s   $f8, $f4, $f12
    cfc1    t6, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beq     t0, $zero, lbl_800192DC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_800192D4
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800192EC
    or      t0, t0, $at                # t0 = 80000000
lbl_800192D4:
    beq     $zero, $zero, lbl_800192EC
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
lbl_800192DC:
    mfc1    t0, $f10
    nop
    bltz    t0, lbl_800192D4
    nop
lbl_800192EC:
    sb      t0, 0x01EA($sp)
    lbu     t1, 0x049E(s8)             # 0000049E
    ctc1    t6, $f31
    mtc1    t1, $f6                    # $f6 = -8478609000000000.00
    bgez    t1, lbl_80019314
    cvt.s.w $f14, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f14, $f14, $f4
lbl_80019314:
    lbu     t2, 0x04AE(s8)             # 000004AE
    mtc1    t2, $f8                    # $f8 = 0.00
    bgez    t2, lbl_80019334
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80019334:
    sub.s   $f4, $f10, $f14
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f14
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_800193AC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800193A4
    nop
    mfc1    t4, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800193BC
    or      t4, t4, $at                # t4 = 80000000
lbl_800193A4:
    beq     $zero, $zero, lbl_800193BC
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_800193AC:
    mfc1    t4, $f10
    nop
    bltz    t4, lbl_800193A4
    nop
lbl_800193BC:
    sb      t4, 0x01E9($sp)
    lbu     t5, 0x049F(s8)             # 0000049F
    ctc1    t3, $f31
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_800193E4
    cvt.s.w $f16, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f16, $f16, $f8
lbl_800193E4:
    lbu     t7, 0x04AF(s8)             # 000004AF
    mtc1    t7, $f6                    # $f6 = NaN
    bgez    t7, lbl_80019404
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80019404:
    sub.s   $f8, $f10, $f16
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mul.s   $f6, $f8, $f0
    add.s   $f4, $f6, $f16
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beq     t9, $zero, lbl_8001947C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80019474
    nop
    mfc1    t9, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001948C
    or      t9, t9, $at                # t9 = 80000000
lbl_80019474:
    beq     $zero, $zero, lbl_8001948C
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
lbl_8001947C:
    mfc1    t9, $f10
    nop
    bltz    t9, lbl_80019474
    nop
lbl_8001948C:
    sb      t9, 0x01E8($sp)
    lbu     t6, 0x04A0(s8)             # 000004A0
    ctc1    t8, $f31
    mtc1    t6, $f8                    # $f8 = NaN
    bgez    t6, lbl_800194B4
    cvt.s.w $f18, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f18, $f18, $f6
lbl_800194B4:
    lbu     t0, 0x04B0(s8)             # 000004B0
    mtc1    t0, $f4                    # $f4 = NaN
    bgez    t0, lbl_800194D4
    cvt.s.w $f10, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_800194D4:
    sub.s   $f6, $f10, $f18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mul.s   $f4, $f6, $f0
    add.s   $f8, $f4, $f18
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beq     t2, $zero, lbl_8001954C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80019544
    nop
    mfc1    t2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001955C
    or      t2, t2, $at                # t2 = 80000000
lbl_80019544:
    beq     $zero, $zero, lbl_8001955C
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
lbl_8001954C:
    mfc1    t2, $f10
    nop
    bltz    t2, lbl_80019544
    nop
lbl_8001955C:
    sb      t2, 0x01E7($sp)
    lbu     t3, 0x04A1(s8)             # 000004A1
    ctc1    t1, $f31
    mtc1    t3, $f6                    # $f6 = -9007199000000000.00
    bgez    t3, lbl_80019584
    cvt.s.w $f2, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f2, $f2, $f4
lbl_80019584:
    lbu     t4, 0x04B1(s8)             # 000004B1
    mtc1    t4, $f8                    # $f8 = NaN
    bgez    t4, lbl_800195A4
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_800195A4:
    sub.s   $f4, $f10, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f2
    cfc1    t5, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_8001961C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80019614
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001962C
    or      t7, t7, $at                # t7 = 80000000
lbl_80019614:
    beq     $zero, $zero, lbl_8001962C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_8001961C:
    mfc1    t7, $f10
    nop
    bltz    t7, lbl_80019614
    nop
lbl_8001962C:
    sb      t7, 0x01E6($sp)
    lbu     t8, 0x04A2(s8)             # 000004A2
    ctc1    t5, $f31
    mtc1    t8, $f4                    # $f4 = -590297800000000000000.00
    bgez    t8, lbl_80019654
    cvt.s.w $f12, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f12, $f12, $f8
lbl_80019654:
    lbu     t9, 0x04B2(s8)             # 000004B2
    mtc1    t9, $f6                    # $f6 = NaN
    bgez    t9, lbl_80019674
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80019674:
    sub.s   $f8, $f10, $f12
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f6, $f8, $f0
    add.s   $f4, $f6, $f12
    cfc1    t6, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beq     t0, $zero, lbl_800196EC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_800196E4
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800196FC
    or      t0, t0, $at                # t0 = 80000000
lbl_800196E4:
    beq     $zero, $zero, lbl_800196FC
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
lbl_800196EC:
    mfc1    t0, $f10
    nop
    bltz    t0, lbl_800196E4
    nop
lbl_800196FC:
    sb      t0, 0x01E5($sp)
    lbu     t1, 0x04A3(s8)             # 000004A3
    ctc1    t6, $f31
    mtc1    t1, $f8                    # $f8 = -8478609000000000.00
    bgez    t1, lbl_80019724
    cvt.s.w $f14, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f14, $f14, $f6
lbl_80019724:
    lbu     t2, 0x04B3(s8)             # 000004B3
    mtc1    t2, $f4                    # $f4 = NaN
    bgez    t2, lbl_80019744
    cvt.s.w $f10, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_80019744:
    sub.s   $f6, $f10, $f14
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    mul.s   $f4, $f6, $f0
    add.s   $f8, $f4, $f14
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_800197BC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_800197B4
    nop
    mfc1    t4, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_800197CC
    or      t4, t4, $at                # t4 = 80000000
lbl_800197B4:
    beq     $zero, $zero, lbl_800197CC
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_800197BC:
    mfc1    t4, $f10
    nop
    bltz    t4, lbl_800197B4
    nop
lbl_800197CC:
    sb      t4, 0x01E4($sp)
    lbu     t5, 0x04A4(s8)             # 000004A4
    ctc1    t3, $f31
    mtc1    t5, $f6                    # $f6 = 0.00
    bgez    t5, lbl_800197F4
    cvt.s.w $f16, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f16, $f16, $f4
lbl_800197F4:
    lbu     t7, 0x04B4(s8)             # 000004B4
    mtc1    t7, $f8                    # $f8 = NaN
    bgez    t7, lbl_80019814
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80019814:
    sub.s   $f4, $f10, $f16
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f16
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beq     t9, $zero, lbl_8001988C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80019884
    nop
    mfc1    t9, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001989C
    or      t9, t9, $at                # t9 = 80000000
lbl_80019884:
    beq     $zero, $zero, lbl_8001989C
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
lbl_8001988C:
    mfc1    t9, $f10
    nop
    bltz    t9, lbl_80019884
    nop
lbl_8001989C:
    sb      t9, 0x01E3($sp)
    lbu     t6, 0x04A5(s8)             # 000004A5
    ctc1    t8, $f31
    mtc1    t6, $f4                    # $f4 = NaN
    bgez    t6, lbl_800198C4
    cvt.s.w $f18, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f18, $f18, $f8
lbl_800198C4:
    lbu     t0, 0x04B5(s8)             # 000004B5
    mtc1    t0, $f6                    # $f6 = NaN
    bgez    t0, lbl_800198E4
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_800198E4:
    sub.s   $f8, $f10, $f18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mul.s   $f6, $f8, $f0
    add.s   $f4, $f6, $f18
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beq     t2, $zero, lbl_8001995C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80019954
    nop
    mfc1    t2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001996C
    or      t2, t2, $at                # t2 = 80000000
lbl_80019954:
    beq     $zero, $zero, lbl_8001996C
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
lbl_8001995C:
    mfc1    t2, $f10
    nop
    bltz    t2, lbl_80019954
    nop
lbl_8001996C:
    sb      t2, 0x01E2($sp)
    lbu     t3, 0x04A6(s8)             # 000004A6
    ctc1    t1, $f31
    mtc1    t3, $f8                    # $f8 = -9007199000000000.00
    bgez    t3, lbl_80019994
    cvt.s.w $f2, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f2, $f2, $f6
lbl_80019994:
    lbu     t4, 0x04B6(s8)             # 000004B6
    mtc1    t4, $f4                    # $f4 = NaN
    bgez    t4, lbl_800199B4
    cvt.s.w $f10, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_800199B4:
    sub.s   $f6, $f10, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    mul.s   $f4, $f6, $f0
    add.s   $f8, $f4, $f2
    cfc1    t5, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beq     t7, $zero, lbl_80019A2C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80019A24
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019A3C
    or      t7, t7, $at                # t7 = 80000000
lbl_80019A24:
    beq     $zero, $zero, lbl_80019A3C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
lbl_80019A2C:
    mfc1    t7, $f10
    nop
    bltz    t7, lbl_80019A24
    nop
lbl_80019A3C:
    sb      t7, 0x01E1($sp)
    lbu     t8, 0x04A7(s8)             # 000004A7
    ctc1    t5, $f31
    mtc1    t8, $f6                    # $f6 = -590297800000000000000.00
    bgez    t8, lbl_80019A64
    cvt.s.w $f12, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f12, $f12, $f4
lbl_80019A64:
    lbu     t9, 0x04B7(s8)             # 000004B7
    mtc1    t9, $f8                    # $f8 = NaN
    bgez    t9, lbl_80019A84
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80019A84:
    sub.s   $f4, $f10, $f12
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f12
    cfc1    t6, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beq     t0, $zero, lbl_80019AFC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80019AF4
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019B0C
    or      t0, t0, $at                # t0 = 80000000
lbl_80019AF4:
    beq     $zero, $zero, lbl_80019B0C
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
lbl_80019AFC:
    mfc1    t0, $f10
    nop
    bltz    t0, lbl_80019AF4
    nop
lbl_80019B0C:
    sb      t0, 0x01E0($sp)
    lbu     t1, 0x04A8(s8)             # 000004A8
    ctc1    t6, $f31
    mtc1    t1, $f4                    # $f4 = -8478609000000000.00
    bgez    t1, lbl_80019B34
    cvt.s.w $f14, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f14, $f14, $f8
lbl_80019B34:
    lbu     t2, 0x04B8(s8)             # 000004B8
    mtc1    t2, $f6                    # $f6 = NaN
    bgez    t2, lbl_80019B54
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80019B54:
    sub.s   $f8, $f10, $f14
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    mul.s   $f6, $f8, $f0
    add.s   $f4, $f6, $f14
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_80019BCC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t4, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80019BC4
    nop
    mfc1    t4, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019BDC
    or      t4, t4, $at                # t4 = 80000000
lbl_80019BC4:
    beq     $zero, $zero, lbl_80019BDC
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_80019BCC:
    mfc1    t4, $f10
    nop
    bltz    t4, lbl_80019BC4
    nop
lbl_80019BDC:
    sb      t4, 0x01DF($sp)
    lbu     t5, 0x04A9(s8)             # 000004A9
    ctc1    t3, $f31
    mtc1    t5, $f8                    # $f8 = 0.00
    bgez    t5, lbl_80019C04
    cvt.s.w $f16, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f16, $f16, $f6
lbl_80019C04:
    lbu     t7, 0x04B9(s8)             # 000004B9
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = NaN
    bgez    t7, lbl_80019C24
    cvt.s.w $f10, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_80019C24:
    sub.s   $f6, $f10, $f16
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f6, $f0
    add.s   $f8, $f4, $f16
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_80019CA4
    mfc1    t9, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_80019C98
    nop
    mfc1    t9, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019CB0
    or      t9, t9, $at                # t9 = 80000000
lbl_80019C98:
    beq     $zero, $zero, lbl_80019CB0
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f10
lbl_80019CA4:
    nop
    bltz    t9, lbl_80019C98
    nop
lbl_80019CB0:
    sb      t9, 0x01DE($sp)
    lbu     t6, 0x04AA(s8)             # 000004AA
    ctc1    t8, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f6                    # $f6 = NaN
    bgez    t6, lbl_80019CD8
    cvt.s.w $f18, $f6
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_80019CD8:
    lbu     t0, 0x04BA(s8)             # 000004BA
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f8                    # $f8 = NaN
    bgez    t0, lbl_80019CF8
    cvt.s.w $f10, $f8
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80019CF8:
    sub.s   $f4, $f10, $f18
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f8, $f4, $f0
    add.s   $f6, $f8, $f18
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80019D78
    mfc1    t2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f10, $f6, $f10
    ctc1    t2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80019D6C
    nop
    mfc1    t2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019D84
    or      t2, t2, $at                # t2 = 80000000
lbl_80019D6C:
    beq     $zero, $zero, lbl_80019D84
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f10
lbl_80019D78:
    nop
    bltz    t2, lbl_80019D6C
    nop
lbl_80019D84:
    sb      t2, 0x01DD($sp)
    lbu     t3, 0x04AB(s8)             # 000004AB
    ctc1    t1, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f4                    # $f4 = -9007199000000000.00
    sll     t6, v0,  4
    bgez    t3, lbl_80019DB0
    cvt.s.w $f2, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f2, $f2, $f8
lbl_80019DB0:
    lbu     t4, 0x04BB(s8)             # 000004BB
    lui     $at, 0x4F80                # $at = 4F800000
    addu    s0, s1, t6
    mtc1    t4, $f6                    # $f6 = NaN
    or      s3, s8, $zero              # s3 = 00000000
    bgez    t4, lbl_80019DD8
    cvt.s.w $f10, $f6
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_80019DD8:
    sub.s   $f8, $f10, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   s6, $zero, 0x0020          # s6 = 00000020
    mul.s   $f6, $f8, $f0
    addiu   s5, $zero, 0x0400          # s5 = 00000400
    add.s   $f4, $f6, $f2
    cfc1    t5, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80019E60
    mfc1    t7, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t7, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80019E54
    nop
    mfc1    t7, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80019E6C
    or      t7, t7, $at                # t7 = 80000000
lbl_80019E54:
    beq     $zero, $zero, lbl_80019E6C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f10
lbl_80019E60:
    nop
    bltz    t7, lbl_80019E54
    nop
lbl_80019E6C:
    sb      t7, 0x01DC($sp)
    lw      t8, 0x0008(s8)             # 00000008
    ctc1    t5, $f31
    or      s7, $zero, $zero           # s7 = 00000000
    blez    t8, lbl_8001A08C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addu    t9, s4, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x3C80                # $at = 3C800000
    mtc1    $at, $f24                  # $f24 = 0.02
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f22                  # $f22 = 1.50
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f20                  # $f20 = 2.50
    sw      t9, 0x006C($sp)
    addiu   s4, $zero, 0xFFE0          # s4 = FFFFFFE0
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF10
lbl_80019EB8:
    lw      a1, 0x0018(s3)             # 00000018
    lw      a2, 0x001C(s3)             # 0000001C
    jal     func_8008F82C              # guTranslateF
    lw      a3, 0x0020(s3)             # 00000020
    jal     func_800CDCCC              # Rand.Next() float
    nop
    mul.s   $f8, $f0, $f20
    mfc1    a3, $f26
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFED0
    add.s   $f6, $f8, $f22
    mul.s   $f2, $f6, $f24
    mfc1    a1, $f2
    mfc1    a2, $f2
    jal     func_8008F4A8              # guScaleF
    nop
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF10
    lw      a1, 0x006C($sp)
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0090            # a2 = FFFFFE90
    addiu   a0, $sp, 0x0090            # a0 = FFFFFE90
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFED0
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0150            # a2 = FFFFFF50
    sh      s4, 0x0000(s0)             # 00000000
    sh      s4, 0x0002(s0)             # 00000002
    sh      $zero, 0x0004(s0)          # 00000004
    lbu     t0, 0x01EB($sp)
    addiu   s0, s0, 0x0040             # s0 = 00000040
    or      a0, s2, $zero              # a0 = 00000000
    sb      t0, -0x0034(s0)            # 0000000C
    lbu     t1, 0x01EA($sp)
    addiu   a1, $sp, 0x0150            # a1 = FFFFFF50
    sb      t1, -0x0033(s0)            # 0000000D
    lbu     t2, 0x01E9($sp)
    sb      t2, -0x0032(s0)            # 0000000E
    lbu     t3, 0x01E8($sp)
    sh      $zero, -0x0038(s0)         # 00000008
    sh      s5, -0x0036(s0)            # 0000000A
    sh      $zero, -0x003A(s0)         # 00000006
    sh      s6, -0x0030(s0)            # 00000010
    sh      s6, -0x002E(s0)            # 00000012
    sh      $zero, -0x002C(s0)         # 00000014
    sb      t3, -0x0031(s0)            # 0000000F
    lbu     t4, 0x01E7($sp)
    sb      t4, -0x0024(s0)            # 0000001C
    lbu     t5, 0x01E6($sp)
    sb      t5, -0x0023(s0)            # 0000001D
    lbu     t7, 0x01E5($sp)
    sb      t7, -0x0022(s0)            # 0000001E
    lbu     t8, 0x01E4($sp)
    sh      s5, -0x0028(s0)            # 00000018
    sh      $zero, -0x0026(s0)         # 0000001A
    sh      $zero, -0x002A(s0)         # 00000016
    sh      s4, -0x0020(s0)            # 00000020
    sh      s6, -0x001E(s0)            # 00000022
    sh      $zero, -0x001C(s0)         # 00000024
    sb      t8, -0x0021(s0)            # 0000001F
    lbu     t9, 0x01E3($sp)
    sb      t9, -0x0014(s0)            # 0000002C
    lbu     t6, 0x01E2($sp)
    sb      t6, -0x0013(s0)            # 0000002D
    lbu     t0, 0x01E1($sp)
    sb      t0, -0x0012(s0)            # 0000002E
    lbu     t1, 0x01E0($sp)
    sh      $zero, -0x0018(s0)         # 00000028
    sh      $zero, -0x0016(s0)         # 0000002A
    sh      $zero, -0x001A(s0)         # 00000026
    sh      s6, -0x0010(s0)            # 00000030
    sh      s4, -0x000E(s0)            # 00000032
    sh      $zero, -0x000C(s0)         # 00000034
    sb      t1, -0x0011(s0)            # 0000002F
    lbu     t2, 0x01DF($sp)
    sb      t2, -0x0004(s0)            # 0000003C
    lbu     t3, 0x01DE($sp)
    sb      t3, -0x0003(s0)            # 0000003D
    lbu     t4, 0x01DD($sp)
    sb      t4, -0x0002(s0)            # 0000003E
    lbu     t5, 0x01DC($sp)
    sh      s5, -0x0008(s0)            # 00000038
    sh      s5, -0x0006(s0)            # 0000003A
    sh      $zero, -0x000A(s0)         # 00000036
    jal     func_8008FC98
    sb      t5, -0x0001(s0)            # 0000003F
    beq     v0, $zero, lbl_8001A0A0
    lui     t6, 0x0100                 # t6 = 01000000
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      v0, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s2)             # 000002D0
    sll     t0, s7,  6
    addu    t1, t0, s1
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    ori     t6, t6, 0x4008             # t6 = 01004008
    sw      t6, 0x0000(v1)             # 00000000
    sw      t1, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t3, 0x0604                 # t3 = 06040000
    lui     t4, 0x0004                 # t4 = 00040000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    ori     t4, t4, 0x0602             # t4 = 00040602
    ori     t3, t3, 0x0006             # t3 = 06040006
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    lw      t5, 0x01F8($sp)
    addiu   s7, s7, 0x0001             # s7 = 00000001
    addiu   s3, s3, 0x0024             # s3 = 00000024
    lw      t7, 0x0008(t5)             # 00000008
    slt     $at, s7, t7
    bnel    $at, $zero, lbl_80019EB8
    addiu   a0, $sp, 0x0110            # a0 = FFFFFF10
    lui     a3, 0xE700                 # a3 = E7000000
lbl_8001A08C:
    lw      v1, 0x02D0(s2)             # 000002D0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      a3, 0x0000(v1)             # 00000000
lbl_8001A0A0:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0200           # $sp = 00000000


func_8001A0E0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    ori     t7, $zero, 0x8000          # t7 = 00008000
    div     $zero, t7, a3
    mflo    t8
    lw      t6, 0x0028($sp)
    nop
    multu   t8, a2
    lw      t0, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(t0)             # 000002C0
    bne     a3, $zero, lbl_8001A130
    nop
    break   # 0x01C00
lbl_8001A130:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_8001A148
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8001A148
    nop
    break   # 0x01800
lbl_8001A148:
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a1, 0x002C($sp)
    sw      t0, 0x0018($sp)
    jal     func_80063684              # coss?
    sw      v0, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v0, 0x0020($sp)
    lw      a1, 0x002C($sp)
    c.le.s  $f4, $f0
    or      v1, v0, $zero              # v1 = 00000000
    lw      t0, 0x0018($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    bc1f    lbl_8001A190
    addiu   v0, v0, 0x0008             # v0 = 00000008
    beq     $zero, $zero, lbl_8001A194
    mov.s   $f2, $f0
lbl_8001A190:
    neg.s   $f2, $f0
lbl_8001A194:
    sw      t9, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    bne     a1, $zero, lbl_8001A1C4
    lui     $at, 0x8010                # $at = 80100000
    or      v1, v0, $zero              # v1 = 00000008
    lui     t1, 0xF800                 # t1 = F8000000
    lui     t2, 0xFF00                 # t2 = FF000000
    sw      t2, 0x0004(v1)             # 0000000C
    sw      t1, 0x0000(v1)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    beq     $zero, $zero, lbl_8001A204
    or      v1, v0, $zero              # v1 = 00000010
lbl_8001A1C4:
    or      v1, v0, $zero              # v1 = 00000010
    lui     t3, 0xF800                 # t3 = F8000000
    sw      t3, 0x0000(v1)             # 00000010
    lbu     t8, 0x0001(a1)             # 00000001
    lbu     t5, 0x0000(a1)             # 00000000
    lbu     t2, 0x0002(a1)             # 00000002
    sll     t9, t8, 16
    lbu     t8, 0x0003(a1)             # 00000003
    sll     t6, t5, 24
    or      t1, t6, t9                 # t1 = E7000000
    sll     t4, t2,  8
    or      t5, t1, t4                 # t5 = E7000000
    or      t6, t5, t8                 # t6 = E7000000
    sw      t6, 0x0004(v1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      v1, v0, $zero              # v1 = 00000018
lbl_8001A204:
    lui     t9, 0xDB08                 # t9 = DB080000
    sw      t9, 0x0000(v1)             # 00000018
    lwc1    $f6, 0x6070($at)           # 80106070
    lui     t5, 0x0001                 # t5 = 00010000
    ori     t5, t5, 0xF400             # t5 = 0001F400
    mul.s   $f8, $f2, $f6
    addiu   v0, v0, 0x0008             # v0 = 00000020
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sll     t1, t3, 16
    sra     t4, t1, 16
    addiu   t7, t4, 0x05DC             # t7 = 000005DC
    div     $zero, t5, t7
    mflo    a0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sll     t8, a0, 16
    or      t6, t8, a0                 # t6 = 00000000
    sw      t6, 0x0004(v1)             # 0000001C
    bne     t7, $zero, lbl_8001A25C
    nop
    break   # 0x01C00
lbl_8001A25C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_8001A274
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_8001A274
    nop
    break   # 0x01800
lbl_8001A274:
    sw      v0, 0x02C0(t0)             # 000002C0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001A288:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    div     $zero, t7, a3
    mflo    t8
    lw      t6, 0x0028($sp)
    nop
    multu   t8, a2
    lw      t0, 0x0000(t6)             # 00000000
    bne     a3, $zero, lbl_8001A2D4
    nop
    break   # 0x01C00
lbl_8001A2D4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_8001A2EC
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8001A2EC
    nop
    break   # 0x01800
lbl_8001A2EC:
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a1, 0x002C($sp)
    jal     func_80063684              # coss?
    sw      t0, 0x001C($sp)
    lw      t0, 0x001C($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      a1, 0x002C($sp)
    lw      v0, 0x02C0(t0)             # 000002C0
    or      v1, v0, $zero              # v1 = 00000000
    lui     t9, 0xE700                 # t9 = E7000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a0, v0, $zero              # a0 = 00000008
    lui     t1, 0xF800                 # t1 = F8000000
    sw      t1, 0x0000(a0)             # 00000008
    lbu     t6, 0x0001(a1)             # 00000001
    lbu     t3, 0x0000(a1)             # 00000000
    lbu     t9, 0x0002(a1)             # 00000002
    sll     t7, t6, 16
    lbu     t6, 0x0003(a1)             # 00000003
    sll     t4, t3, 24
    or      t8, t4, t7                 # t8 = 00000000
    sll     t2, t9,  8
    or      t3, t8, t2                 # t3 = 00000000
    or      t4, t3, t6                 # t4 = 00000000
    sw      t4, 0x0004(a0)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    c.le.s  $f2, $f0
    or      a2, v0, $zero              # a2 = 00000010
    lui     t7, 0xDB08                 # t7 = DB080000
    sw      t7, 0x0000(a2)             # 00000010
    bc1f    lbl_8001A384
    addiu   v0, v0, 0x0008             # v0 = 00000018
    beq     $zero, $zero, lbl_8001A388
    mov.s   $f12, $f0
lbl_8001A384:
    neg.s   $f12, $f0
lbl_8001A388:
    c.le.s  $f2, $f0
    lui     $at, 0x452F                # $at = 452F0000
    bc1fl   lbl_8001A3A4
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_8001A3A4
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_8001A3A4:
    mtc1    $at, $f0                   # $f0 = 2800.00
    lui     v1, 0x0001                 # v1 = 00010000
    ori     v1, v1, 0xF400             # v1 = 0001F400
    mul.s   $f4, $f2, $f0
    trunc.w.s $f6, $f4
    mul.s   $f8, $f0, $f12
    mfc1    t1, $f6
    nop
    sll     t8, t1, 16
    sra     t2, t8, 16
    addiu   t5, t2, 0x06A4             # t5 = 000006A4
    div     $zero, v1, t5
    trunc.w.s $f10, $f8
    mflo    t3
    andi    t6, t3, 0xFFFF             # t6 = 00000000
    bne     t5, $zero, lbl_8001A3EC
    nop
    break   # 0x01C00
lbl_8001A3EC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t5, $at, lbl_8001A404
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8001A404
    nop
    break   # 0x01800
lbl_8001A404:
    mfc1    t7, $f10
    nop
    sll     t9, t7, 16
    sra     t1, t9, 16
    addiu   t8, t1, 0x06A4             # t8 = F80006A4
    div     $zero, v1, t8
    mflo    t2
    andi    t5, t2, 0xFFFF             # t5 = 00000000
    sll     t3, t5, 16
    or      t4, t6, t3                 # t4 = 00000000
    sw      t4, 0x0004(a2)             # 00000014
    bne     t8, $zero, lbl_8001A43C
    nop
    break   # 0x01C00
lbl_8001A43C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8001A454
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8001A454
    nop
    break   # 0x01800
lbl_8001A454:
    sw      v0, 0x02C0(t0)             # 000002C0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001A468:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lw      a2, 0x0000(a0)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      a1, 0x02C0(a2)             # 000002C0
    jal     func_8009A574
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sw      v0, 0x02C0(a2)             # 000002C0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8001A4AC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    ori     t7, $zero, 0x8000          # t7 = 00008000
    div     $zero, t7, a3
    mflo    t8
    lw      t6, 0x0028($sp)
    nop
    multu   t8, a2
    lw      t0, 0x0000(t6)             # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    bne     a3, $zero, lbl_8001A4FC
    nop
    break   # 0x01C00
lbl_8001A4FC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_8001A514
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8001A514
    nop
    break   # 0x01800
lbl_8001A514:
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a1, 0x002C($sp)
    sw      t0, 0x0018($sp)
    jal     func_80063684              # coss?
    sw      v0, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lw      v0, 0x0020($sp)
    lw      a1, 0x002C($sp)
    c.le.s  $f4, $f0
    or      v1, v0, $zero              # v1 = 00000000
    lw      t0, 0x0018($sp)
    lui     t9, 0xE700                 # t9 = E7000000
    bc1f    lbl_8001A55C
    addiu   v0, v0, 0x0008             # v0 = 00000008
    beq     $zero, $zero, lbl_8001A560
    mov.s   $f2, $f0
lbl_8001A55C:
    neg.s   $f2, $f0
lbl_8001A560:
    sw      t9, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    bne     a1, $zero, lbl_8001A590
    lui     $at, 0x8010                # $at = 80100000
    or      v1, v0, $zero              # v1 = 00000008
    lui     t1, 0xF800                 # t1 = F8000000
    lui     t2, 0xFF00                 # t2 = FF000000
    sw      t2, 0x0004(v1)             # 0000000C
    sw      t1, 0x0000(v1)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    beq     $zero, $zero, lbl_8001A5D0
    or      v1, v0, $zero              # v1 = 00000010
lbl_8001A590:
    or      v1, v0, $zero              # v1 = 00000010
    lui     t3, 0xF800                 # t3 = F8000000
    sw      t3, 0x0000(v1)             # 00000010
    lbu     t8, 0x0001(a1)             # 00000001
    lbu     t5, 0x0000(a1)             # 00000000
    lbu     t2, 0x0002(a1)             # 00000002
    sll     t9, t8, 16
    lbu     t8, 0x0003(a1)             # 00000003
    sll     t6, t5, 24
    or      t1, t6, t9                 # t1 = E7000000
    sll     t4, t2,  8
    or      t5, t1, t4                 # t5 = E7000000
    or      t6, t5, t8                 # t6 = E7000000
    sw      t6, 0x0004(v1)             # 00000014
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      v1, v0, $zero              # v1 = 00000018
lbl_8001A5D0:
    lui     t9, 0xDB08                 # t9 = DB080000
    sw      t9, 0x0000(v1)             # 00000018
    lwc1    $f6, 0x6074($at)           # 80106074
    lui     t5, 0x0001                 # t5 = 00010000
    ori     t5, t5, 0xF400             # t5 = 0001F400
    mul.s   $f8, $f2, $f6
    addiu   v0, v0, 0x0008             # v0 = 00000020
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sll     t1, t3, 16
    sra     t4, t1, 16
    addiu   t7, t4, 0x05DC             # t7 = 000005DC
    div     $zero, t5, t7
    mflo    a0
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sll     t8, a0, 16
    or      t6, t8, a0                 # t6 = 00000000
    sw      t6, 0x0004(v1)             # 0000001C
    bne     t7, $zero, lbl_8001A628
    nop
    break   # 0x01C00
lbl_8001A628:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_8001A640
    lui     $at, 0x8000                # $at = 80000000
    bne     t5, $at, lbl_8001A640
    nop
    break   # 0x01800
lbl_8001A640:
    sw      v0, 0x02D0(t0)             # 000002D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001A654:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    div     $zero, t7, a3
    mflo    t8
    lw      t6, 0x0028($sp)
    nop
    multu   t8, a2
    lw      t0, 0x0000(t6)             # 00000000
    lw      v0, 0x02D0(t0)             # 000002D0
    bne     a3, $zero, lbl_8001A6A4
    nop
    break   # 0x01C00
lbl_8001A6A4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_8001A6BC
    lui     $at, 0x8000                # $at = 80000000
    bne     t7, $at, lbl_8001A6BC
    nop
    break   # 0x01800
lbl_8001A6BC:
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      a1, 0x002C($sp)
    sw      t0, 0x001C($sp)
    jal     func_80063684              # coss?
    sw      v0, 0x0020($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      v0, 0x0020($sp)
    lw      a1, 0x002C($sp)
    lw      t0, 0x001C($sp)
    or      v1, v0, $zero              # v1 = 00000000
    lui     t9, 0xE700                 # t9 = E7000000
    sw      t9, 0x0000(v1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a0, v0, $zero              # a0 = 00000008
    lui     t1, 0xF800                 # t1 = F8000000
    sw      t1, 0x0000(a0)             # 00000008
    lbu     t6, 0x0001(a1)             # 00000001
    lbu     t3, 0x0000(a1)             # 00000000
    lbu     t9, 0x0002(a1)             # 00000002
    sll     t7, t6, 16
    lbu     t6, 0x0003(a1)             # 00000003
    sll     t4, t3, 24
    or      t8, t4, t7                 # t8 = 00000000
    sll     t2, t9,  8
    or      t3, t8, t2                 # t3 = 00000000
    or      t4, t3, t6                 # t4 = 00000000
    sw      t4, 0x0004(a0)             # 0000000C
    addiu   v0, v0, 0x0008             # v0 = 00000010
    c.le.s  $f2, $f0
    or      a2, v0, $zero              # a2 = 00000010
    lui     t7, 0xDB08                 # t7 = DB080000
    sw      t7, 0x0000(a2)             # 00000010
    bc1f    lbl_8001A758
    addiu   v0, v0, 0x0008             # v0 = 00000018
    beq     $zero, $zero, lbl_8001A75C
    mov.s   $f12, $f0
lbl_8001A758:
    neg.s   $f12, $f0
lbl_8001A75C:
    c.le.s  $f2, $f0
    lui     $at, 0x452F                # $at = 452F0000
    bc1fl   lbl_8001A778
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_8001A778
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_8001A778:
    mtc1    $at, $f0                   # $f0 = 2800.00
    lui     v1, 0x0001                 # v1 = 00010000
    ori     v1, v1, 0xF400             # v1 = 0001F400
    mul.s   $f4, $f2, $f0
    trunc.w.s $f6, $f4
    mul.s   $f8, $f0, $f12
    mfc1    t1, $f6
    nop
    sll     t8, t1, 16
    sra     t2, t8, 16
    addiu   t5, t2, 0x06A4             # t5 = 000006A4
    div     $zero, v1, t5
    trunc.w.s $f10, $f8
    mflo    t3
    andi    t6, t3, 0xFFFF             # t6 = 00000000
    bne     t5, $zero, lbl_8001A7C0
    nop
    break   # 0x01C00
lbl_8001A7C0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t5, $at, lbl_8001A7D8
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8001A7D8
    nop
    break   # 0x01800
lbl_8001A7D8:
    mfc1    t7, $f10
    nop
    sll     t9, t7, 16
    sra     t1, t9, 16
    addiu   t8, t1, 0x06A4             # t8 = F80006A4
    div     $zero, v1, t8
    mflo    t2
    andi    t5, t2, 0xFFFF             # t5 = 00000000
    sll     t3, t5, 16
    or      t4, t6, t3                 # t4 = 00000000
    sw      t4, 0x0004(a2)             # 00000014
    bne     t8, $zero, lbl_8001A810
    nop
    break   # 0x01C00
lbl_8001A810:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8001A828
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8001A828
    nop
    break   # 0x01800
lbl_8001A828:
    sw      v0, 0x02D0(t0)             # 000002D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001A83C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    lw      a2, 0x0000(a0)             # 00000000
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a2)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      a1, 0x02D0(a2)             # 000002D0
    jal     func_8009A574
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sw      v0, 0x02D0(a2)             # 000002D0
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8001A880:
    lui     v0, 0x8011                 # v0 = 80110000
    lw      v0, 0x4DE0(v0)             # 80114DE0
    jr      $ra
    nop


func_8001A890:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bnel    a0, $at, lbl_8001A8A8
    slti    $at, a0, 0x0003
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001A8A4:
    slti    $at, a0, 0x0003
lbl_8001A8A8:
    beq     $at, $zero, lbl_8001A8F4
    sll     t6, a0,  2
    addu    t6, t6, a0
    sll     t6, t6,  2
    subu    t6, t6, a0
    sll     t6, t6,  3
    addu    t6, t6, a0
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   t7, t7, 0x4DE0             # t7 = 80114DE0
    sll     t6, t6,  3
    addu    v1, t6, t7
    lbu     t8, 0x0004(v1)             # 00000004
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_8001A8EC
    nop
    jr      $ra
    addiu   v0, v1, 0x0008             # v0 = 00000008
lbl_8001A8EC:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001A8F4:
    addiu   a0, a0, 0xFFFD             # a0 = FFFFFFFD
    slti    $at, a0, 0x0019
    beq     $at, $zero, lbl_8001A940
    sll     t9, a0,  3
    subu    t9, t9, a0
    sll     t9, t9,  2
    subu    t9, t9, a0
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0x4DE0             # t0 = 80114DE0
    sll     t9, t9,  4
    addu    v1, t9, t0
    lbu     t1, 0x0E5C(v1)             # 00000E5C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t1, $at, lbl_8001A938
    nop
    jr      $ra
    addiu   v0, v1, 0x0E60             # v0 = 00000E60
lbl_8001A938:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001A940:
    addiu   a0, a0, 0xFFE7             # a0 = FFFFFFE4
    slti    $at, a0, 0x0003
    beq     $at, $zero, lbl_8001A998
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t2, a0,  3
    subu    t2, t2, a0
    sll     t2, t2,  2
    addu    t2, t2, a0
    sll     t2, t2,  2
    subu    t2, t2, a0
    lui     t3, 0x8011                 # t3 = 80110000
    addiu   t3, t3, 0x4DE0             # t3 = 80114DE0
    sll     t2, t2,  2
    addu    v1, t2, t3
    lbu     t4, 0x388C(v1)             # 0000388C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_8001A990
    nop
    jr      $ra
    addiu   v0, v1, 0x3890             # v0 = 00003890
lbl_8001A990:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001A998:
    jr      $ra
    nop


func_8001A9A0:
    sb      $zero, 0x0000(a0)          # 00000000
    sb      $zero, 0x0001(a0)          # 00000001
    sb      $zero, 0x0002(a0)          # 00000002
    jr      $ra
    nop


func_8001A9B4:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s1, 0x8011                 # s1 = 80110000
    addiu   s1, s1, 0x5C3C             # s1 = 80115C3C
    addiu   s0, s0, 0x4DE4             # s0 = 80114DE4
lbl_8001A9D8:
    jal     func_8001A9A0
    or      a0, s0, $zero              # a0 = 80114DE4
    addiu   s0, s0, 0x04C8             # s0 = 801152AC
    sltu    $at, s0, s1
    bne     $at, $zero, lbl_8001A9D8
    nop
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0x866C             # s1 = 8011866C
    addiu   s0, s0, 0x5C3C             # s0 = 80115C3C
lbl_8001AA00:
    jal     func_8001A9A0
    or      a0, s0, $zero              # a0 = 80115C3C
    addiu   s0, s0, 0x01B0             # s0 = 80115DEC
    sltu    $at, s0, s1
    bne     $at, $zero, lbl_8001AA00
    nop
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s1, 0x8011                 # s1 = 80110000
    addiu   s1, s1, 0x614C             # s1 = 8011614C
    addiu   s0, s0, 0x5C3C             # s0 = 80115C3C
lbl_8001AA28:
    jal     func_8001A9A0
    or      a0, s0, $zero              # a0 = 80115C3C
    addiu   s0, s0, 0x01B0             # s0 = 80115DEC
    bne     s0, s1, lbl_8001AA28
    nop
    lw      t6, 0x0020($sp)
    lui     $at, 0x8011                # $at = 80110000
    lw      $ra, 0x001C($sp)
    sw      t6, 0x4DE0($at)            # 80114DE0
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_8001AA5C:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a3, 0x0034($sp)
    lw      t7, 0x002C($sp)
    sw      $zero, 0x001C($sp)
    addiu   t6, $zero, 0x001F          # t6 = 0000001F
    sw      t6, 0x0000(t7)             # 00000000
    sw      $zero, 0x0018($sp)
    jal     func_8009DB54
    sw      a2, 0x0030($sp)
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lw      a2, 0x0030($sp)
    lw      a3, 0x001C($sp)
    lw      t0, 0x0018($sp)
    beq     v0, v1, lbl_8001ABCC
    lw      t1, 0x002C($sp)
    beq     a2, $zero, lbl_8001AAC8
    or      a1, $zero, $zero           # a1 = 00000000
    beq     a2, v1, lbl_8001AB0C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a2, $at, lbl_8001AB0C
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    beq     a2, a0, lbl_8001AB50
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_8001AB84
    nop
lbl_8001AAC8:
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x4DE0             # v1 = 80114DE0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0003          # a0 = 00000003
lbl_8001AAD8:
    lbu     t8, 0x0004(v1)             # 80114DE4
    bnel    t8, $zero, lbl_8001AAFC
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      v0, 0x0000(t1)             # 00000000
    addiu   a3, v1, 0x0008             # a3 = 80114DE8
    beq     $zero, $zero, lbl_8001AB84
    addiu   t0, v1, 0x0004             # t0 = 80114DE4
    addiu   v0, v0, 0x0001             # v0 = 00000002
lbl_8001AAFC:
    bne     v0, a0, lbl_8001AAD8
    addiu   v1, v1, 0x04C8             # v1 = 801152A8
    beq     $zero, $zero, lbl_8001AB84
    nop
lbl_8001AB0C:
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x4DE0             # v1 = 80114DE0
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a0, $zero, 0x0019          # a0 = 00000019
lbl_8001AB1C:
    lbu     t9, 0x0E5C(v1)             # 80115C3C
    bne     t9, $zero, lbl_8001AB3C
    addiu   t2, v0, 0x0003             # t2 = 00000003
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t2, 0x0000(t1)             # 00000000
    addiu   a3, v1, 0x0E60             # a3 = 80115C40
    beq     $zero, $zero, lbl_8001AB84
    addiu   t0, v1, 0x0E5C             # t0 = 80115C3C
lbl_8001AB3C:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    bne     v0, a0, lbl_8001AB1C
    addiu   v1, v1, 0x01B0             # v1 = 80114F90
    beq     $zero, $zero, lbl_8001AB84
    nop
lbl_8001AB50:
    lui     v1, 0x8011                 # v1 = 80110000
    addiu   v1, v1, 0x4DE0             # v1 = 80114DE0
lbl_8001AB58:
    lbu     t3, 0x388C(v1)             # 8011866C
    bne     t3, $zero, lbl_8001AB78
    addiu   t4, v0, 0x001C             # t4 = 0000001D
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t4, 0x0000(t1)             # 00000000
    addiu   a3, v1, 0x3890             # a3 = 80118670
    beq     $zero, $zero, lbl_8001AB84
    addiu   t0, v1, 0x388C             # t0 = 8011866C
lbl_8001AB78:
    addiu   v0, v0, 0x0001             # v0 = 00000002
    bne     v0, a0, lbl_8001AB58
    addiu   v1, v1, 0x01CC             # v1 = 80114FAC
lbl_8001AB84:
    beq     a1, $zero, lbl_8001ABCC
    sll     t5, a2,  2
    addu    t5, t5, a2
    sll     t5, t5,  2
    lui     t9, 0x800E                 # t9 = 800E0000
    addu    t9, t9, t5
    lw      t9, 0x7AF4(t9)             # 800E7AF4
    or      a0, a3, $zero              # a0 = 80118670
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    sw      t0, 0x0018($sp)
    lw      t0, 0x0018($sp)
    lbu     t6, 0x0037($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t6, 0x0002(t0)             # 00000002
    lbu     t7, 0x003B($sp)
    sb      t8, 0x0000(t0)             # 00000000
    sb      t7, 0x0001(t0)             # 00000001
lbl_8001ABCC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001ABDC:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s3, 0x800E                 # s3 = 800E0000
    lui     s2, 0x8011                 # s2 = 80110000
    addiu   s2, s2, 0x5C38             # s2 = 80115C38
    addiu   s3, s3, 0x7AF0             # s3 = 800E7AF0
    addiu   s0, s0, 0x4DE0             # s0 = 80114DE0
    lbu     t6, 0x0004(s0)             # 80114DE4
lbl_8001AC14:
    beql    t6, $zero, lbl_8001AC34
    addiu   s0, s0, 0x04C8             # s0 = 801152A8
    lw      t9, 0x0010(s3)             # 800E7B00
    addiu   a0, s0, 0x0008             # a0 = 801152B0
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x04C8             # s0 = 80115770
lbl_8001AC34:
    sltu    $at, s0, s2
    bnel    $at, $zero, lbl_8001AC14
    lbu     t6, 0x0004(s0)             # 80115774
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s2, 0x8011                 # s2 = 80110000
    addiu   s2, s2, 0x7810             # s2 = 80117810
    addiu   s0, s0, 0x4DE0             # s0 = 80114DE0
    lbu     t7, 0x0E5C(s0)             # 80115C3C
lbl_8001AC54:
    beql    t7, $zero, lbl_8001AC74
    addiu   s0, s0, 0x01B0             # s0 = 80114F90
    lw      t9, 0x0024(s3)             # 800E7B14
    addiu   a0, s0, 0x0E60             # a0 = 80115DF0
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x01B0             # s0 = 80115140
lbl_8001AC74:
    sltu    $at, s0, s2
    bnel    $at, $zero, lbl_8001AC54
    lbu     t7, 0x0E5C(s0)             # 80115F9C
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s2, 0x8011                 # s2 = 80110000
    addiu   s2, s2, 0x5344             # s2 = 80115344
    addiu   s0, s0, 0x4DE0             # s0 = 80114DE0
    lbu     t8, 0x388C(s0)             # 8011866C
lbl_8001AC94:
    beql    t8, $zero, lbl_8001ACB4
    addiu   s0, s0, 0x01CC             # s0 = 80114FAC
    lw      t9, 0x004C(s3)             # 800E7B3C
    addiu   a0, s0, 0x3890             # a0 = 8011883C
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x01CC             # s0 = 80115178
lbl_8001ACB4:
    bnel    s0, s2, lbl_8001AC94
    lbu     t8, 0x388C(s0)             # 80118A04
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001ACD8:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lui     s1, 0x8011                 # s1 = 80110000
    lui     s3, 0x800E                 # s3 = 800E0000
    addiu   s3, s3, 0x7AF0             # s3 = 800E7AF0
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $zero, 0x0001          # s4 = 00000001
lbl_8001AD14:
    lbu     t6, 0x0004(s1)             # 80114DE4
    beql    t6, $zero, lbl_8001AD44
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      t9, 0x000C(s3)             # 800E7AFC
    addiu   a0, s1, 0x0008             # a0 = 80114DE8
    jalr    $ra, t9
    nop
    bne     v0, s4, lbl_8001AD40
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8001AE04
    or      a1, s0, $zero              # a1 = 00000001
lbl_8001AD40:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8001AD44:
    slti    $at, s0, 0x0003
    bne     $at, $zero, lbl_8001AD14
    addiu   s1, s1, 0x04C8             # s1 = 801152A8
    lui     s1, 0x8011                 # s1 = 80110000
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8001AD5C:
    lbu     t7, 0x0E5C(s1)             # 80115C3C
    beql    t7, $zero, lbl_8001AD8C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      t9, 0x0020(s3)             # 800E7B10
    addiu   a0, s1, 0x0E60             # a0 = 80115C40
    jalr    $ra, t9
    nop
    bne     v0, s4, lbl_8001AD88
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8001AE04
    addiu   a1, s0, 0x0003             # a1 = 00000004
lbl_8001AD88:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8001AD8C:
    slti    $at, s0, 0x0019
    bne     $at, $zero, lbl_8001AD5C
    addiu   s1, s1, 0x01B0             # s1 = 80114F90
    lui     s1, 0x8011                 # s1 = 80110000
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, $zero, 0x0003          # s5 = 00000003
lbl_8001ADA8:
    lbu     t8, 0x388C(s1)             # 8011866C
    beql    t8, $zero, lbl_8001ADD8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      t9, 0x0048(s3)             # 800E7B38
    addiu   a0, s1, 0x3890             # a0 = 80118670
    jalr    $ra, t9
    nop
    bne     v0, s4, lbl_8001ADD4
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8001AE04
    addiu   a1, s0, 0x001C             # a1 = 0000001D
lbl_8001ADD4:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8001ADD8:
    bne     s0, s5, lbl_8001ADA8
    addiu   s1, s1, 0x01CC             # s1 = 80114FAC
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_8001AE04:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    beq     a1, $at, lbl_8001AF00
    slti    $at, a1, 0x0003
    beq     $at, $zero, lbl_8001AE68
    sll     t6, a1,  2
    addu    t6, t6, a1
    sll     t6, t6,  2
    subu    t6, t6, a1
    sll     t6, t6,  3
    addu    t6, t6, a1
    lui     t7, 0x8011                 # t7 = 80110000
    addiu   t7, t7, 0x4DE0             # t7 = 80114DE0
    sll     t6, t6,  3
    addu    v0, t6, t7
    sb      $zero, 0x0004(v0)          # 00000004
    lui     t9, 0x800E                 # t9 = 800E0000
    lw      t9, 0x7AF8(t9)             # 800E7AF8
    addiu   a0, v0, 0x0008             # a0 = 00000008
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_8001AF04
    lw      $ra, 0x0014($sp)
lbl_8001AE68:
    addiu   a1, a1, 0xFFFD             # a1 = FFFFFFFD
    slti    $at, a1, 0x0019
    beq     $at, $zero, lbl_8001AEB4
    sll     t8, a1,  3
    subu    t8, t8, a1
    sll     t8, t8,  2
    subu    t8, t8, a1
    lui     t0, 0x8011                 # t0 = 80110000
    addiu   t0, t0, 0x4DE0             # t0 = 80114DE0
    sll     t8, t8,  4
    addu    v0, t8, t0
    sb      $zero, 0x0E5C(v0)          # 00000E5C
    lui     t9, 0x800E                 # t9 = 800E0000
    lw      t9, 0x7B0C(t9)             # 800E7B0C
    addiu   a0, v0, 0x0E60             # a0 = 00000E60
    jalr    $ra, t9
    nop
    beq     $zero, $zero, lbl_8001AF04
    lw      $ra, 0x0014($sp)
lbl_8001AEB4:
    addiu   a1, a1, 0xFFE7             # a1 = FFFFFFE7
    slti    $at, a1, 0x0003
    beq     $at, $zero, lbl_8001AF00
    sll     t1, a1,  3
    subu    t1, t1, a1
    sll     t1, t1,  2
    addu    t1, t1, a1
    sll     t1, t1,  2
    subu    t1, t1, a1
    lui     t2, 0x8011                 # t2 = 80110000
    addiu   t2, t2, 0x4DE0             # t2 = 80114DE0
    sll     t1, t1,  2
    addu    v0, t1, t2
    sb      $zero, 0x388C(v0)          # 0000388C
    lui     t9, 0x800E                 # t9 = 800E0000
    lw      t9, 0x7B34(t9)             # 800E7B34
    addiu   a0, v0, 0x3890             # a0 = 00003890
    jalr    $ra, t9
    nop
lbl_8001AF00:
    lw      $ra, 0x0014($sp)
lbl_8001AF04:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001AF10:
# Deallocates ?
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lui     s1, 0x8011                 # s1 = 80110000
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s3, 0x8011                 # s3 = 80110000
    lui     s2, 0x800E                 # s2 = 800E0000
    addiu   s2, s2, 0x7AF0             # s2 = 800E7AF0
    addiu   s3, s3, 0x5C40             # s3 = 80115C40
    addiu   s0, s0, 0x4DE8             # s0 = 80114DE8
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
lbl_8001AF4C:
    lw      t9, 0x0008(s2)             # 800E7AF8
    sb      $zero, 0x0004(s1)          # 80114DE4
    or      a0, s0, $zero              # a0 = 80114DE8
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x04C8             # s0 = 801152B0
    sltu    $at, s0, s3
    bne     $at, $zero, lbl_8001AF4C
    addiu   s1, s1, 0x04C8             # s1 = 801152A8
    lui     s1, 0x8011                 # s1 = 80110000
    lui     s0, 0x8011                 # s0 = 80110000
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0x8670             # s3 = 80118670
    addiu   s0, s0, 0x5C40             # s0 = 80115C40
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
lbl_8001AF88:
    lw      t9, 0x001C(s2)             # 800E7B0C
    sb      $zero, 0x0E5C(s1)          # 80115C3C
    or      a0, s0, $zero              # a0 = 80115C40
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x01B0             # s0 = 80115DF0
    sltu    $at, s0, s3
    bne     $at, $zero, lbl_8001AF88
    addiu   s1, s1, 0x01B0             # s1 = 80114F90
    lui     s1, 0x8011                 # s1 = 80110000
    lui     s0, 0x8012                 # s0 = 80120000
    lui     s3, 0x8012                 # s3 = 80120000
    addiu   s3, s3, 0x8BD4             # s3 = 80118BD4
    addiu   s0, s0, 0x8670             # s0 = 80118670
    addiu   s1, s1, 0x4DE0             # s1 = 80114DE0
lbl_8001AFC4:
    lw      t9, 0x0044(s2)             # 800E7B34
    sb      $zero, 0x388C(s1)          # 8011866C
    or      a0, s0, $zero              # a0 = 80118670
    jalr    $ra, t9
    nop
    addiu   s0, s0, 0x01CC             # s0 = 8011883C
    bne     s0, s3, lbl_8001AFC4
    addiu   s1, s1, 0x01CC             # s1 = 80114FAC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001B000:
# Allocate Particles (Main Particle Table)
# A0 = Global Context
# A1 = Number of Particles to Allocate
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x0020($sp)
    addiu   s2, $zero, 0x0060          # s2 = 00000060
    sw      $ra, 0x0024($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      t6, 0x002C($sp)
    addiu   a0, a2, 0x0074             # a0 = 00000074
    multu   t6, s2
    mflo    a1
    jal     func_800A01B8
    nop
    lw      t7, 0x002C($sp)
    lui     s1, 0x800E                 # s1 = 800E0000
    addiu   s1, s1, 0x7B40             # s1 = 800E7B40
    multu   t7, s2
    sw      v0, 0x0000(s1)             # 800E7B40
    sw      $zero, 0x0004(s1)          # 800E7B44
    or      s0, v0, $zero              # s0 = 00000000
    sw      t7, 0x0008(s1)             # 800E7B48
    mflo    t9
    addu    t0, t9, v0
    sltu    $at, v0, t0
    beq     $at, $zero, lbl_8001B098
    nop
lbl_8001B06C:
    jal     func_8001B204
    or      a0, s0, $zero              # a0 = 00000000
    lw      t1, 0x0008(s1)             # 800E7B48
    lw      t3, 0x0000(s1)             # 800E7B40
    addiu   s0, s0, 0x0060             # s0 = 00000060
    multu   t1, s2
    mflo    t2
    addu    t4, t2, t3
    sltu    $at, s0, t4
    bne     $at, $zero, lbl_8001B06C
    nop
lbl_8001B098:
    lui     $at, 0x800E                # $at = 800E0000
    lui     v0, 0x800E                 # v0 = 800E0000
    addiu   v0, v0, 0x7C5C             # v0 = 800E7C5C
    sw      $zero, 0x7C50($at)         # 800E7C50
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   a0, $zero, 0x0025          # a0 = 00000025
lbl_8001B0B0:
    addiu   v1, v1, 0x0004             # v1 = 00000005
    sw      $zero, 0x002C(v0)          # 800E7C88
    sw      $zero, 0x0048(v0)          # 800E7CA4
    sw      $zero, 0x0064(v0)          # 800E7CC0
    addiu   v0, v0, 0x0070             # v0 = 800E7CCC
    bne     v1, a0, lbl_8001B0B0
    sw      $zero, -0x0060(v0)         # 800E7C6C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001B0E4:
# Deallocate Particles (Main Particle Table)
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s1, 0x001C($sp)
    lui     s1, 0x800E                 # s1 = 800E0000
    sw      s2, 0x0020($sp)
    addiu   s2, $zero, 0x0060          # s2 = 00000060
    addiu   s1, s1, 0x7B40             # s1 = 800E7B40
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0028($sp)
    multu   $zero, s2
    sw      $zero, 0x0000(s1)          # 800E7B40
    sw      $zero, 0x0004(s1)          # 800E7B44
    sw      $zero, 0x0008(s1)          # 800E7B48
    or      s0, $zero, $zero           # s0 = 00000000
    mflo    t7
    sltu    $at, $zero, t7
    beq     $at, $zero, lbl_8001B158
    nop
lbl_8001B12C:
    jal     func_8001B1A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0008(s1)             # 800E7B48
    lw      t1, 0x0000(s1)             # 800E7B40
    addiu   s0, s0, 0x0060             # s0 = 00000060
    multu   t9, s2
    mflo    t0
    addu    t2, t0, t1
    sltu    $at, s0, t2
    bne     $at, $zero, lbl_8001B12C
    nop
lbl_8001B158:
    lui     s0, 0x800E                 # s0 = 800E0000
    addiu   s0, s0, 0x7C40             # s0 = 800E7C40
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s2, $zero, 0x0025          # s2 = 00000025
lbl_8001B168:
    lw      a0, 0x0010(s0)             # 800E7C50
    beql    a0, $zero, lbl_8001B180
    addiu   s1, s1, 0x0001             # s1 = 00000001
    jal     func_80066C90
    nop
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_8001B180:
    sw      $zero, 0x0010(s0)          # 800E7C50
    bne     s1, s2, lbl_8001B168
    addiu   s0, s0, 0x001C             # s0 = 800E7C5C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001B1A4:
# Kill Particle
# A0 = Particle Instance Ptr
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lhu     v0, 0x005A(a1)             # 0000005A
    or      a0, a1, $zero              # a0 = 00000000
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_8001B1D8
    andi    t7, v0, 0x0004             # t7 = 00000000
    jal     func_800C9568
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lhu     v0, 0x005A(a1)             # 0000005A
    andi    t7, v0, 0x0004             # t7 = 00000000
lbl_8001B1D8:
    beq     t7, $zero, lbl_8001B1EC
    addiu   a0, a1, 0x002C             # a0 = 0000002C
    jal     func_800C9568
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
lbl_8001B1EC:
    jal     func_8001B204
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001B204:
# Zero Particle
# A0 = Particle Instance Ptr
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0025          # t6 = 00000025
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    sb      t6, 0x005F(a0)             # 0000005F
    swc1    $f0, 0x0020(a0)            # 00000020
    swc1    $f0, 0x001C(a0)            # 0000001C
    swc1    $f0, 0x0018(a0)            # 00000018
    swc1    $f0, 0x0014(a0)            # 00000014
    swc1    $f0, 0x0010(a0)            # 00000010
    swc1    $f0, 0x000C(a0)            # 0000000C
    swc1    $f0, 0x0034(a0)            # 00000034
    swc1    $f0, 0x0030(a0)            # 00000030
    swc1    $f0, 0x002C(a0)            # 0000002C
    swc1    $f0, 0x0008(a0)            # 00000008
    swc1    $f0, 0x0004(a0)            # 00000004
    swc1    $f0, 0x0000(a0)            # 00000000
    sh      t7, 0x005C(a0)             # 0000005C
    sh      $zero, 0x005A(a0)          # 0000005A
    sb      t8, 0x005E(a0)             # 0000005E
    sw      $zero, 0x0028(a0)          # 00000028
    sw      $zero, 0x0024(a0)          # 00000024
    sw      $zero, 0x0038(a0)          # 00000038
    sw      $zero, 0x003C(a0)          # 0000003C
    sh      $zero, 0x0040(a0)          # 00000040
    addiu   v1, a0, 0x0002             # v1 = 00000002
    addiu   a0, $zero, 0x000D          # a0 = 0000000D
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8001B274:
    addiu   v0, v0, 0x0004             # v0 = 00000005
    sh      $zero, 0x0042(v1)          # 00000044
    sh      $zero, 0x0044(v1)          # 00000046
    sh      $zero, 0x0046(v1)          # 00000048
    addiu   v1, v1, 0x0008             # v1 = 0000000A
    bne     v0, a0, lbl_8001B274
    sh      $zero, 0x0038(v1)          # 00000042
    jr      $ra
    nop


func_8001B298:
# Try Get Particle Free Slot
    addiu   $sp, $sp, 0xFFF8           # $sp = FFFFFFF8
    sw      s0, 0x0004($sp)
    lui     a2, 0x800E                 # a2 = 800E0000
    addiu   a2, a2, 0x7B40             # a2 = 800E7B40
    or      s0, a0, $zero              # s0 = 00000000
    sw      a1, 0x000C($sp)
    lw      v0, 0x0004(a2)             # 800E7B44
    lw      v1, 0x0008(a2)             # 800E7B48
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    slt     $at, v0, v1
    bne     $at, $zero, lbl_8001B2D4
    nop
    sw      $zero, 0x0004(a2)          # 800E7B44
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001B2D4:
    lui     a2, 0x800E                 # a2 = 800E0000
    lw      a2, 0x7B40(a2)             # 800E7B40
    sll     t6, v0,  2
    subu    t6, t6, v0
    sll     t6, t6,  5
    or      a0, v0, $zero              # a0 = 00000000
    addu    a3, a2, t6
lbl_8001B2F0:
    lh      t7, 0x005C(a3)             # 0000005C
    bnel    t0, t7, lbl_8001B308
    addiu   a0, a0, 0x0001             # a0 = 00000001
    beq     $zero, $zero, lbl_8001B330
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a0, a0, 0x0001             # a0 = 00000002
lbl_8001B308:
    slt     $at, a0, v1
    bne     $at, $zero, lbl_8001B318
    nop
    or      a0, $zero, $zero           # a0 = 00000000
lbl_8001B318:
    beq     a0, v0, lbl_8001B330
    sll     t8, a0,  2
    subu    t8, t8, a0
    sll     t8, t8,  5
    beq     $zero, $zero, lbl_8001B2F0
    addu    a3, a2, t8
lbl_8001B330:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_8001B34C
    sll     t1, v0,  2
    lw      t9, 0x000C($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_8001B3C4
    sw      a0, 0x0000(t9)             # 00000000
lbl_8001B34C:
    subu    t1, t1, v0
    sll     t1, t1,  5
    or      a0, v0, $zero              # a0 = 00000000
    addu    a3, a2, t1
lbl_8001B35C:
    lbu     a1, 0x005E(a3)             # 0000005E
    slt     $at, a1, s0
    bnel    $at, $zero, lbl_8001B388
    addiu   a0, a0, 0x0001             # a0 = 00000001
    bnel    s0, a1, lbl_8001B3BC
    lw      t5, 0x000C($sp)
    lhu     t2, 0x005A(a3)             # 0000005A
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_8001B3BC
    lw      t5, 0x000C($sp)
    addiu   a0, a0, 0x0001             # a0 = 00000002
lbl_8001B388:
    slt     $at, a0, v1
    bne     $at, $zero, lbl_8001B398
    nop
    or      a0, $zero, $zero           # a0 = 00000000
lbl_8001B398:
    bne     a0, v0, lbl_8001B3A8
    sll     t4, a0,  2
    beq     $zero, $zero, lbl_8001B3C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8001B3A8:
    subu    t4, t4, a0
    sll     t4, t4,  5
    beq     $zero, $zero, lbl_8001B35C
    addu    a3, a2, t4
    lw      t5, 0x000C($sp)
lbl_8001B3BC:
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a0, 0x0000(t5)             # 00000000
lbl_8001B3C4:
    lw      s0, 0x0004($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0008           # $sp = 00000000


func_8001B3D0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    jal     func_8009DB54
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8001B458
    lw      t6, 0x0024($sp)
    lbu     a0, 0x005E(t6)             # 0000005E
    jal     func_8001B298
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    bne     v0, $zero, lbl_8001B458
    lw      t7, 0x001C($sp)
    lw      t0, 0x001C($sp)
    lui     v0, 0x800E                 # v0 = 800E0000
    addiu   v0, v0, 0x7B40             # v0 = 800E7B40
    lw      t9, 0x0000(v0)             # 800E7B40
    lw      t3, 0x0024($sp)
    sll     t1, t0,  2
    subu    t1, t1, t0
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sll     t1, t1,  5
    sw      t8, 0x0004(v0)             # 800E7B44
    addu    t2, t9, t1
    addiu   t6, t3, 0x0060             # t6 = 00000060
lbl_8001B434:
    lw      t5, 0x0000(t3)             # 00000000
    addiu   t3, t3, 0x000C             # t3 = 0000000C
    addiu   t2, t2, 0x000C             # t2 = 0000000C
    sw      t5, -0x000C(t2)            # 00000000
    lw      t4, -0x0008(t3)            # 00000004
    sw      t4, -0x0008(t2)            # 00000004
    lw      t5, -0x0004(t3)            # 00000008
    bne     t3, t6, lbl_8001B434
    sw      t5, -0x0004(t2)            # 00000008
lbl_8001B458:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8001B468:
# Spawn Particle. Also allocates overlay if not already in memory
# A0 = Global Context
# A1 = Particle Effect Id
# A2 = ?
# A3 = ptr to spawn coordinates?
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lw      a0, 0x0048($sp)
    jal     func_8001B298
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFFC
    bne     v0, $zero, lbl_8001B600
    lw      t6, 0x003C($sp)
    lw      t8, 0x0044($sp)
    lui     t1, 0x800E                 # t1 = 800E0000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sll     t9, t8,  3
    subu    t9, t9, t8
    lui     $at, 0x800E                # $at = 800E0000
    sll     t9, t9,  2
    addiu   t1, t1, 0x7C40             # t1 = 800E7C40
    sw      t7, 0x7B44($at)            # 800E7B44
    addu    v1, t9, t1
    lw      v0, 0x0008(v1)             # 00000008
    lw      t2, 0x000C(v1)             # 0000000C
    bne     v0, $zero, lbl_8001B4D4
    subu    a0, t2, v0
    beq     $zero, $zero, lbl_8001B53C
    lw      v0, 0x0014(v1)             # 00000014
lbl_8001B4D4:
    lw      t3, 0x0010(v1)             # 00000010
    bnel    t3, $zero, lbl_8001B518
    lw      v0, 0x0014(v1)             # 00000014
    jal     func_80066C38              # zelda_malloc?
    sw      v1, 0x0028($sp)
    lw      v1, 0x0028($sp)
    beq     v0, $zero, lbl_8001B600
    sw      v0, 0x0010(v1)             # 00000010
    lw      a0, 0x0000(v1)             # 00000000
    lw      a1, 0x0004(v1)             # 00000004
    lw      a2, 0x0008(v1)             # 00000008
    lw      a3, 0x000C(v1)             # 0000000C
    sw      v1, 0x0028($sp)
    jal     func_800CCBB8
    sw      v0, 0x0010($sp)
    lw      v1, 0x0028($sp)
    lw      v0, 0x0014(v1)             # 00000014
lbl_8001B518:
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_8001B538
    nop
    lw      t5, 0x0008(v1)             # 00000008
    lw      t6, 0x0010(v1)             # 00000010
    subu    t7, t5, t6
    beq     $zero, $zero, lbl_8001B538
    subu    a0, v0, t7
lbl_8001B538:
    or      v0, a0, $zero              # v0 = 00000000
lbl_8001B53C:
    lw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x003C($sp)
    lui     t2, 0x800E                 # t2 = 800E0000
    beq     t8, $zero, lbl_8001B600
    sll     t1, t9,  2
    lw      t2, 0x7B40(t2)             # 800E7B40
    subu    t1, t1, t9
    sll     t1, t1,  5
    sw      v0, 0x0030($sp)
    jal     func_8001B1A4
    addu    a0, t1, t2
    lw      t5, 0x003C($sp)
    addiu   v1, $zero, 0x0060          # v1 = 00000060
    lui     t0, 0x800E                 # t0 = 800E0000
    multu   t5, v1
    addiu   t0, t0, 0x7B40             # t0 = 800E7B40
    lw      t4, 0x0000(t0)             # 800E7B40
    lw      t3, 0x0044($sp)
    lw      v0, 0x0030($sp)
    mflo    t6
    addu    t7, t4, t6
    sb      t3, 0x005F(t7)             # 0000005F
    lw      t1, 0x003C($sp)
    lw      t9, 0x0000(t0)             # 800E7B40
    lw      t8, 0x0048($sp)
    multu   t1, v1
    mflo    t2
    addu    t5, t9, t2
    sb      t8, 0x005E(t5)             # 0000005E
    lw      a1, 0x003C($sp)
    lw      t9, 0x0004(v0)             # 00000004
    lw      t3, 0x0000(t0)             # 800E7B40
    multu   a1, v1
    lw      a3, 0x004C($sp)
    lw      a0, 0x0040($sp)
    mflo    t6
    addu    a2, t6, t3
    jalr    $ra, t9
    nop
    bne     v0, $zero, lbl_8001B600
    addiu   v1, $zero, 0x0060          # v1 = 00000060
    lw      t7, 0x003C($sp)
    lui     t2, 0x800E                 # t2 = 800E0000
    lw      t2, 0x7B40(t2)             # 800E7B40
    multu   t7, v1
    mflo    t1
    addu    a0, t1, t2
    jal     func_8001B204
    nop
lbl_8001B600:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001B610:
# Update/Execute Particle
# A0 = Global Context
# A1 = Particle Slot Id
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lw      t7, 0x7B40(t7)             # 800E7B40
    sll     t6, a1,  2
    subu    t6, t6, a1
    sll     t6, t6,  5
    addu    a2, t6, t7
    lw      v0, 0x0024(a2)             # 00000024
    beql    v0, $zero, lbl_8001B6A4
    lw      $ra, 0x0014($sp)
    lwc1    $f4, 0x000C(a2)            # 0000000C
    lwc1    $f6, 0x0018(a2)            # 00000018
    lwc1    $f10, 0x0010(a2)           # 00000010
    lwc1    $f16, 0x001C(a2)           # 0000001C
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020(a2)            # 00000020
    lwc1    $f4, 0x0014(a2)            # 00000014
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x000C(a2)            # 0000000C
    lwc1    $f16, 0x000C(a2)           # 0000000C
    lwc1    $f10, 0x0000(a2)           # 00000000
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0010(a2)           # 00000010
    lwc1    $f6, 0x0010(a2)            # 00000010
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0014(a2)            # 00000014
    lwc1    $f4, 0x0004(a2)            # 00000004
    lwc1    $f16, 0x0014(a2)           # 00000014
    lwc1    $f10, 0x0008(a2)           # 00000008
    swc1    $f18, 0x0000(a2)           # 00000000
    add.s   $f8, $f4, $f6
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0004(a2)            # 00000004
    jalr    $ra, v0
    swc1    $f18, 0x0008(a2)           # 00000008
    lw      $ra, 0x0014($sp)
lbl_8001B6A4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001B6B0:
# Update/Execute Particles
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s2, 0x001C($sp)
    lui     s2, 0x800E                 # s2 = 800E0000
    sw      s3, 0x0020($sp)
    or      s3, a0, $zero              # s3 = 00000000
    addiu   s2, s2, 0x7B40             # s2 = 800E7B40
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lw      t6, 0x0008(s2)             # 800E7B48
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    blezl   t6, lbl_8001B754
    lw      $ra, 0x0024($sp)
    lw      t7, 0x0000(s2)             # 800E7B40
lbl_8001B6EC:
    addu    a0, t7, s0
    lh      v0, 0x005C(a0)             # 0000005C
    bltz    v0, lbl_8001B728
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x005C(a0)             # 0000005C
    lw      v1, 0x0000(s2)             # 800E7B40
    addu    t9, v1, s0
    lh      v0, 0x005C(t9)             # 0000005C
    bgez    v0, lbl_8001B728
    nop
    jal     func_8001B1A4
    addu    a0, s0, v1
    lw      t0, 0x0000(s2)             # 800E7B40
    addu    t1, t0, s0
    lh      v0, 0x005C(t1)             # 0000005C
lbl_8001B728:
    bltz    v0, lbl_8001B738
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8001B610
    or      a1, s1, $zero              # a1 = 00000000
lbl_8001B738:
    lw      t2, 0x0008(s2)             # 800E7B48
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0060             # s0 = 00000060
    slt     $at, s1, t2
    bnel    $at, $zero, lbl_8001B6EC
    lw      t7, 0x0000(s2)             # 800E7B40
    lw      $ra, 0x0024($sp)
lbl_8001B754:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001B76C:
# Draw Particle (Execute Instance + 0x28 func)
# A0 = Global Context
# A1 = Particle Slot Id
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lw      t7, 0x7B40(t7)             # 800E7B40
    sll     t6, a1,  2
    subu    t6, t6, a1
    sll     t6, t6,  5
    addu    a2, t6, t7
    lw      v0, 0x0028(a2)             # 00000028
    beql    v0, $zero, lbl_8001B7A4
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    nop
    lw      $ra, 0x0014($sp)
lbl_8001B7A4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001B7B0:
# Draw Particles
# A0 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s2, 0x002C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f22, 0x0018($sp)
    sdc1    $f20, 0x0010($sp)
    addiu   a0, s2, 0x07A8             # a0 = 000007A8
    jal     func_8006650C
    lw      a1, 0x0000(s2)             # 00000000
    or      s0, v0, $zero              # s0 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    lw      a1, 0x07A8(s2)             # 000007A8
    jal     func_80066298
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80065D60
    lw      a1, 0x0000(s2)             # 00000000
    lui     s3, 0x800E                 # s3 = 800E0000
    addiu   s3, s3, 0x7B40             # s3 = 800E7B40
    lw      v1, 0x0008(s3)             # 800E7B48
    or      s0, $zero, $zero           # s0 = 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
    blezl   v1, lbl_8001B8DC
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f22                  # $f22 = -32000.00
    lui     $at, 0x46FA                # $at = 46FA0000
    mtc1    $at, $f20                  # $f20 = 32000.00
    or      s1, $zero, $zero           # s1 = 00000000
lbl_8001B82C:
    lw      a1, 0x0000(s3)             # 800E7B40
    addu    v0, a1, s1
    lh      t6, 0x005C(v0)             # 0000005C
    bltzl   t6, lbl_8001B8CC
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lwc1    $f0, 0x0000(v0)            # 00000000
    c.lt.s  $f20, $f0
    nop
    bc1t    lbl_8001B8AC
    nop
    c.lt.s  $f0, $f22
    nop
    bc1t    lbl_8001B8AC
    nop
    lwc1    $f0, 0x0004(v0)            # 00000004
    c.lt.s  $f20, $f0
    nop
    bc1t    lbl_8001B8AC
    nop
    c.lt.s  $f0, $f22
    nop
    bc1t    lbl_8001B8AC
    nop
    lwc1    $f0, 0x0008(v0)            # 00000008
    c.lt.s  $f20, $f0
    nop
    bc1t    lbl_8001B8AC
    nop
    c.lt.s  $f0, $f22
    or      a0, s2, $zero              # a0 = 00000000
    bc1f    lbl_8001B8BC
    nop
lbl_8001B8AC:
    jal     func_8001B1A4
    addu    a0, s1, a1
    beq     $zero, $zero, lbl_8001B8C8
    lw      v1, 0x0008(s3)             # 800E7B48
lbl_8001B8BC:
    jal     func_8001B76C
    or      a1, s0, $zero              # a1 = 00000001
    lw      v1, 0x0008(s3)             # 800E7B48
lbl_8001B8C8:
    addiu   s0, s0, 0x0001             # s0 = 00000002
lbl_8001B8CC:
    slt     $at, s0, v1
    bne     $at, $zero, lbl_8001B82C
    addiu   s1, s1, 0x0060             # s1 = 00000060
    lw      $ra, 0x0034($sp)
lbl_8001B8DC:
    ldc1    $f20, 0x0010($sp)
    ldc1    $f22, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp = 00000000


func_8001B8FC:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sll     a0, a0, 16
    sra     a0, a0, 16
    sra     a1, a1, 16
    bne     a2, $zero, lbl_8001B928
    subu    t6, a1, a0
    sll     v1, a1, 16
    beq     $zero, $zero, lbl_8001B954
    sra     v1, v1, 16
lbl_8001B928:
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    a2, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f10, $f8
    div.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    addu    v1, a0, t8
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8001B954:
    or      v0, v1, $zero              # v0 = 00000000
    jr      $ra
    nop


func_8001B960:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sll     a0, a0, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a0, a0, 16
    sra     a1, a1, 16
    subu    t6, a1, a0
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    a0, $f10                   # $f10 = 0.00
    cvt.s.w $f6, $f4
    cvt.s.w $f16, $f10
    mul.s   $f8, $f6, $f12
    add.s   $f18, $f8, $f16
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    nop


func_8001B9B4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    mtc1    a2, $f12                   # $f12 = 0.00
    andi    a1, a1, 0x00FF             # a1 = 00000000
    andi    a0, a0, 0x00FF             # a0 = 00000000
    mtc1    a0, $f4                    # $f4 = 0.00
    mtc1    a1, $f8                    # $f8 = 0.00
    bgez    a0, lbl_8001B9E8
    cvt.s.w $f0, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f0, $f0, $f6
lbl_8001B9E8:
    bgez    a1, lbl_8001BA00
    cvt.s.w $f10, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_8001BA00:
    sub.s   $f18, $f10, $f0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f18, $f12
    add.s   $f6, $f4, $f0
    cfc1    t6, $f31
    ctc1    v0, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    beql    v0, $zero, lbl_8001BA80
    mfc1    v0, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    v0, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    v0, $f31
    nop
    andi    v0, v0, 0x0078             # v0 = 00000000
    bne     v0, $zero, lbl_8001BA74
    nop
    mfc1    v0, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8001BA8C
    or      v0, v0, $at                # v0 = 80000000
lbl_8001BA74:
    beq     $zero, $zero, lbl_8001BA8C
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    mfc1    v0, $f8
lbl_8001BA80:
    nop
    bltz    v0, lbl_8001BA74
    nop
lbl_8001BA8C:
    ctc1    t6, $f31
    andi    v0, v0, 0x00FF             # v0 = 000000FF
    nop
    jr      $ra
    nop


func_8001BAA0:
# Draw Splash? (Particle 0x0A)
    addiu   $sp, $sp, 0xFEA8           # $sp = FFFFFEA8
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0158($sp)
    sw      a2, 0x0160($sp)
    lh      t7, 0x0056(s1)             # 00000056
    lw      t6, 0x0158($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    sll     t8, t7,  4
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t9, t6, t8
    addu    t0, t0, t9
    lw      t0, 0x17B4(t0)             # 000117B4
    lw      s0, 0x0000(t6)             # 00000000
    sw      t0, 0x0044($sp)
    lh      t1, 0x0042(s1)             # 00000042
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x6080($at)           # 80106080
    mtc1    t1, $f4                    # $f4 = 0.00
    lw      a1, 0x0000(s1)             # 00000000
    lw      a2, 0x0004(s1)             # 00000004
    cvt.s.w $f6, $f4
    lw      a3, 0x0008(s1)             # 00000008
    addiu   a0, $sp, 0x0110            # a0 = FFFFFFB8
    mul.s   $f0, $f6, $f8
    jal     func_8008F82C              # guTranslateF
    swc1    $f0, 0x0150($sp)
    lwc1    $f0, 0x0150($sp)
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFF78
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    jal     func_8008F4A8              # guScaleF
    nop
    lw      a1, 0x0158($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a0, $sp, 0x0110            # a0 = FFFFFFB8
    addiu   a2, $sp, 0x0050            # a2 = FFFFFEF8
    jal     func_8008EDB8
    addu    a1, a1, $at
    addiu   a0, $sp, 0x0050            # a0 = FFFFFEF8
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFF78
    jal     func_8008EDB8
    addiu   a2, $sp, 0x0090            # a2 = FFFFFF38
    lw      a2, 0x0044($sp)
    lui     $at, 0x8000                # $at = 80000000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t2, a2, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t2, 0x0C50($at)            # 80120C50
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0018             # t4 = DB060018
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    jal     func_8008FC98
    addiu   a1, $sp, 0x0090            # a1 = FFFFFF38
    beq     v0, $zero, lbl_8001BCCC
    or      a2, v0, $zero              # a2 = 00000000
    lw      a3, 0x0160($sp)
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    sll     t9, a3,  4
    srl     t0, t9, 28
    lui     t8, 0xDB06                 # t8 = DB060000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    ori     t8, t8, 0x0020             # t8 = DB060020
    sll     t1, t0,  2
    lui     t2, 0x8012                 # t2 = 80120000
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    sw      t8, 0x0000(v0)             # 00000000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t4, t2, t3
    addu    t5, t4, $at
    sw      t5, 0x0004(v0)             # 00000004
    jal     func_8007E978
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v0)             # 00000000
    lh      t8, 0x004C(s1)             # 0000004C
    lh      t4, 0x0048(s1)             # 00000048
    lh      t1, 0x0046(s1)             # 00000046
    andi    t9, t8, 0x00FF             # t9 = 00000000
    lh      t8, 0x004A(s1)             # 0000004A
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sll     t2, t1, 24
    or      t3, t9, t2                 # t3 = 00000000
    sll     t7, t5, 16
    andi    t0, t8, 0x00FF             # t0 = 00000000
    sll     t1, t0,  8
    or      t6, t3, t7                 # t6 = 00000008
    or      t9, t6, t1                 # t9 = 00000008
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v0)             # 00000000
    lh      t5, 0x0054(s1)             # 00000054
    lh      t1, 0x0050(s1)             # 00000050
    lh      t8, 0x004E(s1)             # 0000004E
    andi    t3, t5, 0x00FF             # t3 = 00000000
    lh      t5, 0x0052(s1)             # 00000052
    andi    t9, t1, 0x00FF             # t9 = 00000000
    sll     t0, t8, 24
    or      t6, t3, t0                 # t6 = 00000000
    sll     t2, t9, 16
    andi    t7, t5, 0x00FF             # t7 = 00000000
    sll     t8, t7,  8
    or      t4, t6, t2                 # t4 = 00000008
    or      t3, t4, t8                 # t3 = 00000008
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lw      t9, 0x0038(s1)             # 00000038
    sw      t9, 0x0004(v0)             # 00000004
lbl_8001BCCC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0158           # $sp = 00000000


func_8001BCE0:
# Spawn Particle 0x00
# A0 = Global Context
# A1 = ?
# A2 = Coords Ptr 1
# A3 = Coords Ptr 2
# SP+0x10 = Coords Ptr 3
# SP+0x14 = Color 1 ptr
# SP+0x18 = Color 2 ptr
# SP+0x1C = s16 ? (possibly timer)
# SP+0x20 = s16 ?
# SP+0x24 = s16 ?
# SP+0x28 = u8 ?
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a3, 0x005C($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC8
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFD4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    lw      t7, 0x0064($sp)
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFEC
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFF0
    lwl     t9, 0x0000(t7)             # 00000000
    lwr     t9, 0x0003(t7)             # 00000003
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    swl     t9, 0x0000(t6)             # FFFFFFEC
    swr     t9, 0x0003(t6)             # FFFFFFEF
    lw      t1, 0x0068($sp)
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC8
    lwl     t3, 0x0000(t1)             # 00000000
    lwr     t3, 0x0003(t1)             # 00000003
    swl     t3, 0x0000(t0)             # FFFFFFF0
    swr     t3, 0x0003(t0)             # FFFFFFF3
    lhu     t4, 0x0056($sp)
    lh      t5, 0x006E($sp)
    lh      t6, 0x0072($sp)
    lh      t7, 0x0076($sp)
    lbu     t8, 0x007B($sp)
    lw      a0, 0x0050($sp)
    sh      t4, 0x004A($sp)
    sh      t5, 0x0044($sp)
    sh      t6, 0x0046($sp)
    sh      t7, 0x0048($sp)
    jal     func_8001B468
    sb      t8, 0x004C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001BD94:
# Spawn Particle 0x00 Type 0 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001BDFC:
# Spawn Particle 0x00 Type 1 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001BE64:
# Spawn Particle 0x00 Type 0 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    lh      t1, 0x005A($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    sw      t0, 0x0020($sp)
    jal     func_8001BCE0
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001BECC:
# Spawn Particle 0x00 Type 1 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    lh      t1, 0x005A($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    sw      t0, 0x0020($sp)
    jal     func_8001BCE0
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001BF34:
# Spawn Particle 0x00 Type 2 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    lh      t1, 0x005A($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    sw      t0, 0x0020($sp)
    jal     func_8001BCE0
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001BF9C:
# Spawn Particle 0x00 Type 0 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C008:
# Spawn Particle 0x00 Type 1 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lw      t7, 0x0048($sp)
    lw      t8, 0x004C($sp)
    lh      t9, 0x0052($sp)
    lh      t0, 0x0056($sp)
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0028($sp)
    sw      t1, 0x0024($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C074:
# Spawn Particle 0x00 Type 4 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    sw      $zero, 0x0028($sp)
    jal     func_8001BCE0
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C0E4:
# Spawn Particle 0x00 Type 5 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sw      $zero, 0x0028($sp)
    jal     func_8001BCE0
    sw      t6, 0x0010($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C154:
# Spawn Particle 0x00 Type 4 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lh      t9, 0x004A($sp)
    lh      t0, 0x004E($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C1C4:
# Spawn Particle 0x00 Type 5 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lh      t9, 0x004A($sp)
    lh      t0, 0x004E($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    sw      t1, 0x0024($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001BCE0
    sw      t0, 0x0020($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C234:
# Spawn Particle 0x00 Type 4 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lh      t9, 0x004A($sp)
    lh      t0, 0x004E($sp)
    lh      t1, 0x0052($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t9, 0x001C($sp)
    sw      t0, 0x0020($sp)
    jal     func_8001BCE0
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C2A4:
# Spawn Particle 0x00 Type 5 (Wrapper for 8001BCE0)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      a3, 0x0040($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x0044($sp)
    lh      t9, 0x004A($sp)
    lh      t0, 0x004E($sp)
    lh      t1, 0x0052($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    lui     t8, 0x800E                 # t8 = 800E0000
    addiu   t8, t8, 0x7B60             # t8 = 800E7B60
    addiu   t7, t7, 0x7B5C             # t7 = 800E7B5C
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sw      $zero, 0x0028($sp)
    sw      t6, 0x0010($sp)
    sw      t9, 0x001C($sp)
    sw      t0, 0x0020($sp)
    jal     func_8001BCE0
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001C314:
# Spawn Particle 0x00 (Wrapper for 8001BD94)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    jal     func_8001BD94
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001C350:
# Spawn Particle 0x00 (Wrapper for 8001BDFC)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    jal     func_8001BDFC
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001C38C:
# Helper for 8001C488, 8001C54C
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0018($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a3, 0x0034($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f4, 0x002C($sp)
    mul.s   $f6, $f0, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0020($sp)
    lui     $at, 0x4780                # $at = 47800000
    mtc1    $at, $f8                   # $f8 = 65536.00
    lw      t7, 0x0028($sp)
    mul.s   $f10, $f0, $f8
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    sh      v0, 0x0026($sp)
    lw      t9, 0x0000(t7)             # 00000000
    sll     a0, v0, 16
    sra     a0, a0, 16
    sw      t9, 0x0000(s0)             # 00000000
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x0004(s0)             # 00000004
    lw      t9, 0x0008(t7)             # 00000008
    jal     func_800636C4              # sins?
    sw      t9, 0x0008(s0)             # 00000008
    lwc1    $f4, 0x0020($sp)
    lwc1    $f18, 0x0000(s0)           # 00000000
    mul.s   $f6, $f0, $f4
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x0000(s0)            # 00000000
    jal     func_80063684              # coss?
    lh      a0, 0x0026($sp)
    lwc1    $f16, 0x0020($sp)
    lwc1    $f10, 0x0008(s0)           # 00000008
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f4, $f0, $f16
    mtc1    $at, $f6                   # $f6 = 1.00
    add.s   $f18, $f10, $f4
    swc1    $f18, 0x0008(s0)           # 00000008
    lw      t0, 0x0034($sp)
    swc1    $f6, 0x0004(t0)            # 00000004
    jal     func_800636C4              # sins?
    lh      a0, 0x0026($sp)
    lw      t1, 0x0034($sp)
    swc1    $f0, 0x0000(t1)            # 00000000
    jal     func_80063684              # coss?
    lh      a0, 0x0026($sp)
    lw      v0, 0x0038($sp)
    lw      t2, 0x0034($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f0, 0x0008(t2)            # 00000008
    swc1    $f2, 0x0000(v0)            # 00000000
    swc1    $f2, 0x0004(v0)            # 00000004
    swc1    $f2, 0x0008(v0)            # 00000008
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp = 00000000


func_8001C488:
# Spawn 20 Particle 0x00 (Calls 8001C234)
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sdc1    $f20, 0x0028($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    mtc1    a1, $f20                   # $f20 = 0.00
    or      s4, a2, $zero              # s4 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $zero, 0x0014          # s6 = 00000014
    addiu   s3, $sp, 0x0050            # s3 = FFFFFFD8
    addiu   s2, $sp, 0x005C            # s2 = FFFFFFE4
    addiu   s1, $sp, 0x0068            # s1 = FFFFFFF0
    mfc1    a1, $f20
lbl_8001C4D4:
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFF0
    or      a3, s2, $zero              # a3 = FFFFFFE4
    jal     func_8001C38C
    sw      s3, 0x0010($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFF0
    or      a2, s2, $zero              # a2 = FFFFFFE4
    jal     func_8001C234
    or      a3, s3, $zero              # a3 = FFFFFFD8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s6, lbl_8001C4D4
    mfc1    a1, $f20
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8001C54C:
# Spawn 20 Particle 0x00 (Calls 8001C2A4)
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sdc1    $f20, 0x0028($sp)
    sw      s5, 0x0044($sp)
    sw      s4, 0x0040($sp)
    mtc1    a1, $f20                   # $f20 = 0.00
    or      s4, a2, $zero              # s4 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s6, 0x0048($sp)
    sw      s3, 0x003C($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s6, $zero, 0x0014          # s6 = 00000014
    addiu   s3, $sp, 0x0050            # s3 = FFFFFFD8
    addiu   s2, $sp, 0x005C            # s2 = FFFFFFE4
    addiu   s1, $sp, 0x0068            # s1 = FFFFFFF0
    mfc1    a1, $f20
lbl_8001C598:
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFF0
    or      a3, s2, $zero              # a3 = FFFFFFE4
    jal     func_8001C38C
    sw      s3, 0x0010($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFF0
    or      a2, s2, $zero              # a2 = FFFFFFE4
    jal     func_8001C2A4
    or      a3, s3, $zero              # a3 = FFFFFFD8
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bnel    s0, s6, lbl_8001C598
    mfc1    a1, $f20
    lw      $ra, 0x004C($sp)
    ldc1    $f20, 0x0028($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    lw      s5, 0x0044($sp)
    lw      s6, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8001C610:
# Spawn Particle 0x01 (Wrapper for 8001C6A8)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    addiu   v0, $sp, 0x002C            # v0 = FFFFFFFC
    addiu   v1, $sp, 0x0028            # v1 = FFFFFFF8
    lui     t6, 0x800E                 # t6 = 800E0000
    addiu   t6, t6, 0x7B64             # t6 = 800E7B64
    lw      t8, 0x0000(t6)             # 800E7B64
    lui     t9, 0x800E                 # t9 = 800E0000
    addiu   t9, t9, 0x7B68             # t9 = 800E7B68
    sw      t8, 0x0000(v0)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 800E7B68
    addiu   t2, $zero, 0x03E8          # t2 = 000003E8
    addiu   t3, $zero, 0x0010          # t3 = 00000010
    sw      t1, 0x0000(v1)             # FFFFFFF8
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      v1, 0x0014($sp)
    jal     func_8001C6A8
    sw      v0, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001C66C:
# Spawn Particle 0x01 (Wrapper for 8001C6A8)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x003C($sp)
    addiu   t8, $zero, 0x03E8          # t8 = 000003E8
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    jal     func_8001C6A8
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001C6A8:
# Spawn Particle 0x01 (Fairy Sparkle)
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFC4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f2, 0x002C($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mul.s   $f4, $f0, $f2
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFDC
    lw      a1, 0x0064($sp)
    add.s   $f6, $f4, $f2
    mul.s   $f2, $f6, $f8
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f2, 0x002C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f2, 0x0038($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f18                  # $f18 = 0.50
    mul.s   $f10, $f0, $f2
    lw      t6, 0x0074($sp)
    addiu   t7, $zero, 0x1518          # t7 = 00001518
    sb      $zero, 0x0054($sp)
    sh      t7, 0x0050($sp)
    sw      t6, 0x004C($sp)
    add.s   $f16, $f10, $f2
    mul.s   $f2, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0038($sp)
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    lh      t0, 0x0072($sp)
    lw      t2, 0x0068($sp)
    mul.s   $f6, $f0, $f4
    sh      t0, 0x004A($sp)
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFE8
    addiu   t5, $sp, 0x0044            # t5 = FFFFFFEC
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    trunc.w.s $f8, $f6
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    mfc1    t9, $f8
    nop
    sh      t9, 0x0052($sp)
    lwl     t4, 0x0000(t2)             # 00000000
    lwr     t4, 0x0003(t2)             # 00000003
    swl     t4, 0x0000(t1)             # FFFFFFE8
    swr     t4, 0x0003(t1)             # FFFFFFEB
    lw      t6, 0x006C($sp)
    lwl     t8, 0x0000(t6)             # 00000000
    lwr     t8, 0x0003(t6)             # 00000003
    swl     t8, 0x0000(t5)             # FFFFFFEC
    swr     t8, 0x0003(t5)             # FFFFFFEF
    lw      t9, 0x004C($sp)
    lw      a0, 0x0058($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f2, $f10, $f18
    neg.s   $f2, $f2
    add.s   $f4, $f2, $f2
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    jal     func_8001B468
    sh      t1, 0x0048($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001C7E4:
# Spawn Particle 0x01 (?, First Visit ToT as Adult)
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFC4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0064($sp)
    lw      t6, 0x0074($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x1518          # t8 = 00001518
    sb      t7, 0x0054($sp)
    sh      t8, 0x0050($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x004C($sp)
    lui     $at, 0x4680                # $at = 46800000
    mtc1    $at, $f4                   # $f4 = 16384.00
    lh      t1, 0x0072($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFE8
    mul.s   $f6, $f0, $f4
    lw      a1, 0x0068($sp)
    sh      t1, 0x004A($sp)
    trunc.w.s $f8, $f6
    mfc1    t0, $f8
    jal     func_800646C8
    sh      t0, 0x0052($sp)
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFEC
    jal     func_800646C8
    lw      a1, 0x006C($sp)
    lw      t2, 0x004C($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    mtc1    t2, $f16                   # $f16 = 0.00
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    div.s   $f0, $f10, $f18
    neg.s   $f0, $f0
    add.s   $f4, $f0, $f0
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    jal     func_8001B468
    sh      t4, 0x0048($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001C8BC:
# Spawn Particle 0x02
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFDC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFF4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x004C($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFDC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001C914:
# Spawn Particle 0x03
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sh      t6, 0x0040($sp)
    sh      $zero, 0x0042($sp)
    sb      $zero, 0x0044($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFD4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001C97C:
# Spawn Particle 0x03
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lh      t7, 0x005E($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      t8, 0x0044($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFD4
    sh      t6, 0x0040($sp)
    jal     func_8001B468
    sh      t7, 0x0042($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001C9EC:
# Spawn Particle 0x04
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFCC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0058($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0064($sp)
    lh      t6, 0x006A($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    lh      t9, 0x0076($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFCC
    sh      t6, 0x0048($sp)
    sh      t7, 0x004A($sp)
    sh      t8, 0x004C($sp)
    jal     func_8001B468
    sh      t9, 0x004E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001CA7C:
# Spawn Particle 0x04 (Wrapper for 8001C9EC)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    lh      t8, 0x0042($sp)
    lh      t9, 0x0046($sp)
    lh      t1, 0x004A($sp)
    lui     t6, 0x800E                 # t6 = 800E0000
    lui     t7, 0x800E                 # t7 = 800E0000
    addiu   t7, t7, 0x7B70             # t7 = 800E7B70
    addiu   t6, t6, 0x7B6C             # t6 = 800E7B6C
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    sw      t0, 0x0020($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    sw      t9, 0x001C($sp)
    jal     func_8001C9EC
    sw      t1, 0x0024($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CAD0:
# Spawn Particle 0x04 (Wrapper for 8001C9EC)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    lw      t6, 0x0040($sp)
    lw      t7, 0x0044($sp)
    lh      t1, 0x004A($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    addiu   t9, $zero, 0x0177          # t9 = 00000177
    addiu   t0, $zero, 0x0023          # t0 = 00000023
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8001C9EC
    sw      t1, 0x0024($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CB1C:
# Spawn Particle 0x04 (Wrapper for 8001CAD0)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    lui     t6, 0x800E                 # t6 = 800E0000
    lui     t7, 0x800E                 # t7 = 800E0000
    addiu   t7, t7, 0x7B78             # t7 = 800E7B78
    addiu   t6, t6, 0x7B74             # t6 = 800E7B74
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t8, 0x0018($sp)
    sw      t6, 0x0010($sp)
    jal     func_8001CAD0
    sw      t7, 0x0014($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001CB58:
# Spawn Particle 0x05
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a3, 0x005C($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFCC
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0064($sp)
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0068($sp)
    lw      t6, 0x0054($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    sb      $zero, 0x004C($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC8
    sw      t6, 0x0018($sp)
    sh      t7, 0x0048($sp)
    jal     func_8001B468
    sh      t8, 0x004A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001CBE8:
# Spawn Particle 0x05
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a3, 0x005C($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFCC
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0064($sp)
    addiu   a0, $sp, 0x0044            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0068($sp)
    lw      t6, 0x0054($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x004C($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC8
    sw      t6, 0x0018($sp)
    sh      t7, 0x0048($sp)
    jal     func_8001B468
    sh      t8, 0x004A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001CC7C:
# Spawn Particle 0x05 (Wrapper for 8001CDD4)
# Bomb Spark
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0024($sp)
    addiu   v0, $sp, 0x002C            # v0 = FFFFFFFC
    addiu   v1, $sp, 0x0028            # v1 = FFFFFFF8
    lui     t6, 0x800E                 # t6 = 800E0000
    addiu   t6, t6, 0x7B7C             # t6 = 800E7B7C
    lw      t8, 0x0000(t6)             # 800E7B7C
    lui     t9, 0x800E                 # t9 = 800E0000
    addiu   t9, t9, 0x7B80             # t9 = 800E7B80
    sw      t8, 0x0000(v0)             # FFFFFFFC
    lw      t1, 0x0000(t9)             # 800E7B80
    sw      t1, 0x0000(v1)             # FFFFFFF8
    lw      t2, 0x0040($sp)
    sw      v1, 0x0018($sp)
    sw      v0, 0x0014($sp)
    jal     func_8001CDD4
    sw      t2, 0x0010($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CCD0:
# Spawn Particle 0x05 (Wrapper for 8001CB58)
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lui     t6, 0x800E                 # t6 = 800E0000
    lui     t7, 0x800E                 # t7 = 800E0000
    lw      t6, 0x7B84(t6)             # 800E7B84
    lw      t7, 0x7B88(t7)             # 800E7B88
    sw      t6, 0x003C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      t7, 0x0038($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    mul.s   $f6, $f0, $f4
    lbu     t9, 0x003C($sp)
    lbu     t1, 0x003D($sp)
    lbu     t3, 0x003E($sp)
    lbu     t5, 0x003F($sp)
    lbu     t7, 0x0038($sp)
    lw      a0, 0x0040($sp)
    sub.s   $f10, $f6, $f8
    lw      a1, 0x0044($sp)
    lw      a2, 0x0048($sp)
    lw      a3, 0x004C($sp)
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    addu    t0, t9, v0
    lbu     t9, 0x0039($sp)
    addu    t2, t1, v0
    addu    t4, t3, v0
    lbu     t1, 0x003A($sp)
    lbu     t3, 0x003B($sp)
    sb      t0, 0x003C($sp)
    addu    t6, t5, v0
    addu    t8, t7, v0
    sb      t8, 0x0038($sp)
    addu    t0, t9, v0
    lh      t9, 0x005A($sp)
    lh      t8, 0x0056($sp)
    lw      t5, 0x0050($sp)
    sb      t2, 0x003D($sp)
    sb      t4, 0x003E($sp)
    sb      t6, 0x003F($sp)
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFFC
    addiu   t7, $sp, 0x0038            # t7 = FFFFFFF8
    addu    t2, t1, v0
    addu    t4, t3, v0
    sb      t0, 0x0039($sp)
    sb      t2, 0x003A($sp)
    sb      t4, 0x003B($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t9, 0x0020($sp)
    sw      t8, 0x001C($sp)
    jal     func_8001CB58
    sw      t5, 0x0010($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001CDD4:
# Spawn Particle 0x05 (Wrapper for 8001CB58)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    lw      t6, 0x0040($sp)
    lw      t7, 0x0044($sp)
    lw      t8, 0x0048($sp)
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t0, $zero, 0x0005          # t0 = 00000005
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    jal     func_8001CB58
    sw      t8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CE18:
# Spawn Particle 0x06
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lh      t7, 0x005E($sp)
    lh      t8, 0x0062($sp)
    lh      t9, 0x0066($sp)
    lw      t0, 0x0068($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    sh      t6, 0x003C($sp)
    sh      t7, 0x003E($sp)
    sh      t8, 0x0040($sp)
    sh      t9, 0x0042($sp)
    jal     func_8001B468
    sw      t0, 0x0044($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001CE98:
# Spawn Particle 0x06 (Wrapper for 8001CE18)
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x002C($sp)
    lh      t8, 0x0042($sp)
    lh      t9, 0x0046($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sw      t0, 0x0020($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    sw      t8, 0x0018($sp)
    jal     func_8001CE18
    sw      t9, 0x001C($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CEDC:
# Spawn Particle 0x07
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFE4
    lwc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0044($sp)
    lwc1    $f8, 0x0048($sp)
    lwc1    $f10, 0x004C($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFE4
    swc1    $f4, 0x0028($sp)
    swc1    $f6, 0x002C($sp)
    swc1    $f8, 0x0030($sp)
    jal     func_8001B468
    swc1    $f10, 0x0034($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001CF3C:
# Spawn Particle 0x09
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFEC
    lh      t6, 0x003A($sp)
    lh      t7, 0x003E($sp)
    lh      t8, 0x0042($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x0009          # a1 = 00000009
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFEC
    sh      t6, 0x0028($sp)
    sh      t7, 0x002A($sp)
    jal     func_8001B468
    sh      t8, 0x002C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001CF94:
# Spawn Particle 0x0A
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFE8
    lw      v0, 0x0038($sp)
    lh      t6, 0x0042($sp)
    lh      t7, 0x0046($sp)
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    sb      t6, 0x0024($sp)
    beq     v0, $zero, lbl_8001D004
    sh      t7, 0x0026($sp)
    lwl     t0, 0x0000(v0)             # 00000000
    lwr     t0, 0x0003(v0)             # 00000003
    addiu   t8, $sp, 0x0028            # t8 = FFFFFFF8
    addiu   t1, $sp, 0x002C            # t1 = FFFFFFFC
    swl     t0, 0x0000(t8)             # FFFFFFF8
    swr     t0, 0x0003(t8)             # FFFFFFFB
    lw      t2, 0x003C($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lwl     t4, 0x0000(t2)             # 00000000
    lwr     t4, 0x0003(t2)             # 00000003
    swl     t4, 0x0000(t1)             # FFFFFFFC
    swr     t4, 0x0003(t1)             # FFFFFFFF
    beq     $zero, $zero, lbl_8001D008
    sb      t5, 0x0025($sp)
lbl_8001D004:
    sb      $zero, 0x0025($sp)
lbl_8001D008:
    lw      a0, 0x0030($sp)
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFE8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001D028:
# Spawn Particle 0x0B
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    lw      a0, 0x0028($sp)
    addiu   a1, $zero, 0x000B          # a1 = 0000000B
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFF4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001D060:
# Spawn Particle 0x0C
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFF4
    lw      a0, 0x0028($sp)
    addiu   a1, $zero, 0x000C          # a1 = 0000000C
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFF4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001D098:
# Spawn Particle 0x0D
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFE4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0044($sp)
    lh      t6, 0x004A($sp)
    lh      t7, 0x004E($sp)
    lh      t8, 0x0052($sp)
    lh      t9, 0x0056($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x000D          # a1 = 0000000D
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFE4
    sh      t6, 0x0030($sp)
    sh      t7, 0x0032($sp)
    sh      t8, 0x0034($sp)
    jal     func_8001B468
    sh      t9, 0x0036($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001D110:
# Spawn Particle 0x0E
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFD4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0058($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    lh      t6, 0x006A($sp)
    lh      t7, 0x0062($sp)
    lh      t8, 0x0066($sp)
    lh      t9, 0x006E($sp)
    sb      $zero, 0x004C($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC8
    sh      t6, 0x0048($sp)
    sh      t7, 0x0044($sp)
    sh      t8, 0x0046($sp)
    jal     func_8001B468
    sh      t9, 0x004A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001D18C:
# Spawn Particle 0x0E
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFD4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0058($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x005C($sp)
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFEC
    jal     func_800646C8
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0064($sp)
    lh      t6, 0x006A($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x004C($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x000E          # a1 = 0000000E
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC8
    sh      t6, 0x0044($sp)
    sh      t7, 0x0046($sp)
    jal     func_8001B468
    sh      t8, 0x004A($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001D21C:
# Spawn Particle 0x0F
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lw      t6, 0x0068($sp)
    lh      t7, 0x005A($sp)
    lh      t8, 0x005E($sp)
    lh      t9, 0x0062($sp)
    lh      t0, 0x0066($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    sw      t6, 0x003C($sp)
    sh      t7, 0x0040($sp)
    sh      t8, 0x0042($sp)
    sh      t9, 0x0044($sp)
    jal     func_8001B468
    sh      t0, 0x0046($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001D29C:
# Spawn N Particle 0x0F (Wrapper for 8001D21C)
# SP+0x18 = s16 Particles to Spawn
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s6, 0x0058($sp)
    sdc1    $f22, 0x0038($sp)
    sll     s6, a3, 16
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s1, 0x0044($sp)
    mtc1    a2, $f22                   # $f22 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      s1, 0x00A2($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sra     s6, s6, 16
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a3, 0x0094($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6084($at)           # 80106084
    swc1    $f0, 0x0074($sp)
    swc1    $f0, 0x006C($sp)
    mul.s   $f6, $f4, $f22
    lui     $at, 0x3F00                # $at = 3F000000
    or      s0, $zero, $zero           # s0 = 00000000
    lh      s8, 0x00AA($sp)
    lh      s7, 0x00A6($sp)
    lh      s3, 0x009E($sp)
    blez    s1, lbl_8001D3AC
    swc1    $f6, 0x0070($sp)
    mtc1    $at, $f20                  # $f20 = 0.50
    lh      s2, 0x009A($sp)
lbl_8001D328:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f8, $f0, $f20
    mul.s   $f10, $f8, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0078($sp)
    sub.s   $f16, $f0, $f20
    mul.s   $f18, $f16, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0080($sp)
    mul.s   $f4, $f0, $f20
    sll     a0, s2, 16
    sll     a1, s3, 16
    sra     a1, a1, 16
    sra     a0, a0, 16
    add.s   $f6, $f4, $f20
    mul.s   $f8, $f6, $f22
    jal     func_80063BF0
    swc1    $f8, 0x007C($sp)
    lw      t6, 0x00AC($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFF0
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFE4
    sw      s6, 0x0010($sp)
    sw      v0, 0x0014($sp)
    sw      s7, 0x0018($sp)
    sw      s8, 0x001C($sp)
    jal     func_8001D21C
    sw      t6, 0x0020($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s1, lbl_8001D328
    nop
lbl_8001D3AC:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0030($sp)
    ldc1    $f22, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_8001D3E4:
# Spawn Particle 0x10
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFF0
    lw      t6, 0x002C($sp)
    addiu   a1, $zero, 0x0010          # a1 = 00000010
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(a3)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a3)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(a3)             # FFFFFFF8
    lh      t9, 0x0032($sp)
    jal     func_8001B468
    sh      t9, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001D438:
# Spawn Particle 0x11
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lh      t7, 0x005E($sp)
    lh      t8, 0x0062($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0011          # a1 = 00000011
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFD4
    sh      t6, 0x0040($sp)
    sh      t7, 0x0042($sp)
    jal     func_8001B468
    sh      t8, 0x0044($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001D4A8:
# Spawn Particle 0x11 (Wrapper for 8001D438)
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s2, 0x0030($sp)
    addiu   s2, $sp, 0x0050            # s2 = FFFFFFD8
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s3, 0x0034($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    lui     t7, 0x800E                 # t7 = 800E0000
    addiu   t7, t7, 0x7B8C             # t7 = 800E7B8C
    lw      t9, 0x0000(t7)             # 800E7B8C
    addiu   t6, $sp, 0x0068            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 800E7B90
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 800E7B94
    lui     t1, 0x800E                 # t1 = 800E0000
    addiu   t1, t1, 0x7B98             # t1 = 800E7B98
    sw      t8, 0x0004(t6)             # FFFFFFF4
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      t3, 0x0000(t1)             # 800E7B98
    addiu   t0, $sp, 0x005C            # t0 = FFFFFFE4
    lw      t2, 0x0004(t1)             # 800E7B9C
    sw      t3, 0x0000(t0)             # FFFFFFE4
    lw      t3, 0x0008(t1)             # 800E7BA0
    lui     t4, 0x800E                 # t4 = 800E0000
    addiu   t4, t4, 0x7BA4             # t4 = 800E7BA4
    sw      t2, 0x0004(t0)             # FFFFFFE8
    sw      t3, 0x0008(t0)             # FFFFFFEC
    lw      t6, 0x0000(t4)             # 800E7BA4
    sw      t6, 0x0000(s2)             # FFFFFFD8
    lw      t5, 0x0004(t4)             # 800E7BA8
    sw      t5, 0x0004(s2)             # FFFFFFDC
    lw      t6, 0x0008(t4)             # 800E7BAC
    jal     func_800CDCCC              # Rand.Next() float
    sw      t6, 0x0008(s2)             # FFFFFFE0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6088($at)           # 80106088
    lui     s6, 0x8012                 # s6 = 80120000
    addiu   s6, s6, 0xBA00             # s6 = 8011BA00
    mul.s   $f6, $f0, $f4
    lw      s0, 0x0000(s6)             # 8011BA00
    or      s1, $zero, $zero           # s1 = 00000000
    lh      t8, 0x09FA(s0)             # 000009FA
    trunc.w.s $f8, $f6
    addiu   t9, t8, 0x001E             # t9 = 0000001E
    mfc1    s3, $f8
    nop
    sll     s3, s3, 16
    blez    t9, lbl_8001D604
    sra     s3, s3, 16
    lh      t0, 0x0A0A(s0)             # 00000A0A
lbl_8001D584:
    sw      s3, 0x0014($sp)
    or      a0, s4, $zero              # a0 = 00000000
    addiu   t1, t0, 0x0006             # t1 = 00000006
    div     $zero, s1, t1
    mflo    t2
    sw      t2, 0x0010($sp)
    lh      t3, 0x09F8(s0)             # 000009F8
    or      a1, s5, $zero              # a1 = 00000000
    or      a2, s2, $zero              # a2 = FFFFFFD8
    addiu   t4, t3, 0x0028             # t4 = 00000028
    sw      t4, 0x0018($sp)
    or      a3, s2, $zero              # a3 = FFFFFFD8
    bne     t1, $zero, lbl_8001D5C0
    nop
    break   # 0x01C00
lbl_8001D5C0:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_8001D5D8
    lui     $at, 0x8000                # $at = 80000000
    bne     s1, $at, lbl_8001D5D8
    nop
    break   # 0x01800
lbl_8001D5D8:
    jal     func_8001D438
    nop
    lw      s0, 0x0000(s6)             # 8011BA00
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    lh      t5, 0x09FA(s0)             # 000009FA
    sra     s1, s1, 16
    addiu   t6, t5, 0x001E             # t6 = 0000001E
    slt     $at, s1, t6
    bnel    $at, $zero, lbl_8001D584
    lh      t0, 0x0A0A(s0)             # 00000A0A
lbl_8001D604:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    lw      s5, 0x003C($sp)
    lw      s6, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000


func_8001D62C:
# Spawn Particle 0x12
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x004C($sp)
    lh      t6, 0x0052($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0012          # a1 = 00000012
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD8
    jal     func_8001B468
    sh      t6, 0x003C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001D68C:
# Spawn Particle 0x13
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0038($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFE4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x0040($sp)
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0044($sp)
    lh      t6, 0x004A($sp)
    lh      t7, 0x004E($sp)
    lh      t8, 0x0052($sp)
    lw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0013          # a1 = 00000013
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFE4
    sh      t6, 0x0030($sp)
    sh      t7, 0x0032($sp)
    jal     func_8001B468
    sh      t8, 0x0034($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001D6FC:
# Spawn Particle 0x14
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFF0
    lw      t6, 0x002C($sp)
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    lw      t8, 0x0000(t6)             # 00000000
    sw      t8, 0x0000(a3)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 00000004
    sw      t7, 0x0004(a3)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 00000008
    sw      t8, 0x0008(a3)             # FFFFFFF8
    lw      t9, 0x0030($sp)
    jal     func_8001B468
    sw      t9, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001D750:
# Spawn Particle 0x15
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a2, 0x0038($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    sh      a2, 0x0020($sp)
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    or      a1, a3, $zero              # a1 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    sw      t6, 0x001C($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFEC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001D7A8:
# Spawn Particle 0x15 (Wrapper for 8001D750)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a2, $zero              # a3 = 00000000
    jal     func_8001D750
    addiu   a2, $zero, 0x012C          # a2 = 0000012C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001D7CC:
# Spawn Particle 0x15 (Wrapper for 8001D750)
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    jal     func_8001D750
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8001D7F8:
# Spawn Particle 0x16
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lbu     t7, 0x005F($sp)
    sb      $zero, 0x0044($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    sh      t6, 0x003C($sp)
    jal     func_8001B468
    sb      t7, 0x003E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001D864:
# Spawn Particle 0x16
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x004C($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    sw      t6, 0x0040($sp)
    lh      t7, 0x0056($sp)
    lbu     t8, 0x005B($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x0044($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0016          # a1 = 00000016
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    sh      t7, 0x003C($sp)
    jal     func_8001B468
    sb      t8, 0x003E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001D8C8:
# Spawn Particle 0x17
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x004C($sp)
    lh      t6, 0x0052($sp)
    lbu     t7, 0x0057($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0017          # a1 = 00000017
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD8
    sh      t6, 0x003C($sp)
    jal     func_8001B468
    sb      t7, 0x003E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001D930:
# Spawn Particle 0x18
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lw      t7, 0x005C($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFD4
    sh      t6, 0x0040($sp)
    jal     func_8001B468
    sw      t7, 0x0044($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001D998:
# Spawn Particle 0x19
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFC0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFCC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFD8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0064($sp)
    lh      t6, 0x006A($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    sh      t6, 0x003C($sp)
    sh      t7, 0x003E($sp)
    lh      t9, 0x0076($sp)
    lh      t0, 0x007A($sp)
    lh      t1, 0x007E($sp)
    lh      t2, 0x0082($sp)
    lh      t3, 0x0086($sp)
    lw      t4, 0x0088($sp)
    lh      t5, 0x008E($sp)
    lh      t6, 0x0092($sp)
    lw      t7, 0x0094($sp)
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    addiu   a2, $zero, 0x0065          # a2 = 00000065
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFC0
    sh      t8, 0x0040($sp)
    sh      t9, 0x0042($sp)
    sh      t0, 0x0044($sp)
    sh      t1, 0x0046($sp)
    sh      t2, 0x0048($sp)
    sh      t3, 0x004A($sp)
    sw      t4, 0x004C($sp)
    sh      t5, 0x0050($sp)
    sh      t6, 0x0052($sp)
    jal     func_8001B468
    sw      t7, 0x0054($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001DA50:
# Spawn Particle 0x1A
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFD4
    addiu   a0, $sp, 0x002C            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    addiu   a0, $sp, 0x0038            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0058($sp)
    lwc1    $f4, 0x0050($sp)
    lw      t6, 0x005C($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x001A          # a1 = 0000001A
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFD4
    swc1    $f4, 0x0028($sp)
    jal     func_8001B468
    sw      t6, 0x0044($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001DAB8:
# Spawn Particle 0x1A (Wrapper for 8001DA50)
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    mtc1    a2, $f12                   # $f12 = 0.00
    or      s2, a1, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x608C($at)           # 8010608C
    lui     $at, 0x800E                # $at = 800E0000
    lui     s0, 0x800E                 # s0 = 800E0000
    swc1    $f4, 0x7BB4($at)           # 800E7BB4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x6090($at)           # 80106090
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    mul.s   $f8, $f12, $f6
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    lui     s6, 0x800E                 # s6 = 800E0000
    lui     s5, 0x800E                 # s5 = 800E0000
    mul.s   $f26, $f8, $f10
    addiu   s5, s5, 0x7BB0             # s5 = 800E7BB0
    addiu   s6, s6, 0x7C34             # s6 = 800E7C34
    lwc1    $f20, 0x6094($at)          # 80106094
    addiu   s0, s0, 0x7BBC             # s0 = 800E7BBC
    addiu   s4, $sp, 0x0080            # s4 = FFFFFFF0
    addiu   s1, $sp, 0x0074            # s1 = FFFFFFE4
    lw      t7, 0x0000(s2)             # 00000000
lbl_8001DB5C:
    mov.s   $f12, $f22
    sw      t7, 0x0000(s1)             # FFFFFFE4
    lw      t6, 0x0004(s2)             # 00000004
    sw      t6, 0x0004(s1)             # FFFFFFE8
    lw      t7, 0x0008(s2)             # 00000008
    jal     func_80026D64
    sw      t7, 0x0008(s1)             # FFFFFFEC
    lwc1    $f14, 0x0000(s0)           # 800E7BBC
    add.s   $f2, $f0, $f24
    lwc1    $f16, 0x0004(s0)           # 800E7BC0
    mul.s   $f4, $f14, $f20
    lwc1    $f18, 0x0008(s0)           # 800E7BC4
    mov.s   $f12, $f22
    mul.s   $f6, $f4, $f2
    nop
    mul.s   $f8, $f16, $f20
    swc1    $f6, 0x0080($sp)
    mul.s   $f10, $f8, $f2
    lwc1    $f8, 0x0074($sp)
    mul.s   $f4, $f18, $f20
    swc1    $f10, 0x0084($sp)
    add.s   $f10, $f8, $f14
    lwc1    $f8, 0x007C($sp)
    mul.s   $f6, $f4, $f2
    lwc1    $f4, 0x0078($sp)
    swc1    $f10, 0x0074($sp)
    add.s   $f10, $f8, $f18
    swc1    $f6, 0x0088($sp)
    add.s   $f6, $f4, $f16
    swc1    $f10, 0x007C($sp)
    jal     func_80026D64
    swc1    $f6, 0x0078($sp)
    add.s   $f4, $f0, $f24
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    sw      t8, 0x0014($sp)
    or      a0, s3, $zero              # a0 = 00000000
    mul.s   $f6, $f4, $f26
    or      a1, s1, $zero              # a1 = FFFFFFE4
    or      a3, s4, $zero              # a3 = FFFFFFF0
    sw      s5, 0x0010($sp)
    mfc1    a2, $f6
    jal     func_8001DA50
    nop
    addiu   s0, s0, 0x000C             # s0 = 800E7BC8
    bnel    s0, s6, lbl_8001DB5C
    lw      t7, 0x0000(s2)             # 00000000
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_8001DC4C:
# Spawn Particle 0x1B
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a3, 0x0064($sp)
    lw      t6, 0x005C($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80063CAC              # Vec3f_Copy
    sw      t6, 0x001C($sp)
    lw      a0, 0x005C($sp)
    lh      t7, 0x0066($sp)
    lh      t8, 0x006A($sp)
    lh      t9, 0x006E($sp)
    lh      t0, 0x0072($sp)
    lh      t1, 0x0076($sp)
    lh      t2, 0x007A($sp)
    lh      t3, 0x007E($sp)
    lwc1    $f4, 0x0080($sp)
    sh      $zero, 0x0054($sp)
    sb      t7, 0x0048($sp)
    sb      t8, 0x0049($sp)
    sb      t9, 0x004A($sp)
    sb      t0, 0x004B($sp)
    sb      t1, 0x004C($sp)
    sb      t2, 0x004D($sp)
    sb      t3, 0x004E($sp)
    beq     a0, $zero, lbl_8001DCC8
    swc1    $f4, 0x002C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x0874          # a1 = 00000874
lbl_8001DCC8:
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001DCEC:
# Spawn Particle 0x1B
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      a3, 0x0064($sp)
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    lw      t6, 0x005C($sp)
    lh      t0, 0x006A($sp)
    lh      t1, 0x006E($sp)
    sw      t6, 0x001C($sp)
    lh      t7, 0x0000(a2)             # 00000000
    lh      t2, 0x0072($sp)
    lh      t3, 0x0076($sp)
    mtc1    t7, $f4                    # $f4 = 0.00
    lh      t4, 0x007A($sp)
    lh      t5, 0x007E($sp)
    cvt.s.w $f6, $f4
    lwc1    $f4, 0x0080($sp)
    or      a0, t6, $zero              # a0 = 00000000
    swc1    $f6, 0x0020($sp)
    lh      t8, 0x0002(a2)             # 00000002
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0024($sp)
    lh      t9, 0x0004(a2)             # 00000004
    sb      a3, 0x0048($sp)
    sh      $zero, 0x0054($sp)
    mtc1    t9, $f16                   # $f16 = 0.00
    sb      t0, 0x0049($sp)
    sb      t1, 0x004A($sp)
    cvt.s.w $f18, $f16
    sb      t2, 0x004B($sp)
    sb      t3, 0x004C($sp)
    sb      t4, 0x004D($sp)
    sb      t5, 0x004E($sp)
    swc1    $f4, 0x002C($sp)
    beq     t6, $zero, lbl_8001DD94
    swc1    $f18, 0x0028($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x0874          # a1 = 00000874
lbl_8001DD94:
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_8001B468
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001DDB8:
# Spawn Particle 0x1B
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFC8
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFD8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0064($sp)
    addiu   a0, $sp, 0x003C            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0068($sp)
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFF0
    jal     func_800646C8
    lw      a1, 0x006C($sp)
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFF4
    jal     func_800646C8
    lw      a1, 0x0070($sp)
    lwc1    $f4, 0x0060($sp)
    lw      t6, 0x0074($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sh      t7, 0x0054($sp)
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    swc1    $f4, 0x002C($sp)
    jal     func_8001B468
    sw      t6, 0x0050($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001DE40:
# Spawn Particle 0x1C
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0050($sp)
    sw      a1, 0x0054($sp)
    sw      a3, 0x005C($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFD0
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x003E            # a0 = FFFFFFEE
    jal     func_800646C8
    lw      a1, 0x0068($sp)
    addiu   a0, $sp, 0x0042            # a0 = FFFFFFF2
    jal     func_800646C8
    lw      a1, 0x006C($sp)
    lh      t6, 0x0066($sp)
    lw      t7, 0x0054($sp)
    lwc1    $f4, 0x005C($sp)
    lh      t8, 0x0072($sp)
    lh      t9, 0x0076($sp)
    lw      t0, 0x0078($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $zero, 0x001C          # a1 = 0000001C
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFCC
    sh      t6, 0x003C($sp)
    sw      t7, 0x001C($sp)
    swc1    $f4, 0x002C($sp)
    sh      t8, 0x0046($sp)
    sh      t9, 0x0048($sp)
    jal     func_8001B468
    sw      t0, 0x004C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_8001DED8:
# Spawn Particle 0x1C (Wrapper for 8001DE40)
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x0034($sp)
    lwc1    $f12, 0x004C($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    lui     $at, 0x800E                # $at = 800E0000
    sb      $zero, 0x7C36($at)         # 800E7C36
    mul.s   $f6, $f4, $f12
    mfc1    a3, $f14
    lui     t9, 0x800E                 # t9 = 800E0000
    lui     t0, 0x800E                 # t0 = 800E0000
    addiu   t0, t0, 0x7C38             # t0 = 800E7C38
    addiu   t9, t9, 0x7C34             # t9 = 800E7C34
    addiu   t7, a1, 0x005C             # t7 = 0000005C
    trunc.w.s $f8, $f6
    addiu   t8, $zero, 0x000F          # t8 = 0000000F
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    mfc1    v0, $f8
    nop
    sb      v0, 0x7C35($at)            # 800E7C35
    lui     $at, 0x800E                # $at = 800E0000
    sb      $zero, 0x7C39($at)         # 800E7C39
    sb      $zero, 0x7C3A($at)         # 800E7C3A
    sb      v0, 0x7C38($at)            # 800E7C38
    lui     $at, 0x800E                # $at = 800E0000
    sb      v0, 0x7C34($at)            # 800E7C34
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    c.eq.s  $f12, $f10
    nop
    bc1f    lbl_8001DF68
    nop
    beq     $zero, $zero, lbl_8001DF68
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8001DF68:
    lh      t1, 0x004A($sp)
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    sw      t0, 0x001C($sp)
    sw      v0, 0x0020($sp)
    sw      t2, 0x0028($sp)
    jal     func_8001DE40
    sw      t1, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_8001DF9C:
# Spawn Particle 0x1C (Wrapper for 8001DED8)
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    lh      t6, 0x002A($sp)
    lw      a1, 0x1C44(a0)             # 00001C44
    mfc1    a3, $f12
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    a2, a1, t7
    addiu   a2, a2, 0x08F8             # a2 = 000008F8
    swc1    $f14, 0x0014($sp)
    jal     func_8001DED8
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8001DFEC:
# Spawn Particle 0x1D
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    lw      a0, 0x0034($sp)
    lh      t6, 0x003E($sp)
    lh      t7, 0x0042($sp)
    lh      t8, 0x0046($sp)
    lh      t9, 0x004A($sp)
    sw      a0, 0x0018($sp)
    sh      t6, 0x0028($sp)
    sh      t7, 0x002A($sp)
    sh      t8, 0x002C($sp)
    beq     a0, $zero, lbl_8001E040
    sh      t9, 0x002E($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2822          # a1 = 00002822
lbl_8001E040:
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFE8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001E064:
# Spawn Particle 0x1D
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      a3, 0x003C($sp)
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x0000(a2)             # 00000000
    lw      t9, 0x0034($sp)
    lh      t1, 0x0046($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lh      t0, 0x0042($sp)
    lh      t3, 0x004A($sp)
    cvt.s.w $f6, $f4
    ori     t2, t1, 0x8000             # t2 = 00008000
    or      a0, t9, $zero              # a0 = 00000000
    swc1    $f6, 0x001C($sp)
    lh      t7, 0x0002(a2)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0020($sp)
    lh      t8, 0x0004(a2)             # 00000004
    sh      a3, 0x0028($sp)
    sh      t2, 0x002C($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    sw      t9, 0x0018($sp)
    sh      t0, 0x002A($sp)
    cvt.s.w $f18, $f16
    sh      t3, 0x002E($sp)
    beq     t9, $zero, lbl_8001E0EC
    swc1    $f18, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2822          # a1 = 00002822
lbl_8001E0EC:
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x001D          # a1 = 0000001D
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    jal     func_8001B468
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFE8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001E110:
# Spawn Particle 0x1E
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x004C($sp)
    lh      t6, 0x0052($sp)
    lh      t7, 0x0056($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD8
    sh      t6, 0x003C($sp)
    jal     func_8001B468
    sh      t7, 0x003E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_8001E178:
# Spawn Particle 0x1F
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    addiu   a0, $sp, 0x0020            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    or      a1, a2, $zero              # a1 = 00000000
    lw      t6, 0x0034($sp)
    lh      t7, 0x003E($sp)
    lh      t8, 0x0042($sp)
    lw      a0, 0x0030($sp)
    addiu   a1, $zero, 0x001F          # a1 = 0000001F
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFEC
    sw      t6, 0x001C($sp)
    sh      t7, 0x002C($sp)
    jal     func_8001B468
    sh      t8, 0x002E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8001E1D4:
# Spawn Particle 0x20
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    sw      a3, 0x0064($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFC4
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFD0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0060($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0064($sp)
    lh      t6, 0x006A($sp)
    lh      t7, 0x006E($sp)
    lh      t8, 0x0072($sp)
    sh      t6, 0x0040($sp)
    sh      t7, 0x0042($sp)
    lh      t9, 0x0076($sp)
    lh      t0, 0x007A($sp)
    lh      t1, 0x007E($sp)
    lh      t2, 0x0082($sp)
    lh      t3, 0x0086($sp)
    lh      t4, 0x008A($sp)
    lh      t5, 0x008E($sp)
    lw      t6, 0x0090($sp)
    lh      t7, 0x0096($sp)
    lw      a0, 0x0058($sp)
    addiu   a1, $zero, 0x0020          # a1 = 00000020
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFC4
    sb      t8, 0x0044($sp)
    sb      t9, 0x0045($sp)
    sb      t0, 0x0046($sp)
    sb      t1, 0x0047($sp)
    sb      t2, 0x0048($sp)
    sb      t3, 0x0049($sp)
    sb      t4, 0x004A($sp)
    sh      t5, 0x004C($sp)
    sw      t6, 0x0050($sp)
    jal     func_8001B468
    sh      t7, 0x0054($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0058           # $sp = 00000000
    jr      $ra
    nop


func_8001E28C:
# Spawn Particle 0x21
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0060($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFBC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFC8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0068($sp)
    addiu   a0, $sp, 0x0034            # a0 = FFFFFFD4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x006C($sp)
    lh      t6, 0x0072($sp)
    lh      t7, 0x0076($sp)
    lh      t8, 0x007A($sp)
    sh      t6, 0x0040($sp)
    lh      t9, 0x007E($sp)
    lh      t0, 0x0082($sp)
    lh      t1, 0x0086($sp)
    lh      t2, 0x008A($sp)
    lh      t3, 0x008E($sp)
    lh      t4, 0x0092($sp)
    lh      t5, 0x0096($sp)
    lw      t6, 0x0098($sp)
    sb      $zero, 0x005C($sp)
    lw      a0, 0x0060($sp)
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFBC
    sh      t7, 0x0042($sp)
    sb      t8, 0x0044($sp)
    sb      t9, 0x0045($sp)
    sb      t0, 0x0046($sp)
    sb      t1, 0x0047($sp)
    sb      t2, 0x0048($sp)
    sb      t3, 0x0049($sp)
    sb      t4, 0x004A($sp)
    sh      t5, 0x004C($sp)
    jal     func_8001B468
    sw      t6, 0x0050($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_8001E340:
# Spawn Particle 0x21
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0060($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFBC
    lh      t6, 0x006A($sp)
    lh      t7, 0x006E($sp)
    lwc1    $f4, 0x0070($sp)
    lw      t8, 0x0074($sp)
    lw      t9, 0x0078($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x005C($sp)
    lw      a0, 0x0060($sp)
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFBC
    sh      t6, 0x0040($sp)
    sh      t7, 0x0042($sp)
    swc1    $f4, 0x0054($sp)
    sw      t8, 0x0058($sp)
    jal     func_8001B468
    sw      t9, 0x0050($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_8001E3B0:
# Spawn Particle 0x22
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      t6, 0x005A($sp)
    lh      t7, 0x005E($sp)
    lh      t8, 0x0062($sp)
    lw      t9, 0x0064($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0022          # a1 = 00000022
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    sh      t6, 0x003C($sp)
    sh      t7, 0x003E($sp)
    sh      t8, 0x0040($sp)
    jal     func_8001B468
    sw      t9, 0x0044($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001E428:
# Spawn Particle 0x22 (Wrapper for 8001E3B0)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    lui     a2, 0x800E                 # a2 = 800E0000
    addiu   a2, a2, 0x7B50             # a2 = 800E7B50
    sw      $ra, 0x0024($sp)
    sw      a3, 0x0034($sp)
    lh      t6, 0x0032($sp)
    lh      t7, 0x0036($sp)
    lh      t8, 0x003A($sp)
    lw      t9, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 800E7B50
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_8001E3B0
    sw      t9, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001E478:
# Spawn Particle 0x23
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD0
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFDC
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0054($sp)
    lh      v0, 0x005E($sp)
    lhu     t6, 0x005A($sp)
    lh      t7, 0x0062($sp)
    lw      t8, 0x0064($sp)
    sh      v0, 0x003E($sp)
    sh      t6, 0x003C($sp)
    sh      t7, 0x0040($sp)
    bne     v0, $zero, lbl_8001E4EC
    sw      t8, 0x0044($sp)
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_8001B468
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    beq     $zero, $zero, lbl_8001E504
    lw      $ra, 0x0014($sp)
lbl_8001E4EC:
    lw      a0, 0x0048($sp)
    addiu   a1, $zero, 0x0023          # a1 = 00000023
    addiu   a2, $zero, 0x007F          # a2 = 0000007F
    jal     func_8001B468
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD0
    lw      $ra, 0x0014($sp)
lbl_8001E504:
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_8001E510:
# Spawn Particle 0x23 (Wrapper for 8001E478)
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a2, 0x0030($sp)
    lui     a2, 0x800E                 # a2 = 800E0000
    addiu   a2, a2, 0x7B50             # a2 = 800E7B50
    sw      $ra, 0x0024($sp)
    sw      a3, 0x0034($sp)
    lhu     t6, 0x0032($sp)
    lh      t7, 0x0036($sp)
    lh      t8, 0x003A($sp)
    lw      t9, 0x003C($sp)
    or      a3, a2, $zero              # a3 = 800E7B50
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_8001E478
    sw      t9, 0x001C($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_8001E560:
# Spawn Particle 0x24
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFD8
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFE4
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x0048($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    lw      a1, 0x004C($sp)
    lh      t6, 0x0052($sp)
    lw      a0, 0x0040($sp)
    addiu   a1, $zero, 0x0024          # a1 = 00000024
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFD8
    jal     func_8001B468
    sh      t6, 0x003C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop
