# "One Point Demo (Single Focus Cutscene)" part of the code file
#
# Handles short cutscenes that have a singular focus point, usually focused on Link or a specific actor, like a door for example.
#
# General Documentation about those cutscenes:
# https://wiki.cloudmodding.com/oot/Onepointdemo
#
# Starts at VRAM: 80067C70 / VROM: ADDBD0
#

.section .text
func_80067C70:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFE8
    or      a1, a2, $zero              # a1 = 00000000
    jal     func_80067850
    sw      a3, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lwc1    $f6, 0x0018($sp)
    lwc1    $f16, 0x001C($sp)
    lwc1    $f4, 0x0000(a3)            # 00000000
    addiu   t6, $sp, 0x0024            # t6 = FFFFFFF4
    lw      v0, 0x0030($sp)
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0020($sp)
    swc1    $f8, 0x0024($sp)
    lwc1    $f10, 0x0004(a3)           # 00000004
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028($sp)
    lwc1    $f4, 0x0008(a3)            # 00000008
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C($sp)
    lw      t8, 0x0000(t6)             # FFFFFFF4
    sw      t8, 0x0000(v0)             # 00000000
    lw      t7, 0x0004(t6)             # FFFFFFF8
    sw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0008(t6)             # FFFFFFFC
    sw      t8, 0x0008(v0)             # 00000008
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80067CF0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f12, $f4, $f6
    jal     func_800CD76C
    sub.s   $f14, $f8, $f10
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x7B20($at)          # 80107B20
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7B24($at)           # 80107B24
    mul.s   $f18, $f0, $f16
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lw      $ra, 0x0014($sp)
    mul.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    v0, $f16
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80067D58:
    lwc1    $f4, 0x0000(a0)            # 00000000
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0000(a1)             # 00000000
    lwc1    $f8, 0x0004(a0)            # 00000004
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x0002(a1)             # 00000002
    lwc1    $f16, 0x0008(a0)           # 00000008
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sh      t1, 0x0004(a1)             # 00000004
    jr      $ra
    nop


func_80067D9C:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      $ra, 0x002C($sp)
    addiu   t6, $sp, 0x0034            # t6 = FFFFFFEC
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFF0
    sw      $zero, 0x0034($sp)
    sw      t0, 0x0024($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    jal     func_8003079C
    sw      $zero, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80067DEC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFFC
    jal     func_8002F454
    addiu   a2, $sp, 0x0018            # a2 = FFFFFFF8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80067E14:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sw      a3, 0x0000(a0)             # 00000000
    lw      t6, 0x0010($sp)
    sh      a1, 0x0008(a0)             # 00000008
    sh      a2, 0x000A(a0)             # 0000000A
    sw      t6, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80067E48:
    addiu   $sp, $sp, 0xFF28           # $sp = FFFFFF28
    sw      s5, 0x0030($sp)
    sw      a2, 0x00E0($sp)
    sll     a2, a2, 16
    sll     s5, a1, 16
    sw      s2, 0x0024($sp)
    sw      s1, 0x0020($sp)
    or      s1, a3, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sra     s5, s5, 16
    sra     a2, a2, 16
    sw      $ra, 0x0034($sp)
    sw      s4, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s0, 0x001C($sp)
    sw      a1, 0x00DC($sp)
    sll     t6, s5,  2
    addu    t7, s2, t6
    lw      s3, 0x0790(t7)             # 00000790
    lw      t6, 0x0790(s2)             # 00000790
    slti    $at, a2, 0x1195
    lh      t8, 0x014E(s3)             # 0000014E
    sll     t9, t8,  2
    addu    t5, s2, t9
    lw      s0, 0x0790(t5)             # 00000790
    sw      t6, 0x00CC($sp)
    lw      s4, 0x0090(t6)             # 00000090
    bne     $at, $zero, lbl_80067FA4
    sw      s3, 0x0074($sp)
    slti    $at, a2, 0x219C
    bne     $at, $zero, lbl_80067F34
    slti    $at, a2, 0x2583
    bne     $at, $zero, lbl_80067F00
    addiu   $at, $zero, 0x25E7         # $at = 000025E7
    beq     a2, $at, lbl_8006B3EC
    addiu   $at, $zero, 0x25E8         # $at = 000025E8
    beq     a2, $at, lbl_8006B48C
    addiu   $at, $zero, 0x25E9         # $at = 000025E9
    beq     a2, $at, lbl_8006B508
    addiu   $at, $zero, 0x264E         # $at = 0000264E
    beq     a2, $at, lbl_8006AF1C
    addiu   $at, $zero, 0x26B4         # $at = 000026B4
    beq     a2, $at, lbl_8006AF84
    nop
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80067F00:
    addiu   $at, $zero, 0x219C         # $at = 0000219C
    beq     a2, $at, lbl_8006B258
    addiu   $at, $zero, 0x21FC         # $at = 000021FC
    beq     a2, $at, lbl_8006ADB0
    addiu   $at, $zero, 0x251C         # $at = 0000251C
    beq     a2, $at, lbl_80068474
    addiu   $at, $zero, 0x2581         # $at = 00002581
    beq     a2, $at, lbl_80068FB4
    addiu   $at, $zero, 0x2582         # $at = 00002582
    beql    a2, $at, lbl_80069020
    sll     a1, s5, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80067F34:
    slti    $at, a2, 0x1401
    bne     $at, $zero, lbl_80067F70
    addiu   $at, $zero, 0x1771         # $at = 00001771
    beq     a2, $at, lbl_80069F70
    addiu   $at, $zero, 0x177A         # $at = 0000177A
    beq     a2, $at, lbl_80069D70
    addiu   $at, $zero, 0x1F42         # $at = 00001F42
    beq     a2, $at, lbl_8006AD7C
    addiu   $at, $zero, 0x1F4A         # $at = 00001F4A
    beq     a2, $at, lbl_8006AD48
    addiu   $at, $zero, 0x219B         # $at = 0000219B
    beq     a2, $at, lbl_8006B224
    nop
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80067F70:
    addiu   $at, $zero, 0x119E         # $at = 0000119E
    beq     a2, $at, lbl_80068D64
    addiu   $at, $zero, 0x1388         # $at = 00001388
    beq     a2, $at, lbl_80068330
    addiu   $at, $zero, 0x1392         # $at = 00001392
    beq     a2, $at, lbl_80068438
    addiu   $at, $zero, 0x13F6         # $at = 000013F6
    beq     a2, $at, lbl_8006B584
    addiu   $at, $zero, 0x1400         # $at = 00001400
    beql    a2, $at, lbl_80068D24
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80067FA4:
    slti    $at, a2, 0x08DF
    bne     $at, $zero, lbl_800680E4
    slti    $at, a2, 0x0C77
    bne     $at, $zero, lbl_80068078
    slti    $at, a2, 0x0FB7
    bne     $at, $zero, lbl_80067FFC
    slti    $at, a2, 0x107E
    bne     $at, $zero, lbl_80067FD8
    addiu   $at, $zero, 0x1194         # $at = 00001194
    beql    a2, $at, lbl_80068DE0
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80067FD8:
    addiu   t8, a2, 0xEFFC             # t8 = FFFFEFFC
    sltiu   $at, t8, 0x007A
    beq     $at, $zero, lbl_8006B5B8
    sll     t8, t8,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t8
    lw      t8, 0x7B28($at)            # 80107B28
    jr      t8
    nop
lbl_80067FFC:
    slti    $at, a2, 0x0D7B
    bne     $at, $zero, lbl_80068028
    addiu   t9, a2, 0xF060             # t9 = FFFFF060
    sltiu   $at, t9, 0x0017
    beq     $at, $zero, lbl_8006B5B8
    sll     t9, t9,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t9
    lw      t9, 0x7D10($at)            # 80107D10
    jr      t9
    nop
lbl_80068028:
    slti    $at, a2, 0x0CBE
    bne     $at, $zero, lbl_80068054
    addiu   t5, a2, 0xF326             # t5 = FFFFF326
    sltiu   $at, t5, 0x00A1
    beq     $at, $zero, lbl_8006B5B8
    sll     t5, t5,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t5
    lw      t5, 0x7D6C($at)            # 80107D6C
    jr      t5
    nop
lbl_80068054:
    addiu   t6, a2, 0xF36C             # t6 = FFFFF36C
    sltiu   $at, t6, 0x002A
    beq     $at, $zero, lbl_8006B5B8
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x7FF0($at)            # 80107FF0
    jr      t6
    nop
lbl_80068078:
    slti    $at, a2, 0x0925
    bne     $at, $zero, lbl_800680C0
    slti    $at, a2, 0x092F
    bne     $at, $zero, lbl_800680AC
    addiu   t7, a2, 0xF43E             # t7 = FFFFF43E
    sltiu   $at, t7, 0x00B5
    beq     $at, $zero, lbl_8006B5B8
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x7F68($at)           # 80108098
    jr      t7
    nop
lbl_800680AC:
    addiu   $at, $zero, 0x092E         # $at = 0000092E
    beq     a2, $at, lbl_80068A38
    nop
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800680C0:
    addiu   $at, $zero, 0x08E8         # $at = 000008E8
    beq     a2, $at, lbl_80068720
    addiu   $at, $zero, 0x08F2         # $at = 000008F2
    beq     a2, $at, lbl_80068CCC
    addiu   $at, $zero, 0x0924         # $at = 00000924
    beq     a2, $at, lbl_800689B0
    nop
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800680E4:
    slti    $at, a2, 0x0899
    bne     $at, $zero, lbl_80068120
    addiu   $at, $zero, 0x08A2         # $at = 000008A2
    beq     a2, $at, lbl_80068EB4
    addiu   $at, $zero, 0x08AC         # $at = 000008AC
    beq     a2, $at, lbl_800688BC
    addiu   $at, $zero, 0x08B6         # $at = 000008B6
    beq     a2, $at, lbl_80068944
    addiu   $at, $zero, 0x08D4         # $at = 000008D4
    beq     a2, $at, lbl_800684A8
    addiu   $at, $zero, 0x08DE         # $at = 000008DE
    beq     a2, $at, lbl_80068584
    nop
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068120:
    addiu   $at, $zero, 0x03E8         # $at = 000003E8
    beq     a2, $at, lbl_8006B1A8
    addiu   $at, $zero, 0x03F2         # $at = 000003F2
    beq     a2, $at, lbl_80068F58
    addiu   $at, $zero, 0x03FC         # $at = 000003FC
    beq     a2, $at, lbl_8006815C
    addiu   $at, $zero, 0x0406         # $at = 00000406
    beq     a2, $at, lbl_80068278
    addiu   $at, $zero, 0x044C         # $at = 0000044C
    beq     a2, $at, lbl_8006AE64
    addiu   $at, $zero, 0x0898         # $at = 00000898
    beql    a2, $at, lbl_80068A70
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006815C:
    lh      t8, 0x00EA($sp)
    slti    $at, t8, 0x0014
    beq     $at, $zero, lbl_80068170
    addiu   v1, $zero, 0x0014          # v1 = 00000014
    sh      v1, 0x00EA($sp)
lbl_80068170:
    lw      t6, 0x00EC(s2)             # 000000EC
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      v1, 0x00EA($sp)
    addiu   t9, t9, 0x23DC             # t9 = 800F23DC
    sw      t6, 0x0000(t9)             # 800F23DC
    lw      t5, 0x00F0(s2)             # 000000F0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x23E8             # t7 = 800F23E8
    sw      t5, 0x0004(t9)             # 800F23E0
    lw      t6, 0x00F4(s2)             # 000000F4
    mtc1    v1, $f10                   # $f10 = 0.00
    lui     v0, 0x800F                 # v0 = 800F0000
    sw      t6, 0x0008(t9)             # 800F23E4
    lw      t9, 0x00E0(s2)             # 000000E0
    addiu   v0, v0, 0x23CC             # v0 = 800F23CC
    cvt.s.w $f16, $f10
    sw      t9, 0x0000(t7)             # 800F23E8
    lw      t8, 0x00E4(s2)             # 000000E4
    lui     $at, 0x3F00                # $at = 3F000000
    lui     t5, 0x800F                 # t5 = 800F0000
    sw      t8, 0x0004(t7)             # 800F23EC
    lw      t9, 0x00E8(s2)             # 000000E8
    mtc1    $at, $f0                   # $f0 = 0.50
    addiu   t5, t5, 0x2404             # t5 = 800F2404
    sw      t9, 0x0008(t7)             # 800F23F0
    lwc1    $f4, 0x00D0(s2)            # 000000D0
    lw      t6, 0x00CC($sp)
    mul.s   $f18, $f16, $f0
    swc1    $f4, 0x0008(v0)            # 800F23D4
    lw      t8, 0x0050(t6)             # FFFFF3BC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sw      t8, 0x0000(t5)             # 800F2404
    lw      t7, 0x0054(t6)             # FFFFF3C0
    div.s   $f4, $f8, $f18
    lui     t9, 0x800F                 # t9 = 800F0000
    sw      t7, 0x0004(t5)             # 800F2408
    lw      t8, 0x0058(t6)             # FFFFF3C4
    addiu   t9, t9, 0x2410             # t9 = 800F2410
    sll     a1, s5, 16
    sw      t8, 0x0008(t5)             # 800F240C
    lw      t5, 0x00CC($sp)
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    lw      t7, 0x005C(t5)             # 800F2460
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t7, 0x0000(t9)             # 800F2410
    lw      t6, 0x0060(t5)             # 800F2464
    sw      t6, 0x0004(t9)             # 800F2414
    lw      t7, 0x0064(t5)             # 800F2468
    addiu   t5, v1, 0x0001             # t5 = 00000015
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t7, 0x0008(t9)             # 800F2418
    lw      t8, 0x00CC($sp)
    addiu   t9, v1, 0xFFFF             # t9 = 00000013
    lwc1    $f6, 0x00FC(t8)            # FFFFF0F8
    sh      t9, 0x002C(v0)             # 800F23F8
    swc1    $f6, 0x0030(v0)            # 800F23FC
    sh      t5, 0x0160(s3)             # 00000160
    swc1    $f4, 0x0034(v0)            # 800F2400
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t6, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068278:
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x2444             # s0 = 800F2444
    lw      t9, 0x00EC(s2)             # 000000EC
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x2454             # t7 = 800F2454
    sw      t9, 0x0000(t7)             # 800F2454
    lw      t8, 0x00F0(s2)             # 000000F0
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x2460             # t5 = 800F2460
    sw      t8, 0x0004(t7)             # 800F2458
    lw      t9, 0x00F4(s2)             # 000000F4
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    sw      t9, 0x0008(t7)             # 800F245C
    lw      t7, 0x00E0(s2)             # 000000E0
    sw      t7, 0x0000(t5)             # 800F2460
    lw      t6, 0x00E4(s2)             # 000000E4
    sw      t6, 0x0004(t5)             # 800F2464
    lw      t7, 0x00E8(s2)             # 000000E8
    sw      t7, 0x0008(t5)             # 800F2468
    lw      t8, 0x00CC($sp)
    lwc1    $f6, 0x00D0(s2)            # 000000D0
    addiu   a1, t8, 0x0050             # a1 = 00000050
    addiu   a2, t8, 0x005C             # a2 = 0000005C
    jal     func_80067A84
    swc1    $f6, 0x0008(s0)            # 800F244C
    lh      t9, 0x00C6($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7C94($at)          # 8010836C
    mtc1    t9, $f10                   # $f10 = 0.00
    lh      t5, 0x00EA($sp)
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    cvt.s.w $f16, $f10
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x002C(s0)             # 800F2470
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    mul.s   $f18, $f16, $f8
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    swc1    $f18, 0x0048(s0)           # 800F248C
    sw      s0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t7, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068330:
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x2494             # s0 = 800F2494
    addiu   v0, $sp, 0x0054            # v0 = FFFFFF7C
    lw      t9, 0x00EC(s2)             # 000000EC
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x24CC             # t5 = 800F24CC
    sw      t9, 0x0000(v0)             # FFFFFF7C
    lw      t8, 0x00F0(s2)             # 000000F0
    lw      t7, 0x0000(v0)             # FFFFFF7C
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    sw      t8, 0x0004(v0)             # FFFFFF80
    lw      t9, 0x00F4(s2)             # 000000F4
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x24A4             # t8 = 800F24A4
    sw      t9, 0x0008(v0)             # FFFFFF84
    sw      t7, 0x0000(t5)             # 800F24CC
    lw      t6, 0x0004(v0)             # FFFFFF80
    addiu   a1, s1, 0x0038             # a1 = 00000038
    sw      t6, 0x0004(t5)             # 800F24D0
    lw      t7, 0x0008(v0)             # FFFFFF84
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x24B0             # t6 = 800F24B0
    sw      t7, 0x0008(t5)             # 800F24D4
    lw      t5, 0x0000(v0)             # FFFFFF7C
    sw      t5, 0x0000(t8)             # 800F24A4
    lw      t9, 0x0004(v0)             # FFFFFF80
    sw      t9, 0x0004(t8)             # 800F24A8
    lw      t5, 0x0008(v0)             # FFFFFF84
    sw      t5, 0x0008(t8)             # 800F24AC
    lw      t8, 0x00E0(s2)             # 000000E0
    sw      t8, 0x0000(t6)             # 800F24B0
    lw      t7, 0x00E4(s2)             # 000000E4
    sw      t7, 0x0004(t6)             # 800F24B4
    lw      t8, 0x00E8(s2)             # 000000E8
    sw      t8, 0x0008(t6)             # 800F24B8
    lwc1    $f2, 0x00D0(s2)            # 000000D0
    lw      a2, 0x00CC($sp)
    swc1    $f2, 0x0058(s0)            # 800F24EC
    swc1    $f2, 0x0008(s0)            # 800F249C
    jal     func_80067A84
    addiu   a2, a2, 0x0050             # a2 = 00000050
    lw      t9, 0x00CC($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    lui     a1, 0x800F                 # a1 = 800F0000
    lwc1    $f4, 0x00DC(t9)            # 000000DC
    addiu   a1, a1, 0x24CC             # a1 = 800F24CC
    addiu   a0, a0, 0x24D8             # a0 = 800F24D8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    jal     func_80067C70
    swc1    $f4, 0x00C0($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lwc1    $f6, 0x003C(s0)            # 800F24D0
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    sll     a1, s5, 16
    add.s   $f16, $f6, $f10
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    swc1    $f16, 0x003C(s0)           # 800F24D0
    sw      s0, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068438:
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x002B          # a3 = 0000002B
    lw      t6, 0x00CC($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a2, t6, 0x0050             # a2 = 00000050
    jal     func_8009D328
    addiu   a3, t6, 0x005C             # a3 = 0000005C
    beq     $zero, $zero, lbl_8006B5B8
    sh      $zero, 0x015A(s3)          # 0000015A
lbl_80068474:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x2534             # t7 = 800F2534
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800684A8:
    lw      t9, 0x00CC($sp)
    lw      t5, 0x008C(t9)             # 0000008C
    lw      t6, 0x009C(t5)             # 0000009C
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_800684CC
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f12                  # $f12 = -10.00
    beq     $zero, $zero, lbl_800684D8
    nop
lbl_800684CC:
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    nop
lbl_800684D8:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x004C($sp)
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f8                   # $f8 = 8.00
    lwc1    $f12, 0x004C($sp)
    lui     s0, 0x800F                 # s0 = 800F0000
    mul.s   $f18, $f0, $f8
    lw      t8, 0x00CC($sp)
    addiu   s0, s0, 0x25AC             # s0 = 800F25AC
    add.s   $f2, $f18, $f12
    swc1    $f2, 0x0060(s0)            # 800F260C
    swc1    $f2, 0x0010(s0)            # 800F25BC
    lw      t9, 0x008C(t8)             # 0000008C
    lw      t5, 0x009C(t9)             # 0000009C
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80068528
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    beq     $zero, $zero, lbl_80068534
    nop
lbl_80068528:
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f12                  # $f12 = -20.00
    nop
lbl_80068534:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f12, 0x004C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f12, 0x004C($sp)
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    mul.s   $f6, $f0, $f4
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    add.s   $f2, $f6, $f12
    swc1    $f2, 0x006C(s0)            # 800F2618
    swc1    $f2, 0x001C(s0)            # 800F25C8
    sw      s0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t7, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068584:
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x2674             # t8 = 800F2674
    addiu   t9, $zero, 0x000B          # t9 = 0000000B
    lui     s0, 0x800F                 # s0 = 800F0000
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    addiu   s0, s0, 0x2674             # s0 = 800F2674
    or      s1, $zero, $zero           # s1 = 00000000
    lbu     t5, 0x0000(s0)             # 800F2674
lbl_800685A8:
    addiu   $at, $zero, 0x008F         # $at = 0000008F
    beql    t5, $at, lbl_80068634
    lw      t6, 0x0074($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    nop
    mul.s   $f16, $f0, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0010(s0)           # 800F2684
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    mul.s   $f18, $f0, $f8
    add.s   $f6, $f18, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0018(s0)            # 800F268C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x001C(s0)           # 800F2690
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f10                  # $f10 = 50.00
    mul.s   $f6, $f0, $f4
    add.s   $f16, $f6, $f10
    swc1    $f16, 0x0024(s0)           # 800F2698
    lw      t6, 0x0074($sp)
lbl_80068634:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0028             # s0 = 800F269C
    lw      t7, 0x0000(t6)             # 00000000
    addiu   t8, t7, 0xFFFD             # t8 = FFFFFFFD
    slt     $at, s1, t8
    bnel    $at, $zero, lbl_800685A8
    lbu     t5, 0x0000(s0)             # 800F269C
    lw      t9, 0x00CC($sp)
    lw      t5, 0x008C(t9)             # 0000008C
    lw      t6, 0x009C(t5)             # 0000009C
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80068674
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    beq     $zero, $zero, lbl_80068680
    nop
lbl_80068674:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f2                   # $f2 = -3.00
    nop
lbl_80068680:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0050($sp)
    lwc1    $f2, 0x0050($sp)
    sll     t8, s5,  2
    addu    t8, t8, s5
    add.s   $f8, $f0, $f2
    sll     t8, t8,  3
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, t8
    sll     a1, s5, 16
    swc1    $f8, 0x266C($at)           # 800F266C
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sw      t9, 0x0010($sp)
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_8007D738
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0640          # a1 = 00000640
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068720:
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x282C             # t5 = 800F282C
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    lui     s0, 0x800F                 # s0 = 800F0000
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    addiu   s0, s0, 0x282C             # s0 = 800F282C
    or      s1, $zero, $zero           # s1 = 00000000
    lbu     t7, 0x0000(s0)             # 800F282C
lbl_80068744:
    addiu   $at, $zero, 0x008F         # $at = 0000008F
    beql    t7, $at, lbl_800687D0
    lw      t8, 0x0074($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    nop
    mul.s   $f4, $f0, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0010(s0)            # 800F283C
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    mul.s   $f10, $f0, $f6
    add.s   $f8, $f10, $f16
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0018(s0)            # 800F2844
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    mul.s   $f4, $f0, $f18
    add.s   $f10, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x001C(s0)           # 800F2848
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f18                  # $f18 = 80.00
    mul.s   $f8, $f0, $f16
    add.s   $f4, $f8, $f18
    swc1    $f4, 0x0024(s0)            # 800F2850
    lw      t8, 0x0074($sp)
lbl_800687D0:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0028             # s0 = 800F2854
    lw      t9, 0x0000(t8)             # 00000000
    addiu   t5, t9, 0xFFFD             # t5 = FFFFFFFD
    slt     $at, s1, t5
    bnel    $at, $zero, lbl_80068744
    lbu     t7, 0x0000(s0)             # 800F2854
    lw      t6, 0x00CC($sp)
    lw      t7, 0x008C(t6)             # 0000008C
    lw      t8, 0x009C(t7)             # 0000009C
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80068810
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    beq     $zero, $zero, lbl_8006881C
    nop
lbl_80068810:
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f2                   # $f2 = -3.00
    nop
lbl_8006881C:
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0050($sp)
    lwc1    $f2, 0x0050($sp)
    sll     t5, s5,  2
    addu    t5, t5, s5
    add.s   $f6, $f0, $f2
    sll     t5, t5,  3
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, t5
    sll     a1, s5, 16
    swc1    $f6, 0x2824($at)           # 800F2824
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    addiu   t6, $zero, 0x0032          # t6 = 00000032
    sw      t6, 0x0010($sp)
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_8007D738
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x270F          # a1 = 0000270F
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800688BC:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x2944             # t7 = 800F2944
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0118          # a1 = 00000118
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068944:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f16                  # $f16 = 1000.00
    lwc1    $f10, 0x002C(s4)           # 0000002C
    c.lt.s  $f10, $f16
    nop
    bc1f    lbl_8006897C
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x2A84             # v0 = 800F2A84
    lwc1    $f8, 0x001C(v0)            # 800F2AA0
    lwc1    $f4, 0x006C(v0)            # 800F2AF0
    neg.s   $f18, $f8
    neg.s   $f6, $f4
    swc1    $f18, 0x001C(v0)           # 800F2AA0
    swc1    $f6, 0x006C(v0)            # 800F2AF0
lbl_8006897C:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x2A84             # v0 = 800F2A84
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sll     a1, s5, 16
    sw      v0, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800689B0:
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x2B74             # t5 = 800F2B74
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sll     a1, s5, 16
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x0190          # a1 = 00000190
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068A38:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x2BEC             # t7 = 800F2BEC
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
lbl_80068A70:
    or      a1, s4, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0072            # a2 = FFFFFF9A
    addiu   a3, $sp, 0x006E            # a3 = FFFFFF96
    jal     func_80022B14
    sw      s1, 0x00E4($sp)
    or      a0, s2, $zero              # a0 = 00000000
    lw      a1, 0x00E4($sp)
    addiu   a2, $sp, 0x0070            # a2 = FFFFFF98
    jal     func_80022B14
    addiu   a3, $sp, 0x006C            # a3 = FFFFFF94
    lh      v0, 0x0072($sp)
    blez    v0, lbl_80068BB0
    slti    $at, v0, 0x0140
    beql    $at, $zero, lbl_80068BB4
    lw      t9, 0x00E4($sp)
    lh      v0, 0x006E($sp)
    blez    v0, lbl_80068BB0
    slti    $at, v0, 0x00F0
    beql    $at, $zero, lbl_80068BB4
    lw      t9, 0x00E4($sp)
    lh      v0, 0x0070($sp)
    blez    v0, lbl_80068BB0
    slti    $at, v0, 0x0140
    beql    $at, $zero, lbl_80068BB4
    lw      t9, 0x00E4($sp)
    lh      v0, 0x006C($sp)
    blez    v0, lbl_80068BB0
    slti    $at, v0, 0x00F0
    beql    $at, $zero, lbl_80068BB4
    lw      t9, 0x00E4($sp)
    lw      a1, 0x00E4($sp)
    addiu   a0, s2, 0x07C0             # a0 = 000007C0
    addiu   a2, s4, 0x0038             # a2 = 00000038
    jal     func_80067D9C
    addiu   a1, a1, 0x0038             # a1 = 00000038
    bnel    v0, $zero, lbl_80068BB4
    lw      t9, 0x00E4($sp)
    lw      v1, 0x00E4($sp)
    lwc1    $f10, 0x00EC(s2)           # 000000EC
    lui     $at, 0x3F00                # $at = 3F000000
    lwc1    $f16, 0x0038(v1)           # 00000038
    mtc1    $at, $f0                   # $f0 = 0.50
    lui     v0, 0x800F                 # v0 = 800F0000
    add.s   $f8, $f10, $f16
    addiu   v0, v0, 0x2C64             # v0 = 800F2C64
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x2C80             # t9 = 800F2C80
    mul.s   $f18, $f8, $f0
    lui     $at, 0x41A0                # $at = 41A00000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    swc1    $f18, 0x0010(v0)           # 800F2C74
    lwc1    $f4, 0x00F0(s2)            # 000000F0
    lwc1    $f6, 0x003C(v1)            # 0000003C
    add.s   $f10, $f4, $f6
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x0014(v0)           # 800F2C78
    lwc1    $f8, 0x00F4(s2)            # 000000F4
    lwc1    $f18, 0x0040(v1)           # 00000040
    mtc1    $at, $f16                  # $f16 = 20.00
    lui     $at, 0x3F40                # $at = 3F400000
    add.s   $f4, $f8, $f18
    mul.s   $f6, $f4, $f0
    mtc1    $at, $f4                   # $f4 = 0.75
    swc1    $f6, 0x0018(v0)            # 800F2C7C
    lw      t6, 0x00E0(s2)             # 000000E0
    sw      t6, 0x0000(t9)             # 800F2C80
    lw      t5, 0x00E4(s2)             # 000000E4
    sw      t5, 0x0004(t9)             # 800F2C84
    lw      t6, 0x00E8(s2)             # 000000E8
    sw      t6, 0x0008(t9)             # 800F2C88
    lwc1    $f10, 0x003C(s4)           # 0000003C
    lw      t7, 0x00CC($sp)
    add.s   $f8, $f10, $f16
    swc1    $f8, 0x0020(v0)            # 800F2C84
    lwc1    $f18, 0x00FC(t7)           # 000000FC
    mul.s   $f6, $f18, $f4
    swc1    $f6, 0x0008(v0)            # 800F2C6C
    sw      v0, 0x0004(s3)             # 00000004
    beq     $zero, $zero, lbl_80068C9C
    sw      t8, 0x0000(s3)             # 00000000
lbl_80068BB0:
    lw      t9, 0x00E4($sp)
lbl_80068BB4:
    lw      t5, 0x00E4($sp)
    lui     s0, 0x800F                 # s0 = 800F0000
    lwc1    $f10, 0x0038(t9)           # 800F2CB8
    addiu   s0, s0, 0x2CB4             # s0 = 800F2CB4
    lui     $at, 0x40A0                # $at = 40A00000
    swc1    $f10, 0x0010(s0)           # 800F2CC4
    mtc1    $at, $f8                   # $f8 = 5.00
    lwc1    $f16, 0x003C(t5)           # 0000003C
    lw      t6, 0x00E4($sp)
    lw      t7, 0x00E4($sp)
    sub.s   $f18, $f16, $f8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    swc1    $f18, 0x0014(s0)           # 800F2CC8
    lwc1    $f4, 0x0040(t6)            # 00000040
    swc1    $f4, 0x0018(s0)            # 800F2CCC
    lw      t9, 0x0354(t7)             # 00000354
    sw      t9, 0x0000(s1)             # FFFFFFD8
    lw      t8, 0x0358(t7)             # 00000358
    sw      t8, 0x0004(s1)             # FFFFFFDC
    lw      t9, 0x035C(t7)             # 0000035C
    jal     func_800CDCCC              # Rand.Next() float
    sw      t9, 0x0008(s1)             # FFFFFFE0
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f2                   # $f2 = 120.00
    lwc1    $f10, 0x00B0($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    mul.s   $f16, $f2, $f10
    lw      t5, 0x00E4($sp)
    lw      t6, 0x00E4($sp)
    mul.s   $f4, $f0, $f18
    lwc1    $f6, 0x0038(t5)            # 00000038
    add.s   $f8, $f6, $f16
    lwc1    $f16, 0x00B4($sp)
    sub.s   $f10, $f8, $f4
    mul.s   $f18, $f2, $f16
    mtc1    $at, $f4                   # $f4 = 20.00
    swc1    $f10, 0x001C(s0)           # 800F2CD0
    lwc1    $f6, 0x003C(t6)            # 0000003C
    add.s   $f8, $f6, $f18
    add.s   $f10, $f8, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0020(s0)           # 800F2CD4
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f16                  # $f16 = 120.00
    lwc1    $f6, 0x00B8($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    mul.s   $f18, $f16, $f6
    lw      t7, 0x00E4($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    mul.s   $f16, $f0, $f10
    lwc1    $f8, 0x0040(t7)            # 00000040
    add.s   $f4, $f8, $f18
    sub.s   $f6, $f4, $f16
    swc1    $f6, 0x0024(s0)            # 800F2CD8
    sw      s0, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
lbl_80068C9C:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068CCC:
    lw      s0, 0x0430(s4)             # 00000430
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     s0, $zero, lbl_80068CEC
    addiu   t9, $zero, 0x00B4          # t9 = 000000B4
    sh      t9, 0x0110(s0)             # 800F2DC4
lbl_80068CEC:
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x2D04             # t5 = 800F2D04
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sll     a1, s5, 16
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
lbl_80068D24:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x2DF4             # t7 = 800F2DF4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068D64:
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x2E1C             # s0 = 800F2E1C
    lw      t6, 0x0024(s1)             # FFFFFFFC
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x2E38             # t9 = 800F2E38
    sw      t6, 0x0000(t9)             # 800F2E38
    lw      t5, 0x0028(s1)             # 00000000
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    sw      t5, 0x0004(t9)             # 800F2E3C
    lw      t6, 0x002C(s1)             # 00000004
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      t6, 0x0008(t9)             # 800F2E40
    lwc1    $f8, 0x0028(s4)            # 00000028
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    add.s   $f10, $f8, $f18
    jal     func_800218EC
    swc1    $f10, 0x0020(s0)           # 800F2E3C
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sll     a1, s5, 16
    sw      s0, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
lbl_80068DE0:
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_80022670
    or      a1, s1, $zero              # a1 = FFFFFFD8
    lw      t9, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t8, 0x0004(s0)             # FFFFFFBC
    sw      t9, 0x0000(s1)             # FFFFFFD8
    lw      t9, 0x0008(s0)             # FFFFFFC0
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a0, s2, 0x07C0             # a0 = 000007C0
    sw      t8, 0x0004(s1)             # FFFFFFDC
    jal     func_80067DEC
    sw      t9, 0x0008(s1)             # FFFFFFE0
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    add.s   $f16, $f0, $f4
    lh      t5, 0x009E($sp)
    addiu   t6, $zero, 0x03E8          # t6 = 000003E8
    sh      t6, 0x00C4($sp)
    swc1    $f16, 0x00B4($sp)
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    swc1    $f6, 0x00C0($sp)
    jal     func_80067C70
    sh      t5, 0x00C6($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      a1, 0x014E(s3)             # 0000014E
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    sh      $zero, 0x015A(s3)          # 0000015A
    beq     a1, $zero, lbl_8006B5B8
    swc1    $f8, 0x00FC(s3)            # 000000FC
    jal     func_8006B9B4
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068EB4:
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    addiu   a1, s4, 0x0024             # a1 = 00000024
    jal     func_80067A84
    addiu   a2, s1, 0x0024             # a2 = FFFFFFFC
    lh      t7, 0x00C6($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7C90($at)          # 80108370
    mtc1    t7, $f18                   # $f18 = 0.00
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x2E94             # s0 = 800F2E94
    cvt.s.w $f10, $f18
    mul.s   $f0, $f10, $f4
    swc1    $f0, 0x0064(s0)            # 800F2EF8
    swc1    $f0, 0x0070(s0)            # 800F2F04
    swc1    $f0, 0x0048(s0)            # 800F2EDC
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020(s0)            # 800F2EB4
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80068F20
    or      a0, s2, $zero              # a0 = 00000000
    lwc1    $f6, 0x0094(s0)            # 800F2F28
    neg.s   $f8, $f6
    swc1    $f8, 0x0094(s0)            # 800F2F28
    or      a0, s2, $zero              # a0 = 00000000
lbl_80068F20:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sll     a1, s5, 16
    sw      s0, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068F58:
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a2, s0, 0x0050             # a2 = 800F2EE4
    jal     func_8009D328
    addiu   a3, s0, 0x005C             # a3 = 800F2EF0
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D55C
    lw      a2, 0x00FC(s0)             # 800F2F90
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D5A4
    lh      a2, 0x015A(s0)             # 800F2FEE
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80068FB4:
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D6DC
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    lw      t9, 0x00CC($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D6DC
    lh      a2, 0x0154(t9)             # 00000154
    lui     a1, 0x800F                 # a1 = 800F0000
    lh      a1, 0x1F10(a1)             # 800F1F10
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x1E78             # t5 = 800F1E78
    ori     a1, a1, 0x1000             # a1 = 800F1000
    sll     a1, a1, 16
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x1DE8             # a3 = 800F1DE8
    lh      a2, 0x1F0C(a2)             # 800F1F0C
    sra     a1, a1, 16
    sw      t5, 0x0010($sp)
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    sll     a1, s5, 16
lbl_80069020:
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D6DC
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    lw      t6, 0x00CC($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D6DC
    lh      a2, 0x0154(t6)             # 00000154
    lui     a1, 0x800F                 # a1 = 800F0000
    lh      a1, 0x1F10(a1)             # 800F1F10
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x1F14             # t7 = 800F1F14
    ori     a1, a1, 0x1000             # a1 = 800F1000
    sll     a1, a1, 16
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x1DE8             # a3 = 800F1DE8
    lh      a2, 0x1F0C(a2)             # 800F1F0C
    sra     a1, a1, 16
    sw      t7, 0x0010($sp)
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x2F5C             # t8 = 800F2F5C
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sll     a1, s5, 16
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x7C8C($at)         # 80108374
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7C88($at)         # 80108378
    lui     $at, 0xC3A5                # $at = C3A50000
    mtc1    $at, $f4                   # $f4 = -330.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x7C84($at)         # 8010837C
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7C80($at)          # 80108380
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7C7C($at)          # 80108384
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    swc1    $f18, 0x00B0($sp)
    swc1    $f10, 0x00B4($sp)
    swc1    $f4, 0x00B8($sp)
    swc1    $f16, 0x00A4($sp)
    swc1    $f6, 0x00A8($sp)
    jal     func_8009D6DC
    swc1    $f8, 0x00AC($sp)
    sll     a1, s5, 16
    addiu   a2, $sp, 0x00B0            # a2 = FFFFFFD8
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f18                  # $f18 = 75.00
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sh      t5, 0x015A(s3)             # 0000015A
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218EC
    swc1    $f18, 0x00FC(s3)           # 000000FC
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      t6, 0x00EA($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x2FFC             # v1 = 800F2FFC
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0004(v1)             # 800F3000
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sll     a1, s5, 16
    sw      v1, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x304C             # s0 = 800F304C
    lh      t9, 0x00EA($sp)
    lw      t6, 0x00CC($sp)
    addiu   t5, t9, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x002C(s0)             # 800F3078
    lw      t7, 0x008C(t6)             # 0000008C
    lw      t8, 0x009C(t7)             # 0000009C
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80069204
    nop
    lwc1    $f10, 0x0010(s0)           # 800F305C
    lwc1    $f16, 0x001C(s0)           # 800F3068
    lwc1    $f8, 0x0038(s0)            # 800F3084
    neg.s   $f4, $f10
    lwc1    $f10, 0x0044(s0)           # 800F3090
    swc1    $f4, 0x0010(s0)            # 800F305C
    neg.s   $f6, $f16
    neg.s   $f18, $f8
    neg.s   $f4, $f10
    swc1    $f6, 0x001C(s0)            # 800F3068
    swc1    $f18, 0x0038(s0)           # 800F3084
    swc1    $f4, 0x0044(s0)            # 800F3090
lbl_80069204:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    lwc1    $f6, 0x001C(s0)            # 800F3068
    lwc1    $f18, 0x0044(s0)           # 800F3090
    mul.s   $f2, $f0, $f16
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    add.s   $f8, $f6, $f2
    add.s   $f10, $f18, $f2
    swc1    $f8, 0x001C(s0)            # 800F3068
    swc1    $f10, 0x0044(s0)           # 800F3090
    sw      s0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t5, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x309C             # v0 = 800F309C
    lh      t6, 0x00EA($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sll     a1, s5, 16
    sh      t6, 0x0004(v0)             # 800F30A0
    sw      v0, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x30C4             # t8 = 800F30C4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sll     a1, s5, 16
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x55F0          # a1 = 000055F0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x00C8          # a3 = 000000C8
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x3254             # t5 = 800F3254
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sll     a1, s5, 16
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x32F4             # t7 = 800F32F4
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0xC38C                # $at = C38C0000
    mtc1    $at, $f16                  # $f16 = -280.00
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f6                   # $f6 = -1400.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    or      a1, s1, $zero              # a1 = 00000000
    swc1    $f16, 0x00A8($sp)
    swc1    $f6, 0x00AC($sp)
    jal     func_80022670
    swc1    $f4, 0x00A4($sp)
    lw      t5, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t9, 0x0004(s0)             # FFFFFFBC
    sw      t5, 0x0000(s1)             # FFFFFFD8
    lw      t5, 0x0008(s0)             # FFFFFFC0
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0039          # a3 = 00000039
    sw      t9, 0x0004(s1)             # FFFFFFDC
    jal     func_8009D66C
    sw      t5, 0x0008(s1)             # FFFFFFE0
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    sh      $zero, 0x015A(s3)          # 0000015A
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218EC
    swc1    $f8, 0x00FC(s3)            # 000000FC
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x3394             # t6 = 800F3394
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x5DC0          # a1 = 00005DC0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x33E4             # t8 = 800F33E4
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D6DC
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    lui     a1, 0x800F                 # a1 = 800F0000
    lh      a1, 0x1DE4(a1)             # 800F1DE4
    lui     s0, 0x800F                 # s0 = 800F0000
    lui     s1, 0x800F                 # s1 = 800F0000
    lui     s4, 0x800F                 # s4 = 800F0000
    ori     a1, a1, 0x2000             # a1 = 800F2000
    addiu   s4, s4, 0x1DE0             # s4 = 800F1DE0
    addiu   s1, s1, 0x1CFC             # s1 = 800F1CFC
    addiu   s0, s0, 0x1C1C             # s0 = 800F1C1C
    sll     a1, a1, 16
    sra     a1, a1, 16
    or      a3, s0, $zero              # a3 = 800F1C1C
    sw      s1, 0x0010($sp)
    lh      a2, 0x0000(s4)             # 800F1DE0
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    lui     s2, 0x800F                 # s2 = 800F0000
    addiu   s2, s2, 0x1DDC             # s2 = 800F1DDC
    lh      t5, 0x0000(s2)             # 800F1DDC
    lw      a0, 0x00CC($sp)
    sll     t6, t5,  4
    addu    a1, s0, t6
    addiu   a1, a1, 0xFFE8             # a1 = FFFFFFE8
    jal     func_80067D58
    addiu   a0, a0, 0x0050             # a0 = 00000050
    lh      t7, 0x0000(s2)             # 800F1DDC
    lw      a0, 0x00CC($sp)
    sll     t8, t7,  4
    addu    a1, s1, t8
    addiu   a1, a1, 0xFFE8             # a1 = FFFFFFE8
    jal     func_80067D58
    addiu   a0, a0, 0x005C             # a0 = 0000005C
    lh      a2, 0x0000(s2)             # 800F1DDC
    or      a0, s3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a2, a2,  4
    addu    v0, s0, a2
    lh      a3, -0x0028(v0)            # FFFFFFD8
    lh      t9, -0x0018(v0)            # FFFFFFE8
    lh      t0, -0x0026(v0)            # FFFFFFDA
    lh      t8, -0x0016(v0)            # FFFFFFEA
    subu    t5, t9, a3
    bgez    t5, lbl_80069604
    sra     t6, t5,  1
    addiu   $at, t5, 0x0001            # $at = 00000001
    sra     t6, $at,  1
lbl_80069604:
    addu    t7, a3, t6
    subu    t9, t8, t0
    sh      t7, -0x0028(v0)            # FFFFFFD8
    lh      t7, -0x0014(v0)            # FFFFFFEC
    lh      t1, -0x0024(v0)            # FFFFFFDC
    bgez    t9, lbl_80069628
    sra     t5, t9,  1
    addiu   $at, t9, 0x0001            # $at = 00000001
    sra     t5, $at,  1
lbl_80069628:
    addu    v1, s1, a2
    addu    t6, t0, t5
    subu    t8, t7, t1
    sh      t6, -0x0026(v0)            # FFFFFFDA
    lh      t6, -0x0018(v1)            # FFFFFFE8
    lh      t2, -0x0028(v1)            # FFFFFFD8
    bgez    t8, lbl_80069650
    sra     t9, t8,  1
    addiu   $at, t8, 0x0001            # $at = 00000001
    sra     t9, $at,  1
lbl_80069650:
    addu    t5, t1, t9
    subu    t7, t6, t2
    sh      t5, -0x0024(v0)            # FFFFFFDC
    lh      t5, -0x0016(v1)            # FFFFFFEA
    lh      t3, -0x0026(v1)            # FFFFFFDA
    bgez    t7, lbl_80069674
    sra     t8, t7,  1
    addiu   $at, t7, 0x0001            # $at = 00000001
    sra     t8, $at,  1
lbl_80069674:
    addu    t9, t2, t8
    subu    t6, t5, t3
    sh      t9, -0x0028(v1)            # FFFFFFD8
    bgez    t6, lbl_80069690
    sra     t7, t6,  1
    addiu   $at, t6, 0x0001            # $at = 00000001
    sra     t7, $at,  1
lbl_80069690:
    lh      t9, -0x0014(v1)            # FFFFFFEC
    lh      t4, -0x0024(v1)            # FFFFFFDC
    addu    t8, t3, t7
    sh      t8, -0x0026(v1)            # FFFFFFDA
    subu    t5, t9, t4
    bgez    t5, lbl_800696B4
    sra     t6, t5,  1
    addiu   $at, t5, 0x0001            # $at = 00000001
    sra     t6, $at,  1
lbl_800696B4:
    addu    t7, t4, t6
    jal     func_8007D85C
    sh      t7, -0x0024(v1)            # FFFFFFDC
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7530          # a1 = 00007530
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    lh      a1, 0x0000(s4)             # 800F1DE0
    lw      a0, 0x00CC($sp)
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7530          # a1 = 00007530
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a1, 0x0000(s4)             # 800F1DE0
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, a1, 0x0032             # a1 = 00000032
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x00EA($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3434             # t7 = 800F3434
    subu    t9, $zero, t8
    sll     t5, t9,  2
    addu    t5, t5, t9
    sll     t5, t5,  4
    addiu   t6, t5, 0xE070             # t6 = FFFFE070
    lh      t5, 0x014C(s3)             # 0000014C
    addu    t8, t6, t7
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    ori     t6, t5, 0x0002             # t6 = 00000002
    sw      t8, 0x0004(s3)             # 00000004
    sh      t9, 0x0160(s3)             # 00000160
    sh      t6, 0x014C(s3)             # 0000014C
    sw      t7, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s4, $zero              # a2 = 800F1DE0
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x3524             # t8 = 800F3524
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s4, $zero              # a2 = 800F1DE0
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    lh      t5, 0x014C(s3)             # 0000014C
    ori     t6, t5, 0x0002             # t6 = 00000002
    beq     $zero, $zero, lbl_8006B5B8
    sh      t6, 0x014C(s3)             # 0000014C
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x3704             # v0 = 800F3704
    lw      t9, 0x00EC(s2)             # 800F1EC8
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3714             # t7 = 800F3714
    sw      t9, 0x0000(t7)             # 800F3714
    lw      t8, 0x00F0(s2)             # 800F1ECC
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x3720             # t5 = 800F3720
    sw      t8, 0x0004(t7)             # 800F3718
    lw      t9, 0x00F4(s2)             # 800F1ED0
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    sll     a1, s5, 16
    sw      t9, 0x0008(t7)             # 800F371C
    lw      t7, 0x00E0(s2)             # 800F1EBC
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    sw      t7, 0x0000(t5)             # 800F3720
    lw      t6, 0x00E4(s2)             # 800F1EC0
    or      a2, s4, $zero              # a2 = 800F1DE0
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t6, 0x0004(t5)             # 800F3724
    lw      t7, 0x00E8(s2)             # 800F1EC4
    sw      t7, 0x0008(t5)             # 800F3728
    lwc1    $f18, 0x00D0(s2)           # 800F1EAC
    swc1    $f18, 0x0008(v0)           # 800F370C
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t8, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7C78($at)         # 80108388
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f4, -0x7C74($at)          # 8010838C
    lui     $at, 0xC4B3                # $at = C4B30000
    mtc1    $at, $f16                  # $f16 = -1432.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7C70($at)          # 80108390
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f8, -0x7C6C($at)          # 80108394
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x7C68($at)         # 80108398
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    swc1    $f10, 0x00B0($sp)
    swc1    $f4, 0x00B4($sp)
    swc1    $f16, 0x00B8($sp)
    swc1    $f6, 0x00A4($sp)
    swc1    $f8, 0x00A8($sp)
    jal     func_8009D6DC
    swc1    $f18, 0x00AC($sp)
    sll     a1, s5, 16
    addiu   a2, $sp, 0x00B0            # a2 = FFFFFFD8
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f10                  # $f10 = 55.00
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sh      t9, 0x015A(s3)             # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, s4, $zero              # a1 = 800F1DE0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218C8
    swc1    $f10, 0x00FC(s3)           # 000000FC
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_800226A4
    sw      s1, 0x00E4($sp)
    lw      t6, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t5, 0x0004(s0)             # FFFFFFBC
    sw      t6, 0x0000(s1)             # FFFFFFD8
    lw      t6, 0x0008(s0)             # FFFFFFC0
    lui     $at, 0x4248                # $at = 42480000
    sw      t5, 0x0004(s1)             # FFFFFFDC
    sw      t6, 0x0008(s1)             # FFFFFFE0
    lwc1    $f4, 0x00B4($sp)
    mtc1    $at, $f16                  # $f16 = 50.00
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f8                   # $f8 = 250.00
    add.s   $f6, $f4, $f16
    addiu   t7, $zero, 0xFA24          # t7 = FFFFFA24
    sh      t7, 0x00C4($sp)
    or      a0, s0, $zero              # a0 = FFFFFFB8
    swc1    $f6, 0x00B4($sp)
    or      a1, s4, $zero              # a1 = 800F1DE0
    jal     func_800226A4
    swc1    $f8, 0x00C0($sp)
    or      a0, s1, $zero              # a0 = FFFFFFD8
    jal     func_80067CF0
    or      a1, s0, $zero              # a1 = FFFFFFB8
    addiu   t8, v0, 0xF830             # t8 = FFFFF830
    sh      t8, 0x00C6($sp)
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    or      a1, s1, $zero              # a1 = FFFFFFD8
    jal     func_80067C70
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    sll     a2, s5, 16
    sra     a2, a2, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D5F0
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f18                  # $f18 = 55.00
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sh      t9, 0x015A(s3)             # 0000015A
    swc1    $f18, 0x00FC(s3)           # 000000FC
    lw      a1, 0x00E4($sp)
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_800218C8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_800226A4
    or      a1, s1, $zero              # a1 = FFFFFFD8
    lw      t6, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t5, 0x0004(s0)             # FFFFFFBC
    sw      t6, 0x0000(s1)             # FFFFFFD8
    lw      t6, 0x0008(s0)             # FFFFFFC0
    lui     $at, 0x4316                # $at = 43160000
    sw      t5, 0x0004(s1)             # FFFFFFDC
    sw      t6, 0x0008(s1)             # FFFFFFE0
    lh      t7, 0x009E($sp)
    mtc1    $at, $f10                  # $f10 = 150.00
    sh      $zero, 0x00C4($sp)
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    sh      t7, 0x00C6($sp)
    jal     func_80067C70
    swc1    $f10, 0x00C0($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f4                   # $f4 = 55.00
    sh      $zero, 0x015A(s3)          # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, s4, $zero              # a1 = 800F1DE0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218C8
    swc1    $f4, 0x00FC(s3)            # 000000FC
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    or      a1, s1, $zero              # a1 = FFFFFFD8
    jal     func_800226D8
    sw      s1, 0x00E4($sp)
    lw      t9, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t8, 0x0004(s0)             # FFFFFFBC
    sw      t9, 0x0000(s1)             # FFFFFFD8
    lw      t9, 0x0008(s0)             # FFFFFFC0
    lui     $at, 0x42F0                # $at = 42F00000
    sw      t8, 0x0004(s1)             # FFFFFFDC
    sw      t9, 0x0008(s1)             # FFFFFFE0
    lwc1    $f16, 0x00B4($sp)
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f18                  # $f18 = 300.00
    add.s   $f8, $f16, $f6
    lh      t5, 0x009E($sp)
    addiu   t6, $zero, 0xF510          # t6 = FFFFF510
    sh      t6, 0x00C4($sp)
    swc1    $f8, 0x00B4($sp)
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    swc1    $f18, 0x00C0($sp)
    jal     func_80067C70
    sh      t5, 0x00C6($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    sh      $zero, 0x015A(s3)          # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    swc1    $f10, 0x00FC(s3)           # 000000FC
    lw      a1, 0x00E4($sp)
    jal     func_800218C8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    addiu   a2, $zero, 0x0033          # a2 = 00000033
    jal     func_8009D6DC
    sw      s1, 0x00E4($sp)
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, s2, $zero              # a0 = 800F1DDC
    lw      a1, 0x00E4($sp)
    jal     func_800218C8
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f16, -0x7C64($at)         # 8010839C
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f6, -0x7C60($at)          # 801083A0
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f18, -0x7C5C($at)         # 801083A4
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7C58($at)         # 801083A8
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sw      s1, 0x00E4($sp)
    swc1    $f4, 0x00B0($sp)
    swc1    $f16, 0x00B4($sp)
    swc1    $f6, 0x00B8($sp)
    swc1    $f8, 0x00A4($sp)
    swc1    $f18, 0x00A8($sp)
    jal     func_8009D6DC
    swc1    $f10, 0x00AC($sp)
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a2, s1, $zero              # a2 = FFFFFFD8
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    addiu   t7, $zero, 0x001E          # t7 = 0000001E
    sh      t7, 0x015A(s3)             # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, s4, $zero              # a1 = 800F1DE0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218C8
    swc1    $f4, 0x00FC(s3)            # 000000FC
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_800226D8
    lw      a1, 0x00E4($sp)
    addiu   s5, $sp, 0x007C            # s5 = FFFFFFA4
    or      a0, s5, $zero              # a0 = FFFFFFA4
    jal     func_80022670
    or      a1, s4, $zero              # a1 = 800F1DE0
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f8                   # $f8 = 70.00
    lwc1    $f6, 0x0080($sp)
    lwc1    $f16, 0x007C($sp)
    lwc1    $f10, 0x0084($sp)
    add.s   $f18, $f6, $f8
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    or      a1, s0, $zero              # a1 = FFFFFFB8
    or      a2, s5, $zero              # a2 = FFFFFFA4
    swc1    $f18, 0x00B4($sp)
    swc1    $f16, 0x00B0($sp)
    jal     func_80067A84
    swc1    $f10, 0x00B8($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    addiu   t8, $zero, 0x05DC          # t8 = 000005DC
    sh      t8, 0x00C4($sp)
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    jal     func_80067C70
    swc1    $f4, 0x00C0($sp)
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x55F0          # a1 = 000055F0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x005A          # a1 = 0000005A
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80069D70:
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_800226A4
    or      a1, s1, $zero              # a1 = 00000000
    lw      t5, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t9, 0x0004(s0)             # FFFFFFBC
    sw      t5, 0x0000(s1)             # FFFFFFD8
    lw      t5, 0x0008(s0)             # FFFFFFC0
    lui     $at, 0x428C                # $at = 428C0000
    sw      t9, 0x0004(s1)             # FFFFFFDC
    sw      t5, 0x0008(s1)             # FFFFFFE0
    lwc1    $f16, 0x00B4($sp)
    mtc1    $at, $f6                   # $f6 = 70.00
    lh      t6, 0x009E($sp)
    lui     $at, 0x4396                # $at = 43960000
    add.s   $f8, $f16, $f6
    mtc1    $at, $f18                  # $f18 = 300.00
    addiu   t7, t6, 0x7FFF             # t7 = 00007FFF
    sh      $zero, 0x00C4($sp)
    swc1    $f8, 0x00B4($sp)
    sh      t7, 0x00C6($sp)
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    jal     func_80067C70
    swc1    $f18, 0x00C0($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s1, $zero              # a2 = FFFFFFD8
    jal     func_8009D328
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f10                  # $f10 = 45.00
    sh      $zero, 0x015A(s3)          # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, s4, $zero              # a1 = 800F1DE0
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    jal     func_800218C8
    swc1    $f10, 0x00FC(s3)           # 000000FC
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_80022670
    or      a1, s1, $zero              # a1 = FFFFFFD8
    lw      t9, 0x0000(s0)             # FFFFFFB8
    addiu   s1, $sp, 0x00B0            # s1 = FFFFFFD8
    lw      t8, 0x0004(s0)             # FFFFFFBC
    sw      t9, 0x0000(s1)             # FFFFFFD8
    lw      t9, 0x0008(s0)             # FFFFFFC0
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s4, $zero              # a2 = 800F1DE0
    addiu   a3, $zero, 0x0039          # a3 = 00000039
    sw      t8, 0x0004(s1)             # FFFFFFDC
    jal     func_8009D66C
    sw      t9, 0x0008(s1)             # FFFFFFE0
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_800226A4
    or      a1, s4, $zero              # a1 = 800F1DE0
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    or      a1, s1, $zero              # a1 = FFFFFFD8
    jal     func_80067A84
    or      a2, s0, $zero              # a2 = FFFFFFB8
    lh      t5, 0x00C6($sp)
    lui     $at, 0x43C8                # $at = 43C80000
    mtc1    $at, $f4                   # $f4 = 400.00
    addiu   t6, t5, 0x03E8             # t6 = 000003E8
    sh      t6, 0x00C6($sp)
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFCC
    or      a1, s1, $zero              # a1 = FFFFFFD8
    addiu   a2, $sp, 0x00C0            # a2 = FFFFFFE8
    jal     func_80067C70
    swc1    $f4, 0x00C0($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f16, 0x0094($sp)
    sll     a1, s5, 16
    sra     a1, a1, 16
    add.s   $f8, $f16, $f6
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s1, $zero              # a2 = FFFFFFD8
    addiu   a3, $sp, 0x00A4            # a3 = FFFFFFCC
    jal     func_8009D328
    swc1    $f8, 0x00A8($sp)
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f18                  # $f18 = 75.00
    sh      $zero, 0x015A(s3)          # 0000015A
    or      a0, s2, $zero              # a0 = 800F1DDC
    swc1    $f18, 0x00FC(s3)           # 000000FC
    lh      a3, 0x00C6($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   v1, a3, 0x7FFF             # v1 = 00007FFF
    sh      v1, 0x082C(s4)             # 800F260C
    sh      v1, 0x0032(s4)             # 800F1E12
    jal     func_800218EC
    sh      v1, 0x00B6(s4)             # 800F1E96
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x381C             # v0 = 800F381C
    lh      t7, 0x00EA($sp)
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    or      a0, s2, $zero              # a0 = 800F1DDC
    addiu   t8, t7, 0xFFFB             # t8 = FFFFFFFB
    sh      t8, 0x0054(v0)             # 800F3870
    sw      v0, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a2, s4, $zero              # a2 = 800F1DE0
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80069F70:
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F1DDC
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    jal     func_8009D6DC
    sw      s1, 0x00E4($sp)
    or      a0, s2, $zero              # a0 = 800F1DDC
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   a0, $sp, 0x0090            # a0 = FFFFFFB8
    jal     func_800226A4
    lw      a1, 0x00E4($sp)
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f10, -0x7C54($at)         # 801083AC
    lwc1    $f4, 0x0098($sp)
    c.lt.s  $f10, $f4
    nop
    bc1f    lbl_80069FF4
    lui     s2, 0x800F                 # s2 = 800F0000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   s2, s2, 0x23C4             # s2 = 800F23C4
    addiu   t5, t5, 0x2300             # t5 = 800F2300
    lui     a1, 0x800F                 # a1 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x2180             # a3 = 800F2180
    lh      a1, 0x23C8(a1)             # 800F23C8
    sw      t5, 0x0010($sp)
    lh      a2, 0x0000(s2)             # 800F23C4
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006A028
    or      a0, s3, $zero              # a0 = 00000000
lbl_80069FF4:
    lui     s2, 0x800F                 # s2 = 800F0000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   s2, s2, 0x23C4             # s2 = 800F23C4
    addiu   t6, t6, 0x2240             # t6 = 800F2240
    lui     a1, 0x800F                 # a1 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x2180             # a3 = 800F2180
    lh      a1, 0x23C8(a1)             # 800F23C8
    sw      t6, 0x0010($sp)
    lh      a2, 0x0000(s2)             # 800F23C4
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
lbl_8006A028:
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a1, 0x0000(s2)             # 800F23C4
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, a1, 0xFFF6             # a1 = FFFFFFF6
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F23C4
    jal     func_8009D6DC
    addiu   a2, $zero, 0x002A          # a2 = 0000002A
    or      a0, s2, $zero              # a0 = 800F23C4
    or      a1, s4, $zero              # a1 = 800F1DE0
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     a1, 0x800F                 # a1 = 800F0000
    lh      a1, 0x217C(a1)             # 800F217C
    lui     s0, 0x800F                 # s0 = 800F0000
    lui     s1, 0x800F                 # s1 = 800F0000
    lui     s4, 0x800F                 # s4 = 800F0000
    ori     a1, a1, 0x2000             # a1 = 800F2000
    addiu   s4, s4, 0x2178             # s4 = 800F2178
    addiu   s1, s1, 0x2094             # s1 = 800F2094
    addiu   s0, s0, 0x1FB4             # s0 = 800F1FB4
    sll     a1, a1, 16
    sra     a1, a1, 16
    or      a3, s0, $zero              # a3 = 800F1FB4
    sw      s1, 0x0010($sp)
    lh      a2, 0x0000(s4)             # 800F2178
    jal     func_80067E14
    or      a0, s3, $zero              # a0 = 00000000
    lui     s2, 0x800F                 # s2 = 800F0000
    addiu   s2, s2, 0x2174             # s2 = 800F2174
    lh      t7, 0x0000(s2)             # 800F2174
    lw      a0, 0x00CC($sp)
    sll     t8, t7,  4
    addu    a1, s1, t8
    addiu   a1, a1, 0xFFE8             # a1 = FFFFFFE8
    jal     func_80067D58
    addiu   a0, a0, 0x005C             # a0 = 0000005C
    lh      t9, 0x0000(s2)             # 800F2174
    lw      a0, 0x00CC($sp)
    sll     t5, t9,  4
    addu    a1, s0, t5
    addiu   a1, a1, 0xFFE8             # a1 = FFFFFFE8
    jal     func_80067D58
    addiu   a0, a0, 0x0050             # a0 = 00000050
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x4E20          # a1 = 00004E20
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0032          # a3 = 00000032
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a1, 0x0000(s4)             # 800F2178
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, a1, 0xFFEC             # a1 = FFFFFFEC
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   t6, $zero, 0xC027          # t6 = FFFFC027
    sh      t6, 0x082C(s4)             # 800F29A4
    lh      v1, 0x082C(s4)             # 800F29A4
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3894             # t7 = 800F3894
    addiu   t8, $zero, 0x0009          # t8 = 00000009
    sh      v1, 0x0032(s4)             # 800F21AA
    sh      v1, 0x00B6(s4)             # 800F222E
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0031          # a2 = 00000031
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    jal     func_8009D5F0
    or      a2, $zero, $zero           # a2 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    lh      a1, 0x00EA($sp)
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    lw      t6, 0x00EC(s2)             # 800F2260
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x3A0C             # t9 = 800F3A0C
    sw      t6, 0x0000(t9)             # 800F3A0C
    lw      t5, 0x00F0(s2)             # 800F2264
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3A18             # t7 = 800F3A18
    sw      t5, 0x0004(t9)             # 800F3A10
    lw      t6, 0x00F4(s2)             # 800F2268
    lui     $at, 0x800F                # $at = 800F0000
    or      a0, s0, $zero              # a0 = FFFFFFB8
    sw      t6, 0x0008(t9)             # 800F3A14
    lw      t9, 0x00E0(s2)             # 800F2254
    or      a1, s1, $zero              # a1 = 00000000
    sw      t9, 0x0000(t7)             # 800F3A18
    lw      t8, 0x00E4(s2)             # 800F2258
    sw      t8, 0x0004(t7)             # 800F3A1C
    lw      t9, 0x00E8(s2)             # 800F225C
    sw      t9, 0x0008(t7)             # 800F3A20
    lwc1    $f16, 0x00D0(s2)           # 800F2244
    jal     func_80022670
    swc1    $f16, 0x3A04($at)          # 800F3A04
    lh      t5, 0x009E($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x39FC             # t6 = 800F39FC
    sh      t5, 0x082C(s4)             # 800F29A4
    lh      v1, 0x082C(s4)             # 800F29A4
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sll     a1, s5, 16
    sh      v1, 0x0032(s4)             # 800F21AA
    sh      v1, 0x00B6(s4)             # 800F222E
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2EE0          # a1 = 00002EE0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x3A9C             # v0 = 800F3A9C
    lw      t5, 0x00EC(s2)             # 800F2260
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x3AAC             # t8 = 800F3AAC
    sw      t5, 0x0000(t8)             # 800F3AAC
    lw      t9, 0x00F0(s2)             # 800F2264
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x3AB8             # t6 = 800F3AB8
    sw      t9, 0x0004(t8)             # 800F3AB0
    lw      t5, 0x00F4(s2)             # 800F2268
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    or      a0, s2, $zero              # a0 = 800F2174
    sw      t5, 0x0008(t8)             # 800F3AB4
    lw      t8, 0x00E0(s2)             # 800F2254
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sw      t8, 0x0000(t6)             # 800F3AB8
    lw      t7, 0x00E4(s2)             # 800F2258
    sw      t7, 0x0004(t6)             # 800F3ABC
    lw      t8, 0x00E8(s2)             # 800F225C
    sw      t8, 0x0008(t6)             # 800F3AC0
    lwc1    $f6, 0x00D0(s2)            # 800F2244
    swc1    $f6, 0x0008(v0)            # 800F3AA4
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_800218EC
    sw      t9, 0x0000(s3)             # 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2EE0          # a1 = 00002EE0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x3B3C             # t5 = 800F3B3C
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x3BB4             # s0 = 800F3BB4
    lw      t9, 0x00EC(s2)             # 800F2260
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3BC4             # t7 = 800F3BC4
    sw      t9, 0x0000(t7)             # 800F3BC4
    lw      t8, 0x00F0(s2)             # 800F2264
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x3BD0             # t5 = 800F3BD0
    sw      t8, 0x0004(t7)             # 800F3BC8
    lw      t9, 0x00F4(s2)             # 800F2268
    mtc1    $zero, $f18                # $f18 = 0.00
    sw      t9, 0x0008(t7)             # 800F3BCC
    lw      t7, 0x00E0(s2)             # 800F2254
    sw      t7, 0x0000(t5)             # 800F3BD0
    lw      t6, 0x00E4(s2)             # 800F2258
    sw      t6, 0x0004(t5)             # 800F3BD4
    lw      t7, 0x00E8(s2)             # 800F225C
    sw      t7, 0x0008(t5)             # 800F3BD8
    lwc1    $f8, 0x00D0(s2)            # 800F2244
    swc1    $f8, 0x0008(s0)            # 800F3BBC
    lwc1    $f10, 0x0024(s1)           # 00000024
    c.lt.s  $f18, $f10
    nop
    bc1f    lbl_8006A54C
    lui     $at, 0x4248                # $at = 42480000
    lwc1    $f4, 0x0038(s0)            # 800F3BEC
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f18, 0x0044(s0)           # 800F3BF8
    lh      t8, 0x002E(s0)             # 800F3BE2
    lh      t5, 0x0056(s0)             # 800F3C0A
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f8                   # $f8 = 80.00
    neg.s   $f16, $f4
    neg.s   $f10, $f18
    subu    t9, $zero, t8
    subu    t6, $zero, t5
    sh      t9, 0x002E(s0)             # 800F3BE2
    sh      t6, 0x0056(s0)             # 800F3C0A
    swc1    $f16, 0x0038(s0)           # 800F3BEC
    swc1    $f10, 0x0044(s0)           # 800F3BF8
    swc1    $f6, 0x003C(s0)            # 800F3BF0
    swc1    $f8, 0x0048(s0)            # 800F3BFC
lbl_8006A54C:
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sll     a1, s5, 16
    sw      s0, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x3C7C             # t8 = 800F3C7C
    addiu   t9, $zero, 0x0007          # t9 = 00000007
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x3D94             # t5 = 800F3D94
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x3E5C             # t7 = 800F3E5C
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x3EAC             # t9 = 800F3EAC
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    lw      t6, 0x066C(s4)             # 800F27E4
    lui     $at, 0x2000                # $at = 20000000
    addiu   t8, $zero, 0x005A          # t8 = 0000005A
    or      t7, t6, $at                # t7 = 20000000
    sw      t7, 0x066C(s4)             # 800F27E4
    sh      t8, 0x0110(s4)             # 800F2288
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x3F9C             # t9 = 800F3F9C
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x7D00          # a1 = 00007D00
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    jal     func_8007D6B0
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x40B4             # t6 = 800F40B4
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    addiu   t8, $zero, 0x3FFC          # t8 = 00003FFC
    sh      t8, 0x082C(s4)             # 800F29A4
    lh      v1, 0x082C(s4)             # 800F29A4
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sh      v1, 0x0032(s4)             # 800F21AA
    jal     func_8009D66C
    sh      v1, 0x00B6(s4)             # 800F222E
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x417C             # t9 = 800F417C
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x41F4             # v1 = 800F41F4
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sh      t6, 0x002C(v1)             # 800F4220
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    sll     a1, s5, 16
    sw      v1, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x4294             # t8 = 800F4294
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sll     a1, s5, 16
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x4384             # t5 = 800F4384
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x444C             # t7 = 800F444C
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x44EC             # t9 = 800F44EC
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x453C             # t6 = 800F453C
    addiu   t7, $zero, 0x0008          # t7 = 00000008
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x467C             # t8 = 800F467C
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      a0, 0x00CC($sp)
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t5, 0x00EA($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x46F4             # t6 = 800F46F4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sll     a1, s5, 16
    sh      t5, 0x0110(s4)             # 800F2288
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2EE0          # a1 = 00002EE0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a1, 0x00EA($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, a1, 0xFFB0             # a1 = FFFFFFB0
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f16                  # $f16 = -15.00
    lwc1    $f4, 0x002C(s4)            # 800F21A4
    c.lt.s  $f4, $f16
    nop
    bc1f    lbl_8006ABC0
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x471C             # t8 = 800F471C
    beq     $zero, $zero, lbl_8006ABCC
    sw      t8, 0x0004(s3)             # 00000004
lbl_8006ABC0:
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x4744             # t9 = 800F4744
    sw      t9, 0x0004(s3)             # 00000004
lbl_8006ABCC:
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sll     a1, s5, 16
    sw      t5, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, s4, $zero              # a1 = 800F2178
    jal     func_800218C8
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    or      s1, v0, $zero              # s1 = 00000000
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x2EE0          # a1 = 00002EE0
    sll     s0, s1, 16
    sra     s0, s0, 16
    sll     a0, s0, 16
    sra     a0, a0, 16
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x000A          # a3 = 0000000A
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a1, 0x00EA($sp)
    sll     a0, s0, 16
    sra     a0, a0, 16
    addiu   a1, a1, 0xFFF6             # a1 = FFFFFFF6
    sll     a1, a1, 16
    jal     func_8007D6B0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x476C             # t6 = 800F476C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      t8, 0x00EA($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x4794             # v1 = 800F4794
    addiu   t9, t8, 0xFFFB             # t9 = FFFFFFFB
    sh      t9, 0x002C(v1)             # 800F47C0
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sll     a1, s5, 16
    sw      v1, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    or      a0, s2, $zero              # a0 = 800F2174
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lh      t6, 0x00EA($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x47E4             # v1 = 800F47E4
    addiu   t7, t6, 0xFFF6             # t7 = FFFFFFF6
    sh      t7, 0x002C(v1)             # 800F4810
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sll     a1, s5, 16
    sw      v1, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006AD48:
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x4834             # t9 = 800F4834
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sll     a1, s5, 16
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006AD7C:
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x48AC             # t6 = 800F48AC
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sll     a1, s5, 16
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006ADB0:
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_80022670
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a0, $sp, 0x007C            # a0 = FFFFFFA4
    jal     func_80022670
    or      a1, s4, $zero              # a1 = 800F2178
    lwc1    $f6, 0x0094($sp)
    lwc1    $f8, 0x0080($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    sub.s   $f18, $f6, $f8
    lh      t8, 0x00EA($sp)
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f16                  # $f16 = 90.00
    div.s   $f4, $f18, $f10
    andi    t9, t8, 0x0001             # t9 = 00000000
    sll     t5, t9,  3
    addu    t5, t5, t9
    sll     t5, t5,  2
    subu    t5, t5, t9
    lui     t6, 0x800F                 # t6 = 800F0000
    lw      t7, 0x00CC($sp)
    addiu   t6, t6, 0x4924             # t6 = 800F4924
    sll     t5, t5,  3
    addu    v1, t5, t6
    addiu   t5, $zero, 0x0007          # t5 = 00000007
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    add.s   $f6, $f4, $f16
    swc1    $f6, 0x0014(v1)            # 00000014
    lw      t9, 0x0050(t7)             # 00000050
    sw      t9, 0x00D8(v1)             # 000000D8
    lw      t8, 0x0054(t7)             # 00000054
    sw      t8, 0x00DC(v1)             # 000000DC
    lw      t9, 0x0058(t7)             # 00000058
    sw      t9, 0x00E0(v1)             # 000000E0
    sw      v1, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t5, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006AE64:
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0x1C18             # s0 = 800F1C18
    lw      v1, 0x009C(s2)             # 800F2210
    lw      t6, 0x0000(s0)             # 800F1C18
    subu    v0, v1, t6
    slti    $at, v0, 0x0E11
    beq     $at, $zero, lbl_8006AE88
    slti    $at, v0, 0xF1F0
    beq     $at, $zero, lbl_8006AEA4
lbl_8006AE88:
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x4B54             # t7 = 800F4B54
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006AEFC
    sll     a1, s5, 16
lbl_8006AEA4:
    andi    t9, v1, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_8006AEE4
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x4C1C             # v0 = 800F4C1C
    lwc1    $f8, 0x0014(v0)            # 800F4C30
    lwc1    $f10, 0x0020(v0)           # 800F4C3C
    lwc1    $f16, 0x003C(v0)           # 800F4C58
    lh      t5, 0x0006(v0)             # 800F4C22
    neg.s   $f18, $f8
    neg.s   $f4, $f10
    neg.s   $f6, $f16
    subu    t6, $zero, t5
    sh      t6, 0x0006(v0)             # 800F4C22
    swc1    $f18, 0x0014(v0)           # 800F4C30
    swc1    $f4, 0x0020(v0)            # 800F4C3C
    swc1    $f6, 0x003C(v0)            # 800F4C58
lbl_8006AEE4:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x4C1C             # v0 = 800F4C1C
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sw      v0, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sll     a1, s5, 16
lbl_8006AEFC:
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    lw      t8, 0x009C(s2)             # 800F2210
    beq     $zero, $zero, lbl_8006B5B8
    sw      t8, 0x0000(s0)             # 800F1C18
lbl_8006AF1C:
    addiu   t9, $zero, 0xFF9D          # t9 = FFFFFF9D
    sh      t9, 0x0160(s3)             # 00000160
    jal     func_8009DAE4
    or      a0, s2, $zero              # a0 = 800F2174
    beq     v0, $zero, lbl_8006AF54
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x0038          # a3 = 00000038
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    beq     $zero, $zero, lbl_8006B5B8
    sh      t5, 0x012C(s3)             # 0000012C
lbl_8006AF54:
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    jal     func_8009D5F0
    or      a2, $zero, $zero           # a2 = 00000000
    sll     a1, s5, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    jal     func_8009D6DC
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006AF84:
    jal     func_8009DAE4
    or      a0, s2, $zero              # a0 = 800F2174
    beq     v0, $zero, lbl_8006B0A0
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    beq     t6, $zero, lbl_8006AFAC
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    beq     $zero, $zero, lbl_8006AFB8
    nop
lbl_8006AFAC:
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f12                  # $f12 = 120.00
    nop
lbl_8006AFB8:
    lui     s1, 0x800F                 # s1 = 800F0000
    addiu   s1, s1, 0x4C94             # s1 = 800F4C94
    swc1    $f12, 0x004C(s1)           # 800F4CE0
    swc1    $f12, 0x0024(s1)           # 800F4CB8
    lw      t7, 0x066C(s4)             # 800F27E4
    sll     t8, t7,  4
    bgezl   t8, lbl_8006AFE8
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0068(s1)            # 800F4CFC
    addiu   s0, $sp, 0x0090            # s0 = FFFFFFB8
lbl_8006AFE8:
    or      a0, s0, $zero              # a0 = FFFFFFB8
    jal     func_800226D8
    or      a1, s4, $zero              # a1 = 800F2178
    lw      a2, 0x00CC($sp)
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    or      a1, s0, $zero              # a1 = FFFFFFB8
    jal     func_80067A84
    addiu   a2, a2, 0x0050             # a2 = 00000050
    lh      t9, 0x00C6($sp)
    lh      t5, 0x009E($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x4D1C             # a0 = 800F4D1C
    subu    t6, t9, t5
    sh      t6, 0x00C6($sp)
    jal     func_80067850
    addiu   a1, $sp, 0x00C0            # a1 = FFFFFFE8
    lw      a2, 0x00CC($sp)
    addiu   a0, $sp, 0x00C0            # a0 = FFFFFFE8
    or      a1, s0, $zero              # a1 = FFFFFFB8
    jal     func_80067A84
    addiu   a2, a2, 0x005C             # a2 = 0000005C
    lh      t7, 0x00C6($sp)
    lh      t8, 0x009E($sp)
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x4D28             # a0 = 800F4D28
    subu    t9, t7, t8
    sh      t9, 0x00C6($sp)
    jal     func_80067850
    addiu   a1, $sp, 0x00C0            # a1 = FFFFFFE8
    lw      t5, 0x00CC($sp)
    lh      t6, 0x00EA($sp)
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    lwc1    $f18, 0x00FC(t5)           # 000000FC
    addiu   t7, t6, 0xFFCE             # t7 = FFFFFFCE
    sh      t7, 0x007C(s1)             # 800F4D10
    sll     a1, s5, 16
    swc1    $f18, 0x0080(s1)           # 800F4D14
    sw      s1, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B0A0:
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x4D34             # v1 = 800F4D34
    addiu   v0, $sp, 0x0054            # v0 = FFFFFF7C
    lh      t9, 0x00EA($sp)
    lw      t6, 0x00CC($sp)
    lw      t7, 0x00CC($sp)
    addiu   t5, t9, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x002C(v1)             # 800F4D60
    lwc1    $f10, 0x00FC(t6)           # 000000FC
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x4D6C             # t5 = 800F4D6C
    swc1    $f10, 0x0008(v1)           # 800F4D3C
    lw      t9, 0x0050(t7)             # 00000050
    sll     a1, s5, 16
    sra     a1, a1, 16
    sw      t9, 0x0000(v0)             # FFFFFF7C
    lw      t8, 0x0054(t7)             # 00000054
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    sw      t8, 0x0004(v0)             # FFFFFF80
    lw      t9, 0x0058(t7)             # 00000058
    lw      t7, 0x0000(v0)             # FFFFFF7C
    lui     t8, 0x800F                 # t8 = 800F0000
    sw      t9, 0x0008(v0)             # FFFFFF84
    sw      t7, 0x0000(t5)             # 800F4D6C
    lw      t6, 0x0004(v0)             # FFFFFF80
    addiu   t8, t8, 0x4D44             # t8 = 800F4D44
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t6, 0x0004(t5)             # 800F4D70
    lw      t7, 0x0008(v0)             # FFFFFF84
    sw      t7, 0x0008(t5)             # 800F4D74
    lw      t5, 0x0000(v0)             # FFFFFF7C
    sw      t5, 0x0000(t8)             # 800F4D44
    lw      t9, 0x0004(v0)             # FFFFFF80
    sw      t9, 0x0004(t8)             # 800F4D48
    lw      t5, 0x0008(v0)             # FFFFFF84
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x4D78             # t9 = 800F4D78
    sw      t5, 0x0008(t8)             # 800F4D4C
    lw      t6, 0x00CC($sp)
    lw      t8, 0x005C(t6)             # 0000005C
    sw      t8, 0x0000(v0)             # FFFFFF7C
    lw      t7, 0x0060(t6)             # 00000060
    sw      t7, 0x0004(v0)             # FFFFFF80
    lw      t8, 0x0064(t6)             # 00000064
    lw      t6, 0x0000(v0)             # FFFFFF7C
    lui     t7, 0x800F                 # t7 = 800F0000
    sw      t8, 0x0008(v0)             # FFFFFF84
    sw      t6, 0x0000(t9)             # 800F4D78
    lw      t5, 0x0004(v0)             # FFFFFF80
    addiu   t7, t7, 0x4D50             # t7 = 800F4D50
    sw      t5, 0x0004(t9)             # 800F4D7C
    lw      t6, 0x0008(v0)             # FFFFFF84
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t6, 0x0008(t9)             # 800F4D80
    lw      t9, 0x0000(v0)             # FFFFFF7C
    sw      t9, 0x0000(t7)             # 800F4D50
    lw      t8, 0x0004(v0)             # FFFFFF80
    sw      t8, 0x0004(t7)             # 800F4D54
    lw      t9, 0x0008(v0)             # FFFFFF84
    sw      t9, 0x0008(t7)             # 800F4D58
    sw      v1, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t5, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B1A8:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x4D84             # v0 = 800F4D84
    lw      t8, 0x00EC(s2)             # 800F2260
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x4D94             # t6 = 800F4D94
    sw      t8, 0x0000(t6)             # 800F4D94
    lw      t7, 0x00F0(s2)             # 800F2264
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x4DA0             # t9 = 800F4DA0
    sw      t7, 0x0004(t6)             # 800F4D98
    lw      t8, 0x00F4(s2)             # 800F2268
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sll     a1, s5, 16
    sw      t8, 0x0008(t6)             # 800F4D9C
    lw      t6, 0x00E0(s2)             # 800F2254
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    sw      t6, 0x0000(t9)             # 800F4DA0
    lw      t5, 0x00E4(s2)             # 800F2258
    or      a2, s4, $zero              # a2 = 800F2178
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t5, 0x0004(t9)             # 800F4DA4
    lw      t6, 0x00E8(s2)             # 800F225C
    sw      t6, 0x0008(t9)             # 800F4DA8
    lwc1    $f4, 0x00D0(s2)            # 800F2244
    swc1    $f4, 0x0008(v0)            # 800F4D8C
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t7, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B224:
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x4DAC             # t8 = 800F4DAC
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    sll     a1, s5, 16
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B258:
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x4E74             # t5 = 800F4E74
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sll     a1, s5, 16
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x4F3C             # t7 = 800F4F3C
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sll     a1, s5, 16
    sw      t7, 0x0004(s3)             # 00000004
    sw      t8, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x4FDC             # t9 = 800F4FDC
    addiu   t5, $zero, 0x0005          # t5 = 00000005
    sll     a1, s5, 16
    sw      t9, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x50A4             # t6 = 800F50A4
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    sll     a1, s5, 16
    sw      t6, 0x0004(s3)             # 00000004
    sw      t7, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x516C             # t8 = 800F516C
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    sll     a1, s5, 16
    sw      t8, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x520C             # t5 = 800F520C
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sll     a1, s5, 16
    sw      t5, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x52AC             # v0 = 800F52AC
    lh      t7, 0x00A4(v0)             # 800F5350
    lh      t8, 0x0004(v0)             # 800F52B0
    lh      t5, 0x007C(v0)             # 800F5328
    sll     a1, s5, 16
    addu    t9, t7, t8
    lh      t7, 0x002C(v0)             # 800F52D8
    addu    t6, t9, t5
    lh      t9, 0x0054(v0)             # 800F5300
    addu    t8, t6, t7
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addu    t5, t8, t9
    sh      t5, 0x0160(s3)             # 00000160
    sw      v0, 0x0004(s3)             # 00000004
    sw      t6, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B3EC:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x5374             # v0 = 800F5374
    lw      t9, 0x00EC(s2)             # 800F2260
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x5384             # t7 = 800F5384
    sw      t9, 0x0000(t7)             # 800F5384
    lw      t8, 0x00F0(s2)             # 800F2264
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x5390             # t5 = 800F5390
    sw      t8, 0x0004(t7)             # 800F5388
    lw      t9, 0x00F4(s2)             # 800F2268
    lui     t8, 0x8012                 # t8 = 80120000
    sw      t9, 0x0008(t7)             # 800F538C
    lw      t7, 0x00E0(s2)             # 800F2254
    sw      t7, 0x0000(t5)             # 800F5390
    lw      t6, 0x00E4(s2)             # 800F2258
    sw      t6, 0x0004(t5)             # 800F5394
    lw      t7, 0x00E8(s2)             # 800F225C
    sw      t7, 0x0008(t5)             # 800F5398
    lwc1    $f16, 0x00D0(s2)           # 800F2244
    swc1    $f16, 0x0008(v0)           # 800F537C
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    bne     t8, $zero, lbl_8006B460
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0x4250                # $at = 42500000
    mtc1    $at, $f8                   # $f8 = 52.00
    swc1    $f6, 0x003C(v0)            # 800F53B0
    swc1    $f8, 0x0048(v0)            # 800F53BC
lbl_8006B460:
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sll     a1, s5, 16
    sw      v0, 0x0004(s3)             # 00000004
    sw      t9, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s4, $zero              # a2 = 800F2178
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B48C:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x53EC             # v0 = 800F53EC
    lw      t7, 0x00EC(s2)             # 800F2260
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x53FC             # t5 = 800F53FC
    sw      t7, 0x0000(t5)             # 800F53FC
    lw      t6, 0x00F0(s2)             # 800F2264
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x5408             # t8 = 800F5408
    sw      t6, 0x0004(t5)             # 800F5400
    lw      t7, 0x00F4(s2)             # 800F2268
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sll     a1, s5, 16
    sw      t7, 0x0008(t5)             # 800F5404
    lw      t5, 0x00E0(s2)             # 800F2254
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    sw      t5, 0x0000(t8)             # 800F5408
    lw      t9, 0x00E4(s2)             # 800F2258
    or      a2, s4, $zero              # a2 = 800F2178
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t9, 0x0004(t8)             # 800F540C
    lw      t5, 0x00E8(s2)             # 800F225C
    sw      t5, 0x0008(t8)             # 800F5410
    lwc1    $f18, 0x00D0(s2)           # 800F2244
    swc1    $f18, 0x0008(v0)           # 800F53F4
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t6, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B508:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x543C             # v0 = 800F543C
    lw      t9, 0x00EC(s2)             # 800F2260
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x544C             # t7 = 800F544C
    sw      t9, 0x0000(t7)             # 800F544C
    lw      t8, 0x00F0(s2)             # 800F2264
    lui     t5, 0x800F                 # t5 = 800F0000
    addiu   t5, t5, 0x5458             # t5 = 800F5458
    sw      t8, 0x0004(t7)             # 800F5450
    lw      t9, 0x00F4(s2)             # 800F2268
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sll     a1, s5, 16
    sw      t9, 0x0008(t7)             # 800F5454
    lw      t7, 0x00E0(s2)             # 800F2254
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    sw      t7, 0x0000(t5)             # 800F5458
    lw      t6, 0x00E4(s2)             # 800F2258
    or      a2, s4, $zero              # a2 = 800F2178
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
    sw      t6, 0x0004(t5)             # 800F545C
    lw      t7, 0x00E8(s2)             # 800F225C
    sw      t7, 0x0008(t5)             # 800F5460
    lwc1    $f10, 0x00D0(s2)           # 800F2244
    swc1    $f10, 0x0008(v0)           # 800F5444
    sw      v0, 0x0004(s3)             # 00000004
    jal     func_8009D66C
    sw      t8, 0x0000(s3)             # 00000000
    beq     $zero, $zero, lbl_8006B5BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B584:
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x54B4             # v0 = 800F54B4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sh      t9, 0x002C(v0)             # 800F54E0
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sll     a1, s5, 16
    sw      v0, 0x0004(s3)             # 00000004
    sw      t5, 0x0000(s3)             # 00000000
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 800F2174
    or      a2, s1, $zero              # a2 = 800F4C94
    jal     func_8009D66C
    addiu   a3, $zero, 0x003C          # a3 = 0000003C
lbl_8006B5B8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006B5BC:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    lw      s4, 0x002C($sp)
    lw      s5, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00D8           # $sp = 00000000


func_8006B5E0:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sra     a2, a2, 16
    sll     t6, a2,  2
    addu    a3, a0, t6
    sll     t8, a1,  2
    lw      t7, 0x0790(a3)             # 00000790
    addu    t9, a0, t8
    lw      t0, 0x0790(t9)             # 00000790
    lh      v0, 0x014E(t7)             # 0000014E
    sh      a2, 0x0162(t0)             # 00000162
    lw      t1, 0x0790(a3)             # 00000790
    sh      a1, 0x014E(t1)             # 0000014E
    jr      $ra
    nop


func_8006B628:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a1, 0x0024($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sll     t6, a1,  2
    addu    t7, a0, t6
    lw      v0, 0x0790(t7)             # 00000790
    lh      t8, 0x014E(v0)             # 0000014E
    lw      a3, 0x008C(v0)             # 0000008C
    lh      a2, 0x0164(v0)             # 00000164
    sll     t9, t8,  2
    addu    t0, a3, t9
    lw      v1, 0x0790(t0)             # 00000790
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    lh      t1, 0x0162(v1)             # 00000162
    bnel    a2, t1, lbl_8006B684
    lh      t3, 0x0162(v0)             # 00000162
    lh      t2, 0x0162(v0)             # 00000162
    sh      t2, 0x0162(v1)             # 00000162
    lw      a3, 0x008C(v0)             # 0000008C
    lh      a2, 0x0164(v0)             # 00000164
    lh      t3, 0x0162(v0)             # 00000162
lbl_8006B684:
    sll     t4, t3,  2
    addu    t5, a3, t4
    lw      v1, 0x0790(t5)             # 00000790
    lh      t6, 0x014E(v1)             # 0000014E
    bnel    a2, t6, lbl_8006B6B0
    lh      t8, 0x07A0(a0)             # 000007A0
    lh      t7, 0x014E(v0)             # 0000014E
    sh      t7, 0x014E(v1)             # 0000014E
    lw      a3, 0x008C(v0)             # 0000008C
    lh      a2, 0x0164(v0)             # 00000164
    lh      t8, 0x07A0(a0)             # 000007A0
lbl_8006B6B0:
    addiu   v1, $zero, 0xFFFF          # v1 = FFFFFFFF
    or      a0, a3, $zero              # a0 = 00000000
    bne     a1, t8, lbl_8006B6C8
    nop
    beq     $zero, $zero, lbl_8006B6C8
    lh      v1, 0x0162(v0)             # 00000162
lbl_8006B6C8:
    sh      $zero, 0x0162(v0)          # 00000162
    lh      t9, 0x0162(v0)             # 00000162
    sh      t0, 0x0160(v0)             # 00000160
    sll     a1, a2, 16
    sh      t9, 0x014E(v0)             # 0000014E
    sw      v1, 0x0018($sp)
    jal     func_8009D21C
    sra     a1, a1, 16
    lw      v0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_8006B6FC:
# Start onepointdemo
# A0 = Global Context
# A1 = onepointdemo id
# A2 = u16 Framecount
# A3 = Actor*
# SP+0x10 = u16 ?
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s3, 0x0028($sp)
    sll     s3, a2, 16
    sw      s7, 0x0038($sp)
    sw      s5, 0x0030($sp)
    sw      s2, 0x0024($sp)
    sw      s0, 0x001C($sp)
    lh      s0, 0x005A($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a3, $zero              # s5 = 00000000
    addiu   s7, $zero, 0xFFFF          # s7 = FFFFFFFF
    sra     s3, s3, 16
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0034($sp)
    sw      s4, 0x002C($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    bne     s0, s7, lbl_8006B750
    nop
    lh      s0, 0x07A0(s2)             # 000007A0
lbl_8006B750:
    jal     func_8009D0F0
    or      a0, s2, $zero              # a0 = 00000000
    bne     v0, s7, lbl_8006B768
    sh      v0, 0x0042($sp)
    beq     $zero, $zero, lbl_8006B988
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8006B768:
    sll     t6, s0,  2
    addu    t7, s2, t6
    lw      t8, 0x0790(t7)             # 00000790
    addiu   s4, $zero, 0x0007          # s4 = 00000007
    or      a0, s2, $zero              # a0 = 00000000
    lh      s1, 0x014E(t8)             # 0000014E
    lh      a2, 0x0042($sp)
    blez    s1, lbl_8006B79C
    sll     a1, s1, 16
    jal     func_8006B5E0
    sra     a1, a1, 16
    beq     $zero, $zero, lbl_8006B7A4
    addiu   s4, $zero, 0x0001          # s4 = 00000001
lbl_8006B79C:
    jal     func_8006D8E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
lbl_8006B7A4:
    sll     a2, s0, 16
    sra     a2, a2, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8006B5E0
    lh      a1, 0x0042($sp)
    lh      t9, 0x0042($sp)
    sll     a1, s0, 16
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    sll     t0, t9,  2
    addu    s6, s2, t0
    lw      v1, 0x0790(s6)             # 00000790
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    sh      s3, 0x0160(v1)             # 00000160
    sw      s5, 0x00A8(v1)             # 000000A8
    lw      t2, 0x00EC(s2)             # 000000EC
    sw      t2, 0x0050(v1)             # 00000050
    lw      t1, 0x00F0(s2)             # 000000F0
    sw      t1, 0x0054(v1)             # 00000054
    lw      t2, 0x00F4(s2)             # 000000F4
    sw      t2, 0x0058(v1)             # 00000058
    lw      t4, 0x00E0(s2)             # 000000E0
    sw      t4, 0x005C(v1)             # 0000005C
    lw      t3, 0x00E4(s2)             # 000000E4
    sw      t3, 0x0060(v1)             # 00000060
    lw      t4, 0x00E8(s2)             # 000000E8
    sw      t4, 0x0064(v1)             # 00000064
    lwc1    $f4, 0x00D0(s2)            # 000000D0
    swc1    $f4, 0x00FC(v1)            # 000000FC
    lh      t5, 0x004E($sp)
    bne     s0, $zero, lbl_8006B83C
    sh      t5, 0x0168(v1)             # 00000168
    sll     a1, s0, 16
    sra     a1, a1, 16
    jal     func_8009D1AC
    or      a0, s2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006B848
    or      a0, s2, $zero              # a0 = 00000000
lbl_8006B83C:
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    or      a0, s2, $zero              # a0 = 00000000
lbl_8006B848:
    lh      a1, 0x0042($sp)
    lh      a2, 0x004E($sp)
    or      a3, s5, $zero              # a3 = 00000000
    jal     func_80067E48
    sw      s3, 0x0010($sp)
    sll     a2, s4, 16
    sra     a2, a2, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D1AC
    lh      a1, 0x0042($sp)
    lw      t6, 0x0790(s6)             # 00000790
    lh      s1, 0x0042($sp)
    addiu   s5, $zero, 0x1392          # s5 = 00001392
    lh      a1, 0x014E(t6)             # 0000014E
    addiu   s3, $zero, 0x0064          # s3 = 00000064
    blez    a1, lbl_8006B984
    sll     t7, a1,  2
lbl_8006B88C:
    addu    t8, s2, t7
    lw      t9, 0x0790(t8)             # 00000790
    lw      t1, 0x0790(s6)             # 00000790
    lh      v0, 0x0168(t9)             # 00000168
    lh      t2, 0x0168(t1)             # 00000168
    div     $zero, v0, s3
    mflo    t0
    bne     s3, $zero, lbl_8006B8B4
    nop
    break   # 0x01C00
lbl_8006B8B4:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s3, $at, lbl_8006B8CC
    lui     $at, 0x8000                # $at = 80000000
    bne     v0, $at, lbl_8006B8CC
    nop
    break   # 0x01800
lbl_8006B8CC:
    div     $zero, t2, s3
    bne     s3, $zero, lbl_8006B8DC
    nop
    break   # 0x01C00
lbl_8006B8DC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     s3, $at, lbl_8006B8F4
    lui     $at, 0x8000                # $at = 80000000
    bne     t2, $at, lbl_8006B8F4
    nop
    break   # 0x01800
lbl_8006B8F4:
    mflo    t3
    slt     $at, t0, t3
    beql    $at, $zero, lbl_8006B968
    sll     s1, a1, 16
    beq     s5, v0, lbl_8006B94C
    or      a0, s2, $zero              # a0 = 00000000
    sll     t4, s1,  2
    addu    s0, s2, t4
    jal     func_8006B628
    or      a0, s2, $zero              # a0 = 00000000
    sll     t5, v0, 16
    sra     t6, t5, 16
    sll     s4, v0, 16
    beq     s7, t6, lbl_8006B974
    sra     s4, s4, 16
    sll     a1, s4, 16
    sra     a1, a1, 16
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    beq     $zero, $zero, lbl_8006B978
    lw      t9, 0x0790(s0)             # 00000790
lbl_8006B94C:
    sll     s1, a1, 16
    jal     func_8006B9B4
    sra     s1, s1, 16
    sll     t7, s1,  2
    beq     $zero, $zero, lbl_8006B974
    addu    s0, s2, t7
    sll     s1, a1, 16
lbl_8006B968:
    sra     s1, s1, 16
    sll     t8, s1,  2
    addu    s0, s2, t8
lbl_8006B974:
    lw      t9, 0x0790(s0)             # 00000790
lbl_8006B978:
    lh      a1, 0x014E(t9)             # 0000014E
    bgtzl   a1, lbl_8006B88C
    sll     t7, a1,  2
lbl_8006B984:
    lh      v0, 0x0042($sp)
lbl_8006B988:
    lw      $ra, 0x003C($sp)
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


func_8006B9B4:
# Camera related
# A0 = Global Context
# A1 = s16 ?
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bnel    a1, $at, lbl_8006B9D4
    sll     t6, a1,  2
    lh      a1, 0x07A0(a0)             # 000007A0
    sll     t6, a1,  2
lbl_8006B9D4:
    addu    t7, a0, t6
    lw      v0, 0x0790(t7)             # 00000790
    beql    v0, $zero, lbl_8006BA08
    or      v0, a1, $zero              # v0 = 00000000
    lh      t8, 0x0168(v0)             # 00000168
    addiu   $at, $zero, 0x1392         # $at = 00001392
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    bnel    t8, $at, lbl_8006BA04
    sh      $zero, 0x0160(v0)          # 00000160
    beq     $zero, $zero, lbl_8006BA04
    sh      t9, 0x0160(v0)             # 00000160
    sh      $zero, 0x0160(v0)          # 00000160
lbl_8006BA04:
    or      v0, a1, $zero              # v0 = 00000000
lbl_8006BA08:
    jr      $ra
    nop


func_8006BA10:
# Start onepointdemo 0x1392
# A0 = Global Context
# A1 = Actor* instance
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a3, a1, $zero              # a3 = 00000000
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    lui     $at, 0x800F                # $at = 800F0000
    sh      t0, 0x1C14($at)            # 800F1C14
    lw      a2, 0x0790(s0)             # 00000790
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a1, $zero, $zero           # a1 = 00000000
    lh      t6, 0x0144(a2)             # 00000144
    or      a0, a2, $zero              # a0 = 00000000
    bnel    t6, $at, lbl_8006BA68
    lh      v0, 0x014E(a2)             # 0000014E
    sw      a2, 0x002C($sp)
    jal     func_80049330
    sw      a3, 0x0034($sp)
    lw      a2, 0x002C($sp)
    lw      a3, 0x0034($sp)
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    lh      v0, 0x014E(a2)             # 0000014E
lbl_8006BA68:
    or      a0, t0, $zero              # a0 = FFFFFFFF
    addiu   v1, $zero, 0x002B          # v1 = 0000002B
    beq     v0, $zero, lbl_8006BACC
    sll     t7, v0,  2
lbl_8006BA78:
    addu    t8, s0, t7
    lw      a2, 0x0790(t8)             # 00000790
    beq     a2, $zero, lbl_8006BACC
    nop
    lh      t9, 0x0142(a2)             # 00000142
    beql    v1, t9, lbl_8006BAA8
    lw      t1, 0x00A8(a2)             # 000000A8
    bne     a0, t0, lbl_8006BACC
    nop
    beq     $zero, $zero, lbl_8006BAC4
    lh      v0, 0x014E(a2)             # 0000014E
    lw      t1, 0x00A8(a2)             # 000000A8
lbl_8006BAA8:
    lbu     t2, 0x0002(a3)             # 00000002
    lbu     v0, 0x0002(t1)             # 00000002
    slt     $at, v0, t2
    bne     $at, $zero, lbl_8006BACC
    nop
    or      a0, v0, $zero              # a0 = 00000000
    lh      v0, 0x014E(a2)             # 0000014E
lbl_8006BAC4:
    bnel    v0, $zero, lbl_8006BA78
    sll     t7, v0,  2
lbl_8006BACC:
    bne     a0, t0, lbl_8006BADC
    lbu     a1, 0x0002(a3)             # 00000002
    beq     $zero, $zero, lbl_8006BAE0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006BADC:
    lh      v0, 0x0164(a2)             # 00000164
lbl_8006BAE0:
    sltiu   $at, a1, 0x000C
    beq     $at, $zero, lbl_8006BB10
    sll     t3, a1,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t3
    lw      t3, -0x7C50($at)           # 801083B0
    jr      t3
    nop
    beq     $zero, $zero, lbl_8006BB14
    addiu   v1, $zero, 0x001E          # v1 = 0000001E
    beq     $zero, $zero, lbl_8006BB14
    addiu   v1, $zero, 0x0064          # v1 = 00000064
lbl_8006BB10:
    addiu   v1, $zero, 0x001E          # v1 = 0000001E
lbl_8006BB14:
    bne     a0, a1, lbl_8006BB24
    sll     a2, v1, 16
    beq     $zero, $zero, lbl_8006BB68
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8006BB24:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x1392          # a1 = 00001392
    sra     a2, a2, 16
    jal     func_8006B6FC
    sw      v0, 0x0010($sp)
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    bne     v0, t0, lbl_8006BB4C
    or      a0, v0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_8006BB68
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_8006BB4C:
    sll     t4, a0,  2
    addu    t5, s0, t4
    lw      v1, 0x0790(t5)             # 00000790
    addiu   t6, $zero, 0x4802          # t6 = 00004802
    or      v0, a0, $zero              # v0 = 00000000
    addiu   v1, v1, 0x0128             # v1 = 00000128
    sw      t6, 0x0000(v1)             # 00000128
lbl_8006BB68:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_8006BB7C:
# Start onepointdemo 0x1392 with sfx
# (Wrapper for 8006BA10)
# A0 = Global Context
# A1 = Actor* instance
# A2 = int sfx id
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_8006BA10
    lw      a0, 0x0018($sp)
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beq     v0, $at, lbl_8006BBBC
    or      a0, v0, $zero              # a0 = 00000000
    lw      t6, 0x0018($sp)
    sll     t7, v0,  2
    lw      t9, 0x0020($sp)
    addu    t8, t6, t7
    lw      v1, 0x0790(t8)             # 00000790
    addiu   v1, v1, 0x0128             # v1 = 00000128
    sw      t9, 0x0000(v1)             # 00000128
lbl_8006BBBC:
    or      v0, a0, $zero              # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_8006BBD0:
    lui     $at, 0x800F                # $at = 800F0000
    sh      $zero, 0x1C10($at)         # 800F1C10
    jr      $ra
    nop


func_8006BBE0:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x800F                # $at = 800F0000
    sh      t6, 0x1C10($at)            # 800F1C10
    jr      $ra
    nop


func_8006BBF4:
    lw      v0, 0x0790(a0)             # 00000790
    addiu   a2, $zero, 0x002B          # a2 = 0000002B
    lh      v1, 0x014E(v0)             # 0000014E
    beq     v1, $zero, lbl_8006BC48
    sll     t6, v1,  2
lbl_8006BC08:
    addu    t7, a0, t6
    lw      v0, 0x0790(t7)             # 00000790
    beql    v0, $zero, lbl_8006BC4C
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x0142(v0)             # 00000142
    bnel    a2, t8, lbl_8006BC4C
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t9, 0x00A8(v0)             # 000000A8
    lbu     t0, 0x0002(t9)             # 00000002
    bnel    a1, t0, lbl_8006BC40
    lh      v1, 0x014E(v0)             # 0000014E
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8006BC3C:
    lh      v1, 0x014E(v0)             # 0000014F
lbl_8006BC40:
    bnel    v1, $zero, lbl_8006BC08
    sll     t6, v1,  2
lbl_8006BC48:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8006BC4C:
    jr      $ra
    nop


func_8006BC54:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop
    nop
    nop
    nop
