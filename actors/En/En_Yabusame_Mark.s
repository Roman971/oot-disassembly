.section .text
func_80A880E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004B8A8
    addiu   a1, a2, 0x0180             # a1 = 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80A8810C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t8, 0x001C(a2)             # 0000001C
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sh      t8, 0x0140(a2)             # 00000140
    lh      v0, 0x0140(a2)             # 00000140
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    and     t7, t6, $at
    sw      t7, 0x0004(a2)             # 00000004
    beq     v0, $zero, lbl_80A88160
    sb      t9, 0x001F(a2)             # 0000001F
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A88188
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A881B4
    addiu   t3, $zero, 0x0004          # t3 = 00000004
    b       lbl_80A881BC
    addiu   a1, a2, 0x0180             # a1 = 00000180
lbl_80A88160:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x002C(a2)            # 0000002C
    sh      $zero, 0x0142(a2)          # 00000142
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A881BC
    addiu   a1, a2, 0x0180             # a1 = 00000180
    b       lbl_80A881B8
    sh      t0, 0x0142(a2)             # 00000142
lbl_80A88188:
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f10                  # $f10 = -2000.00
    lwc1    $f8, 0x002C(a2)            # 0000002C
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    sh      t1, 0x0142(a2)             # 00000142
    c.lt.s  $f8, $f10
    addiu   t2, $zero, 0x0003          # t2 = 00000003
    bc1fl   lbl_80A881BC
    addiu   a1, a2, 0x0180             # a1 = 00000180
    b       lbl_80A881B8
    sh      t2, 0x0142(a2)             # 00000142
lbl_80A881B4:
    sh      t3, 0x0142(a2)             # 00000142
lbl_80A881B8:
    addiu   a1, a2, 0x0180             # a1 = 00000180
lbl_80A881BC:
    sw      a1, 0x001C($sp)
    lw      a0, 0x002C($sp)
    jal     func_8004B858
    sw      a2, 0x0028($sp)
    lui     a3, %hi(var_80A885C0)      # a3 = 80A90000
    lw      a1, 0x001C($sp)
    lw      a2, 0x0028($sp)
    addiu   a3, a3, %lo(var_80A885C0)  # a3 = 80A885C0
    jal     func_8004B960
    lw      a0, 0x002C($sp)
    lw      a2, 0x0028($sp)
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lw      t5, 0x0024(a2)             # 00000024
    lw      t6, 0x0004(a2)             # 00000004
    lw      t4, 0x0028(a2)             # 00000028
    sw      t5, 0x0144(a2)             # 00000144
    lw      t5, 0x002C(a2)             # 0000002C
    ori     t7, t6, 0x0010             # t7 = 00000010
    sw      t7, 0x0004(a2)             # 00000004
    sw      t4, 0x0148(a2)             # 00000148
    sw      t5, 0x014C(a2)             # 0000014C
    lw      t8, -0x46D0(t8)            # 8011B930
    lui     t9, %hi(func_80A8824C)     # t9 = 80A90000
    addiu   t9, t9, %lo(func_80A8824C) # t9 = 80A8824C
    beql    t8, $at, lbl_80A8823C
    sw      t9, 0x013C(a2)             # 0000013C
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_80A88240
    lw      $ra, 0x0014($sp)
    sw      t9, 0x013C(a2)             # 0000013C
lbl_80A8823C:
    lw      $ra, 0x0014($sp)
