# "VR Box (Skybox)" part of the code file
#
# Handles the creation, allocation and monitoring of skyboxes.
#
# Starts at VRAM: 80094660 / VROM: B0A5C0
#

.section .text
func_80094660:
    addiu   $sp, $sp, 0xFBD0           # $sp -= 0x430
    sw      s7, 0x0024($sp)
    sw      s2, 0x0010($sp)
    sw      s0, 0x0008($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a3, $zero              # s2 = 00000000
    lw      s7, 0x0450($sp)
    sw      $ra, 0x002C($sp)
    sw      s8, 0x0028($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s1, 0x000C($sp)
    sw      a1, 0x0434($sp)
    sw      a2, 0x0438($sp)
    sltiu   $at, s7, 0x0006
    beq     $at, $zero, lbl_800949B8
    sll     t6, s7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7490($at)           # 80108B70
    jr      t6
    nop
    lw      t3, 0x0448($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x0440($sp)
    addiu   s3, s3, 0xC2C0             # s3 = 800FC2C0
    addiu   s4, s4, 0xC2CC             # s4 = 800FC2CC
    addiu   a1, $sp, 0x01F0            # a1 = FFFFFDC0
    addiu   a2, $sp, 0x0358            # a2 = FFFFFF28
    addiu   a3, $sp, 0x02A4            # a3 = FFFFFE74
    addiu   t0, $sp, 0x013C            # t0 = FFFFFD0C
    addiu   a0, $sp, 0x0088            # a0 = FFFFFC58
    lw      s5, 0x044C($sp)
    lw      s1, 0x0444($sp)
    addiu   t4, $sp, 0x013C            # t4 = FFFFFD0C
    addu    s6, s2, t3
lbl_800946FC:
    sw      s1, 0x0000(a1)             # FFFFFDC0
    sw      s2, 0x0000(a2)             # FFFFFF28
    sw      t2, 0x0000(a3)             # FFFFFE74
    lui     t7, 0x8010                 # t7 = 80100000
    lh      t7, -0x3D40(t7)            # 800FC2C0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t8, t5,  1
    lh      t1, 0x0000(s4)             # 800FC2CC
    addu    v1, s3, t8
    addu    v0, s6, t3
    sw      v0, 0x0008(a2)             # FFFFFF30
    addu    v0, v0, t3
    sw      t7, 0x0000(t0)             # FFFFFD0C
    lh      t7, 0x0004(v1)             # 00000004
    lh      t6, 0x0002(v1)             # 00000002
    lh      t8, 0x0006(v1)             # 00000006
    lh      t9, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a2)             # FFFFFF34
    addiu   a0, a0, 0x0014             # a0 = FFFFFC6C
    sltu    $at, a0, t4
    addu    v0, v0, t3
    sw      t2, 0x0010(a3)             # FFFFFE84
    sw      t2, 0x000C(a3)             # FFFFFE80
    sw      t2, 0x0008(a3)             # FFFFFE7C
    sw      t2, 0x0004(a3)             # FFFFFE78
    addiu   s4, s4, 0x0002             # s4 = 800FC2CE
    sw      v0, 0x0010(a2)             # FFFFFF38
    sw      s1, 0x0010(a1)             # FFFFFDD0
    sw      s1, 0x000C(a1)             # FFFFFDCC
    sw      s1, 0x0008(a1)             # FFFFFDC8
    addiu   a1, a1, 0x0014             # a1 = FFFFFDD4
    addiu   a2, a2, 0x0014             # a2 = FFFFFF3C
    addiu   a3, a3, 0x0014             # a3 = FFFFFE88
    addiu   t0, t0, 0x0014             # t0 = FFFFFD20
    sw      s1, -0x0010(a1)            # FFFFFDC4
    sw      s6, -0x0010(a2)            # FFFFFF2C
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFC58
    sw      t1, -0x000C(a0)            # FFFFFC60
    sw      t1, -0x0008(a0)            # FFFFFC64
    sw      t1, -0x0004(a0)            # FFFFFC68
    sw      t1, -0x0010(a0)            # FFFFFC5C
    sw      t7, -0x0008(t0)            # FFFFFD18
    sw      t6, -0x000C(t0)            # FFFFFD14
    sw      t8, -0x0004(t0)            # FFFFFD1C
    bne     $at, $zero, lbl_800946FC
    sw      t9, -0x0010(t0)            # FFFFFD10
    b       lbl_800949B8
    nop
    lw      t3, 0x0448($sp)
    lw      s1, 0x0444($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x0440($sp)
    addiu   s3, s3, 0xC2C0             # s3 = 800FC2C0
    addiu   s4, s4, 0xC2CC             # s4 = 800FC2CC
    addiu   a1, $sp, 0x01F0            # a1 = FFFFFDC0
    addiu   a2, $sp, 0x0358            # a2 = FFFFFF28
    addiu   a3, $sp, 0x02A4            # a3 = FFFFFE74
    addiu   t0, $sp, 0x013C            # t0 = FFFFFD0C
    addiu   a0, $sp, 0x0088            # a0 = FFFFFC58
    lw      s5, 0x044C($sp)
    addiu   t4, $sp, 0x013C            # t4 = FFFFFD0C
    addu    s6, s1, t3
lbl_800947FC:
    sw      s2, 0x0000(a2)             # FFFFFF28
    sw      t2, 0x0000(a3)             # FFFFFE74
    sw      s1, 0x0000(a1)             # FFFFFDC0
    lui     t9, 0x8010                 # t9 = 80100000
    lh      t9, -0x3D40(t9)            # 800FC2C0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t6, t5,  1
    lh      t1, 0x0000(s4)             # 800FC2CC
    addu    v1, s3, t6
    addu    v0, s6, t3
    sw      v0, 0x0008(a1)             # FFFFFDC8
    addu    v0, v0, t3
    sw      t9, 0x0000(t0)             # FFFFFD0C
    lh      t9, 0x0004(v1)             # 00000004
    lh      t8, 0x0002(v1)             # 00000002
    lh      t6, 0x0006(v1)             # 00000006
    lh      t7, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a1)             # FFFFFDCC
    addiu   a0, a0, 0x0014             # a0 = FFFFFC6C
    sltu    $at, a0, t4
    addu    v0, v0, t3
    sw      t2, 0x0010(a3)             # FFFFFE84
    sw      t2, 0x000C(a3)             # FFFFFE80
    sw      t2, 0x0008(a3)             # FFFFFE7C
    sw      t2, 0x0004(a3)             # FFFFFE78
    addiu   s4, s4, 0x0002             # s4 = 800FC2CE
    sw      v0, 0x0010(a1)             # FFFFFDD0
    sw      s2, 0x0010(a2)             # FFFFFF38
    sw      s2, 0x000C(a2)             # FFFFFF34
    sw      s2, 0x0008(a2)             # FFFFFF30
    addiu   a1, a1, 0x0014             # a1 = FFFFFDD4
    addiu   a2, a2, 0x0014             # a2 = FFFFFF3C
    addiu   a3, a3, 0x0014             # a3 = FFFFFE88
    addiu   t0, t0, 0x0014             # t0 = FFFFFD20
    sw      s2, -0x0010(a2)            # FFFFFF2C
    sw      s6, -0x0010(a1)            # FFFFFDC4
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFC58
    sw      t1, -0x000C(a0)            # FFFFFC60
    sw      t1, -0x0008(a0)            # FFFFFC64
    sw      t1, -0x0004(a0)            # FFFFFC68
    sw      t1, -0x0010(a0)            # FFFFFC5C
    sw      t9, -0x0008(t0)            # FFFFFD18
    sw      t8, -0x000C(t0)            # FFFFFD14
    sw      t6, -0x0004(t0)            # FFFFFD1C
    bne     $at, $zero, lbl_800947FC
    sw      t7, -0x0010(t0)            # FFFFFD10
    b       lbl_800949B8
    nop
    lw      t3, 0x0448($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x0444($sp)
    addiu   s3, s3, 0xC2C0             # s3 = 800FC2C0
    addiu   s4, s4, 0xC2CC             # s4 = 800FC2CC
    addiu   a1, $sp, 0x01F0            # a1 = FFFFFDC0
    addiu   a2, $sp, 0x0358            # a2 = FFFFFF28
    addiu   a3, $sp, 0x02A4            # a3 = FFFFFE74
    addiu   t0, $sp, 0x013C            # t0 = FFFFFD0C
    addiu   a0, $sp, 0x0088            # a0 = FFFFFC58
    lw      s5, 0x044C($sp)
    addiu   s1, $sp, 0x013C            # s1 = FFFFFD0C
    lw      t4, 0x0440($sp)
    addu    s6, s2, t3
lbl_800948FC:
    sw      t4, 0x0000(a3)             # FFFFFE74
    sw      s2, 0x0000(a2)             # FFFFFF28
    sw      t2, 0x0000(a1)             # FFFFFDC0
    lui     t7, 0x8010                 # t7 = 80100000
    lh      t7, -0x3D40(t7)            # 800FC2C0
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t8, t5,  1
    lh      t1, 0x0000(s4)             # 800FC2CC
    addu    v1, s3, t8
    addu    v0, s6, t3
    sw      v0, 0x0008(a2)             # FFFFFF30
    addu    v0, v0, t3
    sw      t7, 0x0000(t0)             # FFFFFD0C
    lh      t7, 0x0004(v1)             # 00000004
    lh      t6, 0x0002(v1)             # 00000002
    lh      t8, 0x0006(v1)             # 00000006
    lh      t9, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a2)             # FFFFFF34
    addiu   a0, a0, 0x0014             # a0 = FFFFFC6C
    sltu    $at, a0, s1
    addu    v0, v0, t3
    sw      t2, 0x0010(a1)             # FFFFFDD0
    sw      t2, 0x000C(a1)             # FFFFFDCC
    sw      t2, 0x0008(a1)             # FFFFFDC8
    sw      t2, 0x0004(a1)             # FFFFFDC4
    addiu   s4, s4, 0x0002             # s4 = 800FC2CE
    sw      v0, 0x0010(a2)             # FFFFFF38
    sw      t4, 0x0010(a3)             # FFFFFE84
    sw      t4, 0x000C(a3)             # FFFFFE80
    sw      t4, 0x0008(a3)             # FFFFFE7C
    addiu   a1, a1, 0x0014             # a1 = FFFFFDD4
    addiu   a2, a2, 0x0014             # a2 = FFFFFF3C
    addiu   a3, a3, 0x0014             # a3 = FFFFFE88
    addiu   t0, t0, 0x0014             # t0 = FFFFFD20
    sw      t4, -0x0010(a3)            # FFFFFE78
    sw      s6, -0x0010(a2)            # FFFFFF2C
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFC58
    sw      t1, -0x000C(a0)            # FFFFFC60
    sw      t1, -0x0008(a0)            # FFFFFC64
    sw      t1, -0x0004(a0)            # FFFFFC68
    sw      t1, -0x0010(a0)            # FFFFFC5C
    sw      t7, -0x0008(t0)            # FFFFFD18
    sw      t6, -0x000C(t0)            # FFFFFD14
    sw      t8, -0x0004(t0)            # FFFFFD1C
    bne     $at, $zero, lbl_800948FC
    sw      t9, -0x0010(t0)            # FFFFFD10
lbl_800949B8:
    lui     a0, 0x8010                 # a0 = 80100000
    sll     t9, s7,  2
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0xC230             # t6 = 800FC230
    addiu   a0, a0, 0xC240             # a0 = 800FC240
    lui     s5, 0xFD48                 # s5 = FD480000
    ori     s5, s5, 0x00FF             # s5 = FD4800FF
    sw      a0, 0x0054($sp)
    addu    s4, t9, t6
    lui     s7, 0xE600                 # s7 = E6000000
    or      t0, $zero, $zero           # t0 = 00000000
    sw      $zero, 0x0424($sp)
    lui     $ra, 0xE700                # $ra = E7000000
    lui     s8, 0xF400                 # s8 = F4000000
    lui     s6, 0xF548                 # s6 = F5480000
    lui     s3, 0x0700                 # s3 = 07000000
lbl_800949F8:
    lw      t8, 0x0454($sp)
    lw      v1, 0x0424($sp)
    lw      t7, 0x0134(s0)             # 00000134
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t8, v1,  2
    addu    t8, t8, v1
    sll     t8, t8,  2
    subu    t8, t8, v1
    sll     t8, t8,  2
    sll     t9, t9,  4
    subu    t8, t8, v1
    sll     t8, t8,  4
    addu    t6, t7, t9
    lw      a1, 0x0054($sp)
    addu    t7, t6, t8
    sw      t7, 0x0138(s0)             # 00000138
    lw      t6, 0x0438($sp)
    lw      t9, 0x0434($sp)
    or      t1, $zero, $zero           # t1 = 00000000
    sll     t8, t6,  4
    addu    v0, t9, t8
lbl_80094A60:
    lhu     a0, 0x0000(a1)             # FFFFFDD4
    addiu   t1, t1, 0x0001             # t1 = 00000001
    addiu   $at, $zero, 0x0020         # $at = 00000020
    sll     v1, a0,  2
    addu    t7, $sp, v1
    lw      t7, 0x0358(t7)             # 80100358
    addu    t6, $sp, v1
    addu    t9, $sp, v1
    sh      t7, 0x0000(v0)             # 00000000
    lw      t6, 0x02A4(t6)             # 800FC4D4
    addu    t8, $sp, v1
    addu    t7, $sp, v1
    sh      t6, 0x0002(v0)             # 00000002
    lw      t9, 0x01F0(t9)             # 801001F0
    sh      $zero, 0x0006(v0)          # 00000006
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sh      t9, 0x0004(v0)             # 00000004
    lw      t8, 0x013C(t8)             # 0000013C
    addiu   a1, a1, 0x0002             # a1 = FFFFFDD6
    addiu   v0, v0, 0x0010             # v0 = 00000010
    sh      t8, -0x0008(v0)            # 00000008
    lw      t7, 0x0088(t7)             # 80100088
    sb      $zero, -0x0003(v0)         # 0000000D
    sb      $zero, -0x0002(v0)         # 0000000E
    sb      t6, -0x0004(v0)            # 0000000C
    bne     t1, $at, lbl_80094A60
    sh      t7, -0x0006(v0)            # 0000000A
    lw      a1, 0x0438($sp)
    lw      v0, 0x0138(s0)             # 00000138
    lui     t8, 0x0102                 # t8 = 01020000
    ori     t8, t8, 0x0040             # t8 = 01020040
    addiu   t9, v0, 0x0008             # t9 = 00000018
    sw      t9, 0x0138(s0)             # 00000138
    sw      t8, 0x0000(v0)             # 00000010
    lw      t6, 0x0434($sp)
    sll     t7, a1,  4
    addu    a1, a1, t1
    addu    t9, t7, t6
    sw      t9, 0x0004(v0)             # 00000014
    lw      v0, 0x0138(s0)             # 00000138
    lui     t7, 0x0300                 # t7 = 03000000
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    addiu   t8, v0, 0x0008             # t8 = 00000018
    sw      t8, 0x0138(s0)             # 00000138
    sw      t6, 0x0004(v0)             # 00000014
    sw      t7, 0x0000(v0)             # 00000010
    or      s2, $zero, $zero           # s2 = 00000000
    sh      $zero, 0x0412($sp)
    sw      a1, 0x0438($sp)
lbl_80094B24:
    addiu   v0, t0, 0x001F             # v0 = 0000001F
    sll     s1, v0,  2
    sll     t5, t0,  2
    andi    t5, t5, 0x0FFF             # t5 = 00000001
    andi    s1, s1, 0x0FFF             # s1 = 00000D0C
    sw      v0, 0x0034($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
lbl_80094B44:
    lw      v0, 0x0138(s0)             # 00000138
    sll     t2, a2,  2
    andi    t2, t2, 0x0FFF             # t2 = 00000000
    addiu   t9, v0, 0x0008             # t9 = 00000027
    sw      t9, 0x0138(s0)             # 00000138
    sw      s5, 0x0000(v0)             # 0000001F
    lw      t7, 0x0128(s0)             # 00000128
    lw      t8, 0x0000(s4)             # 800FC2CE
    sll     t2, t2, 12
    addiu   t3, a2, 0x003F             # t3 = 0000003F
    addu    t6, t8, t7
    sw      t6, 0x0004(v0)             # 00000023
    lw      v0, 0x0138(s0)             # 00000138
    subu    t8, a2, a2
    addiu   t7, t8, 0x0047             # t7 = 0000005F
    addiu   t9, v0, 0x0008             # t9 = 00000027
    sw      t9, 0x0138(s0)             # 00000138
    sra     t6, t7,  3
    andi    t9, t6, 0x01FF             # t9 = 0000001E
    sll     t8, t9,  9
    or      t0, t8, s6                 # t0 = F5480018
    sw      t0, 0x0000(v0)             # 0000001F
    sw      s3, 0x0004(v0)             # 00000023
    lw      v0, 0x0138(s0)             # 00000138
    or      t9, t2, s8                 # t9 = F4000000
    or      t8, t9, t5                 # t8 = F4000001
    addiu   t7, v0, 0x0008             # t7 = 00000027
    sw      t7, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v0)          # 00000023
    sw      s7, 0x0000(v0)             # 0000001F
    lw      v0, 0x0138(s0)             # 00000138
    sll     t4, t3,  2
    andi    t4, t4, 0x0FFF             # t4 = 00000D0C
    addiu   t6, v0, 0x0008             # t6 = 00000027
    sw      t6, 0x0138(s0)             # 00000138
    sll     t4, t4, 12
    or      t7, t4, s3                 # t7 = 07000D0C
    or      t6, t7, s1                 # t6 = 07000D0C
    sw      t6, 0x0004(v0)             # 00000023
    sw      t8, 0x0000(v0)             # 0000001F
    lw      v0, 0x0138(s0)             # 00000138
    lui     $at, 0xF200                # $at = F2000000
    or      t6, t2, $at                # t6 = F2000000
    addiu   t9, v0, 0x0008             # t9 = 00000027
    sw      t9, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v0)          # 00000023
    sw      $ra, 0x0000(v0)            # 0000001F
    lw      v0, 0x0138(s0)             # 00000138
    addiu   a3, a3, 0x0001             # a3 = 00000001
    sll     a3, a3, 16
    addiu   t8, v0, 0x0008             # t8 = 00000027
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v0)          # 00000023
    sw      t0, 0x0000(v0)             # 0000001F
    lw      v0, 0x0138(s0)             # 00000138
    or      t9, t6, t5                 # t9 = F2000001
    or      t8, t4, s1                 # t8 = 00000D0C
    addiu   t7, v0, 0x0008             # t7 = 00000027
    sw      t7, 0x0138(s0)             # 00000138
    sw      t8, 0x0004(v0)             # 00000023
    sw      t9, 0x0000(v0)             # 0000001F
    lw      v0, 0x0138(s0)             # 00000138
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xC2E0             # t9 = 800FC2E0
    sll     t6, s2,  1
    addiu   t7, v0, 0x0008             # t7 = 00000027
    sw      t7, 0x0138(s0)             # 00000138
    addu    v1, t6, t9
    lh      t8, 0x0004(v1)             # 00000004
    lh      t9, 0x0000(v1)             # 00000000
    sll     a2, t3, 16
    sll     t7, t8,  1
    andi    t6, t7, 0x00FF             # t6 = 00000027
    sll     t8, t9,  1
    andi    t7, t8, 0x00FF             # t7 = 0000000C
    sll     t9, t7, 16
    lh      t7, 0x0002(v1)             # 00000002
    or      t8, t6, t9                 # t8 = 800FC2E7
    sra     a2, a2, 16
    sll     t6, t7,  1
    andi    t9, t6, 0x00FF             # t9 = 00000027
    sll     t7, t9,  8
    or      t6, t8, t7                 # t6 = 800FC2EF
    or      t9, t6, s3                 # t9 = 870FC2EF
    sw      t9, 0x0000(v0)             # 0000001F
    lh      t8, 0x0006(v1)             # 00000006
    lh      t9, 0x0000(v1)             # 00000000
    addiu   s2, s2, 0x0004             # s2 = 00000004
    sll     t7, t8,  1
    andi    t6, t7, 0x00FF             # t6 = 0000000C
    sll     t8, t9,  1
    andi    t7, t8, 0x00FF             # t7 = 000000E7
    sll     t9, t7, 16
    lh      t7, 0x0004(v1)             # 00000004
    or      t8, t6, t9                 # t8 = 870FC2EF
    sra     a3, a3, 16
    sll     t6, t7,  1
    andi    t9, t6, 0x00FF             # t9 = 0000000C
    sll     t7, t9,  8
    or      t6, t8, t7                 # t6 = 870FC2EF
    sw      t6, 0x0004(v0)             # 00000023
    sll     s2, s2, 16
    slti    $at, a3, 0x0004
    bne     $at, $zero, lbl_80094B44
    sra     s2, s2, 16
    lh      v0, 0x0412($sp)
    lh      t0, 0x0036($sp)
    addiu   v0, v0, 0x0001             # v0 = 00000020
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    bne     $at, $zero, lbl_80094B24
    sh      v0, 0x0412($sp)
    lw      a0, 0x0424($sp)
    lw      v0, 0x0138(s0)             # 00000138
    lui     t8, 0xDF00                 # t8 = DF000000
    addiu   a0, a0, 0x0001             # a0 = 800FC241
    addiu   t9, v0, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v0)          # 00000024
    sw      t8, 0x0000(v0)             # 00000020
    lw      t7, 0x0054($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sw      a0, 0x0424($sp)
    addiu   t6, t7, 0x0040             # t6 = 00000127
    bne     a0, $at, lbl_800949F8
    sw      t6, 0x0054($sp)
    lw      v0, 0x0438($sp)
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
    addiu   $sp, $sp, 0x0430           # $sp += 0x430


func_80094D74:
    addiu   $sp, $sp, 0xFCC8           # $sp -= 0x338
    sw      s8, 0x0028($sp)
    sw      s7, 0x0024($sp)
    sw      s2, 0x0010($sp)
    sw      s0, 0x0008($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a3, $zero              # s2 = 00000000
    lw      s7, 0x0358($sp)
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s6, 0x0020($sp)
    sw      s5, 0x001C($sp)
    sw      s4, 0x0018($sp)
    sw      s3, 0x0014($sp)
    sw      s1, 0x000C($sp)
    sw      a2, 0x0340($sp)
    sltiu   $at, s7, 0x0006
    beq     $at, $zero, lbl_800950CC
    sll     t6, s7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7478($at)           # 80108B88
    jr      t6
    nop
    lw      t3, 0x0350($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x0348($sp)
    addiu   s3, s3, 0xC3B8             # s3 = 800FC3B8
    addiu   s4, s4, 0xC3D0             # s4 = 800FC3D0
    addiu   a1, $sp, 0x01EC            # a1 = FFFFFEB4
    addiu   a2, $sp, 0x02B4            # a2 = FFFFFF7C
    addiu   a3, $sp, 0x0250            # a3 = FFFFFF18
    addiu   t0, $sp, 0x0188            # t0 = FFFFFE50
    addiu   a0, $sp, 0x0124            # a0 = FFFFFDEC
    lw      s5, 0x0354($sp)
    lw      s1, 0x034C($sp)
    addiu   t4, $sp, 0x0188            # t4 = FFFFFE50
    addu    s6, s2, t3
lbl_80094E10:
    sw      s1, 0x0000(a1)             # FFFFFEB4
    sw      s2, 0x0000(a2)             # FFFFFF7C
    sw      t2, 0x0000(a3)             # FFFFFF18
    lui     t7, 0x8010                 # t7 = 80100000
    lh      t7, -0x3C48(t7)            # 800FC3B8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t8, t5,  1
    lh      t1, 0x0000(s4)             # 800FC3D0
    addu    v1, s3, t8
    addu    v0, s6, t3
    sw      v0, 0x0008(a2)             # FFFFFF84
    addu    v0, v0, t3
    sw      t7, 0x0000(t0)             # FFFFFE50
    lh      t7, 0x0004(v1)             # 00000004
    lh      t6, 0x0002(v1)             # 00000002
    lh      t8, 0x0006(v1)             # 00000006
    lh      t9, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a2)             # FFFFFF88
    addiu   a0, a0, 0x0014             # a0 = FFFFFE00
    sltu    $at, a0, t4
    addu    v0, v0, t3
    sw      t2, 0x0010(a3)             # FFFFFF28
    sw      t2, 0x000C(a3)             # FFFFFF24
    sw      t2, 0x0008(a3)             # FFFFFF20
    sw      t2, 0x0004(a3)             # FFFFFF1C
    addiu   s4, s4, 0x0002             # s4 = 800FC3D2
    sw      v0, 0x0010(a2)             # FFFFFF8C
    sw      s1, 0x0010(a1)             # FFFFFEC4
    sw      s1, 0x000C(a1)             # FFFFFEC0
    sw      s1, 0x0008(a1)             # FFFFFEBC
    addiu   a1, a1, 0x0014             # a1 = FFFFFEC8
    addiu   a2, a2, 0x0014             # a2 = FFFFFF90
    addiu   a3, a3, 0x0014             # a3 = FFFFFF2C
    addiu   t0, t0, 0x0014             # t0 = FFFFFE64
    sw      s1, -0x0010(a1)            # FFFFFEB8
    sw      s6, -0x0010(a2)            # FFFFFF80
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFDEC
    sw      t1, -0x000C(a0)            # FFFFFDF4
    sw      t1, -0x0008(a0)            # FFFFFDF8
    sw      t1, -0x0004(a0)            # FFFFFDFC
    sw      t1, -0x0010(a0)            # FFFFFDF0
    sw      t7, -0x0008(t0)            # FFFFFE5C
    sw      t6, -0x000C(t0)            # FFFFFE58
    sw      t8, -0x0004(t0)            # FFFFFE60
    bne     $at, $zero, lbl_80094E10
    sw      t9, -0x0010(t0)            # FFFFFE54
    b       lbl_800950D0
    sll     t6, s7,  2
    lw      t3, 0x0350($sp)
    lw      s1, 0x034C($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x0348($sp)
    addiu   s3, s3, 0xC3B8             # s3 = 800FC3B8
    addiu   s4, s4, 0xC3D0             # s4 = 800FC3D0
    addiu   a1, $sp, 0x01EC            # a1 = FFFFFEB4
    addiu   a2, $sp, 0x02B4            # a2 = FFFFFF7C
    addiu   a3, $sp, 0x0250            # a3 = FFFFFF18
    addiu   t0, $sp, 0x0188            # t0 = FFFFFE50
    addiu   a0, $sp, 0x0124            # a0 = FFFFFDEC
    lw      s5, 0x0354($sp)
    addiu   t4, $sp, 0x0188            # t4 = FFFFFE50
    addu    s6, s1, t3
lbl_80094F10:
    sw      s2, 0x0000(a2)             # FFFFFF7C
    sw      t2, 0x0000(a3)             # FFFFFF18
    sw      s1, 0x0000(a1)             # FFFFFEB4
    lui     t9, 0x8010                 # t9 = 80100000
    lh      t9, -0x3C48(t9)            # 800FC3B8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t6, t5,  1
    lh      t1, 0x0000(s4)             # 800FC3D0
    addu    v1, s3, t6
    addu    v0, s6, t3
    sw      v0, 0x0008(a1)             # FFFFFEBC
    addu    v0, v0, t3
    sw      t9, 0x0000(t0)             # FFFFFE50
    lh      t9, 0x0004(v1)             # 00000004
    lh      t8, 0x0002(v1)             # 00000002
    lh      t6, 0x0006(v1)             # 00000006
    lh      t7, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a1)             # FFFFFEC0
    addiu   a0, a0, 0x0014             # a0 = FFFFFE00
    sltu    $at, a0, t4
    addu    v0, v0, t3
    sw      t2, 0x0010(a3)             # FFFFFF28
    sw      t2, 0x000C(a3)             # FFFFFF24
    sw      t2, 0x0008(a3)             # FFFFFF20
    sw      t2, 0x0004(a3)             # FFFFFF1C
    addiu   s4, s4, 0x0002             # s4 = 800FC3D2
    sw      v0, 0x0010(a1)             # FFFFFEC4
    sw      s2, 0x0010(a2)             # FFFFFF8C
    sw      s2, 0x000C(a2)             # FFFFFF88
    sw      s2, 0x0008(a2)             # FFFFFF84
    addiu   a1, a1, 0x0014             # a1 = FFFFFEC8
    addiu   a2, a2, 0x0014             # a2 = FFFFFF90
    addiu   a3, a3, 0x0014             # a3 = FFFFFF2C
    addiu   t0, t0, 0x0014             # t0 = FFFFFE64
    sw      s2, -0x0010(a2)            # FFFFFF80
    sw      s6, -0x0010(a1)            # FFFFFEB8
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFDEC
    sw      t1, -0x000C(a0)            # FFFFFDF4
    sw      t1, -0x0008(a0)            # FFFFFDF8
    sw      t1, -0x0004(a0)            # FFFFFDFC
    sw      t1, -0x0010(a0)            # FFFFFDF0
    sw      t9, -0x0008(t0)            # FFFFFE5C
    sw      t8, -0x000C(t0)            # FFFFFE58
    sw      t6, -0x0004(t0)            # FFFFFE60
    bne     $at, $zero, lbl_80094F10
    sw      t7, -0x0010(t0)            # FFFFFE54
    b       lbl_800950D0
    sll     t6, s7,  2
    lw      t3, 0x0350($sp)
    lui     s4, 0x8010                 # s4 = 80100000
    lui     s3, 0x8010                 # s3 = 80100000
    lw      t2, 0x034C($sp)
    addiu   s3, s3, 0xC3B8             # s3 = 800FC3B8
    addiu   s4, s4, 0xC3C4             # s4 = 800FC3C4
    addiu   a1, $sp, 0x01EC            # a1 = FFFFFEB4
    addiu   a2, $sp, 0x02B4            # a2 = FFFFFF7C
    addiu   a3, $sp, 0x0250            # a3 = FFFFFF18
    addiu   t0, $sp, 0x0188            # t0 = FFFFFE50
    addiu   a0, $sp, 0x0124            # a0 = FFFFFDEC
    lw      s5, 0x0354($sp)
    addiu   s1, $sp, 0x0188            # s1 = FFFFFE50
    lw      t4, 0x0348($sp)
    addu    s6, s2, t3
lbl_80095010:
    sw      t4, 0x0000(a3)             # FFFFFF18
    sw      s2, 0x0000(a2)             # FFFFFF7C
    sw      t2, 0x0000(a1)             # FFFFFEB4
    lui     t7, 0x8010                 # t7 = 80100000
    lh      t7, -0x3C48(t7)            # 800FC3B8
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     t8, t5,  1
    lh      t1, 0x0000(s4)             # 800FC3C4
    addu    v1, s3, t8
    addu    v0, s6, t3
    sw      v0, 0x0008(a2)             # FFFFFF84
    addu    v0, v0, t3
    sw      t7, 0x0000(t0)             # FFFFFE50
    lh      t7, 0x0004(v1)             # 00000004
    lh      t6, 0x0002(v1)             # 00000002
    lh      t8, 0x0006(v1)             # 00000006
    lh      t9, 0x0000(v1)             # 00000000
    sw      v0, 0x000C(a2)             # FFFFFF88
    addiu   a0, a0, 0x0014             # a0 = FFFFFE00
    sltu    $at, a0, s1
    addu    v0, v0, t3
    sw      t2, 0x0010(a1)             # FFFFFEC4
    sw      t2, 0x000C(a1)             # FFFFFEC0
    sw      t2, 0x0008(a1)             # FFFFFEBC
    sw      t2, 0x0004(a1)             # FFFFFEB8
    addiu   s4, s4, 0x0002             # s4 = 800FC3C6
    sw      v0, 0x0010(a2)             # FFFFFF8C
    sw      t4, 0x0010(a3)             # FFFFFF28
    sw      t4, 0x000C(a3)             # FFFFFF24
    sw      t4, 0x0008(a3)             # FFFFFF20
    addiu   a1, a1, 0x0014             # a1 = FFFFFEC8
    addiu   a2, a2, 0x0014             # a2 = FFFFFF90
    addiu   a3, a3, 0x0014             # a3 = FFFFFF2C
    addiu   t0, t0, 0x0014             # t0 = FFFFFE64
    sw      t4, -0x0010(a3)            # FFFFFF1C
    sw      s6, -0x0010(a2)            # FFFFFF80
    addu    t2, t2, s5
    sw      t1, -0x0014(a0)            # FFFFFDEC
    sw      t1, -0x000C(a0)            # FFFFFDF4
    sw      t1, -0x0008(a0)            # FFFFFDF8
    sw      t1, -0x0004(a0)            # FFFFFDFC
    sw      t1, -0x0010(a0)            # FFFFFDF0
    sw      t7, -0x0008(t0)            # FFFFFE5C
    sw      t6, -0x000C(t0)            # FFFFFE58
    sw      t8, -0x0004(t0)            # FFFFFE60
    bne     $at, $zero, lbl_80095010
    sw      t9, -0x0010(t0)            # FFFFFE54
lbl_800950CC:
    sll     t6, s7,  2
lbl_800950D0:
    addu    t6, t6, s7
    sll     t6, t6,  2
    subu    t6, t6, s7
    lw      a0, 0x0340($sp)
    lw      t9, 0x0134(s0)             # 00000134
    sll     t6, t6,  2
    subu    t6, t6, s7
    sll     t6, t6,  5
    lui     a1, 0x8010                 # a1 = 80100000
    sll     t8, a0,  4
    addu    t7, t9, t6
    sw      t7, 0x0138(s0)             # 00000138
    addu    a2, s8, t8
    addiu   a1, a1, 0xC378             # a1 = 800FC378
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s1, $zero, 0x0020          # s1 = 00000020
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t4, $sp, 0x0124            # t4 = FFFFFDEC
    addiu   t3, $sp, 0x0188            # t3 = FFFFFE50
    addiu   t2, $sp, 0x01EC            # t2 = FFFFFEB4
    addiu   t1, $sp, 0x0250            # t1 = FFFFFF18
    addiu   t0, $sp, 0x02B4            # t0 = FFFFFF7C
lbl_80095128:
    lhu     v1, 0x0000(a1)             # 800FC378
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   a1, a1, 0x0002             # a1 = 800FC37A
    sll     a3, v1,  2
    addu    t9, t0, a3
    lw      t6, 0x0000(t9)             # 80100000
    addu    t7, t1, a3
    addu    t9, t2, a3
    sh      t6, 0x0000(a2)             # FFFFFF90
    lw      t8, 0x0000(t7)             # 80100000
    addu    t7, t3, a3
    addiu   a2, a2, 0x0010             # a2 = FFFFFFA0
    sh      t8, -0x000E(a2)            # FFFFFF92
    lw      t6, 0x0000(t9)             # 80100000
    sh      $zero, -0x000A(a2)         # FFFFFF96
    addu    t9, t4, a3
    sh      t6, -0x000C(a2)            # FFFFFF94
    lw      t8, 0x0000(t7)             # 80100000
    sh      t8, -0x0008(a2)            # FFFFFF98
    lw      t6, 0x0000(t9)             # 80100000
    sb      $zero, -0x0003(a2)         # FFFFFF9D
    sb      $zero, -0x0002(a2)         # FFFFFF9E
    sb      t5, -0x0004(a2)            # FFFFFF9C
    bne     v0, s1, lbl_80095128
    sh      t6, -0x0006(a2)            # FFFFFF9A
    lw      v1, 0x0138(s0)             # 00000138
    lui     t8, 0x0102                 # t8 = 01020000
    sll     t9, a0,  4
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0138(s0)             # 00000138
    addu    t6, t9, s8
    ori     t8, t8, 0x0040             # t8 = 01020040
    sw      t8, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    addu    a0, a0, v0
    lw      v1, 0x0138(s0)             # 00000138
    lui     t8, 0x0300                 # t8 = 03000000
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0138(s0)             # 00000138
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     s7, $at, lbl_800951E8
    or      s5, $zero, $zero           # s5 = 00000000
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     s7, $at, lbl_800954C8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_800951E8:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xC360             # t7 = 800FC360
    sll     t6, s7,  2
    addu    t8, t6, t7
    lui     s6, 0xFD48                 # s6 = FD480000
    ori     s6, s6, 0x007F             # s6 = FD48007F
    sw      t8, 0x0058($sp)
    lui     s7, 0xE600                 # s7 = E6000000
    sh      $zero, 0x031E($sp)
    sh      $zero, 0x0320($sp)
    sw      a0, 0x0340($sp)
    lui     $ra, 0x0100                # $ra = 01000000
    lui     s8, 0xE700                 # s8 = E7000000
    lui     s3, 0x0700                 # s3 = 07000000
lbl_80095220:
    lh      v0, 0x0320($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      t5, $zero, $zero           # t5 = 00000000
    addiu   v1, v0, 0x001F             # v1 = 00000020
    sll     s1, v1,  2
    sll     s4, v0,  2
    andi    s4, s4, 0x0FFF             # s4 = 000003C6
    andi    s1, s1, 0x0FFF             # s1 = 00000020
    sw      v1, 0x003C($sp)
lbl_80095244:
    lw      v1, 0x0138(s0)             # 00000138
    subu    v0, a0, a0
    addiu   v0, v0, 0x0027             # v0 = 00000028
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000020
    lw      t6, 0x0058($sp)
    lw      t8, 0x0128(s0)             # 00000128
    sra     v0, v0,  3
    lw      t7, 0x0000(t6)             # 00000000
    andi    v0, v0, 0x01FF             # v0 = 00000028
    sll     v0, v0,  9
    addu    t9, t7, t8
    sw      t9, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF548                # $at = F5480000
    or      v0, v0, $at                # v0 = F5480028
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000024
    sw      v0, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    sll     a1, a0,  2
    andi    a1, a1, 0x0FFF             # a1 = 0000037A
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s7, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t4, a0, 0x001F             # t4 = 0000001F
    sll     a3, t4,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000F2C
    sll     a3, a3, 12
    sll     a1, a1, 12
    lui     $at, 0xF400                # $at = F4000000
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    or      t9, a1, $at                # t9 = F400037A
    or      t6, a3, s3                 # t6 = 07000F2C
    or      t0, t6, s1                 # t0 = 07000F2C
    or      a2, t9, s4                 # a2 = F40003FE
    sw      a2, 0x0000(v1)             # 00000020
    sw      t0, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF200                # $at = F2000000
    or      t6, a1, $at                # t6 = F200037A
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s8, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t5, t5, 0x0001             # t5 = 00000001
    sll     t5, t5, 16
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      v0, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    or      t1, t6, s4                 # t1 = F20003FE
    or      t7, a3, s1                 # t7 = 00000F2C
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      t7, 0x0004(v1)             # 00000024
    sw      t1, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    sra     t5, t5, 16
    sll     a0, t4, 16
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000020
    lw      t9, 0x0058($sp)
    lw      t7, 0x012C(s0)             # 0000012C
    sra     a0, a0, 16
    lw      t6, 0x0000(t9)             # 00000028
    slti    $at, t5, 0x0004
    addu    t8, t6, t7
    sw      t8, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    ori     t3, v0, 0x0080             # t3 = F54800A8
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000024
    sw      t3, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s7, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      t0, 0x0004(v1)             # 00000024
    sw      a2, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s8, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      $ra, 0x0004(v1)            # 00000024
    sw      t3, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    or      t7, a3, $ra                # t7 = 01000F2C
    or      t8, t7, s1                 # t8 = 01000F2C
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      t8, 0x0004(v1)             # 00000024
    sw      t1, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xC3DC             # t7 = 800FC3DC
    sll     t6, s5,  1
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    addu    v0, t6, t7
    lh      t8, 0x0004(v0)             # F548002C
    lh      t7, 0x0000(v0)             # F5480028
    addiu   s5, s5, 0x0004             # s5 = 00000004
    sll     t9, t8,  1
    andi    t6, t9, 0x00FF             # t6 = 00000028
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 0000002C
    sll     t7, t9, 16
    lh      t9, 0x0002(v0)             # F548002A
    or      t8, t6, t7                 # t8 = 800FC3FC
    sll     s5, s5, 16
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 00000028
    sll     t9, t7,  8
    or      t6, t8, t9                 # t6 = 800FC3FC
    or      t7, t6, s3                 # t7 = 870FC3FC
    sw      t7, 0x0000(v1)             # 00000020
    lh      t8, 0x0006(v0)             # F548002E
    lh      t7, 0x0000(v0)             # F5480028
    sll     t9, t8,  1
    andi    t6, t9, 0x00FF             # t6 = 0000002C
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 000000FC
    sll     t7, t9, 16
    lh      t9, 0x0004(v0)             # F548002C
    or      t8, t6, t7                 # t8 = 870FC3FC
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 0000002C
    sll     t9, t7,  8
    or      t6, t8, t9                 # t6 = 870FC3FC
    sw      t6, 0x0004(v1)             # 00000024
    bne     $at, $zero, lbl_80095244
    sra     s5, s5, 16
    lh      v0, 0x031E($sp)
    lw      t7, 0x003C($sp)
    addiu   v0, v0, 0x0001             # v0 = F5480029
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0004
    sh      v0, 0x031E($sp)
    bne     $at, $zero, lbl_80095220
    sh      t7, 0x0320($sp)
    b       lbl_80095A54
    lw      v1, 0x0138(s0)             # 00000138
lbl_800954C8:
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xC360             # t9 = 800FC360
    sll     t8, s7,  2
    addu    t6, t8, t9
    lui     s6, 0xFD48                 # s6 = FD480000
    ori     s6, s6, 0x007F             # s6 = FD48007F
    sw      t6, 0x0058($sp)
    lui     s7, 0xE600                 # s7 = E6000000
    or      s5, $zero, $zero           # s5 = 00000000
    sh      $zero, 0x031E($sp)
    sw      a0, 0x0340($sp)
    lui     $ra, 0x0100                # $ra = 01000000
    lui     s8, 0xE700                 # s8 = E7000000
    lui     s3, 0x0700                 # s3 = 07000000
lbl_80095500:
    addiu   v0, v1, 0x001F             # v0 = 0000003F
    sll     s1, v0,  2
    sll     s4, v1,  2
    andi    s4, s4, 0x0FFF             # s4 = 000003C6
    andi    s1, s1, 0x0FFF             # s1 = 00000020
    sw      v0, 0x003C($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      t5, $zero, $zero           # t5 = 00000000
lbl_80095520:
    lw      v1, 0x0138(s0)             # 00000138
    subu    v0, a0, a0
    addiu   v0, v0, 0x0027             # v0 = 00000066
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000020
    lw      t8, 0x0058($sp)
    lw      t6, 0x0128(s0)             # 00000128
    sra     v0, v0,  3
    lw      t9, 0x0000(t8)             # 870FC3FC
    andi    v0, v0, 0x01FF             # v0 = 00000066
    sll     v0, v0,  9
    addu    t7, t9, t6
    sw      t7, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF548                # $at = F5480000
    or      v0, v0, $at                # v0 = F5480066
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000024
    sw      v0, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    sll     a1, a0,  2
    andi    a1, a1, 0x0FFF             # a1 = 0000037A
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s7, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t4, a0, 0x001F             # t4 = 0000001F
    sll     a3, t4,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000F2C
    sll     a3, a3, 12
    sll     a1, a1, 12
    lui     $at, 0xF400                # $at = F4000000
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    or      t7, a1, $at                # t7 = F400037A
    or      t8, a3, s3                 # t8 = 07000F2C
    or      t0, t8, s1                 # t0 = 07000F2C
    or      a2, t7, s4                 # a2 = F40003FE
    sw      a2, 0x0000(v1)             # 00000020
    sw      t0, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF200                # $at = F2000000
    or      t8, a1, $at                # t8 = F200037A
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s8, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t5, t5, 0x0001             # t5 = 00000001
    sll     t5, t5, 16
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      v0, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    or      t1, t8, s4                 # t1 = F20003FE
    or      t9, a3, s1                 # t9 = 00000F2C
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      t9, 0x0004(v1)             # 00000024
    sw      t1, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    sra     t5, t5, 16
    sll     a0, t4, 16
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000020
    lw      t7, 0x0058($sp)
    lw      t9, 0x012C(s0)             # 0000012C
    sra     a0, a0, 16
    lw      t8, 0x0000(t7)             # 00000028
    slti    $at, t5, 0x0004
    addu    t6, t8, t9
    sw      t6, 0x0004(v1)             # 00000024
    lw      v1, 0x0138(s0)             # 00000138
    ori     t3, v0, 0x0080             # t3 = F54800E6
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000024
    sw      t3, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s7, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t9, v1, 0x0008             # t9 = 00000028
    sw      t9, 0x0138(s0)             # 00000138
    sw      t0, 0x0004(v1)             # 00000024
    sw      a2, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t6, v1, 0x0008             # t6 = 00000028
    sw      t6, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000024
    sw      s8, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    sw      $ra, 0x0004(v1)            # 00000024
    sw      t3, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    or      t9, a3, $ra                # t9 = 01000F2C
    or      t6, t9, s1                 # t6 = 01000F2C
    addiu   t8, v1, 0x0008             # t8 = 00000028
    sw      t8, 0x0138(s0)             # 00000138
    sw      t6, 0x0004(v1)             # 00000024
    sw      t1, 0x0000(v1)             # 00000020
    lw      v1, 0x0138(s0)             # 00000138
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0xC3DC             # t9 = 800FC3DC
    sll     t8, s5,  1
    addiu   t7, v1, 0x0008             # t7 = 00000028
    sw      t7, 0x0138(s0)             # 00000138
    addu    v0, t8, t9
    lh      t6, 0x0004(v0)             # F548006A
    lh      t9, 0x0000(v0)             # F5480066
    addiu   s5, s5, 0x0004             # s5 = 00000004
    sll     t7, t6,  1
    andi    t8, t7, 0x00FF             # t8 = 00000028
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 0000002C
    sll     t9, t7, 16
    lh      t7, 0x0002(v0)             # F5480068
    or      t6, t8, t9                 # t6 = 800FC3FC
    sll     s5, s5, 16
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 00000028
    sll     t7, t9,  8
    or      t8, t6, t7                 # t8 = 800FC3FC
    or      t9, t8, s3                 # t9 = 870FC3FC
    sw      t9, 0x0000(v1)             # 00000020
    lh      t6, 0x0006(v0)             # F548006C
    lh      t9, 0x0000(v0)             # F5480066
    sll     t7, t6,  1
    andi    t8, t7, 0x00FF             # t8 = 0000002C
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 000000FC
    sll     t9, t7, 16
    lh      t7, 0x0004(v0)             # F548006A
    or      t6, t8, t9                 # t6 = 870FC3FC
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 0000002C
    sll     t7, t9,  8
    or      t8, t6, t7                 # t8 = 870FC3FC
    sw      t8, 0x0004(v1)             # 00000024
    bne     $at, $zero, lbl_80095520
    sra     s5, s5, 16
    lh      v0, 0x031E($sp)
    lh      v1, 0x003E($sp)
    addiu   v0, v0, 0x0001             # v0 = F5480067
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0002
    sh      v0, 0x031E($sp)
    bne     $at, $zero, lbl_80095500
    sh      v1, 0x0320($sp)
    addiu   v1, v1, 0xFFE1             # v1 = 00000001
    sll     v1, v1, 16
    sra     v1, v1, 16
    sh      v1, 0x0320($sp)
    sh      $zero, 0x031E($sp)
lbl_800957B0:
    lh      v1, 0x0320($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    or      t5, $zero, $zero           # t5 = 00000000
    addiu   s1, v1, 0x001F             # s1 = 00000020
    sll     s1, s1,  2
    sll     s4, v1,  2
    andi    s4, s4, 0x0FFF             # s4 = 000003C6
    andi    s1, s1, 0x0FFF             # s1 = 00000020
lbl_800957D0:
    lw      v1, 0x0138(s0)             # 00000138
    subu    v0, a0, a0
    addiu   v0, v0, 0x0027             # v0 = F548008E
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000001
    lw      t6, 0x0058($sp)
    lw      t8, 0x0128(s0)             # 00000128
    sra     v0, v0,  3
    lw      t7, 0x0000(t6)             # 870FC3FC
    andi    v0, v0, 0x01FF             # v0 = 0000008E
    sll     v0, v0,  9
    addu    t9, t7, t8
    sw      t9, 0x0004(v1)             # 00000005
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF548                # $at = F5480000
    or      v0, v0, $at                # v0 = F548008E
    addiu   t6, v1, 0x0008             # t6 = 00000009
    sw      t6, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000005
    sw      v0, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    sll     a1, a0,  2
    andi    a1, a1, 0x0FFF             # a1 = 0000037A
    addiu   t7, v1, 0x0008             # t7 = 00000009
    sw      t7, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      s7, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t4, a0, 0x001F             # t4 = 0000001F
    sll     a3, t4,  2
    andi    a3, a3, 0x0FFF             # a3 = 00000F2C
    sll     a3, a3, 12
    sll     a1, a1, 12
    lui     $at, 0xF400                # $at = F4000000
    addiu   t8, v1, 0x0008             # t8 = 00000009
    sw      t8, 0x0138(s0)             # 00000138
    or      t9, a1, $at                # t9 = F400037A
    or      t6, a3, s3                 # t6 = 07000F2C
    or      t0, t6, s1                 # t0 = 07000F2C
    or      a2, t9, s4                 # a2 = F40003FE
    sw      a2, 0x0000(v1)             # 00000001
    sw      t0, 0x0004(v1)             # 00000005
    lw      v1, 0x0138(s0)             # 00000138
    lui     $at, 0xF200                # $at = F2000000
    or      t6, a1, $at                # t6 = F200037A
    addiu   t7, v1, 0x0008             # t7 = 00000009
    sw      t7, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      s8, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t5, t5, 0x0001             # t5 = 00000001
    sll     t5, t5, 16
    addiu   t8, v1, 0x0008             # t8 = 00000009
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      v0, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    or      t1, t6, s4                 # t1 = F20003FE
    or      t7, a3, s1                 # t7 = 00000F2C
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    sw      t7, 0x0004(v1)             # 00000005
    sw      t1, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    sra     t5, t5, 16
    sll     a0, t4, 16
    addiu   t8, v1, 0x0008             # t8 = 00000009
    sw      t8, 0x0138(s0)             # 00000138
    sw      s6, 0x0000(v1)             # 00000001
    lw      t9, 0x0058($sp)
    lw      t7, 0x012C(s0)             # 0000012C
    sra     a0, a0, 16
    lw      t6, 0x0000(t9)             # 00000009
    slti    $at, t5, 0x0004
    addu    t8, t6, t7
    sw      t8, 0x0004(v1)             # 00000005
    lw      v1, 0x0138(s0)             # 00000138
    ori     t3, v0, 0x0080             # t3 = F548008E
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    sw      s3, 0x0004(v1)             # 00000005
    sw      t3, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t6, v1, 0x0008             # t6 = 00000009
    sw      t6, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      s7, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t7, v1, 0x0008             # t7 = 00000009
    sw      t7, 0x0138(s0)             # 00000138
    sw      t0, 0x0004(v1)             # 00000005
    sw      a2, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t8, v1, 0x0008             # t8 = 00000009
    sw      t8, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      s8, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    sw      $ra, 0x0004(v1)            # 00000005
    sw      t3, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    or      t7, a3, $ra                # t7 = 01000F2C
    or      t8, t7, s1                 # t8 = 01000F2C
    addiu   t6, v1, 0x0008             # t6 = 00000009
    sw      t6, 0x0138(s0)             # 00000138
    sw      t8, 0x0004(v1)             # 00000005
    sw      t1, 0x0000(v1)             # 00000001
    lw      v1, 0x0138(s0)             # 00000138
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0xC3DC             # t7 = 800FC3DC
    sll     t6, s5,  1
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    addu    v0, t6, t7
    lh      t8, 0x0004(v0)             # F5480092
    lh      t7, 0x0000(v0)             # F548008E
    addiu   s5, s5, 0x0004             # s5 = 00000008
    sll     t9, t8,  1
    andi    t6, t9, 0x00FF             # t6 = 00000009
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 0000002C
    sll     t7, t9, 16
    lh      t9, 0x0002(v0)             # F5480090
    or      t8, t6, t7                 # t8 = 800FC3DD
    sll     s5, s5, 16
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 00000009
    sll     t9, t7,  8
    or      t6, t8, t9                 # t6 = 800FC3FD
    or      t7, t6, s3                 # t7 = 870FC3FD
    sw      t7, 0x0000(v1)             # 00000001
    lh      t8, 0x0006(v0)             # F5480094
    lh      t7, 0x0000(v0)             # F548008E
    sll     t9, t8,  1
    andi    t6, t9, 0x00FF             # t6 = 0000002C
    sll     t8, t7,  1
    andi    t9, t8, 0x00FF             # t9 = 000000DD
    sll     t7, t9, 16
    lh      t9, 0x0004(v0)             # F5480092
    or      t8, t6, t7                 # t8 = 870FC3FD
    sll     t6, t9,  1
    andi    t7, t6, 0x00FF             # t7 = 0000002C
    sll     t9, t7,  8
    or      t6, t8, t9                 # t6 = 870FC3FD
    sw      t6, 0x0004(v1)             # 00000005
    bne     $at, $zero, lbl_800957D0
    sra     s5, s5, 16
    lh      v0, 0x031E($sp)
    lh      t7, 0x0320($sp)
    addiu   v0, v0, 0x0001             # v0 = F548008F
    sll     v0, v0, 16
    sra     v0, v0, 16
    slti    $at, v0, 0x0002
    addiu   t8, t7, 0xFFE1             # t8 = 0000000D
    sh      t8, 0x0320($sp)
    bne     $at, $zero, lbl_800957B0
    sh      v0, 0x031E($sp)
    lw      v1, 0x0138(s0)             # 00000138
lbl_80095A54:
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   t9, v1, 0x0008             # t9 = 00000009
    sw      t9, 0x0138(s0)             # 00000138
    sw      $zero, 0x0004(v1)          # 00000005
    sw      t6, 0x0000(v1)             # 00000001
    lw      v0, 0x0340($sp)
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
    addiu   $sp, $sp, 0x0338           # $sp += 0x338


func_80095A9C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      a1, 0x004C($sp)
    sll     a1, a1, 16
    sw      s5, 0x0040($sp)
    sw      s4, 0x003C($sp)
    or      s4, a0, $zero              # s4 = 00000000
    addiu   s5, $zero, 0x0002          # s5 = 00000002
    sra     a1, a1, 16
    sw      $ra, 0x0044($sp)
    sw      s3, 0x0038($sp)
    sw      s2, 0x0034($sp)
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    beq     a1, s5, lbl_80095AE8
    or      s3, $zero, $zero           # s3 = 00000000
    slti    $at, a1, 0x0011
    bne     $at, $zero, lbl_80095B50
    slti    $at, a1, 0x0019
    beq     $at, $zero, lbl_80095B50
lbl_80095AE8:
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   s0, s0, 0xC45C             # s0 = 800FC45C
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80095AF8:
    lw      a1, 0x013C(s4)             # 0000013C
    lw      t6, 0x0004(s0)             # 800FC460
    lw      t7, 0x0008(s0)             # 800FC464
    lw      t8, 0x000C(s0)             # 800FC468
    lw      t9, 0x0010(s0)             # 800FC46C
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    lw      a3, 0x0000(s0)             # 800FC45C
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_80094660
    sw      t9, 0x001C($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0014             # s0 = 800FC470
    addiu   s2, s2, 0x0002             # s2 = 00000002
    bne     s1, s5, lbl_80095AF8
    or      s3, v0, $zero              # s3 = 00000000
    b       lbl_80095C2C
    lw      $ra, 0x0044($sp)
lbl_80095B50:
    lh      t0, 0x0140(s4)             # 00000140
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    bne     s5, t0, lbl_80095BD0
    lui     s0, 0x8010                 # s0 = 80100000
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   s0, s0, 0xC45C             # s0 = 800FC45C
    or      s2, $zero, $zero           # s2 = 00000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s5, $zero, 0x0003          # s5 = 00000003
lbl_80095B78:
    lw      a1, 0x013C(s4)             # 0000013C
    lw      t1, 0x0004(s0)             # 800FC460
    lw      t2, 0x0008(s0)             # 800FC464
    lw      t3, 0x000C(s0)             # 800FC468
    lw      t4, 0x0010(s0)             # 800FC46C
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    lw      a3, 0x0000(s0)             # 800FC45C
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    sw      t3, 0x0018($sp)
    jal     func_80094660
    sw      t4, 0x001C($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0014             # s0 = 800FC470
    addiu   s2, s2, 0x0002             # s2 = 00000002
    bne     s1, s5, lbl_80095B78
    or      s3, v0, $zero              # s3 = 00000000
    b       lbl_80095C2C
    lw      $ra, 0x0044($sp)
lbl_80095BD0:
    addiu   s0, s0, 0xC45C             # s0 = 800F88CC
    addiu   s5, $zero, 0x0004          # s5 = 00000004
lbl_80095BD8:
    lw      a1, 0x013C(s4)             # 0000013C
    lw      t5, 0x0004(s0)             # 800F88D0
    lw      t6, 0x0008(s0)             # 800F88D4
    lw      t7, 0x000C(s0)             # 800F88D8
    lw      t8, 0x0010(s0)             # 800F88DC
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    or      a0, s4, $zero              # a0 = 00000000
    or      a2, s3, $zero              # a2 = 00000000
    lw      a3, 0x0000(s0)             # 800F88CC
    sw      t5, 0x0010($sp)
    sw      t6, 0x0014($sp)
    sw      t7, 0x0018($sp)
    jal     func_80094660
    sw      t8, 0x001C($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addiu   s0, s0, 0x0014             # s0 = 800F88E0
    addiu   s2, s2, 0x0002             # s2 = 00000004
    bne     s1, s5, lbl_80095BD8
    or      s3, v0, $zero              # s3 = 00000000
    lw      $ra, 0x0044($sp)
lbl_80095C2C:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    lw      s4, 0x003C($sp)
    lw      s5, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80095C4C:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    blez    s4, lbl_80095CCC
    or      s1, $zero, $zero           # s1 = 00000000
    lui     s0, 0x8010                 # s0 = 80100000
    addiu   s0, s0, 0xC4AC             # s0 = 800FC4AC
lbl_80095C84:
    lw      a1, 0x013C(s3)             # 0000013C
    lw      t6, 0x0004(s0)             # 800FC4B0
    lw      t7, 0x0008(s0)             # 800FC4B4
    lw      t8, 0x000C(s0)             # 800FC4B8
    lw      t9, 0x0010(s0)             # 800FC4BC
    sw      s1, 0x0020($sp)
    or      a0, s3, $zero              # a0 = 00000000
    or      a2, s2, $zero              # a2 = 00000000
    lw      a3, 0x0000(s0)             # 800FC4AC
    sw      t6, 0x0010($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0018($sp)
    jal     func_80094D74
    sw      t9, 0x001C($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0014             # s0 = 800FC4C0
    bne     s1, s4, lbl_80095C84
    or      s2, v0, $zero              # s2 = 00000000
lbl_80095CCC:
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80095CEC:
# Related to loading Skyboxes into memory?
# ROM st & ed: All the prerenders and their palettes
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a2, 0x0048($sp)
    sll     a2, a2, 16
    sw      s1, 0x0018($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   t6, a2, 0xFFFF             # t6 = FFFFFFFF
    sltiu   $at, t6, 0x0027
    beq     $at, $zero, lbl_80096E2C
    sw      a3, 0x0040($sp)
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7460($at)           # 80108BA0
    jr      t6
    nop
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    lbu     t7, 0x13C3(t0)             # 8011B993
    lw      t1, 0x0040($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    beq     t7, $zero, lbl_80095D80
    lui     t2, 0x800F                 # t2 = 800F0000
    lw      t8, 0x1360(t0)             # 8011B930
    lui     v0, 0x800F                 # v0 = 800F0000
    slti    $at, t8, 0x0004
    beql    $at, $zero, lbl_80095D84
    sll     t9, v1,  3
    lbu     v0, 0x1640(v0)             # 800F1640
    blez    v0, lbl_80095D80
    slti    $at, v0, 0x0006
    beql    $at, $zero, lbl_80095D84
    sll     t9, v1,  3
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_80095D80:
    sll     t9, v1,  3
lbl_80095D84:
    addu    t9, t9, v1
    sll     t9, t9,  3
    addiu   t2, t2, 0x172C             # t2 = 800F172C
    addu    a1, t9, t2
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     a0, 0x141A(t0)             # 8011B9EA
    ori     a2, $zero, 0xFFFF          # a2 = 0000FFFF
    sll     t3, v0,  3
lbl_80095DA4:
    addu    a3, a1, t3
    lhu     t4, 0x0000(a3)             # 00000000
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    slt     $at, a0, t4
    bne     $at, $zero, lbl_80095ED0
    sra     v0, v0, 16
    lhu     v1, 0x0002(a3)             # 00000002
    slt     $at, a0, v1
    bnel    $at, $zero, lbl_80095DDC
    lbu     t6, 0x0005(a3)             # 00000005
    bnel    a2, v1, lbl_80095ED4
    slti    $at, v0, 0x0009
    lbu     t6, 0x0005(a3)             # 00000005
lbl_80095DDC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    sb      t6, 0x0039($sp)
    sb      t6, 0x0A34($at)            # 00010A34
    lbu     t8, 0x0006(a3)             # 00000006
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    sb      t8, 0x0038($sp)
    sb      t8, 0x0A35($at)            # 00010A35
    lbu     t9, 0x0004(a3)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    beq     t9, $zero, lbl_80095EC8
    nop
    lhu     a2, 0x141A(t0)             # 8011B9EA
    lhu     a0, 0x0002(a3)             # 00000002
    jal     func_8005C690
    lhu     a1, 0x0000(a3)             # 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4
    lw      t1, 0x0040($sp)
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_80095EA8
    mfc1    t3, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_80095E9C
    nop
    mfc1    t3, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80095EB4
    or      t3, t3, $at                # t3 = 80000000
lbl_80095E9C:
    b       lbl_80095EB4
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8
lbl_80095EA8:
    nop
    bltz    t3, lbl_80095E9C
    nop
lbl_80095EB4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t1
    ctc1    t2, $f31
    b       lbl_80095EDC
    sb      t3, 0x0A37($at)            # 00010A37
lbl_80095EC8:
    b       lbl_80095EDC
    sb      $zero, 0x0A37($at)         # 00010A37
lbl_80095ED0:
    slti    $at, v0, 0x0009
lbl_80095ED4:
    bnel    $at, $zero, lbl_80095DA4
    sll     t3, v0,  3
lbl_80095EDC:
    lbu     t4, 0x0039($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x184C             # t6 = 800F184C
    sll     t5, t4,  4
    addu    v0, t5, t6
    lw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0000(v0)             # 00000000
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    subu    a1, t7, t8
    sw      a1, 0x003C($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x003C($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      t9, 0x0028($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    lw      a1, 0x0000(t9)             # 00000000
    lbu     t2, 0x0038($sp)
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t4, t4, 0x184C             # t4 = 800F184C
    sll     t3, t2,  4
    addu    v1, t3, t4
    lw      t5, 0x0004(v1)             # 00000004
    lw      t6, 0x0000(v1)             # 00000000
    sw      v1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000074
    subu    a1, t5, t6
    jal     func_800A01B8
    sw      a1, 0x003C($sp)
    lw      a2, 0x003C($sp)
    sw      v0, 0x012C(s1)             # 0000012C
    lw      t7, 0x0020($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    lw      a1, 0x0000(t7)             # 00000000
    lbu     v1, 0x0039($sp)
    lw      v0, 0x0028($sp)
    andi    t9, v1, 0x0004             # t9 = 00000000
    sra     t2, t9,  2
    andi    t8, v1, 0x0001             # t8 = 00000000
    beql    t8, t2, lbl_80095FE8
    lw      t8, 0x000C(v0)             # 0000000C
    lw      v0, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000074
    lw      t4, 0x000C(v0)             # 0000000C
    lw      t5, 0x0008(v0)             # 00000008
    subu    a2, t4, t5
    sll     a1, a2,  1
    jal     func_800A01B8
    sw      a2, 0x003C($sp)
    lw      a2, 0x003C($sp)
    sw      v0, 0x0130(s1)             # 00000130
    lw      t6, 0x0028($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    lw      a1, 0x0008(t6)             # 00000008
    lw      a2, 0x003C($sp)
    lw      t7, 0x0130(s1)             # 00000130
    lw      t9, 0x0020($sp)
    addu    a0, t7, a2
    jal     func_80000DF0
    lw      a1, 0x0008(t9)             # 00000008
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t8, 0x000C(v0)             # 0000000C
lbl_80095FE8:
    lw      t2, 0x0008(v0)             # 00000008
    or      a0, s0, $zero              # a0 = 00000074
    subu    a2, t8, t2
    sll     a1, a2,  1
    jal     func_800A01B8
    sw      a2, 0x003C($sp)
    lw      a2, 0x003C($sp)
    sw      v0, 0x0130(s1)             # 00000130
    lw      t3, 0x0020($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    lw      a1, 0x0008(t3)             # 00000008
    lw      a2, 0x003C($sp)
    lw      t4, 0x0130(s1)             # 00000130
    lw      t5, 0x0028($sp)
    addu    a0, t4, a2
    jal     func_80000DF0
    lw      a1, 0x0008(t5)             # 00000008
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01CA                 # a3 = 01CA0000
    lui     t7, 0x01CC                 # t7 = 01CC0000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, 0x2000             # t7 = 01CC2000
    addiu   a3, a3, 0x2000             # a3 = 01CA2000
    sh      t6, 0x0140(s1)             # 00000140
    subu    a2, t7, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01CC                 # a3 = 01CC0000
    lui     t9, 0x01CC                 # t9 = 01CC0000
    addiu   t9, t9, 0x2400             # t9 = 01CC2400
    addiu   a3, a3, 0x2000             # a3 = 01CC2000
    subu    a2, t9, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x73C4($at)         # 80108C3C
    b       lbl_80096E2C
    swc1    $f10, 0x0148(s1)           # 00000148
    lw      t1, 0x0040($sp)
    lui     v0, 0x01A9                 # v0 = 01A90000
    lui     t8, 0x01AA                 # t8 = 01AA0000
    addiu   t8, t8, 0xA000             # t8 = 01A9A000
    addiu   v0, v0, 0xE000             # v0 = 01A8E000
    subu    a1, t8, v0
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    sw      a1, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000074
    jal     func_800A01B8
    lw      a1, 0x0020($sp)
    sw      v0, 0x012C(s1)             # 0000012C
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     v1, 0x01AA                 # v1 = 01AA0000
    lui     t2, 0x01AA                 # t2 = 01AA0000
    addiu   t2, t2, 0xA100             # t2 = 01A9A100
    addiu   v1, v1, 0xA000             # v1 = 01A9A000
    subu    a2, t2, v1
    sll     a1, a2,  1
    sw      a2, 0x0020($sp)
    sw      v1, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      s0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0130(s1)             # 00000130
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80000DF0
    or      a1, s0, $zero              # a1 = 00000074
    lw      a2, 0x0020($sp)
    lw      t3, 0x0130(s1)             # 00000130
    or      a1, s0, $zero              # a1 = 00000074
    jal     func_80000DF0
    addu    a0, t3, a2
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01B5                 # a3 = 01B50000
    lui     t5, 0x01B9                 # t5 = 01B90000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t5, 0xC000             # t5 = 01B8C000
    addiu   a3, a3, 0xC000             # a3 = 01B4C000
    sh      t4, 0x0140(s1)             # 00000140
    subu    a2, t5, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01B9                 # a3 = 01B90000
    lui     t6, 0x01B9                 # t6 = 01B90000
    addiu   t6, t6, 0xC800             # t6 = 01B8C800
    addiu   a3, a3, 0xC000             # a3 = 01B8C000
    subu    a2, t6, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01AB                 # a3 = 01AB0000
    lui     t7, 0x01AC                 # t7 = 01AC0000
    addiu   t7, t7, 0x8000             # t7 = 01AB8000
    addiu   a3, a3, 0x8000             # a3 = 01AA8000
    subu    a2, t7, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01AC                 # a3 = 01AC0000
    lui     t9, 0x01AD                 # t9 = 01AD0000
    addiu   t9, t9, 0x9000             # t9 = 01AC9000
    addiu   a3, a3, 0x9000             # a3 = 01AB9000
    subu    a2, t9, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x012C(s1)             # 0000012C
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01AC                 # a3 = 01AC0000
    lui     t8, 0x01AC                 # t8 = 01AC0000
    addiu   t8, t8, 0x8100             # t8 = 01AB8100
    addiu   a3, a3, 0x8000             # a3 = 01AB8000
    subu    a2, t8, a3
    sll     a1, a2,  1
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lw      a2, 0x0020($sp)
    lw      t2, 0x0130(s1)             # 00000130
    lui     a1, 0x01AD                 # a1 = 01AD0000
    addiu   a1, a1, 0x9000             # a1 = 01AC9000
    jal     func_80000DF0
    addu    a0, t2, a2
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01B9                 # a3 = 01B90000
    lui     t4, 0x01BD                 # t4 = 01BD0000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, t4, 0xD000             # t4 = 01BCD000
    addiu   a3, a3, 0xD000             # a3 = 01B8D000
    sh      t3, 0x0140(s1)             # 00000140
    subu    a2, t4, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01BD                 # a3 = 01BD0000
    lui     t5, 0x01BD                 # t5 = 01BD0000
    addiu   t5, t5, 0xD800             # t5 = 01BCD800
    addiu   a3, a3, 0xD000             # a3 = 01BCD000
    subu    a2, t5, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01AD                 # a3 = 01AD0000
    lui     t7, 0x01B1                 # t7 = 01B10000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, 0xA000             # t7 = 01B0A000
    addiu   a3, a3, 0xA000             # a3 = 01ACA000
    sh      t6, 0x0140(s1)             # 00000140
    subu    a2, t7, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01B1                 # a3 = 01B10000
    lui     t9, 0x01B1                 # t9 = 01B10000
    addiu   t9, t9, 0xA800             # t9 = 01B0A800
    addiu   a3, a3, 0xA000             # a3 = 01B0A000
    subu    a2, t9, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01B1                 # a3 = 01B10000
    lui     t2, 0x01B5                 # t2 = 01B50000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t2, t2, 0xB000             # t2 = 01B4B000
    addiu   a3, a3, 0xB000             # a3 = 01B0B000
    sh      t8, 0x0140(s1)             # 00000140
    subu    a2, t2, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01B5                 # a3 = 01B50000
    lui     t3, 0x01B5                 # t3 = 01B50000
    addiu   t3, t3, 0xB800             # t3 = 01B4B800
    addiu   a3, a3, 0xB000             # a3 = 01B4B000
    subu    a2, t3, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lw      t1, 0x0040($sp)
    lui     a3, 0x01EF                 # a3 = 01EF0000
    lui     t5, 0x01F1                 # t5 = 01F10000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t5, 0xF000             # t5 = 01F0F000
    addiu   a3, a3, 0xF000             # a3 = 01EEF000
    sh      t4, 0x0140(s1)             # 00000140
    subu    a2, t5, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01F1                 # a3 = 01F10000
    lui     t6, 0x01F1                 # t6 = 01F10000
    addiu   t6, t6, 0xF400             # t6 = 01F0F400
    addiu   a3, a3, 0xF000             # a3 = 01F0F000
    subu    a2, t6, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x73C0($at)         # 80108C40
    b       lbl_80096E2C
    swc1    $f16, 0x0148(s1)           # 00000148
    lw      t1, 0x0040($sp)
    lui     a3, 0x01BD                 # a3 = 01BD0000
    lui     t9, 0x01C1                 # t9 = 01C10000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, t9, 0xE000             # t9 = 01C0E000
    addiu   a3, a3, 0xE000             # a3 = 01BCE000
    sh      t7, 0x0140(s1)             # 00000140
    subu    a2, t9, a3
    addiu   s0, t1, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      a3, 0x0028($sp)
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0128(s1)             # 00000128
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01C1                 # a3 = 01C10000
    lui     t8, 0x01C1                 # t8 = 01C10000
    addiu   t8, t8, 0xE800             # t8 = 01C0E800
    addiu   a3, a3, 0xE000             # a3 = 01C0E000
    subu    a2, t8, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01C1                 # v0 = 01C10000
    lui     t3, 0x01C4                 # t3 = 01C40000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t3, t3, 0xF000             # t3 = 01C3F000
    addiu   v0, v0, 0xF000             # v0 = 01C0F000
    sh      t2, 0x0140(s1)             # 00000140
    subu    a2, t3, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01C4                 # a3 = 01C40000
    lui     t4, 0x01C4                 # t4 = 01C40000
    addiu   t4, t4, 0xF600             # t4 = 01C3F600
    addiu   a3, a3, 0xF000             # a3 = 01C3F000
    subu    a2, t4, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01CC                 # v0 = 01CC0000
    lui     t6, 0x01D0                 # t6 = 01D00000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, t6, 0x3000             # t6 = 01D03000
    addiu   v0, v0, 0x3000             # v0 = 01CC3000
    sh      t5, 0x0140(s1)             # 00000140
    subu    a2, t6, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01D0                 # a3 = 01D00000
    lui     t7, 0x01D0                 # t7 = 01D00000
    addiu   t7, t7, 0x3800             # t7 = 01D03800
    addiu   a3, a3, 0x3000             # a3 = 01D03000
    subu    a2, t7, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01D0                 # v0 = 01D00000
    lui     t8, 0x01D4                 # t8 = 01D40000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, t8, 0x4000             # t8 = 01D44000
    addiu   v0, v0, 0x4000             # v0 = 01D04000
    sh      t9, 0x0140(s1)             # 00000140
    subu    a2, t8, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01D4                 # a3 = 01D40000
    lui     t2, 0x01D4                 # t2 = 01D40000
    addiu   t2, t2, 0x4800             # t2 = 01D44800
    addiu   a3, a3, 0x4000             # a3 = 01D44000
    subu    a2, t2, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01DB                 # v0 = 01DB0000
    lui     t4, 0x01DD                 # t4 = 01DD0000
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, t4, 0x7000             # t4 = 01DD7000
    addiu   v0, v0, 0x7000             # v0 = 01DB7000
    sh      t3, 0x0140(s1)             # 00000140
    subu    a2, t4, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01DD                 # a3 = 01DD0000
    lui     t5, 0x01DD                 # t5 = 01DD0000
    addiu   t5, t5, 0x7400             # t5 = 01DD7400
    addiu   a3, a3, 0x7000             # a3 = 01DD7000
    subu    a2, t5, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x73BC($at)         # 80108C44
    b       lbl_80096E2C
    swc1    $f18, 0x0148(s1)           # 00000148
    lui     v0, 0x01DE                 # v0 = 01DE0000
    lui     t7, 0x01E0                 # t7 = 01E00000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, t7, 0x8000             # t7 = 01DF8000
    addiu   v0, v0, 0x8000             # v0 = 01DD8000
    sh      t6, 0x0140(s1)             # 00000140
    subu    a2, t7, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01E0                 # a3 = 01E00000
    lui     t9, 0x01E0                 # t9 = 01E00000
    addiu   t9, t9, 0x8400             # t9 = 01DF8400
    addiu   a3, a3, 0x8000             # a3 = 01DF8000
    subu    a2, t9, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x73B8($at)          # 80108C48
    b       lbl_80096E2C
    swc1    $f4, 0x0148(s1)            # 00000148
    lui     v0, 0x01E0                 # v0 = 01E00000
    lui     t2, 0x01E2                 # t2 = 01E20000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t2, t2, 0x9000             # t2 = 01E19000
    addiu   v0, v0, 0x9000             # v0 = 01DF9000
    sh      t8, 0x0140(s1)             # 00000140
    subu    a2, t2, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01E2                 # a3 = 01E20000
    lui     t3, 0x01E2                 # t3 = 01E20000
    addiu   t3, t3, 0x9400             # t3 = 01E19400
    addiu   a3, a3, 0x9000             # a3 = 01E19000
    subu    a2, t3, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x73B4($at)          # 80108C4C
    b       lbl_80096E2C
    swc1    $f6, 0x0148(s1)            # 00000148
    lui     v0, 0x01E2                 # v0 = 01E20000
    lui     t5, 0x01E4                 # t5 = 01E40000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, t5, 0xA000             # t5 = 01E3A000
    addiu   v0, v0, 0xA000             # v0 = 01E1A000
    sh      t4, 0x0140(s1)             # 00000140
    subu    a2, t5, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01E4                 # a3 = 01E40000
    lui     t6, 0x01E4                 # t6 = 01E40000
    addiu   t6, t6, 0xA400             # t6 = 01E3A400
    addiu   a3, a3, 0xA000             # a3 = 01E3A000
    subu    a2, t6, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x73B0($at)          # 80108C50
    b       lbl_80096E2C
    swc1    $f8, 0x0148(s1)            # 00000148
    lui     v0, 0x01E4                 # v0 = 01E40000
    lui     t9, 0x01E6                 # t9 = 01E60000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t9, t9, 0xB000             # t9 = 01E5B000
    addiu   v0, v0, 0xB000             # v0 = 01E3B000
    sh      t7, 0x0140(s1)             # 00000140
    subu    a2, t9, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01E6                 # a3 = 01E60000
    lui     t8, 0x01E6                 # t8 = 01E60000
    addiu   t8, t8, 0xB400             # t8 = 01E5B400
    addiu   a3, a3, 0xB000             # a3 = 01E5B000
    subu    a2, t8, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x73AC($at)         # 80108C54
    b       lbl_80096E2C
    swc1    $f10, 0x0148(s1)           # 00000148
    lui     v0, 0x01E6                 # v0 = 01E60000
    lui     t3, 0x01E8                 # t3 = 01E80000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t3, t3, 0xC000             # t3 = 01E7C000
    addiu   v0, v0, 0xC000             # v0 = 01E5C000
    sh      t2, 0x0140(s1)             # 00000140
    subu    a2, t3, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01E8                 # a3 = 01E80000
    lui     t4, 0x01E8                 # t4 = 01E80000
    addiu   t4, t4, 0xC400             # t4 = 01E7C400
    addiu   a3, a3, 0xC000             # a3 = 01E7C000
    subu    a2, t4, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x73A8($at)         # 80108C58
    b       lbl_80096E2C
    swc1    $f16, 0x0148(s1)           # 00000148
    lui     v0, 0x01D7                 # v0 = 01D70000
    lui     t6, 0x01DB                 # t6 = 01DB0000
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, t6, 0x6000             # t6 = 01DB6000
    addiu   v0, v0, 0x6000             # v0 = 01D76000
    sh      t5, 0x0140(s1)             # 00000140
    subu    a2, t6, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01DB                 # a3 = 01DB0000
    lui     t7, 0x01DB                 # t7 = 01DB0000
    addiu   t7, t7, 0x6800             # t7 = 01DB6800
    addiu   a3, a3, 0x6000             # a3 = 01DB6000
    subu    a2, t7, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01E8                 # v0 = 01E80000
    lui     t8, 0x01EC                 # t8 = 01EC0000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t8, t8, 0xD000             # t8 = 01EBD000
    addiu   v0, v0, 0xD000             # v0 = 01E7D000
    sh      t9, 0x0140(s1)             # 00000140
    subu    a2, t8, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01EC                 # a3 = 01EC0000
    lui     t2, 0x01EC                 # t2 = 01EC0000
    addiu   t2, t2, 0xD800             # t2 = 01EBD800
    addiu   a3, a3, 0xD000             # a3 = 01EBD000
    subu    a2, t2, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01EC                 # v0 = 01EC0000
    lui     t4, 0x01EF                 # t4 = 01EF0000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, t4, 0xE000             # t4 = 01EEE000
    addiu   v0, v0, 0xE000             # v0 = 01EBE000
    sh      t3, 0x0140(s1)             # 00000140
    subu    a2, t4, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01EF                 # a3 = 01EF0000
    lui     t5, 0x01EF                 # t5 = 01EF0000
    addiu   t5, t5, 0xE600             # t5 = 01EEE600
    addiu   a3, a3, 0xE000             # a3 = 01EEE000
    subu    a2, t5, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01C4                 # v0 = 01C40000
    lui     t7, 0x01C7                 # t7 = 01C70000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, t7, 0x0000             # t7 = 01C70000
    addiu   v0, v0, 0x0000             # v0 = 01C40000
    sh      t6, 0x0140(s1)             # 00000140
    subu    a2, t7, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01C7                 # a3 = 01C70000
    lui     t9, 0x01C7                 # t9 = 01C70000
    addiu   t9, t9, 0x0600             # t9 = 01C70600
    addiu   a3, a3, 0x0000             # a3 = 01C70000
    subu    a2, t9, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01C7                 # v0 = 01C70000
    lui     t2, 0x01CA                 # t2 = 01CA0000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    addiu   t2, t2, 0x1000             # t2 = 01CA1000
    addiu   v0, v0, 0x1000             # v0 = 01C71000
    sh      t8, 0x0140(s1)             # 00000140
    subu    a2, t2, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01CA                 # a3 = 01CA0000
    lui     t3, 0x01CA                 # t3 = 01CA0000
    addiu   t3, t3, 0x1600             # t3 = 01CA1600
    addiu   a3, a3, 0x1000             # a3 = 01CA1000
    subu    a2, t3, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    b       lbl_80096E30
    lw      $ra, 0x001C($sp)
    lui     v0, 0x01D4                 # v0 = 01D40000
    lui     t5, 0x01D7                 # t5 = 01D70000
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t5, t5, 0x5000             # t5 = 01D75000
    addiu   v0, v0, 0x5000             # v0 = 01D45000
    sh      t4, 0x0140(s1)             # 00000140
    subu    a2, t5, v0
    addiu   s0, a3, 0x0074             # s0 = 00000074
    or      a0, s0, $zero              # a0 = 00000074
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    jal     func_800A01B8
    sw      v0, 0x0028($sp)
    lw      a2, 0x0020($sp)
    sw      v0, 0x0128(s1)             # 00000128
    lw      a1, 0x0028($sp)
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
    lui     a3, 0x01D7                 # a3 = 01D70000
    lui     t6, 0x01D7                 # t6 = 01D70000
    addiu   t6, t6, 0x5600             # t6 = 01D75600
    addiu   a3, a3, 0x5000             # a3 = 01D75000
    subu    a2, t6, a3
    or      a1, a2, $zero              # a1 = 00000000
    sw      a2, 0x0020($sp)
    sw      a3, 0x0028($sp)
    jal     func_800A01B8
    or      a0, s0, $zero              # a0 = 00000074
    lw      a2, 0x0020($sp)
    lw      a1, 0x0028($sp)
    sw      v0, 0x0130(s1)             # 00000130
    jal     func_80000DF0
    or      a0, v0, $zero              # a0 = 00000000
lbl_80096E2C:
    lw      $ra, 0x001C($sp)
lbl_80096E30:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80096E40:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0030($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sh      $zero, 0x0140(s0)          # 00000140
    swc1    $f0, 0x014C(s0)            # 0000014C
    swc1    $f0, 0x0148(s0)            # 00000148
    swc1    $f0, 0x0144(s0)            # 00000144
    sw      a3, 0x0028($sp)
    lh      a2, 0x0032($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80095CEC
    or      a1, s0, $zero              # a1 = 00000000
    lh      t6, 0x0032($sp)
    lw      a3, 0x0028($sp)
    beql    t6, $zero, lbl_80096F38
    lw      $ra, 0x001C($sp)
    lh      t7, 0x0140(s0)             # 00000140
    addiu   a0, a3, 0x0074             # a0 = 00000074
    addiu   a1, $zero, 0x3840          # a1 = 00003840
    beq     t7, $zero, lbl_80096EDC
    nop
    addiu   a0, a3, 0x0074             # a0 = 00000074
    sw      a0, 0x0020($sp)
    jal     func_800A01B8
    addiu   a1, $zero, 0x2580          # a1 = 00002580
    lw      a0, 0x0020($sp)
    sw      v0, 0x0134(s0)             # 00000134
    jal     func_800A01B8
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    sw      v0, 0x013C(s0)             # 0000013C
    lh      a1, 0x0032($sp)
    jal     func_80095A9C
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80096F38
    lw      $ra, 0x001C($sp)
lbl_80096EDC:
    jal     func_800A01B8
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    sw      v0, 0x0134(s0)             # 00000134
    lh      t8, 0x0032($sp)
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     t8, $at, lbl_80096F1C
    nop
    jal     func_800A01B8
    addiu   a1, $zero, 0x0C00          # a1 = 00000C00
    sw      v0, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80095C4C
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    b       lbl_80096F38
    lw      $ra, 0x001C($sp)
lbl_80096F1C:
    jal     func_800A01B8
    addiu   a1, $zero, 0x0A00          # a1 = 00000A00
    sw      v0, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80095C4C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lw      $ra, 0x001C($sp)
lbl_80096F38:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
