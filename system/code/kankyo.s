# "Kankyo (Environment)" part of the code file
#
# Handles the movement of the sun & moon, the passage of time, terrain palettes, and dynamic background music.
#
# Starts at VRAM: 8005BEA0 / VROM: AD1E00
#

.section .text
func_8005BEA0:
    sra     t6, a0, 15
    andi    t7, t6, 0x0007             # t7 = 00000000
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x1600             # t9 = 800F1600
    sll     t8, t7,  3
    addu    a1, t8, t9
    lw      t2, 0x0000(a1)             # 00000000
    lw      t4, 0x0004(a1)             # 00000004
    sra     t0, a0,  4
    andi    t1, t0, 0x07FF             # t1 = 00000000
    sllv    t3, t1, t2
    addu    v0, t4, t3
    jr      $ra
    nop


func_8005BED8:
# Get Z-Buffer "Pixel"
# A0 = X
# A1 = Y
# V0 = Pixel data (2 byte value)
    sll     t6, a1,  2
    addu    t6, t6, a1
    sll     t6, t6,  7
    sll     t7, a0,  1
    addu    t8, t6, t7
    lui     v1, 0x8013                 # v1 = 80130000
    addu    v1, v1, t8
    lhu     v1, -0x41C0(v1)            # 8012BE40
    andi    v0, v1, 0xFFFF             # v0 = 00000000
    jr      $ra
    nop


func_8005BF04:
# Graph?
# A0 = Graphics Context
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    lh      a1, -0x4328(a1)            # 8011BCD8
    jal     func_8005BED8
    lh      a0, -0x432A(a0)            # 8011BCD6
    lui     $at, 0x800F                # $at = 800F0000
    sh      v0, 0x1654($at)            # 800F1654
    jal     func_80066804
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8005BF48:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xA5D0             # t0 = 8011A5D0
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0060($sp)
    lhu     v0, 0x000C(t0)             # 8011A5DC
    ori     $at, $zero, 0xC001         # $at = 0000C001
    sh      $zero, 0x1422(t0)          # 8011B9F2
    slt     $at, v0, $at
    beq     $at, $zero, lbl_8005BF8C
    lui     t7, 0x8006                 # t7 = 80060000
    slti    $at, v0, 0x4555
    beq     $at, $zero, lbl_8005BF98
lbl_8005BF8C:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    b       lbl_8005BF9C
    sw      t6, 0x0010(t0)             # 8011A5E0
lbl_8005BF98:
    sw      $zero, 0x0010(t0)          # 8011A5E0