lbl_80A88240:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80A8824C:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0068($sp)
    sw      a1, 0x006C($sp)
    lui     t7, %hi(var_80A8872C)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A8872C)  # t7 = 80A8872C
    lw      t9, 0x0000(t7)             # 80A8872C
    addiu   t6, $sp, 0x005C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80A88730
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80A88734
    lui     t2, %hi(var_80A88738)      # t2 = 80A90000
    addiu   t2, t2, %lo(var_80A88738)  # t2 = 80A88738
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t4, 0x0000(t2)             # 80A88738
    addiu   t1, $sp, 0x0050            # t1 = FFFFFFE8
    lw      t3, 0x0004(t2)             # 80A8873C
    sw      t4, 0x0000(t1)             # FFFFFFE8
    lw      t4, 0x0008(t2)             # 80A88740
    sw      t3, 0x0004(t1)             # FFFFFFEC
    sw      t4, 0x0008(t1)             # FFFFFFF0
    lw      t5, 0x0068($sp)
    lbu     v0, 0x0191(t5)             # 00000191
    andi    t6, v0, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80A88480
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sb      t7, 0x0191(t5)             # 00000191
    lw      t8, 0x0068($sp)
    lui     $at, 0x4170                # $at = 41700000
    lw      a0, 0x006C($sp)
    lh      t9, 0x01A6(t8)             # 000001A6
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x02BC          # a2 = 000002BC
    mtc1    t9, $f4                    # $f4 = 0.00
    addiu   a3, $sp, 0x0044            # a3 = FFFFFFDC
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0044($sp)
    lh      t1, 0x01A8(t8)             # 000001A8
    mtc1    t1, $f8                    # $f8 = NaN
    nop
    cvt.s.w $f10, $f8
    mtc1    $at, $f8                   # $f8 = 15.00
    swc1    $f10, 0x0048($sp)
    lh      t2, 0x01AA(t8)             # 000001AA
    swc1    $f8, 0x0054($sp)
    mtc1    t2, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    jal     func_8001D7CC
    swc1    $f6, 0x004C($sp)
    lw      a0, 0x0068($sp)
    lui     t1, %hi(var_80A886C0)      # t1 = 80A90000
    addiu   t1, t1, %lo(var_80A886C0)  # t1 = 80A886C0
    lh      t5, 0x0142(a0)             # 00000142
    lwc1    $f4, 0x0044($sp)
    lh      t4, 0x0140(a0)             # 00000140
    sll     t9, t5,  2
    subu    t9, t9, t5
    sll     t9, t9,  2
    addu    v1, t9, t1
    lwc1    $f10, 0x0000(v1)           # 00000000
    lwc1    $f6, 0x0004(v1)            # 00000004
    lwc1    $f8, 0x0048($sp)
    sub.s   $f0, $f10, $f4
    lui     t7, %hi(var_80A886FC)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A886FC)  # t7 = 80A886FC
    sll     t6, t4,  4
    abs.s   $f16, $f0
    sub.s   $f0, $f6, $f8
    addu    v0, t6, t7
    lwc1    $f2, 0x0000(v0)            # 00000000
    lwc1    $f4, 0x004C($sp)
    lwc1    $f10, 0x0008(v1)           # 00000008
    c.lt.s  $f2, $f16
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    abs.s   $f18, $f0
    sub.s   $f0, $f10, $f4
    lwc1    $f12, 0x0004(v0)           # 00000004
    lwc1    $f14, 0x0008(v0)           # 00000008
    bc1t    lbl_80A883B4
    abs.s   $f0, $f0
    c.lt.s  $f2, $f18
    nop
    bc1tl   lbl_80A883B8
    c.lt.s  $f12, $f16
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80A88418
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A883B4:
    c.lt.s  $f12, $f16
lbl_80A883B8:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bc1tl   lbl_80A883E8
    or      t0, $zero, $zero           # t0 = 00000000
    c.lt.s  $f12, $f18
    nop
    bc1tl   lbl_80A883E8
    or      t0, $zero, $zero           # t0 = 00000000
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_80A883EC
    c.lt.s  $f14, $f16
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80A883E8:
    c.lt.s  $f14, $f16
lbl_80A883EC:
    nop
    bc1tl   lbl_80A88484
    lw      $ra, 0x001C($sp)
    c.lt.s  $f14, $f18
    nop
    bc1tl   lbl_80A88484
    lw      $ra, 0x001C($sp)
    c.lt.s  $f14, $f0
    nop
    bc1t    lbl_80A88480
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A88418:
    bne     t0, $at, lbl_80A8842C
    addiu   a0, $zero, 0x0922          # a0 = 00000922
    jal     func_800C69A0
    sw      t0, 0x0030($sp)
    lw      t0, 0x0030($sp)