lbl_8005BF9C:
    lw      t8, 0x0000(s1)             # 00000000
    addiu   t7, t7, 0xBF04             # t7 = 8005BF04
    addiu   a0, s0, 0x0028             # a0 = 00000028
    sw      t7, 0x02EC(t8)             # 000002EC
    lw      t9, 0x0000(s1)             # 00000000
    addiu   t1, $zero, 0x0050          # t1 = 00000050
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    sw      s1, 0x02F0(t9)             # 000002F0
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0018($sp)
    sw      a0, 0x0038($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    addiu   a1, $zero, 0x0050          # a1 = 00000050
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80065CCC
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    sw      a1, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0
    lw      a2, 0x0038($sp)
    addiu   a0, s0, 0x0036             # a0 = 00000036
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    addiu   t5, $zero, 0x0050          # t5 = 00000050
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      a0, 0x0038($sp)
    addiu   a1, $zero, 0x0050          # a1 = 00000050
    addiu   a2, $zero, 0x0050          # a2 = 00000050
    jal     func_80065CCC
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_800665B0
    lw      a2, 0x0038($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   v1, $zero, 0x0063          # v1 = 00000063
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      v1, 0x0010(s0)             # 00000010
    sb      v1, 0x0011(s0)             # 00000011
    lui     v1, 0x8012                 # v1 = 80120000
    sb      $zero, 0x0019(s0)          # 00000019
    sh      $zero, 0x001A(s0)          # 0000001A
    sb      $zero, 0x0021(s0)          # 00000021
    sh      $zero, 0x0022(s0)          # 00000022
    sb      $zero, 0x0044(s0)          # 00000044
    sb      $zero, 0x001F(s0)          # 0000001F
    sb      $zero, 0x0020(s0)          # 00000020
    sb      $zero, 0x00BD(s0)          # 000000BD
    sb      $zero, 0x00BE(s0)          # 000000BE
    sb      $zero, 0x00DC(s0)          # 000000DC
    sb      $zero, 0x00DD(s0)          # 000000DD
    sb      $zero, 0x00DE(s0)          # 000000DE
    sb      $zero, 0x00DF(s0)          # 000000DF
    sb      $zero, 0x00E0(s0)          # 000000E0
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    sb      $zero, 0x00E1(s0)          # 000000E1
    sb      $zero, 0x00E2(s0)          # 000000E2
    sb      $zero, 0x00E3(s0)          # 000000E3
    sb      $zero, 0x00E4(s0)          # 000000E4
    sb      $zero, 0x00E5(s0)          # 000000E5
    sb      $zero, 0x00E9(s0)          # 000000E9
    sb      $zero, 0x00EA(s0)          # 000000EA
    sb      $zero, 0x00EB(s0)          # 000000EB
    sb      $zero, 0x00EC(s0)          # 000000EC
    sb      $zero, 0x00ED(s0)          # 000000ED
    sb      $zero, 0x00E6(s0)          # 000000E6
    sb      $zero, 0x00E7(s0)          # 000000E7
    sb      $zero, 0x00E8(s0)          # 000000E8
    swc1    $f0, 0x0084(s0)            # 00000084
    swc1    $f0, 0x0088(s0)            # 00000088
    swc1    $f4, 0x00D8(s0)            # 000000D8
    lui     a1, 0x8012                 # a1 = 80120000
    sb      $zero, 0x0000(v1)          # 8011BCC8
    sb      $zero, 0x0001(v1)          # 8011BCC9
    sb      $zero, 0x0002(v1)          # 8011BCCA
    sb      $zero, 0x0003(v1)          # 8011BCCB
    lui     $at, 0x8012                # $at = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sh      $zero, -0x432C($at)        # 8011BCD4
    sb      $zero, 0x1410(a1)          # 8011B9E0
    sh      $zero, 0x00A0(s0)          # 000000A0
    lh      v0, 0x00A0(s0)             # 000000A0
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    sh      v0, 0x009E(s0)             # 0000009E
    sh      v0, 0x009C(s0)             # 0000009C
    sh      v0, 0x009A(s0)             # 0000009A
    sh      v0, 0x0098(s0)             # 00000098
    sh      v0, 0x0096(s0)             # 00000096
    sh      v0, 0x0094(s0)             # 00000094
    sh      v0, 0x0092(s0)             # 00000092
    sh      v0, 0x0090(s0)             # 00000090
    sh      v0, 0x008E(s0)             # 0000008E
    sh      v0, 0x008C(s0)             # 0000008C
    lh      v1, 0x000C(a1)             # 8011A5DC
    addu    a0, v1, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f16                  # $f16 = 25.00
    mul.s   $f8, $f0, $f6
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    neg.s   $f10, $f8
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0004(s0)           # 00000004
    lhu     v1, -0x5A24(v1)            # 8011A5DC
    addu    a0, v1, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f8                   # $f8 = 25.00
    mul.s   $f6, $f0, $f4
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    mul.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(s0)           # 00000008
    lhu     v1, -0x5A24(v1)            # 8011A5DC
    addu    a0, v1, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    mul.s   $f18, $f0, $f16
    addiu   v0, $zero, 0x0050          # v0 = 00000050
    addiu   a0, $zero, 0x00FF          # a0 = 000000FF
    ori     t7, $zero, 0xFFFF          # t7 = 0000FFFF
    sh      v0, 0x00A8(s0)             # 000000A8
    sh      v0, 0x00AA(s0)             # 000000AA
    sh      v0, 0x00AC(s0)             # 000000AC
    mul.s   $f6, $f18, $f4
    sb      $zero, 0x00BC(s0)          # 000000BC
    sb      a0, 0x00BF(s0)             # 000000BF
    sh      t7, 0x00D6(s0)             # 000000D6
    sh      $zero, 0x0002(s0)          # 00000002
    lui     $at, 0x800F                # $at = 800F0000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f6, 0x000C(s0)            # 0000000C
    sh      $zero, 0x1650($at)         # 800F1650
    lui     $at, 0x0001                # $at = 00010000
    addu    a2, s1, $at
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sb      $zero, 0x0B12(a2)          # 00000B12
    sb      $zero, 0x0B13(a2)          # 00000B13
    sb      $zero, 0x0B14(a2)          # 00000B14
    sb      $zero, 0x0B15(a2)          # 00000B15
    sb      $zero, 0x0B16(a2)          # 00000B16
    lbu     t9, 0x13C3(a1)             # 8011B993
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x1640             # v1 = 800F1640
    beq     t9, $zero, lbl_8005C344
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t1, 0x1360(a1)             # 8011B930
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x1640             # v1 = 800F1640
    slti    $at, t1, 0x0004
    beq     $at, $zero, lbl_8005C33C
    nop
    lbu     t2, 0x0000(v1)             # 800F1640
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sltiu   $at, t3, 0x0005
    beq     $at, $zero, lbl_8005C2DC
    sll     t3, t3,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t3
    lw      t3, 0x79B0($at)            # 801079B0
    jr      t3
    nop
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sb      a3, 0x0017(s0)             # 00000017
    sb      a3, 0x0018(s0)             # 00000018
    sb      v0, 0x001F(s0)             # 0000001F
    sb      v0, 0x0020(s0)             # 00000020
    sb      $zero, 0x0B15(a2)          # 00000B15
    b       lbl_8005C2DC
    sb      $zero, 0x0B14(a2)          # 00000B14
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sb      a3, 0x0017(s0)             # 00000017
    sb      a3, 0x0018(s0)             # 00000018
    sb      v0, 0x001F(s0)             # 0000001F
    sb      v0, 0x0020(s0)             # 00000020
    sb      $zero, 0x0B15(a2)          # 00000B15
    b       lbl_8005C2DC
    sb      $zero, 0x0B14(a2)          # 00000B14
    addiu   v0, $zero, 0x0004          # v0 = 00000004
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sb      a3, 0x0017(s0)             # 00000017
    sb      a3, 0x0018(s0)             # 00000018
    sb      v0, 0x001F(s0)             # 0000001F
    sb      v0, 0x0020(s0)             # 00000020
    sb      $zero, 0x0B15(a2)          # 00000B15
    b       lbl_8005C2DC
    sb      $zero, 0x0B14(a2)          # 00000B14
lbl_8005C2DC:
    lbu     t4, 0x1E14(a2)             # 00001E14
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t4, $at, lbl_8005C33C
    nop
    lbu     v0, 0x0000(v1)             # 800F1640
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    bne     v0, $at, lbl_8005C30C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sb      t6, 0x0B15(a2)             # 00000B15
    b       lbl_8005C348
    sb      t6, 0x0B14(a2)             # 00000B14
lbl_8005C30C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_8005C328
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   v0, $zero, 0x0014          # v0 = 00000014
    sb      v0, 0x0B12(a2)             # 00000B12
    b       lbl_8005C348
    sb      v0, 0x0B13(a2)             # 00000B13
lbl_8005C328:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8005C33C
    addiu   v0, $zero, 0x001E          # v0 = 0000001E
    sb      v0, 0x0B12(a2)             # 00000B12
    sb      v0, 0x0B13(a2)             # 00000B13
lbl_8005C33C:
    b       lbl_8005C348
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8005C344:
    sb      $zero, 0x0000(v1)          # 800F1640
lbl_8005C348:
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1648($at)         # 800F1648
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1644($at)         # 800F1644
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x164C($at)         # 800F164C
    sb      $zero, 0x13C3(a1)          # 8011B993
    lui     $at, 0x8012                # $at = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    sb      a3, -0x43D0($at)           # 8011BC30
    addiu   v1, v1, 0xBC68             # v1 = 8011BC68
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005C378:
    sll     t7, v0,  5
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    slti    $at, v0, 0x0003
    addu    t8, v1, t7
    bne     $at, $zero, lbl_8005C378
    sb      a0, 0x0000(t8)             # 00000000
    sh      $zero, 0x1D30(a2)          # 00001D30
    sh      $zero, 0x1D32(a2)          # 00001D32
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005C3A0:
    sll     t9, v0,  2
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    slti    $at, v0, 0x000A
    addu    t1, s1, t9
    bne     $at, $zero, lbl_8005C3A0
    sw      $zero, 0x1D8C(t1)          # 00001D8C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0034($sp)
    lw      a2, 0x0034($sp)
    bgez    v0, lbl_8005C3F8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lbu     t2, 0x0A3A(a2)             # 00000A3A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    bne     t2, $zero, lbl_8005C3F8
    nop
    sb      a3, 0x0A3A($at)            # 00010A3A
lbl_8005C3F8:
    lui     $at, 0x8012                # $at = 80120000
    jal     func_80091748
    sb      $zero, -0x4326($at)        # 8011BCDA
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58


func_8005C418:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      a3, 0x000C($sp)
    lbu     t1, 0x0000(a0)             # 00000000
    or      t0, a1, $zero              # t0 = 00000000
    lbu     t3, 0x0013($sp)
    subu    v1, a1, t1
    sll     v1, v1, 16
    beq     a1, t1, lbl_8005C544
    sra     v1, v1, 16
    div     $zero, v1, a2
    bne     a2, $zero, lbl_8005C458
    nop
    break   # 0x01C00
lbl_8005C458:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_8005C470
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8005C470
    nop
    break   # 0x01800
lbl_8005C470:
    mflo    a3
    sll     t2, a3, 16
    sll     t4, t3, 16
    sra     t4, t4, 16
    sra     t2, t2, 16
    sll     v0, a3, 16
    slt     $at, t2, t4
    beq     $at, $zero, lbl_8005C4AC
    sra     v0, v0, 16
    subu    a2, $zero, t3
    sll     a2, a2, 16
    sra     a2, a2, 16
    slt     $at, a2, t2
    bnel    $at, $zero, lbl_8005C4F8
    slt     $at, t2, t4
lbl_8005C4AC:
    lbu     a1, 0x000F($sp)
    sll     t6, a1, 16
    sra     t7, t6, 16
    slt     $at, t7, t2
    beq     $at, $zero, lbl_8005C4CC
    subu    a2, $zero, a1
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8005C4CC:
    sll     t8, a2, 16
    sra     t9, t8, 16
    slt     $at, v0, t9
    beql    $at, $zero, lbl_8005C4EC
    addu    t6, t1, v0
    sll     v0, a2, 16
    sra     v0, v0, 16
    addu    t6, t1, v0
lbl_8005C4EC:
    b       lbl_8005C544
    sb      t6, 0x0000(a0)             # 00000000
    slt     $at, t2, t4
lbl_8005C4F8:
    beq     $at, $zero, lbl_8005C51C
    addu    t8, t1, t4
    andi    t9, t8, 0x00FF             # t9 = 00000000
    sll     v0, t3, 16
    slt     $at, t0, t9
    sra     v0, v0, 16
    beq     $at, $zero, lbl_8005C51C
    sb      t8, 0x0000(a0)             # 00000000
    sb      a1, 0x0000(a0)             # 00000000
lbl_8005C51C:
    slt     $at, a2, v0
    beql    $at, $zero, lbl_8005C548
    andi    v0, v1, 0x00FF             # v0 = 00000000
    lbu     t5, 0x0000(a0)             # 00000000
    addu    t7, t5, a2
    andi    t8, t7, 0x00FF             # t8 = 00000000
    slt     $at, t8, t0
    beq     $at, $zero, lbl_8005C544
    sb      t7, 0x0000(a0)             # 00000000
    sb      a1, 0x0000(a0)             # 00000000
lbl_8005C544:
    andi    v0, v1, 0x00FF             # v0 = 00000000
lbl_8005C548:
    jr      $ra
    nop


func_8005C550:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 24
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sra     a1, a1, 24
    sw      a3, 0x000C($sp)
    lb      t0, 0x0000(a0)             # 00000000
    lbu     t2, 0x0013($sp)
    subu    v1, a1, t0
    sll     v1, v1, 16
    beq     a1, t0, lbl_8005C684
    sra     v1, v1, 16
    div     $zero, v1, a2
    bne     a2, $zero, lbl_8005C590
    nop
    break   # 0x01C00
lbl_8005C590:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a2, $at, lbl_8005C5A8
    lui     $at, 0x8000                # $at = 80000000
    bne     v1, $at, lbl_8005C5A8
    nop
    break   # 0x01800
lbl_8005C5A8:
    mflo    a3
    sll     t1, a3, 16
    sll     t3, t2, 16
    sra     t3, t3, 16
    sra     t1, t1, 16
    sll     v0, a3, 16
    slt     $at, t1, t3
    beq     $at, $zero, lbl_8005C5E4
    sra     v0, v0, 16
    subu    a2, $zero, t2
    sll     a2, a2, 16
    sra     a2, a2, 16
    slt     $at, a2, t1
    bnel    $at, $zero, lbl_8005C630
    slt     $at, t1, t3
lbl_8005C5E4:
    lbu     a1, 0x000F($sp)
    sll     t6, a1, 16
    sra     t7, t6, 16
    slt     $at, t7, t1
    beq     $at, $zero, lbl_8005C604
    subu    a2, $zero, a1
    sll     v0, a1, 16
    sra     v0, v0, 16
lbl_8005C604:
    sll     t8, a2, 16
    sra     t9, t8, 16
    slt     $at, v0, t9
    beql    $at, $zero, lbl_8005C624
    addu    t6, t0, v0
    sll     v0, a2, 16
    sra     v0, v0, 16
    addu    t6, t0, v0
lbl_8005C624:
    b       lbl_8005C684
    sb      t6, 0x0000(a0)             # 00000000
    slt     $at, t1, t3
lbl_8005C630:
    beq     $at, $zero, lbl_8005C658
    addu    t9, t0, t3
    sb      t9, 0x0000(a0)             # 00000000
    lb      t4, 0x0000(a0)             # 00000000
    sll     v0, t2, 16
    sra     v0, v0, 16
    slt     $at, a1, t4
    beql    $at, $zero, lbl_8005C65C
    slt     $at, a2, v0
    sb      a1, 0x0000(a0)             # 00000000
lbl_8005C658:
    slt     $at, a2, v0
lbl_8005C65C:
    beql    $at, $zero, lbl_8005C688
    andi    v0, v1, 0x00FF             # v0 = 00000000
    lb      t5, 0x0000(a0)             # 00000000
    addu    t8, t5, a2
    sb      t8, 0x0000(a0)             # 00000000
    lb      t9, 0x0000(a0)             # 00000000
    slt     $at, t9, a1
    beql    $at, $zero, lbl_8005C688
    andi    v0, v1, 0x00FF             # v0 = 00000000
    sb      a1, 0x0000(a0)             # 00000000
lbl_8005C684:
    andi    v0, v1, 0x00FF             # v0 = 00000000
lbl_8005C688:
    jr      $ra
    nop


func_8005C690:
# Compute Linear Tween
# A0 = s16 end frame
# A1 = s16 start frame?
# A2 = s16 current frame?
# F2 = Value between 0.0 (current frame <= start frame) and 1.0 (current frame >= end frame)
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    subu    t6, a0, a1
    mtc1    t6, $f4                    # $f4 = 0.00
    mtc1    $zero, $f6                 # $f6 = 0.00
    or      v0, a0, $zero              # v0 = 00000000
    cvt.s.w $f0, $f4
    lui     $at, 0x3F80                # $at = 3F800000
    subu    t7, v0, a2
    c.eq.s  $f6, $f0
    nop
    bc1tl   lbl_8005C704
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    t7, $f8                    # $f8 = 0.00
    mtc1    $at, $f12                  # $f12 = 1.00
    cvt.s.w $f10, $f8
    div.s   $f16, $f10, $f0
    sub.s   $f2, $f12, $f16
    c.le.s  $f12, $f2
    nop
    bc1tl   lbl_8005C704
    lui     $at, 0x3F80                # $at = 3F800000
    jr      $ra
    mov.s   $f0, $f2
lbl_8005C700:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8005C704:
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
    jr      $ra
    nop


func_8005C714:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    andi    a3, a3, 0xFFFF             # a3 = 00000000
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sdc1    $f22, 0x0010($sp)
    sdc1    $f20, 0x0008($sp)
    slt     $at, a1, a2
    or      v0, a1, $zero              # v0 = 00000000
    bne     $at, $zero, lbl_8005C75C
    or      v1, a2, $zero              # v1 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    b       lbl_8005C8C8
    ldc1    $f20, 0x0008($sp)
lbl_8005C75C:
    slt     $at, v1, a0
    bne     $at, $zero, lbl_8005C778
    or      a1, a0, $zero              # a1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    b       lbl_8005C8C8
    ldc1    $f20, 0x0008($sp)
lbl_8005C778:
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    a1, $f6                    # $f6 = 0.00
    cvt.s.w $f2, $f4
    cvt.s.w $f0, $f6
    c.le.s  $f0, $f2
    nop
    bc1tl   lbl_8005C7C8
    mtc1    $zero, $f0                 # $f0 = 0.00
    lhu     t6, 0x002A($sp)
    mtc1    a3, $f8                    # $f8 = 0.00
    sub.s   $f12, $f0, $f2
    mtc1    t6, $f10                   # $f10 = 0.00
    cvt.s.w $f16, $f8
    cvt.s.w $f18, $f10
    add.s   $f4, $f16, $f18
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_8005C7D4
    add.s   $f8, $f12, $f12
    mtc1    $zero, $f0                 # $f0 = 0.00
lbl_8005C7C8:
    b       lbl_8005C8C8
    ldc1    $f20, 0x0008($sp)
    add.s   $f8, $f12, $f12
lbl_8005C7D4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    sub.s   $f10, $f8, $f16
    mtc1    $zero, $f8                 # $f8 = 0.00
    sub.s   $f4, $f10, $f18
    c.eq.s  $f16, $f8
    div.s   $f22, $f6, $f4
    bc1t    lbl_8005C838
    mov.s   $f0, $f22
    mtc1    v1, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f6, $f10
    sub.s   $f14, $f6, $f2
    c.le.s  $f14, $f16
    nop
    bc1f    lbl_8005C82C
    nop
    mul.s   $f4, $f22, $f14
    nop
    mul.s   $f8, $f4, $f14
    b       lbl_8005C8C4
    div.s   $f0, $f8, $f16
lbl_8005C82C:
    mul.s   $f20, $f22, $f16
    b       lbl_8005C84C
    sub.s   $f4, $f12, $f18
lbl_8005C838:
    mtc1    v1, $f10                   # $f10 = 0.00
    mtc1    $zero, $f20                # $f20 = 0.00
    cvt.s.w $f6, $f10
    sub.s   $f14, $f6, $f2
    sub.s   $f4, $f12, $f18
lbl_8005C84C:
    c.le.s  $f14, $f4
    nop
    bc1fl   lbl_8005C874
    sub.s   $f8, $f12, $f16
    add.s   $f8, $f22, $f22
    sub.s   $f10, $f14, $f16
    mul.s   $f6, $f8, $f10
    b       lbl_8005C8C4
    add.s   $f0, $f20, $f6
    sub.s   $f8, $f12, $f16
lbl_8005C874:
    add.s   $f4, $f22, $f22
    sub.s   $f10, $f8, $f18
    mtc1    $zero, $f8                 # $f8 = 0.00
    mul.s   $f6, $f4, $f10
    c.eq.s  $f18, $f8
    nop
    bc1t    lbl_8005C8C0
    add.s   $f20, $f20, $f6
    mul.s   $f4, $f22, $f18
    c.lt.s  $f14, $f12
    nop
    bc1f    lbl_8005C8C0
    add.s   $f20, $f20, $f4
    sub.s   $f2, $f12, $f14
    mul.s   $f10, $f0, $f2
    nop
    mul.s   $f6, $f10, $f2
    div.s   $f8, $f6, $f18
    sub.s   $f20, $f20, $f8
lbl_8005C8C0:
    mov.s   $f0, $f20
lbl_8005C8C4:
    ldc1    $f20, 0x0008($sp)
lbl_8005C8C8:
    ldc1    $f22, 0x0010($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8005C8D4:
    sw      a1, 0x0004($sp)
    lbu     v0, 0x00DD(a0)             # 000000DD
    beq     v0, $zero, lbl_8005C9C0
    nop
    lbu     v1, 0x00DE(a0)             # 000000DE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $zero, lbl_8005C908
    nop
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_8005C960
    lui     t0, 0x800F                 # t0 = 800F0000
    jr      $ra
    nop
lbl_8005C908:
    bne     v0, $at, lbl_8005C9C0
    lui     t6, 0x800F                 # t6 = 800F0000
    lbu     t6, 0x164C(t6)             # 800F164C
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    bne     t6, $zero, lbl_8005C9C0
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sb      v0, 0x0019(a0)             # 00000019
    sb      $zero, 0x0017(a0)          # 00000017
    sb      v0, 0x0018(a0)             # 00000018
    sh      t7, 0x001A(a0)             # 0000001A
    sb      v0, 0x0021(a0)             # 00000021
    sb      $zero, 0x001F(a0)          # 0000001F
    sb      a1, 0x0020(a0)             # 00000020
    lui     $at, 0x800F                # $at = 800F0000
    sb      a1, 0x1644($at)            # 800F1644
    lbu     t8, 0x00DE(a0)             # 000000DE
    sh      t7, 0x0022(a0)             # 00000022
    sh      t7, 0x0024(a0)             # 00000024
    addiu   t9, t8, 0x0001             # t9 = 00000001
    jr      $ra
    sb      t9, 0x00DE(a0)             # 000000DE
lbl_8005C960:
    lbu     t0, 0x164C(t0)             # 800F164C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t0, $zero, lbl_8005C9C0
    nop
    bne     v0, $at, lbl_8005C9C0
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1640($at)         # 800F1640
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sb      v0, 0x0019(a0)             # 00000019
    sb      v0, 0x0017(a0)             # 00000017
    sb      $zero, 0x0018(a0)          # 00000018
    sh      t1, 0x001A(a0)             # 0000001A
    sb      v0, 0x0021(a0)             # 00000021
    sb      a1, 0x001F(a0)             # 0000001F
    sb      $zero, 0x0020(a0)          # 00000020
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1644($at)         # 800F1644
    sh      t1, 0x0022(a0)             # 00000022
    sh      t1, 0x0024(a0)             # 00000024
    sb      $zero, 0x00EE(a0)          # 000000EE
    sb      $zero, 0x00DD(a0)          # 000000DD
    sb      $zero, 0x00DE(a0)          # 000000DE
lbl_8005C9C0:
    jr      $ra
    nop


func_8005C9C8:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0028($sp)
    sw      a0, 0x0058($sp)
    andi    a0, a0, 0x00FF             # a0 = 00000000
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a2, 0x0060($sp)
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   $at, $zero, 0x0005         # $at = 00000005
    sb      t6, 0x0052($sp)
    sb      t7, 0x0051($sp)
    sb      $zero, 0x0050($sp)
    bne     a0, $at, lbl_8005CB40
    or      v0, a0, $zero              # v0 = 00000000
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0017(s0)             # 00000017
    andi    t9, t8, 0x00FF             # t9 = 00000003
    lui     t2, 0x8012                 # t2 = 80120000
    lhu     t2, -0x4616(t2)            # 8011B9EA
    sll     t3, t9,  3
    addu    t3, t3, t9
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t4, t4, 0x172C             # t4 = 800F172C
    sll     t3, t3,  3
    addu    t1, t3, t4
    or      t0, $zero, $zero           # t0 = 00000000
    ori     a2, $zero, 0xFFFF          # a2 = 0000FFFF
    or      a0, t2, $zero              # a0 = 80120000
    sll     t5, t0,  3
lbl_8005CA40:
    addu    v1, t1, t5
    lhu     a1, 0x0000(v1)             # 00000000
    addiu   t0, t0, 0x0001             # t0 = 00000001
    andi    t0, t0, 0x00FF             # t0 = 00000001
    slt     $at, a0, a1
    bnel    $at, $zero, lbl_8005CB30
    slti    $at, t0, 0x0009
    lhu     a3, 0x0002(v1)             # 00000002
    slt     $at, a0, a3
    bne     $at, $zero, lbl_8005CA74
    or      v0, a3, $zero              # v0 = 00000000
    bnel    a2, v0, lbl_8005CB30
    slti    $at, t0, 0x0009
lbl_8005CA74:
    lbu     t6, 0x0004(v1)             # 00000004
    andi    a2, t2, 0xFFFF             # a2 = 00000000
    beq     t6, $zero, lbl_8005CB24
    nop
    jal     func_8005C690
    andi    a0, a3, 0xFFFF             # a0 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f6, $f0, $f4
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8005CB0C
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8005CB00
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005CB18
    or      t8, t8, $at                # t8 = 80000000
lbl_8005CB00:
    b       lbl_8005CB18
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8
lbl_8005CB0C:
    nop
    bltz    t8, lbl_8005CB00
    nop
lbl_8005CB18:
    ctc1    t7, $f31
    b       lbl_8005D2A0
    sb      t8, 0x0013(s0)             # 00000013
lbl_8005CB24:
    b       lbl_8005D2A0
    sb      $zero, 0x0013(s0)          # 00000013
    slti    $at, t0, 0x0009
lbl_8005CB30:
    bnel    $at, $zero, lbl_8005CA40
    sll     t5, t0,  3
    b       lbl_8005D2A4
    lw      $ra, 0x002C($sp)
lbl_8005CB40:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_8005D2A4
    lw      $ra, 0x002C($sp)
    lbu     t9, 0x0015(s0)             # 00000015
    or      t0, $zero, $zero           # t0 = 00000000
    lui     t2, 0x8012                 # t2 = 80120000
    bne     t9, $zero, lbl_8005D2A0
    lui     t5, 0x800F                 # t5 = 800F0000
    lbu     t3, 0x0017(s0)             # 00000017
    lhu     t2, -0x4616(t2)            # 8011B9EA
    addiu   t5, t5, 0x172C             # t5 = 800F172C
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  3
    addu    t1, t4, t5
    ori     a2, $zero, 0xFFFF          # a2 = 0000FFFF
    or      a0, t2, $zero              # a0 = 80120000
    sll     a3, t0,  3
lbl_8005CB88:
    addu    v1, t1, a3
    lhu     t6, 0x0000(v1)             # 00000000
    slt     $at, a0, t6
    bnel    $at, $zero, lbl_8005CDB8
    addiu   t0, t0, 0x0001             # t0 = 00000001
    lhu     v0, 0x0002(v1)             # 00000002
    slt     $at, a0, v0
    bnel    $at, $zero, lbl_8005CBB8
    lbu     t9, 0x0004(v1)             # 00000004
    bnel    a2, v0, lbl_8005CDB8
    addiu   t0, t0, 0x0001             # t0 = 00000002
    lbu     t9, 0x0004(v1)             # 00000004
lbl_8005CBB8:
    lbu     t7, 0x0005(v1)             # 00000005
    lbu     t8, 0x0006(v1)             # 00000006
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x164C             # v0 = 800F164C
    andi    t3, t9, 0x00FF             # t3 = 00000000
    sb      t9, 0x0000(v0)             # 800F164C
    sb      t7, 0x0052($sp)
    beq     t3, $zero, lbl_8005CCAC
    sb      t8, 0x0051($sp)
    lbu     t4, 0x0017(s0)             # 00000017
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x172C             # t7 = 800F172C
    sll     t5, t4,  3
    addu    t5, t5, t4
    sll     t5, t5,  3
    addu    t6, t5, a3
    addu    v1, t6, t7
    lhu     a0, 0x0002(v1)             # 00000002
    lhu     a1, 0x0000(v1)             # 00000000
    sb      t0, 0x0053($sp)
    jal     func_8005C690
    andi    a2, t2, 0xFFFF             # a2 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f0, $f10
    lbu     t0, 0x0053($sp)
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8005CC94
    mfc1    t9, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t9, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8005CC88
    nop
    mfc1    t9, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005CCA0
    or      t9, t9, $at                # t9 = 80000000
lbl_8005CC88:
    b       lbl_8005CCA0
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f18
lbl_8005CC94:
    nop
    bltz    t9, lbl_8005CC88
    nop
lbl_8005CCA0:
    ctc1    t8, $f31
    b       lbl_8005CDC8
    sb      t9, 0x0050($sp)
lbl_8005CCAC:
    lbu     t3, 0x0017(s0)             # 00000017
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x172C             # t6 = 800F172C
    sll     t4, t3,  3
    addu    t4, t4, t3
    sll     t4, t4,  3
    addu    t5, t4, a3
    addu    v1, t5, t6
    lhu     a0, 0x0002(v1)             # 00000002
    lhu     a1, 0x0000(v1)             # 00000000
    sb      t0, 0x0053($sp)
    jal     func_8005C690
    andi    a2, t2, 0xFFFF             # a2 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lbu     t0, 0x0053($sp)
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    cfc1    t7, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8005CD68
    mfc1    t8, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t8, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8005CD5C
    nop
    mfc1    t8, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005CD74
    or      t8, t8, $at                # t8 = 80000000
lbl_8005CD5C:
    b       lbl_8005CD74
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f8
lbl_8005CD68:
    nop
    bltz    t8, lbl_8005CD5C
    nop
lbl_8005CD74:
    andi    t9, t8, 0x00FF             # t9 = 000000FF
    slti    $at, t9, 0x0080
    ctc1    t7, $f31
    beql    $at, $zero, lbl_8005CD94
    sb      $zero, 0x0050($sp)
    b       lbl_8005CD94
    sb      t3, 0x0050($sp)
    sb      $zero, 0x0050($sp)
lbl_8005CD94:
    lbu     v0, 0x0019(s0)             # 00000019
    beq     v0, $zero, lbl_8005CDC8
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_8005CDC8
    addiu   t4, v0, 0x0001             # t4 = 00000001
    sb      t4, 0x0019(s0)             # 00000019
    b       lbl_8005CDC8
    sb      $zero, 0x0050($sp)
    addiu   t0, t0, 0x0001             # t0 = 00000001
lbl_8005CDB8:
    andi    t0, t0, 0x00FF             # t0 = 00000001
    slti    $at, t0, 0x0009
    bnel    $at, $zero, lbl_8005CB88
    sll     a3, t0,  3
lbl_8005CDC8:
    or      a0, s0, $zero              # a0 = 00000000
    lbu     a1, 0x0050($sp)
    jal     func_8005C8D4
    sb      t0, 0x0053($sp)
    lbu     t5, 0x0019(s0)             # 00000019
    lbu     t0, 0x0053($sp)
    slti    $at, t5, 0x0003
    bne     $at, $zero, lbl_8005CF28
    sll     a3, t0,  3
    lbu     t6, 0x0017(s0)             # 00000017
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x172C             # t9 = 800F172C
    sll     t7, t6,  3
    addu    t7, t7, t6
    sll     t7, t7,  3
    addu    t8, t7, a3
    addu    t3, t8, t9
    lbu     t4, 0x0005(t3)             # 00000005
    lui     $at, 0x4F80                # $at = 4F800000
    sb      t4, 0x0052($sp)
    lbu     v1, 0x0018(s0)             # 00000018
    sll     t5, v1,  3
    addu    t5, t5, v1
    sll     t5, t5,  3
    addu    t6, t5, a3
    addu    t7, t6, t9
    lbu     t8, 0x0006(t7)             # 00000006
    sb      t8, 0x0051($sp)
    lhu     t3, 0x0024(s0)             # 00000024
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_8005CE54
    cvt.s.w $f0, $f10
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f0, $f0, $f16
lbl_8005CE54:
    lhu     v0, 0x001A(s0)             # 0000001A
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v0, $f18                   # $f18 = 0.00
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    bgez    v0, lbl_8005CE78
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_8005CE78:
    sub.s   $f8, $f0, $f4
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    div.s   $f10, $f8, $f0
    lui     $at, 0x4F00                # $at = 4F000000
    andi    t9, t6, 0xFFFF             # t9 = 0000FFFF
    mul.s   $f18, $f10, $f16
    cfc1    t4, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f6, $f18
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_8005CF04
    mfc1    t5, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f6, $f18, $f6
    ctc1    t5, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_8005CEF8
    nop
    mfc1    t5, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005CF10
    or      t5, t5, $at                # t5 = 80000000
lbl_8005CEF8:
    b       lbl_8005CF10
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f6
lbl_8005CF04:
    nop
    bltz    t5, lbl_8005CEF8
    nop
lbl_8005CF10:
    ctc1    t4, $f31
    sb      t5, 0x0050($sp)
    bgtz    t9, lbl_8005CF28
    sh      t6, 0x001A(s0)             # 0000001A
    sb      $zero, 0x0019(s0)          # 00000019
    sb      v1, 0x0017(s0)             # 00000017
lbl_8005CF28:
    lbu     t7, 0x0052($sp)
    sw      t7, 0x0048($sp)
    lbu     t8, 0x0010(s0)             # 00000010
    beql    t7, t8, lbl_8005CFC0
    lbu     t6, 0x0051($sp)
    lb      t3, 0x0044(s0)             # 00000044
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    bne     t3, $zero, lbl_8005CFBC
    addiu   t9, t9, 0x184C             # t9 = 800F184C
    sb      t4, 0x0044(s0)             # 00000044
    lbu     t5, 0x0052($sp)
    addiu   a0, s0, 0x0068             # a0 = 00000068
    sw      a0, 0x0040($sp)
    sll     t6, t5,  4
    addu    v0, t6, t9
    lw      t7, 0x0004(v0)             # 00000004
    lw      t8, 0x0000(v0)             # 00000000
    sw      v0, 0x0044($sp)
    addiu   a1, s0, 0x0080             # a1 = 00000080
    subu    a3, t7, t8
    sw      a3, 0x0054($sp)
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t3, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      t4, 0x0040($sp)
    lw      a1, 0x0128(t3)             # 00000128
    lw      a3, 0x0054($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0048             # a0 = 00000048
    lw      a2, 0x0000(v0)             # 00000000
    jal     func_80000D28
    sw      t4, 0x0014($sp)
    lbu     t5, 0x0052($sp)
    sb      t5, 0x0010(s0)             # 00000010
lbl_8005CFBC:
    lbu     t6, 0x0051($sp)
lbl_8005CFC0:
    sw      t6, 0x0034($sp)
    lbu     t9, 0x0011(s0)             # 00000011
    lb      v1, 0x0044(s0)             # 00000044
    beql    t6, t9, lbl_8005D060
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $zero, lbl_8005D05C
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    sb      t7, 0x0044(s0)             # 00000044
    lbu     t8, 0x0051($sp)
    lui     t4, 0x800F                 # t4 = 800F0000
    addiu   t4, t4, 0x184C             # t4 = 800F184C
    sll     t3, t8,  4
    addu    v0, t3, t4
    lw      t5, 0x0004(v0)             # 00000004
    lw      t6, 0x0000(v0)             # 00000000
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   t9, s0, 0x0048             # t9 = 00000048
    subu    a3, t5, t6
    sw      a3, 0x0054($sp)
    sw      t9, 0x0038($sp)
    sw      a0, 0x0040($sp)
    sw      v0, 0x0044($sp)
    addiu   a1, s0, 0x0080             # a1 = 00000080
    jal     func_80004220              # osCreateMesgQueue
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      t7, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      t8, 0x0040($sp)
    lw      a1, 0x012C(t7)             # 0000012C
    lw      a3, 0x0054($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0038($sp)
    lw      a2, 0x0000(v0)             # 00000000
    jal     func_80000D28
    sw      t8, 0x0014($sp)
    lbu     t3, 0x0051($sp)
    lb      v1, 0x0044(s0)             # 00000044
    sb      t3, 0x0011(s0)             # 00000011
lbl_8005D05C:
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_8005D060:
    bne     v1, $at, lbl_8005D14C
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sb      t4, 0x0044(s0)             # 00000044
    lw      t8, 0x0048($sp)
    lbu     t5, 0x0052($sp)
    lui     t9, 0x800F                 # t9 = 800F0000
    andi    t4, t8, 0x0004             # t4 = 00000000
    sll     t6, t5,  4
    sra     t5, t4,  2
    addiu   t9, t9, 0x184C             # t9 = 800F184C
    addiu   t7, s0, 0x0048             # t7 = 00000048
    andi    t3, t8, 0x0001             # t3 = 00000000
    sw      t7, 0x0038($sp)
    addu    v0, t6, t9
    addiu   a0, s0, 0x0068             # a0 = 00000068
    beq     t3, t5, lbl_8005D0F8
    addiu   a1, s0, 0x0080             # a1 = 00000080
    lw      t9, 0x000C(v0)             # 0000000C
    lw      t7, 0x0008(v0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      v0, 0x0044($sp)
    subu    a3, t9, t7
    sw      a3, 0x0054($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0040($sp)
    lw      t8, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      t4, 0x0040($sp)
    lw      a1, 0x0130(t8)             # 00000130
    lw      a3, 0x0054($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0038($sp)
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_80000D28
    sw      t4, 0x0014($sp)
    b       lbl_8005D14C
    lb      v1, 0x0044(s0)             # 00000044
lbl_8005D0F8:
    lw      t3, 0x000C(v0)             # 0000000C
    lw      t5, 0x0008(v0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      v0, 0x0044($sp)
    subu    a3, t3, t5
    sw      a3, 0x0054($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0040($sp)
    lw      t6, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      a3, 0x0054($sp)
    lw      t9, 0x0130(t6)             # 00000130
    lw      t7, 0x0040($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0038($sp)
    lw      a2, 0x0008(v0)             # 00000008
    addu    a1, t9, a3
    jal     func_80000D28
    sw      t7, 0x0014($sp)
    lb      v1, 0x0044(s0)             # 00000044
lbl_8005D14C:
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v1, $at, lbl_8005D23C
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sb      t8, 0x0044(s0)             # 00000044
    lw      t9, 0x0034($sp)
    lbu     t3, 0x0051($sp)
    addiu   t4, s0, 0x0048             # t4 = 00000048
    sw      t4, 0x0038($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    andi    t8, t9, 0x0004             # t8 = 00000000
    sra     t4, t8,  2
    addiu   t6, t6, 0x184C             # t6 = 800F184C
    andi    t7, t9, 0x0001             # t7 = 00000000
    sll     t5, t3,  4
    addu    v0, t5, t6
    addiu   a0, s0, 0x0068             # a0 = 00000068
    beq     t7, t4, lbl_8005D1E8
    addiu   a1, s0, 0x0080             # a1 = 00000080
    lw      t5, 0x000C(v0)             # 0000000C
    lw      t6, 0x0008(v0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      v0, 0x0044($sp)
    subu    a3, t5, t6
    sw      a3, 0x0054($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0040($sp)
    lw      t9, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      t8, 0x0040($sp)
    lw      a1, 0x0130(t9)             # 00000130
    lw      a3, 0x0054($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0038($sp)
    lw      a2, 0x0008(v0)             # 00000008
    jal     func_80000D28
    sw      t8, 0x0014($sp)
    b       lbl_8005D23C
    lb      v1, 0x0044(s0)             # 00000044
lbl_8005D1E8:
    lw      t7, 0x000C(v0)             # 0000000C
    lw      t4, 0x0008(v0)             # 00000008
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sw      v0, 0x0044($sp)
    subu    a3, t7, t4
    sw      a3, 0x0054($sp)
    jal     func_80004220              # osCreateMesgQueue
    sw      a0, 0x0040($sp)
    lw      t3, 0x0060($sp)
    lw      v0, 0x0044($sp)
    lw      a3, 0x0054($sp)
    lw      t5, 0x0130(t3)             # 00000130
    lw      t6, 0x0040($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0038($sp)
    lw      a2, 0x0008(v0)             # 00000008
    addu    a1, t5, a3
    jal     func_80000D28
    sw      t6, 0x0014($sp)
    lb      v1, 0x0044(s0)             # 00000044
lbl_8005D23C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_8005D250
    addiu   a0, s0, 0x0068             # a0 = 00000068
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bne     v1, $at, lbl_8005D274
lbl_8005D250:
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_8005D29C
    lbu     t7, 0x0050($sp)
    lb      t9, 0x0044(s0)             # 00000044
    addiu   t8, t9, 0x0001             # t8 = 00000001
    b       lbl_8005D298
    sb      t8, 0x0044(s0)             # 00000044
lbl_8005D274:
    slti    $at, v1, 0x0002
    bne     $at, $zero, lbl_8005D298
    addiu   a0, s0, 0x0068             # a0 = 00000068
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80002030              # osRecvMesg
    or      a2, $zero, $zero           # a2 = 00000000
    bnel    v0, $zero, lbl_8005D29C
    lbu     t7, 0x0050($sp)
    sb      $zero, 0x0044(s0)          # 00000044
lbl_8005D298:
    lbu     t7, 0x0050($sp)
lbl_8005D29C:
    sb      t7, 0x0013(s0)             # 00000013
lbl_8005D2A0:
    lw      $ra, 0x002C($sp)
lbl_8005D2A4:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_8005D2B4:
    addiu   $at, $zero, 0x001F         # $at = 0000001F
    bnel    a1, $at, lbl_8005D2C8
    lui     $at, 0x0001                # $at = 00010000
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_8005D2C8:
    addu    v0, a0, $at
    lbu     t6, 0x0A42(v0)             # 00000A42
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    bnel    t6, $zero, lbl_8005D318
    sb      $zero, 0x0AE0($at)         # 00010AE0
    lbu     t7, 0x0A44(v0)             # 00000A44
    lui     $at, 0x800F                # $at = 800F0000
    sb      t7, 0x1644($at)            # 800F1644
    lbu     t8, 0x0A43(v0)             # 00000A43
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    beq     a1, t8, lbl_8005D324
    nop
    sb      a1, 0x0A43($at)            # 00010A43
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    jr      $ra
    sb      a1, 0x0A44($at)            # 00010A44
lbl_8005D314:
    sb      $zero, 0x0AE0($at)         # 00010AE0
lbl_8005D318:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      a1, 0x0AE3($at)            # 00010AE3
lbl_8005D324:
    jr      $ra
    nop


func_8005D32C:
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x0A42(t6)             # 00010A42
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x1644             # v0 = 800F1644
    bnel    t6, $zero, lbl_8005D370
    lui     $at, 0x0001                # $at = 00010000
    lbu     t7, 0x0000(v0)             # 800F1644
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t7, 0x0A43($at)            # 00010A43
    lbu     t8, 0x0000(v0)             # 800F1644
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    jr      $ra
    sb      t8, 0x0A44($at)            # 00010A44
lbl_8005D36C:
    lui     $at, 0x0001                # $at = 00010000
lbl_8005D370:
    addu    $at, $at, a0
    sb      $zero, 0x0AE0($at)         # 00010AE0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sb      t9, 0x0AE3($at)            # 00010AE3
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    swc1    $f4, 0x0AFC($at)           # 00010AFC
    jr      $ra
    nop


func_8005D3A4:
# Sets environment lighting
# A0 = Glboal Context
# A1 = Ptr to Global Context + 0x10A24
# A2 = Ptr to Global Context + 0x7A8 (fog/lighting related)
# A3 = Ptr to Global Context + 0x10760
# SP+10 = Ptr to Global Context + 0x20D8
# SP+14 = Ptr to Global Context + 0x10A20
# SP+18 = Ptr to Graphics Context
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0018($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    lw      v0, 0x135C(t4)             # 8011B92C
    lui     $at, 0x0001                # $at = 00010000
    addu    t6, a0, $at
    mtc1    $zero, $f14                # $f14 = 0.00
    sw      t6, 0x003C($sp)
    beq     v0, $zero, lbl_8005D408
    lw      t2, 0x0ADC(t6)             # 00000ADC
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    v0, $at, lbl_8005D40C
    lw      t8, 0x006C($sp)
    sw      a0, 0x0060($sp)
    sw      t2, 0x004C($sp)
    jal     func_8009175C
    swc1    $f14, 0x0058($sp)
    lw      t2, 0x004C($sp)
    lwc1    $f14, 0x0058($sp)
    lw      a0, 0x0060($sp)
lbl_8005D408:
    lw      t8, 0x006C($sp)
lbl_8005D40C:
    lw      t6, 0x003C($sp)
    lhu     t9, 0x01D4(t8)             # 000001D4
    bnel    t9, $zero, lbl_8005F1C4
    lw      $ra, 0x001C($sp)
    lhu     t7, 0x0934(t6)             # 00000934
    bnel    t7, $zero, lbl_8005D478
    sw      a0, 0x0060($sp)
    lhu     t8, 0x0936(t6)             # 00000936
    bnel    t8, $zero, lbl_8005D478
    sw      a0, 0x0060($sp)
    lbu     v0, 0x1E14(t6)             # 00001E14
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8005D458
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x79C4($at)           # 801079C4
    lwc1    $f4, 0x20C0(a0)            # 000020C0
    sub.s   $f8, $f4, $f6
    b       lbl_8005D474
    swc1    $f8, 0x20C0(a0)            # 000020C0
lbl_8005D458:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8005D474
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x79C8($at)          # 801079C8
    lwc1    $f10, 0x20C0(a0)           # 000020C0
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x20C0(a0)           # 000020C0
lbl_8005D474:
    sw      a0, 0x0060($sp)
lbl_8005D478:
    sw      t2, 0x004C($sp)
    jal     func_80062548
    swc1    $f14, 0x0058($sp)
    jal     func_800619CC
    lw      a0, 0x0060($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    lhu     v0, 0x1416(t4)             # 8011B9E6
    ori     $at, $zero, 0xFF00         # $at = 0000FF00
    lw      t2, 0x004C($sp)
    slt     $at, v0, $at
    lw      t5, 0x0068($sp)
    bne     $at, $zero, lbl_8005D530
    lwc1    $f14, 0x0058($sp)
    ori     $ra, $zero, 0xFFFF         # $ra = 0000FFFF
    beq     $ra, v0, lbl_8005D530
    addiu   t9, v0, 0xFFF0             # t9 = FFFFFFF0
    andi    v0, t9, 0xFFFF             # v0 = 0000FFF0
    ori     $at, $zero, 0xFF0E         # $at = 0000FF0E
    bne     v0, $at, lbl_8005D4FC
    sh      t9, 0x1416(t4)             # 8011B9E6
    addiu   a0, $zero, 0x2813          # a0 = 00002813
    sw      t2, 0x004C($sp)
    jal     func_800646F0
    swc1    $f14, 0x0058($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    ori     t7, $zero, 0xFFFF          # t7 = 0000FFFF
    lw      t2, 0x004C($sp)
    lw      t5, 0x0068($sp)
    lwc1    $f14, 0x0058($sp)
    b       lbl_8005D530
    sh      t7, 0x1416(t4)             # 8011B9E6
lbl_8005D4FC:
    ori     $at, $zero, 0xFF0D         # $at = 0000FF0D
    bne     v0, $at, lbl_8005D530
    addiu   a0, $zero, 0x28AE          # a0 = 000028AE
    sw      t2, 0x004C($sp)
    jal     func_80064738
    swc1    $f14, 0x0058($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    ori     t8, $zero, 0xFFFF          # t8 = 0000FFFF
    lw      t2, 0x004C($sp)
    lw      t5, 0x0068($sp)
    lwc1    $f14, 0x0058($sp)
    sh      t8, 0x1416(t4)             # 8011B9E6
lbl_8005D530:
    lw      t6, 0x006C($sp)
    ori     $ra, $zero, 0xFFFF         # $ra = 0000FFFF
    lw      t7, 0x0074($sp)
    lhu     t9, 0x01D4(t6)             # 000001D4
    bnel    t9, $zero, lbl_8005D624
    lhu     v1, 0x000C(t4)             # 8011A5DC
    lhu     t8, 0x0000(t7)             # 00000000
    lw      v0, 0x0070($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    bne     t8, $zero, lbl_8005D620
    addu    v0, v0, $at
    lw      t6, 0x6300(v0)             # 00006300
    bnel    t6, $zero, lbl_8005D578
    lw      t7, 0x135C(t4)             # 8011B92C
    lbu     t9, 0x6304(v0)             # 00006304
    beql    t9, $zero, lbl_8005D588
    lhu     t8, 0x001A(s0)             # 0000001A
    lw      t7, 0x135C(t4)             # 8011B92C
lbl_8005D578:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t7, $at, lbl_8005D624
    lhu     v1, 0x000C(t4)             # 8011A5DC
    lhu     t8, 0x001A(s0)             # 0000001A
lbl_8005D588:
    lw      a0, 0x0060($sp)
    bnel    t8, $zero, lbl_8005D624
    lhu     v1, 0x000C(t4)             # 8011A5DC
    sw      t2, 0x004C($sp)
    jal     func_8009DB54
    swc1    $f14, 0x0058($sp)
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    lw      t2, 0x004C($sp)
    lw      t5, 0x0068($sp)
    ori     $ra, $zero, 0xFFFF         # $ra = 0000FFFF
    bne     v0, $zero, lbl_8005D620
    lwc1    $f14, 0x0058($sp)
    lw      t6, 0x003C($sp)
    lbu     t9, 0x241B(t6)             # 0000241B
    beql    t9, $zero, lbl_8005D5DC
    lw      t8, 0x0010(t4)             # 8011A5E0
    lw      t7, 0x135C(t4)             # 8011B92C
    beql    t7, $zero, lbl_8005D624
    lhu     v1, 0x000C(t4)             # 8011A5DC
    lw      t8, 0x0010(t4)             # 8011A5E0
lbl_8005D5DC:
    lui     v0, 0x800F                 # v0 = 800F0000
    lui     t9, 0x800F                 # t9 = 800F0000
    beql    t8, $zero, lbl_8005D600
    lhu     t6, 0x000C(t4)             # 8011A5DC
    lhu     v0, 0x1650(v0)             # 800F1650
    slti    $at, v0, 0x0190
    bnel    $at, $zero, lbl_8005D614
    lhu     t8, 0x000C(t4)             # 8011A5DC
    lhu     t6, 0x000C(t4)             # 8011A5DC
lbl_8005D600:
    lhu     t9, 0x1650(t9)             # 800F1650
    addu    t7, t6, t9
    b       lbl_8005D620
    sh      t7, 0x000C(t4)             # 8011A5DC
    lhu     t8, 0x000C(t4)             # 8011A5DC
lbl_8005D614:
    sll     t6, v0,  1
    addu    t9, t8, t6
    sh      t9, 0x000C(t4)             # 8011A5DC
lbl_8005D620:
    lhu     v1, 0x000C(t4)             # 8011A5DC
lbl_8005D624:
    lhu     t7, 0x141A(t4)             # 8011B9EA
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    andi    v0, v1, 0xFFFF             # v0 = 00000000
    slt     $at, t7, v1
    bne     $at, $zero, lbl_8005D650
    slti    $at, v1, 0x0AAB
    bne     $at, $zero, lbl_8005D650
    lui     t8, 0x800F                 # t8 = 800F0000
    lhu     t8, 0x1650(t8)             # 800F1650
    bgezl   t8, lbl_8005D658
    ori     $at, $zero, 0xC001         # $at = 0000C001
lbl_8005D650:
    sh      v1, 0x141A(t4)             # 8011B9EA
    ori     $at, $zero, 0xC001         # $at = 0000C001
lbl_8005D658:
    slt     $at, v0, $at
    beq     $at, $zero, lbl_8005D66C
    slti    $at, v0, 0x4555
    beql    $at, $zero, lbl_8005D678
    sw      $zero, 0x0010(t4)          # 8011A5E0
lbl_8005D66C:
    b       lbl_8005D678
    sw      t6, 0x0010(t4)             # 8011A5E0
    sw      $zero, 0x0010(t4)          # 8011A5E0
lbl_8005D678:
    lbu     a0, 0x00BF(s0)             # 000000BF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    beq     a1, a0, lbl_8005D6DC
    or      v0, a0, $zero              # v0 = 00000000
    lbu     t9, 0x00DC(s0)             # 000000DC
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t9, $at, lbl_8005D6E0
    lui     $at, 0x3F80                # $at = 3F800000
    lbu     v1, 0x00BD(s0)             # 000000BD
    lui     $at, 0x3F80                # $at = 3F800000
    beql    a0, v1, lbl_8005D6E0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f4, 0x00D8(s0)            # 000000D8
    slti    $at, a0, 0x0020
    c.le.s  $f2, $f4
    nop
    bc1fl   lbl_8005D6E0
    lui     $at, 0x3F80                # $at = 3F800000
    beql    $at, $zero, lbl_8005D6E0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $zero, $f6                 # $f6 = 0.00
    sb      v1, 0x00BE(s0)             # 000000BE
    sb      a0, 0x00BD(s0)             # 000000BD
    swc1    $f6, 0x00D8(s0)            # 000000D8
lbl_8005D6DC:
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8005D6E0:
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   $at, $zero, 0x00FE         # $at = 000000FE
    bnel    v0, $at, lbl_8005D6FC
    lbu     t7, 0x001E(s0)             # 0000001E
    b       lbl_8005EFC8
    or      a1, $zero, $zero           # a1 = 00000000
    lbu     t7, 0x001E(s0)             # 0000001E
lbl_8005D6FC:
    bnel    t7, $zero, lbl_8005E838
    lbu     t6, 0x00BC(s0)             # 000000BC
    bne     a1, v0, lbl_8005E834
    lui     t9, 0x800F                 # t9 = 800F0000
    lbu     t8, 0x001F(s0)             # 0000001F
    lhu     t3, 0x141A(t4)             # 8011B9EA
    addiu   t9, t9, 0x1658             # t9 = 800F1658
    sll     t6, t8,  2
    addu    t6, t6, t8
    sll     t6, t6,  2
    addu    t6, t6, t8
    sll     t6, t6,  1
    addu    a2, t6, t9
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    or      a0, t3, $zero              # a0 = 00000000
lbl_8005D73C:
    multu   a1, t0
    mflo    t1
    addu    v1, a2, t1
    lhu     a3, 0x0000(v1)             # 00000000
    slt     $at, a0, a3
    bnel    $at, $zero, lbl_8005E81C
    addiu   a1, a1, 0x0001             # a1 = 00000001
    lhu     t7, 0x0002(v1)             # 00000002
    slt     $at, a0, t7
    bne     $at, $zero, lbl_8005D770
    sw      t7, 0x0024($sp)
    bnel    $ra, t7, lbl_8005E81C
    addiu   a1, a1, 0x0001             # a1 = 00000002
lbl_8005D770:
    andi    a2, t3, 0xFFFF             # a2 = 00000000
    lhu     a0, 0x0026($sp)
    andi    a1, a3, 0xFFFF             # a1 = 00000000
    sw      t1, 0x0030($sp)
    sw      t2, 0x004C($sp)
    jal     func_8005C690
    swc1    $f14, 0x0058($sp)
    lbu     t8, 0x001F(s0)             # 0000001F
    lw      t1, 0x0030($sp)
    lui     t0, 0x800F                 # t0 = 800F0000
    sll     t6, t8,  2
    addu    t6, t6, t8
    sll     t6, t6,  2
    addu    t6, t6, t8
    addiu   t0, t0, 0x1658             # t0 = 800F1658
    sll     t6, t6,  1
    addu    t9, t0, t6
    addu    t7, t9, t1
    lbu     t8, 0x0004(t7)             # 00000004
    lui     $at, 0x800F                # $at = 800F0000
    lui     t4, 0x8012                 # t4 = 80120000
    andi    t6, t8, 0x0003             # t6 = 00000000
    sb      t6, 0x18DC($at)            # 800F18DC
    lbu     t9, 0x001F(s0)             # 0000001F
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    sll     t7, t9,  2
    addu    t7, t7, t9
    sll     t7, t7,  2
    addu    t7, t7, t9
    sll     t7, t7,  1
    addu    t8, t0, t7
    addu    t6, t8, t1
    lbu     t9, 0x0005(t6)             # 00000005
    lw      t2, 0x004C($sp)
    lwc1    $f14, 0x0058($sp)
    andi    t7, t9, 0x0003             # t7 = 00000000
    sb      t7, 0x18E0($at)            # 800F18E0
    lui     $at, 0x800F                # $at = 800F0000
    swc1    $f0, 0x18E4($at)           # 800F18E4
    lbu     t8, 0x0021(s0)             # 00000021
    mov.s   $f2, $f0
    beql    t8, $zero, lbl_8005D888
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t6, 0x0024(s0)             # 00000024
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f8                    # $f8 = 0.00
    bgez    t6, lbl_8005D840
    cvt.s.w $f12, $f8
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f12, $f12, $f10
lbl_8005D840:
    lhu     v0, 0x0022(s0)             # 00000022
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v0, $f16                   # $f16 = 0.00
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    bgez    v0, lbl_8005D864
    cvt.s.w $f18, $f16
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_8005D864:
    sub.s   $f6, $f12, $f18
    andi    t7, t9, 0xFFFF             # t7 = 0000FFFF
    sh      t9, 0x0022(s0)             # 00000022
    bgtz    t7, lbl_8005D884
    div.s   $f14, $f6, $f12
    lbu     t8, 0x0020(s0)             # 00000020
    sb      $zero, 0x0021(s0)          # 00000021
    sb      t8, 0x001F(s0)             # 0000001F
lbl_8005D884:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005D888:
    lbu     t6, 0x001F(s0)             # 0000001F
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t9, t6,  2
    addu    t9, t9, t6
    sll     t9, t9,  2
    addu    t9, t9, t6
    sll     t9, t9,  1
    addu    t7, t0, t9
    addu    v1, t7, t1
    lbu     t8, 0x0004(v1)             # 00000004
    sll     t6, t8,  2
    subu    t6, t6, t8
    sll     t6, t6,  2
    subu    t6, t6, t8
    sll     t6, t6,  1
    addu    t9, t2, t6
    addu    t7, t9, v0
    lbu     a1, 0x0000(t7)             # 0000FFFF
    mtc1    a1, $f8                    # $f8 = 0.00
    bgez    a1, lbl_8005D8E8
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_8005D8E8:
    lbu     t8, 0x0005(v1)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t6, t8,  2
    subu    t6, t6, t8
    sll     t6, t6,  2
    subu    t6, t6, t8
    sll     t6, t6,  1
    addu    t9, t2, t6
    addu    t7, t9, v0
    lbu     t8, 0x0000(t7)             # 0000FFFF
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    subu    t6, t8, a1
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4
    mul.s   $f6, $f18, $f0
    add.s   $f8, $f10, $f6
    cfc1    t9, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8005D998
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
    bne     t7, $zero, lbl_8005D98C
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005D9A4
    or      t7, t7, $at                # t7 = 80000000
lbl_8005D98C:
    b       lbl_8005D9A4
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f16
lbl_8005D998:
    nop
    bltz    t7, lbl_8005D98C
    nop
lbl_8005D9A4:
    sb      t7, 0x0048($sp)
    lbu     t8, 0x0020(s0)             # 00000020
    ctc1    t9, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t6, t8,  2
    addu    t6, t6, t8
    sll     t6, t6,  2
    addu    t6, t6, t8
    sll     t6, t6,  1
    addu    t9, t0, t6
    addu    a0, t9, t1
    lbu     t8, 0x0004(a0)             # 00000004
    sll     t6, t8,  2
    subu    t6, t6, t8
    sll     t6, t6,  2
    subu    t6, t6, t8
    sll     t6, t6,  1
    addu    t9, t2, t6
    addu    t8, t9, v0
    lbu     a2, 0x0000(t8)             # 00000000
    mtc1    a2, $f4                    # $f4 = 0.00
    bgez    a2, lbl_8005DA0C
    cvt.s.w $f18, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f18, $f18, $f10
lbl_8005DA0C:
    lbu     t6, 0x0005(a0)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t9, t6,  2
    subu    t9, t9, t6
    sll     t9, t9,  2
    subu    t9, t9, t6
    sll     t9, t9,  1
    addu    t8, t2, t9
    addu    t6, t8, v0
    lbu     t9, 0x0000(t6)             # 00000000
    subu    t8, t9, a2
    mtc1    t8, $f6                    # $f6 = 0.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    cvt.s.w $f8, $f6
    mul.s   $f16, $f8, $f0
    add.s   $f4, $f18, $f16
    cfc1    t6, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f4
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8005DABC
    mfc1    t9, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f10, $f4, $f10
    ctc1    t9, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8005DAB0
    nop
    mfc1    t9, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005DAC8
    or      t9, t9, $at                # t9 = 80000000
lbl_8005DAB0:
    b       lbl_8005DAC8
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f10
lbl_8005DABC:
    nop
    bltz    t9, lbl_8005DAB0
    nop
lbl_8005DAC8:
    ctc1    t6, $f31
    mtc1    t8, $f6                    # $f6 = 0.00
    sb      t9, 0x0049($sp)
    bgez    t8, lbl_8005DAEC
    cvt.s.w $f8, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f8, $f8, $f18
lbl_8005DAEC:
    andi    t6, t9, 0x00FF             # t6 = 000000FF
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    subu    t9, t6, t8
    mtc1    t9, $f16                   # $f16 = NaN
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addu    t8, s0, v0
    cvt.s.w $f4, $f16
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f4, $f14
    add.s   $f6, $f8, $f10
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005DB88
    mfc1    t6, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005DB7C
    nop
    mfc1    t6, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005DB94
    or      t6, t6, $at                # t6 = 80000000
lbl_8005DB7C:
    b       lbl_8005DB94
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f18
lbl_8005DB88:
    nop
    bltz    t6, lbl_8005DB7C
    nop
lbl_8005DB94:
    slti    $at, v0, 0x0003
    ctc1    t7, $f31
    bne     $at, $zero, lbl_8005D888
    sb      t6, 0x00C0(t8)             # 000001BF
    lhu     a2, 0x000C(t4)             # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    sw      t1, 0x0030($sp)
    addu    a0, a2, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    sw      t2, 0x004C($sp)
    swc1    $f2, 0x005C($sp)
    jal     func_800636C4              # sins?
    swc1    $f14, 0x0058($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f16                  # $f16 = 120.00
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    mul.s   $f4, $f0, $f16
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    neg.s   $f8, $f4
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    sb      t7, 0x00C3(s0)             # 000000C3
    lhu     a2, 0x000C(t4)             # 8011A5DC
    addu    a0, a2, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t4, t4, 0xA5D0             # t4 = 8011A5D0
    mul.s   $f18, $f0, $f6
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    trunc.w.s $f16, $f18
    mfc1    t8, $f16
    nop
    sb      t8, 0x00C4(s0)             # 000000C4
    lhu     a2, 0x000C(t4)             # 8011A5DC
    addu    a0, a2, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f4                   # $f4 = 20.00
    lb      t6, 0x00C3(s0)             # 000000C3
    lw      t1, 0x0030($sp)
    mul.s   $f8, $f0, $f4
    lw      t2, 0x004C($sp)
    lw      t5, 0x0068($sp)
    lwc1    $f2, 0x005C($sp)
    lwc1    $f14, 0x0058($sp)
    subu    t8, $zero, t6
    lb      t9, 0x00C4(s0)             # 000000C4
    trunc.w.s $f10, $f8
    sb      t8, 0x00C9(s0)             # 000000C9
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0x1658             # t0 = 800F1658
    mfc1    t7, $f10
    or      v0, $zero, $zero           # v0 = 00000000
    sb      t7, 0x00C5(s0)             # 000000C5
    lb      t6, 0x00C5(s0)             # 000000C5
    subu    t7, $zero, t9
    sb      t7, 0x00CA(s0)             # 000000CA
    subu    t8, $zero, t6
    sb      t8, 0x00CB(s0)             # 000000CB
lbl_8005DCA4:
    lbu     t9, 0x001F(s0)             # 0000001F
    lui     $at, 0x4F80                # $at = 4F800000
    addu    a3, s0, v0
    sll     t7, t9,  2
    addu    t7, t7, t9
    sll     t7, t7,  2
    addu    t7, t7, t9
    sll     t7, t7,  1
    addu    t6, t0, t7
    addu    v1, t6, t1
    lbu     t8, 0x0004(v1)             # 00000004
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, v0
    lbu     a1, 0x0006(t6)             # 00000006
    mtc1    a1, $f6                    # $f6 = 0.00
    bgez    a1, lbl_8005DD08
    cvt.s.w $f18, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f18, $f18, $f16
lbl_8005DD08:
    lbu     t8, 0x0005(v1)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, v0
    lbu     t8, 0x0006(t6)             # 00000006
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    subu    t9, t8, a1
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f2
    add.s   $f6, $f18, $f10
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005DDB8
    mfc1    t6, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f6, $f16
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005DDAC
    nop
    mfc1    t6, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005DDC4
    or      t6, t6, $at                # t6 = 80000000
lbl_8005DDAC:
    b       lbl_8005DDC4
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16
lbl_8005DDB8:
    nop
    bltz    t6, lbl_8005DDAC
    nop
lbl_8005DDC4:
    sb      t6, 0x0048($sp)
    lbu     t8, 0x0020(s0)             # 00000020
    ctc1    t7, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t0, t9
    addu    a0, t7, t1
    lbu     t8, 0x0004(a0)             # 00000004
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t8, t7, v0
    lbu     a2, 0x0006(t8)             # 00000006
    mtc1    a2, $f4                    # $f4 = 0.00
    bgez    a2, lbl_8005DE2C
    cvt.s.w $f8, $f4
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f8, $f8, $f18
lbl_8005DE2C:
    lbu     t9, 0x0005(a0)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    sll     t7, t7,  1
    addu    t8, t2, t7
    addu    t9, t8, v0
    lbu     t7, 0x0006(t9)             # 00000006
    subu    t8, t7, a2
    mtc1    t8, $f10                   # $f10 = 0.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    cvt.s.w $f6, $f10
    mul.s   $f16, $f6, $f2
    add.s   $f4, $f8, $f16
    cfc1    t9, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8005DEDC
    mfc1    t7, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f18, $f4, $f18
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8005DED0
    nop
    mfc1    t7, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005DEE8
    or      t7, t7, $at                # t7 = 80000000
lbl_8005DED0:
    b       lbl_8005DEE8
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f18
lbl_8005DEDC:
    nop
    bltz    t7, lbl_8005DED0
    nop
lbl_8005DEE8:
    ctc1    t9, $f31
    mtc1    t8, $f10                   # $f10 = 0.00
    sb      t7, 0x0049($sp)
    bgez    t8, lbl_8005DF0C
    cvt.s.w $f6, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8005DF0C:
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    subu    t7, t9, t8
    mtc1    t7, $f16                   # $f16 = NaN
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f4, $f16
    mul.s   $f18, $f4, $f14
    add.s   $f10, $f6, $f18
    cfc1    t6, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f8, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8005DF9C
    mfc1    t9, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f10, $f8
    ctc1    t9, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8005DF90
    nop
    mfc1    t9, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005DFA8
    or      t9, t9, $at                # t9 = 80000000
lbl_8005DF90:
    b       lbl_8005DFA8
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8
lbl_8005DF9C:
    nop
    bltz    t9, lbl_8005DF90
    nop
lbl_8005DFA8:
    sb      t9, 0x00C6(a3)             # 000000C6
    lbu     t8, 0x001F(s0)             # 0000001F
    ctc1    t6, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t7, t8,  2
    addu    t7, t7, t8
    sll     t7, t7,  2
    addu    t7, t7, t8
    sll     t7, t7,  1
    addu    t6, t0, t7
    addu    v1, t6, t1
    lbu     t9, 0x0004(v1)             # 00000004
    sll     t8, t9,  2
    subu    t8, t8, t9
    sll     t8, t8,  2
    subu    t8, t8, t9
    sll     t8, t8,  1
    addu    t7, t2, t8
    addu    t6, t7, v0
    lbu     a1, 0x000C(t6)             # 0000000B
    mtc1    a1, $f16                   # $f16 = 0.00
    bgez    a1, lbl_8005E010
    cvt.s.w $f4, $f16
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_8005E010:
    lbu     t9, 0x0005(v1)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t8, t9,  2
    subu    t8, t8, t9
    sll     t8, t8,  2
    subu    t8, t8, t9
    sll     t8, t8,  1
    addu    t7, t2, t8
    addu    t6, t7, v0
    lbu     t9, 0x000C(t6)             # 0000000B
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    subu    t8, t9, a1
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f8, $f10, $f2
    add.s   $f16, $f4, $f8
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f6, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005E0C0
    mfc1    t6, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f6, $f16, $f6
    ctc1    t6, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005E0B4
    nop
    mfc1    t6, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E0CC
    or      t6, t6, $at                # t6 = 80000000
lbl_8005E0B4:
    b       lbl_8005E0CC
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f6
lbl_8005E0C0:
    nop
    bltz    t6, lbl_8005E0B4
    nop
lbl_8005E0CC:
    sb      t6, 0x0048($sp)
    lbu     t9, 0x0020(s0)             # 00000020
    ctc1    t7, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t8, t9,  2
    addu    t8, t8, t9
    sll     t8, t8,  2
    addu    t8, t8, t9
    sll     t8, t8,  1
    addu    t7, t0, t8
    addu    a0, t7, t1
    lbu     t9, 0x0004(a0)             # 00000004
    sll     t8, t9,  2
    subu    t8, t8, t9
    sll     t8, t8,  2
    subu    t8, t8, t9
    sll     t8, t8,  1
    addu    t7, t2, t8
    addu    t9, t7, v0
    lbu     a2, 0x000C(t9)             # 0000000B
    mtc1    a2, $f18                   # $f18 = 0.00
    bgez    a2, lbl_8005E134
    cvt.s.w $f10, $f18
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f10, $f10, $f4
lbl_8005E134:
    lbu     t8, 0x0005(a0)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t7, t8,  2
    subu    t7, t7, t8
    sll     t7, t7,  2
    subu    t7, t7, t8
    sll     t7, t7,  1
    addu    t9, t2, t7
    addu    t8, t9, v0
    lbu     t7, 0x000C(t8)             # 0000010B
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    subu    t9, t7, a2
    mtc1    t9, $f8                    # $f8 = NaN
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t9, t6, 0x00FF             # t9 = 000000FF
    cvt.s.w $f16, $f8
    mul.s   $f6, $f16, $f2
    add.s   $f18, $f10, $f6
    cfc1    t8, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8005E1EC
    mfc1    t7, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t7, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8005E1E0
    nop
    mfc1    t7, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E1F8
    or      t7, t7, $at                # t7 = 80000000
lbl_8005E1E0:
    b       lbl_8005E1F8
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f4
lbl_8005E1EC:
    nop
    bltz    t7, lbl_8005E1E0
    nop
lbl_8005E1F8:
    ctc1    t8, $f31
    mtc1    t9, $f8                    # $f8 = 0.00
    sb      t7, 0x0049($sp)
    bgez    t9, lbl_8005E21C
    cvt.s.w $f16, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f16, $f16, $f10
lbl_8005E21C:
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    andi    t9, t6, 0x00FF             # t9 = 000000FF
    subu    t7, t8, t9
    mtc1    t7, $f6                    # $f6 = NaN
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.s.w $f18, $f6
    mul.s   $f4, $f18, $f14
    add.s   $f8, $f16, $f4
    cfc1    t6, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8005E2AC
    mfc1    t8, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t8, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8005E2A0
    nop
    mfc1    t8, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E2B8
    or      t8, t8, $at                # t8 = 80000000
lbl_8005E2A0:
    b       lbl_8005E2B8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f10
lbl_8005E2AC:
    nop
    bltz    t8, lbl_8005E2A0
    nop
lbl_8005E2B8:
    slti    $at, v0, 0x0003
    ctc1    t6, $f31
    bne     $at, $zero, lbl_8005DCA4
    sb      t8, 0x00CC(a3)             # 000000CC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8005E2CC:
    lbu     t9, 0x001F(s0)             # 0000001F
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t7, t9,  2
    addu    t7, t7, t9
    sll     t7, t7,  2
    addu    t7, t7, t9
    sll     t7, t7,  1
    addu    t6, t0, t7
    addu    v1, t6, t1
    lbu     t8, 0x0004(v1)             # 00000004
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, v0
    lbu     a1, 0x000F(t6)             # 0000000E
    mtc1    a1, $f6                    # $f6 = 0.00
    bgez    a1, lbl_8005E32C
    cvt.s.w $f18, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f18, $f18, $f16
lbl_8005E32C:
    lbu     t8, 0x0005(v1)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, v0
    lbu     t8, 0x000F(t6)             # 0000000E
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    subu    t9, t8, a1
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    mul.s   $f10, $f8, $f2
    add.s   $f6, $f18, $f10
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f6
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005E3DC
    mfc1    t6, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f16, $f6, $f16
    ctc1    t6, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005E3D0
    nop
    mfc1    t6, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E3E8
    or      t6, t6, $at                # t6 = 80000000
lbl_8005E3D0:
    b       lbl_8005E3E8
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f16
lbl_8005E3DC:
    nop
    bltz    t6, lbl_8005E3D0
    nop
lbl_8005E3E8:
    sb      t6, 0x0048($sp)
    lbu     t8, 0x0020(s0)             # 00000020
    ctc1    t7, $f31
    lui     $at, 0x4F80                # $at = 4F800000
    sll     t9, t8,  2
    addu    t9, t9, t8
    sll     t9, t9,  2
    addu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t0, t9
    addu    a0, t7, t1
    lbu     t8, 0x0004(a0)             # 00000004
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t8, t7, v0
    lbu     a2, 0x000F(t8)             # 0000000E
    mtc1    a2, $f4                    # $f4 = 0.00
    bgez    a2, lbl_8005E450
    cvt.s.w $f8, $f4
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f8, $f8, $f18
lbl_8005E450:
    lbu     t9, 0x0005(a0)             # 00000005
    lui     $at, 0x4F00                # $at = 4F000000
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    sll     t7, t7,  1
    addu    t8, t2, t7
    addu    t9, t8, v0
    lbu     t7, 0x000F(t9)             # 0000010E
    subu    t8, t7, a2
    mtc1    t8, $f10                   # $f10 = NaN
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    cvt.s.w $f6, $f10
    mul.s   $f16, $f6, $f2
    add.s   $f4, $f8, $f16
    cfc1    t9, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8005E500
    mfc1    t7, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f18, $f4, $f18
    ctc1    t7, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8005E4F4
    nop
    mfc1    t7, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E50C
    or      t7, t7, $at                # t7 = 80000000
lbl_8005E4F4:
    b       lbl_8005E50C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f18
lbl_8005E500:
    nop
    bltz    t7, lbl_8005E4F4
    nop
lbl_8005E50C:
    ctc1    t9, $f31
    mtc1    t8, $f10                   # $f10 = 0.00
    sb      t7, 0x0049($sp)
    bgez    t8, lbl_8005E530
    cvt.s.w $f6, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8005E530:
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    subu    t7, t9, t8
    mtc1    t7, $f16                   # $f16 = NaN
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addu    t8, s0, v0
    cvt.s.w $f4, $f16
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0xFFFF             # v0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f18, $f4, $f14
    add.s   $f10, $f6, $f18
    cfc1    t6, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f8, $f10
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8005E5CC
    mfc1    t9, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f8, $f10, $f8
    ctc1    t9, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8005E5C0
    nop
    mfc1    t9, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005E5D8
    or      t9, t9, $at                # t9 = 80000000
lbl_8005E5C0:
    b       lbl_8005E5D8
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f8
lbl_8005E5CC:
    nop
    bltz    t9, lbl_8005E5C0
    nop
lbl_8005E5D8:
    slti    $at, v0, 0x0003
    ctc1    t6, $f31
    bne     $at, $zero, lbl_8005E2CC
    sb      t9, 0x00CF(t8)             # 000001CE
    lbu     t7, 0x001F(s0)             # 0000001F
    addiu   a3, $zero, 0x0016          # a3 = 00000016
    sll     t6, t7,  2
    addu    t6, t6, t7
    sll     t6, t6,  2
    addu    t6, t6, t7
    sll     t6, t6,  1
    addu    t9, t0, t6
    addu    v1, t9, t1
    lbu     t8, 0x0004(v1)             # 00000004
    lbu     t9, 0x0005(v1)             # 00000005
    multu   t8, a3
    mflo    t7
    addu    t6, t2, t7
    lh      v0, 0x0012(t6)             # 00000011
    multu   t9, a3
    andi    v0, v0, 0x03FF             # v0 = 00000001
    mflo    t8
    addu    t7, t2, t8
    lh      t6, 0x0012(t7)             # 00000011
    andi    t9, t6, 0x03FF             # t9 = 000003FF
    subu    t8, t9, v0
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f4, $f16
    mul.s   $f6, $f4, $f2
    trunc.w.s $f18, $f6
    mfc1    t8, $f18
    nop
    addu    t7, v0, t8
    sh      t7, 0x0044($sp)
    lbu     t6, 0x0020(s0)             # 00000020
    sll     t9, t6,  2
    addu    t9, t9, t6
    sll     t9, t9,  2
    addu    t9, t9, t6
    sll     t9, t9,  1
    addu    t8, t0, t9
    addu    a0, t8, t1
    lbu     t7, 0x0004(a0)             # 00000004
    lbu     t8, 0x0005(a0)             # 00000005
    multu   t7, a3
    mflo    t6
    addu    t9, t2, t6
    lh      a1, 0x0012(t9)             # 00000411
    multu   t8, a3
    andi    a1, a1, 0x03FF             # a1 = 00000000
    mflo    t7
    addu    t6, t2, t7
    lh      t9, 0x0012(t6)             # 00000011
    andi    t8, t9, 0x03FF             # t8 = 000003FF
    subu    t7, t8, a1
    mtc1    t7, $f10                   # $f10 = NaN
    lh      t8, 0x0044($sp)
    cvt.s.w $f8, $f10
    mul.s   $f16, $f8, $f2
    trunc.w.s $f4, $f16
    mfc1    t7, $f4
    nop
    addu    t6, a1, t7
    sh      t6, 0x0046($sp)
    lh      t9, 0x0046($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    subu    t7, t9, t8
    mtc1    t7, $f6                    # $f6 = NaN
    lbu     t7, 0x001F(s0)             # 0000001F
    cvt.s.w $f18, $f6
    mul.s   $f10, $f18, $f14
    trunc.w.s $f8, $f10
    mfc1    t6, $f8
    nop
    addu    t9, t8, t6
    sll     t8, t7,  2
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t8, t8, t7
    sll     t8, t8,  1
    addu    t6, t0, t8
    sh      t9, 0x00D2(s0)             # 000000D2
    addu    v1, t6, t1
    lbu     t9, 0x0004(v1)             # 00000004
    lbu     t6, 0x0005(v1)             # 00000005
    multu   t9, a3
    mflo    t7
    addu    t8, t2, t7
    lh      v0, 0x0014(t8)             # 00000413
    multu   t6, a3
    mflo    t9
    addu    t7, t2, t9
    lh      t8, 0x0014(t7)             # 00000013
    subu    t6, t8, v0
    mtc1    t6, $f16                   # $f16 = NaN
    nop
    cvt.s.w $f4, $f16
    mul.s   $f6, $f4, $f2
    trunc.w.s $f18, $f6
    mfc1    t6, $f18
    nop
    addu    t9, v0, t6
    sh      t9, 0x0044($sp)
    lbu     t7, 0x0020(s0)             # 00000020
    sll     t8, t7,  2
    addu    t8, t8, t7
    sll     t8, t8,  2
    addu    t8, t8, t7
    sll     t8, t8,  1
    addu    t6, t0, t8
    addu    a0, t6, t1
    lbu     t9, 0x0004(a0)             # 00000004
    lbu     t6, 0x0005(a0)             # 00000005
    multu   t9, a3
    mflo    t7
    addu    t8, t2, t7
    lh      a2, 0x0014(t8)             # 00000413
    multu   t6, a3
    mflo    t9
    addu    t7, t2, t9
    lh      t8, 0x0014(t7)             # 00000013
    subu    t6, t8, a2
    mtc1    t6, $f10                   # $f10 = NaN
    lh      t8, 0x0044($sp)
    cvt.s.w $f8, $f10
    mul.s   $f16, $f8, $f2
    trunc.w.s $f4, $f16
    mfc1    t6, $f4
    nop
    addu    t9, a2, t6
    sh      t9, 0x0046($sp)
    lh      t7, 0x0046($sp)
    subu    t6, t7, t8
    mtc1    t6, $f6                    # $f6 = NaN
    nop
    cvt.s.w $f18, $f6
    mul.s   $f10, $f18, $f14
    trunc.w.s $f8, $f10
    mfc1    t9, $f8
    nop
    addu    t7, t8, t9
    b       lbl_8005EFC8
    sh      t7, 0x00D4(s0)             # 000000D4
    addiu   a1, a1, 0x0001             # a1 = 00000001
lbl_8005E81C:
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    slti    $at, a1, 0x0007
    bne     $at, $zero, lbl_8005D73C
    nop
    b       lbl_8005EFC8
    or      a1, $zero, $zero           # a1 = 00000000
lbl_8005E834:
    lbu     t6, 0x00BC(s0)             # 000000BC
lbl_8005E838:
    or      a1, $zero, $zero           # a1 = 00000000
    bnel    t6, $zero, lbl_8005E984
    lbu     t6, 0x00BD(s0)             # 000000BD
    or      a1, $zero, $zero           # a1 = 00000000
lbl_8005E848:
    lbu     t8, 0x00BD(s0)             # 000000BD
    addu    v0, s0, a1
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, a1
    lbu     t8, 0x0000(t6)             # FFFFFFFF
    sb      t8, 0x00C0(v0)             # 000000C1
    lbu     t9, 0x00BD(s0)             # 000000BD
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    sll     t7, t7,  1
    addu    t6, t2, t7
    addu    t8, t6, a1
    lb      t9, 0x0003(t8)             # 00000402
    sb      t9, 0x00C3(v0)             # 000000C4
    lbu     t7, 0x00BD(s0)             # 000000BD
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  2
    subu    t6, t6, t7
    sll     t6, t6,  1
    addu    t8, t2, t6
    addu    t9, t8, a1
    lbu     t7, 0x0006(t9)             # 00000405
    sb      t7, 0x00C6(v0)             # 000000C7
    lbu     t6, 0x00BD(s0)             # 000000BD
    sll     t8, t6,  2
    subu    t8, t8, t6
    sll     t8, t8,  2
    subu    t8, t8, t6
    sll     t8, t8,  1
    addu    t9, t2, t8
    addu    t7, t9, a1
    lb      t6, 0x0009(t7)             # 00000008
    sb      t6, 0x00C9(v0)             # 000000CA
    lbu     t8, 0x00BD(s0)             # 000000BD
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    sll     t9, t9,  1
    addu    t7, t2, t9
    addu    t6, t7, a1
    lbu     t8, 0x000C(t6)             # 0000000B
    sb      t8, 0x00CC(v0)             # 000000CD
    lbu     t9, 0x00BD(s0)             # 000000BD
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    sll     t7, t7,  1
    addu    t6, t2, t7
    addu    t8, t6, a1
    addiu   a1, a1, 0x0001             # a1 = 00000001
    lbu     t9, 0x000F(t8)             # 0000040E
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    slti    $at, a1, 0x0003
    bne     $at, $zero, lbl_8005E848
    sb      t9, 0x00CF(v0)             # 000000D0
    lbu     t7, 0x00BD(s0)             # 000000BD
    addiu   a3, $zero, 0x0016          # a3 = 00000016
    or      a1, $zero, $zero           # a1 = 00000000
    multu   t7, a3
    mflo    t6
    addu    v0, t2, t6
    lh      t8, 0x0012(v0)             # 00000013
    andi    t9, t8, 0x03FF             # t9 = 000003FF
    sh      t9, 0x00D2(s0)             # 000000D2
    lh      t7, 0x0014(v0)             # 00000015
    swc1    $f2, 0x00D8(s0)            # 000000D8
    b       lbl_8005EFC8
    sh      t7, 0x00D4(s0)             # 000000D4
    lbu     t6, 0x00BD(s0)             # 000000BD
lbl_8005E984:
    addiu   a3, $zero, 0x0016          # a3 = 00000016
    lbu     a0, 0x00DC(s0)             # 000000DC
    multu   t6, a3
    lwc1    $f0, 0x00D8(s0)            # 000000D8
    mflo    t8
    addu    t9, t2, t8
    lh      v0, 0x0012(t9)             # 00000411
    sra     v0, v0, 10
    sll     v0, v0,  2
    andi    v0, v0, 0x00FF             # v0 = 00000001
    bnel    v0, $zero, lbl_8005E9C0
    lhu     v1, 0x00D6(s0)             # 000000D6
    addiu   v0, v0, 0x0001             # v0 = 00000002
    andi    v0, v0, 0x00FF             # v0 = 00000002
    lhu     v1, 0x00D6(s0)             # 000000D6
lbl_8005E9C0:
    beq     $ra, v1, lbl_8005E9CC
    nop
    andi    v0, v1, 0x00FF             # v0 = 00000000
lbl_8005E9CC:
    bnel    a0, $zero, lbl_8005EA10
    c.lt.s  $f2, $f0
    mtc1    v0, $f16                   # $f16 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_8005E9F0
    cvt.s.w $f4, $f16
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_8005E9F0:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    nop
    div.s   $f10, $f4, $f18
    add.s   $f8, $f0, $f10
    swc1    $f8, 0x00D8(s0)            # 000000D8
    lwc1    $f0, 0x00D8(s0)            # 000000D8
    c.lt.s  $f2, $f0
lbl_8005EA10:
    nop
    bc1f    lbl_8005EA20
    nop
    swc1    $f2, 0x00D8(s0)            # 000000D8
lbl_8005EA20:
    lbu     t7, 0x00BE(s0)             # 000000BE
    lwc1    $f4, 0x00D8(s0)            # 000000D8
    addu    v0, s0, a1
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  2
    subu    t6, t6, t7
    lbu     t7, 0x00BD(s0)             # 000000BD
    sll     t6, t6,  1
    addu    t8, t2, t6
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  2
    addu    t9, t8, a1
    subu    t6, t6, t7
    sll     t6, t6,  1
    lbu     v1, 0x0000(t9)             # 000003FF
    addu    t8, t2, t6
    addu    t9, t8, a1
    lbu     t7, 0x0000(t9)             # 000003FF
    mtc1    v1, $f10                   # $f10 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    subu    t6, t7, v1
    mtc1    t6, $f16                   # $f16 = NaN
    cvt.s.w $f8, $f10
    cvt.s.w $f6, $f16
    mul.s   $f18, $f6, $f4
    bgezl   v1, lbl_8005EAA4
    add.s   $f6, $f8, $f18
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16
    add.s   $f6, $f8, $f18
lbl_8005EAA4:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t8, $f31
    ctc1    t9, $f31
    nop
    cvt.w.s $f4, $f6
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    beql    t9, $zero, lbl_8005EB18
    mfc1    t9, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sub.s   $f4, $f6, $f4
    ctc1    t9, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t9, $f31
    nop
    andi    t9, t9, 0x0078             # t9 = 00000000
    bne     t9, $zero, lbl_8005EB0C
    nop
    mfc1    t9, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005EB24
    or      t9, t9, $at                # t9 = 80000000
lbl_8005EB0C:
    b       lbl_8005EB24
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    mfc1    t9, $f4
lbl_8005EB18:
    nop
    bltz    t9, lbl_8005EB0C
    nop
lbl_8005EB24:
    sb      t9, 0x00C0(v0)             # 000000C0
    lbu     t7, 0x00BE(s0)             # 000000BE
    ctc1    t8, $f31
    lwc1    $f8, 0x00D8(s0)            # 000000D8
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  2
    subu    t6, t6, t7
    lbu     t7, 0x00BD(s0)             # 000000BD
    sll     t6, t6,  1
    addu    t8, t2, t6
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  2
    addu    t9, t8, a1
    subu    t6, t6, t7
    sll     t6, t6,  1
    lb      a0, 0x0003(t9)             # 00000002
    addu    t8, t2, t6
    addu    t9, t8, a1
    lb      t7, 0x0003(t9)             # 00000002
    lui     $at, 0x4F80                # $at = 4F800000
    subu    t6, t7, a0
    mtc1    t6, $f10                   # $f10 = NaN
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f8
    trunc.w.s $f6, $f18
    mfc1    t6, $f6
    nop
    addu    t8, a0, t6
    sb      t8, 0x00C3(v0)             # 000000C3
    lbu     t9, 0x00BE(s0)             # 000000BE
    lwc1    $f16, 0x00D8(s0)           # 000000D8
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    lbu     t9, 0x00BD(s0)             # 000000BD
    sll     t7, t7,  1
    addu    t6, t2, t7
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    addu    t8, t6, a1
    subu    t7, t7, t9
    sll     t7, t7,  1
    lbu     v1, 0x0006(t8)             # 00000405
    addu    t6, t2, t7
    addu    t8, t6, a1
    lbu     t9, 0x0006(t8)             # 00000405
    mtc1    v1, $f18                   # $f18 = 0.00
    subu    t7, t9, v1
    mtc1    t7, $f4                    # $f4 = NaN
    cvt.s.w $f6, $f18
    cvt.s.w $f10, $f4
    mul.s   $f8, $f10, $f16
    bgezl   v1, lbl_8005EC20
    add.s   $f10, $f6, $f8
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f6, $f6, $f4
    add.s   $f10, $f6, $f8
lbl_8005EC20:
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_8005EC94
    mfc1    t8, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t8, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_8005EC88
    nop
    mfc1    t8, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005ECA0
    or      t8, t8, $at                # t8 = 80000000
lbl_8005EC88:
    b       lbl_8005ECA0
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f16
lbl_8005EC94:
    nop
    bltz    t8, lbl_8005EC88
    nop
lbl_8005ECA0:
    sb      t8, 0x00C6(v0)             # 000000C6
    lbu     t9, 0x00BE(s0)             # 000000BE
    ctc1    t6, $f31
    lwc1    $f6, 0x00D8(s0)            # 000000D8
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    subu    t7, t7, t9
    lbu     t9, 0x00BD(s0)             # 000000BD
    sll     t7, t7,  1
    addu    t6, t2, t7
    sll     t7, t9,  2
    subu    t7, t7, t9
    sll     t7, t7,  2
    addu    t8, t6, a1
    subu    t7, t7, t9
    sll     t7, t7,  1
    lb      a0, 0x0009(t8)             # 00000008
    addu    t6, t2, t7
    addu    t8, t6, a1
    lb      t9, 0x0009(t8)             # 00000008
    lui     $at, 0x4F80                # $at = 4F800000
    subu    t7, t9, a0
    mtc1    t7, $f18                   # $f18 = NaN
    nop
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t7, $f10
    nop
    addu    t6, a0, t7
    sb      t6, 0x00C9(v0)             # 000000C9
    lbu     t8, 0x00BE(s0)             # 000000BE
    lwc1    $f4, 0x00D8(s0)            # 000000D8
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    lbu     t8, 0x00BD(s0)             # 000000BD
    sll     t9, t9,  1
    addu    t7, t2, t9
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t6, t7, a1
    subu    t9, t9, t8
    sll     t9, t9,  1
    lbu     v1, 0x000C(t6)             # 0000000B
    addu    t7, t2, t9
    addu    t6, t7, a1
    lbu     t8, 0x000C(t6)             # 0000000B
    mtc1    v1, $f8                    # $f8 = 0.00
    subu    t9, t8, v1
    mtc1    t9, $f16                   # $f16 = NaN
    cvt.s.w $f10, $f8
    cvt.s.w $f18, $f16
    mul.s   $f6, $f18, $f4
    bgezl   v1, lbl_8005ED9C
    add.s   $f18, $f10, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
    add.s   $f18, $f10, $f6
lbl_8005ED9C:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005EE10
    mfc1    t6, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t6, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005EE04
    nop
    mfc1    t6, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005EE1C
    or      t6, t6, $at                # t6 = 80000000
lbl_8005EE04:
    b       lbl_8005EE1C
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f4
lbl_8005EE10:
    nop
    bltz    t6, lbl_8005EE04
    nop
lbl_8005EE1C:
    sb      t6, 0x00CC(v0)             # 000000CC
    lbu     t8, 0x00BE(s0)             # 000000BE
    ctc1    t7, $f31
    lwc1    $f10, 0x00D8(s0)           # 000000D8
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    subu    t9, t9, t8
    lbu     t8, 0x00BD(s0)             # 000000BD
    sll     t9, t9,  1
    addu    t7, t2, t9
    sll     t9, t8,  2
    subu    t9, t9, t8
    sll     t9, t9,  2
    addu    t6, t7, a1
    subu    t9, t9, t8
    sll     t9, t9,  1
    lbu     a0, 0x000F(t6)             # 0000000E
    addu    t7, t2, t9
    addu    t6, t7, a1
    lbu     t8, 0x000F(t6)             # 0000000E
    mtc1    a0, $f18                   # $f18 = 0.00
    addiu   a1, a1, 0x0001             # a1 = 00000001
    subu    t9, t8, a0
    mtc1    t9, $f8                    # $f8 = NaN
    cvt.s.w $f4, $f18
    cvt.s.w $f16, $f8
    mul.s   $f6, $f16, $f10
    bgez    a0, lbl_8005EEA0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8
lbl_8005EEA0:
    add.s   $f16, $f4, $f6
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t7, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f16
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8005EF1C
    mfc1    t6, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f16, $f10
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8005EF10
    nop
    mfc1    t6, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005EF28
    or      t6, t6, $at                # t6 = 80000000
lbl_8005EF10:
    b       lbl_8005EF28
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10
lbl_8005EF1C:
    nop
    bltz    t6, lbl_8005EF10
    nop
lbl_8005EF28:
    slti    $at, a1, 0x0003
    ctc1    t7, $f31
    bne     $at, $zero, lbl_8005EA20
    sb      t6, 0x00CF(v0)             # 000000CF
    lbu     t8, 0x00BE(s0)             # 000000BE
    lbu     t7, 0x00BD(s0)             # 000000BD
    lwc1    $f0, 0x00D8(s0)            # 000000D8
    multu   t8, a3
    or      a1, $zero, $zero           # a1 = 00000000
    mflo    t9
    addu    v1, t2, t9
    lh      a0, 0x0012(v1)             # 00000012
    multu   t7, a3
    andi    a0, a0, 0x03FF             # a0 = 00000000
    mflo    t6
    addu    v0, t2, t6
    lh      t8, 0x0012(v0)             # 00000012
    andi    t9, t8, 0x03FF             # t9 = 000003FF
    subu    t7, t9, a0
    mtc1    t7, $f18                   # $f18 = NaN
    nop
    cvt.s.w $f8, $f18
    mul.s   $f4, $f8, $f0
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    addu    t6, a0, t7
    sh      t6, 0x00D2(s0)             # 000000D2
    lh      t8, 0x0014(v0)             # 00000014
    lh      a2, 0x0014(v1)             # 00000014
    subu    t9, t8, a2
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f10, $f16
    mul.s   $f18, $f10, $f0
    trunc.w.s $f8, $f18
    mfc1    t9, $f8
    nop
    addu    t7, a2, t9
    sh      t7, 0x00D4(s0)             # 000000D4
lbl_8005EFC8:
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x00BC(s0)             # 000000BC
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    sll     t8, a1,  1
lbl_8005EFD8:
    addu    a2, s0, t8
    addu    v0, s0, a1
    lbu     t7, 0x00C0(v0)             # 000000C0
    lh      t9, 0x008C(a2)             # 0000008C
    addu    a0, t5, a1
    addu    v1, t9, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0100
    bne     $at, $zero, lbl_8005F00C
    nop
    b       lbl_8005F024
    sb      a3, 0x0004(a0)             # 00000004
lbl_8005F00C:
    bgez    v1, lbl_8005F020
    addu    a0, t5, a1
    addu    a0, t5, a1
    b       lbl_8005F024
    sb      $zero, 0x0004(a0)          # 00000004
lbl_8005F020:
    sb      v1, 0x0004(a0)             # 00000004
lbl_8005F024:
    lh      t6, 0x0092(a2)             # 00000092
    lbu     t8, 0x00C6(v0)             # 000000C6
    addiu   a1, a1, 0x0001             # a1 = 00000001
    andi    a1, a1, 0xFFFF             # a1 = 00000001
    addu    v1, t6, t8
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0100
    bne     $at, $zero, lbl_8005F054
    nop
    b       lbl_8005F068
    sb      a3, 0x002D(v0)             # 0000002D
lbl_8005F054:
    bgezl   v1, lbl_8005F068
    sb      v1, 0x002D(v0)             # 0000002D
    b       lbl_8005F068
    sb      $zero, 0x002D(v0)          # 0000002D
    sb      v1, 0x002D(v0)             # 0000002D
lbl_8005F068:
    lh      t9, 0x0092(a2)             # 00000092
    lbu     t7, 0x00CC(v0)             # 000000CC
    addu    v1, t9, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0100
    bne     $at, $zero, lbl_8005F090
    nop
    b       lbl_8005F0A4
    sb      a3, 0x003B(v0)             # 0000003B
lbl_8005F090:
    bgezl   v1, lbl_8005F0A4
    sb      v1, 0x003B(v0)             # 0000003B
    b       lbl_8005F0A4
    sb      $zero, 0x003B(v0)          # 0000003B
    sb      v1, 0x003B(v0)             # 0000003B
lbl_8005F0A4:
    lh      t6, 0x0098(a2)             # 00000098
    lbu     t8, 0x00CF(v0)             # 000000CF
    addu    v1, t6, t8
    sll     v1, v1, 16
    sra     v1, v1, 16
    slti    $at, v1, 0x0100
    bne     $at, $zero, lbl_8005F0CC
    nop
    b       lbl_8005F0E0
    sb      a3, 0x0007(a0)             # 00000007
lbl_8005F0CC:
    bgezl   v1, lbl_8005F0E0
    sb      v1, 0x0007(a0)             # 00000007
    b       lbl_8005F0E0
    sb      $zero, 0x0007(a0)          # 00000007
    sb      v1, 0x0007(a0)             # 00000007
lbl_8005F0E0:
    slti    $at, a1, 0x0003
    bnel    $at, $zero, lbl_8005EFD8
    sll     t8, a1,  1
    lb      t6, 0x00C5(s0)             # 000000C5
    lb      t8, 0x00C9(s0)             # 000000C9
    lb      t9, 0x00C3(s0)             # 000000C3
    lb      t7, 0x00C4(s0)             # 000000C4
    sb      t6, 0x002C(s0)             # 0000002C
    sb      t8, 0x0038(s0)             # 00000038
    lh      t8, 0x009E(s0)             # 0000009E
    lh      t6, 0x00D2(s0)             # 000000D2
    sb      t9, 0x002A(s0)             # 0000002A
    sb      t7, 0x002B(s0)             # 0000002B
    lb      t9, 0x00CA(s0)             # 000000CA
    lb      t7, 0x00CB(s0)             # 000000CB
    addu    v0, t6, t8
    slti    $at, v0, 0x03E5
    sb      t9, 0x0039(s0)             # 00000039
    beq     $at, $zero, lbl_8005F138
    sb      t7, 0x003A(s0)             # 0000003A
    b       lbl_8005F140
    sh      v0, 0x000A(t5)             # 0000000A
lbl_8005F138:
    addiu   t9, $zero, 0x03E4          # t9 = 000003E4
    sh      t9, 0x000A(t5)             # 0000000A
lbl_8005F140:
    lh      t7, 0x00D4(s0)             # 000000D4
    lh      t6, 0x00A0(s0)             # 000000A0
    addu    v0, t7, t6
    slti    $at, v0, 0x3201
    beql    $at, $zero, lbl_8005F164
    addiu   t8, $zero, 0x3200          # t8 = 00003200
    b       lbl_8005F168
    sh      v0, 0x000C(t5)             # 0000000C
    addiu   t8, $zero, 0x3200          # t8 = 00003200
lbl_8005F164:
    sh      t8, 0x000C(t5)             # 0000000C
lbl_8005F168:
    lb      t9, 0x002A(s0)             # 0000002A
    bnel    t9, $zero, lbl_8005F198
    lb      t9, 0x0038(s0)             # 00000038
    lb      t7, 0x002B(s0)             # 0000002B
    bnel    t7, $zero, lbl_8005F198
    lb      t9, 0x0038(s0)             # 00000038
    lb      t6, 0x002C(s0)             # 0000002C
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bnel    t6, $zero, lbl_8005F198
    lb      t9, 0x0038(s0)             # 00000038
    sb      t8, 0x002A(s0)             # 0000002A
    lb      t9, 0x0038(s0)             # 00000038
lbl_8005F198:
    bnel    t9, $zero, lbl_8005F1C4
    lw      $ra, 0x001C($sp)
    lb      t7, 0x0039(s0)             # 00000039
    bnel    t7, $zero, lbl_8005F1C4
    lw      $ra, 0x001C($sp)
    lb      t6, 0x003A(s0)             # 0000003A
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bnel    t6, $zero, lbl_8005F1C4
    lw      $ra, 0x001C($sp)
    sb      t8, 0x0038(s0)             # 00000038
    lw      $ra, 0x001C($sp)
lbl_8005F1C4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_8005F1D4:
# gameplay_keep d. list: Sun I & Sun II [?], Moon
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    lw      s0, 0x0000(s1)             # 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    beq     t6, $zero, lbl_8005F328
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x79CC($at)           # 801079CC
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A28           # $at = 00010A28
    addu    a0, s1, $at
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f6, $f0, $f4
    mfc1    a3, $f2
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f2, 0x0010($sp)
    neg.s   $f8, $f6
    mul.s   $f4, $f8, $f10
    mfc1    a1, $f4
    jal     func_80064178
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f2, 0x79D0($at)           # 801079D0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A2C           # $at = 00010A2C
    addu    a0, s1, $at
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f8, $f0, $f6
    mfc1    a3, $f2
    sw      a0, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f2, 0x0010($sp)
    mul.s   $f4, $f8, $f10
    mfc1    a1, $f4
    jal     func_80064178
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    mul.s   $f8, $f0, $f6
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x79D4($at)           # 801079D4
    lui     a3, 0x3F4C                 # a3 = 3F4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3F4CCCCD
    lw      a0, 0x002C($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    mul.s   $f4, $f8, $f10
    swc1    $f6, 0x0010($sp)
    mfc1    a1, $f4
    jal     func_80064178
    nop
    b       lbl_8005F3E8
    nop
lbl_8005F328:
    lhu     v0, -0x5A24(v0)            # FFFFA5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mul.s   $f10, $f0, $f8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    lui     v0, 0x8012                 # v0 = 80120000
    neg.s   $f4, $f10
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0A28($at)           # 00010A28
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f10                  # $f10 = 120.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mul.s   $f4, $f0, $f10
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    lui     v0, 0x8012                 # v0 = 80120000
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0A2C($at)           # 00010A2C
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    mul.s   $f4, $f0, $f10
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    mul.s   $f8, $f4, $f6
    swc1    $f8, 0x0A30($at)           # 00010A30
lbl_8005F3E8:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t7, 0x0000(v0)             # 8011A5D0
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
    bnel    t7, $at, lbl_8005F414
    lwc1    $f18, 0x00E8(s1)           # 000000E8
    lw      t8, 0x1360(v0)             # 8011B930
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t8, $at, lbl_8005FA08
    lw      $ra, 0x0024($sp)
    lwc1    $f18, 0x00E8(s1)           # 000000E8
lbl_8005F414:
    lwc1    $f16, 0x00E0(s1)           # 000000E0
    lwc1    $f10, 0x00E4(s1)           # 000000E4
    lui     $at, 0x0001                # $at = 00010000
    addu    t0, s1, $at
    lwc1    $f8, 0x0A30(t0)            # 00000A30
    lwc1    $f6, 0x0A28(t0)            # 00000A28
    lwc1    $f4, 0x0A2C(t0)            # 00000A2C
    add.s   $f8, $f18, $f8
    or      a3, $zero, $zero           # a3 = 00000000
    sw      t0, 0x002C($sp)
    add.s   $f12, $f16, $f6
    mfc1    a2, $f8
    jal     func_800AA7F4
    add.s   $f14, $f10, $f4
    lw      t0, 0x002C($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f16                  # $f16 = 255.00
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f10                  # $f10 = 25.00
    lwc1    $f8, 0x0A2C(t0)            # 00000A2C
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $zero, $f18                # $f18 = 0.00
    div.s   $f4, $f8, $f10
    mtc1    $at, $f8                   # $f8 = 80.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     t1, 0xFF00                 # t1 = FF000000
    swc1    $f4, 0x006C($sp)
    lwc1    $f6, 0x006C($sp)
    div.s   $f12, $f6, $f8
    mul.s   $f2, $f12, $f16
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_8005F4A8
    c.lt.s  $f16, $f2
    mov.s   $f2, $f18
    c.lt.s  $f16, $f2
lbl_8005F4A8:
    nop
    bc1fl   lbl_8005F4BC
    c.lt.s  $f12, $f18
    mov.s   $f2, $f16
    c.lt.s  $f12, $f18
lbl_8005F4BC:
    mov.s   $f0, $f12
    sub.s   $f2, $f16, $f2
    bc1fl   lbl_8005F4D4
    c.lt.s  $f10, $f0
    mov.s   $f0, $f18
    c.lt.s  $f10, $f0
lbl_8005F4D4:
    nop
    bc1f    lbl_8005F4E8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_8005F4E8:
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f4                   # $f4 = 75.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lw      v1, 0x02C0(s0)             # 000002C0
    mul.s   $f6, $f0, $f4
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    cfc1    t3, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_8005F574
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    t4, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_8005F56C
    nop
    mfc1    t4, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005F584
    or      t4, t4, $at                # t4 = 80000000
lbl_8005F56C:
    b       lbl_8005F584
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_8005F574:
    mfc1    t4, $f8
    nop
    bltz    t4, lbl_8005F56C
    nop
lbl_8005F584:
    lui     $at, 0x431B                # $at = 431B0000
    ctc1    t3, $f31
    mtc1    $at, $f10                  # $f10 = 155.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t6, t4, 0x00B4             # t6 = 000000B3
    mul.s   $f4, $f0, $f10
    andi    t7, t6, 0x00FF             # t7 = 000000B3
    sll     t8, t7, 16
    or      t9, t8, t1                 # t9 = FF000000
    cfc1    t2, $f31
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_8005F610
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t3, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8005F608
    nop
    mfc1    t3, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005F620
    or      t3, t3, $at                # t3 = 80000000
lbl_8005F608:
    b       lbl_8005F620
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_8005F610:
    mfc1    t3, $f6
    nop
    bltz    t3, lbl_8005F608
    nop
lbl_8005F620:
    addiu   t5, t3, 0x0064             # t5 = 00000063
    andi    t6, t5, 0x00FF             # t6 = 00000063
    sll     t7, t6,  8
    or      t8, t9, t7                 # t8 = FF0000B3
    ctc1    t2, $f31
    ori     t2, t8, 0x00FF             # t2 = FF0000FF
    sw      t2, 0x0004(v1)             # 00000004
    mul.s   $f8, $f0, $f16
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      a0, 0x02C0(s0)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   t3, a0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    cfc1    t5, $f31
    ctc1    a1, $f31
    sw      t4, 0x0000(a0)             # 00000000
    cvt.w.s $f10, $f8
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beq     a1, $zero, lbl_8005F6BC
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    a1, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_8005F6B4
    nop
    mfc1    a1, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005F6CC
    or      a1, a1, $at                # a1 = 80000000
lbl_8005F6B4:
    b       lbl_8005F6CC
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
lbl_8005F6BC:
    mfc1    a1, $f10
    nop
    bltz    a1, lbl_8005F6B4
    nop
lbl_8005F6CC:
    ctc1    t5, $f31
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    sll     t6, a1, 16
    cfc1    t2, $f31
    ctc1    t3, $f31
    or      t9, t6, t1                 # t9 = FF000063
    sll     t7, a1,  8
    cvt.w.s $f4, $f2
    or      t8, t9, t7                 # t8 = FF0000F3
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beq     t3, $zero, lbl_8005F74C
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f4, $f2, $f4
    ctc1    t3, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8005F744
    nop
    mfc1    t3, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005F75C
    or      t3, t3, $at                # t3 = 80000000
lbl_8005F744:
    b       lbl_8005F75C
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
lbl_8005F74C:
    mfc1    t3, $f4
    nop
    bltz    t3, lbl_8005F744
    nop
lbl_8005F75C:
    andi    t4, t3, 0x00FF             # t4 = 000000FF
    ctc1    t2, $f31
    or      t5, t8, t4                 # t5 = FF0000FF
    sw      t5, 0x0004(a0)             # 00000004
    add.s   $f6, $f0, $f0
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sw      t0, 0x002C($sp)
    add.s   $f12, $f6, $f8
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v0, 0x0050($sp)
    lw      v1, 0x0050($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E18C
    lw      a0, 0x0000(s1)             # 00000000
    lw      t0, 0x002C($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t3, 0x0405                 # t3 = 04050000
    addiu   t3, t3, 0x26F0             # t3 = 040526F0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lwc1    $f10, 0x00E0(s1)           # 000000E0
    lwc1    $f4, 0x0A28(t0)            # 00000A28
    lwc1    $f6, 0x00E4(s1)            # 000000E4
    lwc1    $f8, 0x0A2C(t0)            # 00000A2C
    sub.s   $f12, $f10, $f4
    lwc1    $f4, 0x0A30(t0)            # 00000A30
    lwc1    $f10, 0x00E8(s1)           # 000000E8
    sub.s   $f14, $f6, $f8
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f6, $f10, $f4
    mfc1    a2, $f6
    jal     func_800AA7F4
    nop
    lwc1    $f16, 0x006C($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    neg.s   $f16, $f16
    mtc1    $zero, $f18                # $f18 = 0.00
    div.s   $f0, $f16, $f8
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f10                  # $f10 = -15.00
    c.lt.s  $f0, $f18
    nop
    bc1f    lbl_8005F850
    nop
    mov.s   $f0, $f18
lbl_8005F850:
    mul.s   $f4, $f10, $f0
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f6                   # $f6 = 25.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    swc1    $f16, 0x002C($sp)
    add.s   $f12, $f4, $f6
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x42A0                # $at = 42A00000
    lwc1    $f16, 0x002C($sp)
    mtc1    $at, $f8                   # $f8 = 80.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    div.s   $f2, $f16, $f8
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f10, $f2
    nop
    bc1fl   lbl_8005F8B0
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    nop
    lui     $at, 0x437F                # $at = 437F0000
lbl_8005F8B0:
    mtc1    $at, $f4                   # $f4 = 255.00
    nop
    mul.s   $f0, $f2, $f4
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_8005FA08
    lw      $ra, 0x0024($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    swc1    $f0, 0x002C($sp)
    jal     func_800AB900
    sw      v0, 0x0048($sp)
    lw      v1, 0x0048($sp)
    sw      v0, 0x0004(v1)             # 00000004
    jal     func_8007E114
    lw      a0, 0x0000(s1)             # 00000000
    lwc1    $f0, 0x002C($sp)
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    cfc1    t2, $f31
    ctc1    a2, $f31
    lw      a0, 0x02C0(s0)             # 000002C0
    lui     t7, 0xFA00                 # t7 = FA000000
    cvt.w.s $f6, $f0
    addiu   t9, a0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    a2, $f31
    lui     t4, 0xFB00                 # t4 = FB000000
    lui     t9, 0xDE00                 # t9 = DE000000
    andi    a2, a2, 0x0078             # a2 = 00000000
    beq     a2, $zero, lbl_8005F9A0
    sw      t7, 0x0000(a0)             # 00000000
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f6, $f0, $f6
    ctc1    a2, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_8005F998
    nop
    mfc1    a2, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005F9B0
    or      a2, a2, $at                # a2 = 80000000
lbl_8005F998:
    b       lbl_8005F9B0
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
lbl_8005F9A0:
    mfc1    a2, $f6
    nop
    bltz    a2, lbl_8005F998
    nop
lbl_8005F9B0:
    lui     $at, 0xF0FF                # $at = F0FF0000
    ori     $at, $at, 0xB400           # $at = F0FFB400
    andi    a2, a2, 0x00FF             # a2 = 000000FF
    ctc1    t2, $f31
    or      t3, a2, $at                # t3 = F0FFB4FF
    sw      t3, 0x0004(a0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     $at, 0x5046                # $at = 50460000
    ori     $at, $at, 0x1400           # $at = 50461400
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    or      t5, a2, $at                # t5 = 504614FF
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0404                 # t7 = 04040000
    addiu   t7, t7, 0x93A0             # t7 = 040393A0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      $ra, 0x0024($sp)
lbl_8005FA08:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8005FA18:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0044($sp)
    sw      a2, 0x0048($sp)
    sw      a3, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lbu     t6, 0x0B13(v0)             # 00000B13
    bnel    t6, $zero, lbl_8005FADC
    lw      $ra, 0x003C($sp)
    lbu     t7, 0x0A3B(v0)             # 00000A3B
    lui     v0, 0x8012                 # v0 = 80120000
    bnel    t7, $zero, lbl_8005FADC
    lw      $ra, 0x003C($sp)
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, v0, $at
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    addiu   t8, $sp, 0x0050            # t8 = 00000010
    lw      t0, 0x0000(t8)             # 00000010
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x0A24           # $at = 00010A24
    addu    a1, s0, $at
    lw      a3, 0x0000(s0)             # 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    sw      t0, 0x0010($sp)
    lw      t9, 0x0004(t8)             # 00000014
    mtc1    $at, $f4                   # $f4 = 120.00
    addiu   t1, $zero, 0x07D0          # t1 = 000007D0
    sw      t9, 0x0014($sp)
    mul.s   $f6, $f0, $f4
    lw      t0, 0x0008(t8)             # 00000018
    addiu   t2, $zero, 0x0172          # t2 = 00000172
    addiu   t3, $zero, 0x0190          # t3 = 00000190
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x002C($sp)
    sw      t3, 0x0028($sp)
    sw      t2, 0x0020($sp)
    swc1    $f6, 0x0024($sp)
    sw      t1, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a2, s0, 0x00B8             # a2 = 000000B8
    jal     func_8005FAEC
    sw      t0, 0x0018($sp)
    lw      $ra, 0x003C($sp)
lbl_8005FADC:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8005FAEC:
# gameplay_keep d. list: Effect_Ss_Dead_Dd & Ss_Dead_Ds, 37C38
    addiu   $sp, $sp, 0xFE40           # $sp -= 0x1C0
    sw      s7, 0x0068($sp)
    sw      s3, 0x0058($sp)
    sw      s2, 0x0054($sp)
    sw      s0, 0x004C($sp)
    or      s0, a2, $zero              # s0 = 00000000
    or      s2, a3, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x01D0            # s3 = 00000010
    or      s7, a0, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s6, 0x0064($sp)
    sw      s5, 0x0060($sp)
    sw      s4, 0x005C($sp)
    sw      s1, 0x0050($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x01C4($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x1910             # t7 = 800F1910
    lw      t9, 0x0000(t7)             # 800F1910
    addiu   t6, $sp, 0x0128            # t6 = FFFFFF68
    lw      t8, 0x0004(t7)             # 800F1914
    sw      t9, 0x0000(t6)             # FFFFFF68
    lw      t9, 0x0008(t7)             # 800F1918
    sw      t8, 0x0004(t6)             # FFFFFF6C
    lw      t8, 0x000C(t7)             # 800F191C
    sw      t9, 0x0008(t6)             # FFFFFF70
    lw      t9, 0x0010(t7)             # 800F1920
    sw      t8, 0x000C(t6)             # FFFFFF74
    lw      t8, 0x0014(t7)             # 800F1924
    sw      t9, 0x0010(t6)             # FFFFFF78
    lw      t9, 0x0018(t7)             # 800F1928
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0x1930             # t1 = 800F1930
    sw      t9, 0x0018(t6)             # FFFFFF80
    lhu     t9, 0x001C(t7)             # 800F192C
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   t4, t1, 0x0024             # t4 = 800F1954
    addiu   t0, $sp, 0x0100            # t0 = FFFFFF40
    sw      t8, 0x0014(t6)             # FFFFFF7C
    sh      t9, 0x001C(t6)             # FFFFFF84
lbl_8005FBA0:
    lw      t3, 0x0000(t1)             # 800F1930
    addiu   t1, t1, 0x000C             # t1 = 800F193C
    addiu   t0, t0, 0x000C             # t0 = FFFFFF4C
    sw      t3, -0x000C(t0)            # FFFFFF40
    lw      t2, -0x0008(t1)            # 800F1934
    sw      t2, -0x0008(t0)            # FFFFFF44
    lw      t3, -0x0004(t1)            # 800F1938
    bne     t1, t4, lbl_8005FBA0
    sw      t3, -0x0004(t0)            # FFFFFF48
    lw      t3, 0x0000(t1)             # 800F193C
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x1958             # t6 = 800F1958
    addiu   t9, t6, 0x0024             # t9 = 800F197C
    addiu   t5, $sp, 0x00D8            # t5 = FFFFFF18
    sw      t3, 0x0000(t0)             # FFFFFF4C
lbl_8005FBDC:
    lw      t8, 0x0000(t6)             # 800F1958
    addiu   t6, t6, 0x000C             # t6 = 800F1964
    addiu   t5, t5, 0x000C             # t5 = FFFFFF24
    sw      t8, -0x000C(t5)            # FFFFFF18
    lw      t7, -0x0008(t6)            # 800F195C
    sw      t7, -0x0008(t5)            # FFFFFF1C
    lw      t8, -0x0004(t6)            # 800F1960
    bne     t6, t9, lbl_8005FBDC
    sw      t8, -0x0004(t5)            # FFFFFF20
    lw      t8, 0x0000(t6)             # 800F1964
    or      a0, s3, $zero              # a0 = 00000010
    sw      t8, 0x0000(t5)             # FFFFFF24
    jal     func_800A5560
    addiu   a1, s0, 0x0028             # a1 = 00000028
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f6, 0x0034(s0)            # 00000034
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f8, 0x0038(s0)            # 00000038
    sub.s   $f2, $f6, $f16
    lwc1    $f10, 0x0030(s0)           # 00000030
    lui     $at, 0x4140                # $at = 41400000
    sub.s   $f12, $f8, $f18
    mul.s   $f8, $f2, $f2
    mtc1    $at, $f4                   # $f4 = 12.00
    swc1    $f10, 0x0098($sp)
    mul.s   $f10, $f12, $f12
    lwc1    $f6, 0x0098($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    div.s   $f22, $f0, $f4
    lwc1    $f4, 0x003C(s0)            # 0000003C
    sub.s   $f14, $f4, $f6
    add.s   $f4, $f8, $f10
    mul.s   $f8, $f14, $f14
    add.s   $f0, $f4, $f8
    mtc1    $at, $f4                   # $f4 = 6.00
    lui     $at, 0x3F80                # $at = 3F800000
    sqrt.s  $f0, $f0
    mul.s   $f30, $f22, $f4
    div.s   $f26, $f2, $f0
    div.s   $f10, $f14, $f0
    mul.s   $f8, $f26, $f30
    div.s   $f24, $f12, $f0
    swc1    $f10, 0x01A4($sp)
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x0180($sp)
    mul.s   $f4, $f24, $f30
    mov.s   $f28, $f24
    lwc1    $f24, 0x01A4($sp)
    mul.s   $f10, $f24, $f30
    add.s   $f8, $f18, $f4
    swc1    $f8, 0x017C($sp)
    add.s   $f4, $f6, $f10
    lwc1    $f6, 0x0180($sp)
    lwc1    $f8, 0x01D0($sp)
    lwc1    $f10, 0x01D4($sp)
    swc1    $f4, 0x0178($sp)
    sub.s   $f2, $f8, $f6
    lwc1    $f8, 0x017C($sp)
    lwc1    $f6, 0x01D8($sp)
    sub.s   $f12, $f10, $f8
    mul.s   $f10, $f2, $f2
    sub.s   $f14, $f6, $f4
    mul.s   $f8, $f12, $f12
    add.s   $f6, $f10, $f8
    mul.s   $f4, $f14, $f14
    add.s   $f0, $f6, $f4
    mul.s   $f10, $f26, $f26
    nop
    mul.s   $f8, $f28, $f28
    sqrt.s  $f0, $f0
    mul.s   $f4, $f24, $f24
    div.s   $f16, $f2, $f0
    add.s   $f6, $f10, $f8
    add.s   $f10, $f6, $f4
    div.s   $f18, $f12, $f0
    swc1    $f16, 0x0194($sp)
    mul.s   $f8, $f16, $f16
    div.s   $f20, $f14, $f0
    swc1    $f18, 0x0190($sp)
    mul.s   $f6, $f18, $f18
    add.s   $f4, $f8, $f6
    mul.s   $f8, $f20, $f20
    swc1    $f20, 0x018C($sp)
    add.s   $f6, $f4, $f8
    lwc1    $f4, 0x0194($sp)
    mul.s   $f0, $f10, $f6
    lwc1    $f10, 0x0190($sp)
    mul.s   $f8, $f26, $f4
    mtc1    $zero, $f26                # $f26 = 0.00
    mul.s   $f6, $f28, $f10
    lwc1    $f10, 0x018C($sp)
    sqrt.s  $f0, $f0
    add.s   $f4, $f8, $f6
    mul.s   $f8, $f24, $f10
    mtc1    $at, $f24                  # $f24 = 1.00
    lui     $at, 0x4060                # $at = 40600000
    add.s   $f6, $f4, $f8
    mtc1    $at, $f8                   # $f8 = 3.50
    div.s   $f10, $f6, $f0
    swc1    $f10, 0x0090($sp)
    lwc1    $f2, 0x0090($sp)
    lwc1    $f4, 0x0090($sp)
    mul.s   $f0, $f2, $f8
    swc1    $f4, 0x0174($sp)
    c.lt.s  $f24, $f0
    swc1    $f0, 0x016C($sp)
    bc1f    lbl_8005FD90
    nop
    swc1    $f24, 0x016C($sp)
lbl_8005FD90:
    lbu     s6, 0x01EF($sp)
    bnel    s6, $zero, lbl_8005FDA4
    c.lt.s  $f2, $f26
    swc1    $f2, 0x016C($sp)
    c.lt.s  $f2, $f26
lbl_8005FDA4:
    nop
    bc1tl   lbl_800606F0
    lw      $ra, 0x006C($sp)
    beq     s6, $zero, lbl_8005FE80
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000010
    jal     func_8009D02C
    addiu   a2, $sp, 0x0154            # a2 = FFFFFF94
    lwc1    $f2, 0x0158($sp)
    lwc1    $f0, 0x0154($sp)
    lui     $at, 0x8012                # $at = 80120000
    trunc.w.s $f10, $f2
    lui     t7, 0x800F                 # t7 = 800F0000
    lhu     t7, 0x1654(t7)             # 800F1654
    trunc.w.s $f6, $f0
    mfc1    t2, $f10
    nop
    sll     t3, t2, 16
    sra     t9, t3, 16
    mtc1    t9, $f4                    # $f4 = 0.00
    mfc1    t1, $f6
    cvt.s.w $f8, $f4
    sh      t1, -0x432A($at)           # 8011BCD6
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lui     $at, 0x8012                # $at = 80120000
    sub.s   $f10, $f8, $f6
    trunc.w.s $f4, $f10
    mfc1    t5, $f4
    nop
    sh      t5, -0x4328($at)           # 8011BCD8
    ori     $at, $zero, 0xFFFC         # $at = 0000FFFC
    bnel    t7, $at, lbl_8005FE80
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    c.lt.s  $f0, $f26
    nop
    bc1tl   lbl_8005FE80
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    c.lt.s  $f2, $f26
    lui     $at, 0x43A0                # $at = 43A00000
    bc1tl   lbl_8005FE80
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    mtc1    $at, $f8                   # $f8 = 320.00
    lui     $at, 0x4370                # $at = 43700000
    c.lt.s  $f8, $f0
    nop
    bc1tl   lbl_8005FE80
    addiu   s1, $zero, 0x0001          # s1 = 00000001
    mtc1    $at, $f6                   # $f6 = 240.00
    nop
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_8005FE84
    lwc1    $f20, 0x0194($sp)
    addiu   s1, $zero, 0x0001          # s1 = 00000001
lbl_8005FE80:
    lwc1    $f20, 0x0194($sp)
lbl_8005FE84:
    lwc1    $f18, 0x0190($sp)
    lh      t8, 0x01E2($sp)
    lwc1    $f16, 0x018C($sp)
    lw      t4, 0x01C4($sp)
    mtc1    t8, $f14                   # $f14 = 0.00
    lwc1    $f12, 0x01E4($sp)
    neg.s   $f20, $f20
    cvt.s.w $f28, $f14
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f14                  # $f14 = 10.00
    lui     t0, 0x0100                 # t0 = 01000000
    addiu   t1, t4, 0x0088             # t1 = 00000088
    div.s   $f30, $f12, $f14
    addiu   t0, t0, 0x0000             # t0 = 01000000
    swc1    $f20, 0x0098($sp)
    or      s3, $zero, $zero           # s3 = 00000000
    neg.s   $f18, $f18
    neg.s   $f16, $f16
    swc1    $f18, 0x0094($sp)
    swc1    $f16, 0x0090($sp)
    sw      s1, 0x0080($sp)
    sw      t1, 0x007C($sp)
    sw      t0, 0x0078($sp)
    lui     s5, 0xDE00                 # s5 = DE000000
    lwc1    $f12, 0x01D0($sp)
lbl_8005FEE8:
    lwc1    $f14, 0x01D4($sp)
    lw      a2, 0x01D8($sp)
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    beq     s6, $zero, lbl_8005FF94
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    cfc1    t2, $f31
    ctc1    a2, $f31
    lwc1    $f4, 0x00D0(s7)            # 000000D0
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    addiu   a1, $zero, 0x000F          # a1 = 0000000F
    cvt.w.s $f8, $f4
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_8005FF78
    mfc1    a2, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f8, $f4, $f8
    ctc1    a2, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_8005FF6C
    nop
    mfc1    a2, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8005FF84
    or      a2, a2, $at                # a2 = 80000000
lbl_8005FF6C:
    b       lbl_8005FF84
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f8
lbl_8005FF78:
    nop
    bltz    a2, lbl_8005FF6C
    nop
lbl_8005FF84:
    ctc1    t2, $f31
    jal     func_8005C690
    andi    a2, a2, 0xFFFF             # a2 = 0000FFFF
    swc1    $f0, 0x014C($sp)
lbl_8005FF94:
    mtc1    s3, $f6                    # $f6 = 0.00
    lwc1    $f10, 0x0098($sp)
    lwc1    $f8, 0x0094($sp)
    cvt.s.w $f0, $f6
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f4, $f10, $f0
    lwc1    $f10, 0x0090($sp)
    mul.s   $f12, $f4, $f22
    nop
    mul.s   $f6, $f8, $f0
    nop
    mul.s   $f14, $f6, $f22
    nop
    mul.s   $f4, $f10, $f0
    nop
    mul.s   $f8, $f4, $f22
    mfc1    a2, $f8
    jal     func_800AA7F4
    nop
    sll     s4, s3,  2
    lui     $at, 0x800F                # $at = 800F0000
    addu    $at, $at, s4
    lwc1    $f6, 0x18E8($at)           # 800F18E8
    lwc1    $f10, 0x0174($sp)
    lwc1    $f8, 0x014C($sp)
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f12, $f6, $f10
    beq     s6, $zero, lbl_8006003C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x79D8($at)           # 801079D8
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f6, $f4, $f8
    ldc1    $f8, 0x79E0($at)           # 801079E0
    add.s   $f10, $f28, $f6
    cvt.d.s $f4, $f10
    cvt.d.s $f10, $f12
    mul.d   $f6, $f8, $f4
    nop
    mul.d   $f8, $f10, $f6
    b       lbl_8006005C
    cvt.s.d $f12, $f8
lbl_8006003C:
    lwc1    $f4, 0x79E8($at)           # 801079E8
    add.s   $f6, $f22, $f22
    mul.s   $f10, $f4, $f28
    nop
    mul.s   $f8, $f10, $f6
    nop
    mul.s   $f12, $f12, $f8
    nop
lbl_8006005C:
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    c.lt.s  $f24, $f30
    mov.s   $f20, $f30
    addu    t3, $sp, s4
    lui     $at, 0x4F80                # $at = 4F800000
    bc1f    lbl_80060084
    lw      a0, 0x007C($sp)
    mov.s   $f20, $f24
lbl_80060084:
    lw      t3, 0x0100(t3)             # 00000100
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     a2, 0x3F00                 # a2 = 3F000000
    bgez    t3, lbl_800600AC
    cvt.s.w $f10, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_800600AC:
    mul.s   $f20, $f10, $f20
    lw      a1, 0x016C($sp)
    c.lt.s  $f20, $f26
    nop
    bc1fl   lbl_800600CC
    lh      t9, 0x07B2(s7)             # 000007B2
    mov.s   $f20, $f26
    lh      t9, 0x07B2(s7)             # 000007B2
lbl_800600CC:
    addiu   t6, $zero, 0x03E4          # t6 = 000003E4
    lui     $at, 0x4248                # $at = 42480000
    subu    t5, t6, t9
    mtc1    t5, $f8                    # $f8 = 0.00
    mtc1    $at, $f6                   # $f6 = 50.00
    lui     $at, 0x8010                # $at = 80100000
    cvt.s.w $f4, $f8
    div.s   $f0, $f4, $f6
    c.lt.s  $f24, $f0
    nop
    bc1fl   lbl_80060104
    sub.s   $f10, $f24, $f0
    mov.s   $f0, $f24
    sub.s   $f10, $f24, $f0
lbl_80060104:
    lw      t7, 0x0080($sp)
    mul.s   $f20, $f20, $f10
    bne     t7, $zero, lbl_8006013C
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x79EC($at)           # 801079EC
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lw      a0, 0x007C($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    b       lbl_80060150
    lw      s0, 0x02D0(s2)             # 000002D0
lbl_8006013C:
    lwc1    $f4, 0x79F0($at)           # 000079F0
    mfc1    a1, $f26
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lw      s0, 0x02D0(s2)             # 000002D0
lbl_80060150:
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    jal     func_8007E7B8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sll     t0, s3,  2
    subu    t0, t0, s3
    sw      t4, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    addiu   t2, $sp, 0x0128            # t2 = FFFFFF68
    addu    v1, t0, t2
    sw      t1, 0x0000(v0)             # 00000000
    lbu     t6, 0x0002(v1)             # 00000002
    lbu     t7, 0x0000(v1)             # 00000000
    lbu     t0, 0x0001(v1)             # 00000001
    sll     t9, t6,  8
    lw      t6, 0x01C4($sp)
    sll     t8, t7, 24
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lwc1    $f6, 0x0088(t6)            # 00000088
    or      t4, t9, t8                 # t4 = 00000000
    sll     t2, t0, 16
    mul.s   $f10, $f20, $f6
    or      t3, t4, t2                 # t3 = FFFFFF68
    lui     $at, 0x4F00                # $at = 4F000000
    lui     t0, 0xDA38                 # t0 = DA380000
    cfc1    t5, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f8, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80060224
    mfc1    t7, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f8, $f10, $f8
    ctc1    t7, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80060218
    nop
    mfc1    t7, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80060230
    or      t7, t7, $at                # t7 = 80000000
lbl_80060218:
    b       lbl_80060230
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f8
lbl_80060224:
    nop
    bltz    t7, lbl_80060218
    nop
lbl_80060230:
    andi    t9, t7, 0x00FF             # t9 = 000000FF
    ctc1    t5, $f31
    or      t8, t3, t9                 # t8 = FFFFFFFF
    sw      t8, 0x0004(v0)             # 00000004
    lw      s1, 0x02D0(s2)             # 000002D0
    ori     t0, t0, 0x0003             # t0 = DA380003
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t1, s1, 0x0008             # t1 = 00000009
    sw      t1, 0x02D0(s2)             # 000002D0
    jal     func_800AB900
    sw      t0, 0x0000(s1)             # 00000001
    sw      v0, 0x0004(s1)             # 00000005
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xFCFF                 # t2 = FCFF0000
    lui     t6, 0xFF2D                 # t6 = FF2D0000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    ori     t6, t6, 0xFEFF             # t6 = FF2DFEFF
    ori     t2, t2, 0x97FF             # t2 = FCFF97FF
    sw      t2, 0x0000(s0)             # 00000000
    sw      t6, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xE300                 # t7 = E3000000
    ori     t7, t7, 0x1A01             # t7 = E3001A01
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    addiu   t3, $zero, 0x0030          # t3 = 00000030
    sw      t3, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    addiu   t1, $zero, 0x00C0          # t1 = 000000C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0001             # t4 = DA380001
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t2, 0x0078($sp)
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addu    v0, $sp, s4
    sw      t2, 0x0004(s0)             # 00000004
    lw      v0, 0x00D8(v0)             # 000000D8
    sll     s3, s3, 16
    sra     s3, s3, 16
    beq     v0, $zero, lbl_80060318
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80060318
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_80060340
    lw      s0, 0x02D0(s2)             # 000002D0
    b       lbl_8006035C
    slti    $at, s3, 0x000A
lbl_80060318:
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t5, 0x0403                 # t5 = 04030000
    addiu   t5, t5, 0x7BD0             # t5 = 04037BD0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      s5, 0x0000(s0)             # 00000000
    b       lbl_8006035C
    slti    $at, s3, 0x000A
    lw      s0, 0x02D0(s2)             # 000002D0
lbl_80060340:
    lui     t3, 0x0403                 # t3 = 04030000
    addiu   t3, t3, 0x7C38             # t3 = 04037C38
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s5, 0x0000(s0)             # 00000000
    slti    $at, s3, 0x000A
lbl_8006035C:
    bnel    $at, $zero, lbl_8005FEE8
    lwc1    $f12, 0x01D0($sp)
    lh      s0, 0x01EA($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    lwc1    $f6, 0x0174($sp)
    beql    s0, $zero, lbl_800606F0
    lw      $ra, 0x006C($sp)
    mtc1    $at, $f4                   # $f4 = 1.50
    lw      t4, 0x01C4($sp)
    sub.s   $f10, $f4, $f6
    sub.s   $f22, $f6, $f10
    c.lt.s  $f26, $f22
    nop
    bc1fl   lbl_800606EC
    swc1    $f26, 0x0084(t4)           # DA380085
    jal     func_8007E008
    lw      a0, 0x02D0(s2)             # 000002D0
    c.lt.s  $f24, $f30
    mtc1    s0, $f8                    # $f8 = 0.00
    sw      v0, 0x02D0(s2)             # 000002D0
    mov.s   $f20, $f30
    bc1f    lbl_800603BC
    cvt.s.w $f4, $f8
    mov.s   $f20, $f24
lbl_800603BC:
    mul.s   $f20, $f4, $f20
    lui     t4, 0xE300                 # t4 = E3000000
    lui     t5, 0xE300                 # t5 = E3000000
    c.lt.s  $f20, $f26
    nop
    bc1fl   lbl_800603E0
    lh      t9, 0x07B2(s7)             # 000007B2
    mov.s   $f20, $f26
    lh      t9, 0x07B2(s7)             # 000007B2
lbl_800603E0:
    addiu   t8, $zero, 0x03E4          # t8 = 000003E4
    lui     $at, 0x4248                # $at = 42480000
    subu    t1, t8, t9
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 50.00
    cvt.s.w $f10, $f6
    div.s   $f0, $f10, $f8
    c.lt.s  $f24, $f0
    nop
    bc1fl   lbl_80060414
    sub.s   $f4, $f24, $f0
    mov.s   $f0, $f24
    sub.s   $f4, $f24, $f0
lbl_80060414:
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4248                 # a3 = 42480000
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f20, $f20, $f4
    nop
    lw      s0, 0x02D0(s2)             # 000002D0
    ori     t4, t4, 0x1A01             # t4 = E3001A01
    addiu   t2, $zero, 0x0030          # t2 = 00000030
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    ori     t5, t5, 0x1801             # t5 = E3001801
    addiu   t7, $zero, 0x00C0          # t7 = 000000C0
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t7, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      t3, 0x0080($sp)
    lw      a0, 0x01C4($sp)
    bne     t3, $zero, lbl_800604A0
    addiu   a0, a0, 0x0084             # a0 = 00000084
    mul.s   $f6, $f20, $f22
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x79F4($at)          # 801079F4
    lw      a0, 0x01C4($sp)
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x4248                 # a3 = 42480000
    swc1    $f10, 0x0010($sp)
    mfc1    a1, $f6
    jal     func_80064178
    addiu   a0, a0, 0x0084             # a0 = 00000108
    b       lbl_800604B4
    lui     $at, 0x42F0                # $at = 42F00000
lbl_800604A0:
    lwc1    $f8, 0x79F8($at)           # 42F079F8
    mfc1    a1, $f26
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    lui     $at, 0x42F0                # $at = 42F00000
lbl_800604B4:
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x01E4($sp)
    lui     t9, 0xFA00                 # t9 = FA000000
    div.s   $f0, $f4, $f6
    c.lt.s  $f0, $f26
    swc1    $f0, 0x014C($sp)
    bc1fl   lbl_800604DC
    lw      v0, 0x02D0(s2)             # 000002D0
    swc1    $f26, 0x014C($sp)
    lw      v0, 0x02D0(s2)             # 000002D0
lbl_800604DC:
    lui     $at, 0x4296                # $at = 42960000
    mtc1    $at, $f8                   # $f8 = 75.00
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t9, 0x0000(v0)             # 00000000
    lwc1    $f10, 0x014C($sp)
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f10, $f8
    cfc1    t1, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_8006056C
    mfc1    t0, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t0, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80060560
    nop
    mfc1    t0, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80060578
    or      t0, t0, $at                # t0 = 80000000
lbl_80060560:
    b       lbl_80060578
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f6
lbl_8006056C:
    nop
    bltz    t0, lbl_80060560
    nop
lbl_80060578:
    addiu   t2, t0, 0x00B4             # t2 = 000000B3
    andi    t6, t2, 0x00FF             # t6 = 000000B3
    sll     t5, t6, 16
    lui     $at, 0xFF00                # $at = FF000000
    or      t7, t5, $at                # t7 = FF000000
    lui     $at, 0x431B                # $at = 431B0000
    ctc1    t1, $f31
    mtc1    $at, $f8                   # $f8 = 155.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f10, $f8
    lw      t6, 0x01C4($sp)
    cfc1    t3, $f31
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f4
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    beql    t8, $zero, lbl_80060614
    mfc1    t8, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t8, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t8, $f31
    nop
    andi    t8, t8, 0x0078             # t8 = 00000000
    bne     t8, $zero, lbl_80060608
    nop
    mfc1    t8, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80060620
    or      t8, t8, $at                # t8 = 80000000
lbl_80060608:
    b       lbl_80060620
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    mfc1    t8, $f6
lbl_80060614:
    nop
    bltz    t8, lbl_80060608
    nop
lbl_80060620:
    ctc1    t3, $f31
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    lwc1    $f10, 0x0084(t6)           # 00000137
    addiu   t1, t8, 0x0064             # t1 = 00000063
    cfc1    t5, $f31
    ctc1    t3, $f31
    andi    t0, t1, 0x00FF             # t0 = 00000063
    sll     t4, t0,  8
    cvt.w.s $f8, $f10
    or      t2, t7, t4                 # t2 = FF000000
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    beql    t3, $zero, lbl_800606A8
    mfc1    t3, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sub.s   $f8, $f10, $f8
    ctc1    t3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    t3, $f31
    nop
    andi    t3, t3, 0x0078             # t3 = 00000000
    bne     t3, $zero, lbl_8006069C
    nop
    mfc1    t3, $f8
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800606B4
    or      t3, t3, $at                # t3 = 80000000
lbl_8006069C:
    b       lbl_800606B4
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    mfc1    t3, $f8
lbl_800606A8:
    nop
    bltz    t3, lbl_8006069C
    nop
lbl_800606B4:
    andi    t9, t3, 0x00FF             # t9 = 000000FF
    ctc1    t5, $f31
    or      t1, t2, t9                 # t1 = FF0000FF
    sw      t1, 0x0004(v0)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xF64F                 # t7 = F64F0000
    ori     t7, t7, 0xC3BC             # t7 = F64FC3BC
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    b       lbl_800606F0
    lw      $ra, 0x006C($sp)
    swc1    $f26, 0x0084(t4)           # 00000084
lbl_800606EC:
    lw      $ra, 0x006C($sp)
lbl_800606F0:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    ldc1    $f28, 0x0038($sp)
    ldc1    $f30, 0x0040($sp)
    lw      s0, 0x004C($sp)
    lw      s1, 0x0050($sp)
    lw      s2, 0x0054($sp)
    lw      s3, 0x0058($sp)
    lw      s4, 0x005C($sp)
    lw      s5, 0x0060($sp)
    lw      s6, 0x0064($sp)
    lw      s7, 0x0068($sp)
    jr      $ra
    addiu   $sp, $sp, 0x01C0           # $sp += 0x1C0


func_80060730:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lw      $ra, 0x0014($sp)
    sub.s   $f0, $f0, $f4
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80060758:
# gameplay_keep d. list: 4D690, Effect_Ss_Blast [?]
    addiu   $sp, $sp, 0xFEE0           # $sp -= 0x120
    sw      s7, 0x0064($sp)
    sw      s1, 0x004C($sp)
    or      s1, a2, $zero              # s1 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
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
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x1980             # t7 = 800F1980
    lw      t9, 0x0000(t7)             # 800F1980
    addiu   t6, $sp, 0x00D4            # t6 = FFFFFFB4
    lw      t8, 0x0004(t7)             # 800F1984
    sw      t9, 0x0000(t6)             # FFFFFFB4
    lw      t9, 0x0008(t7)             # 800F1988
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0x198C             # t1 = 800F198C
    sw      t8, 0x0004(t6)             # FFFFFFB8
    sw      t9, 0x0008(t6)             # FFFFFFBC
    lw      t3, 0x0000(t1)             # 800F198C
    addiu   t0, $sp, 0x00C8            # t0 = FFFFFFA8
    lw      t2, 0x0004(t1)             # 800F1990
    sw      t3, 0x0000(t0)             # FFFFFFA8
    lw      t3, 0x0008(t1)             # 800F1994
    sw      t2, 0x0004(t0)             # FFFFFFAC
    lui     $at, 0x4248                # $at = 42480000
    sw      t3, 0x0008(t0)             # FFFFFFB0
    lw      t4, 0x0790(a0)             # 00000790
    lw      s6, 0x1C44(a0)             # 00001C44
    lh      t5, 0x014C(t4)             # 0000014C
    andi    t6, t5, 0x0100             # t6 = 00000000
    bnel    t6, $zero, lbl_80060CA4
    lw      $ra, 0x006C($sp)
    mtc1    $at, $f18                  # $f18 = 50.00
    lui     t0, 0xFA00                 # t0 = FA000000
    lwc1    $f14, 0x0028(s7)           # 00000028
    lwc1    $f4, 0x0034(s7)            # 00000034
    lwc1    $f12, 0x002C(s7)           # 0000002C
    lwc1    $f6, 0x0038(s7)            # 00000038
    sub.s   $f20, $f4, $f14
    lwc1    $f16, 0x0030(s7)           # 00000030
    lwc1    $f8, 0x003C(s7)            # 0000003C
    sub.s   $f2, $f6, $f12
    mul.s   $f10, $f20, $f20
    lui     $at, 0x438C                # $at = 438C0000
    sub.s   $f22, $f8, $f16
    mul.s   $f4, $f2, $f2
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    mul.s   $f8, $f22, $f22
    add.s   $f6, $f10, $f4
    add.s   $f0, $f6, $f8
    sqrt.s  $f0, $f0
    div.s   $f24, $f20, $f0
    div.s   $f6, $f2, $f0
    mul.s   $f10, $f24, $f18
    div.s   $f26, $f22, $f0
    add.s   $f4, $f14, $f10
    mul.s   $f8, $f6, $f18
    swc1    $f4, 0x00F0($sp)
    add.s   $f10, $f12, $f8
    mul.s   $f4, $f26, $f18
    mtc1    $at, $f8                   # $f8 = 280.00
    swc1    $f10, 0x00EC($sp)
    mul.s   $f10, $f24, $f8
    add.s   $f6, $f16, $f4
    add.s   $f4, $f14, $f10
    swc1    $f6, 0x00E8($sp)
    mtc1    $at, $f6                   # $f6 = 280.00
    lui     $at, 0x0001                # $at = 00010000
    swc1    $f4, 0x00E4($sp)
    mul.s   $f8, $f26, $f6
    addu    s5, a0, $at
    add.s   $f10, $f16, $f8
    swc1    $f10, 0x00E0($sp)
    lbu     v1, 0x0B13(s5)             # 00000B13
    beql    v1, $zero, lbl_80060900
    or      s3, $zero, $zero           # s3 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0x96FF                 # t1 = 96FF0000
    ori     t1, t1, 0xFF1E             # t1 = 96FFFF1E
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    jal     func_8007DFBC
    lw      a0, 0x02D0(s1)             # 000002D0
    sw      v0, 0x02D0(s1)             # 000002D0
    lbu     v1, 0x0B13(s5)             # 00000B13
    or      s3, $zero, $zero           # s3 = 00000000
lbl_80060900:
    blez    v1, lbl_80060AD0
    or      a0, v1, $zero              # a0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f30, 0x79FC($at)          # 801079FC
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f28                  # $f28 = 100.00
    lui     t2, 0x0405                 # t2 = 04050000
    addiu   t2, t2, 0xD690             # t2 = 0404D690
    lui     $at, 0x8010                # $at = 80100000
    lui     s4, 0x0100                 # s4 = 01000000
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   s4, s4, 0x0000             # s4 = 01000000
    lwc1    $f26, 0x7A00($at)          # 80107A00
    sw      t2, 0x0080($sp)
lbl_8006093C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f22, $f0
    jal     func_800CDCCC              # Rand.Next() float
    mov.s   $f20, $f0
    sub.s   $f4, $f22, $f26
    lwc1    $f8, 0x00F0($sp)
    or      a3, $zero, $zero           # a3 = 00000000
    sub.s   $f10, $f20, $f26
    mul.s   $f6, $f4, $f28
    add.s   $f12, $f6, $f8
    mul.s   $f4, $f10, $f28
    lwc1    $f6, 0x00EC($sp)
    sub.s   $f8, $f0, $f26
    mul.s   $f10, $f8, $f28
    add.s   $f14, $f4, $f6
    lwc1    $f4, 0x00E8($sp)
    add.s   $f6, $f10, $f4
    mfc1    a2, $f6
    jal     func_800AA7F4
    nop
    lh      t3, 0x0ACC(s5)             # 00000ACC
    mtc1    t3, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x00C8($sp)
    lh      t4, 0x0ACE(s5)             # 00000ACE
    lwc1    $f20, 0x00C8($sp)
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x00CC($sp)
    lh      t5, 0x0AD0(s5)             # 00000AD0
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x00D0($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f4, 0x00CC($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    add.s   $f8, $f4, $f6
    lwc1    $f22, 0x00D0($sp)
    mul.s   $f4, $f0, $f10
    lui     t7, 0xDA38                 # t7 = DA380000
    mul.s   $f10, $f22, $f22
    add.s   $f2, $f4, $f8
    mul.s   $f4, $f20, $f20
    neg.s   $f14, $f2
    add.s   $f0, $f4, $f10
    sqrt.s  $f0, $f0
    lw      s0, 0x02D0(s1)             # 000002D0
    ori     t7, t7, 0x0001             # t7 = DA380001
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    jal     func_800AA670
    mov.s   $f12, $f0
    mov.s   $f24, $f0
    mov.s   $f12, $f22
    jal     func_800AA670
    mov.s   $f14, $f20
    neg.s   $f12, $f0
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A04($at)           # 80107A04
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA9E0
    sub.s   $f12, $f8, $f24
    lui     $at, 0x8010                # $at = 80100000
    mfc1    a2, $f30
    lwc1    $f14, 0x7A08($at)          # 80107A08
    mov.s   $f12, $f30
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02D0(s1)             # 000002D0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t8, s2, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lw      t1, 0x0080($sp)
    sw      t1, 0x0004(s0)             # 00000004
    lbu     a0, 0x0B13(s5)             # 00000B13
    sll     s3, s3, 16
    sra     s3, s3, 16
    slt     $at, s3, a0
    bne     $at, $zero, lbl_8006093C
    nop
lbl_80060AD0:
    lwc1    $f6, 0x0028(s6)            # 00000028
    lwc1    $f4, 0x002C(s7)            # 0000002C
    lui     s8, 0xDA38                 # s8 = DA380000
    ori     s8, s8, 0x0003             # s8 = DA380003
    c.lt.s  $f6, $f4
    or      s4, $zero, $zero           # s4 = 00000000
    bc1fl   lbl_80060CA4
    lw      $ra, 0x006C($sp)
    blez    a0, lbl_80060CA0
    or      s3, $zero, $zero           # s3 = 00000000
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f30                  # $f30 = -30.00
    lui     $at, 0xC240                # $at = C2400000
    mtc1    $at, $f28                  # $f28 = -48.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f26, 0x7A0C($at)          # 80107A0C
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f24, 0x7A10($at)          # 80107A10
    lui     $at, 0x4000                # $at = 40000000
    lui     t2, 0x0402                 # t2 = 04020000
    addiu   t2, t2, 0xA550             # t2 = 0401A550
    mtc1    $at, $f22                  # $f22 = 2.00
    sw      t2, 0x0084($sp)
lbl_80060B2C:
    bne     s4, $zero, lbl_80060B80
    nop
    jal     func_8007E2C0
    or      a0, s1, $zero              # a0 = 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0x9B9B                 # t5 = 9B9B0000
    ori     t5, t5, 0x9B00             # t5 = 9B9B9B00
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    sw      t4, 0x0000(s0)             # 00000000
    sw      t5, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t8, $zero, 0xFF78          # t8 = FFFFFF78
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    addiu   s4, s4, 0x0001             # s4 = 00000001
    andi    s4, s4, 0x00FF             # s4 = 00000001
lbl_80060B80:
    jal     func_80060730
    nop
    jal     func_80060730
    mov.s   $f20, $f0
    lui     $at, 0x438C                # $at = 438C0000
    mtc1    $at, $f2                   # $f2 = 280.00
    lwc1    $f8, 0x00E4($sp)
    lwc1    $f6, 0x0028(s6)            # 00000028
    mul.s   $f10, $f20, $f2
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f14, $f6, $f22
    mul.s   $f4, $f0, $f2
    add.s   $f12, $f10, $f8
    lwc1    $f10, 0x00E0($sp)
    add.s   $f8, $f4, $f10
    mfc1    a2, $f8
    jal     func_800AA7F4
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A2C(v0)            # 8011A5D4
    bne     v0, $zero, lbl_80060BF8
    nop
    lwc1    $f6, 0x0028(s6)            # 00000028
    lwc1    $f10, 0x002C(s7)           # 0000002C
    add.s   $f4, $f6, $f22
    sub.s   $f8, $f4, $f10
    c.lt.s  $f28, $f8
    nop
    bc1tl   lbl_80060C24
    mfc1    a2, $f24
lbl_80060BF8:
    beq     v0, $zero, lbl_80060C3C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f6, 0x0028(s6)            # 00000028
    lwc1    $f10, 0x002C(s7)           # 0000002C
    add.s   $f4, $f6, $f22
    sub.s   $f8, $f4, $f10
    c.lt.s  $f30, $f8
    nop
    bc1fl   lbl_80060C40
    mfc1    a2, $f26
    mfc1    a2, $f24
lbl_80060C24:
    mov.s   $f12, $f24
    mov.s   $f14, $f24
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    b       lbl_80060C50
    lw      s2, 0x02D0(s1)             # 000002D0
lbl_80060C3C:
    mfc1    a2, $f26
lbl_80060C40:
    mov.s   $f12, $f26
    jal     func_800AA8FC
    mov.s   $f14, $f26
    lw      s2, 0x02D0(s1)             # 000002D0
lbl_80060C50:
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t9, s2, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    jal     func_800AB900
    sw      s8, 0x0000(s2)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   s3, s3, 0x0001             # s3 = 00000001
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x0084($sp)
    sw      t2, 0x0004(s0)             # 00000004
    lbu     t3, 0x0B13(s5)             # 00000B13
    sll     s3, s3, 16
    sra     s3, s3, 16
    slt     $at, s3, t3
    bne     $at, $zero, lbl_80060B2C
    nop
lbl_80060CA0:
    lw      $ra, 0x006C($sp)
lbl_80060CA4:
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
    addiu   $sp, $sp, 0x0120           # $sp += 0x120


func_80060CE8:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    lbu     t6, 0x0AE1(v0)             # 00000AE1
    lui     $at, 0x3F80                # $at = 3F800000
    beq     a1, t6, lbl_80060D64
    nop
    lwc1    $f4, 0x0AFC(v0)            # 00000AFC
    mtc1    $at, $f6                   # $f6 = 1.00
    nop
    c.le.s  $f6, $f4
    nop
    bc1f    lbl_80060D64
    nop
    lbu     t7, 0x0AE3(v0)             # 00000AE3
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t7, $at, lbl_80060D64
    sltiu   $at, a1, 0x001F
    bnel    $at, $zero, lbl_80060D3C
    mtc1    $zero, $f8                 # $f8 = 0.00
    or      a1, $zero, $zero           # a1 = 00000000
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_80060D3C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    swc1    $f8, 0x0AFC($at)           # 00010AFC
    lbu     t8, 0x0AE1(v0)             # 00000AE1
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      t8, 0x0AE2($at)            # 00010AE2
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      a1, 0x0AE1($at)            # 00010AE1
lbl_80060D64:
    jr      $ra
    nop


func_80060D6C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    a3, a2, $at
    lbu     v0, 0x1E14(a3)             # 00001E14
    beql    v0, $zero, lbl_80060D9C
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    lh      t6, 0x07B2(a2)             # 000007B2
    slti    $at, t6, 0x03D4
    bne     $at, $zero, lbl_80060DA4
    addiu   $at, $zero, 0x001D         # $at = 0000001D
lbl_80060D9C:
    bnel    v0, $at, lbl_80060F00
    lbu     t1, 0x0B0D(a3)             # 00000B0D
lbl_80060DA4:
    lw      a0, 0x0000(a2)             # 00000000
    sw      a3, 0x0018($sp)
    sw      a2, 0x0040($sp)
    jal     func_8007E0C4
    sw      a0, 0x0038($sp)
    lw      a2, 0x0040($sp)
    addiu   t8, $zero, 0x03E8          # t8 = 000003E8
    lw      a3, 0x0018($sp)
    lh      t7, 0x07B2(a2)             # 000007B2
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A14($at)           # 80107A14
    subu    t9, t8, t7
    mtc1    t9, $f4                    # $f4 = 0.00
    lbu     t0, 0x1E14(a3)             # 00001E14
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    cvt.s.w $f6, $f4
    lw      a1, 0x0038($sp)
    mul.s   $f0, $f6, $f8
    bne     t0, $at, lbl_80060DFC
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f0                   # $f0 = 1.00
    nop
lbl_80060DFC:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f10                  # $f10 = 255.00
    c.lt.s  $f2, $f0
    lui     $at, 0x4F00                # $at = 4F000000
    bc1fl   lbl_80060E24
    lw      v1, 0x02C0(a1)             # 000002C0
    mov.s   $f0, $f2
    lw      v1, 0x02C0(a1)             # 000002C0
lbl_80060E24:
    mul.s   $f16, $f10, $f0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a1)             # 000002C0
    sw      t2, 0x0000(v1)             # 00000000
    lbu     t4, 0x07B1(a2)             # 000007B1
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lbu     t8, 0x07AF(a2)             # 000007AF
    sll     t5, t4,  8
    cfc1    t4, $f31
    ctc1    t6, $f31
    lbu     t1, 0x07B0(a2)             # 000007B0
    sll     t7, t8, 24
    cvt.w.s $f18, $f16
    or      t9, t5, t7                 # t9 = 00000000
    sll     t2, t1, 16
    or      t3, t9, t2                 # t3 = FA000000
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80060EC4
    mfc1    t6, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80060EB8
    nop
    mfc1    t6, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80060ED0
    or      t6, t6, $at                # t6 = 80000000
lbl_80060EB8:
    b       lbl_80060ED0
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f18
lbl_80060EC4:
    nop
    bltz    t6, lbl_80060EB8
    nop
lbl_80060ED0:
    andi    t8, t6, 0x00FF             # t8 = 000000FF
    ctc1    t4, $f31
    or      t5, t3, t8                 # t5 = FA0000FF
    sw      t5, 0x0004(v1)             # 00000004
    lw      v0, 0x02C0(a1)             # 000002C0
    lui     t0, 0xF64F                 # t0 = F64F0000
    ori     t0, t0, 0xC3BC             # t0 = F64FC3BC
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a1)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lbu     t1, 0x0B0D(a3)             # 00000B0D
lbl_80060F00:
    beql    t1, $zero, lbl_80060F80
    lw      $ra, 0x0014($sp)
    lw      a0, 0x0000(a2)             # 00000000
    sw      a3, 0x0018($sp)
    jal     func_8007E0C4
    sw      a0, 0x0028($sp)
    lw      a1, 0x0028($sp)
    lw      a3, 0x0018($sp)
    lw      v0, 0x02C0(a1)             # 000002C0
    lui     t2, 0xFA00                 # t2 = FA000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(a1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lbu     t8, 0x0B0E(a3)             # 00000B0E
    lbu     t1, 0x0B0F(a3)             # 00000B0F
    lbu     t6, 0x0B11(a3)             # 00000B11
    lbu     t3, 0x0B10(a3)             # 00000B10
    sll     t5, t8, 24
    sll     t9, t1, 16
    or      t7, t6, t5                 # t7 = 00000000
    or      t2, t7, t9                 # t2 = 00000008
    sll     t8, t3,  8
    or      t6, t2, t8                 # t6 = 00000008
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a1)             # 000002C0
    lui     t0, 0xF64F                 # t0 = F64F0000
    ori     t0, t0, 0xC3BC             # t0 = F64FC3BC
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(a1)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
lbl_80060F80:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80060F8C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x0020($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E0C4
    sw      a0, 0x001C($sp)
    lw      t0, 0x001C($sp)
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t4, 0x002B($sp)
    lbu     t1, 0x0027($sp)
    lbu     t8, 0x002F($sp)
    sll     t5, t4, 16
    lbu     t4, 0x0033($sp)
    sll     t2, t1, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8
    or      t1, t6, t9                 # t1 = 00000000
    or      t2, t1, t4                 # t2 = 00000000
    sw      t2, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(t0)             # 000002C0
    lui     t7, 0xF64F                 # t7 = F64F0000
    ori     t7, t7, 0xC3BC             # t7 = F64FC3BC
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(t0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80061024:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    lw      v0, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    lui     v1, 0x8012                 # v1 = 80120000
    addu    v0, v0, $at
    lbu     t6, 0x0B03(v0)             # 00000B03
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    beq     t6, $zero, lbl_800612E4
    nop
    lbu     a0, 0x0000(v1)             # 8011BCC8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     a0, $zero, lbl_8006107C
    nop
    beq     a0, $at, lbl_800611DC
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    beql    a0, a1, lbl_80061268
    lh      a0, 0x0AB0(v0)             # 00000AB0
    b       lbl_800612E4
    nop
lbl_8006107C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7A18($at)           # 80107A18
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    c.lt.s  $f0, $f4
    lui     $at, 0x4248                # $at = 42480000
    bc1f    lbl_800610B8
    nop
    lwc1    $f6, 0x0008(v1)            # 8011BCD0
    mtc1    $at, $f8                   # $f8 = 50.00
    nop
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(v1)           # 8011BCD0
lbl_800610B8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    lwc1    $f16, 0x0008(v1)           # 8011BCD0
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    add.s   $f18, $f16, $f0
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f18, 0x0008(v1)           # 8011BCD0
    lwc1    $f6, 0x0008(v1)            # 8011BCD0
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_800611D4
    nop
    mtc1    $zero, $f8                 # $f8 = 0.00
    sb      a0, 0x0001(v1)             # 8011BCC9
    sb      a0, 0x0002(v1)             # 8011BCCA
    sb      t7, 0x0003(v1)             # 8011BCCB
    sb      a0, 0x0004(v1)             # 8011BCCC
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0008(v1)            # 8011BCD0
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7A1C($at)          # 80107A1C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f16, $f0, $f10
    lw      a0, 0x0020($sp)
    cfc1    t8, $f31
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_80061198
    mfc1    a1, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_8006118C
    nop
    mfc1    a1, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_800611A4
    or      a1, a1, $at                # a1 = 80000000
lbl_8006118C:
    b       lbl_800611A4
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f18
lbl_80061198:
    nop
    bltz    a1, lbl_8006118C
    nop
lbl_800611A4:
    ctc1    t8, $f31
    addiu   a1, a1, 0x0001             # a1 = 00000000
    jal     func_8006132C
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    lbu     t9, 0x0000(v1)             # 8011BCC8
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBCD4             # t0 = 8011BCD4
    addiu   t1, t9, 0x0001             # t1 = 00000001
    sh      $zero, 0x0000(t0)          # 8011BCD4
    sb      t1, 0x0000(v1)             # 8011BCC8
lbl_800611D4:
    b       lbl_800612E4
    nop
lbl_800611DC:
    addiu   a0, $zero, 0x00C8          # a0 = 000000C8
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    sb      a0, 0x0001(v1)             # 8011BCC9
    sb      a0, 0x0002(v1)             # 8011BCCA
    sb      t2, 0x0003(v1)             # 8011BCCB
    lh      t3, 0x0AB0(v0)             # 00000AB0
    lh      t5, 0x0AB2(v0)             # 00000AB2
    lh      t7, 0x0AB4(v0)             # 00000AB4
    addiu   t4, t3, 0x0050             # t4 = 00000050
    addiu   t6, t5, 0x0050             # t6 = 00000050
    addiu   t8, t7, 0x0064             # t8 = 00000064
    addiu   t0, t0, 0xBCD4             # t0 = 801179A8
    sh      t4, 0x0AB0(v0)             # 00000AB0
    sh      t6, 0x0AB2(v0)             # 00000AB2
    sh      t8, 0x0AB4(v0)             # 00000AB4
    lh      t9, 0x0000(t0)             # 801179A8
    lbu     t3, 0x0004(v1)             # 8011BCCC
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   t1, t9, 0x0064             # t1 = 00000064
    sh      t1, 0x0000(t0)             # 801179A8
    lh      t2, 0x0000(t0)             # 801179A8
    or      a1, $zero, $zero           # a1 = 00000000
    slt     $at, t2, t3
    bne     $at, $zero, lbl_800612E4
    nop
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    lbu     t4, 0x0000(v1)             # 8011BCC8
    sb      $zero, 0x0004(v1)          # 8011BCCC
    addiu   t5, t4, 0x0001             # t5 = 00000001
    b       lbl_800612E4
    sb      t5, 0x0000(v1)             # 8011BCC8
    lh      a0, 0x0AB0(v0)             # 00000AB0
lbl_80061268:
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBCD4             # t0 = 8011BCD4
    blezl   a0, lbl_80061290
    lh      a0, 0x0AB4(v0)             # 00000AB4
    lh      t7, 0x0AB2(v0)             # 00000AB2
    addiu   t6, a0, 0xFFF6             # t6 = FFFFFFF6
    sh      t6, 0x0AB0(v0)             # 00000AB0
    addiu   t8, t7, 0xFFF6             # t8 = FFFFFFF6
    sh      t8, 0x0AB2(v0)             # 00000AB2
    lh      a0, 0x0AB4(v0)             # 00000AB4
lbl_80061290:
    blez    a0, lbl_8006129C
    addiu   t9, a0, 0xFFF6             # t9 = FFFFFFF6
    sh      t9, 0x0AB4(v0)             # 00000AB4
lbl_8006129C:
    lh      t1, 0x0000(t0)             # 8011BCD4
    lbu     t3, 0x0004(v1)             # 8011BCCC
    addiu   t2, t1, 0xFFF6             # t2 = FFFFFFF6
    sh      t2, 0x0000(t0)             # 8011BCD4
    lh      t4, 0x0000(t0)             # 8011BCD4
    slt     $at, t3, t4
    bne     $at, $zero, lbl_800612E4
    nop
    sh      $zero, 0x0AB0(v0)          # 00000AB0
    sh      $zero, 0x0AB2(v0)          # 00000AB2
    sh      $zero, 0x0AB4(v0)          # 00000AB4
    sb      $zero, 0x0000(v1)          # 8011BCC8
    lbu     t5, 0x0B03(v0)             # 00000B03
    lw      t6, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    bne     a1, t5, lbl_800612E4
    addu    $at, $at, t6
    sb      $zero, 0x0B03($at)         # 00010B03
lbl_800612E4:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBCC8             # v1 = 8011BCC8
    lbu     t7, 0x0000(v1)             # 8011BCC8
    lui     t0, 0x8012                 # t0 = 80120000
    addiu   t0, t0, 0xBCD4             # t0 = 8011BCD4
    beql    t7, $zero, lbl_80061320
    lw      $ra, 0x001C($sp)
    lh      t8, 0x0000(t0)             # 8011BCD4
    lw      a0, 0x0020($sp)
    lbu     a1, 0x0001(v1)             # 8011BCC9
    lbu     a2, 0x0002(v1)             # 8011BCCA
    lbu     a3, 0x0003(v1)             # 8011BCCB
    jal     func_80060F8C
    sw      t8, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80061320:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8006132C:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      a0, 0x0000($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a3, a3, 0xBC68             # a3 = 8011BC68
    or      v1, $zero, $zero           # v1 = 00000000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    sll     t6, v1,  5
lbl_80061350:
    addu    a0, a3, t6
    lbu     t7, 0x0000(a0)             # 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    bne     a2, t7, lbl_80061380
    sra     v1, v1, 16
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sll     v0, v0, 16
    sra     v0, v0, 16
    slt     $at, v0, a1
    beq     $at, $zero, lbl_8006138C
    sb      $zero, 0x0000(a0)          # 00000000
lbl_80061380:
    slti    $at, v1, 0x0003
    bnel    $at, $zero, lbl_80061350
    sll     t6, v1,  5
lbl_8006138C:
    jr      $ra
    nop


func_80061394:
# gameplay_keep d. list: 2D3D0
    addiu   $sp, $sp, 0xFF28           # $sp -= 0xD8
    sw      s4, 0x0058($sp)
    or      s4, a0, $zero              # s4 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x00DC($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x1998             # t7 = 800F1998
    lw      t9, 0x0000(t7)             # 800F1998
    addiu   t6, $sp, 0x00B0            # t6 = FFFFFFD8
    lw      t8, 0x0004(t7)             # 800F199C
    sw      t9, 0x0000(t6)             # FFFFFFD8
    lw      t9, 0x0008(t7)             # 800F19A0
    lui     t1, 0x800F                 # t1 = 800F0000
    addiu   t1, t1, 0x19A4             # t1 = 800F19A4
    sw      t8, 0x0004(t6)             # FFFFFFDC
    sw      t9, 0x0008(t6)             # FFFFFFE0
    lw      t3, 0x0000(t1)             # 800F19A4
    addiu   t0, $sp, 0x00A4            # t0 = FFFFFFCC
    lw      t2, 0x0004(t1)             # 800F19A8
    sw      t3, 0x0000(t0)             # FFFFFFCC
    lw      t3, 0x0008(t1)             # 800F19AC
    or      s7, $zero, $zero           # s7 = 00000000
    sw      t2, 0x0004(t0)             # FFFFFFD0
    sw      t3, 0x0008(t0)             # FFFFFFD4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f30, 0x7A20($at)          # 80107A20
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f28, 0x7A24($at)          # 80107A24
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f26                  # $f26 = 22.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f24, 0x7A28($at)          # 80107A28
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    lw      s2, 0x0000(s4)             # 00000000
    addiu   s8, $zero, 0x0002          # s8 = 00000002
lbl_8006145C:
    lui     t5, 0x8012                 # t5 = 80120000
    addiu   t5, t5, 0xBC68             # t5 = 8011BC68
    sll     t4, s7,  5
    addu    s1, t4, t5
    lbu     v1, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v1, $zero, lbl_80061498
    lwc1    $f14, 0x00E0(s4)           # 000000E0
    beql    v1, $at, lbl_8006159C
    lbu     t4, 0x001F(s1)             # 0000001F
    beql    v1, s8, lbl_800615C4
    lbu     v0, 0x001E(s1)             # 0000001E
    b       lbl_800615E4
    nop
    lwc1    $f14, 0x00E0(s4)           # 000000E0
lbl_80061498:
    lwc1    $f4, 0x00EC(s4)            # 000000EC
    lwc1    $f6, 0x00F4(s4)            # 000000F4
    lwc1    $f8, 0x00E8(s4)            # 000000E8
    sub.s   $f2, $f4, $f14
    sub.s   $f12, $f6, $f8
    mul.s   $f10, $f2, $f2
    nop
    mul.s   $f16, $f12, $f12
    add.s   $f0, $f10, $f16
    sqrt.s  $f0, $f0
    div.s   $f18, $f2, $f0
    div.s   $f20, $f12, $f0
    mul.s   $f4, $f18, $f28
    add.s   $f6, $f14, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0010(s1)            # 00000010
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f16                  # $f16 = 4000.00
    mul.s   $f10, $f0, $f8
    add.s   $f18, $f10, $f16
    mul.s   $f6, $f20, $f28
    swc1    $f18, 0x0014(s1)           # 00000014
    lwc1    $f4, 0x00E8(s4)            # 000000E8
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0018(s1)            # 00000018
    sub.s   $f10, $f0, $f22
    mtc1    $zero, $f18                # $f18 = 0.00
    mul.s   $f16, $f10, $f30
    swc1    $f18, 0x0008(s1)           # 00000008
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0004(s1)           # 00000004
    sub.s   $f4, $f0, $f22
    sb      $zero, 0x001E(s1)          # 0000001E
    mul.s   $f6, $f4, $f30
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x000C(s1)            # 0000000C
    sub.s   $f8, $f0, $f22
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    nop
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    jal     func_800CDCCC              # Rand.Next() float
    sb      t7, 0x001C(s1)             # 0000001C
    sub.s   $f4, $f0, $f22
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lbu     t2, 0x0000(s1)             # 00000000
    sll     t0, s7,  2
    mul.s   $f8, $f4, $f6
    subu    t0, t0, s7
    addiu   t1, t0, 0x0003             # t1 = 00000003
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t1, 0x001F(s1)             # 0000001F
    sb      t3, 0x0000(s1)             # 00000000
    andi    v1, t3, 0x00FF             # v1 = 00000001
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    b       lbl_800615E4
    sb      t9, 0x001D(s1)             # 0000001D
    lbu     t4, 0x001F(s1)             # 0000001F
lbl_8006159C:
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    andi    t6, t5, 0x00FF             # t6 = 000000FF
    bgtz    t6, lbl_800615B8
    sb      t5, 0x001F(s1)             # 0000001F
    lbu     t7, 0x0000(s1)             # 00000000
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0000(s1)             # 00000000
lbl_800615B8:
    b       lbl_800615E4
    lbu     v1, 0x0000(s1)             # 00000000
    lbu     v0, 0x001E(s1)             # 0000001E
lbl_800615C4:
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    slti    $at, v0, 0x0007
    beq     $at, $zero, lbl_800615DC
    addiu   t9, v0, 0x0001             # t9 = 00000001
    b       lbl_800615E0
    sb      t9, 0x001E(s1)             # 0000001E
lbl_800615DC:
    sb      t0, 0x0000(s1)             # 00000000
lbl_800615E0:
    lbu     v1, 0x0000(s1)             # 00000000
lbl_800615E4:
    bne     s8, v1, lbl_8006177C
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f16, 0x0004(s1)           # 00000004
    lwc1    $f18, 0x0010(s1)           # 00000010
    lwc1    $f8, 0x000C(s1)            # 0000000C
    lwc1    $f10, 0x0018(s1)           # 00000018
    add.s   $f12, $f16, $f18
    lwc1    $f4, 0x0008(s1)            # 00000008
    lwc1    $f6, 0x0014(s1)            # 00000014
    add.s   $f16, $f8, $f10
    lui     s5, 0x0100                 # s5 = 01000000
    lui     s6, 0x0403                 # s6 = 04030000
    addiu   s6, s6, 0xD3D0             # s6 = 0402D3D0
    mfc1    a2, $f16
    addiu   s5, s5, 0x0000             # s5 = 01000000
    jal     func_800AA7F4
    add.s   $f14, $f4, $f6
    lb      t1, 0x001C(s1)             # 0000001C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f12, $f4, $f24
    jal     func_800AA9E0
    nop
    lb      t2, 0x001D(s1)             # 0000001D
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f24
    jal     func_800AAD4C
    nop
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f14                  # $f14 = 100.00
    mfc1    a2, $f26
    mov.s   $f12, $f26
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t5, $zero, 0xFF80          # t5 = FFFFFF80
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t8, 0x00FF                 # t8 = 00FF0000
    ori     t8, t8, 0xFF80             # t8 = 00FFFF80
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      t7, 0x0000(s0)             # 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s3, 0x02D0(s2)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, s3, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x0020             # t2 = DB060020
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lbu     t3, 0x001E(s1)             # 0000001E
    lui     a1, 0x800F                 # a1 = 800F0000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t4, t3,  2
    addu    a1, a1, t4
    lw      a1, 0x19B0(a1)             # 800F19B0
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, a1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, a1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t5, t9
    addu    t1, t0, $at
    sw      t1, 0x0004(s0)             # 00000004
    jal     func_8007E978
    lw      a0, 0x0000(s4)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0001             # t3 = DA380001
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    sw      s5, 0x0004(s0)             # 00000004
    sw      t3, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s2)             # 000002D0
    lui     t6, 0xDE00                 # t6 = DE000000
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
lbl_8006177C:
    addiu   s7, s7, 0x0001             # s7 = 00000001
    sll     s7, s7, 16
    sra     s7, s7, 16
    slti    $at, s7, 0x0003
    bne     $at, $zero, lbl_8006145C
    nop
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
    addiu   $sp, $sp, 0x00D8           # $sp += 0xD8


func_800617DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t7, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addu    $at, $at, t7
    sb      t6, 0x0B04($at)            # 00010B04
    lw      v0, 0x0000(a1)             # 8011A5D0
    addiu   $at, $zero, 0x04DE         # $at = 000004DE
    beq     v0, $at, lbl_8006181C
    addiu   $at, $zero, 0x05E0         # $at = 000005E0
    bnel    v0, $at, lbl_80061830
    lhu     t8, 0x140E(a1)             # 8011B9DE
lbl_8006181C:
    jal     func_800C7C90
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    b       lbl_800619AC
    lw      t3, 0x0018($sp)
    lhu     t8, 0x140E(a1)             # 0000140E
lbl_80061830:
    lw      t9, 0x0018($sp)
    beql    t8, $zero, lbl_8006186C
    lbu     a2, 0x07A4(t9)             # 000007A4
    jal     func_8006344C
    nop
    lui     a1, 0x8012                 # a1 = 80120000
    bne     v0, $zero, lbl_80061860
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
    jal     func_800CAA70
    lhu     a0, 0x140E(a1)             # 8011B9DE
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xA5D0             # a1 = 8011A5D0
lbl_80061860:
    b       lbl_800619A8
    sh      $zero, 0x140E(a1)          # 8011B9DE
    lbu     a2, 0x07A4(t9)             # 000007A4
lbl_8006186C:
    addiu   $at, $zero, 0x007F         # $at = 0000007F
    lw      t1, 0x0018($sp)
    bne     a2, $at, lbl_800618A8
    or      a3, a2, $zero              # a3 = 00000000
    lbu     a0, 0x07A5(t9)             # 000007A5
    addiu   $at, $zero, 0x0013         # $at = 00000013
    beql    a0, $at, lbl_800619C0
    lw      $ra, 0x0014($sp)
    lbu     t0, 0x13E1(a1)             # 8011B9B1
    beql    a0, t0, lbl_800619AC
    lw      t3, 0x0018($sp)
    jal     func_800C7C90
    nop
    b       lbl_800619AC
    lw      t3, 0x0018($sp)
lbl_800618A8:
    lbu     a0, 0x07A5(t1)             # 000007A5
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     a0, $at, lbl_800618D4
    or      v1, a0, $zero              # v1 = 00000000
    lbu     t2, 0x13E0(a1)             # 000013E0
    beql    a3, t2, lbl_800619AC
    lw      t3, 0x0018($sp)
    jal     func_800C62A4
    andi    a0, a2, 0xFFFF             # a0 = 00000000
    b       lbl_800619AC
    lw      t3, 0x0018($sp)
lbl_800618D4:
    lhu     v0, 0x000C(a1)             # 0000000C
    slti    $at, v0, 0x4AAB
    bne     $at, $zero, lbl_8006191C
    ori     $at, $zero, 0xB71D         # $at = 0000B71D
    slt     $at, v0, $at
    beql    $at, $zero, lbl_80061920
    lbu     t6, 0x13E1(a1)             # 000013E1
    lbu     t3, 0x13E0(a1)             # 000013E0
    beql    a3, t3, lbl_80061908
    lw      t5, 0x0018($sp)
    jal     func_800C62A4
    andi    a0, a2, 0xFFFF             # a0 = 00000000
    lw      t5, 0x0018($sp)
lbl_80061908:
    lui     $at, 0x0001                # $at = 00010000
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addu    $at, $at, t5
    b       lbl_800619A8
    sb      t4, 0x0B04($at)            # 00010B04
lbl_8006191C:
    lbu     t6, 0x13E1(a1)             # 000013E1
lbl_80061920:
    beql    v1, t6, lbl_8006193C
    ori     $at, $zero, 0xB71D         # $at = 0000B71D
    jal     func_800C7C90
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    ori     $at, $zero, 0xB71D         # $at = 0000B71D
lbl_8006193C:
    slt     $at, v0, $at
    bne     $at, $zero, lbl_80061968
    ori     $at, $zero, 0xCAAC         # $at = 0000CAAC
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80061968
    lw      t8, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t8
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    b       lbl_800619A8
    sb      t7, 0x0B04($at)            # 00010B04
lbl_80061968:
    ori     $at, $zero, 0xCAAD         # $at = 0000CAAD
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80061984
    lw      t0, 0x0018($sp)
    slti    $at, v0, 0x4555
    beq     $at, $zero, lbl_80061998
    lw      t2, 0x0018($sp)
lbl_80061984:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t0
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    b       lbl_800619A8
    sb      t9, 0x0B04($at)            # 00010B04
lbl_80061998:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t2
    addiu   t1, $zero, 0x0007          # t1 = 00000007
    sb      t1, 0x0B04($at)            # 00010B04
lbl_800619A8:
    lw      t3, 0x0018($sp)
lbl_800619AC:
    lui     a0, 0x0001                 # a0 = 00010000
    addu    a0, a0, t3
    jal     func_800C73E0
    lb      a0, 0x1CC0(a0)             # 00011CC0
    lw      $ra, 0x0014($sp)
lbl_800619C0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800619CC:
# Update Weather/Sun events?
# Update rain count, hatches eggs
# Updates the number of rain drops that should be drawn
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    s0, s1, $at
    lbu     v0, 0x0B04(s0)             # 00000B04
    sltiu   $at, v0, 0x0009
    beq     $at, $zero, lbl_80061CD0
    sll     t6, v0,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x7A2C($at)            # 80107A2C
    jr      t6
    nop
    addiu   a0, $zero, 0x0056          # a0 = 00000056
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t7, 0x0B12(s0)             # 00000B12
    bnel    t7, $zero, lbl_80061A40
    lbu     t9, 0x0B04(s0)             # 00000B04
    lbu     t8, 0x0B16(s0)             # 00000B16
    bnel    t8, $zero, lbl_80061A40
    lbu     t9, 0x0B04(s0)             # 00000B04
    jal     func_800C6264
    lbu     a0, 0x07A4(s1)             # 000007A4
    lbu     t9, 0x0B04(s0)             # 00000B04
lbl_80061A40:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t0, t9, 0x0001             # t0 = 00000001
    b       lbl_80061CD0
    sb      t0, 0x0B04($at)            # 00010B04
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x000C(v1)             # 8011A5DC
    ori     $at, $zero, 0xB71D         # $at = 0000B71D
    slt     $at, t1, $at
    bnel    $at, $zero, lbl_80061CD4
    lw      $ra, 0x001C($sp)
    lbu     t2, 0x0B12(s0)             # 00000B12
    bnel    t2, $zero, lbl_80061A9C
    lui     $at, 0x0001                # $at = 00010000
    lbu     t3, 0x0B16(s0)             # 00000B16
    lui     a0, 0x10F0                 # a0 = 10F00000
    bnel    t3, $zero, lbl_80061A9C
    lui     $at, 0x0001                # $at = 00010000
    jal     func_800CAA70
    ori     a0, a0, 0x00FF             # a0 = 10F000FF
    lbu     v0, 0x0B04(s0)             # 00000B04
    lui     $at, 0x0001                # $at = 00010000
lbl_80061A9C:
    addu    $at, $at, s1
    addiu   t4, v0, 0x0001             # t4 = 00000001
    b       lbl_80061CD0
    sb      t4, 0x0B04($at)            # 00010B04
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t5, 0x000C(v1)             # 8011A5DC
    ori     $at, $zero, 0xC001         # $at = 0000C001
    slt     $at, t5, $at
    bnel    $at, $zero, lbl_80061CD4
    lw      $ra, 0x001C($sp)
    jal     func_80064738
    addiu   a0, $zero, 0x28AE          # a0 = 000028AE
    lbu     t6, 0x0B04(s0)             # 00000B04
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t7, t6, 0x0001             # t7 = 00000001
    b       lbl_80061CD0
    sb      t7, 0x0B04($at)            # 00010B04
    lbu     t8, 0x0B12(s0)             # 00000B12
    bnel    t8, $zero, lbl_80061B20
    lui     $at, 0x0001                # $at = 00010000
    lbu     t9, 0x0B16(s0)             # 00000B16
    bnel    t9, $zero, lbl_80061B20
    lui     $at, 0x0001                # $at = 00010000
    jal     func_800C7C90
    lbu     a0, 0x07A5(s1)             # 000007A5
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     v0, 0x0B04(s0)             # 00000B04
    lui     $at, 0x0001                # $at = 00010000
lbl_80061B20:
    addu    $at, $at, s1
    addiu   t0, v0, 0x0001             # t0 = 00000001
    b       lbl_80061CD0
    sb      t0, 0x0B04($at)            # 00010B04
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t1, 0x000C(v1)             # 8011A5DC
    ori     $at, $zero, 0xCAAC         # $at = 0000CAAC
    addiu   t2, v0, 0x0001             # t2 = 00000001
    slt     $at, t1, $at
    bne     $at, $zero, lbl_80061CD0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    b       lbl_80061CD0
    sb      t2, 0x0B04($at)            # 00010B04
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t3, 0x0B12(s0)             # 00000B12
    bnel    t3, $zero, lbl_80061B98
    lbu     t5, 0x0B04(s0)             # 00000B04
    lbu     t4, 0x0B16(s0)             # 00000B16
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bnel    t4, $zero, lbl_80061B98
    lbu     t5, 0x0B04(s0)             # 00000B04
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t5, 0x0B04(s0)             # 00000B04
lbl_80061B98:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t6, t5, 0x0001             # t6 = 00000001
    b       lbl_80061CD0
    sb      t6, 0x0B04($at)            # 00010B04
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     v0, 0x000C(v1)             # 8011A5DC
    ori     $at, $zero, 0xCAAC         # $at = 0000CAAC
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80061CD0
    slti    $at, v0, 0x4556
    bne     $at, $zero, lbl_80061CD0
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    lw      t7, 0x0014(v1)             # 8011A5E4
    lw      t9, 0x0018(v1)             # 8011A5E8
    sb      t1, 0x141C(v1)             # 8011B9EC
    addiu   t8, t7, 0x0001             # t8 = 00000001
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sw      t8, 0x0014(v1)             # 8011A5E4
    sw      t0, 0x0018(v1)             # 8011A5E8
    jal     func_800646F0
    addiu   a0, $zero, 0x2813          # a0 = 00002813
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0021          # a1 = 00000021
    jal     func_800719E0
    addiu   a2, $zero, 0x0022          # a2 = 00000022
    bne     v0, $zero, lbl_80061C20
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x002D          # a1 = 0000002D
    jal     func_800719E0
    addiu   a2, $zero, 0x002E          # a2 = 0000002E
    beql    v0, $zero, lbl_80061C4C
    lbu     t3, 0x0B04(s0)             # 00000B04
lbl_80061C20:
    lbu     t2, 0x1D6C(s1)             # 00001D6C
    bnel    t2, $zero, lbl_80061C4C
    lbu     t3, 0x0B04(s0)             # 00000B04
    jal     func_8007943C
    or      a0, s1, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_80061C48
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3066          # a1 = 00003066
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
lbl_80061C48:
    lbu     t3, 0x0B04(s0)             # 00000B04
lbl_80061C4C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t4, t3, 0x0001             # t4 = 00000001
    b       lbl_80061CD0
    sb      t4, 0x0B04($at)            # 00010B04
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     t5, 0x0B12(s0)             # 00000B12
    bnel    t5, $zero, lbl_80061C9C
    lbu     t7, 0x0B04(s0)             # 00000B04
    lbu     t6, 0x0B16(s0)             # 00000B16
    addiu   a0, $zero, 0x0056          # a0 = 00000056
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bnel    t6, $zero, lbl_80061C9C
    lbu     t7, 0x0B04(s0)             # 00000B04
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lbu     t7, 0x0B04(s0)             # 00000B04
lbl_80061C9C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t8, t7, 0x0001             # t8 = 00000001
    b       lbl_80061CD0
    sb      t8, 0x0B04($at)            # 00010B04
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t9, 0x000C(v1)             # 8011A5DC
    slti    $at, t9, 0x4AAC
    bne     $at, $zero, lbl_80061CD0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x0B04($at)         # 00010B04
lbl_80061CD0:
    lw      $ra, 0x001C($sp)
lbl_80061CD4:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80061CE4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0034($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lbu     t6, -0x4326(t6)            # 8011BCDA
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBCE0             # v0 = 8011BCE0
    beq     t6, $zero, lbl_80061D80
    lui     $at, 0x0001                # $at = 00010000
    lwc1    $f4, 0x0000(v0)            # 8011BCE0
    lwc1    $f6, 0x0004(v0)            # 8011BCE4
    lwc1    $f8, 0x0008(v0)            # 8011BCE8
    addiu   t7, $sp, 0x003C            # t7 = FFFFFFF4
    swc1    $f4, 0x003C($sp)
    swc1    $f6, 0x0040($sp)
    swc1    $f8, 0x0044($sp)
    lw      t9, 0x0000(t7)             # FFFFFFF4
    lw      a3, 0x0000(a0)             # 00000000
    ori     $at, $at, 0x0A24           # $at = 00010A24
    sw      t9, 0x0010($sp)
    lw      t8, 0x0004(t7)             # FFFFFFF8
    addu    a1, a0, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t8, 0x0014($sp)
    lw      t9, 0x0008(t7)             # FFFFFFFC
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x8012                 # t2 = 80120000
    lh      t2, -0x430C(t2)            # 8011BCF4
    lh      t1, -0x4314(t1)            # 8011BCEC
    lh      t0, -0x43A0(t0)            # 8011BC60
    lwc1    $f10, -0x4310($at)         # 8011BCF0
    sw      $zero, 0x002C($sp)
    addiu   a2, a0, 0x00B8             # a2 = 000000B8
    sw      t9, 0x0018($sp)
    sw      t2, 0x0028($sp)
    sw      t1, 0x0020($sp)
    sw      t0, 0x001C($sp)
    jal     func_8005FAEC
    swc1    $f10, 0x0024($sp)
lbl_80061D80:
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80061D90:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8012                 # a0 = 80120000
    lw      v1, 0x1C44(t6)             # 00001C44
    sb      $zero, -0x42DA($at)        # 8011BD26
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    lwc1    $f4, 0x0024(v1)            # 00000024
    addiu   a0, a0, 0xBD00             # a0 = 8011BD00
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(v1)            # 00000028
    mfc1    t8, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sll     t9, t8, 16
    sra     t0, t9, 16
    mtc1    t0, $f8                    # $f8 = 0.00
    mfc1    t3, $f6
    trunc.w.s $f6, $f4
    sw      t2, 0x001C($sp)
    sll     t4, t3, 16
    cvt.s.w $f10, $f8
    sra     t5, t4, 16
    mtc1    t5, $f8                    # $f8 = 0.00
    mfc1    t8, $f6
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    sub.s   $f16, $f10, $f0
    sll     t9, t8, 16
    sra     t0, t9, 16
    cvt.s.w $f10, $f8
    mtc1    t0, $f8                    # $f8 = 0.00
    sw      $zero, 0x0010($sp)
    sw      v1, 0x0030($sp)
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    sub.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lw      a0, 0x0038($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBD00             # a2 = 8011BD00
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    jal     func_800665B0
    sw      a1, 0x002C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lw      v1, 0x0030($sp)
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x4308($at)           # 8011BCF8
    lwc1    $f4, 0x0024(v1)            # 00000024
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(v1)            # 00000028
    addiu   a0, a0, 0xBD18             # a0 = 8011BD18
    mfc1    t4, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f8                    # $f8 = 0.00
    mfc1    t9, $f6
    trunc.w.s $f6, $f4
    sw      t8, 0x001C($sp)
    sll     t0, t9, 16
    cvt.s.w $f10, $f8
    sra     t1, t0, 16
    mtc1    t1, $f8                    # $f8 = 0.00
    mfc1    t4, $f6
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    add.s   $f16, $f10, $f0
    sll     t5, t4, 16
    sra     t6, t5, 16
    cvt.s.w $f10, $f8
    mtc1    t6, $f8                    # $f8 = 0.00
    sw      $zero, 0x0010($sp)
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBD18             # a2 = 8011BD18
    lw      a0, 0x0038($sp)
    jal     func_800665B0
    lw      a1, 0x002C($sp)
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x42F0($at)           # 8011BD10
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80061F78:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    lui     $at, 0x4120                # $at = 41200000
    sw      s0, 0x0028($sp)
    mtc1    $at, $f0                   # $f0 = 10.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v1, 0x1C44(s0)             # 00001C44
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     v0, -0x42DA(v0)            # 8011BD26
    lwc1    $f4, 0x0024(v1)            # 00000024
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(v1)            # 00000028
    addiu   a0, a0, 0xBD00             # a0 = 8011BD00
    mfc1    t7, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f8                    # $f8 = 0.00
    mfc1    t2, $f6
    trunc.w.s $f6, $f4
    sw      t1, 0x001C($sp)
    sll     t3, t2, 16
    cvt.s.w $f10, $f8
    sra     t4, t3, 16
    mtc1    t4, $f8                    # $f8 = 0.00
    mfc1    t7, $f6
    sw      v1, 0x0034($sp)
    sw      v0, 0x0018($sp)
    sub.s   $f16, $f10, $f0
    sll     t8, t7, 16
    sra     t9, t8, 16
    cvt.s.w $f10, $f8
    mtc1    t9, $f8                    # $f8 = 0.00
    sw      v0, 0x0014($sp)
    sw      v0, 0x0010($sp)
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    sub.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lw      v1, 0x0034($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x0024(v1)            # 00000024
    lui     v0, 0x8012                 # v0 = 80120000
    lbu     v0, -0x42DA(v0)            # 8011BD26
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(v1)            # 00000028
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    mfc1    t3, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(v1)            # 0000002C
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f8                    # $f8 = 0.00
    mfc1    t8, $f6
    trunc.w.s $f6, $f4
    sw      t7, 0x001C($sp)
    sll     t9, t8, 16
    cvt.s.w $f10, $f8
    sra     t0, t9, 16
    mtc1    t0, $f8                    # $f8 = 0.00
    mfc1    t3, $f6
    addiu   a0, a0, 0xBD18             # a0 = 8011BD18
    sw      v0, 0x0018($sp)
    add.s   $f16, $f10, $f0
    sll     t4, t3, 16
    sra     t5, t4, 16
    cvt.s.w $f10, $f8
    mtc1    t5, $f8                    # $f8 = 0.00
    sw      v0, 0x0014($sp)
    sw      v0, 0x0010($sp)
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBD26             # v1 = 8011BD26
    lbu     v0, 0x0000(v1)             # 8011BD26
    slti    $at, v0, 0x00FE
    beq     $at, $zero, lbl_80062138
    addiu   t8, v0, 0x0002             # t8 = 00000002
    sb      t8, 0x0000(v1)             # 8011BD26
lbl_80062138:
    jal     func_8009DAE4
    or      a0, s0, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    beq     v0, $zero, lbl_800621EC
    addiu   v1, v1, 0xBD26             # v1 = 8011BD26
    or      v1, $zero, $zero           # v1 = 00000000
    lui     a2, 0x0001                 # a2 = 00010000
    addiu   a1, $zero, 0xFF01          # a1 = FFFFFF01
lbl_80062158:
    sll     t9, v1,  1
    addu    t0, s0, t9
    addu    v0, t0, a2
    lh      a0, 0x0AB0(v0)             # 00000AB0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sll     v1, v1, 16
    slti    $at, a0, 0xFF02
    bne     $at, $zero, lbl_80062190
    sra     v1, v1, 16
    lh      t2, 0x0AB6(v0)             # 00000AB6
    addiu   t1, a0, 0xFFF4             # t1 = FFFFFFF4
    sh      t1, 0x0AB0(v0)             # 00000AB0
    addiu   t3, t2, 0xFFF4             # t3 = FFFFFFF4
    sh      t3, 0x0AB6(v0)             # 00000AB6
lbl_80062190:
    slti    $at, v1, 0x0003
    bne     $at, $zero, lbl_80062158
    sh      a1, 0x0ABC(v0)             # 00000ABC
    addu    v0, s0, a2
    lh      v1, 0x0AC4(v0)             # 00000AC4
    lh      t4, 0x0AF8(v0)             # 00000AF8
    addiu   t6, v1, 0xFF9C             # t6 = FFFFFF9D
    addu    t5, t4, v1
    slti    $at, t5, 0x0385
    bne     $at, $zero, lbl_800621C4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sh      t6, 0x0AC4($at)            # 00010AC4
lbl_800621C4:
    lh      v1, 0x0AC2(v0)             # 00000AC2
    lh      t7, 0x0AF6(v0)             # 00000AF6
    addiu   t9, v1, 0xFFF6             # t9 = FFFFFFF7
    addu    t8, t7, v1
    slti    $at, t8, 0x03B7
    bne     $at, $zero, lbl_80062218
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80062218
    sh      t9, 0x0AC2($at)            # 00010AC2
lbl_800621EC:
    lui     $at, 0x0001                # $at = 00010000
    lui     a2, 0x0001                 # a2 = 00010000
    addu    $at, $at, s0
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sb      t0, 0x0B05($at)            # 00010B05
    addu    v0, s0, a2
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lbu     t1, 0x0000(v1)             # 00000001
    sb      t1, 0x0B09(v0)             # 00000B09
lbl_80062218:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8006222C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s2, 0x002C($sp)
    lui     s2, 0x8012                 # s2 = 80120000
    sw      s5, 0x0038($sp)
    or      s5, a0, $zero              # s5 = 00000000
    addiu   s2, s2, 0xBD26             # s2 = 8011BD26
    sw      $ra, 0x003C($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    lbu     v0, 0x0000(s2)             # 8011BD26
    lw      s1, 0x1C44(s5)             # 00001C44
    or      a0, s5, $zero              # a0 = 00000000
    slti    $at, v0, 0x0003
    bne     $at, $zero, lbl_80062278
    addiu   t6, v0, 0xFFFD             # t6 = FFFFFFFD
    b       lbl_8006227C
    sb      t6, 0x0000(s2)             # 8011BD26
lbl_80062278:
    sb      $zero, 0x0000(s2)          # 8011BD26
lbl_8006227C:
    lbu     s0, 0x0000(s2)             # 8011BD26
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     a2, 0x8012                 # a2 = 80120000
    bne     s0, $at, lbl_800622BC
    or      v0, s0, $zero              # v0 = 00000000
    addiu   s0, s5, 0x07A8             # s0 = 000007A8
    or      a1, s0, $zero              # a1 = 000007A8
    jal     func_80066610
    lw      a2, -0x4308(a2)            # 8011BCF8
    lui     a2, 0x8012                 # a2 = 80120000
    lw      a2, -0x42F0(a2)            # 8011BD10
    or      a0, s5, $zero              # a0 = 00000000
    jal     func_80066610
    or      a1, s0, $zero              # a1 = 000007A8
    b       lbl_80062444
    nop
lbl_800622BC:
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_80062444
    nop
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(s1)            # 00000028
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    mfc1    t8, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sll     t9, t8, 16
    sra     t0, t9, 16
    mtc1    t0, $f8                    # $f8 = 0.00
    mfc1    t3, $f6
    trunc.w.s $f6, $f4
    sw      t2, 0x001C($sp)
    sll     t4, t3, 16
    cvt.s.w $f10, $f8
    sra     t5, t4, 16
    mtc1    t5, $f8                    # $f8 = 0.00
    mfc1    t8, $f6
    sw      s0, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sub.s   $f16, $f10, $f0
    sll     t9, t8, 16
    sra     t0, t9, 16
    cvt.s.w $f10, $f8
    mtc1    t0, $f8                    # $f8 = 0.00
    sw      s0, 0x0010($sp)
    addiu   a0, a0, 0xBD00             # a0 = 8011BD00
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    sub.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
    lwc1    $f4, 0x0024(s1)            # 00000024
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x0028(s1)            # 00000028
    lbu     s0, 0x0000(s2)             # 8011BD26
    lui     a0, 0x8012                 # a0 = 80120000
    mfc1    t4, $f6
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x002C(s1)            # 0000002C
    sll     t5, t4, 16
    sra     t6, t5, 16
    mtc1    t6, $f8                    # $f8 = 0.00
    mfc1    t9, $f6
    trunc.w.s $f6, $f4
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    sll     t0, t9, 16
    cvt.s.w $f10, $f8
    sra     t1, t0, 16
    mtc1    t1, $f8                    # $f8 = 0.00
    mfc1    t4, $f6
    sw      t8, 0x001C($sp)
    addiu   a0, a0, 0xBD18             # a0 = 8011BD18
    add.s   $f16, $f10, $f0
    sll     t5, t4, 16
    sra     t6, t5, 16
    cvt.s.w $f10, $f8
    mtc1    t6, $f8                    # $f8 = 0.00
    sw      s0, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      s0, 0x0010($sp)
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a1, $f18
    cvt.s.w $f10, $f8
    sll     a1, a1, 16
    sra     a1, a1, 16
    trunc.w.s $f18, $f16
    add.s   $f16, $f10, $f0
    mfc1    a2, $f18
    trunc.w.s $f18, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80065BCC
    sra     a3, a3, 16
lbl_80062444:
    jal     func_8009DAE4
    or      a0, s5, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_800624E4
    lui     s4, 0x0001                 # s4 = 00010000
    lui     s3, 0x0001                 # s3 = 00010000
    lui     s2, 0x0001                 # s2 = 00010000
    ori     s2, s2, 0x0AB0             # s2 = 00010AB0
    ori     s3, s3, 0x0AB6             # s3 = 00010AB6
    or      s0, $zero, $zero           # s0 = 00000000
    lui     s4, 0x0001                 # s4 = 00010000
lbl_8006246C:
    sll     t9, s0,  1
    addu    s1, s5, t9
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0010($sp)
    addu    a0, s1, s2
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x0010($sp)
    addu    a0, s1, s3
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0003
    addu    t2, s1, s4
    bne     $at, $zero, lbl_8006246C
    sh      $zero, 0x0ABC(t2)          # 00000ABC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    sh      $zero, 0x0AC4($at)         # 00010AC4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    b       lbl_80062524
    sh      $zero, 0x0AC2($at)         # 00010AC2
lbl_800624E4:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0B05($at)            # 00010B05
    addu    v0, s5, s4
    sb      $zero, 0x0B06(v0)          # 00000B06
    sb      $zero, 0x0B07(v0)          # 00000B07
    sb      $zero, 0x0B08(v0)          # 00000B08
    lbu     t4, 0x0000(s2)             # 00010AB0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s5
    sb      t4, 0x0B09(v0)             # 00000B09
    lbu     t5, 0x0000(s2)             # 00010AB0
    bnel    t5, $zero, lbl_80062528
    lw      $ra, 0x003C($sp)
    sb      $zero, 0x0B05($at)         # 00010B05
lbl_80062524:
    lw      $ra, 0x003C($sp)
lbl_80062528:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80062548:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    lbu     v1, 0x0B16(v0)             # 00000B16
    lbu     a1, 0x0B12(v0)             # 00000B12
    andi    a2, v1, 0x00FF             # a2 = 00000000
    slt     $at, v1, a1
    beq     $at, $zero, lbl_80062570
    nop
    b       lbl_80062570
    andi    a2, a1, 0x00FF             # a2 = 00000000
lbl_80062570:
    lbu     a1, 0x0B13(v0)             # 00000B13
    beq     a2, a1, lbl_800625A8
    nop
    lw      t6, 0x009C(a0)             # 0000009C
    slt     $at, a1, a2
    andi    t7, t6, 0x0007             # t7 = 00000000
    bne     t7, $zero, lbl_800625A8
    nop
    beq     $at, $zero, lbl_800625A4
    addiu   t9, a1, 0xFFFE             # t9 = FFFFFFFE
    addiu   t8, a1, 0x0002             # t8 = 00000002
    jr      $ra
    sb      t8, 0x0B13(v0)             # 00000B13
lbl_800625A4:
    sb      t9, 0x0B13(v0)             # 00000B13
lbl_800625A8:
    jr      $ra
    nop


func_800625B0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0054($sp)
    sw      a2, 0x0058($sp)
    sw      a3, 0x005C($sp)
    lbu     t6, 0x0063($sp)
    lbu     a2, 0x0067($sp)
    beq     t6, $zero, lbl_8006276C
    andi    t7, a2, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80062690
    andi    t3, a2, 0x0002             # t3 = 00000000
    lw      a0, 0x02C0(s0)             # 000002C0
    jal     func_8007E008
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t4, 0x005B($sp)
    lbu     t1, 0x0057($sp)
    lbu     t8, 0x005F($sp)
    lbu     t3, 0x0063($sp)
    sll     t5, t4, 16
    sll     t2, t1, 24
    or      t6, t2, t5                 # t6 = 00000000
    sll     t9, t8,  8
    or      t0, t6, t9                 # t0 = FA000000
    or      t4, t0, t3                 # t4 = FA000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xE300                 # t5 = E3000000
    ori     t5, t5, 0x1A01             # t5 = E3001A01
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s0)             # 000002C0
    addiu   t7, $zero, 0x0030          # t7 = 00000030
    sw      t7, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1801             # t6 = E3001801
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    addiu   t9, $zero, 0x00C0          # t9 = 000000C0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t0, 0xF64F                 # t0 = F64F0000
    ori     t0, t0, 0xC3BC             # t0 = F64FC3BC
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    andi    t3, a2, 0x0002             # t3 = 00000000
lbl_80062690:
    beq     t3, $zero, lbl_8006276C
    lbu     t2, 0x0057($sp)
    lbu     t8, 0x005B($sp)
    lbu     t0, 0x005F($sp)
    lbu     t7, 0x0063($sp)
    sll     t5, t2, 24
    sll     t6, t8, 16
    or      t9, t5, t6                 # t9 = E3001A01
    sll     t3, t0,  8
    or      t4, t9, t3                 # t4 = E3001A01
    lw      a0, 0x02D0(s0)             # 000002D0
    or      t8, t4, t7                 # t8 = E3001A31
    jal     func_8007E008
    sw      t8, 0x0020($sp)
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(v0)             # 00000000
    lw      t1, 0x0020($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    lui     t7, 0xE300                 # t7 = E3000000
    sw      t1, 0x0004(v0)             # 00000004
    lbu     t0, 0x0063($sp)
    bne     t0, $at, lbl_80062718
    lui     t6, 0xE300                 # t6 = E3000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t3, 0xE200                 # t3 = E2000000
    lui     t2, 0x0F0A                 # t2 = 0F0A0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    ori     t2, t2, 0x4000             # t2 = 0F0A4000
    ori     t3, t3, 0x001C             # t3 = E200001C
    sw      t3, 0x0000(v0)             # 00000000
    sw      t2, 0x0004(v0)             # 00000004
lbl_80062718:
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t7, t7, 0x1A01             # t7 = E3001A01
    addiu   t8, $zero, 0x0030          # t8 = 00000030
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    ori     t6, t6, 0x1801             # t6 = E3001801
    addiu   t1, $zero, 0x00C0          # t1 = 000000C0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t9, 0xF64F                 # t9 = F64F0000
    ori     t9, t9, 0xC3BC             # t9 = F64FC3BC
    addiu   t0, v0, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
lbl_8006276C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80062780:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      a1, 0x0094($sp)
    andi    a1, a1, 0x00FF             # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0090($sp)
    lw      t2, 0x0090($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    t2, t2, $at
    lbu     a3, 0x0B0B(t2)             # 00000B0B
    lbu     a2, 0x0B0C(t2)             # 00000B0C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      t0, a3, $zero              # t0 = 00000000
    beq     a1, $at, lbl_80062840
    or      t1, a2, $zero              # t1 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a1, $at, lbl_8006285C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     a1, $at, lbl_800627E0
    lw      t6, 0x0090($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     a1, $at, lbl_800628BC
    lw      v1, 0x008C($sp)
    b       lbl_800628E8
    lw      a1, 0x0088($sp)
lbl_800627E0:
    lh      t7, 0x00A4(t6)             # 000000A4
    addiu   $at, $zero, 0x005E         # $at = 0000005E
    lw      t9, 0x0090($sp)
    bne     t7, $at, lbl_8006281C
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    lb      t8, 0x1CBC(t2)             # 00001CBC
    slti    $at, a2, 0x0081
    bnel    t8, $zero, lbl_80062820
    lw      v1, 0x009C(t9)             # 0000009C
    bne     $at, $zero, lbl_80062814
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_800628E8
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80062814:
    b       lbl_800628E8
    sra     v1, a2,  1
lbl_8006281C:
    lw      v1, 0x009C(t9)             # 0000009C
lbl_80062820:
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    andi    v1, v1, 0x007F             # v1 = 0000007F
    slti    $at, v1, 0x0041
    bne     $at, $zero, lbl_80062838
    nop
    subu    v1, t6, v1
lbl_80062838:
    b       lbl_800628E8
    addiu   v1, v1, 0x0049             # v1 = 000000C8
lbl_80062840:
    slti    $at, a3, 0x00FF
    bne     $at, $zero, lbl_80062854
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    b       lbl_800628E8
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
lbl_80062854:
    b       lbl_800628E8
    addiu   a1, $zero, 0x0080          # a1 = 00000080
lbl_8006285C:
    slti    $at, a2, 0x0081
    bne     $at, $zero, lbl_80062870
    addiu   a1, $zero, 0x0080          # a1 = 00000080
    b       lbl_80062894
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_80062870:
    lw      t7, 0x0090($sp)
    addiu   t8, $zero, 0x0080          # t8 = 00000080
    lw      v1, 0x009C(t7)             # 0000009C
    andi    v1, v1, 0x007F             # v1 = 0000007F
    slti    $at, v1, 0x0041
    bnel    $at, $zero, lbl_80062894
    addiu   v1, v1, 0x0049             # v1 = 000000C8
    subu    v1, t8, v1
    addiu   v1, v1, 0x0049             # v1 = 00000111
lbl_80062894:
    slt     $at, v1, t0
    bne     $at, $zero, lbl_800628E8
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     v1, $at, lbl_800628E8
    lw      t6, 0x0090($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t6
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    b       lbl_800628E8
    sb      t9, 0x0B0A($at)            # 00010B0A
lbl_800628BC:
    slti    $at, a2, 0x0081
    bne     $at, $zero, lbl_800628D0
    or      a1, $zero, $zero           # a1 = 00000000
    b       lbl_800628D4
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
lbl_800628D0:
    sra     v1, a2,  1
lbl_800628D4:
    bne     t0, $zero, lbl_800628E8
    lw      t7, 0x0090($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t7
    sb      $zero, 0x0B0A($at)         # 00010B0A
lbl_800628E8:
    subu    a0, t0, v1
    bltz    a0, lbl_800628FC
    lw      t8, 0x0090($sp)
    b       lbl_80062900
    or      v0, a0, $zero              # v0 = 00000000
lbl_800628FC:
    subu    v0, $zero, a0
lbl_80062900:
    slti    $at, v0, 0x0009
    beql    $at, $zero, lbl_80062918
    slt     $at, v1, t0
    b       lbl_8006292C
    or      t0, v1, $zero              # t0 = 000000FF
    slt     $at, v1, t0
lbl_80062918:
    beql    $at, $zero, lbl_8006292C
    addiu   t0, t0, 0x0009             # t0 = 00000108
    b       lbl_8006292C
    addiu   t0, t0, 0xFFF7             # t0 = 000000FF
    addiu   t0, t0, 0x0009             # t0 = 00000108
lbl_8006292C:
    subu    v1, t1, a1
    bltz    v1, lbl_80062940
    subu    v0, $zero, v1
    b       lbl_80062940
    or      v0, v1, $zero              # v0 = 000000FF
lbl_80062940:
    slti    $at, v0, 0x0009
    beq     $at, $zero, lbl_80062954
    lui     v0, 0x800F                 # v0 = 800F0000
    b       lbl_8006296C
    or      t1, a1, $zero              # t1 = 00000000
lbl_80062954:
    slt     $at, a1, t1
    beql    $at, $zero, lbl_8006296C
    addiu   t1, t1, 0x0009             # t1 = 00000009
    b       lbl_8006296C
    addiu   t1, t1, 0xFFF7             # t1 = 00000000
    addiu   t1, t1, 0x0009             # t1 = 00000009
lbl_8006296C:
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f16                  # $f16 = 6.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t8
    sb      t0, 0x0B0B($at)            # 00010B0B
    addu    t6, t0, t1
    lw      t9, 0x0090($sp)
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, t9
    cvt.s.w $f8, $f6
    sb      t1, 0x0B0C($at)            # 00010B0C
    lui     $at, 0x4400                # $at = 44000000
    mtc1    $at, $f4                   # $f4 = 512.00
    lui     $at, 0x3CC0                # $at = 3CC00000
    mtc1    $at, $f18                  # $f18 = 0.02
    sub.s   $f10, $f4, $f8
    lui     v1, 0x800F                 # v1 = 800F0000
    addiu   v1, v1, 0x19E0             # v1 = 800F19E0
    addiu   v0, v0, 0x19D4             # v0 = 800F19D4
    mul.s   $f14, $f10, $f18
    c.lt.s  $f16, $f14
    nop
    bc1fl   lbl_800629D8
    sw      t2, 0x003C($sp)
    mov.s   $f14, $f16
    sw      t2, 0x003C($sp)
lbl_800629D8:
    lbu     t7, 0x0A42(t2)             # 00000A42
    bnel    t7, $zero, lbl_800629FC
    lbu     t1, 0x0003(v0)             # 800F19D7
    lbu     t8, 0x0AE3(t2)             # 00000AE3
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beq     t8, $at, lbl_80062A14
    nop
    sw      t2, 0x003C($sp)
    lbu     t1, 0x0003(v0)             # 800F19D7
lbl_800629FC:
    lbu     t2, 0x0004(v0)             # 800F19D8
    lbu     t3, 0x0005(v0)             # 800F19D9
    lbu     t4, 0x0003(v1)             # 800F19E3
    lbu     t5, 0x0004(v1)             # 800F19E4
    b       lbl_80062CD4
    lbu     $ra, 0x0005(v1)            # 800F19E5
lbl_80062A14:
    lui     t9, 0x800F                 # t9 = 800F0000
    lui     t0, 0x800F                 # t0 = 800F0000
    lbu     t0, 0x18DC(t0)             # 800F18DC
    lbu     t9, 0x18E0(t9)             # 800F18E0
    sw      t2, 0x003C($sp)
    bne     t9, t0, lbl_80062A6C
    sw      t9, 0x0038($sp)
    sll     a2, t0,  2
    subu    a2, a2, t0
    lui     t6, 0x800F                 # t6 = 800F0000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t6, t6, 0x19D4             # t6 = 800F19D4
    addiu   t7, t7, 0x19E0             # t7 = 800F19E0
    addu    v0, a2, t6
    addu    v1, a2, t7
    lbu     t1, 0x0000(v0)             # 800F19D4
    lbu     t2, 0x0001(v0)             # 800F19D5
    lbu     t3, 0x0002(v0)             # 800F19D6
    lbu     t4, 0x0000(v1)             # 800F19E0
    lbu     t5, 0x0001(v1)             # 800F19E1
    b       lbl_80062CD4
    lbu     $ra, 0x0002(v1)            # 800F19E2
lbl_80062A6C:
    lw      a3, 0x0038($sp)
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x19D4             # t8 = 800F19D4
    addu    $at, a3, $zero
    sll     a3, a3,  2
    subu    a3, a3, $at
    addu    a0, a3, t8
    lbu     t9, 0x0000(a0)             # 00000000
    lui     $at, 0x800F                # $at = 800F0000
    lwc1    $f0, 0x18E4($at)           # 800F18E4
    mtc1    t9, $f18                   # $f18 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    cvt.s.w $f8, $f18
    sll     a2, t0,  2
    subu    a2, a2, t0
    addu    v0, a2, t8
    bgez    t9, lbl_80062AC8
    sub.s   $f2, $f12, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80062AC8:
    lbu     t6, 0x0000(v0)             # 800F19D4
    mul.s   $f18, $f8, $f0
    mtc1    t6, $f6                    # $f6 = 0.00
    bgez    t6, lbl_80062AEC
    cvt.s.w $f4, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f4, $f4, $f10
lbl_80062AEC:
    mul.s   $f8, $f4, $f2
    lbu     t8, 0x0001(a0)             # 00000001
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f4                    # $f4 = 0.00
    add.s   $f6, $f18, $f8
    cvt.s.w $f18, $f4
    trunc.w.s $f10, $f6
    mfc1    t1, $f10
    bgez    t8, lbl_80062B20
    andi    t1, t1, 0x00FF             # t1 = 00000009
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f18, $f18, $f8
lbl_80062B20:
    lbu     t9, 0x0001(v0)             # 800F19D5
    mul.s   $f6, $f18, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f10                   # $f10 = 0.00
    bgez    t9, lbl_80062B44
    cvt.s.w $f4, $f10
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8
lbl_80062B44:
    mul.s   $f18, $f4, $f2
    lbu     t7, 0x0002(a0)             # 00000002
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    add.s   $f10, $f6, $f18
    cvt.s.w $f6, $f4
    trunc.w.s $f8, $f10
    mfc1    t2, $f8
    bgez    t7, lbl_80062B78
    andi    t2, t2, 0x00FF             # t2 = 00000000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f6, $f6, $f18
lbl_80062B78:
    lbu     t8, 0x0002(v0)             # 800F19D6
    mul.s   $f10, $f6, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f8                    # $f8 = 0.00
    bgez    t8, lbl_80062B9C
    cvt.s.w $f4, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f4, $f4, $f18
lbl_80062B9C:
    mul.s   $f6, $f4, $f2
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x19E0             # t6 = 800F19E0
    addu    a1, a3, t6
    lbu     t8, 0x0000(a1)             # 00000000
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x19E0             # t7 = 800F19E0
    add.s   $f8, $f10, $f6
    mtc1    t8, $f4                    # $f4 = 0.00
    addu    v1, a2, t7
    lui     $at, 0x4F80                # $at = 4F800000
    trunc.w.s $f18, $f8
    cvt.s.w $f10, $f4
    mfc1    t3, $f18
    bgez    t8, lbl_80062BE8
    andi    t3, t3, 0x00FF             # t3 = 00000000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f10, $f10, $f6
lbl_80062BE8:
    lbu     t9, 0x0000(v1)             # 800F19E0
    mul.s   $f8, $f10, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f18                   # $f18 = 0.00
    bgez    t9, lbl_80062C0C
    cvt.s.w $f4, $f18
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_80062C0C:
    mul.s   $f10, $f4, $f2
    lbu     t7, 0x0001(a1)             # 00000001
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f4                    # $f4 = 0.00
    add.s   $f18, $f8, $f10
    cvt.s.w $f8, $f4
    trunc.w.s $f6, $f18
    mfc1    t4, $f6
    bgez    t7, lbl_80062C40
    andi    t4, t4, 0x00FF             # t4 = 00000000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80062C40:
    lbu     t8, 0x0001(v1)             # 800F19E1
    mul.s   $f18, $f8, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f6                    # $f6 = 0.00
    bgez    t8, lbl_80062C64
    cvt.s.w $f4, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f4, $f4, $f10
lbl_80062C64:
    mul.s   $f8, $f4, $f2
    lbu     t6, 0x0002(a1)             # 00000002
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f4                    # $f4 = 0.00
    add.s   $f6, $f18, $f8
    cvt.s.w $f18, $f4
    trunc.w.s $f10, $f6
    mfc1    t5, $f10
    bgez    t6, lbl_80062C98
    andi    t5, t5, 0x00FF             # t5 = 00000000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f18, $f18, $f8
lbl_80062C98:
    lbu     t7, 0x0002(v1)             # 800F19E2
    mul.s   $f6, $f18, $f0
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f10                   # $f10 = 0.00
    bgez    t7, lbl_80062CBC
    cvt.s.w $f4, $f10
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f4, $f4, $f8
lbl_80062CBC:
    mul.s   $f18, $f4, $f2
    add.s   $f10, $f6, $f18
    trunc.w.s $f8, $f10
    mfc1    $ra, $f8
    nop
    andi    $ra, $ra, 0x00FF           # $ra = 00000000
lbl_80062CD4:
    mtc1    t4, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f12, 0x7A50($at)          # 80107A50
    sub.s   $f0, $f16, $f14
    lui     t8, 0x8012                 # t8 = 80120000
    bgez    t4, lbl_80062D00
    cvt.s.w $f6, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f6, $f6, $f18
lbl_80062D00:
    mtc1    t1, $f8                    # $f8 = 0.00
    mul.s   $f10, $f6, $f14
    bgez    t1, lbl_80062D20
    cvt.s.w $f4, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f4, $f4, $f18
lbl_80062D20:
    mul.s   $f6, $f0, $f4
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    add.s   $f8, $f10, $f6
    mul.s   $f18, $f8, $f12
    cfc1    t9, $f31
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beq     t4, $zero, lbl_80062D98
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t4, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80062D90
    nop
    mfc1    t4, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80062DA8
    or      t4, t4, $at                # t4 = 80000000
lbl_80062D90:
    b       lbl_80062DA8
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
lbl_80062D98:
    mfc1    t4, $f4
    nop
    bltz    t4, lbl_80062D90
    nop
lbl_80062DA8:
    ctc1    t9, $f31
    mtc1    t5, $f10                   # $f10 = 0.00
    andi    t4, t4, 0x00FF             # t4 = 000000FF
    bgez    t5, lbl_80062DCC
    cvt.s.w $f6, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80062DCC:
    mtc1    t2, $f4                    # $f4 = 0.00
    mul.s   $f18, $f6, $f14
    bgez    t2, lbl_80062DEC
    cvt.s.w $f10, $f4
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f10, $f10, $f8
lbl_80062DEC:
    mul.s   $f6, $f0, $f10
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    add.s   $f4, $f18, $f6
    mul.s   $f8, $f4, $f12
    cfc1    t6, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f10, $f8
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beq     t5, $zero, lbl_80062E64
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t5, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80062E5C
    nop
    mfc1    t5, $f10
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80062E74
    or      t5, t5, $at                # t5 = 80000000
lbl_80062E5C:
    b       lbl_80062E74
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
lbl_80062E64:
    mfc1    t5, $f10
    nop
    bltz    t5, lbl_80062E5C
    nop
lbl_80062E74:
    ctc1    t6, $f31
    mtc1    $ra, $f18                  # $f18 = 0.00
    andi    t5, t5, 0x00FF             # t5 = 000000FF
    bgez    $ra, lbl_80062E98
    cvt.s.w $f6, $f18
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f6, $f6, $f4
lbl_80062E98:
    mtc1    t3, $f10                   # $f10 = 0.00
    mul.s   $f8, $f6, $f14
    bgez    t3, lbl_80062EB8
    cvt.s.w $f18, $f10
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_80062EB8:
    mul.s   $f6, $f0, $f18
    addiu   $ra, $zero, 0x0001         # $ra = 00000001
    add.s   $f10, $f8, $f6
    mul.s   $f4, $f10, $f12
    cfc1    t7, $f31
    ctc1    $ra, $f31
    nop
    cvt.w.s $f18, $f4
    cfc1    $ra, $f31
    nop
    andi    $ra, $ra, 0x0078           # $ra = 00000000
    beq     $ra, $zero, lbl_80062F30
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   $ra, $zero, 0x0001         # $ra = 00000001
    sub.s   $f18, $f4, $f18
    ctc1    $ra, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    $ra, $f31
    nop
    andi    $ra, $ra, 0x0078           # $ra = 00000000
    bne     $ra, $zero, lbl_80062F28
    nop
    mfc1    $ra, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80062F40
    or      $ra, $ra, $at              # $ra = 80000000
lbl_80062F28:
    b       lbl_80062F40
    addiu   $ra, $zero, 0xFFFF         # $ra = FFFFFFFF
lbl_80062F30:
    mfc1    $ra, $f18
    nop
    bltz    $ra, lbl_80062F28
    nop
lbl_80062F40:
    ctc1    t7, $f31
    andi    $ra, $ra, 0x00FF           # $ra = 000000FF
    nop
    lhu     t8, -0x42D8(t8)            # 8011BD28
    mtc1    t8, $f8                    # $f8 = 0.00
    bgez    t8, lbl_80062F6C
    cvt.s.w $f2, $f8
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f2, $f2, $f6
lbl_80062F6C:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x7A54($at)          # 80107A54
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f8                   # $f8 = 1.50
    mul.s   $f4, $f2, $f10
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t7, 0x0090($sp)
    mul.s   $f6, $f2, $f8
    trunc.w.s $f18, $f4
    mtc1    $at, $f4                   # $f4 = 1.00
    trunc.w.s $f10, $f6
    mfc1    t6, $f18
    mul.s   $f18, $f2, $f4
    sh      t6, 0x006E($sp)
    mfc1    t8, $f10
    nop
    sh      t8, 0x006C($sp)
    trunc.w.s $f8, $f18
    mfc1    t6, $f8
    nop
    sh      t6, 0x006A($sp)
    lw      t0, 0x0000(t7)             # 800F19E0
    lw      a0, 0x02D0(t0)             # 800F02D0
    sb      $ra, 0x007A($sp)
    swc1    $f14, 0x0070($sp)
    sb      t5, 0x0079($sp)
    sb      t4, 0x0078($sp)
    sb      t3, 0x007E($sp)
    sb      t2, 0x007D($sp)
    sb      t1, 0x007C($sp)
    jal     func_8007E360
    sw      t0, 0x0064($sp)
    lw      t0, 0x0064($sp)
    lbu     t1, 0x007C($sp)
    lbu     t2, 0x007D($sp)
    lbu     t3, 0x007E($sp)
    lbu     t4, 0x0078($sp)
    lbu     t5, 0x0079($sp)
    lbu     $ra, 0x007A($sp)
    lwc1    $f14, 0x0070($sp)
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    lui     t9, 0xE300                 # t9 = E3000000
    ori     t9, t9, 0x1A01             # t9 = E3001A01
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    sw      t6, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t8, 0xE300                 # t8 = E3000000
    ori     t8, t8, 0x1801             # t8 = E3001801
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(t0)             # 000002D0
    addiu   t9, $zero, 0x0080          # t9 = 00000080
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x0080             # t7 = FA000080
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(t0)             # 000002D0
    andi    t6, t2, 0x00FF             # t6 = 00000000
    sw      t7, 0x0000(v1)             # 00000000
    sll     t7, t6, 16
    sll     t9, t1, 24
    or      t8, t9, t7                 # t8 = FA000080
    andi    t6, t3, 0x00FF             # t6 = 00000000
    sll     t9, t6,  8
    lw      t6, 0x003C($sp)
    or      t7, t8, t9                 # t7 = FA000080
    or      a1, $zero, $zero           # a1 = 00000000
    lbu     t9, 0x0B0B(t6)             # 00000B0B
    or      a3, $zero, $zero           # a3 = 00000000
    or      t6, t7, t9                 # t6 = FA000080
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t7, 0xFB00                 # t7 = FB000000
    sw      v1, 0x0050($sp)
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    lw      t9, 0x0050($sp)
    sll     t8, t4, 24
    sw      t7, 0x0000(t9)             # 00000080
    andi    t7, t5, 0x00FF             # t7 = 00000000
    sll     t9, t7, 16
    or      t6, t8, t9                 # t6 = 00000088
    andi    t7, $ra, 0x00FF            # t7 = 000000FF
    sll     t8, t7,  8
    lw      t7, 0x003C($sp)
    or      t9, t6, t8                 # t9 = 00000088
    lw      t6, 0x0050($sp)
    lbu     t8, 0x0B0C(t7)             # 00000C0B
    or      t7, t9, t8                 # t7 = 00000088
    sw      t7, 0x0004(t6)             # 0000008C
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t7, 0x0090($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t6, $zero, 0x0200          # t6 = 00000200
    lw      a0, 0x0000(t7)             # 00000088
    lhu     t7, 0x006C($sp)
    sw      t9, 0x0014($sp)
    lhu     t9, 0x006A($sp)
    sw      t6, 0x0010($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    t6, t7, 0x0FFF             # t6 = 00000088
    sw      t8, 0x0018($sp)
    sw      t6, 0x001C($sp)
    addiu   t7, $zero, 0x0FFF          # t7 = 00000FFF
    andi    t8, t9, 0x0FFF             # t8 = 00000020
    lhu     a2, 0x006E($sp)
    subu    t6, t7, t8
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t9, $zero, 0x0100          # t9 = 00000100
    sw      t9, 0x0024($sp)
    sw      t7, 0x0028($sp)
    sw      t6, 0x0020($sp)
    swc1    $f14, 0x0070($sp)
    sw      t0, 0x0064($sp)
    sw      v1, 0x004C($sp)
    jal     func_8007EB84
    andi    a2, a2, 0x0FFF             # a2 = 00000000
    lw      t1, 0x004C($sp)
    lw      t0, 0x0064($sp)
    lwc1    $f14, 0x0070($sp)
    sw      v0, 0x0004(t1)             # 00000004
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t6, 0xE300                 # t6 = E3000000
    ori     t6, t6, 0x1001             # t6 = E3001001
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(t0)             # 000002D0
    lui     t8, 0x0501                 # t8 = 05010000
    addiu   t8, t8, 0xCA70             # t8 = 0500CA70
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(t0)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xBD28             # v0 = 8011BD28
    trunc.w.s $f6, $f14
    lhu     t6, 0x0000(v0)             # 8011BD28
    mfc1    t7, $f6
    nop
    addu    t8, t6, t7
    sh      t8, 0x0000(v0)             # 8011BD28
    lw      $ra, 0x0034($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_800631D8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a2, 0x0030($sp)
    mtc1    a1, $f12                   # $f12 = 0.00
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a3, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a2, $at
    lbu     t6, 0x1CBF(v1)             # 00001CBF
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, a2, $zero              # a0 = 00000000
    beql    t6, $at, lbl_800633F8
    lw      $ra, 0x0014($sp)
    sw      v1, 0x001C($sp)
    sw      a2, 0x0028($sp)
    jal     func_8009DAE4
    swc1    $f12, 0x002C($sp)
    lw      v1, 0x001C($sp)
    lw      a2, 0x0028($sp)
    lwc1    $f2, 0x0034($sp)
    beq     v0, $zero, lbl_800633F4
    lwc1    $f12, 0x002C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    c.lt.s  $f12, $f16
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    bc1fl   lbl_8006325C
    c.lt.s  $f14, $f12
    mov.s   $f12, $f16
    c.lt.s  $f14, $f12
lbl_8006325C:
    nop
    bc1fl   lbl_80063270
    c.lt.s  $f12, $f2
    mov.s   $f12, $f14
    c.lt.s  $f12, $f2
lbl_80063270:
    sub.s   $f0, $f12, $f2
    bc1fl   lbl_80063284
    lh      t7, 0x0AF6(v1)             # 00000AF6
    mov.s   $f0, $f16
    lh      t7, 0x0AF6(v1)             # 00000AF6
lbl_80063284:
    lwc1    $f4, 0x0030($sp)
    c.eq.s  $f12, $f16
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    cvt.s.w $f8, $f6
    sub.s   $f10, $f4, $f8
    mul.s   $f18, $f10, $f0
    trunc.w.s $f6, $f18
    mfc1    t9, $f6
    bc1f    lbl_800632DC
    sh      t9, 0x0AC2($at)            # 00010AC2
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a2, $at
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
lbl_800632C4:
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0x0002             # v1 = 00000002
    bne     a0, a1, lbl_800632C4
    sh      $zero, 0x0ABA(v1)          # 00000ABC
    b       lbl_80063354
    lwc1    $f0, 0x0038($sp)
lbl_800632DC:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a2, $at
    mul.s   $f0, $f12, $f4
    addu    v0, a2, $at
    c.lt.s  $f14, $f0
    nop
    bc1f    lbl_80063308
    nop
    mov.s   $f0, $f14
lbl_80063308:
    lbu     t0, 0x0AF3(v0)             # 00000AF3
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f8                    # $f8 = 0.00
    bgez    t0, lbl_80063328
    cvt.s.w $f10, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_80063328:
    mul.s   $f6, $f10, $f0
    addiu   a0, a0, 0x0001             # a0 = 00000002
    addiu   v1, v1, 0x0002             # v1 = 00000004
    addiu   v0, v0, 0x0001             # v0 = 00000001
    trunc.w.s $f4, $f6
    mfc1    t4, $f4
    nop
    subu    t5, $zero, t4
    bne     a0, a1, lbl_80063308
    sh      t5, 0x0ABA(v1)             # 00000ABE
    lwc1    $f0, 0x0038($sp)
lbl_80063354:
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a2, $at
    c.le.s  $f0, $f16
    or      a0, $zero, $zero           # a0 = 00000000
    bc1tl   lbl_800633F8
    lw      $ra, 0x0014($sp)
    mul.s   $f12, $f12, $f0
    addu    v0, a2, $at
lbl_80063374:
    lbu     t6, 0x0AE4(v0)             # 00000AE5
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t6, $f8                    # $f8 = 0.00
    bgez    t6, lbl_80063394
    cvt.s.w $f18, $f8
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f18, $f18, $f10
lbl_80063394:
    mul.s   $f6, $f18, $f12
    lui     $at, 0x4F80                # $at = 4F800000
    trunc.w.s $f4, $f6
    mfc1    t0, $f4
    nop
    subu    t1, $zero, t0
    sh      t1, 0x0AB0(v1)             # 00000AB4
    lbu     t2, 0x0AEA(v0)             # 00000AEB
    mtc1    t2, $f8                    # $f8 = 0.00
    bgez    t2, lbl_800633CC
    cvt.s.w $f10, $f8
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f10, $f10, $f18
lbl_800633CC:
    mul.s   $f6, $f10, $f12
    addiu   a0, a0, 0x0001             # a0 = 00000001
    addiu   v1, v1, 0x0002             # v1 = 00000006
    addiu   v0, v0, 0x0001             # v0 = 00000002
    trunc.w.s $f4, $f6
    mfc1    t6, $f4
    nop
    subu    t7, $zero, t6
    bne     a0, a1, lbl_80063374
    sh      t7, 0x0AB4(v1)             # 00000ABA
lbl_800633F4:
    lw      $ra, 0x0014($sp)
lbl_800633F8:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80063404:
# Return s32 at 8011A5E8 (Event Days)
# V0 = s32 at 8011A5E8
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A18(v0)            # 8011A5E8
    jr      $ra
    nop


func_80063414:
# Zero s32 at 8011A5E8 (Event Days)
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x5A18($at)        # 8011A5E8
    jr      $ra
    nop


func_80063424:
# Return s32 at 8011A5E4 (Days Passed)
# V0 = s32 at 8011A5E4
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x5A1C(v0)            # 8011A5E4
    jr      $ra
    nop


func_80063434:
# Update Background Music
# A0 = s32? value to write to 8011B9DE
    sw      a0, 0x0000($sp)
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    lui     $at, 0x8012                # $at = 80120000
    sh      a0, -0x4622($at)           # 8011B9DE
    jr      $ra
    nop


func_8006344C:
# Test if Background Music should change
# V0 = 1 if 8011B9DE == 0xFFFF, else 0
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4622(t6)            # 8011B9DE
    ori     $at, $zero, 0xFFFF         # $at = 0000FFFF
    or      v1, $zero, $zero           # v1 = 00000000
    bnel    t6, $at, lbl_8006346C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v0, v1, $zero              # v0 = 00000001
lbl_8006346C:
    jr      $ra
    nop


func_80063474:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     a1, 0x07A5(a0)             # 000007A5
    addiu   $at, $zero, 0x0013         # $at = 00000013
    bne     a1, $at, lbl_8006349C
    nop
    jal     func_800C7C90
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    b       lbl_800634A8
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
lbl_8006349C:
    jal     func_800C7C90
    andi    a0, a1, 0x00FF             # a0 = 00000000
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
lbl_800634A8:
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800634D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800C7A78
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800CAB18
    or      a0, $zero, $zero           # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80063524
    addiu   t6, $zero, 0x0080          # t6 = 00000080
    lui     $at, 0x8012                # $at = 80120000
    sb      t6, -0x4650($at)           # 8011B9B0
    jal     func_800617DC
    lw      a0, 0x0018($sp)
lbl_80063524:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80063534:
# Update Next Spawn (Warp Songs)
# Copies entrance index from "grotto" portion of zoneout spawns
# A0 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, 0x1640($at)         # 800F1640
    lh      t7, 0x1394(v0)             # 8011B964
    addiu   t6, $zero, 0xFFFD          # t6 = FFFFFFFD
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x0008(v0)          # 8011A5D8
    sw      t6, 0x1364(v0)             # 8011B934
    addu    $at, $at, a0
    sh      t7, 0x1E1A($at)            # 00011E1A
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t8, $zero, 0x0014          # t8 = 00000014
    sb      t8, 0x1E15($at)            # 00011E15
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sb      a1, 0x1E5E($at)            # 00011E5E
    lui     v1, 0x0001                 # v1 = 00010000
    sb      a1, 0x141D(v0)             # 8011B9ED
    addu    v1, v1, a0
    lh      v1, 0x1E1A(v1)             # 00011E1A
    addiu   $at, $zero, 0x0053         # $at = 00000053
    beq     v1, $at, lbl_8006360C
    addiu   $at, $zero, 0x00E4         # $at = 000000E4
    beq     v1, $at, lbl_800635FC
    addiu   $at, $zero, 0x00FC         # $at = 000000FC
    beq     v1, $at, lbl_80063614
    addiu   $at, $zero, 0x0102         # $at = 00000102
    beq     v1, $at, lbl_800635DC
    addiu   $at, $zero, 0x0123         # $at = 00000123
    beq     v1, $at, lbl_800635EC
    addiu   $at, $zero, 0x0147         # $at = 00000147
    bnel    v1, $at, lbl_80063618
    lw      $ra, 0x0014($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x00B9          # a0 = 000000B9
    b       lbl_80063618
    lw      $ra, 0x0014($sp)
lbl_800635DC:
    jal     func_800288E0
    addiu   a0, $zero, 0x00B1          # a0 = 000000B1
    b       lbl_80063618
    lw      $ra, 0x0014($sp)
lbl_800635EC:
    jal     func_800288E0
    addiu   a0, $zero, 0x00B8          # a0 = 000000B8
    b       lbl_80063618
    lw      $ra, 0x0014($sp)
lbl_800635FC:
    jal     func_800288E0
    addiu   a0, $zero, 0x00B6          # a0 = 000000B6
    b       lbl_80063618
    lw      $ra, 0x0014($sp)
lbl_8006360C:
    jal     func_800288E0
    addiu   a0, $zero, 0x00A7          # a0 = 000000A7
lbl_80063614:
    lw      $ra, 0x0014($sp)
lbl_80063618:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
    nop