lbl_80A8842C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t0, $at, lbl_80A8844C
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    jal     func_800C9884
    sw      t0, 0x0030($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lw      t0, 0x0030($sp)
lbl_80A8844C:
    bne     t0, $zero, lbl_80A88460
    addiu   a0, $zero, 0x4808          # a0 = 00004808
    jal     func_800646F0
    sw      t0, 0x0030($sp)
    lw      t0, 0x0030($sp)
lbl_80A88460:
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0010($sp)
    lw      a0, 0x006C($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFDC
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x005C            # a3 = FFFFFFF4
    jal     func_8001E110
    sw      t0, 0x0014($sp)
lbl_80A88480:
    lw      $ra, 0x001C($sp)
lbl_80A88484:
    addiu   $sp, $sp, 0x0068           # $sp += 0x68
    jr      $ra
    nop


func_80A88490:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jalr    $ra, t9
    nop
    lh      v1, 0x0140(s0)             # 00000140
    lui     t7, %hi(var_80A88630)      # t7 = 80A90000
    addiu   t7, t7, %lo(var_80A88630)  # t7 = 80A88630
    sll     v1, v1,  2
    sll     t6, v1,  2
    subu    t6, t6, v1
    sll     t6, t6,  2
    addu    v0, t6, t7
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f0, 0x0028(s0)            # 00000028
    lwc1    $f2, 0x002C(s0)            # 0000002C
    add.s   $f6, $f4, $f12
    addiu   a0, s0, 0x0180             # a0 = 00000180
    addiu   t8, s0, 0x0174             # t8 = 00000174
    addiu   a1, s0, 0x0150             # a1 = 00000150
    swc1    $f6, 0x0150(s0)            # 00000150
    lwc1    $f8, 0x0004(v0)            # 00000004
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    addiu   a3, s0, 0x0168             # a3 = 00000168
    add.s   $f10, $f8, $f0
    swc1    $f10, 0x0154(s0)           # 00000154
    lwc1    $f16, 0x0008(v0)           # 00000008
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0158(s0)           # 00000158
    lwc1    $f4, 0x000C(v0)            # 0000000C
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x015C(s0)            # 0000015C
    lwc1    $f8, 0x0010(v0)            # 00000010
    add.s   $f10, $f8, $f0
    swc1    $f10, 0x0160(s0)           # 00000160
    lwc1    $f16, 0x0014(v0)           # 00000014
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0164(s0)           # 00000164
    lwc1    $f4, 0x0018(v0)            # 00000018
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0168(s0)            # 00000168
    lwc1    $f8, 0x001C(v0)            # 0000001C
    add.s   $f10, $f8, $f0
    swc1    $f10, 0x016C(s0)           # 0000016C
    lwc1    $f16, 0x0020(v0)           # 00000020
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0170(s0)           # 00000170
    lwc1    $f4, 0x0024(v0)            # 00000024
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0174(s0)            # 00000174
    lwc1    $f8, 0x0028(v0)            # 00000028
    add.s   $f10, $f8, $f0
    swc1    $f10, 0x0178(s0)           # 00000178
    lwc1    $f16, 0x002C(v0)           # 0000002C
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x017C(s0)           # 0000017C
    sw      a0, 0x002C($sp)
    jal     func_80050B64
    sw      t8, 0x0010($sp)
    lw      a0, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop

.section .data

var_80A885C0: .word \
0x0A000900, 0x20030000, 0x00000000, 0x00000000, \
0x00000000, 0x0001F824, 0x00000000, 0x00010000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000
var_80A88610: .word 0x012F0600, 0x00000000, 0x00010000, 0x00000200
.word func_80A8810C
.word func_80A880E0
.word func_80A88490
.word 0x00000000
var_80A88630: .word \
0x428C0000, 0x428C0000, 0x00000000, 0x428C0000, \
0xC28C0000, 0x00000000, 0xC28C0000, 0x428C0000, \
0x00000000, 0xC28C0000, 0xC28C0000, 0x00000000, \
0x42B40000, 0x43020000, 0xC2F00000, 0xC1C80000, \
0xC2A00000, 0xC3020000, 0x42B40000, 0x43020000, \
0x42F00000, 0xC1C80000, 0xC2A00000, 0x43020000, \
0x42E60000, 0x43200000, 0xC3160000, 0xC2480000, \
0xC30C0000, 0xC3200000, 0x42E60000, 0x43200000, \
0x43160000, 0xC2480000, 0xC30C0000, 0x43200000
var_80A886C0: .word \
0x45536000, 0x44D8C000, 0xC59A9000, 0x45520000, \
0x44D8C000, 0x43F78000, 0x458D2800, 0x44D24000, \
0xC4DE6000, 0x458D2800, 0x44D24000, 0xC52FD000, \
0x458D5000, 0x44D7E000, 0xC50F8000
var_80A886FC: .word \
0x41A00000, 0x42200000, 0x42700000, 0x44424000, \
0x42200000, 0x42A00000, 0x42F00000, 0x44424000, \
0x42200000, 0x42F00000, 0x43200000, 0x44424000
var_80A8872C: .word 0x00000000, 0x00000000, 0x00000000
var_80A88738: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata


