# "Actor" part of the code file
#
# Handles the constuction, destruction, allocation and monitoring of Actors.
#
# General Documentation about actors:
# https://wiki.cloudmodding.com/oot/Actors
#
# Starts at VRAM: 8001EC20 / VROM: A94B80
#

.section .text
func_8001EC20:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    swc1    $f12, 0x0008(a0)           # 00000008
    sw      a2, 0x000C(a0)             # 0000000C
    swc1    $f14, 0x0010(a0)           # 00000010
    sb      t6, 0x0014(a0)             # 00000014
    jr      $ra
    nop


func_8001EC44:
# gameplay_keep d. list: Circular Shadow
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x009C($sp)
    sw      a2, 0x00A0($sp)
    sw      a3, 0x00A4($sp)
    lw      t6, 0x0078(s0)             # 00000078
    beql    t6, $zero, lbl_8001EFE4
    lw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0080(s0)            # 00000080
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f8                   # $f8 = -50.00
    sub.s   $f0, $f4, $f6
    lui     $at, 0x43FA                # $at = 43FA0000
    c.le.s  $f8, $f0
    nop
    bc1fl   lbl_8001EFE4
    lw      $ra, 0x0024($sp)
    mtc1    $at, $f10                  # $f10 = 500.00
    lw      t7, 0x00A0($sp)
    c.lt.s  $f0, $f10
    nop
    bc1fl   lbl_8001EFE4
    lw      $ra, 0x0024($sp)
    lw      s1, 0x0000(t7)             # 00000000
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    lw      a0, 0x02C0(s1)             # 000002C0
    jal     func_8007DFBC
    swc1    $f0, 0x0094($sp)
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0094($sp)
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFCFF                 # t9 = FCFF0000
    lui     t0, 0xFFFD                 # t0 = FFFD0000
    ori     t0, t0, 0xFE38             # t0 = FFFDFE38
    ori     t9, t9, 0x97FF             # t9 = FCFF97FF
    sw      t9, 0x0000(v0)             # 00000000
    sw      t0, 0x0004(v0)             # 00000004
    c.lt.s  $f0, $f2
    lui     $at, 0x4316                # $at = 43160000
    bc1fl   lbl_8001ED08
    mtc1    $at, $f12                  # $f12 = 150.00
    b       lbl_8001ED2C
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = 150.00
lbl_8001ED08:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8001ED28
    mov.s   $f2, $f0
    b       lbl_8001ED28
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_8001ED28:
    mov.s   $f0, $f2
lbl_8001ED2C:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6470($at)          # 80106470
    lw      a0, 0x00A8($sp)
    mul.s   $f4, $f0, $f18
    sub.s   $f12, $f16, $f4
    beq     a0, $zero, lbl_8001EE40
    mov.s   $f2, $f12
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xFA00                 # t2 = FA000000
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(v0)             # 00000000
    lbu     t4, 0x0000(a0)             # 00000000
    lbu     t7, 0x0001(a0)             # 00000001
    lbu     t1, 0x0002(a0)             # 00000002
    sll     t5, t4, 24
    lbu     t4, 0x00C8(s0)             # 000000C8
    sll     t8, t7, 16
    or      t9, t5, t8                 # t9 = 00000008
    mtc1    t4, $f6                    # $f6 = 0.00
    sll     t2, t1,  8
    or      t3, t9, t2                 # t3 = FA000008
    bgez    t4, lbl_8001EDA4
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_8001EDA4:
    mul.s   $f18, $f8, $f2
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f18
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8001EE1C
    mfc1    t7, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f16, $f18, $f16
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8001EE10
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8001EE28
    or      t7, t7, $at                # t7 = 80000000
lbl_8001EE10:
    b       lbl_8001EE28
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f16
lbl_8001EE1C:
    nop
    bltz    t7, lbl_8001EE10
    nop
lbl_8001EE28:
    andi    t8, t7, 0x00FF             # t8 = 000000FF
    ctc1    t6, $f31
    or      t0, t3, t8                 # t0 = FA0000FF
    sw      t0, 0x0004(v0)             # 00000004
    b       lbl_8001EF08
    lw      a0, 0x0078(s0)             # 00000078
lbl_8001EE40:
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lbu     t2, 0x00C8(s0)             # 000000C8
    mtc1    t2, $f4                    # $f4 = -166153500000000000000000000000000000.00
    bgez    t2, lbl_8001EE74
    cvt.s.w $f6, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_8001EE74:
    mul.s   $f8, $f6, $f2
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t4, $f31
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f8
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_8001EEEC
    mfc1    t6, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f18, $f8, $f18
    ctc1    t6, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_8001EEE0
    nop
    mfc1    t6, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8001EEF8
    or      t6, t6, $at                # t6 = 80000000
lbl_8001EEE0:
    b       lbl_8001EEF8
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f18
lbl_8001EEEC:
    nop
    bltz    t6, lbl_8001EEE0
    nop
lbl_8001EEF8:
    ctc1    t4, $f31
    andi    t5, t6, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v0)             # 00000004
    lw      a0, 0x0078(s0)             # 00000078
lbl_8001EF08:
    lw      a1, 0x0024(s0)             # 00000024
    lw      a2, 0x0080(s0)             # 00000080
    lw      a3, 0x002C(s0)             # 0000002C
    addiu   t3, $sp, 0x0050            # t3 = FFFFFFB8
    sw      t3, 0x0010($sp)
    jal     func_8002B668
    swc1    $f12, 0x002C($sp)
    jal     func_800AA764
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFB8
    lw      t8, 0x00A4($sp)
    lui     t0, 0x0405                 # t0 = 04050000
    addiu   t0, t0, 0xE740             # t0 = 0404E740
    beql    t8, t0, lbl_8001EF68
    lwc1    $f6, 0x002C($sp)
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x6474($at)          # 80106474
    mtc1    t1, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f4, $f16
    mul.s   $f12, $f4, $f10
    jal     func_800AAB94
    nop
    lwc1    $f6, 0x002C($sp)
lbl_8001EF68:
    lwc1    $f8, 0x00C4(s0)            # 000000C4
    lwc1    $f18, 0x0050(s0)           # 00000050
    lwc1    $f16, 0x0058(s0)           # 00000058
    mul.s   $f2, $f6, $f8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f18, $f2
    nop
    mul.s   $f4, $f16, $f2
    mfc1    a2, $f4
    jal     func_800AA8FC
    nop
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t4, 0x00A0($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t4)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t5, 0x00A4($sp)
    sw      t5, 0x0004(v1)             # 00000004
    lw      $ra, 0x0024($sp)
lbl_8001EFE4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_8001EFF4:
# Draw Drop Shadow (Wrapper for 8001EC44)
# (Used by En_Item00, Heart Piece)
# gameplay_keep d. list: Circular Shadow
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a3, 0x0405                 # a3 = 04050000
    addiu   a3, a3, 0xE740             # a3 = 0404E740
    jal     func_8001EC44
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8001F01C:
# gameplay_keep d. list: Circular Shadow
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8210             # t6 = 800E8210
    lui     a3, 0x0405                 # a3 = 04050000
    addiu   a3, a3, 0xE740             # a3 = 0404E740
    jal     func_8001EC44
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8001F04C:
# gameplay_keep d. list: Squiggly Shadow
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     a3, 0x0405                 # a3 = 04050000
    addiu   a3, a3, 0xF000             # a3 = 0404F000
    jal     func_8001EC44
    sw      $zero, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8001F074:
# gameplay_keep d. list: Teardrop Shadow
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    sw      a2, 0x0048($sp)
    lw      t6, 0x0040($sp)
    mtc1    a3, $f4                    # $f4 = 0.00
    lui     t8, 0xFA00                 # t8 = FA000000
    lw      s0, 0x0000(t6)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    cvt.s.w $f6, $f4
    lui     $at, 0x8010                # $at = 80100000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v0)             # 00000000
    lwc1    $f8, 0x6478($at)           # 80106478
    lwc1    $f10, 0x0050($sp)
    mul.s   $f0, $f6, $f8
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_8001F0E0
    mov.s   $f2, $f0
    b       lbl_8001F0E0
    mov.s   $f2, $f16
    mov.s   $f2, $f0
lbl_8001F0E0:
    mul.s   $f18, $f2, $f10
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f4, $f18
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beq     t0, $zero, lbl_8001F150
    lui     $at, 0x4F00                # $at = 4F000000
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f4, $f18, $f4
    ctc1    t0, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_8001F148
    nop
    mfc1    t0, $f4
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8001F160
    or      t0, t0, $at                # t0 = 80000000
lbl_8001F148:
    b       lbl_8001F160
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
lbl_8001F150:
    mfc1    t0, $f4
    nop
    bltz    t0, lbl_8001F148
    nop
lbl_8001F160:
    ctc1    t9, $f31
    andi    t2, t0, 0x00FF             # t2 = 000000FF
    sw      t2, 0x0004(v0)             # 00000004
    lb      t3, 0x0008(a1)             # 00000008
    lb      t4, 0x000A(a1)             # 0000000A
    sw      a1, 0x0044($sp)
    mtc1    t3, $f6                    # $f6 = 0.00
    mtc1    t4, $f8                    # $f8 = 0.00
    cvt.s.w $f12, $f6
    jal     func_800CD76C
    cvt.s.w $f14, $f8
    lw      a1, 0x0044($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lb      t5, 0x0009(a1)             # 00000009
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x647C($at)           # 8010647C
    mtc1    t5, $f10                   # $f10 = 0.00
    lui     $at, 0x4090                # $at = 40900000
    mtc1    $at, $f8                   # $f8 = 4.50
    cvt.s.w $f18, $f10
    lwc1    $f2, 0x0058($sp)
    mov.s   $f12, $f0
    lw      a0, 0x0048($sp)
    mul.s   $f6, $f18, $f4
    sub.s   $f10, $f8, $f6
    mul.s   $f2, $f2, $f10
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_8001F1E4
    swc1    $f2, 0x0058($sp)
    mov.s   $f2, $f14
    swc1    $f2, 0x0058($sp)
lbl_8001F1E4:
    jal     func_800AA764
    swc1    $f12, 0x0038($sp)
    lwc1    $f12, 0x0038($sp)
    jal     func_800AAB94
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lwc1    $f2, 0x0058($sp)
    lwc1    $f12, 0x0054($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mul.s   $f18, $f12, $f2
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f18
    jal     func_800AA8FC
    nop
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0040($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t1, 0x0405                 # t1 = 04050000
    addiu   t1, t1, 0xD6B0             # t1 = 0404D6B0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8001F280:
    addiu   $sp, $sp, 0xFED0           # $sp -= 0x130
    lui     $at, 0x41A0                # $at = 41A00000
    sw      s8, 0x0078($sp)
    sw      s4, 0x0068($sp)
    mtc1    $at, $f12                  # $f12 = 20.00
    or      s4, a2, $zero              # s4 = 00000000
    or      s8, a0, $zero              # s8 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s7, 0x0074($sp)
    sw      s6, 0x0070($sp)
    sw      s5, 0x006C($sp)
    sw      s3, 0x0064($sp)
    sw      s2, 0x0060($sp)
    sw      s1, 0x005C($sp)
    sw      s0, 0x0058($sp)
    sdc1    $f30, 0x0050($sp)
    sdc1    $f28, 0x0048($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x0134($sp)
    lwc1    $f4, 0x0028(s8)            # 00000028
    lwc1    $f6, 0x0080(s8)            # 00000080
    lui     $at, 0x3F80                # $at = 3F800000
    or      a0, s8, $zero              # a0 = 00000000
    sub.s   $f20, $f4, $f6
    or      a2, s4, $zero              # a2 = 00000000
    c.lt.s  $f12, $f20
    nop
    bc1fl   lbl_8001F408
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f30                  # $f30 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f22, 0x00C4(s8)           # 000000C4
    lwc1    $f8, 0x6480($at)           # 80106480
    sub.s   $f16, $f20, $f12
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f10, $f22, $f8
    lbu     v0, 0x00C8(s8)             # 000000C8
    mtc1    v0, $f4                    # $f4 = 0.00
    or      s0, v0, $zero              # s0 = 00000000
    swc1    $f10, 0x00C4(s8)           # 000000C4
    lwc1    $f18, 0x6484($at)          # 80106484
    lui     $at, 0x4F80                # $at = 4F800000
    mul.s   $f2, $f16, $f18
    c.lt.s  $f30, $f2
    nop
    bc1fl   lbl_8001F354
    mov.s   $f0, $f2
    b       lbl_8001F354
    mov.s   $f0, $f30
    mov.s   $f0, $f2
lbl_8001F354:
    bgez    v0, lbl_8001F368
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8001F368:
    mul.s   $f10, $f0, $f6
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_8001F3E0
    mfc1    t7, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t7, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_8001F3D4
    nop
    mfc1    t7, $f16
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_8001F3EC
    or      t7, t7, $at                # t7 = 80000000
lbl_8001F3D4:
    b       lbl_8001F3EC
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f16
lbl_8001F3E0:
    nop
    bltz    t7, lbl_8001F3D4
    nop
lbl_8001F3EC:
    ctc1    t6, $f31
    sb      t7, 0x00C8(s8)             # 000000C8
    jal     func_8001EFF4
    lw      a1, 0x0134($sp)
    swc1    $f22, 0x00C4(s8)           # 000000C4
    sb      s0, 0x00C8(s8)             # 000000C8
    lui     $at, 0x3F80                # $at = 3F800000
lbl_8001F408:
    mtc1    $at, $f30                  # $f30 = 1.00
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f18                  # $f18 = 200.00
    lw      t8, 0x0134($sp)
    addiu   s7, s8, 0x00CC             # s7 = 000000CC
    c.lt.s  $f20, $f18
    nop
    bc1fl   lbl_8001F708
    lw      $ra, 0x007C($sp)
    lbu     s5, 0x0000(t8)             # 00000000
    addiu   t9, $sp, 0x00D8            # t9 = FFFFFFA8
    sw      t9, 0x00A4($sp)
    addiu   s5, s5, 0xFFFE             # s5 = FFFFFFFE
    lw      s0, 0x0000(s4)             # 00000000
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    jal     func_8007DFBC
    lw      a0, 0x02C0(s0)             # 000002C0
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f28                  # $f28 = 50.00
    sw      v0, 0x02C0(s0)             # 000002C0
    lui     $at, 0x41F0                # $at = 41F00000
    sb      $zero, 0x00C9(s8)          # 000000C9
    mtc1    $at, $f26                  # $f26 = 30.00
    sw      $zero, 0x00B8($sp)
    addiu   s6, $zero, 0x0002          # s6 = 00000002
    addiu   s3, $sp, 0x00E0            # s3 = FFFFFFB0
lbl_8001F470:
    lwc1    $f4, 0x0004(s7)            # 000000D0
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFB0
    add.s   $f8, $f4, $f28
    or      a2, s7, $zero              # a2 = 000000CC
    jal     func_8009CB3C
    swc1    $f8, 0x0004(s7)            # 000000D0
    lw      t0, 0x00A4($sp)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    swc1    $f0, 0x0000(t0)            # 00000000
    lwc1    $f6, 0x0004(s7)            # 000000D0
    lui     $at, 0x43FA                # $at = 43FA0000
    sub.s   $f10, $f6, $f28
    swc1    $f10, 0x0004(s7)           # 000000D0
    lbu     t1, 0x00C9(s8)             # 000000C9
    sll     t2, t1,  1
    sb      t2, 0x00C9(s8)             # 000000C9
    lw      t3, 0x00A4($sp)
    lwc1    $f16, 0x0004(s7)           # 000000D0
    lwc1    $f18, 0x0000(t3)           # 00000000
    sub.s   $f2, $f16, $f18
    c.le.s  $f4, $f2
    nop
    bc1fl   lbl_8001F680
    lw      v0, 0x00B8($sp)
    mtc1    $at, $f8                   # $f8 = 500.00
    nop
    c.lt.s  $f2, $f8
    nop
    bc1fl   lbl_8001F680
    lw      v0, 0x00B8($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lw      v0, 0x0134($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    c.le.s  $f2, $f6
    addiu   t5, t2, 0x0001             # t5 = 00000001
    lui     $at, 0x4F80                # $at = 4F800000
    addiu   v0, v0, 0x0010             # v0 = 00000010
    bc1fl   lbl_8001F51C
    c.lt.s  $f26, $f2
    sb      t5, 0x00C9(s8)             # 000000C9
    c.lt.s  $f26, $f2
lbl_8001F51C:
    nop
    bc1fl   lbl_8001F530
    lbu     t6, 0x00C8(s8)             # 000000C8
    mov.s   $f2, $f26
    lbu     t6, 0x00C8(s8)             # 000000C8
lbl_8001F530:
    mtc1    t6, $f10                   # $f10 = 0.00
    bgez    t6, lbl_8001F548
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_8001F548:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x6488($at)           # 80106488
    c.lt.s  $f26, $f2
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f8, $f2, $f4
    sub.s   $f6, $f30, $f8
    mul.s   $f24, $f16, $f6
    bc1f    lbl_8001F570
    nop
    mov.s   $f2, $f26
lbl_8001F570:
    lwc1    $f10, 0x648C($at)          # 8010648C
    lwc1    $f4, 0x00C4(s8)            # 000000C4
    lwc1    $f16, 0x0050(s8)           # 00000050
    mul.s   $f18, $f2, $f10
    or      s0, v0, $zero              # s0 = 00000010
    or      s1, $zero, $zero           # s1 = 00000000
    sub.s   $f20, $f30, $f18
    mul.s   $f8, $f4, $f20
    nop
    mul.s   $f22, $f8, $f16
    blez    s5, lbl_8001F610
    nop
lbl_8001F5A0:
    lb      v0, 0x0009(s0)             # 00000019
    blezl   v0, lbl_8001F604
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bltz    v0, lbl_8001F5BC
    subu    v1, $zero, v0
    b       lbl_8001F5BC
    or      v1, v0, $zero              # v1 = 00000010
lbl_8001F5BC:
    lbu     t7, 0x0000(s0)             # 00000010
    lbu     t8, 0x0001(s0)             # 00000011
    lbu     t0, 0x0002(s0)             # 00000012
    or      a0, s4, $zero              # a0 = 00000000
    addu    t9, t7, t8
    addu    t1, t9, t0
    multu   v1, t1
    or      a1, s0, $zero              # a1 = 00000010
    or      a2, s3, $zero              # a2 = FFFFFFB0
    mflo    a3
    blezl   a3, lbl_8001F604
    addiu   s1, s1, 0x0001             # s1 = 00000002
    addu    s2, s2, a3
    swc1    $f24, 0x0010($sp)
    swc1    $f22, 0x0014($sp)
    jal     func_8001F074
    swc1    $f20, 0x0018($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000003
lbl_8001F604:
    bne     s1, s5, lbl_8001F5A0
    addiu   s0, s0, 0x0010             # s0 = 00000020
    or      s1, $zero, $zero           # s1 = 00000000
lbl_8001F610:
    lb      v0, 0x0009(s0)             # 00000029
    blezl   v0, lbl_8001F674
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bltz    v0, lbl_8001F62C
    sll     a0, s2,  3
    b       lbl_8001F630
    or      v1, v0, $zero              # v1 = 00000000
lbl_8001F62C:
    subu    v1, $zero, v0
lbl_8001F630:
    lbu     t2, 0x0000(s0)             # 00000020
    lbu     t3, 0x0001(s0)             # 00000021
    lbu     t5, 0x0002(s0)             # 00000022
    or      a1, s0, $zero              # a1 = 00000020
    addu    t4, t2, t3
    addu    t6, t4, t5
    multu   v1, t6
    or      a2, s3, $zero              # a2 = FFFFFFB0
    mflo    t7
    subu    a3, t7, a0
    blez    a3, lbl_8001F670
    or      a0, s4, $zero              # a0 = 00000000
    swc1    $f24, 0x0010($sp)
    swc1    $f22, 0x0014($sp)
    jal     func_8001F074
    swc1    $f20, 0x0018($sp)
lbl_8001F670:
    addiu   s1, s1, 0x0001             # s1 = 00000002
lbl_8001F674:
    bne     s1, s6, lbl_8001F610
    addiu   s0, s0, 0x0010             # s0 = 00000030
    lw      v0, 0x00B8($sp)
lbl_8001F680:
    lw      t8, 0x00A4($sp)
    addiu   s7, s7, 0x000C             # s7 = 000000D8
    addiu   v0, v0, 0x0001             # v0 = 00000001
    addiu   t9, t8, 0x0004             # t9 = 00000004
    sw      v0, 0x00B8($sp)
    bne     v0, s6, lbl_8001F470
    sw      t9, 0x00A4($sp)
    lhu     t0, 0x0088(s8)             # 00000088
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_8001F6B8
    lbu     t2, 0x00C9(s8)             # 000000C9
    b       lbl_8001F704
    sb      $zero, 0x00C9(s8)          # 000000C9
    lbu     t2, 0x00C9(s8)             # 000000C9
lbl_8001F6B8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    t2, $at, lbl_8001F708
    lw      $ra, 0x007C($sp)
    lwc1    $f6, 0x00D0(s8)            # 000000D0
    lwc1    $f10, 0x00DC(s8)           # 000000DC
    lwc1    $f18, 0x00D8($sp)
    lwc1    $f8, 0x00DC($sp)
    sub.s   $f0, $f6, $f10
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    add.s   $f4, $f18, $f0
    sub.s   $f16, $f8, $f0
    c.lt.s  $f4, $f16
    nop
    bc1fl   lbl_8001F704
    sb      t4, 0x00C9(s8)             # 000000C9
    b       lbl_8001F704
    sb      t3, 0x00C9(s8)             # 000000C9
    sb      t4, 0x00C9(s8)             # 000000C9
lbl_8001F704:
    lw      $ra, 0x007C($sp)
lbl_8001F708:
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
    addiu   $sp, $sp, 0x0130           # $sp += 0x130


func_8001F74C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    bne     a1, a2, lbl_8001F778
    lw      t6, 0x0028($sp)
    lw      a1, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_800AB958
    addiu   a1, a1, 0x00CC             # a1 = 000000CC
    b       lbl_8001F794
    lw      $ra, 0x0014($sp)
lbl_8001F778:
    bnel    a1, t6, lbl_8001F794
    lw      $ra, 0x0014($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x002C($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x00D8             # a1 = 000000D8
    lw      $ra, 0x0014($sp)
lbl_8001F794:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8001F7A0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    sw      a3, 0x0024($sp)
    jal     func_8008EC20
    addu    a0, a0, $at
    lw      a3, 0x0024($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x0000(a3)            # 00000000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8001F7F0
    div.s   $f4, $f2, $f0
    b       lbl_8001F7F4
    swc1    $f2, 0x0000(a3)            # 00000000
    div.s   $f4, $f2, $f0
lbl_8001F7F0:
    swc1    $f4, 0x0000(a3)            # 00000000
lbl_8001F7F4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8001F804:
    mtc1    a2, $f12                   # $f12 = 0.00
    mtc1    a3, $f14                   # $f14 = 0.00
    sll     t6, a1,  2
    addu    t6, t6, a1
    sll     t6, t6,  2
    addu    v0, a0, t6
    swc1    $f12, 0x0050(v0)           # 00000050
    swc1    $f14, 0x0054(v0)           # 00000054
    lwc1    $f4, 0x0010($sp)
    swc1    $f4, 0x0058(v0)            # 00000058
    lwc1    $f6, 0x0044(a0)            # 00000044
    swc1    $f6, 0x005C(v0)            # 0000005C
    jr      $ra
    nop


func_8001F83C:
# Navi colour related.
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    addiu   a0, s3, 0x000C             # a0 = 0000000C
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a2, 0x00E0             # a1 = 000000E0
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    sll     t7, s4,  3
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    addiu   t8, t8, 0x8214             # t8 = 800E8214
    mtc1    $zero, $f20                # $f20 = 0.00
    sh      t6, 0x0048(s3)             # 00000048
    addiu   s0, s3, 0x0050             # s0 = 00000050
    addu    s2, t7, t8
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    or      s1, $zero, $zero           # s1 = 00000000
    swc1    $f4, 0x0044(s3)            # 00000044
lbl_8001F8A4:
    mfc1    a2, $f20
    mfc1    a3, $f20
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_8001F804
    swc1    $f20, 0x0010($sp)
    lbu     t9, 0x0000(s2)             # 00000000
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x0014             # s0 = 00000064
    sb      t9, -0x0004(s0)            # 00000060
    lbu     t0, 0x0001(s2)             # 00000001
    sb      t0, -0x0003(s0)            # 00000061
    lbu     t1, 0x0002(s2)             # 00000002
    bne     s1, s4, lbl_8001F8A4
    sb      t1, -0x0002(s0)            # 00000062
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    lw      s3, 0x0034($sp)
    lw      s4, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8001F904:
# Navi Colors
# Loads data from table at 800E8214 for setting Navi's Colors
# A0 = (GC + 0x1C90)
# A1 = Link Instance
# A2 = Color ID
    sw      a3, 0x000C($sp)
    lwc1    $f4, 0x0038(a1)            # 00000038
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8214             # t7 = 800E8214
    swc1    $f4, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0054(a1)            # 00000054
    lwc1    $f6, 0x004C(a1)            # 0000004C
    lwc1    $f16, 0x003C(a1)           # 0000003C
    sll     t6, a2,  3
    mul.s   $f10, $f6, $f8
    addu    v0, t6, t7
    lui     $at, 0x4F80                # $at = 4F800000
    add.s   $f18, $f16, $f10
    swc1    $f18, 0x0004(a0)           # 00000004
    lwc1    $f4, 0x0040(a1)            # 00000040
    swc1    $f4, 0x0008(a0)            # 00000008
    lbu     t8, 0x0000(v0)             # 00000000
    mtc1    t8, $f6                    # $f6 = 0.00
    bgez    t8, lbl_8001F960
    cvt.s.w $f8, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16
lbl_8001F960:
    swc1    $f8, 0x0018(a0)            # 00000018
    lbu     t9, 0x0001(v0)             # 00000001
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f10                   # $f10 = 0.00
    bgez    t9, lbl_8001F984
    cvt.s.w $f18, $f10
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_8001F984:
    swc1    $f18, 0x001C(a0)           # 0000001C
    lbu     t0, 0x0002(v0)             # 00000002
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t0, $f6                    # $f6 = 0.00
    bgez    t0, lbl_8001F9A8
    cvt.s.w $f16, $f6
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f16, $f16, $f8
lbl_8001F9A8:
    swc1    $f16, 0x0020(a0)           # 00000020
    lbu     t1, 0x0003(v0)             # 00000003
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f10                   # $f10 = 0.00
    bgez    t1, lbl_8001F9CC
    cvt.s.w $f4, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f4, $f4, $f18
lbl_8001F9CC:
    swc1    $f4, 0x0024(a0)            # 00000024
    lbu     t2, 0x0004(v0)             # 00000004
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f6                    # $f6 = 0.00
    bgez    t2, lbl_8001F9F0
    cvt.s.w $f8, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16
lbl_8001F9F0:
    swc1    $f8, 0x0028(a0)            # 00000028
    lbu     t3, 0x0005(v0)             # 00000005
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f10                   # $f10 = 0.00
    bgez    t3, lbl_8001FA14
    cvt.s.w $f18, $f10
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_8001FA14:
    swc1    $f18, 0x002C(a0)           # 0000002C
    lbu     t4, 0x0006(v0)             # 00000006
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_8001FA38
    cvt.s.w $f16, $f6
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f16, $f16, $f8
lbl_8001FA38:
    swc1    $f16, 0x0030(a0)           # 00000030
    lbu     t5, 0x0007(v0)             # 00000007
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t5, $f10                   # $f10 = 0.00
    bgez    t5, lbl_8001FA5C
    cvt.s.w $f4, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f4, $f4, $f18
lbl_8001FA5C:
    swc1    $f4, 0x0034(a0)            # 00000034
    jr      $ra
    nop


func_8001FA68:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    sw      $zero, 0x0090(a0)          # 00000090
    sw      $zero, 0x008C(a0)          # 0000008C
    sw      $zero, 0x003C(a0)          # 0000003C
    sw      $zero, 0x0038(a0)          # 00000038
    sb      $zero, 0x004B(a0)          # 0000004B
    sb      $zero, 0x004C(a0)          # 0000004C
    swc1    $f4, 0x0040(a0)            # 00000040
    lbu     a2, 0x0002(a1)             # 00000002
    sw      a1, 0x001C($sp)
    sw      a0, 0x0018($sp)
    jal     func_8001F904
    lw      a3, 0x0020($sp)
    lw      t6, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a2, 0x0020($sp)
    jal     func_8001F83C
    lbu     a1, 0x0002(t6)             # 00000002
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8001FACC:
# Navi colour related. gameplay_keep d. list: 52980 & CC10
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s1, 0x004C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    sw      a1, 0x00E4($sp)
    lw      s2, 0x003C(s1)             # 0000003C
    lh      v0, 0x0048(s1)             # 00000048
    lw      t6, 0x00E4($sp)
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    beq     v0, $zero, lbl_8001FF18
    lw      s5, 0x0000(t6)             # 00000000
    lw      s3, 0x1C44(t6)             # 00001C44
    sh      t7, 0x00CA($sp)
    lbu     t8, 0x004B(s1)             # 0000004B
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    beq     t8, $zero, lbl_8001FB54
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    b       lbl_8001FB58
    sw      t9, 0x00B4($sp)
lbl_8001FB54:
    sw      t0, 0x00B4($sp)
lbl_8001FB58:
    beq     s2, $zero, lbl_8001FB98
    addiu   t2, v0, 0xFF88             # t2 = FFFFFF88
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    or      a0, s0, $zero              # a0 = 0000000C
    addiu   a1, s2, 0x0038             # a1 = 00000038
    jal     func_80063CAC              # Vec3f_Copy
    sw      s1, 0x00E0($sp)
    lw      t1, 0x00E0($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f4                   # $f4 = 500.00
    lwc1    $f6, 0x0044(t1)            # 00000044
    lui     $at, 0x43D2                # $at = 43D20000
    mtc1    $at, $f10                  # $f10 = 420.00
    sub.s   $f8, $f4, $f6
    b       lbl_8001FBBC
    div.s   $f20, $f8, $f10
lbl_8001FB98:
    sh      t2, 0x0048(s1)             # 00000048
    lh      v0, 0x0048(s1)             # 00000048
    addiu   s0, s1, 0x000C             # s0 = 0000000C
    bgezl   v0, lbl_8001FBB8
    sh      v0, 0x00CA($sp)
    sh      $zero, 0x0048(s1)          # 00000048
    lh      v0, 0x0048(s1)             # 00000048
    sh      v0, 0x00CA($sp)
lbl_8001FBB8:
    sw      s1, 0x00E0($sp)
lbl_8001FBBC:
    lw      a0, 0x00E4($sp)
    or      a1, s0, $zero              # a1 = 0000000C
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFFD8
    jal     func_8001F7A0
    addiu   a3, $sp, 0x00B0            # a3 = FFFFFFD0
    lwc1    $f0, 0x00B8($sp)
    lwc1    $f14, 0x00B0($sp)
    lui     $at, 0xC3A0                # $at = C3A00000
    mtc1    $at, $f2                   # $f2 = -320.00
    mul.s   $f16, $f0, $f14
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f18                  # $f18 = 160.00
    lui     $at, 0x43A0                # $at = 43A00000
    mul.s   $f4, $f16, $f18
    nop
    mul.s   $f0, $f4, $f20
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_8001FC14
    nop
    b       lbl_8001FC3C
    swc1    $f2, 0x00B8($sp)
lbl_8001FC14:
    mtc1    $at, $f12                  # $f12 = 320.00
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8001FC38
    mov.s   $f2, $f0
    b       lbl_8001FC38
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_8001FC38:
    swc1    $f2, 0x00B8($sp)
lbl_8001FC3C:
    lwc1    $f0, 0x00BC($sp)
    lui     $at, 0xC370                # $at = C3700000
    mtc1    $at, $f2                   # $f2 = -240.00
    mul.s   $f6, $f0, $f14
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f8                   # $f8 = 120.00
    lui     $at, 0x4370                # $at = 43700000
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f0, $f10, $f20
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_8001FC80
    nop
    b       lbl_8001FCA8
    swc1    $f2, 0x00BC($sp)
lbl_8001FC80:
    mtc1    $at, $f12                  # $f12 = 240.00
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8001FCA4
    mov.s   $f2, $f0
    b       lbl_8001FCA4
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_8001FCA4:
    swc1    $f2, 0x00BC($sp)
lbl_8001FCA8:
    lwc1    $f16, 0x00C0($sp)
    lw      a0, 0x00E0($sp)
    mul.s   $f18, $f16, $f20
    swc1    $f18, 0x00C0($sp)
    lb      t3, 0x004C(a0)             # 0000004C
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    sb      t4, 0x004C(a0)             # 0000004C
    lb      a1, 0x004C(a0)             # 0000004C
    bgezl   a1, lbl_8001FCDC
    lwc1    $f4, 0x00C0($sp)
    sb      t5, 0x004C(a0)             # 0000004C
    lb      a1, 0x004C(a0)             # 0000004C
    lwc1    $f4, 0x00C0($sp)
lbl_8001FCDC:
    lw      a2, 0x00B8($sp)
    lw      a3, 0x00BC($sp)
    jal     func_8001F804
    swc1    $f4, 0x0010($sp)
    lw      t6, 0x066C(s3)             # 0000066C
    addiu   a1, $zero, 0x0039          # a1 = 00000039
    andi    t7, t6, 0x0040             # t7 = 00000000
    beq     t7, $zero, lbl_8001FD0C
    nop
    lw      t8, 0x0654(s3)             # 00000654
    beq     s2, t8, lbl_8001FF14
    nop
lbl_8001FD0C:
    jal     func_8007DFBC
    lw      a0, 0x02B0(s5)             # 000002B0
    sw      v0, 0x02B0(s5)             # 000002B0
    lw      t0, 0x00B4($sp)
    lw      t9, 0x00E0($sp)
    or      a0, $zero, $zero           # a0 = 00000000
    blez    t0, lbl_8001FF14
    lb      a1, 0x004C(t9)             # 0000004C
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f28                  # $f28 = 120.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f26, 0x6490($at)          # 80106490
    lui     $at, 0x8010                # $at = 80100000
    lui     s7, 0xDA38                 # s7 = DA380000
    mtc1    $zero, $f20                # $f20 = 0.00
    ori     s7, s7, 0x0003             # s7 = DA380003
    lwc1    $f22, 0x6494($at)          # 80106494
    lui     s8, 0xDE00                 # s8 = DE000000
    addiu   s6, $zero, 0x0004          # s6 = 00000004
lbl_8001FD58:
    lw      t1, 0x00E0($sp)
    sll     t2, a1,  2
    addu    t2, t2, a1
    sll     t2, t2,  2
    lui     $at, 0x43FA                # $at = 43FA0000
    addu    v0, t1, t2
    lwc1    $f6, 0x005C(v0)            # 0000005C
    mtc1    $at, $f8                   # $f8 = 500.00
    lh      v1, 0x00CA($sp)
    addiu   s3, v0, 0x0050             # s3 = 00000050
    c.lt.s  $f6, $f8
    or      a3, $zero, $zero           # a3 = 00000000
    bc1fl   lbl_8001FEE4
    addiu   v1, v1, 0xFFAB             # v1 = FFFFFFAB
    lwc1    $f12, 0x000C(s3)           # 0000005C
    lui     s4, 0x0405                 # s4 = 04050000
    mfc1    a2, $f20
    c.le.s  $f12, $f28
    addiu   s4, s4, 0x2980             # s4 = 04052980
    lui     $at, 0x8010                # $at = 80100000
    bc1fl   lbl_8001FDBC
    sub.s   $f10, $f12, $f28
    b       lbl_8001FDC8
    mov.s   $f24, $f26
    sub.s   $f10, $f12, $f28
lbl_8001FDBC:
    lwc1    $f16, 0x6498($at)          # 80106498
    mul.s   $f18, $f10, $f16
    add.s   $f24, $f18, $f26
lbl_8001FDC8:
    lwc1    $f12, 0x0000(s3)           # 00000050
    lwc1    $f14, 0x0004(s3)           # 00000054
    sw      a1, 0x00A8($sp)
    sw      a0, 0x00AC($sp)
    jal     func_800AA7F4
    sh      v1, 0x00CA($sp)
    mov.s   $f12, $f24
    mov.s   $f14, $f26
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02B0(s5)             # 000002B0
    lui     t4, 0xFA00                 # t4 = FA000000
    addiu   t3, s0, 0x0008             # t3 = 00000014
    sw      t3, 0x02B0(s5)             # 000002B0
    sw      t4, 0x0000(s0)             # 0000000C
    lbu     t9, 0x0011(s3)             # 00000061
    lbu     t6, 0x0010(s3)             # 00000060
    lbu     t3, 0x0012(s3)             # 00000062
    lbu     t8, 0x00CB($sp)
    sll     t0, t9, 16
    sll     t7, t6, 24
    or      t1, t7, t0                 # t1 = 00000000
    sll     t4, t3,  8
    or      t5, t1, t4                 # t5 = FA000000
    or      t9, t5, t8                 # t9 = FA000000
    sw      t9, 0x0004(s0)             # 00000010
    lw      t7, 0x00E0($sp)
    lbu     t0, 0x004B(t7)             # 0000004B
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x649C($at)           # 8010649C
    andi    t2, t0, 0x007F             # t2 = 00000000
    mtc1    t2, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAD4C
    nop
    or      s2, $zero, $zero           # s2 = 00000000
    mov.s   $f12, $f22
lbl_8001FE68:
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA6EC
    nop
    lwc1    $f12, 0x000C(s3)           # 0000005C
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    mov.s   $f14, $f12
    lw      s1, 0x02B0(s5)             # 000002B0
    addiu   t3, s1, 0x0008             # t3 = 00000008
    sw      t3, 0x02B0(s5)             # 000002B0
    sw      s7, 0x0000(s1)             # 00000000
    lw      t1, 0x00E4($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t1)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02B0(s5)             # 000002B0
    addiu   t4, s0, 0x0008             # t4 = 00000014
    sw      t4, 0x02B0(s5)             # 000002B0
    sw      s4, 0x0004(s0)             # 00000010
    sw      s8, 0x0000(s0)             # 0000000C
    jal     func_800AA724
    nop
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bnel    s2, s6, lbl_8001FE68
    mov.s   $f12, $f22
    lw      a1, 0x00A8($sp)
    lw      a0, 0x00AC($sp)
    lh      v1, 0x00CA($sp)
    addiu   v1, v1, 0xFFAB             # v1 = FFFFFFAB
lbl_8001FEE4:
    sll     v1, v1, 16
    sra     v1, v1, 16
    bgez    v1, lbl_8001FEF8
    addiu   a1, a1, 0x0001             # a1 = 00000001
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8001FEF8:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    div     $zero, a1, $at
    lw      t6, 0x00B4($sp)
    mfhi    a1
    addiu   a0, a0, 0x0001             # a0 = 00000001
    bne     a0, t6, lbl_8001FD58
    sh      v1, 0x00CA($sp)
lbl_8001FF14:
    lw      s1, 0x00E0($sp)
lbl_8001FF18:
    lw      s2, 0x0094(s1)             # 00000094
    lui     s7, 0xDA38                 # s7 = DA380000
    ori     s7, s7, 0x0003             # s7 = DA380003
    beq     s2, $zero, lbl_800200C4
    lui     s8, 0xDE00                 # s8 = DE000000
    lw      t5, 0x0004(s2)             # 00000005
    lui     t0, 0x800F                 # t0 = 800F0000
    addiu   t0, t0, 0x8214             # t0 = 800E8214
    sll     t8, t5,  4
    bltzl   t8, lbl_800200C8
    lw      $ra, 0x006C($sp)
    lbu     t9, 0x0002(s2)             # 00000003
    lw      a0, 0x02D0(s5)             # 000002D0
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    sll     t7, t9,  3
    jal     func_8007DFBC
    addu    s1, t7, t0
    sw      v0, 0x02D0(s5)             # 000002D0
    lwc1    $f16, 0x0054(s2)           # 00000055
    lwc1    $f10, 0x004C(s2)           # 0000004D
    lwc1    $f4, 0x003C(s2)            # 0000003D
    lui     $at, 0x4188                # $at = 41880000
    mul.s   $f18, $f10, $f16
    mtc1    $at, $f8                   # $f8 = 17.00
    lw      a2, 0x0040(s2)             # 00000041
    lwc1    $f12, 0x0038(s2)           # 00000039
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f6, $f4, $f18
    jal     func_800AA7F4
    add.s   $f14, $f6, $f8
    lw      t2, 0x00E4($sp)
    lui     t3, 0x0001                 # t3 = 00010000
    lui     $at, 0x4F80                # $at = 4F800000
    addu    t3, t3, t2
    lw      t3, 0x1DE4(t3)             # 00011DE4
    sll     t1, t3,  2
    subu    t1, t1, t3
    sll     t1, t1,  4
    subu    t1, t1, t3
    sll     t1, t1,  3
    subu    t1, t1, t3
    sll     t1, t1,  3
    andi    t4, t1, 0xFFFF             # t4 = 00000000
    mtc1    t4, $f10                   # $f10 = 0.00
    bgez    t4, lbl_8001FFDC
    cvt.s.w $f16, $f10
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f16, $f16, $f4
lbl_8001FFDC:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x64A0($at)          # 801064A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f0                   # $f0 = 1000.00
    lh      t7, 0x0D0E(v0)             # 80120D0E
    lh      t6, 0x0D0A(v0)             # 80120D0A
    lh      t8, 0x0D0C(v0)             # 80120D0C
    addiu   t0, t7, 0x0032             # t0 = 00000032
    mtc1    t0, $f16                   # $f16 = 0.00
    addiu   t5, t6, 0x0023             # t5 = 00000023
    mtc1    t5, $f6                    # $f6 = 0.00
    cvt.s.w $f18, $f16
    addiu   t9, t8, 0x003C             # t9 = 0000003C
    mtc1    t9, $f10                   # $f10 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f8, $f6
    div.s   $f6, $f18, $f0
    cvt.s.w $f4, $f10
    div.s   $f14, $f4, $f0
    mfc1    a2, $f6
    jal     func_800AA8FC
    div.s   $f12, $f8, $f0
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t3, 0xFA00                 # t3 = FA000000
    addiu   t2, s0, 0x0008             # t2 = 00000014
    sw      t2, 0x02D0(s5)             # 000002D0
    sw      t3, 0x0000(s0)             # 0000000C
    lbu     t8, 0x0001(s1)             # 00000001
    lbu     t4, 0x0000(s1)             # 00000000
    lbu     t2, 0x0002(s1)             # 00000002
    sll     t9, t8, 16
    sll     t6, t4, 24
    or      t7, t6, t9                 # t7 = 00000000
    sll     t3, t2,  8
    or      t1, t7, t3                 # t1 = FA000000
    ori     t4, t1, 0x00FF             # t4 = FA0000FF
    sw      t4, 0x0004(s0)             # 00000010
    lw      s2, 0x02D0(s5)             # 000002D0
    addiu   t5, s2, 0x0008             # t5 = 00000009
    sw      t5, 0x02D0(s5)             # 000002D0
    sw      s7, 0x0000(s2)             # 00000001
    lw      t8, 0x00E4($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s2)             # 00000005
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t9, 0x0401                 # t9 = 04010000
    addiu   t9, t9, 0xCC10             # t9 = 0400CC10
    addiu   t6, s0, 0x0008             # t6 = 00000014
    sw      t6, 0x02D0(s5)             # 000002D0
    sw      t9, 0x0004(s0)             # 00000010
    sw      s8, 0x0000(s0)             # 0000000C
lbl_800200C4:
    lw      $ra, 0x006C($sp)
lbl_800200C8:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
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
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0


func_80020108:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a2, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x006C($sp)
    sw      a3, 0x0074($sp)
    lw      t6, 0x006C($sp)
    sw      $zero, 0x0060($sp)
    lw      a0, 0x0074($sp)
    lw      t7, 0x0654(t6)             # 00000654
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFF8
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    beq     t7, $zero, lbl_80020168
    nop
    lbu     t8, 0x0836(t6)             # 00000836
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addu    t9, t6, t8
    lb      t0, 0x083B(t9)             # 0000083B
    bne     t0, $at, lbl_80020168
    nop
    b       lbl_80020178
    sw      $zero, 0x0094(s0)          # 00000094
lbl_80020168:
    jal     func_800259BC
    lw      a3, 0x006C($sp)
    lw      t2, 0x0060($sp)
    sw      t2, 0x0094(s0)             # 00000094
lbl_80020178:
    lw      v0, 0x008C(s0)             # 0000008C
    addiu   a0, s0, 0x0040             # a0 = 00000040
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v0, $zero, lbl_80020198
    nop
    sw      v0, 0x0060($sp)
    b       lbl_800201A4
    sw      $zero, 0x008C(s0)          # 0000008C
lbl_80020198:
    beql    s1, $zero, lbl_800201A8
    lw      t3, 0x0060($sp)
    sw      s1, 0x0060($sp)
lbl_800201A4:
    lw      t3, 0x0060($sp)
lbl_800201A8:
    lw      t5, 0x006C($sp)
    beql    t3, $zero, lbl_800201C4
    lbu     t7, 0x0002(t5)             # 00000002
    lbu     t4, 0x0002(t3)             # 00000002
    b       lbl_800201C8
    sw      t4, 0x005C($sp)
    lbu     t7, 0x0002(t5)             # 00000002
lbl_800201C4:
    sw      t7, 0x005C($sp)
lbl_800201C8:
    lw      t6, 0x0060($sp)
    lw      t8, 0x0038(s0)             # 00000038
    lw      t9, 0x005C($sp)
    lw      t1, 0x0060($sp)
    bne     t6, t8, lbl_800201EC
    lui     $at, 0x3F80                # $at = 3F800000
    lbu     t0, 0x004A(s0)             # 0000004A
    beql    t9, t0, lbl_80020204
    lw      t3, 0x0060($sp)
lbl_800201EC:
    sw      t1, 0x0038(s0)             # 00000038
    lw      t2, 0x005C($sp)
    mtc1    $at, $f4                   # $f4 = 1.00
    sb      t2, 0x004A(s0)             # 0000004A
    swc1    $f4, 0x0040(s0)            # 00000040
    lw      t3, 0x0060($sp)
lbl_80020204:
    lw      t4, 0x006C($sp)
    bne     t3, $zero, lbl_80020214
    nop
    sw      t4, 0x0060($sp)
lbl_80020214:
    jal     func_8006385C
    lui     a2, 0x3E80                 # a2 = 3E800000
    bne     v0, $zero, lbl_800202A0
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f8, 0x0040(s0)            # 00000040
    lw      t5, 0x0060($sp)
    lwc1    $f2, 0x0000(s0)            # 00000000
    div.s   $f0, $f6, $f8
    lwc1    $f6, 0x0054(t5)            # 00000054
    lwc1    $f4, 0x004C(t5)            # 0000004C
    lwc1    $f10, 0x0024(t5)           # 00000024
    lwc1    $f12, 0x0004(s0)           # 00000004
    mul.s   $f8, $f4, $f6
    sub.s   $f16, $f10, $f2
    lwc1    $f10, 0x0028(t5)           # 00000028
    lwc1    $f14, 0x0008(s0)           # 00000008
    lwc1    $f6, 0x002C(t5)            # 0000002C
    add.s   $f4, $f10, $f8
    mul.s   $f8, $f16, $f0
    sub.s   $f10, $f6, $f14
    sub.s   $f18, $f4, $f12
    swc1    $f10, 0x003C($sp)
    add.s   $f4, $f2, $f8
    mul.s   $f6, $f18, $f0
    swc1    $f4, 0x0000(s0)            # 00000000
    add.s   $f10, $f12, $f6
    swc1    $f10, 0x0004(s0)           # 00000004
    lwc1    $f8, 0x003C($sp)
    mul.s   $f4, $f8, $f0
    add.s   $f6, $f14, $f4
    swc1    $f6, 0x0008(s0)            # 00000008
    b       lbl_800202B0
    nop
lbl_800202A0:
    lw      a1, 0x0060($sp)
    lw      a2, 0x005C($sp)
    jal     func_8001F904
    lw      a3, 0x0074($sp)
lbl_800202B0:
    beq     s1, $zero, lbl_80020334
    nop
    lbu     t7, 0x004B(s0)             # 0000004B
    lw      a0, 0x0074($sp)
    addiu   a1, s1, 0x0038             # a1 = 00000038
    bne     t7, $zero, lbl_80020334
    addiu   a2, $sp, 0x0050            # a2 = FFFFFFE8
    jal     func_8001F7A0
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFE4
    mtc1    $zero, $f10                # $f10 = 0.00
    lwc1    $f8, 0x0058($sp)
    lwc1    $f2, 0x004C($sp)
    lwc1    $f4, 0x0050($sp)
    c.le.s  $f8, $f10
    nop
    bc1tl   lbl_80020334
    or      s1, $zero, $zero           # s1 = 00000000
    mul.s   $f0, $f4, $f2
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f6, 0x0054($sp)
    abs.s   $f0, $f0
    c.le.s  $f12, $f0
    nop
    bc1tl   lbl_80020334
    or      s1, $zero, $zero           # s1 = 00000000
    mul.s   $f0, $f6, $f2
    abs.s   $f0, $f0
    c.le.s  $f12, $f0
    nop
    bc1f    lbl_80020334
    nop
    or      s1, $zero, $zero           # s1 = 00000000
lbl_80020334:
    beq     s1, $zero, lbl_80020478
    addiu   a0, s0, 0x0044             # a0 = 00000044
    lw      t6, 0x003C(s0)             # 0000003C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x0074($sp)
    beql    s1, t6, lbl_8002039C
    lwc1    $f10, 0x0024(s1)           # 00000024
    jal     func_8001F83C
    lbu     a1, 0x0002(s1)             # 00000002
    sw      s1, 0x003C(s0)             # 0000003C
    lh      t8, 0x0000(s1)             # 00000000
    addiu   $at, $zero, 0x0032         # $at = 00000032
    addiu   v0, $zero, 0x4810          # v0 = 00004810
    bnel    t8, $at, lbl_80020378
    lw      t9, 0x0004(s1)             # 00000004
    sh      $zero, 0x0048(s0)          # 00000048
    lw      t9, 0x0004(s1)             # 00000004
lbl_80020378:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    andi    t0, t9, 0x0005             # t0 = 00000000
    bne     t0, $at, lbl_80020390
    nop
    b       lbl_80020390
    addiu   v0, $zero, 0x4830          # v0 = 00004830
lbl_80020390:
    jal     func_800646F0
    andi    a0, v0, 0xFFFF             # a0 = 00004830
    lwc1    $f10, 0x0024(s1)           # 00000024
lbl_8002039C:
    lbu     v0, 0x004B(s0)             # 0000004B
    addiu   a0, s0, 0x0044             # a0 = 00000044
    swc1    $f10, 0x000C(s0)           # 0000000C
    lwc1    $f4, 0x0054(s1)            # 00000054
    lwc1    $f8, 0x00BC(s1)            # 000000BC
    lwc1    $f10, 0x0028(s1)           # 00000028
    addiu   t3, v0, 0x0003             # t3 = 00000003
    mul.s   $f6, $f8, $f4
    ori     t4, t3, 0x0080             # t4 = 00000083
    lui     $at, 0x42F0                # $at = 42F00000
    sub.s   $f8, $f10, $f6
    swc1    $f8, 0x0010(s0)            # 00000010
    lwc1    $f4, 0x002C(s1)            # 0000002C
    bne     v0, $zero, lbl_80020468
    swc1    $f4, 0x0014(s0)            # 00000014
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f2                   # $f2 = 30.00
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    lwc1    $f6, 0x0044(s0)            # 00000044
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f4                   # $f4 = 3.00
    sub.s   $f8, $f10, $f6
    lui     $at, 0x42C8                # $at = 42C80000
    mul.s   $f0, $f8, $f4
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8002041C
    mtc1    $at, $f12                  # $f12 = 100.00
    b       lbl_80020440
    mov.s   $f0, $f2
    mtc1    $at, $f12                  # $f12 = 100.00
lbl_8002041C:
    nop
    c.lt.s  $f12, $f0
    nop
    bc1fl   lbl_8002043C
    mov.s   $f2, $f0
    b       lbl_8002043C
    mov.s   $f2, $f12
    mov.s   $f2, $f0
lbl_8002043C:
    mov.s   $f0, $f2
lbl_80020440:
    mfc1    a2, $f0
    jal     func_8006385C
    lui     a1, 0x42A0                 # a1 = 42A00000
    beql    v0, $zero, lbl_8002048C
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x004B(s0)             # 0000004B
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sb      t2, 0x004B(s0)             # 0000004B
    b       lbl_8002048C
    lw      $ra, 0x001C($sp)
lbl_80020468:
    mtc1    $at, $f10                  # $f10 = 0.00
    sb      t4, 0x004B(s0)             # 0000004B
    b       lbl_80020488
    swc1    $f10, 0x0044(s0)           # 00000044
lbl_80020478:
    sw      $zero, 0x003C(s0)          # 0000003C
    lui     a1, 0x43FA                 # a1 = 43FA0000
    jal     func_8006385C
    lui     a2, 0x42A0                 # a2 = 42A00000
lbl_80020488:
    lw      $ra, 0x001C($sp)
lbl_8002048C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8002049C:
# Tests if Switch Flag is Set
# A0 = Global Context
# A1 = Switch Flag Value
# V0 = 0 if not set, or the flag bit if set
    slti    $at, a1, 0x0020
    beq     $at, $zero, lbl_800204B8
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lw      t6, 0x1D28(a0)             # 00001D28
    sllv    t8, t7, a1
    jr      $ra
    and     v0, t6, t8
lbl_800204B8:
    lw      t9, 0x1D2C(a0)             # 00001D2C
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, a1
    and     v0, t9, t1
    jr      $ra
    nop


func_800204D0:
# Sets Switch Flag to 1
# A0 = Global Context
# A1 = Switch Flag Value
    slti    $at, a1, 0x0020
    beql    $at, $zero, lbl_800204F8
    lw      t0, 0x1D2C(a0)             # 00001D2C
    lw      t6, 0x1D28(a0)             # 00001D28
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    jr      $ra
    sw      t9, 0x1D28(a0)             # 00001D28
lbl_800204F4:
    lw      t0, 0x1D2C(a0)             # 00001D2C
lbl_800204F8:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, a1
    or      t3, t0, t2                 # t3 = 00000000
    sw      t3, 0x1D2C(a0)             # 00001D2C
    jr      $ra
    nop


func_80020510:
# Sets Switch Flag to 0
# A0 = Global Context
# A1 = Switch Flag Value
    slti    $at, a1, 0x0020
    beq     $at, $zero, lbl_80020538
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      t6, 0x1D28(a0)             # 00001D28
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    nor     t9, t8, $zero
    and     t0, t6, t9
    jr      $ra
    sw      t0, 0x1D28(a0)             # 00001D28
lbl_80020538:
    lw      t1, 0x1D2C(a0)             # 00001D2C
    sllv    t3, t2, a1
    nor     t4, t3, $zero
    and     t5, t1, t4
    sw      t5, 0x1D2C(a0)             # 00001D2C
    jr      $ra
    nop


func_80020554:
# Tests if Unused Scene Flag is Set
# A0 = Global Context
# A1 = Flag Value
# V0 = 0 if not set, or the flag bit if set
    slti    $at, a1, 0x0020
    beq     $at, $zero, lbl_80020570
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lw      t6, 0x1D30(a0)             # 00001D30
    sllv    t8, t7, a1
    jr      $ra
    and     v0, t6, t8
lbl_80020570:
    lw      t9, 0x1D34(a0)             # 00001D34
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, a1
    and     v0, t9, t1
    jr      $ra
    nop


func_80020588:
# Sets Unused Scene Flag to 1
# A0 = Global Context
# A1 = Flag Value
    slti    $at, a1, 0x0020
    beql    $at, $zero, lbl_800205B0
    lw      t0, 0x1D34(a0)             # 00001D34
    lw      t6, 0x1D30(a0)             # 00001D30
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    jr      $ra
    sw      t9, 0x1D30(a0)             # 00001D30
lbl_800205AC:
    lw      t0, 0x1D34(a0)             # 00001D34
lbl_800205B0:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, a1
    or      t3, t0, t2                 # t3 = 00000000
    sw      t3, 0x1D34(a0)             # 00001D34
    jr      $ra
    nop


func_800205C8:
# Sets Unused Scene Flag to 0
# A0 = Global Context
# A1 = Flag Value
    slti    $at, a1, 0x0020
    beq     $at, $zero, lbl_800205F0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lw      t6, 0x1D30(a0)             # 00001D30
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    nor     t9, t8, $zero
    and     t0, t6, t9
    jr      $ra
    sw      t0, 0x1D30(a0)             # 00001D30
lbl_800205F0:
    lw      t1, 0x1D34(a0)             # 00001D34
    sllv    t3, t2, a1
    nor     t4, t3, $zero
    and     t5, t1, t4
    sw      t5, 0x1D34(a0)             # 00001D34
    jr      $ra
    nop


func_8002060C:
# Tests if a Chest Flag is set
# A0 = Global Context
# A1 = Flag Value
# V0 = 0 if not set, or the flag bit if set
    lw      t6, 0x1D38(a0)             # 00001D38
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    and     v0, t6, t8
    jr      $ra
    nop


func_80020624:
# Sets Chest Flag to 1
# A0 = Global Context
# A1 = Flag Value
    lw      t6, 0x1D38(a0)             # 00001D38
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    sw      t9, 0x1D38(a0)             # 00001D38
    jr      $ra
    nop


func_80020640:
# Test if a Room Clear Flag is set
# A0 = Global Context
# A1 = Flag Value
# V0 = 0 if not set, or the flag bit if set
    lw      t6, 0x1D3C(a0)             # 00001D3C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    and     v0, t6, t8
    jr      $ra
    nop


func_80020658:
# Sets Room Clear Flag to 1
# A0 = Global Context
# A1 = Flag Value
    lw      t6, 0x1D3C(a0)             # 00001D3C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    sw      t9, 0x1D3C(a0)             # 00001D3C
    jr      $ra
    nop


func_80020674:
# Sets Room Clear Flag to 0
# A0 = Global Context
# A1 = Flag Value
    lw      t6, 0x1D3C(a0)             # 00001D3C
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    nor     t9, t8, $zero
    and     t0, t6, t9
    sw      t0, 0x1D3C(a0)             # 00001D3C
    jr      $ra
    nop


func_80020694:
# Tests if Global Context + 0x1D40 Flag is set
# A0 = Global Context
# A1 = Flag Value
# V0 = 0 if not set, or the flag bit if set
    lw      t6, 0x1D40(a0)             # 00001D40
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    and     v0, t6, t8
    jr      $ra
    nop


func_800206AC:
# Sets Global Context + 0x1D40 Flag to 1
# A0 = Global Context
# A1 = Flag Value
    lw      t6, 0x1D40(a0)             # 00001D40
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    sw      t9, 0x1D40(a0)             # 00001D40
    jr      $ra
    nop


func_800206C8:
# Sets Global Context + 0x1D40 Flag to 0
# A0 = Global Context
# A1 = Flag Value
    lw      t6, 0x1D40(a0)             # 00001D40
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    nor     t9, t8, $zero
    and     t0, t6, t9
    sw      t0, 0x1D40(a0)             # 00001D40
    jr      $ra
    nop


func_800206E8:
# Tests if Scene Collectible Flag is set
# A0 = Global Context
# A1 = Flag Value
# V0 = 0 if not set, or the flag bit if set
    slti    $at, a1, 0x0020
    beq     $at, $zero, lbl_80020704
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    lw      t6, 0x1D44(a0)             # 00001D44
    sllv    t8, t7, a1
    jr      $ra
    and     v0, t6, t8
lbl_80020704:
    lw      t9, 0x1D48(a0)             # 00001D48
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, a1
    and     v0, t9, t1
    jr      $ra
    nop


func_8002071C:
# Sets Scene Collectible Flag to 1
# A0 = Global Context
# A1 = Flag Value
    beq     a1, $zero, lbl_80020758
    slti    $at, a1, 0x0020
    beql    $at, $zero, lbl_80020748
    lw      t0, 0x1D48(a0)             # 00001D48
    lw      t6, 0x1D44(a0)             # 00001D44
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sllv    t8, t7, a1
    or      t9, t6, t8                 # t9 = 00000000
    jr      $ra
    sw      t9, 0x1D44(a0)             # 00001D44
lbl_80020744:
    lw      t0, 0x1D48(a0)             # 00001D48
lbl_80020748:
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, a1
    or      t3, t0, t2                 # t3 = 00000000
    sw      t3, 0x1D48(a0)             # 00001D48
lbl_80020758:
    jr      $ra
    nop


func_80020760:
# Zero Title Card stuff
# A0 = Global Context
# A1 = Global Context + 0x1D4C
    sw      a0, 0x0000($sp)
    sh      $zero, 0x000C(a1)          # 0000000C
    lh      v0, 0x000C(a1)             # 0000000C
    sh      v0, 0x000E(a1)             # 0000000E
    sb      v0, 0x000B(a1)             # 0000000B
    sb      v0, 0x000A(a1)             # 0000000A
    jr      $ra
    nop


func_80020780:
# Set Boss Title Card to display?
# A0 = Global Context
# A1 = Global Context + 0x1D4C
# A2 = u32 Pointer to Title Card texture
# A3 = u16 ? (always 0x00A0)
# SP+0x10 = u16 ? (always 0x00B4)
# SP+0x14 = u8 ? (always 0x80)
# SP+0x18 = u8 ? (always 0x28)
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      a0, 0x0000($sp)
    sw      a2, 0x0000(a1)             # 00000000
    sh      a3, 0x0004(a1)             # 00000004
    lh      t6, 0x0012($sp)
    addiu   t9, $zero, 0x0050          # t9 = 00000050
    sh      t6, 0x0006(a1)             # 00000006
    lbu     t7, 0x0017($sp)
    sb      t7, 0x0008(a1)             # 00000008
    lbu     t8, 0x001B($sp)
    sb      t9, 0x000A(a1)             # 0000000A
    sb      $zero, 0x000B(a1)          # 0000000B
    sb      t8, 0x0009(a1)             # 00000009
    jr      $ra
    nop


func_800207C4:
# Title Card related
# A0 = Global Context
# A1 = Global Context + 0x1D4C
# A2 = u32 Pointer to Title Card texture
# A3 = u16 ? (always 0x00A0)
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x242C(v0)             # 0001242C
    lw      t6, 0x0008(v0)             # 00010008
    sw      t6, 0x0024($sp)
    lw      t7, 0x000C(v0)             # 0001000C
    subu    t9, t7, t6
    beq     t9, $zero, lbl_80020818
    sw      t9, 0x0028($sp)
    sltiu   $at, t9, 0x2001
    beq     $at, $zero, lbl_80020818
    lw      a0, 0x0038($sp)
    or      a1, t6, $zero              # a1 = 00000000
    jal     func_80000DF0
    or      a2, t9, $zero              # a2 = 00000000
lbl_80020818:
    lw      t1, 0x0038($sp)
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sw      t1, 0x0000(s0)             # 00000000
    lw      t2, 0x003C($sp)
    sh      t2, 0x0004(s0)             # 00000004
    lw      t3, 0x0040($sp)
    sh      t3, 0x0006(s0)             # 00000006
    lw      t4, 0x0044($sp)
    sb      t4, 0x0008(s0)             # 00000008
    lw      t5, 0x0048($sp)
    sb      t6, 0x000A(s0)             # 0000000A
    sb      t5, 0x0009(s0)             # 00000009
    lw      t7, 0x004C($sp)
    sb      t7, 0x000B(s0)             # 0000000B
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80020860:
# Update Title Card? (called when updating actors)
# A0 = Global Context
# A1 = Global Context + 0x14DC
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     v1, 0x000B(a3)             # 0000000B
    bne     v1, $zero, lbl_80020884
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_8002088C
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80020884:
    sb      t6, 0x000B(a3)             # 0000000B
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8002088C:
    bnel    v0, $zero, lbl_80020910
    lw      $ra, 0x0014($sp)
    lbu     v1, 0x000A(a3)             # 0000000A
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bne     v1, $zero, lbl_800208B0
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    b       lbl_800208B8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800208B0:
    sb      t7, 0x000A(a3)             # 0000000A
    andi    v0, t7, 0x00FF             # v0 = 000000FF
lbl_800208B8:
    bne     v0, $zero, lbl_800208F0
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x001E          # a2 = 0000001E
    jal     func_800637D4
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0046          # a2 = 00000046
    jal     func_800637D4
    addiu   a0, a3, 0x000E             # a0 = 0000000E
    b       lbl_80020910
    lw      $ra, 0x0014($sp)
lbl_800208F0:
    jal     func_800637D4
    sw      a3, 0x001C($sp)
    lw      a3, 0x001C($sp)
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800637D4
    addiu   a0, a3, 0x000E             # a0 = 0000000E
    lw      $ra, 0x0014($sp)
lbl_80020910:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002091C:
# Draw Title Card? (called when drawing actors)
# A0 = Global Context
# A1 = Global Context + 0x14DC
    addiu   $sp, $sp, 0xFF38           # $sp -= 0xC8
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x000C(s0)             # 0000000C
    beql    t6, $zero, lbl_80020E70
    lw      $ra, 0x001C($sp)
    lbu     t1, 0x0008(s0)             # 00000008
    lh      t7, 0x0004(s0)             # 00000004
    lbu     t0, 0x0009(s0)             # 00000009
    sll     v0, t1,  1
    sll     t8, t7,  2
    subu    t9, t8, v0
    sw      t9, 0x00B8($sp)
    lh      t6, 0x0006(s0)             # 00000006
    sll     t8, t0,  1
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t7, t6,  2
    subu    v1, t7, t8
    lbu     t9, -0x4627(t9)            # 8011B9D9
    lw      a1, 0x0000(a0)             # 00000000
    bne     t9, $zero, lbl_8002098C
    nop
    multu   t1, t0
    sw      $zero, 0x00A8($sp)
    mflo    a3
    b       lbl_800209A0
    slti    $at, a3, 0x1001
lbl_8002098C:
    multu   t1, t0
    mflo    a3
    sw      a3, 0x00A8($sp)
    nop
    slti    $at, a3, 0x1001
lbl_800209A0:
    bne     $at, $zero, lbl_800209E4
    addiu   t6, $zero, 0x1000          # t6 = 00001000
    div     $zero, t6, t1
    mflo    t0
    bne     t1, $zero, lbl_800209BC
    nop
    break   # 0x01C00
lbl_800209BC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t1, $at, lbl_800209D4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_800209D4
    nop
    break   # 0x01800
lbl_800209D4:
    multu   t1, t0
    mflo    a3
    nop
    nop
lbl_800209E4:
    sll     t7, t0,  2
    addu    t8, t7, v1
    sw      t8, 0x00AC($sp)
    lw      a0, 0x02B0(a1)             # 000002B0
    sw      t1, 0x00C4($sp)
    sw      t0, 0x00C0($sp)
    sw      a3, 0x0038($sp)
    sw      a1, 0x00A4($sp)
    sw      v1, 0x00B0($sp)
    jal     func_8007E058
    sw      v0, 0x003C($sp)
    lw      a1, 0x00A4($sp)
    lw      a3, 0x0038($sp)
    lw      t0, 0x00C0($sp)
    lw      t1, 0x00C4($sp)
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(v0)             # 00000000
    lbu     a0, 0x000F(s0)             # 0000000F
    or      t5, t1, $zero              # t5 = 00000000
    sll     t7, a0, 24
    sll     t8, a0, 16
    or      t9, t7, t8                 # t9 = 00000000
    sll     t6, a0,  8
    or      t7, t9, t6                 # t7 = FA000000
    lbu     t9, 0x000D(s0)             # 0000000D
    addiu   a0, a3, 0x0001             # a0 = 00000001
    sra     a0, a0,  1
    or      t6, t7, t9                 # t6 = FA000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      a2, 0x02B0(a1)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    addiu   a0, a0, 0xFFFF             # a0 = 00000000
    addiu   t8, a2, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0000(a2)             # 00000000
    lw      t6, 0x00A8($sp)
    lw      t9, 0x0000(s0)             # 00000000
    addu    t8, t9, t6
    sw      t8, 0x0004(a2)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF570                 # t9 = F5700000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xE600                 # t7 = E6000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF300                 # t6 = F3000000
    slti    $at, a0, 0x07FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0000(v1)             # 00000000
    beq     $at, $zero, lbl_80020AE4
    or      $ra, v1, $zero             # $ra = 00000000
    b       lbl_80020AE8
    or      t4, a0, $zero              # t4 = 00000000
lbl_80020AE4:
    addiu   t4, $zero, 0x07FF          # t4 = 000007FF
lbl_80020AE8:
    bgez    t5, lbl_80020AF8
    sra     t2, t5,  3
    addiu   $at, t5, 0x0007            # $at = 00000007
    sra     t2, $at,  3
lbl_80020AF8:
    bgtz    t2, lbl_80020B08
    or      t3, t2, $zero              # t3 = 00000000
    b       lbl_80020B08
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80020B08:
    bgtz    t2, lbl_80020B18
    addiu   t8, t3, 0x07FF             # t8 = 00000800
    b       lbl_80020B1C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80020B18:
    or      a3, t2, $zero              # a3 = 00000000
lbl_80020B1C:
    div     $zero, t8, a3
    bne     a3, $zero, lbl_80020B2C
    nop
    break   # 0x01C00
lbl_80020B2C:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_80020B44
    lui     $at, 0x8000                # $at = 80000000
    bne     t8, $at, lbl_80020B44
    nop
    break   # 0x01800
lbl_80020B44:
    mflo    t7
    andi    t9, t7, 0x0FFF             # t9 = 00000000
    lui     $at, 0x0700                # $at = 07000000
    andi    t8, t4, 0x0FFF             # t8 = 000007FF
    sll     t7, t8, 12
    or      t6, t9, $at                # t6 = 07000000
    or      t9, t6, t7                 # t9 = E7000000
    sw      t9, 0x0004($ra)            # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t9, t5, 0x0007             # t9 = 00000007
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    sra     t8, t9,  3
    andi    t6, t8, 0x01FF             # t6 = 00000008
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sll     t7, t6,  9
    lui     $at, 0xF568                # $at = F5680000
    or      t9, t7, $at                # t9 = F5680008
    sw      t9, 0x002C($sp)
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    addiu   t7, t1, 0xFFFF             # t7 = FFFFFFFF
    sll     t9, t7,  2
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF200                 # t6 = F2000000
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    sw      t6, 0x0000(v1)             # 00000000
    sll     t6, t8, 12
    addiu   t7, t0, 0xFFFF             # t7 = FFFFFFFF
    sll     t9, t7,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    or      t7, t6, t8                 # t7 = F2000008
    sw      t6, 0x0028($sp)
    sw      t7, 0x0004(v1)             # 00000004
    lw      t3, 0x00B8($sp)
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    andi    $ra, t3, 0x0FFF            # $ra = 00000001
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    lw      t6, 0x003C($sp)
    lw      t7, 0x00AC($sp)
    sll     $ra, $ra, 12
    sll     t8, t6,  1
    addu    a3, t8, t3
    addiu   a3, a3, 0xFFFC             # a3 = FFFFFFFC
    andi    a3, a3, 0x0FFF             # a3 = 00000FFC
    sll     a3, a3, 12
    addiu   t9, t7, 0xFFFF             # t9 = F2000007
    andi    t6, t9, 0x0FFF             # t6 = 00000007
    or      a3, a3, $at                # a3 = E4000FFC
    or      t8, a3, t6                 # t8 = E4000FFF
    sw      t8, 0x0000(v1)             # 00000000
    lw      t7, 0x00B0($sp)
    andi    t9, t7, 0x0FFF             # t9 = 00000008
    or      t6, $ra, t9                # t6 = 00000009
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t7, 0xE100                 # t7 = E1000000
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t7, 0x0009(s0)             # 00000009
    sw      a3, 0x0024($sp)
    subu    t0, t7, t0
    blezl   t0, lbl_80020E70
    lw      $ra, 0x001C($sp)
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xFD70                 # t6 = FD700000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x00A8($sp)
    lw      t8, 0x0000(s0)             # 00000000
    addu    t9, t8, t7
    addiu   t6, t9, 0x1000             # t6 = 00001008
    sw      t6, 0x0004(v0)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t7, 0xF570                 # t7 = F5700000
    lui     t9, 0x0700                 # t9 = 07000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      a2, 0x02B0(a1)             # 000002B0
    lui     t8, 0xE600                 # t8 = E6000000
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(a2)          # 00000004
    sw      t8, 0x0000(a2)             # 00000000
    multu   t1, t0
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t4, $zero, 0x07FF          # t4 = 000007FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0000(v1)             # 00000000
    or      t5, v1, $zero              # t5 = 00000000
    mflo    a0
    addiu   a0, a0, 0x0001             # a0 = 00000001
    sra     a0, a0,  1
    addiu   a0, a0, 0xFFFF             # a0 = 00000000
    slti    $at, a0, 0x07FF
    beq     $at, $zero, lbl_80020D30
    nop
    b       lbl_80020D30
    or      t4, a0, $zero              # t4 = 00000000
lbl_80020D30:
    bgtz    t2, lbl_80020D40
    or      t3, t2, $zero              # t3 = 00000000
    b       lbl_80020D40
    addiu   t3, $zero, 0x0001          # t3 = 00000001
lbl_80020D40:
    bgtz    t2, lbl_80020D50
    addiu   t6, t3, 0x07FF             # t6 = 00000800
    b       lbl_80020D54
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80020D50:
    or      a3, t2, $zero              # a3 = 00000000
lbl_80020D54:
    div     $zero, t6, a3
    bne     a3, $zero, lbl_80020D64
    nop
    break   # 0x01C00
lbl_80020D64:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     a3, $at, lbl_80020D7C
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_80020D7C
    nop
    break   # 0x01800
lbl_80020D7C:
    mflo    t8
    andi    t7, t8, 0x0FFF             # t7 = 00000000
    lui     $at, 0x0700                # $at = 07000000
    andi    t6, t4, 0x0FFF             # t6 = 00000000
    sll     t8, t6, 12
    or      t9, t7, $at                # t9 = 07000000
    or      t7, t9, t8                 # t7 = E7000000
    sw      t7, 0x0004(t5)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    lw      t7, 0x002C($sp)
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    addiu   t7, t0, 0xFFFF             # t7 = FFFFFFFF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t8, 0x0028($sp)
    sll     t6, t7,  2
    andi    t9, t6, 0x0FFF             # t9 = 00000008
    or      t7, t8, t9                 # t7 = 00000008
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    sll     t9, t0,  2
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    lw      t8, 0x00AC($sp)
    addu    t7, t8, t9
    lw      t9, 0x0024($sp)
    addiu   t6, t7, 0xFFFF             # t6 = 00000007
    andi    t8, t6, 0x0FFF             # t8 = 00000007
    or      t7, t9, t8                 # t7 = 0000000F
    sw      t7, 0x0000(v1)             # 00000000
    lw      t6, 0x00AC($sp)
    andi    t9, t6, 0x0FFF             # t9 = 00000007
    or      t8, $ra, t9                # t8 = 00000007
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE100                 # t6 = E1000000
    lui     t8, 0xF100                 # t8 = F1000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(a1)             # 000002B0
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_80020E70:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x00C8           # $sp += 0xC8
    jr      $ra
    nop


func_80020E80:
# Title Card related (called from player actor)
# Possibly checks and updates title card delay and some other data?
# A0 = Global Context
# A1 = Global Context + 0x1D4C
# V0 = 0 if ?, else 1
    lbu     t6, 0x1D57(a0)             # 00001D57
    or      v0, $zero, $zero           # v0 = 00000000
    bnel    t6, $zero, lbl_80020EA0
    sb      $zero, 0x000A(a1)          # 0000000A
    lh      t7, 0x1D58(a0)             # 00001D58
    beql    t7, $zero, lbl_80020EAC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      $zero, 0x000A(a1)          # 0000000A
lbl_80020EA0:
    jr      $ra
    sb      $zero, 0x000B(a1)          # 0000000B
lbl_80020EA8:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80020EAC:
    jr      $ra
    nop


func_80020EB4:
# Kill Actor (nulls draw/update, but does not deallocate)
# A0 = Actor Instance
    lw      t6, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      $zero, 0x0134(a0)          # 00000134
    and     t7, t6, $at
    sw      $zero, 0x0130(a0)          # 00000130
    sw      t7, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80020ED4:
# Actor Initialization, Copy 0x14 bytes from Actor Instance + 0x08 to Instance + 0x24
# A0 = Actor Instance
    lw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x000C(a0)             # 0000000C
    sw      t7, 0x0024(a0)             # 00000024
    lw      t7, 0x0010(a0)             # 00000010
    sw      t6, 0x0028(a0)             # 00000028
    lw      t6, 0x0014(a0)             # 00000014
    sw      t7, 0x002C(a0)             # 0000002C
    lw      t7, 0x0018(a0)             # 00000018
    sw      t6, 0x0030(a0)             # 00000030
    sw      t7, 0x0034(a0)             # 00000034
    jr      $ra
    nop


func_80020F04:
# Sets the actor height (used by navi, target arrows, camera face when an npc is talking, etc)
# A0 = Actor Instance
# A1 = float height (Y offset from actor origin)
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    lwc1    $f6, 0x0028(a0)            # 00000028
    lwc1    $f4, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x002C(a0)           # 0000002C
    add.s   $f8, $f6, $f12
    lh      t6, 0x0030(a0)             # 00000030
    lh      t7, 0x0032(a0)             # 00000032
    lh      t8, 0x0034(a0)             # 00000034
    swc1    $f8, 0x003C(a0)            # 0000003C
    swc1    $f4, 0x0038(a0)            # 00000038
    swc1    $f10, 0x0040(a0)           # 00000040
    sh      t6, 0x0044(a0)             # 00000044
    sh      t7, 0x0046(a0)             # 00000046
    sh      t8, 0x0048(a0)             # 00000048
    jr      $ra
    nop


func_80020F48:
    lwl     t7, 0x00B4(a0)             # 000000B4
    lwr     t7, 0x00B7(a0)             # 000000B7
    swl     t7, 0x0030(a0)             # 00000030
    swr     t7, 0x0033(a0)             # 00000033
    lhu     t7, 0x00B8(a0)             # 000000B8
    sh      t7, 0x0034(a0)             # 00000034
    jr      $ra
    nop


func_80020F68:
    lwl     t7, 0x0030(a0)             # 00000030
    lwr     t7, 0x0033(a0)             # 00000033
    swl     t7, 0x00B4(a0)             # 000000B4
    swr     t7, 0x00B7(a0)             # 000000B7
    lhu     t7, 0x0034(a0)             # 00000034
    sh      t7, 0x00B8(a0)             # 000000B8
    jr      $ra
    nop


func_80020F88:
# Set actor's scale
# A0 = Actor Instance
# A1 = float Scale
    mtc1    a1, $f12                   # $f12 = 0.00
    nop
    swc1    $f12, 0x0058(a0)           # 00000058
    swc1    $f12, 0x0054(a0)           # 00000054
    swc1    $f12, 0x0050(a0)           # 00000050
    jr      $ra
    nop


func_80020FA4:
# Update CPU Segment 0x06 to point to actor's defined object dependency
# A0 = Global Context
# A1 = Actor Instance
    lb      t6, 0x001E(a1)             # 0000001E
    lui     t9, 0x0001                 # t9 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t7, t6,  4
    addu    t7, t7, t6
    sll     t7, t7,  2
    addu    t8, a0, t7
    addu    t9, t9, t8
    lw      t9, 0x17B4(t9)             # 000117B4
    addu    t0, t9, $at
    lui     $at, 0x8012                # $at = 80120000
    sw      t0, 0x0C50($at)            # 80120C50
    jr      $ra
    nop


func_80020FDC:
# Actor Instance Initialization
# Instance has already been 0 initialized, init vars in overlay copied over, and has been bound to category
# A0 = Global Context
# A1 = Actor Instance
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_80020ED4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F68
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    addiu   a0, s0, 0x0100             # a0 = 00000100
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f4                   # $f4 = -20.00
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    sb      t6, 0x001F(s0)             # 0000001F
    lui     $at, 0x8010                # $at = 80100000
    swc1    $f4, 0x0070(s0)            # 00000070
    lwc1    $f6, 0x64A4($at)           # 801064A4
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f10                  # $f10 = 350.00
    lui     $at, 0x442F                # $at = 442F0000
    mtc1    $at, $f16                  # $f16 = 700.00
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sb      t7, 0x0117(s0)             # 00000117
    addiu   a0, s0, 0x0098             # a0 = 00000098
    swc1    $f6, 0x008C(s0)            # 0000008C
    swc1    $f8, 0x00F4(s0)            # 000000F4
    swc1    $f10, 0x00F8(s0)           # 000000F8
    jal     func_800502A8
    swc1    $f16, 0x00FC(s0)           # 000000FC
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sb      t8, 0x007D(s0)             # 0000007D
    mfc1    a1, $f0
    mfc1    a3, $f0
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x001E(s0)             # 0000001E
    jal     func_80081688
    addu    a0, a0, $at
    beq     v0, $zero, lbl_800210DC
    lw      a0, 0x0024($sp)
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    lw      t9, 0x0128(s0)             # 00000128
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0024($sp)
    jalr    $ra, t9
    nop
    sw      $zero, 0x0128(s0)          # 00000128
lbl_800210DC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800210F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      v0, 0x012C(a0)             # 0000012C
    beql    v0, $zero, lbl_80021118
    lw      $ra, 0x0014($sp)
    jalr    $ra, v0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    sw      $zero, 0x012C(a0)          # 0000012C
    lw      $ra, 0x0014($sp)
lbl_80021118:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021124:
# Physics, updates XYZ coordinates of actor
# A0 = Actor Instance
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lh      t7, 0x0110(t6)             # 80120110
    lwc1    $f10, 0x005C(a0)           # 0000005C
    lwc1    $f18, 0x009C(a0)           # 0000009C
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    lwc1    $f6, 0x0024(a0)            # 00000024
    mul.s   $f16, $f10, $f0
    lwc1    $f10, 0x0060(a0)           # 00000060
    add.s   $f4, $f16, $f18
    mul.s   $f16, $f10, $f0
    lwc1    $f18, 0x00A0(a0)           # 000000A0
    lwc1    $f10, 0x0064(a0)           # 00000064
    add.s   $f8, $f6, $f4
    lwc1    $f4, 0x0028(a0)            # 00000028
    add.s   $f6, $f16, $f18
    mul.s   $f16, $f10, $f0
    lwc1    $f18, 0x00A4(a0)           # 000000A4
    swc1    $f8, 0x0024(a0)            # 00000024
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x002C(a0)            # 0000002C
    add.s   $f4, $f16, $f18
    swc1    $f8, 0x0028(a0)            # 00000028
    add.s   $f8, $f6, $f4
    swc1    $f8, 0x002C(a0)            # 0000002C
    jr      $ra
    nop


func_800211A4:
# Physics, updates XYZ velocity vectors (+0x5C) of an actor
# Only factors y component of speed rotation xyz (+0x30)
# A0 = Actor Instance
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lh      a0, 0x0032(a1)             # 00000032
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lwc1    $f4, 0x0068(a1)            # 00000068
    lh      a0, 0x0032(a1)             # 00000032
    mul.s   $f6, $f0, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x005C(a1)            # 0000005C
    lw      a1, 0x0018($sp)
    lwc1    $f16, 0x0060(a1)           # 00000060
    lwc1    $f18, 0x006C(a1)           # 0000006C
    lwc1    $f8, 0x0068(a1)            # 00000068
    lwc1    $f2, 0x0070(a1)            # 00000070
    add.s   $f4, $f16, $f18
    mul.s   $f10, $f0, $f8
    swc1    $f4, 0x0060(a1)            # 00000060
    lwc1    $f6, 0x0060(a1)            # 00000060
    c.lt.s  $f6, $f2
    swc1    $f10, 0x0064(a1)           # 00000064
    bc1fl   lbl_80021210
    lw      $ra, 0x0014($sp)
    swc1    $f2, 0x0060(a1)            # 00000060
    lw      $ra, 0x0014($sp)
lbl_80021210:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002121C:
# Physics, updates XYZ velocity (factoring Y only) and XYZ coords
# (Wrapper for 800211A4 and 80021124)
# A0 = Actor Instance
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800211A4
    lw      a0, 0x0018($sp)
    jal     func_80021124
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021248:
# Physics, updates XYZ velocity vectors (+0x5C) of an actor
# Factors x and y component of speed rotation xyz (+0x30)
# A0 = Actor Instance
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0030(s0)             # 00000030
    lwc1    $f4, 0x0068(s0)            # 00000068
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0024($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f8, 0x0024($sp)
    lh      a0, 0x0030(s0)             # 00000030
    mul.s   $f10, $f0, $f8
    jal     func_800636C4              # sins?
    swc1    $f10, 0x005C(s0)           # 0000005C
    lwc1    $f16, 0x0068(s0)           # 00000068
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f18, $f0, $f16
    jal     func_80063684              # coss?
    swc1    $f18, 0x0060(s0)           # 00000060
    lwc1    $f4, 0x0024($sp)
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0064(s0)            # 00000064
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800212B8:
# Physics, updates XYZ velocity and XYZ coordinates of actor
# (Wrapper for 80021248 and 80021124)
# A0 = Actor Instance
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80021248
    lw      a0, 0x0018($sp)
    jal     func_80021124
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800212E4:
# Physics, multiply Y velocity of an actor?
# Updates Y velocity vector (+0x60) and XY speed (+0x68) of an actor?
# Only factors x component of speed rotation xyz (+0x30)
# A0 = Actor Instance
# A1 = float Speed multiplier?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x0030(t6)             # 00000030
    lwc1    $f4, 0x001C($sp)
    lw      v0, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    lh      a0, 0x0030(v0)             # 00000030
    jal     func_800636C4              # sins?
    swc1    $f6, 0x0068(v0)            # 00000068
    lwc1    $f10, 0x001C($sp)
    neg.s   $f8, $f0
    lw      t7, 0x0018($sp)
    mul.s   $f16, $f8, $f10
    swc1    $f16, 0x0060(t7)           # 00000060
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80021338:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      a2, 0x00B6(a3)             # 000000B6
    sw      a3, 0x0028($sp)
    lw      a0, 0x002C($sp)
    jal     func_8008D4DC
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFF4
    lw      a3, 0x0028($sp)
    lwc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0050(a3)            # 00000050
    lwc1    $f10, 0x0024(a3)           # 00000024
    mul.s   $f8, $f4, $f6
    lwc1    $f4, 0x0054(a3)            # 00000054
    add.s   $f16, $f10, $f8
    lwc1    $f10, 0x0028(a3)           # 00000028
    swc1    $f16, 0x0024(a3)           # 00000024
    lwc1    $f18, 0x0020($sp)
    mul.s   $f6, $f18, $f4
    lwc1    $f18, 0x0058(a3)           # 00000058
    add.s   $f8, $f10, $f6
    lwc1    $f10, 0x002C(a3)           # 0000002C
    swc1    $f8, 0x0028(a3)            # 00000028
    lwc1    $f16, 0x0024($sp)
    mul.s   $f4, $f16, $f18
    add.s   $f6, $f10, $f4
    swc1    $f6, 0x002C(a3)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800213B4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063F00
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800213E0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0038             # a0 = 00000038
    jal     func_80063F00
    addiu   a1, a3, 0x0038             # a1 = 00000038
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002140C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80063F00
    addiu   a0, a2, 0x0024             # a0 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021430:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063F34
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002145C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0038             # a0 = 00000038
    jal     func_80063F34
    addiu   a1, a3, 0x0038             # a1 = 00000038
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021488:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80063F34
    addiu   a0, a2, 0x0024             # a0 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800214AC:
# Calculates XYZ between two actors (+0x24)
# Wrapper for 80063E18
# A0 = Actor A
# A1 = Actor B
# F0 = Result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063E18
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800214D8:
# Calculates XYZ between actor (+0x24) and a point
# Wrapper fo 80063E18
# A0 = Actor
# A1 = Coordinate ptr
# F0 = Result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80063E18
    addiu   a0, a2, 0x0024             # a0 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800214FC:
# Calculates XZ distance between two actors (+0x24)
# Wrapper for 80063EB8
# A0 = Actor A
# A1 = Actor B
# F0 = Result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    addiu   a0, a2, 0x0024             # a0 = 00000024
    jal     func_80063EB8
    addiu   a1, a3, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021528:
# Calculates XZ distance between actor (+0x24) and a Point
# Wrapper for 80063EB8
# A0 = Actor
# A1 = Coordinate ptr
# F0 = Result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80063EB8
    addiu   a0, a2, 0x0024             # a0 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002154C:
# Calculates vertical, horizontal and front distance between 2 points taking rotation of instance into account
# A0 = Actor Instance
# A1 = SP + offset to store an array of 3 floats
# A2 = array position of Link (and other stuff?)
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    sw      a2, 0x0028($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_80063684              # coss?
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_800636C4              # sins?
    swc1    $f0, 0x001C($sp)
    lw      v0, 0x0028($sp)
    lw      a3, 0x0020($sp)
    lwc1    $f14, 0x001C($sp)
    lwc1    $f4, 0x0000(v0)            # 00000000
    lwc1    $f6, 0x0024(a3)            # 00000024
    lwc1    $f8, 0x0008(v0)            # 00000008
    lwc1    $f10, 0x002C(a3)           # 0000002C
    sub.s   $f2, $f4, $f6
    lw      v1, 0x0024($sp)
    sub.s   $f12, $f8, $f10
    mul.s   $f16, $f2, $f14
    nop
    mul.s   $f18, $f12, $f0
    nop
    mul.s   $f6, $f2, $f0
    nop
    mul.s   $f8, $f12, $f14
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0000(v1)            # 00000000
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0008(v1)           # 00000008
    lwc1    $f16, 0x0004(v0)           # 00000004
    lwc1    $f18, 0x0028(a3)           # 00000028
    sub.s   $f4, $f16, $f18
    swc1    $f4, 0x0004(v1)            # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_800215EC:
    lwc1    $f4, 0x0028(a1)            # 00000028
    lwc1    $f6, 0x0028(a0)            # 00000028
    sub.s   $f0, $f4, $f6
    jr      $ra
    nop


func_80021600:
# Calculate Player Height?
# Factors in riding on Epona
# A0 = Link Instance
# F0 = Player Height?
    lw      t6, 0x066C(a0)             # 0000066C
    lui     $at, 0x4200                # $at = 42000000
    lui     t8, 0x8012                 # t8 = 80120000
    sll     t7, t6,  8
    bgezl   t7, lbl_80021628
    mtc1    $zero, $f2                 # $f2 = 0.00
    mtc1    $at, $f2                   # $f2 = 32.00
    b       lbl_8002162C
    nop
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80021628:
    nop
lbl_8002162C:
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    lui     $at, 0x4230                # $at = 42300000
    bnel    t8, $zero, lbl_80021650
    mtc1    $at, $f6                   # $f6 = 44.00
    lui     $at, 0x4288                # $at = 42880000
    mtc1    $at, $f4                   # $f4 = 68.00
    jr      $ra
    add.s   $f0, $f2, $f4
lbl_8002164C:
    mtc1    $at, $f6                   # $f6 = 68.00
lbl_80021650:
    nop
    add.s   $f0, $f2, $f6
    jr      $ra
    nop


func_80021660:
    lw      v0, 0x066C(a0)             # 0000066C
    lui     $at, 0x4100                # $at = 41000000
    sll     t6, v0,  8
    bgez    t6, lbl_80021680
    sll     t7, v0,  4
    mtc1    $at, $f0                   # $f0 = 8.00
    jr      $ra
    nop
lbl_80021680:
    bgez    t7, lbl_800216C0
    lui     t0, 0x8012                 # t0 = 80120000
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x4600(t8)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f8                   # $f8 = 100.00
    lh      t9, 0x006E(t8)             # 8012006E
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x64A8($at)          # 801064A8
    mtc1    t9, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f0, $f10, $f16
    jr      $ra
    nop
lbl_800216C0:
    lw      t0, -0x4600(t0)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lh      t1, 0x006E(t0)             # 8012006E
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    div.s   $f0, $f4, $f6
    jr      $ra
    nop


func_800216E8:
    lw      v0, 0x066C(a0)             # 0000066C
    andi    v0, v0, 0x0008             # v0 = 00000000
    jr      $ra
    nop


func_800216F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800216E8
    lw      a0, 0x0018($sp)
    sltu    v0, $zero, v0
    beq     v0, $zero, lbl_80021724
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0018($sp)
    lh      v0, 0x0824(t6)             # 00000824
    sltu    v0, $zero, v0
lbl_80021724:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_8002172C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      a1, 0x1C44(a0)             # 00001C44
    lw      v0, 0x066C(a1)             # 0000066C
    andi    v0, v0, 0x0800             # v0 = 00000000
    sltu    v0, $zero, v0
    bnel    v0, $zero, lbl_8002175C
    lw      $ra, 0x0014($sp)
    jal     func_800216F8
    or      a0, a1, $zero              # a0 = 00000000
    sltu    v0, $zero, v0
    lw      $ra, 0x0014($sp)
lbl_8002175C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021768:
    lw      v1, 0x1C44(a0)             # 00001C44
    lw      v0, 0x0670(v1)             # 00000670
    andi    v0, v0, 0x0008             # v0 = 00000000
    jr      $ra
    nop


func_8002177C:
    lw      v1, 0x1C44(a0)             # 00001C44
    lw      v0, 0x0670(v1)             # 00000670
    andi    v0, v0, 0x1000             # v0 = 00000000
    jr      $ra
    nop


func_80021790:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    or      a3, a2, $zero              # a3 = 00000000
    lw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x0066          # a1 = 00000066
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    sw      a3, 0x0020($sp)
    jal     func_80025B0C
    addiu   a0, a0, 0x1C24             # a0 = 00001C24
    lw      a3, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      v1, 0x001C($sp)
    sw      a3, 0x01F0(v0)             # 000001F0
    swc1    $f0, 0x01F4(v0)            # 000001F4
    swc1    $f0, 0x01F8(v0)            # 000001F8
    swc1    $f0, 0x01FC(v0)            # 000001FC
    lw      t6, 0x0004(a3)             # 00000004
    addiu   $at, $zero, 0xDFFF         # $at = FFFFDFFF
    ori     t7, t6, 0x2000             # t7 = 00002000
    sw      t7, 0x0004(a3)             # 00000004
    lw      t8, 0x0004(v1)             # 00000004
    and     t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80021800:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lbu     t6, 0x1CBF(t6)             # 00011CBF
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    t6, $at, lbl_8002184C
    lw      $ra, 0x0014($sp)
    jal     func_8009DAE4
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80021848
    lw      a0, 0x0018($sp)
    jal     func_8009D2F0
    or      a1, $zero, $zero           # a1 = 00000000
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_800495BC
    addiu   a1, $zero, 0x0006          # a1 = 00000006
lbl_80021848:
    lw      $ra, 0x0014($sp)
lbl_8002184C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021858:
    sw      a0, 0x0000($sp)
    lw      t6, 0x066C(a1)             # 0000066C
    lui     $at, 0x0080                # $at = 00800000
    sw      a2, 0x0430(a1)             # 00000430
    or      t7, t6, $at                # t7 = 00800000
    sw      t7, 0x066C(a1)             # 0000066C
    sw      a1, 0x011C(a2)             # 0000011C
    jr      $ra
    nop


func_8002187C:
    lw      v0, 0x066C(a0)             # 0000066C
    lui     $at, 0x2000                # $at = 20000000
    ori     $at, $at, 0x0080           # $at = 20000080
    and     v0, v0, $at
    sltu    v0, $zero, v0
    bne     v0, $zero, lbl_800218A0
    nop
    lbu     v0, 0x0434(a0)             # 00000434
    sltu    v0, $zero, v0
lbl_800218A0:
    jr      $ra
    nop


func_800218A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_8005AEFC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800218C8:
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    lw      v1, 0x1C44(a0)             # 00001C44
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sb      a2, 0x0434(v1)             # 00000434
    sw      a1, 0x0438(v1)             # 00000438
    sh      $zero, 0x045A(v1)          # 0000045A
    jr      $ra
    nop


func_800218EC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sw      $ra, 0x0014($sp)
    lw      t6, 0x1C44(a0)             # 00001C44
    jal     func_800218C8
    sw      t6, 0x001C($sp)
    lw      t8, 0x001C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t7, 0x045A(t8)             # 0000045A
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80021928:
    mtc1    $zero, $f0                 # $f0 = 0.00
    nop
    swc1    $f0, 0x0144(a0)            # 00000144
    swc1    $f0, 0x0140(a0)            # 00000140
    jr      $ra
    nop


func_80021940:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    mtc1    a1, $f12                   # $f12 = 0.00
    sra     a2, a2, 16
    lwc1    $f4, 0x0140(a0)            # 00000140
    sh      a2, 0x0148(a0)             # 00000148
    add.s   $f6, $f4, $f12
    swc1    $f6, 0x0140(a0)            # 00000140
    jr      $ra
    nop


func_80021968:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lw      v0, 0x1C44(a2)             # 00001C44
    lh      t6, 0x008A(a0)             # 0000008A
    ori     $at, $zero, 0x8000         # $at = 00008000
    lh      t0, 0x00B6(v0)             # 000000B6
    addu    t9, t6, $at
    subu    v1, t9, t0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_800219A4
    subu    v0, $zero, v1
    b       lbl_800219A4
    or      v0, v1, $zero              # v0 = 00000000
lbl_800219A4:
    slt     $at, v0, a1
    beq     $at, $zero, lbl_800219B8
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800219B8:
    jr      $ra
    nop


func_800219C0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_800213B4
    lw      a1, 0x001C($sp)
    lw      t9, 0x001C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, v0, $at
    lh      t0, 0x00B6(t9)             # 000000B6
    lh      t1, 0x0022($sp)
    lw      $ra, 0x0014($sp)
    subu    v1, t8, t0
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80021A0C
    subu    v0, $zero, v1
    b       lbl_80021A0C
    or      v0, v1, $zero              # v0 = 00000000
lbl_80021A0C:
    slt     $at, v0, t1
    beq     $at, $zero, lbl_80021A20
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80021A20
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021A20:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80021A28:
# Detects if the angle to face Link is inside a range?
# A0 = Actor Instance
# A1 = u16 Range
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80021A58
    subu    v1, $zero, v0
    b       lbl_80021A58
    or      v1, v0, $zero              # v1 = 00000000
lbl_80021A58:
    slt     $at, v1, a1
    beq     $at, $zero, lbl_80021A6C
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021A6C:
    jr      $ra
    nop


func_80021A74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    jal     func_800213B4
    lw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lh      t8, 0x0022($sp)
    lw      $ra, 0x0014($sp)
    lh      t7, 0x00B6(t6)             # 000000B6
    subu    v1, v0, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80021AB8
    subu    v0, $zero, v1
    b       lbl_80021AB8
    or      v0, v1, $zero              # v0 = 00000000
lbl_80021AB8:
    slt     $at, v0, t8
    beq     $at, $zero, lbl_80021ACC
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80021ACC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021ACC:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80021AD4:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    mtc1    a1, $f14                   # $f14 = 0.00
    sra     a2, a2, 16
    lh      t6, 0x008A(a0)             # 0000008A
    lh      t7, 0x00B6(a0)             # 000000B6
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80021B08
    subu    v1, $zero, v0
    b       lbl_80021B08
    or      v1, v0, $zero              # v1 = 00000000
lbl_80021B08:
    slt     $at, v1, a2
    beql    $at, $zero, lbl_80021B4C
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f2, 0x0090(a0)            # 00000090
    lwc1    $f12, 0x0094(a0)           # 00000094
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    c.lt.s  $f0, $f14
    nop
    bc1f    lbl_80021B48
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021B48:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80021B4C:
    jr      $ra
    nop


func_80021B54:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a0, 0x0018($sp)
    jal     func_800214AC
    lw      a1, 0x001C($sp)
    lwc1    $f4, 0x0020($sp)
    lw      a0, 0x0018($sp)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80021BD8
    or      v0, $zero, $zero           # v0 = 00000000
    jal     func_800213B4
    lw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lh      t8, 0x0026($sp)
    lh      t7, 0x00B6(t6)             # 000000B6
    subu    v1, v0, t7
    sll     v1, v1, 16
    sra     v1, v1, 16
    bltz    v1, lbl_80021BC0
    subu    v0, $zero, v1
    b       lbl_80021BC0
    or      v0, v1, $zero              # v0 = 00000000
lbl_80021BC0:
    slt     $at, v0, t8
    beql    $at, $zero, lbl_80021BD8
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80021BD8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80021BD8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80021BE8:
# Collision/Position Updating related
# A0 = Actor Instance
# A1 = float ?
# V0 = 1 if ?, else 0
    mtc1    a1, $f12                   # $f12 = 0.00
    lui     $at, 0xC130                # $at = C1300000
    lhu     v0, 0x0088(a0)             # 00000088
    andi    t6, v0, 0x0001             # t6 = 00000000
    beql    t6, $zero, lbl_80021C58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    $at, $f4                   # $f4 = -11.00
    nop
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_80021C58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    $zero, $f0                 # $f0 = 0.00
    lwc1    $f6, 0x0060(a0)            # 00000060
    andi    t8, v0, 0xFFFE             # t8 = 00000000
    sh      t8, 0x0088(a0)             # 00000088
    c.lt.s  $f6, $f0
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t9, 0x0088(a0)             # 00000088
    andi    t0, a2, 0x0010             # t0 = 00000000
    bc1f    lbl_80021C4C
    nop
    beq     t0, $zero, lbl_80021C4C
    nop
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80021C4C:
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80021C54:
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021C58:
    jr      $ra
    nop


func_80021C60:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a2, 0x0040($sp)
    sw      a3, 0x0044($sp)
    lw      t6, 0x0040($sp)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0004(t6)            # 00000004
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    addiu   a2, s0, 0x0078             # a2 = 00000078
    add.s   $f8, $f4, $f6
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFF8
    swc1    $f8, 0x0004(t6)            # 00000004
    lw      t7, 0x0040($sp)
    sw      a1, 0x002C($sp)
    sw      s0, 0x0010($sp)
    jal     func_8002F520
    sw      t7, 0x0014($sp)
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f2                   # $f2 = -32000.00
    lhu     t8, 0x0088(s0)             # 00000088
    lw      a0, 0x002C($sp)
    c.le.s  $f0, $f2
    lw      a3, 0x0044($sp)
    andi    t9, t8, 0xFF79             # t9 = 00000000
    swc1    $f0, 0x0080(s0)            # 00000080
    bc1f    lbl_80021CF0
    sh      t9, 0x0088(s0)             # 00000088
    mfc1    a1, $f2
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021BE8
    or      a2, a3, $zero              # a2 = 00000000
    b       lbl_80021E5C
    lw      $ra, 0x0024($sp)
lbl_80021CF0:
    lwc1    $f10, 0x0080(s0)           # 00000080
    lwc1    $f16, 0x0028(s0)           # 00000028
    mtc1    $zero, $f2                 # $f2 = 0.00
    lw      t0, 0x0030($sp)
    sub.s   $f0, $f10, $f16
    sb      t0, 0x007D(s0)             # 0000007D
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80021E00
    lhu     t2, 0x0088(s0)             # 00000088
    lhu     t1, 0x0088(s0)             # 00000088
    lui     t5, 0x8012                 # t5 = 80120000
    ori     t2, t1, 0x0080             # t2 = 00000080
    andi    v0, t2, 0xFFFF             # v0 = 00000080
    andi    t3, v0, 0x0010             # t3 = 00000000
    beq     t3, $zero, lbl_80021D78
    sh      t2, 0x0088(s0)             # 00000088
    lw      t4, 0x0030($sp)
    lw      t5, -0x7404(t5)            # 80118BFC
    lui     $at, 0x4170                # $at = 41700000
    beql    t4, t5, lbl_80021D6C
    lwc1    $f4, 0x0100(s0)            # 00000100
    mtc1    $at, $f18                  # $f18 = 15.00
    ori     t6, v0, 0x0100             # t6 = 00000180
    c.lt.s  $f18, $f0
    nop
    bc1fl   lbl_80021D7C
    lwc1    $f10, 0x0060(s0)           # 00000060
    b       lbl_80021D78
    sh      t6, 0x0088(s0)             # 00000088
    lwc1    $f4, 0x0100(s0)            # 00000100
lbl_80021D6C:
    lwc1    $f6, 0x0108(s0)            # 00000108
    swc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f6, 0x002C(s0)            # 0000002C
lbl_80021D78:
    lwc1    $f10, 0x0060(s0)           # 00000060
lbl_80021D7C:
    lwc1    $f8, 0x0080(s0)            # 00000080
    c.le.s  $f10, $f2
    swc1    $f8, 0x0028(s0)            # 00000028
    bc1fl   lbl_80021E58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t9, a3, 0x0008             # t9 = 00000000
    andi    t7, v0, 0x0001             # t7 = 00000001
    bne     t7, $zero, lbl_80021DAC
    ori     t8, v0, 0x0002             # t8 = 00000003
    b       lbl_80021DDC
    sh      t8, 0x0088(s0)             # 00000088
lbl_80021DAC:
    beql    t9, $zero, lbl_80021DDC
    swc1    $f2, 0x0060(s0)            # 00000060
    lwc1    $f16, 0x006C(s0)           # 0000006C
    lui     $at, 0xC080                # $at = C0800000
    c.lt.s  $f16, $f2
    nop
    bc1fl   lbl_80021DDC
    swc1    $f2, 0x0060(s0)            # 00000060
    mtc1    $at, $f18                  # $f18 = -4.00
    b       lbl_80021DDC
    swc1    $f18, 0x0060(s0)           # 00000060
    swc1    $f2, 0x0060(s0)            # 00000060
lbl_80021DDC:
    lhu     t0, 0x0088(s0)             # 00000088
    or      a1, s0, $zero              # a1 = 00000000
    lbu     a2, 0x007D(s0)             # 0000007D
    ori     t1, t0, 0x0001             # t1 = 00000001
    jal     func_80035110
    sh      t1, 0x0088(s0)             # 00000088
    b       lbl_80021E58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lhu     t2, 0x0088(s0)             # 00000088
lbl_80021E00:
    lui     $at, 0xC130                # $at = C1300000
    andi    t3, t2, 0x0001             # t3 = 00000000
    beql    t3, $zero, lbl_80021E40
    mfc1    a1, $f0
    mtc1    $at, $f4                   # $f4 = -11.00
    or      a1, s0, $zero              # a1 = 00000000
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_80021E40
    mfc1    a1, $f0
    lbu     a2, 0x007D(s0)             # 0000007D
    jal     func_80035110
    swc1    $f0, 0x0034($sp)
    lw      a3, 0x0044($sp)
    lwc1    $f0, 0x0034($sp)
    mfc1    a1, $f0
lbl_80021E40:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021BE8
    or      a2, a3, $zero              # a2 = 00000000
    b       lbl_80021E5C
    lw      $ra, 0x0024($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80021E58:
    lw      $ra, 0x0024($sp)
lbl_80021E5C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80021E6C:
# possibly primary actor collision call
# A0 = Global Context
# A1 = Actor Instance
# A2 = float wallCheckHeight? spaceBelow? (26f for Link)
# A3 = float wallPushback? moveRadius? (18f/14f for Adult/Child Link)
# SP+0x10 float spaceAbove? (56f/40f for Adult/Child Link)
# SP+0x14 int type? flags?
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0030($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0078($sp)
    sw      a2, 0x0080($sp)
    sw      a3, 0x0084($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f6, 0x0104(s0)            # 00000104
    addiu   $at, $zero, 0x0032         # $at = 00000032
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0074($sp)
    lbu     a3, 0x007D(s0)             # 0000007D
    beql    a3, $at, lbl_80021ECC
    lw      t8, 0x008C($sp)
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x0078($sp)
    or      a1, a3, $zero              # a1 = 00000000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80021EC8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    jal     func_80035180
    or      a2, s0, $zero              # a2 = 00000000
lbl_80021EC8:
    lw      t8, 0x008C($sp)
lbl_80021ECC:
    andi    t9, t8, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80021FD8
    andi    v1, t8, 0x0080             # v1 = 00000000
    bne     v1, $zero, lbl_80021F2C
    lw      a0, 0x0078($sp)
    lwc1    $f10, 0x0084($sp)
    lwc1    $f16, 0x0080($sp)
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t0, s0, 0x0074             # t0 = 00000074
    addiu   t1, $sp, 0x0060            # t1 = FFFFFFE8
    sw      t1, 0x0018($sp)
    sw      t0, 0x0014($sp)
    sw      a2, 0x003C($sp)
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFEC
    addiu   a3, s0, 0x0100             # a3 = 00000100
    sw      s0, 0x001C($sp)
    sw      v1, 0x0040($sp)
    swc1    $f10, 0x0010($sp)
    jal     func_8002FFE4
    swc1    $f16, 0x0020($sp)
    lw      v1, 0x0040($sp)
    bne     v0, $zero, lbl_80021F78
    lw      a2, 0x003C($sp)
lbl_80021F2C:
    beq     v1, $zero, lbl_80021FCC
    lw      a0, 0x0078($sp)
    lwc1    $f18, 0x0084($sp)
    lwc1    $f4, 0x0080($sp)
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t2, s0, 0x0074             # t2 = 00000074
    addiu   t3, $sp, 0x0060            # t3 = FFFFFFE8
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      a2, 0x003C($sp)
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFEC
    addiu   a3, s0, 0x0100             # a3 = 00000100
    sw      s0, 0x001C($sp)
    swc1    $f18, 0x0010($sp)
    jal     func_8003004C
    swc1    $f4, 0x0020($sp)
    beq     v0, $zero, lbl_80021FCC
    lw      a2, 0x003C($sp)
lbl_80021F78:
    lw      v0, 0x0074(s0)             # 00000074
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0064            # a1 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    sw      v0, 0x005C($sp)
    lw      v0, 0x005C($sp)
    lh      t4, 0x000C(v0)             # 0000000C
    lh      t5, 0x0008(v0)             # 00000008
    mtc1    t4, $f6                    # $f6 = 0.00
    mtc1    t5, $f8                    # $f8 = 0.00
    cvt.s.w $f12, $f6
    jal     func_800AA4F8
    cvt.s.w $f14, $f8
    lhu     t6, 0x0088(s0)             # 00000088
    sh      v0, 0x007E(s0)             # 0000007E
    ori     t7, t6, 0x0008             # t7 = 00000008
    sh      t7, 0x0088(s0)             # 00000088
    lw      t9, 0x0060($sp)
    sb      t9, 0x007C(s0)             # 0000007C
    b       lbl_80021FDC
    lwc1    $f10, 0x0024(s0)           # 00000024
lbl_80021FCC:
    lhu     t8, 0x0088(s0)             # 00000088
    andi    t0, t8, 0xFFF7             # t0 = 00000000
    sh      t0, 0x0088(s0)             # 00000088
lbl_80021FD8:
    lwc1    $f10, 0x0024(s0)           # 00000024
lbl_80021FDC:
    lw      t1, 0x008C($sp)
    lui     $at, 0x4120                # $at = 41200000
    swc1    $f10, 0x0064($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    andi    t2, t1, 0x0002             # t2 = 00000000
    beq     t2, $zero, lbl_8002208C
    swc1    $f16, 0x006C($sp)
    mtc1    $at, $f0                   # $f0 = 10.00
    addiu   a1, $sp, 0x0058            # a1 = FFFFFFE0
    lwc1    $f6, 0x0088($sp)
    lwc1    $f8, 0x0074($sp)
    lwc1    $f18, 0x0104(s0)           # 00000104
    lw      a0, 0x0078($sp)
    add.s   $f10, $f6, $f8
    lui     t3, 0x8012                 # t3 = 80120000
    lui     t4, 0x8012                 # t4 = 80120000
    add.s   $f4, $f18, $f0
    addiu   t4, t4, 0x8BFC             # t4 = 80118BFC
    addiu   t3, t3, 0x8BF4             # t3 = 80118BF4
    sub.s   $f16, $f10, $f0
    swc1    $f4, 0x0068($sp)
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    mfc1    a3, $f16
    sw      s0, 0x0018($sp)
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFEC
    jal     func_80030224
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beql    v0, $zero, lbl_80022084
    lhu     t7, 0x0088(s0)             # 00000088
    lhu     t5, 0x0088(s0)             # 00000088
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    ori     t6, t5, 0x0010             # t6 = 00000010
    sh      t6, 0x0088(s0)             # 00000088
    lwc1    $f4, 0x0074($sp)
    lwc1    $f18, 0x0058($sp)
    add.s   $f6, $f18, $f4
    sub.s   $f10, $f6, $f8
    b       lbl_8002208C
    swc1    $f10, 0x0028(s0)           # 00000028
    lhu     t7, 0x0088(s0)             # 00000088
lbl_80022084:
    andi    t9, t7, 0xFFEF             # t9 = 00000000
    sh      t9, 0x0088(s0)             # 00000088
lbl_8002208C:
    lw      t8, 0x008C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0064            # a2 = FFFFFFEC
    andi    t0, t8, 0x0004             # t0 = 00000000
    beql    t0, $zero, lbl_800221DC
    lw      $ra, 0x0034($sp)
    lw      a0, 0x0078($sp)
    lwc1    $f16, 0x0104(s0)           # 00000104
    or      a3, t8, $zero              # a3 = 00000000
    addiu   t2, a0, 0x07C0             # t2 = 000007C0
    sw      t2, 0x0040($sp)
    jal     func_80021C60
    swc1    $f16, 0x0068($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   t3, $sp, 0x0050            # t3 = FFFFFFD8
    addiu   t4, $sp, 0x0054            # t4 = FFFFFFDC
    swc1    $f18, 0x0050($sp)
    lw      a3, 0x002C(s0)             # 0000002C
    lw      a2, 0x0024(s0)             # 00000024
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    lw      a0, 0x0078($sp)
    jal     func_800347FC
    lw      a1, 0x0040($sp)
    beq     v0, $zero, lbl_800221C0
    lwc1    $f4, 0x0050($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    mtc1    $zero, $f16                # $f16 = 0.00
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0084(s0)            # 00000084
    lwc1    $f10, 0x0084(s0)           # 00000084
    c.lt.s  $f10, $f16
    nop
    bc1fl   lbl_8002212C
    lhu     v0, 0x0088(s0)             # 00000088
    lhu     t5, 0x0088(s0)             # 00000088
    andi    t6, t5, 0xFF9F             # t6 = 00000000
    b       lbl_800221D8
    sh      t6, 0x0088(s0)             # 00000088
    lhu     v0, 0x0088(s0)             # 00000088
lbl_8002212C:
    andi    t7, v0, 0x0020             # t7 = 00000000
    bne     t7, $zero, lbl_800221B4
    ori     t9, v0, 0x0040             # t9 = 00000040
    sh      t9, 0x0088(s0)             # 00000088
    lw      t0, 0x008C($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFCC
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    andi    t8, t0, 0x0040             # t8 = 00000000
    bne     t8, $zero, lbl_800221B0
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    lwc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0050($sp)
    lw      a0, 0x0078($sp)
    swc1    $f18, 0x0044($sp)
    swc1    $f4, 0x0048($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x0010($sp)
    jal     func_8001CF3C
    swc1    $f6, 0x004C($sp)
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    sw      t1, 0x0010($sp)
    lw      a0, 0x0078($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFCC
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_8001CF3C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    sw      t2, 0x0010($sp)
    lw      a0, 0x0078($sp)
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFCC
    addiu   a2, $zero, 0x0064          # a2 = 00000064
    jal     func_8001CF3C
    addiu   a3, $zero, 0x01F4          # a3 = 000001F4
lbl_800221B0:
    lhu     v0, 0x0088(s0)             # 00000088
lbl_800221B4:
    ori     t3, v0, 0x0020             # t3 = 00000020
    b       lbl_800221D8
    sh      t3, 0x0088(s0)             # 00000088
lbl_800221C0:
    lhu     t4, 0x0088(s0)             # 00000088
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f8                   # $f8 = -32000.00
    andi    t5, t4, 0xFF9F             # t5 = 00000000
    sh      t5, 0x0088(s0)             # 00000088
    swc1    $f8, 0x0084(s0)            # 00000084
lbl_800221D8:
    lw      $ra, 0x0034($sp)
lbl_800221DC:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0078           # $sp += 0x78
    jr      $ra
    nop


func_800221EC:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0058($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s0, 0x0054($sp)
    sw      a1, 0x006C($sp)
    sw      a2, 0x0070($sp)
    sw      a3, 0x0074($sp)
    lw      t6, 0x0074($sp)
    lw      s0, 0x02C4(t6)             # 000002C4
    addiu   s0, s0, 0xFFE0             # s0 = FFFFFFE0
    sw      s0, 0x02C4(t6)             # 000002C4
    lw      t7, 0x006C($sp)
    sw      s0, 0x0064($sp)
    lwc1    $f4, 0x0000(s1)            # 00000000
    lwc1    $f0, 0x0000(t7)            # 00000000
    lw      t8, 0x0074($sp)
    c.eq.s  $f4, $f0
    nop
    bc1fl   lbl_8002226C
    mov.s   $f14, $f0
    lwc1    $f6, 0x0008(s1)            # 00000008
    lwc1    $f8, 0x0008(t7)            # 00000008
    lui     $at, 0x8010                # $at = 80100000
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_8002226C
    mov.s   $f14, $f0
    lwc1    $f10, 0x64AC($at)          # 801064AC
    b       lbl_8002226C
    add.s   $f14, $f0, $f10
    mov.s   $f14, $f0
lbl_8002226C:
    lw      s0, 0x02C4(t8)             # 000002C4
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   a2, s0, 0xFFF0             # a2 = FFFFFFD0
    sw      a2, 0x02C4(t8)             # 000002C4
    lw      t9, 0x007C($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    mfc1    a3, $f14
    sw      a2, 0x0000(t9)             # 00000000
    lw      t2, 0x006C($sp)
    lw      t3, 0x0070($sp)
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    lwc1    $f18, 0x0004(t2)           # 00000004
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    lw      a1, 0x0064($sp)
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0008(t2)            # 00000008
    mtc1    $at, $f18                  # $f18 = 1.00
    addiu   a0, a0, 0x8C20             # a0 = 80118C20
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x0000(s1)            # 00000000
    swc1    $f6, 0x0018($sp)
    lwc1    $f8, 0x0004(s1)            # 00000004
    swc1    $f8, 0x001C($sp)
    lwc1    $f10, 0x0008(s1)           # 00000008
    swc1    $f16, 0x002C($sp)
    swc1    $f16, 0x0024($sp)
    swc1    $f18, 0x0028($sp)
    swc1    $f10, 0x0020($sp)
    lwc1    $f0, 0x0000(t3)            # 00000000
    swc1    $f0, 0x0030($sp)
    lwc1    $f2, 0x0004(t3)            # 00000004
    swc1    $f2, 0x0034($sp)
    lwc1    $f12, 0x0008(t3)           # 00000008
    sw      t5, 0x004C($sp)
    sw      t4, 0x0048($sp)
    swc1    $f0, 0x003C($sp)
    swc1    $f2, 0x0040($sp)
    swc1    $f12, 0x0038($sp)
    jal     func_800D15D8
    swc1    $f12, 0x0044($sp)
    lw      v1, 0x0078($sp)
    lw      t0, 0x0064($sp)
    lw      t1, 0x007C($sp)
    or      a1, v1, $zero              # a1 = 00000000
    lui     t6, 0xDC08                 # t6 = DC080000
    ori     t6, t6, 0x000A             # t6 = DC08000A
    sw      t6, 0x0000(a1)             # 00000000
    sw      t0, 0x0004(a1)             # 00000004
    addiu   v1, v1, 0x0008             # v1 = 00000008
    or      a2, v1, $zero              # a2 = 00000008
    lui     t7, 0xDC08                 # t7 = DC080000
    ori     t7, t7, 0x030A             # t7 = DC08030A
    addiu   t8, t0, 0x0010             # t8 = 00000010
    sw      t8, 0x0004(a2)             # 0000000C
    sw      t7, 0x0000(a2)             # 00000008
    addiu   v1, v1, 0x0008             # v1 = 00000010
    lw      a0, 0x0000(t1)             # 00000000
    lui     $at, 0xF200                # $at = F2000000
    or      a3, v1, $zero              # a3 = 00000010
    lw      t2, 0x0004(a0)             # 00000004
    lw      t6, 0x0000(a0)             # 00000000
    addiu   v1, v1, 0x0008             # v1 = 00000018
    andi    t3, t2, 0x0FFF             # t3 = 00000000
    andi    t7, t6, 0x0FFF             # t7 = 0000000A
    sll     t8, t7, 12
    or      t4, t3, $at                # t4 = F2000000
    or      t9, t4, t8                 # t9 = F2000010
    sw      t9, 0x0000(a3)             # 00000010
    lw      a0, 0x0000(t1)             # 00000000
    lui     $at, 0x0100                # $at = 01000000
    or      v0, v1, $zero              # v0 = 00000018
    lw      t2, 0x0004(a0)             # 00000004
    lw      t4, 0x0000(a0)             # 00000000
    addiu   t5, t2, 0x003C             # t5 = 0000003C
    addiu   t9, t4, 0x003C             # t9 = F200003C
    andi    t2, t9, 0x0FFF             # t2 = 0000003C
    andi    t6, t5, 0x0FFF             # t6 = 0000003C
    or      t7, t6, $at                # t7 = 0100003C
    sll     t3, t2, 12
    or      t5, t7, t3                 # t5 = 0100003C
    sw      t5, 0x0004(a3)             # 00000014
    lw      $ra, 0x005C($sp)
    lw      s0, 0x0054($sp)
    lw      s1, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_800223C8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    lw      t6, 0x02C0(a3)             # 000002C0
    addiu   t7, $sp, 0x002C            # t7 = FFFFFFFC
    sw      t7, 0x0014($sp)
    sw      a3, 0x003C($sp)
    jal     func_800221EC
    sw      t6, 0x0010($sp)
    lw      a3, 0x003C($sp)
    sw      v0, 0x02C0(a3)             # 000002C0
    lw      $ra, 0x001C($sp)
    lw      v0, 0x002C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80022400:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    lw      t6, 0x02D0(a3)             # 000002D0
    addiu   t7, $sp, 0x002C            # t7 = FFFFFFFC
    sw      t7, 0x0014($sp)
    sw      a3, 0x003C($sp)
    jal     func_800221EC
    sw      t6, 0x0010($sp)
    lw      a3, 0x003C($sp)
    sw      v0, 0x02D0(a3)             # 000002D0
    lw      $ra, 0x001C($sp)
    lw      v0, 0x002C($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80022438:
# Sets lighting angles for shiny things or something.
# A0 = Actor Instance
# A1 = Global Context
# A2 = ?
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lb      t6, 0x0A4E(v0)             # 00000A4E
    lw      a0, 0x0058($sp)
    addiu   a1, s0, 0x00E0             # a1 = 000000E0
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF0
    addiu   a0, a0, 0x0024             # a0 = 00000024
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0048($sp)
    lb      t7, 0x0A4F(v0)             # 00000A4F
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x004C($sp)
    lb      t8, 0x0A50(v0)             # 00000A50
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0050($sp)
    jal     func_800223C8
    lw      a3, 0x0000(s0)             # 00000000
    lw      t9, 0x0060($sp)
    lui     t0, 0xDF00                 # t0 = DF000000
    beql    t9, $zero, lbl_80022544
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0000(s0)             # 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    lw      a1, 0x0000(s0)             # 00000000
    lw      t1, 0x0000(v0)             # 00000000
    lw      t6, 0x0004(v0)             # 00000004
    lui     $at, 0xF200                # $at = F2000000
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    sll     t3, t2, 12
    or      t4, t3, $at                # t4 = F2000000
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t8, t4, t7                 # t8 = F2000000
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0004(v0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    addiu   t1, t9, 0x003C             # t1 = 0000003C
    andi    t2, t1, 0x0FFF             # t2 = 0000003C
    sll     t3, t2, 12
    addiu   t7, t6, 0x003C             # t7 = 0000003C
    andi    t8, t7, 0x0FFF             # t8 = 0000003C
    or      t5, t3, $at                # t5 = 01000000
    or      t9, t5, t8                 # t9 = 0100003C
    sw      t9, 0x0004(v1)             # FFFFFFF4
    sw      t0, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    lw      a3, 0x02C0(a1)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x001C             # t2 = DB06001C
    addiu   t1, a3, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a1)             # 000002C0
    sw      v1, 0x0004(a3)             # 00000004
    sw      t2, 0x0000(a3)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_80022544:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80022554:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0058($sp)
    sw      a2, 0x0060($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    lb      t6, 0x0A4E(v0)             # 00000A4E
    lw      a0, 0x0058($sp)
    addiu   a1, s0, 0x00E0             # a1 = 000000E0
    mtc1    t6, $f4                    # $f4 = 0.00
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFF0
    addiu   a0, a0, 0x0024             # a0 = 00000024
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0048($sp)
    lb      t7, 0x0A4F(v0)             # 00000A4F
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x004C($sp)
    lb      t8, 0x0A50(v0)             # 00000A50
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0050($sp)
    jal     func_80022400
    lw      a3, 0x0000(s0)             # 00000000
    lw      t9, 0x0060($sp)
    lui     t0, 0xDF00                 # t0 = DF000000
    beql    t9, $zero, lbl_80022660
    lw      $ra, 0x001C($sp)
    lw      a0, 0x0000(s0)             # 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    lw      a1, 0x0000(s0)             # 00000000
    lw      t1, 0x0000(v0)             # 00000000
    lw      t6, 0x0004(v0)             # 00000004
    lui     $at, 0xF200                # $at = F2000000
    andi    t2, t1, 0x0FFF             # t2 = 00000000
    sll     t3, t2, 12
    or      t4, t3, $at                # t4 = F2000000
    andi    t7, t6, 0x0FFF             # t7 = 00000000
    or      t8, t4, t7                 # t8 = F2000000
    sw      t8, 0x0000(v1)             # FFFFFFF0
    lw      t9, 0x0000(v0)             # 00000000
    lw      t6, 0x0004(v0)             # 00000004
    lui     $at, 0x0100                # $at = 01000000
    addiu   t1, t9, 0x003C             # t1 = 0000003C
    andi    t2, t1, 0x0FFF             # t2 = 0000003C
    sll     t3, t2, 12
    addiu   t7, t6, 0x003C             # t7 = 0000003C
    andi    t8, t7, 0x0FFF             # t8 = 0000003C
    or      t5, t3, $at                # t5 = 01000000
    or      t9, t5, t8                 # t9 = 0100003C
    sw      t9, 0x0004(v1)             # FFFFFFF4
    sw      t0, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    lw      a3, 0x02D0(a1)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    ori     t2, t2, 0x001C             # t2 = DB06001C
    addiu   t1, a3, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a1)             # 000002D0
    sw      v1, 0x0004(a3)             # 00000004
    sw      t2, 0x0000(a3)             # 00000000
    lw      $ra, 0x001C($sp)
lbl_80022660:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80022670:
    lw      t7, 0x0038(a1)             # 00000038
    or      v0, a0, $zero              # v0 = 00000000
    sw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x003C(a1)             # 0000003C
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x0040(a1)             # 00000040
    sw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x0044(a1)             # 00000044
    sw      t6, 0x000C(a0)             # 0000000C
    lw      t7, 0x0048(a1)             # 00000048
    sw      t7, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_800226A4:
    lw      t7, 0x0024(a1)             # 00000024
    or      v0, a0, $zero              # v0 = 00000000
    sw      t7, 0x0000(a0)             # 00000000
    lw      t6, 0x0028(a1)             # 00000028
    sw      t6, 0x0004(a0)             # 00000004
    lw      t7, 0x002C(a1)             # 0000002C
    sw      t7, 0x0008(a0)             # 00000008
    lw      t6, 0x0030(a1)             # 00000030
    sw      t6, 0x000C(a0)             # 0000000C
    lw      t7, 0x0034(a1)             # 00000034
    sw      t7, 0x0010(a0)             # 00000010
    jr      $ra
    nop


func_800226D8:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      a1, 0x0034($sp)
    addiu   a0, $sp, 0x001C            # a0 = FFFFFFEC
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      t7, 0x0034($sp)
    lw      v0, 0x0030($sp)
    addiu   t6, $sp, 0x0028            # t6 = FFFFFFF8
    lwl     t9, 0x00B4(t7)             # 000000B4
    lwr     t9, 0x00B7(t7)             # 000000B7
    addiu   t0, $sp, 0x001C            # t0 = FFFFFFEC
    swl     t9, 0x0000(t6)             # FFFFFFF8
    swr     t9, 0x0003(t6)             # FFFFFFFB
    lhu     t9, 0x00B8(t7)             # 000000B8
    sh      t9, 0x0004(t6)             # FFFFFFFC
    lw      t2, 0x0000(t0)             # FFFFFFEC
    sw      t2, 0x0000(v0)             # 00000000
    lw      t1, 0x0004(t0)             # FFFFFFF0
    sw      t1, 0x0004(v0)             # 00000004
    lw      t2, 0x0008(t0)             # FFFFFFF4
    sw      t2, 0x0008(v0)             # 00000008
    lw      t1, 0x000C(t0)             # FFFFFFF8
    sw      t1, 0x000C(v0)             # 0000000C
    lw      t2, 0x0010(t0)             # FFFFFFFC
    sw      t2, 0x0010(v0)             # 00000010
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


# Get effective distance to actor for targeting purposes
# a0 = actor instance
# a1 = ???
# a2 = ???
# returns distance in f0
func_80022754:
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16                 # sign extend a2
    lh      t6, 0x008A(a0)             # link-to-actor-angle
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t9, t6, $at                # t9 = angle - 7FFF
    subu    v0, t9, a2                 # v0 = angle - 7FFF - a2
    sll     v0, v0, 16
    sra     v0, v0, 16                 # sign extend v0
    bltz    v0, lbl_8002278C           # if v0 negative, branch
    subu    v1, $zero, v0              # v1 = -v0
    sll     v1, v0, 16
    b       lbl_80022794
    sra     v1, v1, 16                 # sign extend v0 into v1
lbl_8002278C:
    sll     v1, v1, 16
    sra     v1, v1, 16                 # sign extend v1
lbl_80022794:                          # note: v1 = abs(v0) at this point
    lw      t0, 0x0654(a1)
    slti    $at, v1, 0x4001            # at = (v1 < 0x4001)
    beql    t0, $zero, lbl_80022808
    slti    $at, v1, 0x2AAB            # if branch taken: at = (v1 < 0x2AAB)
    beq     $at, $zero, lbl_800227C0   # if v1 > 0x4001, branch
    nop
    lw      t1, 0x0004(a0)             # t1 = actor flags
    addiu   t3, $zero, 0x4000
    subu    t4, t3, v1                 # t4 = v1 - 0x4000
    sll     t2, t1,  4
    bgez    t2, lbl_800227CC           if !(actor_flags & 0x08000000) [lock allowed], branch
lbl_800227C0:
    lui     $at, 0x8010                # $at = 80100000
    jr      $ra
    lwc1    $f0, 0x64B0($at)           # f0 = 1e39 (prevent targeting)
lbl_800227CC:
    mtc1    t4, $f4
    lui     $at, 0x3800
    mtc1    $at, $f8                   # $f8 = 1.0/32768
    cvt.s.w $f6, $f4                   # f6 = float(0x4000 - v1) = ang_from_center
    lui     $at, 0x8010
    lwc1    $f16, 0x64B4($at)          # appears to be 0.8
    lwc1    $f12, 0x008C(a0)           # f12 = distance_from_link^2 = dist2
    mul.s   $f10, $f6, $f8             # f10 = ang_from_center * 1/32768 = ang_frac
    nop
    mul.s   $f18, $f12, $f16           # f18 = 0.8 * distance_from_link^2
    nop
    mul.s   $f4, $f18, $f10            # f4 = 0.8 * distance_from_link^2 * ang_frac
    jr      $ra
    sub.s   $f0, $f12, $f4             # f0 = dist2 - 0.8 * dist2 * ang_frac
lbl_80022804:
    slti    $at, v1, 0x2AAB
lbl_80022808:
    bne     $at, $zero, lbl_80022818   # if close to center angle, branch
    lui     $at, 0x8010
    jr      $ra
    lwc1    $f0, 0x64B8($at)           # f0 = 1e39 (prevent targeting)
lbl_80022818:
    lwc1    $f0, 0x008C(a0)            # f0 = distance_from_link^2
    jr      $ra
    nop


# check if distance to actor is close enough to attract Navi
# a0 = actor instance
# a1 = distance squared
func_80022824:
    mtc1    a1, $f12                   # $f12 = distance squared
    nop
    lb      t6, 0x001F(a0)             # read 0x1F byte of actor
    lui     $at, 0x800F                # $at = 800F0000
    or      v0, $zero, $zero           # v0 = 00000000
    sll     t7, t6,  3                 # t7 = array offset = 8 * *(actor + 0x1F)
    addu    $at, $at, t7
    lwc1    $f4, -0x7D78($at)          # 800E8288 + 8 * t6
    c.lt.s  $f12, $f4                  # compare array value to distance-squared
    nop
    bc1f    lbl_80022858
    nop
    addiu   v0, $zero, 0x0001          # v0 = 00000001 if distance-squared is less than lookup value
lbl_80022858:
    jr      $ra
    nop


func_80022860:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t6, 0x0130(a0)             # 00000130
    beq     t6, $zero, lbl_80022884
    nop
    lw      t7, 0x0004(a0)             # 00000004
    andi    t8, t7, 0x0001             # t8 = 00000000
    bne     t8, $zero, lbl_8002288C
    nop
lbl_80022884:
    b       lbl_80022920
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002288C:
    bnel    a2, $zero, lbl_80022920
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t9, 0x008A(a0)             # 0000008A
    lh      t3, 0x00B6(a1)             # 000000B6
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t2, t9, $at
    subu    v0, t2, t3
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_800228C4
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_800228CC
    sra     v1, v1, 16
lbl_800228C4:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_800228CC:
    lw      t4, 0x0654(a1)             # 00000654
    slti    $at, v1, 0x2AAB
    bnel    t4, $zero, lbl_800228F0
    lwc1    $f0, 0x008C(a0)            # 0000008C
    bne     $at, $zero, lbl_800228EC
    lui     $at, 0x8010                # $at = 80100000
    b       lbl_800228F0
    lwc1    $f0, 0x64BC($at)           # 801064BC
lbl_800228EC:
    lwc1    $f0, 0x008C(a0)            # 0000008C
lbl_800228F0:
    lb      t5, 0x001F(a0)             # 0000001F
    lui     $at, 0x800F                # $at = 800F0000
    sll     t6, t5,  3
    addu    $at, $at, t6
    lwc1    $f4, -0x7D74($at)          # 800E828C
    mul.s   $f6, $f4, $f0
    mfc1    a1, $f6
    jal     func_80022824
    nop
    b       lbl_80022920
    sltiu   v0, v0, 0x0001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80022920:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80022930:
# Tests if actor flag 0x0100 is set and unsets it if it's the case
# A0 = Actor Instance
# A1 = Global Context
# V0 = 1 if flag was set, else 0
    sw      a1, 0x0004($sp)
    lw      v1, 0x0004(a0)             # 00000004
    addiu   $at, $zero, 0xFEFF         # $at = FFFFFEFF
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t6, v1, 0x0100             # t6 = 00000000
    beq     t6, $zero, lbl_80022958
    and     t7, v1, $at
    sw      t7, 0x0004(a0)             # 00000004
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022958:
    jr      $ra
    nop


func_80022960:
# NPC Request Trade Item
# A0 = Actor Instance
# A1 = Global Context
# A2 = float (distance 1?)
# A3 = float (distance 2?)
# SP+0x10 = Trade Item Index
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a3, 0x002C($sp)
    lw      v1, 0x1C44(a1)             # 00001C44
    lw      t8, 0x0030($sp)
    lw      t6, 0x0004(v1)             # 00000004
    andi    t7, t6, 0x0100             # t7 = 00000000
    bne     t7, $zero, lbl_80022A04
    nop
    beq     t8, $zero, lbl_800229B0
    or      a0, a1, $zero              # a0 = 00000000
    sw      v1, 0x001C($sp)
    jal     func_8007943C
    sw      a2, 0x0020($sp)
    lw      v1, 0x001C($sp)
    bne     v0, $zero, lbl_80022A04
    lw      a2, 0x0020($sp)
lbl_800229B0:
    lbu     t9, 0x010C(a2)             # 0000010C
    bnel    t9, $zero, lbl_80022A10
    sw      a2, 0x0684(v1)             # 00000684
    lwc1    $f0, 0x0094(a2)            # 00000094
    lwc1    $f4, 0x002C($sp)
    abs.s   $f0, $f0
    c.lt.s  $f4, $f0
    nop
    bc1t    lbl_80022A04
    nop
    lwc1    $f0, 0x0090(a2)            # 00000090
    lwc1    $f6, 0x0688(v1)            # 00000688
    lwc1    $f8, 0x0028($sp)
    c.lt.s  $f6, $f0
    nop
    bc1t    lbl_80022A04
    nop
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_80022A10
    sw      a2, 0x0684(v1)             # 00000684
lbl_80022A04:
    b       lbl_80022A24
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a2, 0x0684(v1)             # 00000684
lbl_80022A10:
    lwc1    $f10, 0x0090(a2)           # 00000090
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    swc1    $f10, 0x0688(v1)           # 00000688
    lw      t0, 0x0030($sp)
    sb      t0, 0x0683(v1)             # 00000683
lbl_80022A24:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022A34:
# NPC Request Trade Item
# (Wrapper for 80022960)
# Passes A2 into A2 and A3 of inner function
# A0 = Actor Instance
# A1 = Global Context
# A2 = float distance?
# A3 = Trade Item Index
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x001C($sp)
    sw      a3, 0x002C($sp)
    lw      t6, 0x002C($sp)
    mfc1    a2, $f12
    mfc1    a3, $f12
    jal     func_80022960
    sw      t6, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022A68:
# NPC Request Trade Item?
# (Wrapper for 80022A34)
# Calls wrapped function with A3 = 0
# A0 = Actor Instance
# A1 = Global Context
# A2 = float distance?
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    a2, $f12                   # $f12 = 0.00
    sw      $ra, 0x0014($sp)
    mfc1    a2, $f12
    jal     func_80022A34
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80022A90:
# NPC Request Trade Item?
# (Wrapper for 80022A68)
# Calls wrapped function with A2 =(float) s16 Inst. + 0x98 + 50.0f
# A0 = Actor Instance
# A1 = Global Context
# V0 = 1 if successful, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      t6, 0x00A8(a0)             # 000000A8
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f0, $f6, $f8
    mfc1    a2, $f0
    jal     func_80022A68
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80022AD0:
# Checks if the current dialog state is 2
# A0 = Actor Instance
# A1 = Global Context
# V0 = 1 if true, else 0
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_800DD464
    addiu   a0, a1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_80022AF8
    lw      $ra, 0x0014($sp)
    b       lbl_80022AFC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022AF8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80022AFC:
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80022B04:
# Get Trade Item Link is holding
# V0 = Link Instance + 0x0683
    lw      v1, 0x1C44(a0)             # 00001C44
    lb      v0, 0x0683(v1)             # 00000683
    jr      $ra
    nop


func_80022B14:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      a1, 0x002C($sp)
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x0018            # a3 = FFFFFFF0
    jal     func_8001F7A0
    addiu   a1, a1, 0x0038             # a1 = 00000038
    lwc1    $f4, 0x001C($sp)
    lwc1    $f6, 0x0018($sp)
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f0                   # $f0 = 160.00
    mul.s   $f8, $f4, $f6
    lw      t8, 0x0030($sp)
    lui     $at, 0xC2F0                # $at = C2F00000
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f0
    mtc1    $at, $f10                  # $f10 = -120.00
    lui     $at, 0x42F0                # $at = 42F00000
    trunc.w.s $f18, $f16
    mfc1    t7, $f18
    mtc1    $at, $f18                  # $f18 = 120.00
    sh      t7, 0x0000(t8)             # 00000000
    lwc1    $f6, 0x0018($sp)
    lwc1    $f4, 0x0020($sp)
    lw      t1, 0x0034($sp)
    mul.s   $f8, $f4, $f6
    nop
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    sh      t0, 0x0000(t1)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80022BB0:
# Is Actor Held? Or Interacting?
# A0 = Actor Instance
# V0 = 0 if Instance + 0x118 is null, else 1
    sw      a1, 0x0004($sp)
    lw      t6, 0x0118(a0)             # 00000118
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t6, $zero, lbl_80022BCC
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022BCC:
    jr      $ra
    nop


func_80022BD4:
# Give Item
# A0 = Actor instance (Actor giving item)
# A1 = Global Context
# A2 = Get Item ID
# A3 = float, max xz distance from actor to Link that item will be given
# SP+10 = float, max y distance from actor to Link that item will be given
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    sw      a3, 0x002C($sp)
    lw      a3, 0x1C44(a1)             # 00001C44
    lui     $at, 0x003C                # $at = 003C0000
    ori     $at, $at, 0x7080           # $at = 003C7080
    lw      t6, 0x066C(a3)             # 0000066C
    or      a0, a3, $zero              # a0 = 00000000
    and     t7, t6, $at
    bnel    t7, $zero, lbl_80022CE4
    or      v0, $zero, $zero           # v0 = 00000000
    sw      a2, 0x0028($sp)
    jal     func_80079D74
    sw      a3, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lw      a2, 0x0028($sp)
    bgez    v0, lbl_80022CE0
    lw      a3, 0x001C($sp)
    lw      t8, 0x039C(a3)             # 0000039C
    bne     t8, $zero, lbl_80022C38
    nop
    lw      t9, 0x0684(a3)             # 00000684
    bnel    a0, t9, lbl_80022C4C
    lw      t0, 0x066C(a3)             # 0000066C
lbl_80022C38:
    blez    a2, lbl_80022C48
    slti    $at, a2, 0x007E
    bnel    $at, $zero, lbl_80022C64
    lwc1    $f4, 0x0090(a0)            # 00000090
lbl_80022C48:
    lw      t0, 0x066C(a3)             # 0000066C
lbl_80022C4C:
    lui     $at, 0x2000                # $at = 20000000
    ori     $at, $at, 0x0800           # $at = 20000800
    and     t1, t0, $at
    bnel    t1, $zero, lbl_80022CE4
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f4, 0x0090(a0)            # 00000090
lbl_80022C64:
    lwc1    $f6, 0x002C($sp)
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80022CE4
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f0, 0x0094(a0)            # 00000094
    lwc1    $f8, 0x0030($sp)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80022CE4
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t2, 0x008A(a0)             # 0000008A
    lh      t3, 0x00B6(a3)             # 000000B6
    subu    v0, t2, t3
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80022CB8
    subu    v1, $zero, v0
    b       lbl_80022CB8
    or      v1, v0, $zero              # v1 = 00000000
lbl_80022CB8:
    bne     a2, $zero, lbl_80022CD0
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lhu     t4, 0x0426(a3)             # 00000426
    slt     $at, t4, v1
    beql    $at, $zero, lbl_80022CE4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80022CD0:
    sb      a2, 0x0424(a3)             # 00000424
    sw      a0, 0x0428(a3)             # 00000428
    b       lbl_80022CE4
    sh      v1, 0x0426(a3)             # 00000426
lbl_80022CE0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80022CE4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022CF4:
# Give Item Wrapper (80022BD4)
# Sets A3 to 50.0f, SP+0x10 to 10.0f
# A0 = Actor Instance
# A1 = Global Context
# A2 = Get Item Id
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     a3, 0x4248                 # a3 = 42480000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022D20:
# Give Item Wrapper (80022CF4)
# Sets A2 to 0
# A0 = Actor Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022CF4
    or      a2, $zero, $zero           # a2 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80022D40:
    sw      a1, 0x0004($sp)
    lw      t6, 0x0118(a0)             # 00000118
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80022D5C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022D5C:
    jr      $ra
    nop


func_80022D64:
    sw      a2, 0x0008($sp)
    lw      v0, 0x0118(a0)             # 00000118
    lh      t6, 0x0000(v0)             # 00000000
    bnel    t6, $zero, lbl_80022D84
    sw      a1, 0x011C(v0)             # 0000011C
    sw      a1, 0x039C(v0)             # 0000039C
    sw      a1, 0x0428(v0)             # 00000428
    sw      a1, 0x011C(v0)             # 0000011C
lbl_80022D84:
    sw      v0, 0x0118(a1)             # 00000118
    sw      $zero, 0x0118(a0)          # 00000118
    jr      $ra
    nop


func_80022D94:
    lw      v0, 0x1C44(a1)             # 00001C44
    lwc1    $f0, 0x008C(a0)            # 0000008C
    lwc1    $f4, 0x0694(v0)            # 00000694
    c.lt.s  $f0, $f4
    nop
    bc1f    lbl_80022DB4
    nop
    swc1    $f0, 0x0694(v0)            # 00000694
lbl_80022DB4:
    jr      $ra
    nop


func_80022DBC:
    sw      a0, 0x0000($sp)
    lw      t6, 0x011C(a1)             # 0000011C
    or      v0, $zero, $zero           # v0 = 00000000
    beq     t6, $zero, lbl_80022DD8
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022DD8:
    jr      $ra
    nop


func_80022DE0:
    lw      v1, 0x1C44(a0)             # 00001C44
    lui     $at, 0x003C                # $at = 003C0000
    ori     $at, $at, 0x7880           # $at = 003C7880
    lw      t6, 0x066C(v1)             # 0000066C
    or      v0, $zero, $zero           # v0 = 00000000
    and     t7, t6, $at
    bne     t7, $zero, lbl_80022E10
    nop
    sw      a1, 0x0430(v1)             # 00000430
    sb      a2, 0x042C(v1)             # 0000042C
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022E10:
    jr      $ra
    nop


func_80022E18:
    sw      a0, 0x0000($sp)
    lw      t6, 0x011C(a1)             # 0000011C
    or      v0, $zero, $zero           # v0 = 00000000
    bne     t6, $zero, lbl_80022E34
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80022E34:
    jr      $ra
    nop


func_80022E3C:
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    sw      a1, 0x0004($sp)
    lw      v0, 0x1C44(a0)             # 00001C44
    lw      t6, 0x0018($sp)
    sb      t6, 0x0890(v0)             # 00000890
    lw      t7, 0x0014($sp)
    swc1    $f12, 0x0894(v0)           # 00000894
    sh      a3, 0x0892(v0)             # 00000892
    sb      t7, 0x0891(v0)             # 00000891
    lwc1    $f4, 0x0010($sp)
    swc1    $f4, 0x0898(v0)            # 00000898
    jr      $ra
    nop


func_80022E7C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    sw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0038($sp)
    lw      t7, 0x003C($sp)
    mfc1    a2, $f12
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80022E3C
    sw      t7, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80022EC4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a3, 0x002C($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0030($sp)
    mfc1    a2, $f12
    sw      $zero, 0x0014($sp)
    jal     func_80022E7C
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022F00:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a3, 0x0034($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    sw      $ra, 0x0024($sp)
    lwc1    $f4, 0x0038($sp)
    lw      t7, 0x003C($sp)
    mfc1    a2, $f12
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0014($sp)
    swc1    $f4, 0x0010($sp)
    jal     func_80022E3C
    sw      t7, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80022F48:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a3, 0x002C($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    sw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0030($sp)
    mfc1    a2, $f12
    sw      $zero, 0x0014($sp)
    jal     func_80022F00
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022F84:
# Play Sound Effect (Actor)
# A0 = Actor Instance
# A1 = Sfx Id
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0020($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    sw      t6, 0x0014($sp)
    lhu     a0, 0x0026($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    sw      a3, 0x0010($sp)
    jal     func_800C806C
    addiu   a1, a1, 0x00E4             # a1 = 000000E4
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80022FD0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    jal     func_80064780
    addiu   a0, a2, 0x00E4             # a0 = 000000E4
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80022FFC:
# Play surface sound effect?
# A0 = Global Context
# A1 = Actor Instance
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lhu     t6, 0x0088(a3)             # 00000088
    lw      a0, 0x0020($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    andi    t7, t6, 0x0020             # t7 = 00000000
    beq     t7, $zero, lbl_80023050
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lwc1    $f4, 0x0084(a3)            # 00000084
    mtc1    $at, $f6                   # $f6 = 20.00
    nop
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80023048
    nop
    b       lbl_80023068
    addiu   v1, $zero, 0x0004          # v1 = 00000004
lbl_80023048:
    b       lbl_80023068
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_80023050:
    lw      a1, 0x0078(a3)             # 00000078
    lbu     a2, 0x007D(a3)             # 0000007D
    jal     func_800345DC
    sw      a3, 0x0024($sp)
    lw      a3, 0x0024($sp)
    or      v1, v0, $zero              # v1 = 00000000
lbl_80023068:
    addiu   a0, a3, 0x00E4             # a0 = 000000E4
    sw      a0, 0x0018($sp)
    addiu   a1, $zero, 0x282F          # a1 = 0000282F
    jal     func_80064780
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    addiu   a1, v1, 0x0800             # a1 = 00000800
    jal     func_80064780
    andi    a1, a1, 0xFFFF             # a1 = 00000800
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800230A0:
# Set 3D SFX?
# Flips bit at 0x00080000 of Actor + 0x04 to it's 1 state?
# A0 = Actor Instance to write 3D sfx to?
# A1 = SFX ID
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0x0008                # $at = 00080000
    sh      a1, 0x0020(a0)             # 00000020
    or      t7, t6, $at                # t7 = 00080000
    lui     $at, 0xEFCF                # $at = EFCF0000
    ori     $at, $at, 0xFFFF           # $at = EFCFFFFF
    sw      t7, 0x0004(a0)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_800230D4:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0x0010                # $at = 00100000
    sh      a1, 0x0020(a0)             # 00000020
    or      t7, t6, $at                # t7 = 00100000
    lui     $at, 0xEFD7                # $at = EFD70000
    ori     $at, $at, 0xFFFF           # $at = EFD7FFFF
    sw      t7, 0x0004(a0)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_80023108:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0x0020                # $at = 00200000
    sh      a1, 0x0020(a0)             # 00000020
    or      t7, t6, $at                # t7 = 00200000
    lui     $at, 0xEFE7                # $at = EFE70000
    ori     $at, $at, 0xFFFF           # $at = EFE7FFFF
    sw      t7, 0x0004(a0)             # 00000004
    and     t9, t7, $at
    sw      t9, 0x0004(a0)             # 00000004
    jr      $ra
    nop


func_8002313C:
    sw      a1, 0x0004($sp)
    andi    a1, a1, 0xFFFF             # a1 = 00000000
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0xEFC7                # $at = EFC70000
    ori     $at, $at, 0xFFFF           # $at = EFC7FFFF
    and     t7, t6, $at
    sw      t7, 0x0004(a0)             # 00000004
    sh      a1, 0x0020(a0)             # 00000020
    jr      $ra
    nop


func_80023164:
    lw      t6, 0x0004(a0)             # 00000004
    lui     $at, 0x1000                # $at = 10000000
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    or      t7, t6, $at                # t7 = 10000000
    lui     $at, 0xFFC7                # $at = FFC70000
    ori     $at, $at, 0xFFFF           # $at = FFC7FFFF
    and     t9, t7, $at
    sw      t7, 0x0004(a0)             # 00000004
    slti    $at, a1, 0x0028
    beq     $at, $zero, lbl_80023198
    sw      t9, 0x0004(a0)             # 00000004
    jr      $ra
    sh      t0, 0x0020(a0)             # 00000020
lbl_80023198:
    slti    $at, a1, 0x0064
    beq     $at, $zero, lbl_800231B0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    jr      $ra
    sh      t1, 0x0020(a0)             # 00000020
lbl_800231B0:
    sh      t2, 0x0020(a0)             # 00000020
    jr      $ra
    nop


func_800231BC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x0020($sp)
    or      a2, a3, $zero              # a2 = 00000000
    jal     func_800343D4
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     v0, $at, lbl_80023220
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x1D30($at)            # 00011D30
    lw      a2, 0x0028($sp)
    jal     func_8004C430
    or      a1, $zero, $zero           # a1 = 00000000
    lw      a0, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x182C          # a1 = 0000182C
    b       lbl_80023224
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80023220:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80023224:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80023234:
# Seems to set the variables pertaining to displaying the Farore's Wind sprite
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lw      t6, 0x0E80(v0)             # 8011B450
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x8BE0             # a0 = 80118BE0
    beq     t6, $zero, lbl_800232C8
    lui     $at, 0x42A0                # $at = 42A00000
    lw      t8, 0x0E64(v0)             # 8011B434
    lw      t9, 0x0E68(v0)             # 8011B438
    lw      t0, 0x0E6C(v0)             # 8011B43C
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    t0, $f16                   # $f16 = 0.00
    cvt.s.w $f6, $f4
    lw      t1, 0x0E70(v0)             # 8011B440
    lw      t2, 0x0E74(v0)             # 8011B444
    lw      t3, 0x0E78(v0)             # 8011B448
    lw      t4, 0x0E7C(v0)             # 8011B44C
    cvt.s.w $f10, $f8
    lw      t5, 0x0E84(v0)             # 8011B454
    lw      t6, 0x0E88(v0)             # 8011B458
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sb      t7, 0x13B3(v0)             # 8011B983
    cvt.s.w $f18, $f16
    swc1    $f6, 0x13A0(v0)            # 8011B970
    swc1    $f10, 0x13A4(v0)           # 8011B974
    sh      t1, 0x13AC(v0)             # 8011B97C
    sh      t2, 0x13AE(v0)             # 8011B97E
    sh      t3, 0x13B0(v0)             # 8011B980
    swc1    $f18, 0x13A8(v0)           # 8011B978
    sb      t4, 0x13B2(v0)             # 8011B982
    sw      t5, 0x13B4(v0)             # 8011B984
    b       lbl_800232DC
    sw      t6, 0x13B8(v0)             # 8011B988
lbl_800232C8:
    mtc1    $zero, $f14                # $f14 = 0.00
    sb      $zero, 0x13B3(v0)          # 8011B983
    swc1    $f14, 0x13A0(v0)           # 8011B970
    swc1    $f14, 0x13A4(v0)           # 8011B974
    swc1    $f14, 0x13A8(v0)           # 8011B978
lbl_800232DC:
    lwc1    $f4, 0x13A4(v0)            # 8011B974
    mtc1    $at, $f6                   # $f6 = 80.00
    lwc1    $f0, 0x13A0(v0)            # 8011B970
    lwc1    $f12, 0x13A8(v0)           # 8011B978
    add.s   $f2, $f4, $f6
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    trunc.w.s $f8, $f0
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    trunc.w.s $f10, $f2
    mfc1    a1, $f8
    sw      t3, 0x001C($sp)
    trunc.w.s $f16, $f12
    mfc1    a2, $f10
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f16
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    jal     func_80065BCC
    sw      t0, 0x0010($sp)
    lw      a0, 0x0028($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0x8BE0             # a2 = 80118BE0
    jal     func_800665B0
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x7410($at)           # 80118BF0
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x7408($at)        # 80118BF8
    lui     $at, 0x8012                # $at = 80120000
    swc1    $f18, -0x7400($at)         # 80118C00
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80023384:
# gameplay_keep d. list: Sparkle Mote I [?]
    addiu   $sp, $sp, 0xFF10           # $sp -= 0xF0
    sw      s1, 0x0028($sp)
    lui     s1, 0x8012                 # s1 = 80120000
    addiu   s1, s1, 0xA5D0             # s1 = 8011A5D0
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a0, 0x00F0($sp)
    lb      v1, 0x13B3(s1)             # 8011B983
    lw      t6, 0x00F0($sp)
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    beq     v1, $zero, lbl_80023BB4
    lw      s0, 0x0000(t6)             # 00000000
    lw      t7, 0x0004(s1)             # 8011A5D4
    addiu   a3, v1, 0xFFD8             # a3 = FFFFFFD8
    lui     $at, 0x4270                # $at = 42700000
    bne     t7, $zero, lbl_800233D8
    or      t0, a3, $zero              # t0 = FFFFFFD8
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f4                   # $f4 = 80.00
    b       lbl_800233E4
    swc1    $f4, 0x00DC($sp)
lbl_800233D8:
    mtc1    $at, $f6                   # $f6 = 80.00
    nop
    swc1    $f6, 0x00DC($sp)
lbl_800233E4:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    sw      t8, 0x00D4($sp)
    bgez    a3, lbl_80023444
    swc1    $f18, 0x00D8($sp)
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bltz    v1, lbl_8002340C
    sb      v1, 0x13B3(s1)             # 8011B983
    b       lbl_80023410
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002340C:
    subu    v0, $zero, v1
lbl_80023410:
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x64C0($at)           # 801064C0
    cvt.s.w $f10, $f8
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x8BF8             # a0 = 80118BF8
    addiu   t9, $zero, 0x003C          # t9 = 0000003C
    sw      t9, 0x0000(a0)             # 80118BF8
    lui     $at, 0x8012                # $at = 80120000
    mul.s   $f6, $f10, $f4
    swc1    $f18, -0x7400($at)         # 80118C00
    b       lbl_800238B4
    swc1    $f6, 0x00D8($sp)
lbl_80023444:
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0x8BF8             # a0 = 80118BF8
    lw      v0, 0x0000(a0)             # 80118BF8
    beq     v0, $zero, lbl_80023460
    addiu   t1, v0, 0xFFFF             # t1 = 00000000
    b       lbl_800238B4
    sw      t1, 0x0000(a0)             # 80118BF8
lbl_80023460:
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f0, -0x7400($at)          # 80118C00
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    c.lt.s  $f8, $f0
    nop
    bc1f    lbl_80023728
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f0, 0x00C4($sp)
    addiu   a1, a1, 0xB970             # a1 = 8011B970
    addiu   a0, a0, 0xB938             # a0 = 8011B938
    jal     func_80063E5C
    addiu   a2, $sp, 0x00B8            # a2 = FFFFFFC8
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    lui     a0, 0x8012                 # a0 = 80120000
    mov.s   $f16, $f0
    c.lt.s  $f0, $f10
    lui     $at, 0x8012                # $at = 80120000
    addiu   a0, a0, 0x8C00             # a0 = 80118C00
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    bc1fl   lbl_800234F0
    lwc1    $f6, 0x0000(a0)            # 80118C00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xB938             # a1 = 8011B938
    addiu   a0, a0, 0xB970             # a0 = 8011B970
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f4, -0x7400($at)          # 80118C00
    b       lbl_800235E8
    lui     $at, 0x40C0                # $at = 40C00000
    lwc1    $f6, 0x0000(a0)            # 00000000
lbl_800234F0:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f10                  # $f10 = 20.00
    div.s   $f8, $f18, $f6
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x64C4($at)           # 801064C4
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f12, $f8, $f0
    div.s   $f14, $f10, $f12
    c.lt.s  $f14, $f4
    nop
    bc1fl   lbl_80023528
    mfc1    a2, $f14
    lwc1    $f14, 0x64C8($at)          # 801064C8
    mfc1    a2, $f14
lbl_80023528:
    swc1    $f12, 0x00A0($sp)
    jal     func_8006385C
    swc1    $f16, 0x00B4($sp)
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x7400($at)          # 80118C00
    lwc1    $f8, 0x00C4($sp)
    lwc1    $f16, 0x00B4($sp)
    lui     $at, 0x8012                # $at = 80120000
    div.s   $f10, $f6, $f8
    lwc1    $f8, 0x00B8($sp)
    lwc1    $f6, -0x46C8($at)          # 8011B938
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f12, 0x00A0($sp)
    mul.s   $f4, $f10, $f16
    div.s   $f2, $f4, $f16
    mul.s   $f10, $f8, $f2
    add.s   $f4, $f6, $f10
    lwc1    $f6, 0x00BC($sp)
    mul.s   $f10, $f6, $f2
    swc1    $f4, -0x4690($at)          # 8011B970
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, -0x46C4($at)          # 8011B93C
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f4, $f8, $f10
    lwc1    $f8, 0x00C0($sp)
    mul.s   $f10, $f8, $f2
    swc1    $f4, -0x468C($at)          # 8011B974
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x46C0($at)          # 8011B940
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f4, $f6, $f10
    swc1    $f4, -0x4688($at)          # 8011B978
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x00DC($sp)
    mul.s   $f12, $f12, $f8
    lwc1    $f8, 0x64CC($at)           # 801064CC
    sub.s   $f14, $f16, $f12
    mul.s   $f6, $f12, $f12
    nop
    mul.s   $f10, $f14, $f14
    sub.s   $f0, $f6, $f10
    sqrt.s  $f0, $f0
    mul.s   $f6, $f0, $f8
    add.s   $f10, $f4, $f6
    swc1    $f10, 0x00DC($sp)
    lui     $at, 0x40C0                # $at = 40C00000
lbl_800235E8:
    mtc1    $at, $f12                  # $f12 = 6.00
    jal     func_80026D90
    nop
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f8, -0x4690($at)          # 8011B970
    add.s   $f4, $f0, $f8
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00A8($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f12                  # $f12 = 6.00
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x468C($at)          # 8011B974
    lui     $at, 0x42A0                # $at = 42A00000
    mul.s   $f4, $f0, $f12
    mtc1    $at, $f10                  # $f10 = 80.00
    nop
    add.s   $f8, $f6, $f10
    add.s   $f6, $f4, $f8
    jal     func_80026D90
    swc1    $f6, 0x00AC($sp)
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f10, -0x4688($at)         # 8011B978
    lui     t2, 0x800F                 # t2 = 800F0000
    lui     t3, 0x800F                 # t3 = 800F0000
    add.s   $f4, $f0, $f10
    addiu   t3, t3, 0x82F4             # t3 = 800E82F4
    addiu   t2, t2, 0x82F0             # t2 = 800E82F0
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   t4, $zero, 0x03E8          # t4 = 000003E8
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    swc1    $f4, 0x00B0($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    addiu   a3, a3, 0x82E4             # a3 = 800E82E4
    addiu   a2, a2, 0x82D8             # a2 = 800E82D8
    sw      t2, 0x0010($sp)
    sw      t3, 0x0014($sp)
    lw      a0, 0x00F0($sp)
    jal     func_8001C6A8
    addiu   a1, $sp, 0x00A8            # a1 = FFFFFFB8
    lui     $at, 0x8012                # $at = 80120000
    lwc1    $f6, -0x7400($at)          # 80118C00
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0xB938             # t6 = 8011B938
    c.eq.s  $f8, $f6
    nop
    bc1f    lbl_80023700
    nop
    lw      t8, 0x0000(t6)             # 8011B938
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xB970             # v0 = 8011B970
    sw      t8, 0x0000(v0)             # 8011B970
    lw      t7, 0x0004(t6)             # 8011B93C
    addiu   t9, $zero, 0x06FF          # t9 = 000006FF
    addiu   t1, $zero, 0x0028          # t1 = 00000028
    sw      t7, 0x0004(v0)             # 8011B974
    lw      t8, 0x0008(t6)             # 8011B940
    sw      t8, 0x0008(v0)             # 8011B978
    lw      t7, 0x000C(t6)             # 8011B944
    sw      t7, 0x000C(v0)             # 8011B97C
    lw      t8, 0x0010(t6)             # 8011B948
    sw      t8, 0x0010(v0)             # 8011B980
    lw      t7, 0x0014(t6)             # 8011B94C
    sw      t7, 0x0014(v0)             # 8011B984
    lw      t8, 0x0018(t6)             # 8011B950
    sw      t8, 0x0018(v0)             # 8011B988
    sh      t9, 0x13AE(s1)             # 8011B97E
    sb      t1, 0x13B3(s1)             # 8011B983
lbl_80023700:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xB970             # v0 = 8011B970
    lw      t3, 0x0000(v0)             # 8011B970
    lw      t2, 0x0004(v0)             # 8011B974
    sw      t3, 0x0000(v0)             # 8011B970
    lw      t3, 0x0008(v0)             # 8011B978
    sw      t2, 0x0004(v0)             # 8011B974
    sw      t3, 0x0008(v0)             # 8011B978
    b       lbl_800238B8
    lw      t3, 0x00F0($sp)
lbl_80023728:
    blezl   a3, lbl_800238B8
    lw      t3, 0x00F0($sp)
    mtc1    a3, $f10                   # $f10 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x64D0($at)           # 801064D0
    cvt.s.w $f4, $f10
    lw      t4, 0x00F0($sp)
    mul.s   $f12, $f4, $f8
    c.lt.s  $f12, $f18
    nop
    bc1fl   lbl_80023854
    sll     t1, a3,  4
    lwc1    $f6, 0x00E0(t4)            # 000000E0
    lwc1    $f4, 0x00DC($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    swc1    $f6, 0x0080($sp)
    lwc1    $f10, 0x00E4(t4)           # 000000E4
    addiu   a1, a1, 0xB970             # a1 = 8011B970
    addiu   a0, $sp, 0x0080            # a0 = FFFFFF90
    sub.s   $f8, $f10, $f4
    addiu   a2, $sp, 0x0074            # a2 = FFFFFF84
    swc1    $f8, 0x0084($sp)
    lwc1    $f6, 0x00E8(t4)            # 000000E8
    swc1    $f12, 0x0034($sp)
    sw      t0, 0x00D0($sp)
    sw      a3, 0x0038($sp)
    sw      v1, 0x00E8($sp)
    jal     func_80063E5C
    swc1    $f6, 0x0088($sp)
    lw      a3, 0x0038($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    addiu   t5, a3, 0xFFFF             # t5 = FFFFFFFF
    mtc1    t5, $f10                   # $f10 = NaN
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x64D4($at)           # 801064D4
    cvt.s.w $f4, $f10
    lwc1    $f12, 0x0034($sp)
    lui     $at, 0x8012                # $at = 80120000
    lui     t7, 0x8012                 # t7 = 80120000
    addiu   t7, t7, 0xB970             # t7 = 8011B970
    lui     t6, 0x8012                 # t6 = 80120000
    mul.s   $f6, $f4, $f8
    sub.s   $f4, $f18, $f12
    lw      v1, 0x00E8($sp)
    lw      t0, 0x00D0($sp)
    addiu   t6, t6, 0xB970             # t6 = 8011B970
    sub.s   $f10, $f18, $f6
    div.s   $f8, $f4, $f10
    lwc1    $f4, 0x0074($sp)
    mul.s   $f6, $f8, $f0
    lwc1    $f8, 0x0080($sp)
    div.s   $f2, $f6, $f0
    mul.s   $f10, $f4, $f2
    lwc1    $f4, 0x0078($sp)
    add.s   $f6, $f10, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f8, 0x0084($sp)
    lwc1    $f4, 0x007C($sp)
    swc1    $f6, -0x4690($at)          # 8011B970
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f10, $f8
    mul.s   $f10, $f4, $f2
    lwc1    $f8, 0x0088($sp)
    swc1    $f6, -0x468C($at)          # 8011B974
    lui     $at, 0x8012                # $at = 80120000
    add.s   $f6, $f10, $f8
    swc1    $f6, -0x4688($at)          # 8011B978
    lw      t9, 0x0000(t7)             # 8011B970
    sw      t9, 0x0000(t6)             # 8011B970
    lw      t8, 0x0004(t7)             # 8011B974
    sw      t8, 0x0004(t6)             # 8011B974
    lw      t9, 0x0008(t7)             # 8011B978
    sw      t9, 0x0008(t6)             # 8011B978
    sll     t1, a3,  4
lbl_80023854:
    subu    t1, t1, a3
    sll     t1, t1,  1
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    subu    v0, t2, t1
    bgez    v0, lbl_8002387C
    sw      v0, 0x00D4($sp)
    sw      $zero, 0x0E80(s1)          # 8011B450
    sb      $zero, 0x13B3(s1)          # 8011B983
    b       lbl_80023884
    sw      $zero, 0x00D4($sp)
lbl_8002387C:
    addiu   v1, v1, 0x0001             # v1 = 00000001
    sb      v1, 0x13B3(s1)             # 8011B983
lbl_80023884:
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    ldc1    $f6, 0x64D8($at)           # 801064D8
    cvt.s.w $f10, $f4
    lui     $at, 0x3FF0                # $at = 3FF00000
    mtc1    $at, $f11                  # $f11 = 1.88
    cvt.d.s $f8, $f10
    mtc1    $zero, $f10                # $f10 = 0.00
    mul.d   $f4, $f8, $f6
    add.d   $f8, $f4, $f10
    cvt.s.d $f6, $f8
    swc1    $f6, 0x00D8($sp)
lbl_800238B4:
    lw      t3, 0x00F0($sp)
lbl_800238B8:
    lbu     t4, 0x1D6C(t3)             # 00001D6C
    bnel    t4, $zero, lbl_80023B34
    lwc1    $f2, 0x13A4(s1)            # 8011B974
    lh      v0, 0x13B0(s1)             # 8011B980
    lw      t5, 0x0000(s1)             # 8011A5D0
    lui     $at, 0x0001                # $at = 00010000
    bne     v0, t5, lbl_80023B30
    addu    v0, t3, $at
    lb      t6, 0x1CBC(v0)             # 00001CBC
    lbu     t7, 0x13B2(s1)             # 8011B982
    addiu   a1, $zero, 0x0019          # a1 = 00000019
    bnel    t6, t7, lbl_80023B34
    lwc1    $f2, 0x13A4(s1)            # 8011B974
    lw      a0, 0x02D0(s0)             # 000002D0
    jal     func_8007DFBC
    sw      v0, 0x0038($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
    lwc1    $f0, 0x13A8(s1)            # 8011B978
    lwc1    $f4, 0x00DC($sp)
    lwc1    $f2, 0x13A4(s1)            # 8011B974
    mfc1    a2, $f0
    lwc1    $f12, 0x13A0(s1)           # 8011B970
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f2, $f4
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x64E0($at)          # 801064E0
    lwc1    $f8, 0x00D8($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f10, $f8
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a0, 0x00F0($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AA79C
    addu    a0, a0, $at
    jal     func_800AA6EC
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    lui     t7, 0xFB00                 # t7 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFA00                 # t1 = FA000000
    ori     t1, t1, 0x8080             # t1 = FA008080
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t4, 0x00D4($sp)
    addiu   $at, $zero, 0xC800         # $at = FFFFC800
    andi    t5, t4, 0x00FF             # t5 = 00000000
    or      t3, t5, $at                # t3 = FFFFC800
    sw      t3, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x64C8                 # t8 = 64C80000
    ori     t8, t8, 0x00FF             # t8 = 64C800FF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      t9, 0x0038($sp)
    lw      t2, 0x1DE4(t9)             # E7001DE4
    sll     t1, t2,  2
    subu    t1, t1, t2
    sll     t1, t1,  4
    subu    t1, t1, t2
    sll     t1, t1,  3
    subu    t1, t1, t2
    sll     t1, t1,  2
    andi    t4, t1, 0xFFFF             # t4 = 00008080
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_80023A04
    cvt.s.w $f4, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f4, $f4, $f10
lbl_80023A04:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x64E4($at)           # 801064E4
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mul.s   $f6, $f4, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C
    div.s   $f12, $f6, $f10
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t6, 0x00F0($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_800AB900
    sw      v1, 0x005C($sp)
    lw      a1, 0x005C($sp)
    lui     t8, 0xDE00                 # t8 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     a2, 0x0401                 # a2 = 04010000
    addiu   a2, a2, 0x05D0             # a2 = 040105D0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      a2, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    jal     func_800AA724
    sw      a2, 0x0034($sp)
    lw      t9, 0x0038($sp)
    lui     $at, 0x4F80                # $at = 4F800000
    lw      t2, 0x1DE4(t9)             # 00001DE4
    sll     t1, t2,  2
    addu    t1, t1, t2
    sll     t1, t1,  2
    subu    t1, t1, t2
    sll     t1, t1,  2
    subu    t1, t1, t2
    sll     t1, t1,  4
    andi    t4, t1, 0xFFFF             # t4 = 00000000
    nor     t5, t4, $zero
    mtc1    t5, $f4                    # $f4 = 0.00
    bgez    t5, lbl_80023AC4
    cvt.s.w $f8, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f8, $f8, $f6
lbl_80023AC4:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f10, 0x64E8($at)          # 801064E8
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mul.s   $f4, $f8, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AAD4C
    div.s   $f12, $f4, $f6
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0000(v1)             # 00000000
    lw      t7, 0x00F0($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0054($sp)
    lw      a1, 0x0054($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t2, 0x0034($sp)
    sw      t2, 0x0004(v1)             # 00000004
lbl_80023B30:
    lwc1    $f2, 0x13A4(s1)            # 8011B974
lbl_80023B34:
    lwc1    $f10, 0x00DC($sp)
    lwc1    $f12, 0x13A0(s1)           # 8011B970
    lui     $at, 0x43FA                # $at = 43FA0000
    add.s   $f4, $f2, $f10
    mtc1    $at, $f10                  # $f10 = 500.00
    lwc1    $f0, 0x13A8(s1)            # 8011B978
    trunc.w.s $f8, $f12
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f6, $f4
    lwc1    $f4, 0x00D8($sp)
    mfc1    a1, $f8
    trunc.w.s $f8, $f0
    mfc1    a2, $f6
    mul.s   $f6, $f10, $f4
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    mfc1    a3, $f8
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    trunc.w.s $f8, $f6
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    mfc1    t9, $f8
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t3, 0x0010($sp)
    addiu   a0, a0, 0x8BE0             # a0 = 80118BE0
    jal     func_80065BCC
    sw      t9, 0x001C($sp)
lbl_80023BB4:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00F0           # $sp += 0xF0


func_80023BC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x8012                 # a2 = 80120000
    lw      a2, -0x7410(a2)            # 80118BF0
    jal     func_80066610
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80023BF0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1C27(a0)             # 00001C27
    beql    t6, $zero, lbl_80023C10
    lw      $ra, 0x0014($sp)
    jal     func_80072548
    sb      $zero, 0x1C27(a0)          # 00001C27
    lw      $ra, 0x0014($sp)
lbl_80023C10:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80023C1C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      a2, 0x0030($sp)
    lh      t6, 0x00A4(s1)             # 000000A4
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0xA5D0             # t9 = 8011A5D0
    sll     t7, t6,  3
    subu    t7, t7, t6
    sll     t7, t7,  2
    addiu   t8, t7, 0x00D4             # t8 = 000000D4
    addu    s2, t8, t9
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x0140          # a1 = 00000140
    jal     func_8002B2EC
    nop
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xEDF0             # a1 = 800FEDF0
    jal     func_800ABA10
    addu    a0, s1, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0xEDF0             # a1 = 800FEDF0
    jal     func_800ABA10
    addu    a0, s1, $at
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, -0x7AC0($at)        # 800E8540
    lui     v0, 0x800F                 # v0 = 800F0000
    addiu   v0, v0, 0x8550             # v0 = 800E8550
    lui     $at, 0x800F                # $at = 800F0000
    sb      $zero, -0x7AB2($at)        # 800E854E
    sb      $zero, 0x003E(v0)          # 800E858E
    sw      $zero, 0x0030(v0)          # 800E8580
    sb      $zero, 0x001E(v0)          # 800E856E
    sw      $zero, 0x0010(v0)          # 800E8560
    addiu   v0, v0, 0x0040             # v0 = 800E8590
    addiu   v1, $zero, 0x0003          # v1 = 00000003
    addiu   a0, $zero, 0x01D7          # a0 = 000001D7
lbl_80023CD4:
    addiu   v1, v1, 0x0004             # v1 = 00000007
    sw      $zero, 0x0030(v0)          # 800E85C0
    sb      $zero, 0x003E(v0)          # 800E85CE
    sw      $zero, 0x0050(v0)          # 800E85E0
    sb      $zero, 0x005E(v0)          # 800E85EE
    sw      $zero, 0x0070(v0)          # 800E8600
    sb      $zero, 0x007E(v0)          # 800E860E
    addiu   v0, v0, 0x0080             # v0 = 800E8610
    sw      $zero, -0x0070(v0)         # 800E85A0
    bne     v1, a0, lbl_80023CD4
    sb      $zero, -0x0062(v0)         # 800E85AE
    lw      t0, 0x0000(s2)             # 00000000
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0128             # a1 = 00000128
    sw      t0, 0x0114(s0)             # 00000114
    lw      t1, 0x0004(s2)             # 00000004
    sw      t1, 0x0104(s0)             # 00000104
    lw      t2, 0x0008(s2)             # 00000008
    sw      t2, 0x0118(s0)             # 00000118
    lw      t3, 0x000C(s2)             # 0000000C
    jal     func_80020760
    sw      t3, 0x0120(s0)             # 00000120
    sw      $zero, 0x013C(s0)          # 0000013C
    lw      a1, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800255C4
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a0, s0, 0x006C             # a0 = 0000006C
    lw      a1, 0x0020(s0)             # 00000020
    jal     func_8001FA68
    or      a2, s1, $zero              # a2 = 00000000
    jal     func_80023234
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80023D70:
# Update Actors
# gameplay_keep d. list: 52980 x2
# A0 = Global Context
# A1 = Global Context + 0x1C24 (actors)
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s1, 0x0024($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s0, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x007C($sp)
    lw      s2, 0x1C44(s1)             # 00001C44
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x005C($sp)
    addu    s4, s1, $at
    lbu     v0, 0x1DEB(s4)             # 00001DEB
    or      s3, $zero, $zero           # s3 = 00000000
    or      s0, $zero, $zero           # s0 = 00000000
    beql    v0, $zero, lbl_80023E18
    lw      t7, 0x007C($sp)
    blez    v0, lbl_80023E08
    lw      v1, 0x1DF8(s4)             # 00001DF8
    addiu   s5, s1, 0x1C24             # s5 = 00001C24
    or      a1, v1, $zero              # a1 = 00000000
lbl_80023DDC:
    addiu   v1, v1, 0x0010             # v1 = 00000010
    sw      v1, 0x0058($sp)
    or      a0, s5, $zero              # a0 = 00001C24
    jal     func_800255C4
    or      a2, s1, $zero              # a2 = 00000000
    lbu     t6, 0x1DEB(s4)             # 00001DEB
    addiu   s0, s0, 0x0001             # s0 = 00000001
    lw      v1, 0x0058($sp)
    slt     $at, s0, t6
    bnel    $at, $zero, lbl_80023DDC
    or      a1, v1, $zero              # a1 = 00000000
lbl_80023E08:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      $zero, 0x1DEB($at)         # 00011DEB
    lw      t7, 0x007C($sp)
lbl_80023E18:
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x82F8             # t9 = 800E82F8
    lbu     v0, 0x0002(t7)             # 00000002
    addiu   s8, s1, 0x0810             # s8 = 00000810
    addiu   s7, $zero, 0x0001          # s7 = 00000001
    beq     v0, $zero, lbl_80023E3C
    lui     s6, 0xFEFF                 # s6 = FEFF0000
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x0002(t7)             # 00000002
lbl_80023E3C:
    sw      t9, 0x0068($sp)
    lw      t0, 0x0670(s2)             # 00000670
    ori     s6, s6, 0xFFFF             # s6 = FEFFFFFF
    sll     t1, t0,  4
    bgezl   t1, lbl_80023E5C
    lw      t2, 0x066C(s2)             # 0000066C
    lui     s3, 0x0200                 # s3 = 02000000
    lw      t2, 0x066C(s2)             # 0000066C
lbl_80023E5C:
    andi    t3, t2, 0x0040             # t3 = 00000000
    beql    t3, $zero, lbl_80023E88
    lw      t8, 0x007C($sp)
    lhu     t4, 0x010E(s2)             # 0000010E
    addiu   $at, $zero, 0x0600         # $at = 00000600
    andi    t5, t4, 0xFF00             # t5 = 00000000
    beql    t5, $at, lbl_80023E88
    lw      t8, 0x007C($sp)
    lw      t6, 0x0684(s2)             # 00000684
    sw      t6, 0x005C($sp)
    lw      t8, 0x007C($sp)
lbl_80023E88:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f20, 0x64EC($at)          # 801064EC
    sw      $zero, 0x0050($sp)
    sw      t8, 0x004C($sp)
lbl_80023E98:
    lw      t1, 0x004C($sp)
    lw      t7, 0x0068($sp)
    lw      t0, 0x066C(s2)             # 0000066C
    lw      s0, 0x0010(t1)             # 00000010
    lw      t9, 0x0000(t7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    beq     s0, $zero, lbl_80024104
    and     s5, t9, t0
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    s4, s1, $at
    lwc1    $f4, 0x0028(s0)            # 00000029
lbl_80023EC4:
    or      a0, s4, $zero              # a0 = 00000000
    c.lt.s  $f4, $f20
    nop
    bc1fl   lbl_80023EE0
    lw      t2, 0x0128(s0)             # 00000129
    swc1    $f20, 0x0028(s0)           # 00000029
    lw      t2, 0x0128(s0)             # 00000129
lbl_80023EE0:
    sh      $zero, 0x0020(s0)          # 00000021
    beq     t2, $zero, lbl_80023F28
    nop
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80081688
    lb      a1, 0x001E(s0)             # 0000001F
    beq     v0, $zero, lbl_80023F20
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000001
    lw      t9, 0x0128(s0)             # 00000129
    or      a0, s0, $zero              # a0 = 00000001
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    sw      $zero, 0x0128(s0)          # 00000129
lbl_80023F20:
    b       lbl_800240FC
    lw      s0, 0x0124(s0)             # 00000125
lbl_80023F28:
    jal     func_80081688
    lb      a1, 0x001E(s0)             # 0000001F
    bne     v0, $zero, lbl_80023F48
    nop
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000001
    b       lbl_800240FC
    lw      s0, 0x0124(s0)             # 00000125
lbl_80023F48:
    beq     s3, $zero, lbl_80023F60
    nop
    lw      t3, 0x0004(s0)             # 00000005
    and     t4, t3, s3
    beq     t4, $zero, lbl_80023F9C
    nop
lbl_80023F60:
    bnel    s3, $zero, lbl_80023FB0
    lw      t0, 0x0130(s0)             # 00000131
    beq     s5, $zero, lbl_80023FAC
    lw      t5, 0x005C($sp)
    beql    t5, s0, lbl_80023FB0
    lw      t0, 0x0130(s0)             # 00000131
    lw      t6, 0x067C(s2)             # 0000067C
    beql    s0, t6, lbl_80023FB0
    lw      t0, 0x0130(s0)             # 00000131
    lw      t8, 0x039C(s2)             # 0000039C
    beql    s0, t8, lbl_80023FB0
    lw      t0, 0x0130(s0)             # 00000131
    lw      t7, 0x0118(s0)             # 00000119
    beql    s2, t7, lbl_80023FB0
    lw      t0, 0x0130(s0)             # 00000131
lbl_80023F9C:
    jal     func_800502F0
    addiu   a0, s0, 0x0098             # a0 = 00000099
    b       lbl_800240FC
    lw      s0, 0x0124(s0)             # 00000125
lbl_80023FAC:
    lw      t0, 0x0130(s0)             # 00000131
lbl_80023FB0:
    addiu   a0, s0, 0x0100             # a0 = 00000101
    bne     t0, $zero, lbl_80023FF0
    nop
    lbu     t1, 0x0115(s0)             # 00000116
    or      a1, s0, $zero              # a1 = 00000001
    or      a2, s1, $zero              # a2 = 00000000
    bne     t1, $zero, lbl_80023FE0
    or      a0, s0, $zero              # a0 = 00000001
    jal     func_80025648
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    b       lbl_800240FC
    or      s0, v0, $zero              # s0 = 00000000
lbl_80023FE0:
    jal     func_800210F0
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_800240FC
    lw      s0, 0x0124(s0)             # 00000124
lbl_80023FF0:
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s0, 0x0024             # a1 = 00000024
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800214FC
    or      a1, s2, $zero              # a1 = 00000000
    swc1    $f0, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800215EC
    or      a1, s2, $zero              # a1 = 00000000
    lwc1    $f2, 0x0090(s0)            # 00000090
    swc1    $f0, 0x0094(s0)            # 00000094
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f6, $f2, $f2
    or      a1, s2, $zero              # a1 = 00000000
    mul.s   $f8, $f0, $f0
    add.s   $f10, $f6, $f8
    jal     func_800213B4
    swc1    $f10, 0x008C(s0)           # 0000008C
    lw      t2, 0x0004(s0)             # 00000004
    lhu     v1, 0x0110(s0)             # 00000110
    sh      v0, 0x008A(s0)             # 0000008A
    and     t9, t2, s6
    bne     v1, $zero, lbl_80024058
    sw      t9, 0x0004(s0)             # 00000004
    b       lbl_80024064
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80024058:
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0110(s0)             # 00000110
    andi    v0, t3, 0xFFFF             # v0 = 0000FFFF
lbl_80024064:
    bne     v0, $zero, lbl_800240F0
    nop
    lw      t4, 0x0004(s0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    andi    t5, t4, 0x0050             # t5 = 00000000
    beq     t5, $zero, lbl_800240F0
    nop
    lw      t6, 0x0654(s2)             # 00000654
    bnel    s0, t6, lbl_80024098
    sb      $zero, 0x010C(s0)          # 0000010C
    b       lbl_80024098
    sb      s7, 0x010C(s0)             # 0000010C
    sb      $zero, 0x010C(s0)          # 0000010C
lbl_80024098:
    lbu     t8, 0x010D(s0)             # 0000010D
    beq     t8, $zero, lbl_800240B4
    nop
    lw      t7, 0x0654(s2)             # 00000654
    bne     t7, $zero, lbl_800240B4
    nop
    sb      $zero, 0x010D(s0)          # 0000010D
lbl_800240B4:
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    lbu     v0, 0x0114(s0)             # 00000114
    beq     v0, $zero, lbl_800240CC
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sb      t0, 0x0114(s0)             # 00000114
lbl_800240CC:
    lw      t9, 0x0130(s0)             # 00000130
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s8, $zero              # a1 = 00000810
    jal     func_80032024
    or      a2, s0, $zero              # a2 = 00000000
lbl_800240F0:
    jal     func_800502F0
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lw      s0, 0x0124(s0)             # 00000124
lbl_800240FC:
    bnel    s0, $zero, lbl_80023EC4
    lwc1    $f4, 0x0028(s0)            # 00000028
lbl_80024104:
    lw      t1, 0x0050($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t1, $at, lbl_80024124
    lw      t2, 0x0050($sp)
    jal     func_800320BC
    or      a1, s8, $zero              # a1 = 00000810
    lw      t2, 0x0050($sp)
lbl_80024124:
    lw      t4, 0x004C($sp)
    lw      t6, 0x0068($sp)
    addiu   $at, $zero, 0x0060         # $at = 00000060
    addiu   t3, t2, 0x0008             # t3 = 00000008
    addiu   t5, t4, 0x0008             # t5 = 00000008
    addiu   t8, t6, 0x0004             # t8 = 00000004
    sw      t8, 0x0068($sp)
    sw      t5, 0x004C($sp)
    bne     t3, $at, lbl_80023E98
    sw      t3, 0x0050($sp)
    lw      s0, 0x0654(s2)             # 00000654
    beq     s0, $zero, lbl_80024170
    nop
    lw      t7, 0x0130(s0)             # 00000130
    or      a0, s2, $zero              # a0 = 00000000
    bne     t7, $zero, lbl_80024170
    nop
    jal     func_800798A8
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80024170:
    beq     s0, $zero, lbl_80024188
    lw      t9, 0x007C($sp)
    lw      t0, 0x065C(s2)             # 0000065C
    slti    $at, t0, 0x0005
    beql    $at, $zero, lbl_800241A8
    lw      a0, 0x007C($sp)
lbl_80024188:
    lbu     t1, 0x00B7(t9)             # 000000B7
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   a0, $zero, 0x480F          # a0 = 0000480F
    beql    t1, $zero, lbl_800241A8
    lw      a0, 0x007C($sp)
    jal     func_800646F0
    sb      $zero, 0x00B7(t9)          # 000000B7
    lw      a0, 0x007C($sp)
lbl_800241A8:
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 00000000
    or      a3, s1, $zero              # a3 = 00000000
    jal     func_80020108
    addiu   a0, a0, 0x006C             # a0 = 0000006C
    lw      a1, 0x007C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020860
    addiu   a1, a1, 0x0128             # a1 = 00000128
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80032228
    or      a1, s8, $zero              # a1 = 00000810
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
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
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_8002420C:
# Textlog related, Print actor name?
# A0 = Actor Instance
# A1 = ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     t6, $zero, lbl_80024238
    nop
    lw      t7, 0x0138(t6)             # 00000138
    bnel    t7, $zero, lbl_80024250
    addiu   a0, $zero, 0x0030          # a0 = 00000030
lbl_80024238:
    jal     func_800ADB80
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lui     a0, 0x8010                 # a0 = 80100000
    jal     func_800ADBF8
    addiu   a0, a0, 0x6430             # a0 = 80106430
    addiu   a0, $zero, 0x0030          # a0 = 00000030
lbl_80024250:
    jal     func_800ADB80
    addiu   a1, $zero, 0x0018          # a1 = 00000018
    lui     a0, 0x8010                 # a0 = 80100000
    lui     a2, 0x8010                 # a2 = 80100000
    addiu   a2, a2, 0x6444             # a2 = 80106444
    addiu   a0, a0, 0x6448             # a0 = 80106448
    jal     func_800ADBF8
    lw      a1, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80024280:
# Actor_draw
# Draw Actor
# A0 = Global Context
# A1 = Actor Instance
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x8002                 # a1 = 80020000
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x645C             # a3 = 8010645C
    addiu   a1, a1, 0x420C             # a1 = 8002420C
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    jal     func_800AEF8C
    or      a2, s0, $zero              # a2 = 00000000
    lw      a1, 0x0000(s1)             # 00000000
    addiu   a0, s1, 0x07A8             # a0 = 000007A8
    jal     func_8006650C
    sw      a1, 0x0038($sp)
    lw      t6, 0x0004(s0)             # 00000004
    or      a0, v0, $zero              # a0 = 00000000
    sll     t7, t6,  9
    bgezl   t7, lbl_800242E4
    addiu   a2, s0, 0x0024             # a2 = 00000024
    b       lbl_800242E4
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
lbl_800242E4:
    lw      a1, 0x07A8(s1)             # 000007A8
    jal     func_80066298
    sw      a0, 0x003C($sp)
    lw      a0, 0x003C($sp)
    jal     func_80065D60
    lw      a1, 0x0000(s1)             # 00000000
    lw      t8, 0x0004(s0)             # 00000004
    andi    t9, t8, 0x1000             # t9 = 00000000
    beql    t9, $zero, lbl_8002435C
    lwc1    $f18, 0x00BC(s0)           # 000000BC
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    lwc1    $f10, 0x0054(s0)           # 00000054
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0260(s1)            # 00000260
    mul.s   $f16, $f8, $f10
    lwc1    $f18, 0x0264(s1)           # 00000264
    lwc1    $f10, 0x0268(s1)           # 00000268
    lwc1    $f8, 0x002C(s0)            # 0000002C
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    add.s   $f12, $f4, $f6
    lwc1    $f6, 0x0028(s0)            # 00000028
    add.s   $f4, $f16, $f18
    add.s   $f16, $f8, $f10
    add.s   $f14, $f6, $f4
    mfc1    a2, $f16
    jal     func_800AB510
    nop
    b       lbl_80024380
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f18, 0x00BC(s0)           # 000000BC
lbl_8002435C:
    lwc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f12, 0x0024(s0)           # 00000024
    mul.s   $f4, $f18, $f6
    lw      a2, 0x002C(s0)             # 0000002C
    addiu   a3, s0, 0x00B4             # a3 = 000000B4
    jal     func_800AB510
    add.s   $f14, $f8, $f4
    lwc1    $f12, 0x0050(s0)           # 00000050
lbl_80024380:
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020FA4
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0xDB06                 # a2 = DB060000
    ori     a2, a2, 0x0018             # a2 = DB060018
    addiu   a3, $zero, 0x0044          # a3 = 00000044
    lui     t0, 0x0001                 # t0 = 00010000
    lw      t1, 0x0038($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(t1)             # 000002C0
    sw      a2, 0x0000(v1)             # 00000000
    lb      t3, 0x001E(s0)             # 0000001E
    multu   t3, a3
    mflo    t4
    addu    t5, s1, t4
    addu    t6, t5, t0
    lw      t7, 0x17B4(t6)             # 000017B4
    sw      t7, 0x0004(v1)             # 00000004
    lw      a1, 0x02D0(t1)             # 000002D0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8328             # t7 = 800E8328
    addiu   t8, a1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(t1)             # 000002D0
    sw      a2, 0x0000(a1)             # 00000000
    lb      t9, 0x001E(s0)             # 0000001E
    multu   t9, a3
    mflo    t2
    addu    t3, s1, t2
    addu    t4, t3, t0
    lw      t5, 0x17B4(t4)             # 000017B4
    sw      t5, 0x0004(a1)             # 00000004
    lbu     t6, 0x0114(s0)             # 00000114
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFD8
    beql    t6, $zero, lbl_800244C4
    lw      t9, 0x0134(s0)             # 00000134
    lw      t9, 0x0000(t7)             # 800E8328
    or      a0, s1, $zero              # a0 = 00000000
    sw      t9, 0x0000(a1)             # FFFFFFD8
    lhu     v0, 0x0112(s0)             # 00000112
    andi    t2, v0, 0x8000             # t2 = 00000000
    beq     t2, $zero, lbl_80024458
    andi    t8, v0, 0x4000             # t8 = 00000000
    andi    t3, v0, 0x1F00             # t3 = 00000000
    sra     t4, t3,  5
    ori     t6, t4, 0x0007             # t6 = 00000007
    sb      t6, 0x002A($sp)
    sb      t6, 0x0029($sp)
    b       lbl_80024480
    sb      t6, 0x0028($sp)
lbl_80024458:
    beq     t8, $zero, lbl_80024474
    andi    t4, v0, 0x1F00             # t4 = 00000000
    andi    t9, v0, 0x1F00             # t9 = 00000000
    sra     t2, t9,  5
    ori     t3, t2, 0x0007             # t3 = 00000007
    b       lbl_80024480
    sb      t3, 0x0028($sp)
lbl_80024474:
    sra     t6, t4,  5
    ori     t5, t6, 0x0007             # t5 = 00000007
    sb      t5, 0x002A($sp)
lbl_80024480:
    lhu     v0, 0x0112(s0)             # 00000112
    andi    t7, v0, 0x2000             # t7 = 00000000
    beq     t7, $zero, lbl_800244B0
    andi    a3, v0, 0x00FF             # a3 = 00000000
    andi    a3, v0, 0x00FF             # a3 = 00000000
    sll     a3, a3, 16
    sra     a3, a3, 16
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001A654
    lbu     a2, 0x0114(s0)             # 00000114
    b       lbl_800244C4
    lw      t9, 0x0134(s0)             # 00000134
lbl_800244B0:
    sll     a3, a3, 16
    sra     a3, a3, 16
    jal     func_8001A288
    lbu     a2, 0x0114(s0)             # 00000114
    lw      t9, 0x0134(s0)             # 00000134
lbl_800244C4:
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lbu     t8, 0x0114(s0)             # 00000114
    beql    t8, $zero, lbl_8002450C
    lw      v0, 0x00C0(s0)             # 000000C0
    lhu     t2, 0x0112(s0)             # 00000112
    andi    t3, t2, 0x2000             # t3 = 00000000
    beq     t3, $zero, lbl_80024500
    nop
    jal     func_8001A83C
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_8002450C
    lw      v0, 0x00C0(s0)             # 000000C0
lbl_80024500:
    jal     func_8001A468
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x00C0(s0)             # 000000C0
lbl_8002450C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    beq     v0, $zero, lbl_80024524
    nop
    jalr    $ra, v0
    or      a2, s1, $zero              # a2 = 00000000
lbl_80024524:
    jal     func_800AF014
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFF0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80024540:
# play actor sfx?
# A0 = Actor Instance
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      v0, 0x0004(s0)             # 00000004
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sll     t6, v0, 12
    bgez    t6, lbl_80024590
    sll     t8, v0, 11
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lhu     a0, 0x0020(s0)             # 00000020
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_80024600
    lw      $ra, 0x0024($sp)
lbl_80024590:
    bgez    t8, lbl_800245A8
    sll     t9, v0, 10
    jal     func_800646F0
    lhu     a0, 0x0020(s0)             # 00000020
    b       lbl_80024600
    lw      $ra, 0x0024($sp)
lbl_800245A8:
    bgez    t9, lbl_800245C0
    sll     t0, v0,  3
    jal     func_80064738
    lhu     a0, 0x0020(s0)             # 00000020
    b       lbl_80024600
    lw      $ra, 0x0024($sp)
lbl_800245C0:
    bgez    t0, lbl_800245F4
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    lhu     a2, 0x0020(s0)             # 00000020
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x4394             # a0 = 80104394
    addiu   a2, a2, 0xFFFF             # a2 = FFFFFFFF
    sll     a2, a2, 24
    sra     a2, a2, 24
    andi    a2, a2, 0x00FF             # a2 = 000000FF
    jal     func_800C5998
    addiu   a1, $zero, 0x2021          # a1 = 00002021
    b       lbl_80024600
    lw      $ra, 0x0024($sp)
lbl_800245F4:
    jal     func_80064780
    lhu     a1, 0x0020(s0)             # 00000020
    lw      $ra, 0x0024($sp)
lbl_80024600:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80024610:
# gameplay_keep texture: Half Circle
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t8, 0x0402                 # t8 = 04020000
    addiu   t8, t8, 0xE810             # t8 = 0401E810
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xFD90                 # t7 = FD900000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t7, 0x070D                 # t7 = 070D0000
    ori     t7, t7, 0x8360             # t7 = 070D8360
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    lui     t6, 0xF590                 # t6 = F5900000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t9, 0xE600                 # t9 = E6000000
    lui     t7, 0xF300                 # t7 = F3000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t8, 0x077F                 # t8 = 077F0000
    ori     t8, t8, 0xF100             # t8 = 077FF100
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t6, 0xE700                 # t6 = E7000000
    lui     t8, 0xF588                 # t8 = F5880000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t9, 0x000D                 # t9 = 000D0000
    ori     t9, t9, 0x8360             # t9 = 000D8360
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a0)             # 000002D0
    ori     t8, t8, 0x1000             # t8 = F5881000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t8, 0x000F                 # t8 = 000F0000
    ori     t8, t8, 0xC0FC             # t8 = 000FC0FC
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t6, 0xF218                 # t6 = F2180000
    lui     t7, 0x0037                 # t7 = 00370000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    ori     t7, t7, 0xC2DC             # t7 = 0037C2DC
    ori     t6, t6, 0x00E0             # t6 = F21800E0
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t9, 0xE450                 # t9 = E4500000
    ori     t9, t9, 0x03C0             # t9 = E45003C0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t8, 0x08C0                 # t8 = 08C00000
    ori     t8, t8, 0x0640             # t8 = 08C00640
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(a0)             # 000002D0
    lui     t7, 0xE100                 # t7 = E1000000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t7, 0x0240                 # t7 = 02400000
    ori     t7, t7, 0x0255             # t7 = 02400255
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(a0)             # 000002D0
    lui     t6, 0xF100                 # t6 = F1000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(a0)             # 000002D0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(a0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    jr      $ra
    nop


func_80024784:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a2, 0x0080($sp)
    lw      s2, 0x0000(s3)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    lui     $at, 0x0001                # $at = 00010000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    addu    a3, s3, $at
    lbu     t8, 0x1CC1(a3)             # 00001CC1
    lui     t9, 0xEF00                 # t9 = EF000000
    ori     t9, t9, 0x2C30             # t9 = EF002C30
    bne     t8, $zero, lbl_80024854
    or      a0, s2, $zero              # a0 = 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xEF00                 # t0 = EF000000
    lui     t1, 0x0050                 # t1 = 00500000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    ori     t1, t1, 0x4365             # t1 = 00504365
    ori     t0, t0, 0x2C30             # t0 = EF002C30
    sw      t0, 0x0000(v0)             # 00000000
    sw      t1, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t3, 0xFC11                 # t3 = FC110000
    lui     t4, 0xFF2F                 # t4 = FF2F0000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s2)             # 000002D0
    ori     t4, t4, 0xFFFF             # t4 = FF2FFFFF
    ori     t3, t3, 0x9623             # t3 = FC119623
    sw      t3, 0x0000(v0)             # 00000000
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t7, 0xFF00                 # t7 = FF000000
    ori     t7, t7, 0x00FF             # t7 = FF0000FF
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s2)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    sw      t6, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    b       lbl_800248BC
    lw      v0, 0x02D0(s2)             # 000002D0
lbl_80024854:
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t0, 0xAF50                 # t0 = AF500000
    ori     t0, t0, 0x4365             # t0 = AF504365
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xFC37                 # t2 = FC370000
    lui     t3, 0x117B                 # t3 = 117B0000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    ori     t3, t3, 0x9FCF             # t3 = 117B9FCF
    ori     t2, t2, 0x3C6E             # t2 = FC373C6E
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     t6, 0x4A4A                 # t6 = 4A4A0000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s2)             # 000002D0
    ori     t6, t6, 0x4A4A             # t6 = 4A4A4A4A
    ori     t5, t5, 0x00FF             # t5 = FA0000FF
    sw      t5, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s2)             # 000002D0
lbl_800248BC:
    lui     t8, 0xEE00                 # t8 = EE000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    jal     func_80024610
    sw      a3, 0x0030($sp)
    lw      s0, 0x0080($sp)
    blez    s4, lbl_80024900
    or      s1, $zero, $zero           # s1 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
lbl_800248E8:
    lw      a1, 0x0000(s0)             # 00000000
    jal     func_80024280              # Actor_draw
    addiu   s0, s0, 0x0004             # s0 = 00000004
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s4, lbl_800248E8
    or      a0, s3, $zero              # a0 = 00000000
lbl_80024900:
    lw      t9, 0x0030($sp)
    lui     t4, 0xEF00                 # t4 = EF000000
    lui     t7, 0xFC11                 # t7 = FC110000
    lbu     t0, 0x1CC1(t9)             # 00001CC1
    ori     t4, t4, 0x2C30             # t4 = EF002C30
    ori     t7, t7, 0x9623             # t7 = FC119623
    beql    t0, $zero, lbl_8002499C
    lw      $ra, 0x002C($sp)
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t2, 0xE700                 # t2 = E7000000
    lui     t0, 0xFA00                 # t0 = FA000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t5, 0x0050                 # t5 = 00500000
    ori     t5, t5, 0x4345             # t5 = 00504345
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s2)             # 000002D0
    sw      t5, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t8, 0xFF2F                 # t8 = FF2F0000
    ori     t8, t8, 0xFFFF             # t8 = FF2FFFFF
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s2)             # 000002D0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s2)             # 000002D0
    lui     t1, 0xFF00                 # t1 = FF000000
    ori     t1, t1, 0x00FF             # t1 = FF0000FF
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t1, 0x0004(v0)             # 00000004
    sw      t0, 0x0000(v0)             # 00000000
    jal     func_80024610
    or      a0, s2, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_8002499C:
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_800249B8:
# Possibly tests if actor should be drawn
# A0 = Global Context
# A1 = Actor Instance
# V0 = 1 if check passes, 0 otherwise
# Wrapper for 800249DC
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a2, a1, 0x00E4             # a2 = 000000E4
    jal     func_800249DC
    lw      a3, 0x00F0(a1)             # 000000F0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800249DC:
# Possibly tests if actor should be drawn
# A0 = Global Context
# A1 = actor instance
# A2 = actor instance + 0xE4
# A3 = float at actor instance + 0xF0
    mtc1    a3, $f12                   # $f12 = 0.00
    sw      a0, 0x0000($sp)
    lwc1    $f2, 0x00F8(a1)            # 000000F8
    lwc1    $f0, 0x0008(a2)            # 00000008
    or      v0, $zero, $zero           # v0 = 00000000
    neg.s   $f4, $f2
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80024AAC
    nop
    lwc1    $f6, 0x00F4(a1)            # 000000F4
    lui     $at, 0x3F80                # $at = 3F800000
    add.s   $f8, $f6, $f2
    c.lt.s  $f0, $f8
    nop
    bc1f    lbl_80024AAC
    nop
    mtc1    $at, $f16                  # $f16 = 1.00
    nop
    c.lt.s  $f12, $f16
    nop
    bc1fl   lbl_80024A44
    div.s   $f14, $f16, $f12
    b       lbl_80024A44
    mov.s   $f14, $f16
    div.s   $f14, $f16, $f12
lbl_80024A44:
    lwc1    $f0, 0x0000(a2)            # 00000000
    abs.s   $f0, $f0
    sub.s   $f10, $f0, $f2
    mul.s   $f18, $f10, $f14
    c.lt.s  $f18, $f16
    nop
    bc1f    lbl_80024AAC
    nop
    lwc1    $f0, 0x0004(a2)            # 00000004
    lwc1    $f6, 0x00FC(a1)            # 000000FC
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    add.s   $f8, $f0, $f6
    mul.s   $f10, $f8, $f14
    c.lt.s  $f4, $f10
    nop
    bc1f    lbl_80024AAC
    nop
    sub.s   $f18, $f0, $f2
    mul.s   $f6, $f18, $f14
    c.lt.s  $f6, $f16
    nop
    bc1f    lbl_80024AAC
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80024AAC:
    jr      $ra
    nop


func_80024AB4:
# Draw Actors, Particles
# A0 = Global Context
# A1 = 801CA0C4 (Actor Table Struct)
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x00BC($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    lw      s8, 0x00BC($sp)
    sw      $zero, 0x0058($sp)
    addiu   s7, $sp, 0x0064            # s7 = FFFFFFAC
    addiu   s6, $zero, 0xFFBF          # s6 = FFFFFFBF
    addiu   s5, $zero, 0x0001          # s5 = 00000001
    lui     s4, 0x0001                 # s4 = 00010000
    addiu   s8, s8, 0x000C             # s8 = 0000000C
lbl_80024B08:
    lw      s0, 0x0004(s8)             # 00000010
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    beq     s0, $zero, lbl_80024C00
    addu    s3, s1, $at
    or      a0, s3, $zero              # a0 = 00000000
lbl_80024B20:
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, s0, 0x00E4             # a2 = 000000E4
    jal     func_8008EC20
    addiu   a3, s0, 0x00F0             # a3 = 000000F0
    lhu     t6, 0x0020(s0)             # 00000020
    beql    t6, $zero, lbl_80024B48
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80024540
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
lbl_80024B48:
    jal     func_800249B8
    or      a1, s0, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80024B6C
    lw      t9, 0x0004(s0)             # 00000004
    lw      t7, 0x0004(s0)             # 00000004
    ori     t8, t7, 0x0040             # t8 = 00000040
    b       lbl_80024B74
    sw      t8, 0x0004(s0)             # 00000004
    lw      t9, 0x0004(s0)             # 00000004
lbl_80024B6C:
    and     t0, t9, s6
    sw      t0, 0x0004(s0)             # 00000004
lbl_80024B74:
    lw      t1, 0x0128(s0)             # 00000128
    sb      $zero, 0x0115(s0)          # 00000115
    bnel    t1, $zero, lbl_80024BF8
    lw      s0, 0x0124(s0)             # 00000124
    lw      t2, 0x0134(s0)             # 00000134
    beql    t2, $zero, lbl_80024BF8
    lw      s0, 0x0124(s0)             # 00000124
    lw      v0, 0x0004(s0)             # 00000004
    andi    t3, v0, 0x0060             # t3 = 00000000
    beq     t3, $zero, lbl_80024BF4
    andi    t4, v0, 0x0080             # t4 = 00000000
    beq     t4, $zero, lbl_80024BE4
    addu    v0, s1, s4
    lbu     t5, 0x1CC1(v0)             # 00001CC1
    sll     t9, s2,  2
    addu    t0, s7, t9
    beql    t5, $zero, lbl_80024BDC
    sw      s0, 0x0000(t0)             # 00000000
    lbu     t6, 0x1C27(s1)             # 00001C27
    bnel    t6, $zero, lbl_80024BDC
    sw      s0, 0x0000(t0)             # 00000000
    lb      t7, 0x1CBC(v0)             # 00001CBC
    lb      t8, 0x0003(s0)             # 00000003
    beql    t7, t8, lbl_80024BE8
    or      a0, s1, $zero              # a0 = 00000000
    sw      s0, 0x0000(t0)             # 00000000
lbl_80024BDC:
    b       lbl_80024BF4
    addiu   s2, s2, 0x0001             # s2 = 00000001
lbl_80024BE4:
    or      a0, s1, $zero              # a0 = 00000000
lbl_80024BE8:
    jal     func_80024280              # Actor_draw
    or      a1, s0, $zero              # a1 = 00000000
    sb      s5, 0x0115(s0)             # 00000115
lbl_80024BF4:
    lw      s0, 0x0124(s0)             # 00000124
lbl_80024BF8:
    bnel    s0, $zero, lbl_80024B20
    or      a0, s3, $zero              # a0 = 00000000
lbl_80024C00:
    lw      t1, 0x0058($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   s8, s8, 0x0008             # s8 = 00000014
    addiu   t2, t1, 0x0001             # t2 = 00000001
    bne     t2, $at, lbl_80024B08
    sw      t2, 0x0058($sp)
    jal     func_8001ABDC
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8001B7B0
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t3, 0x1C27(s1)             # 00001C27
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000001
    beq     t3, $zero, lbl_80024C68
    nop
    jal     func_80024784
    or      a2, s7, $zero              # a2 = FFFFFFAC
    lbu     t4, 0x1D6C(s1)             # 00001D6C
    bne     t4, $zero, lbl_80024C60
    nop
    jal     func_8007943C
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80024C68
    nop
lbl_80024C60:
    jal     func_80023BF0
    or      a0, s1, $zero              # a0 = 00000000
lbl_80024C68:
    jal     func_80023384
    or      a0, s1, $zero              # a0 = 00000000
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lh      t6, 0x0714(t5)             # 80120714
    bnel    t6, $zero, lbl_80024C90
    lw      a1, 0x00BC($sp)
    jal     func_80066A08
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x00BC($sp)
lbl_80024C90:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002091C
    addiu   a1, a1, 0x0128             # a1 = 00000128
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
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_80024CCC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s5, 0x0028($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s2, $zero, $zero           # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    addiu   s4, $zero, 0x0060          # s4 = 00000060
lbl_80024CFC:
    lw      s0, 0x0010(s3)             # 00000010
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    beq     s0, $zero, lbl_80024D38
    addu    s1, s5, $at
    or      a0, s1, $zero              # a0 = 00000000
lbl_80024D14:
    jal     func_80081688
    lb      a1, 0x001E(s0)             # 0000001E
    bnel    v0, $zero, lbl_80024D30
    lw      s0, 0x0124(s0)             # 00000124
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_80024D30:
    bnel    s0, $zero, lbl_80024D14
    or      a0, s1, $zero              # a0 = 00000000
lbl_80024D38:
    addiu   s2, s2, 0x0008             # s2 = 00000008
    bne     s2, s4, lbl_80024CFC
    addiu   s3, s3, 0x0008             # s3 = 00000008
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80024D68:
    sw      a0, 0x0000($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    lui     a0, 0x800F                 # a0 = 800F0000
    addiu   a0, a0, 0x832E             # a0 = 800E832E
    addiu   v1, v1, 0x832C             # v1 = 800E832C
    lbu     t6, 0x0000(v1)             # 800E832C
lbl_80024D80:
    addiu   v1, v1, 0x0001             # v1 = 800E832D
    sll     t7, t6,  3
    addu    t8, a1, t7
    lw      v0, 0x0010(t8)             # 00000010
    beq     v0, $zero, lbl_80024DA8
    nop
    sh      a2, 0x0110(v0)             # 00000110
lbl_80024D9C:
    lw      v0, 0x0124(v0)             # 00000124
    bnel    v0, $zero, lbl_80024D9C
    sh      a2, 0x0110(v0)             # 00000110
lbl_80024DA8:
    bnel    v1, a0, lbl_80024D80
    lbu     t6, 0x0000(v1)             # 800E832D
    jr      $ra
    nop


func_80024DB8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s3, 0x0024($sp)
    sw      s1, 0x001C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s6, 0x0030($sp)
    sw      s5, 0x002C($sp)
    sw      s4, 0x0028($sp)
    sw      s2, 0x0020($sp)
    sw      s0, 0x0018($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    or      s5, s3, $zero              # s5 = 00000000
    addiu   s6, $zero, 0x0060          # s6 = 00000060
    lui     s2, 0x0001                 # s2 = 00010000
lbl_80024DF4:
    lw      s0, 0x0010(s5)             # 00000010
    beql    s0, $zero, lbl_80024E78
    addiu   s4, s4, 0x0008             # s4 = 00000008
    lb      v0, 0x0003(s0)             # 00000003
lbl_80024E04:
    addu    v1, s1, s2
    bltzl   v0, lbl_80024E6C
    lw      s0, 0x0124(s0)             # 00000124
    lb      t6, 0x1CBC(v1)             # 00001CBC
    beql    t6, v0, lbl_80024E6C
    lw      s0, 0x0124(s0)             # 00000124
    lb      t7, 0x1CD0(v1)             # 00001CD0
    beql    t7, v0, lbl_80024E6C
    lw      s0, 0x0124(s0)             # 00000124
    lbu     t8, 0x0115(s0)             # 00000115
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    bne     t8, $zero, lbl_80024E4C
    nop
    jal     func_80025648
    or      a2, s1, $zero              # a2 = 00000000
    b       lbl_80024E6C
    or      s0, v0, $zero              # s0 = 00000000
lbl_80024E4C:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800210F0
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80024E6C
    lw      s0, 0x0124(s0)             # 00000124
    lw      s0, 0x0124(s0)             # 00000124
lbl_80024E6C:
    bnel    s0, $zero, lbl_80024E04
    lb      v0, 0x0003(s0)             # 00000003
    addiu   s4, s4, 0x0008             # s4 = 00000010
lbl_80024E78:
    bne     s4, s6, lbl_80024DF4
    addiu   s5, s5, 0x0008             # s5 = 00000008
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    jal     func_8004BC78
    or      a0, s1, $zero              # a0 = 00000000
    lw      t9, 0x0108(s3)             # 00000108
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, t9, $at
    lui     $at, 0x0001                # $at = 00010000
    sw      $zero, 0x011C(s3)          # 0000011C
    sw      t0, 0x0108(s3)             # 00000108
    addu    $at, $at, s1
    sh      $zero, 0x04CC($at)         # 000104CC
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0018($sp)
    lw      s1, 0x001C($sp)
    lw      s2, 0x0020($sp)
    lw      s3, 0x0024($sp)
    lw      s4, 0x0028($sp)
    lw      s5, 0x002C($sp)
    lw      s6, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80024EE0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s4, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    or      s1, s2, $zero              # s1 = 00000000
    addiu   s5, $zero, 0x0060          # s5 = 00000060
lbl_80024F14:
    lw      s0, 0x0010(s1)             # 00000010
    beq     s0, $zero, lbl_80024F38
    or      a0, s2, $zero              # a0 = 00000000
lbl_80024F20:
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80025648
    or      a2, s3, $zero              # a2 = 00000000
    lw      s0, 0x0010(s1)             # 00000010
    bnel    s0, $zero, lbl_80024F20
    or      a0, s2, $zero              # a0 = 00000000
lbl_80024F38:
    addiu   s4, s4, 0x0008             # s4 = 00000008
    bne     s4, s5, lbl_80024F14
    addiu   s1, s1, 0x0008             # s1 = 00000008
    lw      a0, 0x013C(s2)             # 0000013C
    beq     a0, $zero, lbl_80024F5C
    nop
    jal     func_80066C90
    nop
    sw      $zero, 0x013C(s2)          # 0000013C
lbl_80024F5C:
    jal     func_8009D894
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_80023BC8
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8002B32C
    nop
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80024F98:
# Bind Actor to Category
# A0 = Global Context + 0x1C24 (Actor Category Struct)
# A1 = Actor Instance
# A2 = Category Id
    sw      a2, 0x0008($sp)
    andi    a2, a2, 0x00FF             # a2 = 00000000
    sb      a2, 0x0002(a1)             # 00000002
    lbu     t6, 0x0008(a0)             # 00000008
    sll     t8, a2,  3
    addu    v0, a0, t8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sb      t7, 0x0008(a0)             # 00000008
    lw      t9, 0x000C(v0)             # 0000000C
    lw      v1, 0x0010(v0)             # 00000010
    addiu   t0, t9, 0x0001             # t0 = 00000001
    beq     v1, $zero, lbl_80024FD0
    sw      t0, 0x000C(v0)             # 0000000C
    sw      a1, 0x0120(v1)             # 00000120
lbl_80024FD0:
    sw      a1, 0x0010(v0)             # 00000010
    sw      v1, 0x0124(a1)             # 00000124
    jr      $ra
    nop


func_80024FE0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0008(a1)             # 00000008
    lui     a3, 0x0001                 # a3 = 00010000
    addu    a3, a3, a0
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x0008(a1)             # 00000008
    lbu     t8, 0x0002(a2)             # 00000002
    sll     t9, t8,  3
    addu    v0, a1, t9
    lw      t0, 0x000C(v0)             # 0000000C
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sw      t1, 0x000C(v0)             # 0000000C
    lw      v1, 0x0120(a2)             # 00000120
    beql    v1, $zero, lbl_80025030
    lbu     t4, 0x0002(a2)             # 00000002
    lw      t2, 0x0124(a2)             # 00000124
    b       lbl_80025040
    sw      t2, 0x0124(v1)             # 00000124
    lbu     t4, 0x0002(a2)             # 00000002
lbl_80025030:
    lw      t3, 0x0124(a2)             # 00000124
    sll     t5, t4,  3
    addu    t6, a1, t5
    sw      t3, 0x0010(t6)             # 00000010
lbl_80025040:
    lw      v1, 0x0124(a2)             # 00000124
    beql    v1, $zero, lbl_80025058
    sw      $zero, 0x0124(a2)          # 00000124
    lw      t7, 0x0120(a2)             # 00000120
    sw      t7, 0x0120(v1)             # 00000120
    sw      $zero, 0x0124(a2)          # 00000124
lbl_80025058:
    sw      $zero, 0x0120(a2)          # 00000120
    lb      a3, 0x1CBC(a3)             # 00011CBC
    lb      t8, 0x0003(a2)             # 00000003
    bnel    a3, t8, lbl_8002509C
    or      v0, v1, $zero              # v0 = 00000000
    lbu     t9, 0x0002(a2)             # 00000002
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    t9, $at, lbl_8002509C
    or      v0, v1, $zero              # v0 = 00000000
    lw      t0, 0x0034(a1)             # 00000034
    or      a1, a3, $zero              # a1 = 00010000
    bnel    t0, $zero, lbl_8002509C
    or      v0, v1, $zero              # v0 = 00000000
    jal     func_800206AC
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    or      v0, v1, $zero              # v0 = 00000000
lbl_8002509C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_800250AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lb      t6, 0x001E(a1)             # 0000001E
    bnel    t6, $zero, lbl_80025104
    lw      $ra, 0x0014($sp)
    lw      a0, 0x0010(a1)             # 00000010
    beql    a0, $zero, lbl_80025104
    lw      $ra, 0x0014($sp)
    lhu     v0, 0x001C(a1)             # 0000001C
    andi    t7, v0, 0x0002             # t7 = 00000000
    bne     t7, $zero, lbl_80025100
    andi    t8, v0, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_800250F0
    nop
    b       lbl_80025100
    sw      $zero, 0x0010(a1)          # 00000010
lbl_800250F0:
    jal     func_80066C90
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    sw      $zero, 0x0010(a1)          # 00000010
lbl_80025100:
    lw      $ra, 0x0014($sp)
lbl_80025104:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80025110:
# ActorSpawn
# Spawn Actor
# A0 = Global Context + 0x1C24
# A1 = Global Context
# A2 = s16 Actor Id
# A3 = float x
# SP+0x10 = float y
# SP+0x14 = float z
# SP+0x18 = rotx
# SP+0x1C = roty
# SP+0x20 = rotz
# SP+0x24 = s16 var
# V0 = Pointer to new actor, or null
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      a2, 0x0060($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0058($sp)
    sw      a1, 0x005C($sp)
    sw      a3, 0x0064($sp)
    lw      t9, 0x0058($sp)
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x8530             # t7 = 800E8530
    sll     t6, a2,  5
    lbu     t0, 0x0008(t9)             # 00000008
    addu    s0, t6, t7
    lw      v0, 0x0008(s0)             # 00000008
    lw      t8, 0x000C(s0)             # 0000000C
    slti    $at, t0, 0x00C9
    bne     $at, $zero, lbl_80025168
    subu    a3, t8, v0
    b       lbl_800253DC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80025168:
    bnel    v0, $zero, lbl_8002517C
    lw      t1, 0x0010(s0)             # 00000010
    b       lbl_80025240
    lw      v1, 0x0014(s0)             # 00000014
    lw      t1, 0x0010(s0)             # 00000010
lbl_8002517C:
    bnel    t1, $zero, lbl_8002521C
    lw      v1, 0x0014(s0)             # 00000014
    lhu     v0, 0x001C(s0)             # 0000001C
    lw      t3, 0x0058($sp)
    andi    t2, v0, 0x0001             # t2 = 00000000
    beq     t2, $zero, lbl_800251C4
    andi    t6, v0, 0x0002             # t6 = 00000000
    lw      v1, 0x013C(t3)             # 0000013C
    bne     v1, $zero, lbl_800251BC
    nop
    jal     func_80066C38              # zelda_malloc?
    addiu   a0, $zero, 0x24E0          # a0 = 000024E0
    lw      t4, 0x0058($sp)
    sw      v0, 0x013C(t4)             # 0000013C
    lw      t5, 0x0058($sp)
    lw      v1, 0x013C(t5)             # 0000013C
lbl_800251BC:
    b       lbl_800251E8
    sw      v1, 0x0010(s0)             # 00000010
lbl_800251C4:
    beq     t6, $zero, lbl_800251DC
    nop
    jal     func_80066C38              # zelda_malloc?
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_800251E8
    sw      v0, 0x0010(s0)             # 00000010
lbl_800251DC:
    jal     func_80066C10              # zelda_malloc?
    or      a0, a3, $zero              # a0 = 00000000
    sw      v0, 0x0010(s0)             # 00000010
lbl_800251E8:
    lw      v0, 0x0010(s0)             # 00000010
    bnel    v0, $zero, lbl_80025200
    lw      a0, 0x0000(s0)             # 00000000
    b       lbl_800253DC
    or      v0, $zero, $zero           # v0 = 00000000
    lw      a0, 0x0000(s0)             # 00000000
lbl_80025200:
    lw      a1, 0x0004(s0)             # 00000004
    lw      a2, 0x0008(s0)             # 00000008
    lw      a3, 0x000C(s0)             # 0000000C
    jal     func_800CCBB8
    sw      v0, 0x0010($sp)
    sb      $zero, 0x001E(s0)          # 0000001E
    lw      v1, 0x0014(s0)             # 00000014
lbl_8002521C:
    or      v0, $zero, $zero           # v0 = 00000000
    beq     v1, $zero, lbl_8002523C
    nop
    lw      t7, 0x0008(s0)             # 00000008
    lw      t8, 0x0010(s0)             # 00000010
    subu    t9, t7, t8
    b       lbl_8002523C
    subu    v0, v1, t9
lbl_8002523C:
    or      v1, v0, $zero              # v1 = 00000000
lbl_80025240:
    lw      a0, 0x005C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lh      a1, 0x0008(v1)             # 00000008
    sw      v1, 0x004C($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, a0, $at
    lw      v1, 0x004C($sp)
    bltz    v0, lbl_80025294
    sw      v0, 0x0048($sp)
    lbu     t0, 0x0002(v1)             # 00000002
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lw      a0, 0x005C($sp)
    bne     t0, $at, lbl_800252A4
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a0
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80020640
    sw      v1, 0x004C($sp)
    beq     v0, $zero, lbl_800252A4
    lw      v1, 0x004C($sp)
lbl_80025294:
    jal     func_800250AC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800253DC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800252A4:
    lw      a0, 0x000C(v1)             # 0000000C
    jal     func_80066C10              # zelda_malloc?
    sw      v1, 0x004C($sp)
    lw      v1, 0x004C($sp)
    bne     v0, $zero, lbl_800252CC
    or      a3, v0, $zero              # a3 = 00000000
    jal     func_800250AC
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_800253DC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800252CC:
    lb      t2, 0x001E(s0)             # 0000001E
    lui     $at, 0x0001                # $at = 00010000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x001E(s0)             # 0000001E
    lw      v0, 0x005C($sp)
    lw      a1, 0x000C(v1)             # 0000000C
    sw      a3, 0x0050($sp)
    addu    v0, v0, $at
    sw      v0, 0x002C($sp)
    sw      v1, 0x004C($sp)
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a3, 0x0050($sp)
    lw      v1, 0x004C($sp)
    lw      v0, 0x002C($sp)
    sw      s0, 0x0138(a3)             # 00000138
    lh      t4, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0007         # $at = 00000007
    sh      t4, 0x0000(a3)             # 00000000
    lw      t5, 0x0004(v1)             # 00000004
    sw      t5, 0x0004(a3)             # 00000004
    lh      t6, 0x0000(v1)             # 00000000
    lh      t7, 0x007A($sp)
    lw      t8, 0x0048($sp)
    bnel    t6, $at, lbl_80025348
    sb      t8, 0x001E(a3)             # 0000001E
    sb      t7, 0x001E(a3)             # 0000001E
    b       lbl_80025348
    sh      $zero, 0x007A($sp)
    sb      t8, 0x001E(a3)             # 0000001E
lbl_80025348:
    lw      t9, 0x0010(v1)             # 00000010
    or      a1, a3, $zero              # a1 = 00000000
    sw      t9, 0x0128(a3)             # 00000128
    lw      t0, 0x0014(v1)             # 00000014
    sw      t0, 0x012C(a3)             # 0000012C
    lw      t1, 0x0018(v1)             # 00000018
    sw      t1, 0x0130(a3)             # 00000130
    lw      t2, 0x001C(v1)             # 0000001C
    sw      t2, 0x0134(a3)             # 00000134
    lb      t3, 0x1CBC(v0)             # 00001CBC
    sb      t3, 0x0003(a3)             # 00000003
    lwc1    $f4, 0x0064($sp)
    swc1    $f4, 0x0008(a3)            # 00000008
    lwc1    $f6, 0x0068($sp)
    swc1    $f6, 0x000C(a3)            # 0000000C
    lwc1    $f8, 0x006C($sp)
    swc1    $f8, 0x0010(a3)            # 00000010
    lh      t4, 0x0072($sp)
    sh      t4, 0x0014(a3)             # 00000014
    lh      t5, 0x0076($sp)
    sh      t5, 0x0016(a3)             # 00000016
    lh      t6, 0x007A($sp)
    sh      t6, 0x0018(a3)             # 00000018
    lh      t7, 0x007E($sp)
    sh      t7, 0x001C(a3)             # 0000001C
    lbu     a2, 0x0002(v1)             # 00000002
    sw      a3, 0x0050($sp)
    jal     func_80024F98
    lw      a0, 0x0058($sp)
    lui     s0, 0x8012                 # s0 = 80120000
    lw      a0, 0x0050($sp)
    lw      s0, 0x0C50(s0)             # 80120C50
    jal     func_80020FDC
    lw      a1, 0x005C($sp)
    lui     $at, 0x8012                # $at = 80120000
    lw      v0, 0x0050($sp)
    sw      s0, 0x0C50($at)            # 80120C50
lbl_800253DC:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_800253F0:
# Spawn Attached Actor
# New actor + 0x118 will be set to A2
# Existing Actor + 0x11C will be set to the new actor's ptr
# the new actor will be bound to the existing actor's room unless spawned actor is global (room = -1)
# A0 = Global Context + 0x1C24
# A1 = Actor* attachToInstance
# A2 = Global Context
# A3 = s16 Actor Id
# SP + 0x10 = float x
# SP + 0x14 = float y
# SP + 0x18 = float z
# SP + 0x1C = s16 rotx
# SP + 0x20 = s16 roty
# SP + 0x24 = s16 rotz
# SP + 0x28 = s16 var
# V0 = Pointer to new actor, or null if allocation failed
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lwc1    $f4, 0x0044($sp)
    lwc1    $f6, 0x0048($sp)
    lh      t6, 0x004E($sp)
    lh      t7, 0x0052($sp)
    lh      t8, 0x0056($sp)
    lh      t9, 0x005A($sp)
    lw      a1, 0x0038($sp)
    lh      a2, 0x003E($sp)
    lw      a3, 0x0040($sp)
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    sw      t6, 0x0018($sp)
    sw      t7, 0x001C($sp)
    sw      t8, 0x0020($sp)
    jal     func_80025110              # ActorSpawn
    sw      t9, 0x0024($sp)
    lw      a0, 0x0034($sp)
    bne     v0, $zero, lbl_80025458
    or      v1, v0, $zero              # v1 = 00000000
    b       lbl_80025478
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80025458:
    sw      v0, 0x011C(a0)             # 0000011C
    lb      t0, 0x0003(v0)             # 00000003
    sw      a0, 0x0118(v0)             # 00000118
    bltzl   t0, lbl_80025478
    or      v0, v1, $zero              # v0 = 00000000
    lb      t1, 0x0003(a0)             # 00000003
    sb      t1, 0x0003(v0)             # 00000003
    or      v0, v1, $zero              # v0 = 00000000
lbl_80025478:
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80025488:
# Spawn Transition Actors
# Iterates over a list of transition actors to determine which ones to spawn
# A0 = Global Context
# A1 = Global Context + 0x1C24
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s4, 0x0040($sp)
    sw      s3, 0x003C($sp)
    or      s3, a0, $zero              # s3 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x0038($sp)
    sw      s1, 0x0034($sp)
    sw      s0, 0x0030($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    s1, s3, $at
    lbu     a2, 0x1D34(s1)             # 00001D34
    lw      s0, 0x1D38(s1)             # 00001D38
    or      s2, $zero, $zero           # s2 = 00000000
    blezl   a2, lbl_800255A8
    lw      $ra, 0x0044($sp)
lbl_800254C8:
    lh      v1, 0x0004(s0)             # 00000004
    bltzl   v1, lbl_80025598
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lb      v0, 0x0000(s0)             # 00000000
    bltzl   v0, lbl_800254FC
    lb      v0, 0x0002(s0)             # 00000002
    lb      t6, 0x1CBC(s1)             # 00001CBC
    beql    t6, v0, lbl_80025520
    lh      t1, 0x0008(s0)             # 00000008
    lb      t7, 0x1CD0(s1)             # 00001CD0
    beql    t7, v0, lbl_80025520
    lh      t1, 0x0008(s0)             # 00000008
    lb      v0, 0x0002(s0)             # 00000002
lbl_800254FC:
    bltzl   v0, lbl_80025598
    addiu   s2, s2, 0x0001             # s2 = 00000002
    lb      t8, 0x1CBC(s1)             # 00001CBC
    beql    t8, v0, lbl_80025520
    lh      t1, 0x0008(s0)             # 00000008
    lb      t9, 0x1CD0(s1)             # 00001CD0
    bnel    t9, v0, lbl_80025598
    addiu   s2, s2, 0x0001             # s2 = 00000003
    lh      t1, 0x0008(s0)             # 00000008
lbl_80025520:
    lh      t0, 0x0006(s0)             # 00000006
    andi    a2, v1, 0x1FFF             # a2 = 00000000
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t0, $f4                    # $f4 = 0.00
    sll     t4, s2, 10
    cvt.s.w $f8, $f6
    sll     a2, a2, 16
    sra     a2, a2, 16
    or      a0, s4, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    cvt.s.w $f4, $f4
    swc1    $f8, 0x0010($sp)
    lh      t2, 0x000A(s0)             # 0000000A
    sw      $zero, 0x0018($sp)
    mtc1    t2, $f10                   # $f10 = 0.00
    mfc1    a3, $f4
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0014($sp)
    lh      t3, 0x000C(s0)             # 0000000C
    sw      $zero, 0x0020($sp)
    sw      t3, 0x001C($sp)
    lh      t5, 0x000E(s0)             # 0000000E
    addu    t6, t4, t5
    jal     func_80025110              # ActorSpawn
    sw      t6, 0x0024($sp)
    lh      t7, 0x0004(s0)             # 00000004
    subu    t8, $zero, t7
    sh      t8, 0x0004(s0)             # 00000004
    lbu     a2, 0x1D34(s1)             # 00001D34
    addiu   s2, s2, 0x0001             # s2 = 00000004
lbl_80025598:
    slt     $at, s2, a2
    bne     $at, $zero, lbl_800254C8
    addiu   s0, s0, 0x0010             # s0 = 00000010
    lw      $ra, 0x0044($sp)
lbl_800255A8:
    lw      s0, 0x0030($sp)
    lw      s1, 0x0034($sp)
    lw      s2, 0x0038($sp)
    lw      s3, 0x003C($sp)
    lw      s4, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_800255C4:
# Spawn Actor from Spawn Record
# (Wrapper for 80025110)
# Actor Spawn record is the one used in Scene Header commands 0x00 and 0x01
# A0 = Global Context + 0x1C24
# A1 = Ptr to Actor Spawn Record
# A2 = Global Context
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a2, 0x0040($sp)
    lh      t7, 0x0004(s0)             # 00000004
    lh      t6, 0x0002(s0)             # 00000002
    lh      a2, 0x0000(s0)             # 00000000
    mtc1    t7, $f6                    # $f6 = 0.00
    mtc1    t6, $f4                    # $f4 = 0.00
    lw      a1, 0x0040($sp)
    cvt.s.w $f8, $f6
    cvt.s.w $f4, $f4
    swc1    $f8, 0x0010($sp)
    lh      t8, 0x0006(s0)             # 00000006
    mtc1    t8, $f10                   # $f10 = 0.00
    mfc1    a3, $f4
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0014($sp)
    lh      t9, 0x0008(s0)             # 00000008
    sw      t9, 0x0018($sp)
    lh      t0, 0x000A(s0)             # 0000000A
    sw      t0, 0x001C($sp)
    lh      t1, 0x000C(s0)             # 0000000C
    sw      t1, 0x0020($sp)
    lh      t2, 0x000E(s0)             # 0000000E
    jal     func_80025110              # ActorSpawn
    sw      t2, 0x0024($sp)
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80025648:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0038($sp)
    lw      t6, 0x0038($sp)
    lw      t7, 0x0138(s0)             # 00000138
    lw      a3, 0x1C44(t6)             # 00001C44
    sw      t7, 0x0020($sp)
    beql    a3, $zero, lbl_800256B8
    lw      t9, 0x00A4(s1)             # 000000A4
    lw      t8, 0x0654(a3)             # 00000654
    bnel    s0, t8, lbl_800256B8
    lw      t9, 0x00A4(s1)             # 000000A4
    jal     func_800798A8
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8009D1A0
    lw      a0, 0x0038($sp)
    sll     a1, v0, 16
    sra     a1, a1, 16
    jal     func_8009D2F0
    lw      a0, 0x0038($sp)
    or      a0, v0, $zero              # a0 = 00000000
    jal     func_80049330
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t9, 0x00A4(s1)             # 000000A4
lbl_800256B8:
    bnel    s0, t9, lbl_800256C8
    lw      t0, 0x00F8(s1)             # 000000F8
    sw      $zero, 0x00A4(s1)          # 000000A4
    lw      t0, 0x00F8(s1)             # 000000F8
lbl_800256C8:
    bnel    s0, t0, lbl_800256D8
    lw      t1, 0x00FC(s1)             # 000000FC
    sw      $zero, 0x00F8(s1)          # 000000F8
    lw      t1, 0x00FC(s1)             # 000000FC
lbl_800256D8:
    bne     s0, t1, lbl_800256E4
    nop
    sw      $zero, 0x00FC(s1)          # 000000FC
lbl_800256E4:
    jal     func_800C9568
    addiu   a0, s0, 0x00E4             # a0 = 000000E4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800210F0
    lw      a1, 0x0038($sp)
    lw      a0, 0x0038($sp)
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80024FE0
    or      a2, s0, $zero              # a2 = 00000000
    or      s1, v0, $zero              # s1 = 00000000
    jal     func_80066C90
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0020($sp)
    lw      t2, 0x0008(a0)             # 00000008
    beql    t2, $zero, lbl_80025738
    or      v0, s1, $zero              # v0 = 00000000
    lb      t3, 0x001E(a0)             # 0000001E
    addiu   t4, t3, 0xFFFF             # t4 = FFFFFFFF
    jal     func_800250AC
    sb      t4, 0x001E(a0)             # 0000001E
    or      v0, s1, $zero              # v0 = 00000000
lbl_80025738:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8002574C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    addiu   a2, $sp, 0x001E            # a2 = FFFFFFFE
    jal     func_80022B14
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lh      v1, 0x001E($sp)
    lw      $ra, 0x0014($sp)
    slti    v0, v1, 0xFFED
    xori    v0, v0, 0x0001             # v0 = 00000001
    beq     v0, $zero, lbl_80025798
    nop
    slti    v0, v1, 0x0154
    beq     v0, $zero, lbl_80025798
    lh      v1, 0x001C($sp)
    slti    v0, v1, 0xFF61
    xori    v0, v0, 0x0001             # v0 = 00000000
    beq     v0, $zero, lbl_80025798
    nop
    slti    v0, v1, 0x0190
lbl_80025798:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


# called to determine which object Navi should go to?
# a0 = actor instance
# a1 = ???
# a2 = ???
# a3 = ???
func_800257A0:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s8, 0x0060($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    or      s2, a2, $zero              # s2 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    or      s8, a1, $zero              # s8 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f22, 0x0038($sp)
    sdc1    $f20, 0x0030($sp)
    sll     s7, a3,  3
    addu    t6, s8, s7
    lw      s0, 0x0010(t6)             # 00000010
    lw      t7, 0x0654(s2)             # 00000654
    lui     $at, 0x8010                # $at = 80100000
    beq     s0, $zero, lbl_80025984
    sw      t7, 0x0084($sp)
    lui     s6, 0x8012                 # s6 = 80120000
    lui     s5, 0x8012                 # s5 = 80120000
    lui     s4, 0x8012                 # s4 = 80120000
    addiu   s4, s4, 0x8C10             # s4 = 80118C10
    addiu   s5, s5, 0x8C0C             # s5 = 80118C0C
    addiu   s6, s6, 0x8C14             # s6 = 80118C14
    lwc1    $f22, 0x64F0($at)          # 801064F0
    lw      t8, 0x0130(s0)             # 00000130
lbl_8002581C:
    beql    t8, $zero, lbl_8002597C
    lw      s0, 0x0124(s0)             # s0 = next actor
    beql    s0, s2, lbl_8002597C
    lw      s0, 0x0124(s0)             # s0 = next actor
    lw      v0, 0x0004(s0)             # v0 = actor flags
    addiu   $at, $zero, 0x0001         #
    andi    t9, v0, 0x0001             # t9 != 0: attracts Navi
    bne     t9, $at, lbl_80025978      # branch if attracts Navi
    addiu   $at, $zero, 0x0028
    bne     s7, $at, lbl_80025888
    andi    t0, v0, 0x0005             # t0 = (flags & 0x05)
    addiu   $at, $zero, 0x0005         #
    bnel    t0, $at, lbl_8002588C      # if (flags & 0x05) != 0x05, branch
    lw      t1, 0x0084($sp)
    lwc1    $f0, 0x008C(s0)            # f0 = dist_squared_from_link
    c.lt.s  $f0, $f22                  # set if dist_squared_from_link < 250000.0
    nop
    bc1fl   lbl_8002588C               # if dist_squared_from_link > 250000.0, branch
    lw      t1, 0x0084($sp)
    lwc1    $f4, 0x0000(s4)            # f4 = *80118C10, closest object examined so far
    c.lt.s  $f0, $f4                   # compare dist_squared_from_link to closest
    nop
    bc1fl   lbl_8002588C               # if dist_squared_from_link > closest, branch
    lw      t1, 0x0084($sp)
    sw      s0, 0x00FC(s8)             # store actor address
    lwc1    $f6, 0x008C(s0)
    swc1    $f6, 0x0000(s4)            # closest = dist_squared_from_link
lbl_80025888:
    lw      t1, 0x0084($sp)
lbl_8002588C:
    or      a0, s0, $zero
    or      a1, s2, $zero
    beq     s0, t1, lbl_80025978       # maybe checks if this object is Link?
    lui     a2, 0x8012                 # a2 = 80120000
    jal     func_80022754              # get targeting distance into f0
    lh      a2, -0x73E8(a2)            # 80118C18
    lwc1    $f8, 0x0000(s5)            # 80118C0C
    mov.s   $f20, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_8002597C
    lw      s0, 0x0124(s0)             # s0 = next actor
    mfc1    a1, $f0
    jal     func_80022824              # check if targetting distance is close enough (v0)
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80025978    # if too far away, branch
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_8002574C
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80025978
    addiu   s1, s3, 0x07C0             # s1 = 000007C0
    addiu   t2, $sp, 0x0080            # t2 = FFFFFFF0
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $sp, 0x007C            # t7 = FFFFFFEC
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    or      a0, s1, $zero              # a0 = 000007C0
    addiu   a1, s2, 0x0038             # a1 = 00000038
    addiu   a2, s0, 0x0038             # a2 = 00000038
    jal     func_8003079C
    addiu   a3, $sp, 0x0070            # a3 = FFFFFFE0
    beq     v0, $zero, lbl_80025940
    or      a0, s1, $zero              # a0 = 000007C0
    lw      a1, 0x0080($sp)
    jal     func_80034700
    lw      a2, 0x007C($sp)
    beql    v0, $zero, lbl_8002597C
    lw      s0, 0x0124(s0)             # 00000124
lbl_80025940:
    lbu     v0, 0x010D(s0)             # 0000010D
    lui     $at, 0x8012                # $at = 80120000
    beq     v0, $zero, lbl_80025970
    nop
    lw      t8, 0x0000(s6)             # 80118C14
    slt     $at, v0, t8
    beq     $at, $zero, lbl_80025978
    lui     $at, 0x8012                # $at = 80120000
    sw      s0, -0x73F8($at)           # 80118C08
    lbu     t9, 0x010D(s0)             # 0000010D
    b       lbl_80025978
    sw      t9, 0x0000(s6)             # 80118C14
lbl_80025970:
    sw      s0, -0x73FC($at)           # 80118C04
    swc1    $f20, 0x0000(s5)           # 80118C0C
lbl_80025978:
    lw      s0, 0x0124(s0)             # 00000124
lbl_8002597C:
    bnel    s0, $zero, lbl_8002581C
    lw      t8, 0x0130(s0)             # 00000130
lbl_80025984:
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
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_800259BC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s4, 0x0024($sp)
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0x8C08             # v1 = 80118C08
    addiu   v0, v0, 0x8C10             # v0 = 80118C10
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    or      s4, a3, $zero              # s4 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s5, 0x0028($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a2, 0x0038($sp)
    sw      $zero, 0x0000(v1)          # 80118C08
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x73FC($at)        # 80118C04
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x64F4($at)           # 801064F4
    lui     $at, 0x8012                # $at = 80120000
    lui     t7, 0x7FFF                 # t7 = 7FFF0000
    swc1    $f4, 0x0000(v0)            # 80118C10
    lwc1    $f6, 0x0000(v0)            # 80118C10
    ori     t7, t7, 0xFFFF             # t7 = 7FFFFFFF
    or      a0, s2, $zero              # a0 = 00000000
    swc1    $f6, -0x73F4($at)          # 80118C0C
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8007943C
    sw      t7, -0x73EC($at)           # 80118C14
    bne     v0, $zero, lbl_80025AB8
    lui     s1, 0x800F                 # s1 = 800F0000
    sw      $zero, 0x00FC(s3)          # 000000FC
    lh      t8, 0x00B6(s4)             # 000000B6
    lui     $at, 0x8012                # $at = 80120000
    addiu   s1, s1, 0x8330             # s1 = 800E8330
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s5, $zero, 0x0003          # s5 = 00000003
    sh      t8, -0x73E8($at)           # 80118C18
lbl_80025A5C:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_800257A0
    lbu     a3, 0x0000(s1)             # 800E8330
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_80025A5C
    addiu   s1, s1, 0x0001             # s1 = 800E8331
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x73FC(t9)            # 80118C04
    slti    $at, s0, 0x000C
    bne     t9, $zero, lbl_80025AB8
    nop
    beq     $at, $zero, lbl_80025AB8
lbl_80025A94:
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    or      a2, s4, $zero              # a2 = 00000000
    jal     func_800257A0
    lbu     a3, 0x0000(s1)             # 800E8331
    addiu   s0, s0, 0x0001             # s0 = 00000002
    slti    $at, s0, 0x000C
    bne     $at, $zero, lbl_80025A94
    addiu   s1, s1, 0x0001             # s1 = 800E8332
lbl_80025AB8:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x73FC(v0)            # 80118C04
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t1, 0x0038($sp)
    bne     v0, $zero, lbl_80025ADC
    lw      t2, 0x0038($sp)
    lw      t0, -0x73F8(t0)            # 80118C08
    b       lbl_80025AE0
    sw      t0, 0x0000(t1)             # 00000000
lbl_80025ADC:
    sw      v0, 0x0000(t2)             # 00000000
lbl_80025AE0:
    lw      t3, 0x0038($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      v0, 0x0000(t3)             # 00000000
    lw      $ra, 0x002C($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    lw      s4, 0x0024($sp)
    lw      s5, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80025B0C:
    sll     t6, a2,  3
    addu    t7, a0, t6
    lw      v1, 0x0010(t7)             # 00000010
    or      v0, $zero, $zero           # v0 = 00000000
    beq     v1, $zero, lbl_80025B44
    nop
    lh      t8, 0x0000(v1)             # 00000000
lbl_80025B28:
    bnel    a1, t8, lbl_80025B3C
    lw      v1, 0x0124(v1)             # 00000124
    jr      $ra
    or      v0, v1, $zero              # v0 = 00000000
lbl_80025B38:
    lw      v1, 0x0124(v1)             # 00000124
lbl_80025B3C:
    bnel    v1, $zero, lbl_80025B28
    lh      t8, 0x0000(v1)             # 00000000
lbl_80025B44:
    jr      $ra
    nop


func_80025B4C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sb      t6, 0x1C24(a0)             # 00001C24
    lw      a1, 0x001C($sp)
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    addiu   a3, $zero, 0x388B          # a3 = 0000388B
    jal     func_80058FF8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80025B84:
# Possibly Link's eye blinking?
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    lh      v1, 0x0002(s0)             # 00000002
    sll     a1, a2, 16
    sra     a1, a1, 16
    bne     v1, $zero, lbl_80025BC4
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80025BD0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80025BC4:
    sh      t6, 0x0002(s0)             # 00000002
    lh      v1, 0x0002(s0)             # 00000002
    or      v0, v1, $zero              # v0 = 00000000
lbl_80025BD0:
    bnel    v0, $zero, lbl_80025BEC
    lh      t7, 0x002E($sp)
    jal     func_80063BF0
    lh      a0, 0x0026($sp)
    sh      v0, 0x0002(s0)             # 00000002
    lh      v1, 0x0002(s0)             # 00000002
    lh      t7, 0x002E($sp)
lbl_80025BEC:
    subu    v0, v1, t7
    blez    v0, lbl_80025C00
    slti    $at, v0, 0xFFFF
    b       lbl_80025C20
    sh      $zero, 0x0000(s0)          # 00000000
lbl_80025C00:
    beq     $at, $zero, lbl_80025C14
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    slti    $at, v1, 0x0002
    beq     $at, $zero, lbl_80025C1C
    addiu   t9, $zero, 0x0002          # t9 = 00000002
lbl_80025C14:
    b       lbl_80025C20
    sh      t8, 0x0000(s0)             # 00000000
lbl_80025C1C:
    sh      t9, 0x0000(s0)             # 00000000
lbl_80025C20:
    lh      v0, 0x0000(s0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80025C38:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x002C($sp)
    lh      v0, 0x0002(s0)             # 00000002
    sll     a1, a2, 16
    sra     a1, a1, 16
    bne     v0, $zero, lbl_80025C78
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80025C80
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80025C78:
    sh      t6, 0x0002(s0)             # 00000002
    lh      v1, 0x0002(s0)             # 00000002
lbl_80025C80:
    bnel    v1, $zero, lbl_80025CF0
    lh      v0, 0x0000(s0)             # 00000000
    jal     func_80063BF0
    lh      a0, 0x0026($sp)
    lh      t7, 0x0000(s0)             # 00000000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sh      v0, 0x0002(s0)             # 00000002
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0000(s0)             # 00000000
    lh      t9, 0x0000(s0)             # 00000000
    div     $zero, t9, $at
    mfhi    t0
    bnel    t0, $zero, lbl_80025CF0
    lh      v0, 0x0000(s0)             # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lh      t1, 0x002E($sp)
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f0, $f6
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sll     t4, t3,  2
    subu    t4, t4, t3
    sh      t4, 0x0000(s0)             # 00000000
    lh      v0, 0x0000(s0)             # 00000000
lbl_80025CF0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80025D04:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lw      a0, 0x003C($sp)
    sll     a0, a0,  6
    addiu   a0, a0, 0x0040             # a0 = 00000040
    jal     func_80066C10              # zelda_malloc?
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80025DAC
    sw      v0, 0x0000(s0)             # 00000000
    lw      a0, 0x003C($sp)
    sll     a0, a0,  2
    addiu   a0, a0, 0x0004             # a0 = 00000004
    jal     func_80066C10              # zelda_malloc?
    sw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_80025DAC
    sw      v0, 0x000C(s0)             # 0000000C
    lw      a0, 0x003C($sp)
    sll     a0, a0,  1
    addiu   a0, a0, 0x0002             # a0 = 00000002
    jal     func_80066C10              # zelda_malloc?
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80025DAC
    sw      v0, 0x0004(s0)             # 00000004
    lw      a0, 0x0000(s0)             # 00000000
    lw      a1, 0x0028($sp)
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x000C(s0)             # 0000000C
    lw      a1, 0x0024($sp)
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a0, 0x0004(s0)             # 00000004
    lw      a1, 0x0020($sp)
    jal     func_80063630
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    b       lbl_80025DE8
    sw      t6, 0x0010(s0)             # 00000010
lbl_80025DAC:
    lw      a0, 0x0000(s0)             # 00000000
    beql    a0, $zero, lbl_80025DC4
    lw      a0, 0x000C(s0)             # 0000000C
    jal     func_80066C90
    nop
    lw      a0, 0x000C(s0)             # 0000000C
lbl_80025DC4:
    beql    a0, $zero, lbl_80025DD8
    lw      a0, 0x0004(s0)             # 00000004
    jal     func_80066C90
    nop
    lw      a0, 0x0004(s0)             # 00000004
lbl_80025DD8:
    beql    a0, $zero, lbl_80025DEC
    lw      $ra, 0x001C($sp)
    jal     func_80066C90
    nop
lbl_80025DE8:
    lw      $ra, 0x001C($sp)
lbl_80025DEC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80025DFC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0028($sp)
    sw      a3, 0x002C($sp)
    jal     func_8001A880
    sw      a1, 0x0024($sp)
    lbu     t6, 0x1C24(v0)             # 00001C24
    lw      a1, 0x0024($sp)
    bnel    t6, $zero, lbl_80025EF0
    sw      a1, 0x0014(s0)             # 00000014
    lw      v0, 0x0010(s0)             # 00000010
    lw      t7, 0x0028($sp)
    blez    v0, lbl_80025EEC
    slt     $at, a1, t7
    bne     $at, $zero, lbl_80025EAC
    lw      t8, 0x002C($sp)
    slt     $at, t8, a1
    bne     $at, $zero, lbl_80025EAC
    lw      t9, 0x0034($sp)
    lw      v1, 0x0000(t9)             # 00000000
    beql    v1, $zero, lbl_80025EB0
    lw      t4, 0x0014(s0)             # 00000014
    lw      t0, 0x000C(s0)             # 0000000C
    sll     t1, v0,  2
    addu    t2, t0, t1
    sw      v1, 0x0000(t2)             # 00000000
    lw      t4, 0x0010(s0)             # 00000010
    lw      t3, 0x0000(s0)             # 00000000
    sw      a1, 0x0024($sp)
    sll     t5, t4,  6
    jal     func_800AA740
    addu    a0, t3, t5
    lw      t8, 0x0010(s0)             # 00000010
    lw      t7, 0x0004(s0)             # 00000004
    lh      t6, 0x003A($sp)
    sll     t9, t8,  1
    lw      a1, 0x0024($sp)
    addu    t0, t7, t9
    sh      t6, 0x0000(t0)             # 00000000
    lw      t1, 0x0010(s0)             # 00000010
    addiu   t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0010(s0)             # 00000010
lbl_80025EAC:
    lw      t4, 0x0014(s0)             # 00000014
lbl_80025EB0:
    beql    a1, t4, lbl_80025EC8
    lh      t8, 0x0008(s0)             # 00000008
    lh      t3, 0x0008(s0)             # 00000008
    addiu   t5, t3, 0x0001             # t5 = 00000001
    sh      t5, 0x0008(s0)             # 00000008
    lh      t8, 0x0008(s0)             # 00000008
lbl_80025EC8:
    lw      t7, 0x0030($sp)
    sltu    $at, t8, t7
    bnel    $at, $zero, lbl_80025EF0
    sw      a1, 0x0014(s0)             # 00000014
    lw      t9, 0x0010(s0)             # 00000010
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    sw      t0, 0x0010(s0)             # 00000010
    addiu   t6, t9, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0008(s0)             # 00000008
lbl_80025EEC:
    sw      a1, 0x0014(s0)             # 00000014
lbl_80025EF0:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80025F04:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s6, 0x0058($sp)
    sll     s6, a3, 16
    sw      s5, 0x0054($sp)
    sw      s2, 0x0048($sp)
    sw      s0, 0x0040($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    or      s5, a2, $zero              # s5 = 00000000
    sra     s6, s6, 16
    sw      $ra, 0x005C($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s1, 0x0044($sp)
    sdc1    $f20, 0x0038($sp)
    sw      a3, 0x006C($sp)
    lw      t6, 0x0010(s0)             # 00000010
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    beql    t6, $at, lbl_80025F60
    lh      v1, 0x0008(s0)             # 00000008
    b       lbl_800260BC
    or      v0, $zero, $zero           # v0 = 00000000
    lh      v1, 0x0008(s0)             # 00000008
lbl_80025F60:
    lui     $at, 0x3F80                # $at = 3F800000
    blezl   v1, lbl_800260A0
    sw      $zero, 0x0010(s0)          # 00000010
    mtc1    $at, $f20                  # $f20 = 1.00
    addiu   s4, s5, 0x1C24             # s4 = 00001C24
    lw      t7, 0x0000(s0)             # 00000000
lbl_80025F78:
    sll     t8, v1,  6
    jal     func_800AA764
    addu    a0, t7, t8
    lwc1    $f8, 0x0058(s2)            # 00000058
    lwc1    $f4, 0x0050(s2)            # 00000050
    lwc1    $f6, 0x0054(s2)            # 00000054
    div.s   $f10, $f20, $f8
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    div.s   $f12, $f20, $f4
    mfc1    a2, $f10
    jal     func_800AA8FC
    div.s   $f14, $f20, $f6
    lh      t1, 0x0008(s0)             # 00000008
    lw      t9, 0x0000(s0)             # 00000000
    sll     t2, t1,  6
    jal     func_800AA740
    addu    a0, t9, t2
    lh      v1, 0x0008(s0)             # 00000008
    lw      t3, 0x0004(s0)             # 00000004
    sll     t4, v1,  1
    addu    t5, t3, t4
    lh      v0, 0x0000(t5)             # 00000000
    bltz    v0, lbl_80025FE0
    sll     t0, v0, 16
    b       lbl_80025FE4
    sra     t0, t0, 16
lbl_80025FE0:
    lb      t0, 0x001E(s2)             # 0000001E
lbl_80025FE4:
    lw      t6, 0x0000(s0)             # 00000000
    sll     t7, v1,  6
    or      a0, s4, $zero              # a0 = 00001C24
    addu    v0, t6, t7
    lwc1    $f16, 0x0030(v0)           # 00000030
    or      a1, s2, $zero              # a1 = 00000000
    or      a2, s5, $zero              # a2 = 00000000
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x0034(v0)           # 00000034
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x0038(v0)            # 00000038
    sw      s6, 0x0028($sp)
    sw      t0, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    beq     v0, $zero, lbl_80026084
    or      s1, v0, $zero              # s1 = 00000000
    lh      t1, 0x0008(s0)             # 00000008
    lw      t8, 0x0000(s0)             # 00000000
    addiu   a1, v0, 0x00B4             # a1 = 000000B4
    sll     t9, t1,  6
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   s3, s2, 0x0050             # s3 = 00000050
    jal     func_800AC0E8
    addu    a0, t8, t9
    lh      t3, 0x0008(s0)             # 00000008
    lw      t2, 0x000C(s0)             # 0000000C
    sll     t4, t3,  2
    addu    t5, t2, t4
    lw      t6, 0x0000(t5)             # 00000000
    sw      t6, 0x0140(s1)             # 00000140
    lw      t1, 0x0000(s3)             # 00000050
    sw      t1, 0x0050(s1)             # 00000050
    lw      t7, 0x0004(s3)             # 00000054
    sw      t7, 0x0054(s1)             # 00000054
    lw      t1, 0x0008(s3)             # 00000058
    sw      t1, 0x0058(s1)             # 00000058
lbl_80026084:
    lh      t8, 0x0008(s0)             # 00000008
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0008(s0)             # 00000008
    lh      v1, 0x0008(s0)             # 00000008
    bgtzl   v1, lbl_80025F78
    lw      t7, 0x0000(s0)             # 00000000
    sw      $zero, 0x0010(s0)          # 00000010
lbl_800260A0:
    jal     func_80066C90
    lw      a0, 0x0000(s0)             # 00000000
    jal     func_80066C90
    lw      a0, 0x000C(s0)             # 0000000C
    jal     func_80066C90
    lw      a0, 0x0004(s0)             # 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800260BC:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0038($sp)
    lw      s0, 0x0040($sp)
    lw      s1, 0x0044($sp)
    lw      s2, 0x0048($sp)
    lw      s3, 0x004C($sp)
    lw      s4, 0x0050($sp)
    lw      s5, 0x0054($sp)
    lw      s6, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_800260E8:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sdc1    $f26, 0x0038($sp)
    sw      s7, 0x0064($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s0, 0x0048($sp)
    mtc1    a3, $f26                   # $f26 = 0.00
    or      s0, a1, $zero              # s0 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    addiu   s4, $sp, 0x0090            # s4 = FFFFFFE8
    addiu   s5, $sp, 0x0084            # s5 = FFFFFFDC
    or      s7, a2, $zero              # s7 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s6, 0x0060($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x833C             # t6 = 800E833C
    lw      t8, 0x0000(t6)             # 800E833C
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x8348             # t9 = 800E8348
    sw      t8, 0x0000(s4)             # FFFFFFE8
    lw      t7, 0x0004(t6)             # 800E8340
    sw      t7, 0x0004(s4)             # FFFFFFEC
    lw      t8, 0x0008(t6)             # 800E8344
    sw      t8, 0x0008(s4)             # FFFFFFF0
    lw      t1, 0x0000(t9)             # 800E8348
    sw      t1, 0x0000(s5)             # FFFFFFDC
    lw      t0, 0x0004(t9)             # 800E834C
    sw      t0, 0x0004(s5)             # FFFFFFE0
    lw      t1, 0x0008(t9)             # 800E8350
    jal     func_800CDCCC              # Rand.Next() float
    sw      t1, 0x0008(s5)             # FFFFFFE4
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f6, 0x64F8($at)           # 801064F8
    sub.s   $f4, $f0, $f24
    lwc1    $f8, 0x0080(s0)            # 00000080
    mul.s   $f20, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x00A0($sp)
    sub.s   $f10, $f0, $f24
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x64FC($at)          # 801064FC
    lwc1    $f4, 0x0088($sp)
    lw      v0, 0x00B8($sp)
    mul.s   $f18, $f10, $f16
    or      s2, v0, $zero              # s2 = 00000000
    add.s   $f6, $f4, $f18
    bltz    v0, lbl_800262C4
    swc1    $f6, 0x0088($sp)
    mtc1    v0, $f8                    # $f8 = 0.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    cvt.s.w $f10, $f8
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x6500($at)          # 80106500
    lwc1    $f22, 0x00BC($sp)
    lbu     s8, 0x00CB($sp)
    lh      s6, 0x00C6($sp)
    add.s   $f4, $f10, $f16
    addiu   s1, $sp, 0x009C            # s1 = FFFFFFF4
    lh      s0, 0x00C2($sp)
    div.s   $f28, $f18, $f4
lbl_80026204:
    jal     func_800A45FC
    mov.s   $f12, $f20
    mul.s   $f6, $f0, $f26
    lwc1    $f8, 0x0000(s7)            # 00000000
    mov.s   $f12, $f20
    add.s   $f10, $f6, $f8
    jal     func_800A4650
    swc1    $f10, 0x009C($sp)
    mul.s   $f16, $f0, $f26
    lwc1    $f18, 0x0008(s7)           # 00000008
    add.s   $f4, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x00A4($sp)
    sub.s   $f6, $f0, $f24
    mul.s   $f8, $f6, $f22
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0084($sp)
    sub.s   $f10, $f0, $f24
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    mul.s   $f16, $f10, $f22
    bne     s0, $zero, lbl_80026274
    swc1    $f16, 0x008C($sp)
    jal     func_8001C074
    or      a3, s5, $zero              # a3 = FFFFFFDC
    b       lbl_800262BC
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFF
lbl_80026274:
    beq     s8, $zero, lbl_800262A0
    or      a0, s3, $zero              # a0 = 00000000
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    or      a3, s5, $zero              # a3 = FFFFFFDC
    sw      s0, 0x0010($sp)
    jal     func_8001C1C4
    sw      s6, 0x0014($sp)
    b       lbl_800262BC
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFE
lbl_800262A0:
    or      a1, s1, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    or      a3, s5, $zero              # a3 = FFFFFFDC
    sw      s0, 0x0010($sp)
    jal     func_8001C154
    sw      s6, 0x0014($sp)
    addiu   s2, s2, 0xFFFF             # s2 = FFFFFFFD
lbl_800262BC:
    bgez    s2, lbl_80026204
    add.s   $f20, $f20, $f28
lbl_800262C4:
    lw      $ra, 0x006C($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
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
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8


func_80026308:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sdc1    $f20, 0x0020($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    mtc1    a2, $f20                   # $f20 = 0.00
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    addiu   s4, $sp, 0x0088            # s4 = FFFFFFE8
    addiu   s5, $sp, 0x007C            # s5 = FFFFFFDC
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s3, 0x004C($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8354             # t6 = 800E8354
    lw      t8, 0x0000(t6)             # 800E8354
    lui     t9, 0x800F                 # t9 = 800F0000
    addiu   t9, t9, 0x8360             # t9 = 800E8360
    sw      t8, 0x0000(s4)             # FFFFFFE8
    lw      t7, 0x0004(t6)             # 800E8358
    or      s0, a3, $zero              # s0 = 00000000
    lui     $at, 0x8010                # $at = 80100000
    sw      t7, 0x0004(s4)             # FFFFFFEC
    lw      t8, 0x0008(t6)             # 800E835C
    addiu   s6, $sp, 0x0094            # s6 = FFFFFFF4
    sw      t8, 0x0008(s4)             # FFFFFFF0
    lw      t1, 0x0000(t9)             # 800E8360
    sw      t1, 0x0000(s5)             # FFFFFFDC
    lw      t0, 0x0004(t9)             # 800E8364
    sw      t0, 0x0004(s5)             # FFFFFFE0
    lw      t1, 0x0008(t9)             # 800E8368
    bltz    a3, lbl_80026488
    sw      t1, 0x0008(s5)             # FFFFFFE4
    lh      s7, 0x00B2($sp)
    lwc1    $f26, 0x6504($at)          # 80106504
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    s7, $f4                    # $f4 = 0.00
    mtc1    $at, $f22                  # $f22 = 0.50
    lbu     s8, 0x00BB($sp)
    lh      s3, 0x00B6($sp)
    cvt.s.w $f24, $f4
lbl_800263C8:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f6, $f0, $f22
    lwc1    $f10, 0x0000(s1)           # 00000000
    mul.s   $f8, $f6, $f20
    add.s   $f16, $f8, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0094($sp)
    sub.s   $f18, $f0, $f22
    lwc1    $f6, 0x0004(s1)            # 00000004
    mul.s   $f4, $f18, $f20
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0098($sp)
    sub.s   $f10, $f0, $f22
    lwc1    $f18, 0x0008(s1)           # 00000008
    mul.s   $f16, $f10, $f20
    add.s   $f4, $f16, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x009C($sp)
    mul.s   $f6, $f0, $f24
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    or      a3, s5, $zero              # a3 = FFFFFFDC
    mul.s   $f8, $f6, $f26
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    addu    v0, t5, s7
    sll     v0, v0, 16
    beq     s8, $zero, lbl_80026470
    sra     v0, v0, 16
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s6, $zero              # a1 = FFFFFFF4
    or      a2, s4, $zero              # a2 = FFFFFFE8
    or      a3, s5, $zero              # a3 = FFFFFFDC
    sw      v0, 0x0010($sp)
    jal     func_8001C1C4
    sw      s3, 0x0014($sp)
    b       lbl_80026480
    addiu   s0, s0, 0xFFFF             # s0 = FFFFFFFF
lbl_80026470:
    sw      v0, 0x0010($sp)
    jal     func_8001C154
    sw      s3, 0x0014($sp)
    addiu   s0, s0, 0xFFFF             # s0 = FFFFFFFE
lbl_80026480:
    bgez    s0, lbl_800263C8
    nop
lbl_80026488:
    lw      $ra, 0x0064($sp)
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
    lw      s7, 0x005C($sp)
    lw      s8, 0x0060($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_800264C8:
# Collision, Test if entity is being bombed
# A0 = Global Context
# A1 = Actor Collision Struct
# V0 = Null or Pointer to Explosive-type actor that collided
    sw      a0, 0x0000($sp)
    lbu     v1, 0x0011(a1)             # 00000011
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t6, v1, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_80026504
    nop
    lw      a0, 0x0008(a1)             # 00000008
    addiu   $at, $zero, 0x0003         # $at = 00000003
    andi    t8, v1, 0xFFFD             # t8 = 00000000
    lbu     t7, 0x0002(a0)             # 00000002
    bne     t7, $at, lbl_80026504
    nop
    sb      t8, 0x0011(a1)             # 00000011
    jr      $ra
    or      v0, a0, $zero              # v0 = 00000000
lbl_80026504:
    jr      $ra
    nop


func_8002650C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0020($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s2, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    lw      s0, 0x1C4C(a0)             # 00001C4C
    lui     $at, 0x42A0                # $at = 42A00000
    addiu   s3, $zero, 0x000A          # s3 = 0000000A
    beql    s0, $zero, lbl_800265B4
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f20                  # $f20 = 80.00
    addiu   s2, $zero, 0x0001          # s2 = 00000001
lbl_80026548:
    beq     s0, s1, lbl_80026560
    nop
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    beq     s2, t6, lbl_80026568
    nop
lbl_80026560:
    b       lbl_800265A8
    lw      s0, 0x0124(s0)             # 00000124
lbl_80026568:
    jal     func_800214AC
    or      a1, s0, $zero              # a1 = 00000000
    lh      t7, 0x00B8(s0)             # 000000B8
    multu   t7, s3
    mflo    t8
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f8, $f6, $f20
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_800265A8
    lw      s0, 0x0124(s0)             # 00000124
    b       lbl_800265B4
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_800265A8:
    bne     s0, $zero, lbl_80026548
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800265B4:
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_800265D4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      a1, 0x001C($sp)
    jal     func_80024FE0
    lw      a2, 0x0020($sp)
    lw      a0, 0x001C($sp)
    lw      a1, 0x0020($sp)
    jal     func_80024F98
    lbu     a2, 0x0027($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80026614:
    addiu   $sp, $sp, 0xFF48           # $sp -= 0xB8
    sdc1    $f28, 0x0048($sp)
    sw      s3, 0x005C($sp)
    mtc1    a2, $f28                   # $f28 = 0.00
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s2, 0x0058($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f26, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lw      s0, 0x1C6C(a0)             # 00001C6C
    lui     $at, 0x4120                # $at = 41200000
    addiu   s8, $sp, 0x0084            # s8 = FFFFFFCC
    beq     s0, $zero, lbl_8002678C
    addiu   s7, $sp, 0x0090            # s7 = FFFFFFD8
    mtc1    $zero, $f26                # $f26 = 0.00
    mtc1    $at, $f24                  # $f24 = 10.00
    addiu   s6, $sp, 0x00A8            # s6 = FFFFFFF0
    addiu   s5, $zero, 0x0016          # s5 = 00000016
    addiu   s4, $zero, 0x0066          # s4 = 00000066
    lh      v0, 0x0000(s0)             # 00000000
lbl_80026688:
    beq     s4, v0, lbl_80026698
    nop
    bne     s5, v0, lbl_800266A0
    nop
lbl_80026698:
    bne     s0, s3, lbl_800266A8
    addiu   s1, s3, 0x0024             # s1 = 00000024
lbl_800266A0:
    b       lbl_80026784
    lw      s0, 0x0124(s0)             # 00000124
lbl_800266A8:
    addiu   s2, s0, 0x0024             # s2 = 00000024
    or      a1, s2, $zero              # a1 = 00000024
    jal     func_80063E18
    or      a0, s1, $zero              # a0 = 00000024
    c.lt.s  $f28, $f0
    nop
    bc1t    lbl_800266D4
    nop
    lh      t6, 0x0200(s0)             # 00000200
    bne     t6, $zero, lbl_800266DC
    nop
lbl_800266D4:
    b       lbl_80026784
    lw      s0, 0x0124(s0)             # 00000124
lbl_800266DC:
    jal     func_800636C4              # sins?
    lh      a0, 0x0032(s0)             # 00000032
    lwc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f10, 0x006C(s0)           # 0000006C
    lwc1    $f8, 0x0060(s0)            # 00000060
    mul.s   $f6, $f4, $f24
    lh      a0, 0x0032(s0)             # 00000032
    mul.s   $f20, $f0, $f6
    nop
    mul.s   $f16, $f10, $f24
    jal     func_80063684              # coss?
    add.s   $f22, $f8, $f16
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f18, 0x0068(s0)           # 00000068
    mfc1    a2, $f26
    add.s   $f10, $f6, $f20
    mul.s   $f4, $f18, $f24
    or      a3, s1, $zero              # a3 = 00000024
    swc1    $f10, 0x00A8($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    add.s   $f16, $f8, $f22
    mul.s   $f2, $f0, $f4
    swc1    $f16, 0x00AC($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    add.s   $f4, $f18, $f2
    swc1    $f4, 0x00B0($sp)
    lh      t8, 0x00AA(s3)             # 000000AA
    lh      t7, 0x00A8(s3)             # 000000A8
    sw      s8, 0x001C($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    sw      s7, 0x0018($sp)
    sw      s6, 0x0014($sp)
    sw      s2, 0x0010($sp)
    cvt.s.w $f14, $f10
    jal     func_80051330
    cvt.s.w $f12, $f6
    beql    v0, $zero, lbl_80026784
    lw      s0, 0x0124(s0)             # 00000124
    b       lbl_80026790
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_80026784:
    bnel    s0, $zero, lbl_80026688
    lh      v0, 0x0000(s0)             # 00000000
lbl_8002678C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80026790:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    ldc1    $f26, 0x0040($sp)
    ldc1    $f28, 0x0048($sp)
    lw      s0, 0x0050($sp)
    lw      s1, 0x0054($sp)
    lw      s2, 0x0058($sp)
    lw      s3, 0x005C($sp)
    lw      s4, 0x0060($sp)
    lw      s5, 0x0064($sp)
    lw      s6, 0x0068($sp)
    lw      s7, 0x006C($sp)
    lw      s8, 0x0070($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00B8           # $sp += 0xB8


func_800267D4:
# Set Actor Text Id with prefix based on the current scene
# References Jump Table 80106508 to determine which prefix to use (0x0000-0x7000)
# A0 = Global Context
# A1 = Actor Instance
# A2 = Text Id
    sw      a2, 0x0008($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    lhu     t6, 0x00A4(a0)             # 000000A4
    sltiu   $at, t6, 0x0071
    beq     $at, $zero, lbl_8002683C
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x6508($at)            # 80106508
    jr      t6
    nop
lbl_80026804:
    b       lbl_80026840
    addiu   v0, $zero, 0x1000          # v0 = 00001000
lbl_8002680C:
    b       lbl_80026840
    addiu   v0, $zero, 0x2000          # v0 = 00002000
lbl_80026814:
    b       lbl_80026840
    addiu   v0, $zero, 0x3000          # v0 = 00003000
lbl_8002681C:
    b       lbl_80026840
    addiu   v0, $zero, 0x4000          # v0 = 00004000
lbl_80026824:
    b       lbl_80026840
    addiu   v0, $zero, 0x5000          # v0 = 00005000
lbl_8002682C:
    b       lbl_80026840
    addiu   v0, $zero, 0x6000          # v0 = 00006000
lbl_80026834:
    b       lbl_80026840
    addiu   v0, $zero, 0x7000          # v0 = 00007000
lbl_8002683C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80026840:
    or      t7, v0, a2                 # t7 = 00000000
    sh      t7, 0x010E(a1)             # 0000010E
    jr      $ra
    nop


func_80026850:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    sw      a1, 0x002C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    lhu     t6, 0x0088(s0)             # 00000088
    lh      a0, 0x0056($sp)
    jal     func_800636C4              # sins?
    sh      t6, 0x0044($sp)
    lwc1    $f4, 0x0050($sp)
    lh      a0, 0x0056($sp)
    mul.s   $f6, $f0, $f4
    jal     func_80063684              # coss?
    swc1    $f6, 0x0040($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0040($sp)
    lwc1    $f18, 0x002C(s0)           # 0000002C
    mtc1    $zero, $f2                 # $f2 = 0.00
    add.s   $f16, $f8, $f10
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    mfc1    a2, $f2
    mfc1    a3, $f2
    swc1    $f16, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0050($sp)
    or      a1, s0, $zero              # a1 = 00000000
    mul.s   $f6, $f0, $f4
    add.s   $f8, $f18, $f6
    swc1    $f8, 0x002C(s0)            # 0000002C
    sw      t7, 0x0014($sp)
    lw      a0, 0x004C($sp)
    jal     func_80021E6C
    swc1    $f2, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lhu     v1, 0x0088(s0)             # 00000088
    lh      t8, 0x0044($sp)
    andi    v1, v1, 0x0001             # v1 = 00000000
    sll     v1, v1, 16
    sh      t8, 0x0088(s0)             # 00000088
    sra     v0, v1, 16
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8002691C:
# ? Same code as 80026950
# A0 = Global Context
# A1 = ?
    lw      v0, 0x1C44(a0)             # 00001C44
    lw      t6, 0x066C(v0)             # 0000066C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_80026948
    nop
    lbu     t8, 0x010C(a1)             # 0000010C
    beq     t8, $zero, lbl_80026948
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80026948:
    jr      $ra
    nop


func_80026950:
# ? Same code as 8002691C
# A0 = Global Context
# A1 = ?
    lw      v0, 0x1C44(a0)             # 00001C44
    lw      t6, 0x066C(v0)             # 0000066C
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t7, t6, 0x0010             # t7 = 00000000
    beq     t7, $zero, lbl_8002697C
    nop
    lbu     t8, 0x010C(a1)             # 0000010C
    bne     t8, $zero, lbl_8002697C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002697C:
    jr      $ra
    nop


func_80026984:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    mtc1    a2, $f22                   # $f22 = 0.00
    mtc1    a3, $f24                   # $f24 = 0.00
    mtc1    $zero, $f26                # $f26 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0044($sp)
    sdc1    $f20, 0x0018($sp)
    mov.s   $f20, $f26
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063E18
    or      a1, s1, $zero              # a1 = 00000000
    lwc1    $f4, 0x0058($sp)
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f0
    nop
    bc1f    lbl_80026A38
    nop
    lw      a1, 0x0000(s0)             # 00000000
    mfc1    a2, $f22
    mfc1    a3, $f24
    swc1    $f26, 0x0010($sp)
    jal     func_80064178
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0004(s0)             # 00000004
    mfc1    a2, $f22
    mfc1    a3, $f24
    mov.s   $f20, $f0
    swc1    $f26, 0x0010($sp)
    jal     func_80064178
    addiu   a0, s1, 0x0004             # a0 = 00000004
    lw      a1, 0x0008(s0)             # 00000008
    mfc1    a2, $f22
    mfc1    a3, $f24
    add.s   $f20, $f20, $f0
    swc1    $f26, 0x0010($sp)
    jal     func_80064178
    addiu   a0, s1, 0x0008             # a0 = 00000008
    b       lbl_80026AA8
    add.s   $f20, $f20, $f0
lbl_80026A38:
    jal     func_80063E18
    or      a1, s1, $zero              # a1 = 00000000
    lwc1    $f6, 0x005C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    c.lt.s  $f6, $f0
    nop
    bc1fl   lbl_80026AAC
    mov.s   $f0, $f20
    lw      a1, 0x0000(s0)             # 00000000
    mfc1    a2, $f22
    mfc1    a3, $f24
    jal     func_80064178
    swc1    $f26, 0x0010($sp)
    lw      a1, 0x0004(s0)             # 00000004
    mfc1    a2, $f22
    mfc1    a3, $f24
    mov.s   $f20, $f0
    swc1    $f26, 0x0010($sp)
    jal     func_80064178
    addiu   a0, s1, 0x0004             # a0 = 00000004
    lw      a1, 0x0008(s0)             # 00000008
    mfc1    a2, $f22
    mfc1    a3, $f24
    add.s   $f20, $f20, $f0
    swc1    $f26, 0x0010($sp)
    jal     func_80064178
    addiu   a0, s1, 0x0008             # a0 = 00000008
    add.s   $f20, $f20, $f0
lbl_80026AA8:
    mov.s   $f0, $f20
lbl_80026AAC:
    lw      $ra, 0x0044($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80026AD0:
# gameplay_keep d. list: Circular Shadow
# A0 = vector3_f32* coordinates
# A1 = vector3_f32* scale
# A2 = Shadow Intensity (0 not visible, 0xFF max? visibility)
# A3 = Global Context
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x0094($sp)
    sw      a2, 0x0098($sp)
    sw      a3, 0x009C($sp)
    lw      t6, 0x009C($sp)
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    lw      s1, 0x0000(t6)             # 00000000
    jal     func_8007DFBC
    lw      a0, 0x02C0(s1)             # 000002C0
    lw      a0, 0x009C($sp)
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(v0)             # 00000000
    lbu     t0, 0x009B($sp)
    sw      t0, 0x0004(v0)             # 00000004
    lwc1    $f4, 0x0000(s0)            # 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    swc1    $f4, 0x0040($sp)
    lwc1    $f6, 0x0004(s0)            # 00000004
    addiu   a1, a0, 0x07C0             # a1 = 000007C0
    addiu   a2, $sp, 0x003C            # a2 = FFFFFFAC
    add.s   $f10, $f6, $f8
    addiu   a3, $sp, 0x0040            # a3 = FFFFFFB0
    swc1    $f10, 0x0044($sp)
    lwc1    $f16, 0x0008(s0)           # 00000008
    jal     func_8002F400
    swc1    $f16, 0x0048($sp)
    lw      t1, 0x003C($sp)
    addiu   t2, $sp, 0x0050            # t2 = FFFFFFC0
    or      a3, $zero, $zero           # a3 = 00000000
    beq     t1, $zero, lbl_80026B8C
    or      a0, t1, $zero              # a0 = 00000000
    lw      a1, 0x0000(s0)             # 00000000
    mfc1    a2, $f0
    lw      a3, 0x0008(s0)             # 00000008
    jal     func_8002B668
    sw      t2, 0x0010($sp)
    jal     func_800AA764
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFC0
    b       lbl_80026BA0
    lw      v0, 0x0094($sp)
lbl_80026B8C:
    lwc1    $f12, 0x0000(s0)           # 00000000
    lwc1    $f14, 0x0004(s0)           # 00000004
    jal     func_800AA7F4
    lw      a2, 0x0008(s0)             # 00000008
    lw      v0, 0x0094($sp)
lbl_80026BA0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0000(v0)           # 00000000
    jal     func_800AA8FC
    lw      a2, 0x0008(v0)             # 00000008
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x009C($sp)
    lw      a0, 0x0000(t5)             # 00000000
    jal     func_800AB900
    sw      s0, 0x002C($sp)
    lw      a1, 0x002C($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0x0405                 # t8 = 04050000
    addiu   t8, t8, 0xE740             # t8 = 0404E740
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90


func_80026C1C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    or      a3, a0, $zero              # a3 = 00000000
    addiu   a0, a3, 0x01E0             # a0 = 000001E0
    jal     func_8007D85C
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    sll     a0, v0, 16
    sh      v0, 0x0026($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    addiu   a1, $zero, 0x4E20          # a1 = 00004E20
    lh      a0, 0x0026($sp)
    lh      a1, 0x002E($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a0, 0x0026($sp)
    jal     func_8007D6B0
    lh      a1, 0x0032($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80026C84:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lw      a0, 0x0028($sp)
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    jal     func_8007D85C
    addiu   a0, a0, 0x01E0             # a0 = 000001E0
    sll     a0, v0, 16
    sh      v0, 0x0026($sp)
    sra     a0, a0, 16
    jal     func_8007D668
    lh      a1, 0x0036($sp)
    lh      a0, 0x0026($sp)
    lh      a1, 0x002E($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007D738
    sw      $zero, 0x0010($sp)
    lh      a0, 0x0026($sp)
    jal     func_8007D6B0
    lh      a1, 0x0032($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80026CF4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lh      t6, 0x0022($sp)
    addiu   a1, $zero, 0x00B4          # a1 = 000000B4
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    slti    $at, t6, 0x0005
    bne     $at, $zero, lbl_80026D3C
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    lwc1    $f12, 0x008C(a0)           # 0000008C
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    jal     func_800915CC
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    b       lbl_80026D48
    lw      a0, 0x001C($sp)
lbl_80026D3C:
    jal     func_800915CC
    lwc1    $f12, 0x008C(a0)           # 0000008C
    lw      a0, 0x001C($sp)
lbl_80026D48:
    lh      a1, 0x0022($sp)
    jal     func_80026C1C
    lh      a2, 0x0026($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80026D64:
# Generates a random floating point between 0 and N exclusive
# F12 = N, exclusive upper bound
# F0 = result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    swc1    $f12, 0x0018($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lwc1    $f4, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    mul.s   $f0, $f0, $f4
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80026D90:
# Multiplies value by a random scalar between -0.5 and 0.5 exclusive
# F12 = N
# F0 = result
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    swc1    $f12, 0x0018($sp)
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lwc1    $f8, 0x0018($sp)
    lw      $ra, 0x0014($sp)
    sub.s   $f6, $f0, $f4
    mul.s   $f0, $f6, $f8
    nop
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80026DC8:
    addiu   $sp, $sp, 0xFF10           # $sp -= 0xF0
    sdc1    $f30, 0x0040($sp)
    sw      s0, 0x0048($sp)
    mtc1    $zero, $f30                # $f30 = 0.00
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    sw      s3, 0x0054($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a0, 0x00F0($sp)
    sw      a1, 0x00F4($sp)
    sll     t6, s0,  3
    subu    t6, t6, s0
    lui     t7, 0x800F                 # t7 = 800F0000
    addiu   t7, t7, 0x836C             # t7 = 800E836C
    sll     t6, t6,  2
    addu    s3, t6, t7
    lwc1    $f20, 0x0010(s3)           # 00000010
    lw      t8, 0x00F0($sp)
    mov.s   $f12, $f30
    lwc1    $f14, 0x0008(s3)           # 00000008
    lui     a2, 0x43FA                 # a2 = 43FA0000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    lw      s4, 0x0000(t8)             # 00000000
    addiu   s6, $sp, 0x00A8            # s6 = FFFFFFB8
    jal     func_800AA740
    or      a0, s6, $zero              # a0 = FFFFFFB8
    lwc1    $f4, 0x0000(s3)            # 00000000
    jal     func_800CF470
    sub.s   $f12, $f4, $f20
    lw      t9, 0x00F4($sp)
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    lui     $at, 0x8010                # $at = 80100000
    subu    s0, t0, t9
    subu    t1, $zero, s0
    mtc1    t1, $f6                    # $f6 = 0.00
    lwc1    $f16, 0x66CC($at)          # 801066CC
    lwc1    $f4, 0x0004(s3)            # 00000004
    cvt.s.w $f8, $f6
    lwc1    $f6, 0x0000(s3)            # 00000000
    sub.s   $f12, $f6, $f20
    mul.s   $f10, $f0, $f8
    nop
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f22, $f18, $f4
    jal     func_800D2CD0
    nop
    mtc1    s0, $f8                    # $f8 = 0.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x66D0($at)          # 801066D0
    cvt.s.w $f10, $f8
    lwc1    $f6, 0x0004(s3)            # 00000004
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f28, 0x66D4($at)          # 801066D4
    lui     $at, 0x3F80                # $at = 3F800000
    lui     s7, 0xDA38                 # s7 = DA380000
    mul.s   $f16, $f0, $f10
    mtc1    $at, $f26                  # $f26 = 1.00
    ori     s7, s7, 0x0003             # s7 = DA380003
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s8, 0xDE00                 # s8 = DE000000
    addiu   s5, $zero, 0x0004          # s5 = 00000004
    mul.s   $f4, $f16, $f18
    nop
    mul.s   $f24, $f4, $f6
    nop
lbl_80026F00:
    jal     func_800AA764
    or      a0, s6, $zero              # a0 = FFFFFFB8
    mov.s   $f12, $f20
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mfc1    a2, $f30
    mov.s   $f12, $f22
    mov.s   $f14, $f24
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x000C(s3)           # 0000000C
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    c.eq.s  $f26, $f12
    nop
    bc1tl   lbl_80026F50
    lw      s1, 0x02C0(s4)             # 000002C0
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02C0(s4)             # 000002C0
lbl_80026F50:
    addiu   t2, s1, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s4)             # 000002C0
    sw      s7, 0x0000(s1)             # 00000000
    lw      t3, 0x00F0($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s4)             # 000002C0
    sw      s8, 0x0000(s0)             # 00000000
    lw      t5, 0x0014(s3)             # 00000014
    sw      t5, 0x0004(s0)             # 00000004
    bgez    s2, lbl_80026F98
    andi    t6, s2, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80026F98
    nop
    addiu   t6, t6, 0xFFFE             # t6 = FFFFFFFE
lbl_80026F98:
    beq     t6, $zero, lbl_80026FAC
    addiu   s2, s2, 0x0001             # s2 = 00000001
    lwc1    $f0, 0x0000(s3)            # 00000000
    b       lbl_80026FB8
    add.s   $f2, $f0, $f0
lbl_80026FAC:
    lwc1    $f0, 0x0000(s3)            # 00000000
    add.s   $f8, $f0, $f0
    sub.s   $f2, $f28, $f8
lbl_80026FB8:
    bne     s2, s5, lbl_80026F00
    add.s   $f20, $f20, $f2
    jal     func_800AA764
    or      a0, s6, $zero              # a0 = FFFFFFB8
    lw      t7, 0x00F4($sp)
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x66D8($at)          # 801066D8
    mtc1    t7, $f10                   # $f10 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s1, 0x02C0(s4)             # 000002C0
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s4)             # 000002C0
    sw      s7, 0x0000(s1)             # 00000000
    lw      t0, 0x00F0($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t0)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s4)             # 000002C0
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s4)             # 000002C0
    sw      s8, 0x0000(s0)             # 00000000
    lw      t1, 0x0018(s3)             # 00000018
    sw      t1, 0x0004(s0)             # 00000004
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
    addiu   $sp, $sp, 0x00F0           # $sp += 0xF0


func_80027070:
# Wrapper for 800511B8
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800511B8
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80027090:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a2, 0x0020($sp)
    sll     a2, a2, 16
    sra     a2, a2, 16
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a3, 0x0024($sp)
    lh      t6, 0x001E($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    andi    t7, a2, 0x8000             # t7 = 00000000
    bnel    t6, $at, lbl_800270E0
    lh      t8, 0x001E($sp)
    bne     t7, $zero, lbl_800270DC
    addiu   a1, $zero, 0x3836          # a1 = 00003836
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    sh      a2, 0x0022($sp)
    lw      a0, 0x0018($sp)
    lh      a2, 0x0022($sp)
lbl_800270DC:
    lh      t8, 0x001E($sp)
lbl_800270E0:
    lh      t9, 0x0026($sp)
    lh      v0, 0x002A($sp)
    andi    t1, a2, 0x00F8             # t1 = 00000000
    sll     t2, t1,  5
    or      t0, t8, t9                 # t0 = 00000000
    or      t3, t0, t2                 # t3 = 00000000
    or      t4, t3, v0                 # t4 = 00000000
    sh      t4, 0x0112(a0)             # 00000112
    sb      v0, 0x0114(a0)             # 00000114
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80027114:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    addu    v0, t6, $at
    lb      t7, 0x0A4E(v0)             # 00000A4E
    addiu   a1, t6, 0x00E0             # a1 = 000000E0
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x001C($sp)
    lb      t8, 0x0A4F(v0)             # 00000A4F
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0020($sp)
    lb      t9, 0x0A50(v0)             # 00000A50
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0024($sp)
    jal     func_800223C8
    lw      a3, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80027188:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   a2, $sp, 0x001C            # a2 = FFFFFFF4
    addu    v0, t6, $at
    lb      t7, 0x0A4E(v0)             # 00000A4E
    addiu   a1, t6, 0x00E0             # a1 = 000000E0
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x001C($sp)
    lb      t8, 0x0A4F(v0)             # 00000A4F
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0020($sp)
    lb      t9, 0x0A50(v0)             # 00000A50
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0024($sp)
    jal     func_80022400
    lw      a3, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800271FC:
# Set NPC Dialog Response
# A0 = Global Context
# A1 = Actor Instance
# A2 = ptr to ? (some actor data)
# A3 = float ?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x0028($sp)
    beq     v0, $zero, lbl_8002723C
    lw      v1, 0x0030($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0000(v1)             # 00000000
    b       lbl_800272D8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002723C:
    lh      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    beq     t7, $zero, lbl_80027274
    addiu   a2, $sp, 0x0026            # a2 = FFFFFFFE
    lw      t9, 0x003C($sp)
    lw      a0, 0x0028($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      v1, 0x0030($sp)
    sh      v0, 0x0000(v1)             # 00000000
    b       lbl_800272D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80027274:
    jal     func_80022B14
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFFC
    lh      v0, 0x0026($sp)
    bltz    v0, lbl_800272A0
    slti    $at, v0, 0x0141
    beq     $at, $zero, lbl_800272A0
    lh      v0, 0x0024($sp)
    bltz    v0, lbl_800272A0
    slti    $at, v0, 0x00F1
    bne     $at, $zero, lbl_800272A8
    or      a0, s0, $zero              # a0 = 00000000
lbl_800272A0:
    b       lbl_800272D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800272A8:
    lw      a1, 0x0028($sp)
    jal     func_80022A68
    lw      a2, 0x0034($sp)
    bne     v0, $zero, lbl_800272C4
    lw      t9, 0x0038($sp)
    b       lbl_800272D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800272C4:
    lw      a0, 0x0028($sp)
    jalr    $ra, t9
    or      a1, s0, $zero              # a1 = 00000000
    sh      v0, 0x010E(s0)             # 0000010E
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800272D8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_800272EC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x0048($sp)
    lw      t7, 0x004C($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    lwc1    $f4, 0x0024(t6)            # 00000024
    addiu   a1, t7, 0x0018             # a1 = 00000018
    swc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x0028(t6)            # 00000028
    lwc1    $f8, 0x0014(t7)            # 00000014
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0034($sp)
    lwc1    $f16, 0x002C(t6)           # 0000002C
    sw      a1, 0x0024($sp)
    jal     func_80063F34
    swc1    $f16, 0x0038($sp)
    sh      v0, 0x0046($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE8
    jal     func_80063F00
    lw      a1, 0x0024($sp)
    lw      a0, 0x0048($sp)
    sh      v0, 0x0044($sp)
    lw      a1, 0x0024($sp)
    jal     func_80063F00
    addiu   a0, a0, 0x0024             # a0 = 00000024
    lw      t8, 0x0048($sp)
    lh      a1, 0x0052($sp)
    lw      t0, 0x004C($sp)
    lh      t9, 0x00B6(t8)             # 000000B6
    subu    a0, $zero, a1
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    subu    v1, v0, t9
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_8002739C
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    sll     a1, a0, 16
    b       lbl_800273B8
    sra     a1, a1, 16
lbl_8002739C:
    slt     $at, a1, v1
    beq     $at, $zero, lbl_800273B0
    or      v0, v1, $zero              # v0 = 00000000
    b       lbl_800273B0
    or      v0, a1, $zero              # v0 = 00000000
lbl_800273B0:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_800273B8:
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0010($sp)
    addiu   a0, t0, 0x000A             # a0 = 0000000A
    jal     func_80064508
    sh      v1, 0x0040($sp)
    lh      v1, 0x0040($sp)
    lw      t0, 0x004C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    bltz    v1, lbl_800273E8
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    b       lbl_800273EC
    or      v0, v1, $zero              # v0 = 00000000
lbl_800273E8:
    subu    v0, $zero, v1
lbl_800273EC:
    slt     $at, v0, $at
    bne     $at, $zero, lbl_80027400
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    b       lbl_80027418
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80027400:
    bltz    v1, lbl_80027410
    subu    v0, $zero, v1
    b       lbl_80027410
    or      v0, v1, $zero              # v0 = 00000000
lbl_80027410:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_80027418:
    lh      a0, 0x000A(t0)             # 0000000A
    subu    v0, $zero, a1
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    slt     $at, a0, v0
    beql    $at, $zero, lbl_8002743C
    slt     $at, a1, a0
    b       lbl_80027450
    sh      v0, 0x000A(t0)             # 0000000A
    slt     $at, a1, a0
lbl_8002743C:
    beq     $at, $zero, lbl_8002744C
    or      v0, a0, $zero              # v0 = 00000000
    b       lbl_8002744C
    or      v0, a1, $zero              # v0 = 00000000
lbl_8002744C:
    sh      v0, 0x000A(t0)             # 0000000A
lbl_80027450:
    lh      t3, 0x000A(t0)             # 0000000A
    lh      a0, 0x005E($sp)
    subu    v1, v1, t3
    sll     v1, v1, 16
    sra     v1, v1, 16
    subu    v0, $zero, a0
    slt     $at, v1, v0
    beq     $at, $zero, lbl_8002747C
    sll     a1, v0, 16
    b       lbl_80027498
    sra     a1, a1, 16
lbl_8002747C:
    slt     $at, a0, v1
    beq     $at, $zero, lbl_80027490
    or      v0, v1, $zero              # v0 = 00000000
    b       lbl_80027490
    or      v0, a0, $zero              # v0 = 00000000
lbl_80027490:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_80027498:
    addiu   a0, t0, 0x0010             # a0 = 00000010
    sw      t4, 0x0010($sp)
    jal     func_80064508
    sh      v1, 0x0040($sp)
    lh      v1, 0x0040($sp)
    lw      t0, 0x004C($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    bltz    v1, lbl_800274C4
    subu    v0, $zero, v1
    b       lbl_800274C4
    or      v0, v1, $zero              # v0 = 00000000
lbl_800274C4:
    slt     $at, v0, $at
    bne     $at, $zero, lbl_800274D8
    nop
    b       lbl_800274F0
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800274D8:
    bltz    v1, lbl_800274E8
    subu    v0, $zero, v1
    b       lbl_800274E8
    or      v0, v1, $zero              # v0 = 00000000
lbl_800274E8:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_800274F0:
    lh      v1, 0x0010(t0)             # 00000010
    subu    v0, $zero, a1
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    slt     $at, v1, v0
    beq     $at, $zero, lbl_80027510
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    b       lbl_80027528
    sh      v0, 0x0010(t0)             # 00000010
lbl_80027510:
    slt     $at, a1, v1
    beq     $at, $zero, lbl_80027524
    or      v0, v1, $zero              # v0 = 00000000
    b       lbl_80027524
    or      v0, a1, $zero              # v0 = 00000000
lbl_80027524:
    sh      v0, 0x0010(t0)             # 00000010
lbl_80027528:
    lbu     t5, 0x006B($sp)
    lw      a0, 0x0048($sp)
    lh      a1, 0x0044($sp)
    beq     t5, $zero, lbl_8002754C
    addiu   a0, a0, 0x00B6             # a0 = 000000B6
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    jal     func_80064508
    sw      t6, 0x0010($sp)
    lw      t0, 0x004C($sp)
lbl_8002754C:
    lh      v0, 0x005A($sp)
    lh      t1, 0x0046($sp)
    addiu   a0, t0, 0x0008             # a0 = 00000008
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    slt     $at, t1, v0
    beq     $at, $zero, lbl_80027574
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    sll     a1, v0, 16
    b       lbl_80027598
    sra     a1, a1, 16
lbl_80027574:
    lh      v1, 0x0056($sp)
    or      v0, t1, $zero              # v0 = 00000000
    slt     $at, v1, t1
    beq     $at, $zero, lbl_80027590
    nop
    b       lbl_80027590
    or      v0, v1, $zero              # v0 = 00000000
lbl_80027590:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_80027598:
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    jal     func_80064508
    sw      t7, 0x0010($sp)
    lw      t0, 0x004C($sp)
    lh      t8, 0x0046($sp)
    lh      a0, 0x0066($sp)
    lh      t9, 0x0008(t0)             # 00000008
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    subu    v1, t8, t9
    sll     v1, v1, 16
    sra     v1, v1, 16
    slt     $at, v1, a0
    beq     $at, $zero, lbl_800275E0
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sll     a1, a0, 16
    b       lbl_80027604
    sra     a1, a1, 16
lbl_800275E0:
    lh      a0, 0x0062($sp)
    or      v0, v1, $zero              # v0 = 00000000
    slt     $at, a0, v1
    beq     $at, $zero, lbl_800275FC
    nop
    b       lbl_800275FC
    or      v0, a0, $zero              # v0 = 00000000
lbl_800275FC:
    sll     a1, v0, 16
    sra     a1, a1, 16
lbl_80027604:
    addiu   a0, t0, 0x000E             # a0 = 0000000E
    jal     func_80064508
    sw      t2, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80027620:
# A0 = s16
    sw      a0, 0x0000($sp)
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     t6, a0,  2
    subu    t6, t6, a0
    sll     t6, t6,  3
    lui     v0, 0x800F                 # v0 = 800F0000
    addu    v0, v0, t6
    lh      v0, -0x7C2C(v0)            # 800E83D4
    jr      $ra
    nop


func_8002764C:
# A0 = Actor Instance
# A1 = ptr ?
# A2 = float ?
# A3 = s16 ?
# SP+0x10 = s16 ?
# V0 = ? (same type as SP+0x10)
# if SP+0x10 != 0, return SP+0x10
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      a2, 0x0038($sp)
    or      a2, a1, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a3, 0x003C($sp)
    lh      t6, 0x0042($sp)
    beql    t6, $zero, lbl_80027680
    lh      t7, 0x0000(a2)             # 00000000
    b       lbl_80027844
    or      v0, t6, $zero              # v0 = 00000000
    lh      t7, 0x0000(a2)             # 00000000
lbl_80027680:
    lw      a0, 0x0030($sp)
    addiu   a1, a2, 0x0018             # a1 = 00000018
    beq     t7, $zero, lbl_80027698
    addiu   a0, a0, 0x0024             # a0 = 00000024
    b       lbl_80027844
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80027698:
    sw      a0, 0x0020($sp)
    sw      a1, 0x001C($sp)
    jal     func_80063E18
    sw      a2, 0x0034($sp)
    lwc1    $f4, 0x0038($sp)
    lw      a0, 0x0020($sp)
    lw      a1, 0x001C($sp)
    c.lt.s  $f4, $f0
    lw      a2, 0x0034($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    bc1f    lbl_800276D4
    nop
    sh      $zero, 0x0004(a2)          # 00000004
    b       lbl_80027844
    sh      $zero, 0x0006(a2)          # 00000006
lbl_800276D4:
    jal     func_80063F00
    sw      a2, 0x0034($sp)
    lw      t8, 0x0030($sp)
    mtc1    v0, $f8                    # $f8 = 0.00
    sll     t7, v0, 16
    lh      t9, 0x00B6(t8)             # 000000B6
    cvt.s.w $f10, $f8
    sll     t4, v0, 16
    mtc1    t9, $f6                    # $f6 = 0.00
    lw      a2, 0x0034($sp)
    sra     t5, t4, 16
    cvt.s.w $f0, $f6
    sra     t8, t7, 16
    lh      t0, 0x003E($sp)
    addiu   v0, $zero, 0x0002          # v0 = 00000002
    sub.s   $f16, $f10, $f0
    trunc.w.s $f18, $f16
    mfc1    t1, $f18
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    bltzl   t3, lbl_8002775C
    mtc1    t8, $f16                   # $f16 = 0.00
    mtc1    t5, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    sub.s   $f8, $f6, $f0
    trunc.w.s $f10, $f8
    mfc1    v1, $f10
    nop
    sll     v1, v1, 16
    b       lbl_80027788
    sra     v1, v1, 16
    mtc1    t8, $f16                   # $f16 = 0.00
lbl_8002775C:
    nop
    cvt.s.w $f18, $f16
    sub.s   $f4, $f18, $f0
    trunc.w.s $f6, $f4
    mfc1    v1, $f6
    nop
    sll     v1, v1, 16
    sra     v1, v1, 16
    subu    v1, $zero, v1
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_80027788:
    slt     $at, t0, v1
    bnel    $at, $zero, lbl_800277A4
    lh      v1, 0x0004(a2)             # 00000004
    sh      $zero, 0x0004(a2)          # 00000004
    b       lbl_80027844
    sh      $zero, 0x0006(a2)          # 00000006
    lh      v1, 0x0004(a2)             # 00000004
lbl_800277A4:
    bne     v1, $zero, lbl_800277B4
    addiu   t1, v1, 0xFFFF             # t1 = FFFFFFFF
    b       lbl_800277BC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800277B4:
    sh      t1, 0x0004(a2)             # 00000004
    lh      v0, 0x0004(a2)             # 00000004
lbl_800277BC:
    beql    v0, $zero, lbl_800277D0
    lh      v0, 0x0006(a2)             # 00000006
    b       lbl_80027844
    lh      v0, 0x0002(a2)             # 00000002
    lh      v0, 0x0006(a2)             # 00000006
lbl_800277D0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    beq     v0, $zero, lbl_800277F0
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    beq     v0, $at, lbl_80027814
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bnel    v0, $at, lbl_80027844
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_800277F0:
    jal     func_80063BF0
    sw      a2, 0x0034($sp)
    lw      a2, 0x0034($sp)
    lh      t2, 0x0006(a2)             # 00000006
    sh      v0, 0x0004(a2)             # 00000004
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addiu   t3, t2, 0x0001             # t3 = 00000001
    b       lbl_80027844
    sh      t3, 0x0006(a2)             # 00000006
lbl_80027814:
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
    jal     func_80063BF0
    sw      a2, 0x0034($sp)
    lw      a2, 0x0034($sp)
    lh      t4, 0x0006(a2)             # 00000006
    sh      v0, 0x0004(a2)             # 00000004
    addiu   v0, $zero, 0x0003          # v0 = 00000003
    addiu   t5, t4, 0x0001             # t5 = 00000001
    b       lbl_80027844
    sh      t5, 0x0006(a2)             # 00000006
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80027844:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80027854:
# Possibly used to get an NPC to "look" at something?
# A0 = Actor Instance
# A1 = ptr to ? (some actor data)
# A2 = s16 ?
# A3 = s16 ?
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lh      t6, 0x0052($sp)
    lui     t8, 0x800F                 # t8 = 800F0000
    addiu   t8, t8, 0x83C0             # t8 = 800E83C0
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  3
    lh      t9, 0x0056($sp)
    addu    v1, t7, t8
    lw      a2, 0x0010(v1)             # 00000010
    lh      a3, 0x0014(v1)             # 00000014
    sw      v1, 0x0030($sp)
    lw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    jal     func_8002764C
    sw      t9, 0x0010($sp)
    lw      v1, 0x0030($sp)
    lw      a1, 0x004C($sp)
    addiu   t0, $sp, 0x0038            # t0 = FFFFFFF0
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sh      v0, 0x0002(a1)             # 00000002
    lwl     t2, 0x0000(v1)             # 00000000
    lwr     t2, 0x0003(v1)             # 00000003
    sw      t2, 0x0000(t0)             # FFFFFFF0
    lwl     t1, 0x0004(v1)             # 00000004
    lwr     t1, 0x0007(v1)             # 00000007
    sw      t1, 0x0004(t0)             # FFFFFFF4
    lwl     t2, 0x0008(v1)             # 00000008
    lwr     t2, 0x000B(v1)             # 0000000B
    sw      t2, 0x0008(t0)             # FFFFFFF8
    lhu     t2, 0x000C(v1)             # 0000000C
    sh      t2, 0x000C(t0)             # FFFFFFFC
    lh      a0, 0x0002(a1)             # 00000002
    beq     a0, $at, lbl_80027908
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     a0, $at, lbl_80027920
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    a0, $at, lbl_80027918
    sh      $zero, 0x003E($sp)
    b       lbl_80027928
    lh      t3, 0x003A($sp)
lbl_80027908:
    sh      $zero, 0x0038($sp)
    sh      $zero, 0x003C($sp)
    sh      $zero, 0x003A($sp)
    sh      $zero, 0x003E($sp)
lbl_80027918:
    sh      $zero, 0x0042($sp)
    sh      $zero, 0x0040($sp)
lbl_80027920:
    sb      $zero, 0x0044($sp)
    lh      t3, 0x003A($sp)
lbl_80027928:
    lh      t4, 0x003E($sp)
    lh      t5, 0x0042($sp)
    lh      t6, 0x0040($sp)
    lbu     t7, 0x0044($sp)
    lw      a0, 0x0048($sp)
    lh      a2, 0x0038($sp)
    lh      a3, 0x003C($sp)
    sw      t3, 0x0010($sp)
    sw      t4, 0x0014($sp)
    sw      t5, 0x0018($sp)
    sw      t6, 0x001C($sp)
    jal     func_800272EC
    sw      t7, 0x0020($sp)
    lw      $ra, 0x002C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8002796C:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xDF00                 # t6 = DF000000
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    sw      $zero, 0x0004(v1)          # FFFFFFF4
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80027990:
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xE200                 # t6 = E2000000
    ori     t6, t6, 0x001C             # t6 = E200001C
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    lui     t7, 0xC810                 # t7 = C8100000
    ori     t7, t7, 0x49F8             # t7 = C81049F8
    sw      t7, 0x0004(v1)             # FFFFFFF4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    lui     t8, 0xDF00                 # t8 = DF000000
    sw      t8, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_800279CC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lui     a2, 0xE700                 # a2 = E7000000
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v0)             # 00000000
    lh      t2, 0x005E($sp)
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s0)             # 000002C0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      a2, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(s0)             # 000002C0
    lui     t6, 0xDB06                 # t6 = DB060000
    ori     t6, t6, 0x0030             # t6 = DB060030
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t7, 0x0048($sp)
    lw      a0, 0x0000(t7)             # 00000008
    jal     func_8002796C
    sw      v0, 0x0030($sp)
    lw      t0, 0x0030($sp)
    lw      t1, 0x004C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      t8, 0x0050($sp)
    lw      t9, 0x0054($sp)
    lw      t2, 0x0058($sp)
    lw      a1, 0x0004(t1)             # 00000004
    lw      a2, 0x0020(t1)             # 00000020
    lbu     a3, 0x0002(t1)             # 00000002
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      t2, 0x0018($sp)
    lw      t3, 0x02C0(s0)             # 000002C0
    lw      a0, 0x0048($sp)
    jal     func_8008A88C
    sw      t3, 0x001C($sp)
    sw      v0, 0x02C0(s0)             # 000002C0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80027AC4:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0028($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t1, 0xFB00                 # t1 = FB000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t2, 0x005E($sp)
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      v0, 0x02D0(s0)             # 000002D0
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0030             # t5 = DB060030
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0000(v0)             # 00000000
    lw      t6, 0x0048($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_80027990
    sw      v0, 0x0034($sp)
    lw      t0, 0x0034($sp)
    lw      v1, 0x004C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      t7, 0x0050($sp)
    lw      t8, 0x0054($sp)
    lw      t9, 0x0058($sp)
    lw      a1, 0x0004(v1)             # 00000004
    lw      a2, 0x0020(v1)             # 00000020
    lbu     a3, 0x0002(v1)             # 00000002
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      t9, 0x0018($sp)
    lw      t1, 0x02D0(s0)             # 000002D0
    lw      a0, 0x0048($sp)
    jal     func_8008A88C
    sw      t1, 0x001C($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80027BA8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    sw      a2, 0x0030($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    sw      a3, 0x0034($sp)
    lbu     t6, 0x1D6C(a2)             # 00001D6C
    lw      v0, 0x1C44(a2)             # 00001C44
    lui     t7, 0x800F                 # t7 = 800F0000
    bne     t6, $zero, lbl_80027BEC
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      t7, -0x0E60(t7)            # 800EF1A0
    addiu   a1, v0, 0x0024             # a1 = 00000024
    beq     t7, $zero, lbl_80027C0C
    nop
lbl_80027BEC:
    jal     func_80063E18
    addiu   a1, a2, 0x00E0             # a1 = 000000E0
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    nop
    mul.s   $f2, $f0, $f4
    b       lbl_80027C1C
    lwc1    $f6, 0x0034($sp)
lbl_80027C0C:
    jal     func_80063E18
    addiu   a0, s0, 0x0024             # a0 = 00000024
    mov.s   $f2, $f0
    lwc1    $f6, 0x0034($sp)
lbl_80027C1C:
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    c.lt.s  $f6, $f2
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   a0, $sp, 0x0032            # a0 = 0000000A
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    bc1f    lbl_80027C64
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t8, 0x0004(s0)             # 00000004
    addiu   a0, $sp, 0x0032            # a0 = 0000000A
    or      a1, $zero, $zero           # a1 = 00000000
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x0010($sp)
    jal     func_80064508
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    b       lbl_80027C84
    lh      v0, 0x0032($sp)
lbl_80027C64:
    lw      t1, 0x0004(s0)             # 00000004
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   a3, $zero, 0x0014          # a3 = 00000014
    ori     t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
    jal     func_80064508
    sw      t3, 0x0010($sp)
    lh      v0, 0x0032($sp)
lbl_80027C84:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80027C98:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a0, 0x0030($sp)
    sll     t6, a2,  2
    subu    t6, t6, a2
    sll     t6, t6,  3
    addu    s0, s0, t6
    lwc1    $f0, 0x000C(s0)            # 0000000C
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    c.lt.s  $f4, $f0
    nop
    bc1f    lbl_80027CE0
    nop
    b       lbl_80027CF4
    mov.s   $f2, $f0
lbl_80027CE0:
    jal     func_8008A194
    lw      a0, 0x0000(s0)             # 00000000
    mtc1    v0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6
lbl_80027CF4:
    lw      a1, 0x0000(s0)             # 00000000
    lw      a2, 0x0004(s0)             # 00000004
    lw      a3, 0x0008(s0)             # 00000008
    swc1    $f2, 0x0010($sp)
    lbu     t7, 0x0010(s0)             # 00000010
    lw      a0, 0x0030($sp)
    sw      t7, 0x0014($sp)
    lwc1    $f8, 0x0014(s0)            # 00000014
    jal     func_8008D17C
    swc1    $f8, 0x0018($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80027D30:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      s4, 0x0014($sp)
    sw      s3, 0x0010($sp)
    sw      s2, 0x000C($sp)
    sw      s1, 0x0008($sp)
    sw      s0, 0x0004($sp)
    sw      a2, 0x0020($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a0
    lw      v0, 0x1DE4(v0)             # 00011DE4
    blez    a3, lbl_80027ED8
    or      v1, $zero, $zero           # v1 = 00000000
    andi    t5, a3, 0x0003             # t5 = 00000000
    beq     t5, $zero, lbl_80027DD0
    or      t4, t5, $zero              # t4 = 00000000
    sll     t0, $zero,  2
    subu    t0, t0, $zero
    lw      t6, 0x0020($sp)
    sll     t0, t0,  3
    sll     t0, t0,  1
    sll     a0, $zero,  1
    addu    a2, a1, a0
    addiu   t1, t0, 0x0814             # t1 = 00000814
    addiu   t3, t0, 0x0940             # t3 = 00000940
    addu    t2, t6, a0
lbl_80027D94:
    multu   t1, v0
    addiu   v1, v1, 0x0001             # v1 = 00000001
    addiu   t1, t1, 0x0032             # t1 = 00000846
    addiu   a2, a2, 0x0002             # a2 = 00000002
    addiu   t2, t2, 0x0002             # t2 = 00000002
    mflo    t7
    sh      t7, -0x0002(a2)            # 00000000
    nop
    multu   t3, v0
    addiu   t3, t3, 0x0032             # t3 = 00000972
    mflo    t8
    sh      t8, -0x0002(t2)            # 00000000
    bne     t4, v1, lbl_80027D94
    nop
    beq     v1, a3, lbl_80027ED8
lbl_80027DD0:
    sll     t0, v1,  2
    subu    t0, t0, v1
    sll     t0, t0,  3
    addu    t0, t0, v1
    sll     t0, t0,  1
    sll     s4, a3,  2
    subu    s4, s4, a3
    lw      t9, 0x0020($sp)
    sll     s4, s4,  3
    addu    s4, s4, a3
    sll     a0, v1,  1
    sll     s4, s4,  1
    addiu   s4, s4, 0x09D6             # s4 = 000009D6
    addu    a2, a1, a0
    addiu   t1, t0, 0x0814             # t1 = 00000814
    addiu   t3, t0, 0x0940             # t3 = 00000940
    addiu   t4, t0, 0x0846             # t4 = 00000846
    addiu   t5, t0, 0x0972             # t5 = 00000972
    addiu   s0, t0, 0x0878             # s0 = 00000878
    addiu   s1, t0, 0x09A4             # s1 = 000009A4
    addiu   s2, t0, 0x08AA             # s2 = 000008AA
    addiu   s3, t0, 0x09D6             # s3 = 000009D6
    addu    t2, t9, a0
lbl_80027E2C:
    multu   t1, v0
    addiu   t1, t1, 0x00C8             # t1 = 000008DC
    addiu   a2, a2, 0x0008             # a2 = 0000000A
    addiu   t2, t2, 0x0008             # t2 = 0000000A
    mflo    t6
    sh      t6, -0x0008(a2)            # 00000002
    nop
    multu   t3, v0
    addiu   t3, t3, 0x00C8             # t3 = 00000A08
    mflo    t7
    sh      t7, -0x0008(t2)            # 00000002
    nop
    multu   t4, v0
    addiu   t4, t4, 0x00C8             # t4 = 0000090E
    mflo    t8
    sh      t8, -0x0006(a2)            # 00000004
    nop
    multu   t5, v0
    addiu   t5, t5, 0x00C8             # t5 = 00000A3A
    mflo    t9
    sh      t9, -0x0006(t2)            # 00000004
    nop
    multu   s0, v0
    addiu   s0, s0, 0x00C8             # s0 = 00000940
    mflo    t6
    sh      t6, -0x0004(a2)            # 00000006
    nop
    multu   s1, v0
    addiu   s1, s1, 0x00C8             # s1 = 00000A6C
    mflo    t7
    sh      t7, -0x0004(t2)            # 00000006
    nop
    multu   s2, v0
    addiu   s2, s2, 0x00C8             # s2 = 00000972
    mflo    t8
    sh      t8, -0x0002(a2)            # 00000008
    nop
    multu   s3, v0
    addiu   s3, s3, 0x00C8             # s3 = 00000A9E
    mflo    t9
    sh      t9, -0x0002(t2)            # 00000008
    bne     s3, s4, lbl_80027E2C
    nop
lbl_80027ED8:
    lw      s0, 0x0004($sp)
    lw      s1, 0x0008($sp)
    lw      s2, 0x000C($sp)
    lw      s3, 0x0010($sp)
    lw      s4, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80027EF4:
# Store A0, A1 on stack
# A0 = ?
# A1 = ?
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80027F04:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x002C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80027F40
    nop
    beq     v0, $at, lbl_80027FE4
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80027FFC
    lh      t1, 0x00AA(s0)             # 000000AA
lbl_80027F40:
    jal     func_80022BB0
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_80027F58
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    b       lbl_80027FF8
    sh      t6, 0x001C(s0)             # 0000001C
lbl_80027F58:
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t7, v0, 0x0001             # t7 = 00000000
    bne     t7, $zero, lbl_80027F98
    andi    t8, v0, 0x0002             # t8 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    mfc1    a1, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    b       lbl_80027FFC
    lh      t1, 0x00AA(s0)             # 000000AA
lbl_80027F98:
    beq     t8, $zero, lbl_80027FC4
    lui     $at, 0xC080                # $at = C0800000
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $at, $f6                   # $f6 = -4.00
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80027FC8
    sh      $zero, 0x00B8(s0)          # 000000B8
    b       lbl_80027FF8
    sw      t9, 0x002C($sp)
lbl_80027FC4:
    sh      $zero, 0x00B8(s0)          # 000000B8
lbl_80027FC8:
    lh      t0, 0x00B8(s0)             # 000000B8
    or      a0, s0, $zero              # a0 = 00000000
    sh      t0, 0x00B4(s0)             # 000000B4
    jal     func_80022D20
    lw      a1, 0x0034($sp)
    b       lbl_80027FFC
    lh      t1, 0x00AA(s0)             # 000000AA
lbl_80027FE4:
    jal     func_80022D40
    lw      a1, 0x0034($sp)
    beql    v0, $zero, lbl_80027FFC
    lh      t1, 0x00AA(s0)             # 000000AA
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_80027FF8:
    lh      t1, 0x00AA(s0)             # 000000AA
lbl_80027FFC:
    lh      t2, 0x00A8(s0)             # 000000A8
    addiu   t3, $zero, 0x001D          # t3 = 0000001D
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t2, $f10                   # $f10 = 0.00
    sw      t3, 0x0014($sp)
    cvt.s.w $f8, $f8
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    cvt.s.w $f0, $f10
    mfc1    a2, $f8
    mfc1    a3, $f0
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      v0, 0x002C($sp)
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80028048:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a2)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(a2)             # 000002C0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x002C($sp)
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_800280C8:
# Draw a single display list, affected by Lens of Truth?
# A0 = Global Context
# A1 = DList segment offset
# A2 = ?
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0028($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    sw      a0, 0x0024($sp)
    lw      a2, 0x0024($sp)
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(a2)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x0028($sp)
    lw      a0, 0x0000(t9)             # 00000000
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0024($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(a2)             # 000002D0
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02D0(a2)             # 000002D0
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x002C($sp)
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80028148:
# Get Link Instance + 0x0835 (u8)
# A0 = Global Context
# V0 = u8 Link Instance + 0x0835
    lw      v1, 0x1C44(a0)             # 00001C44
    lbu     v0, 0x0835(v1)             # 00000835
    jr      $ra
    nop


func_80028158:
# Finds the closest actor instance of a specified id and category within a specified dsitance from another actor
# A0 = Global Context
# A1 = Actor Instance
# A2 = s16 Actor Id (-1 means any)
# A3 = u8 Category Id
# SP+0x10 = f32 range (max distance from actor)
# V0 = pointer to closest Actor Instance, else NULL if none was found
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s2, 0x0024($sp)
    sll     s2, a2, 16
    sw      s1, 0x0020($sp)
    sw      a3, 0x003C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sra     s2, s2, 16
    sw      $ra, 0x002C($sp)
    sw      s3, 0x0028($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    sw      a2, 0x0038($sp)
    sll     t6, a3,  3
    addu    t7, a0, t6
    lw      s0, 0x1C34(t7)             # 00001C34
    lwc1    $f20, 0x0040($sp)
    addiu   s3, $zero, 0xFFFF          # s3 = FFFFFFFF
    beql    s0, $zero, lbl_800281FC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800281A8:
    beq     s0, s1, lbl_800281C4
    nop
    beq     s2, s3, lbl_800281CC
    or      a0, s1, $zero              # a0 = 00000000
    lh      t8, 0x0000(s0)             # 00000000
    beq     s2, t8, lbl_800281CC
    nop
lbl_800281C4:
    b       lbl_800281F0
    lw      s0, 0x0124(s0)             # 00000124
lbl_800281CC:
    jal     func_800214AC
    or      a1, s0, $zero              # a1 = 00000000
    c.le.s  $f0, $f20
    nop
    bc1fl   lbl_800281F0
    lw      s0, 0x0124(s0)             # 00000124
    b       lbl_800281FC
    or      v0, s0, $zero              # v0 = 00000000
    lw      s0, 0x0124(s0)             # 00000124
lbl_800281F0:
    bne     s0, $zero, lbl_800281A8
    nop
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800281FC:
    lw      $ra, 0x002C($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    lw      s2, 0x0024($sp)
    lw      s3, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8002821C:
# Checks if link is at certain distance, and if link is attacking, doesn't check jumpslashes?
# A0 = Global Context
# A1 = Actor Instance
# A2 = float ?
# A3 = ?
# SP+0x10($sp) = Rotation ?
# SP+0x14($sp) = Rotation ?
# V0 = 1 if attacking and at a certain distance, else 0?
    sw      a3, 0x000C($sp)
    sll     a3, a3, 16
    mtc1    a2, $f12                   # $f12 = 0.00
    sra     a3, a3, 16
    lw      v0, 0x1C44(a0)             # 00001C44
    lwc1    $f4, 0x0090(a1)            # 00000090
    lh      a2, 0x008A(a1)             # 0000008A
    lh      t1, 0x0016($sp)
    lh      t9, 0x00B6(v0)             # 000000B6
    c.le.s  $f4, $f12
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t8, a2, $at
    subu    t0, a2, t1
    subu    v1, t8, t9
    sll     v1, v1, 16
    sll     t0, t0, 16
    sra     v1, v1, 16
    bc1f    lbl_800282B8
    sra     t0, t0, 16
    lb      t2, 0x0833(v0)             # 00000833
    lh      t3, 0x0012($sp)
    beql    t2, $zero, lbl_800282BC
    or      v0, $zero, $zero           # v0 = 00000000
    bltz    v1, lbl_80028288
    subu    v0, $zero, v1
    b       lbl_80028288
    or      v0, v1, $zero              # v0 = 00000000
lbl_80028288:
    slt     $at, t3, v0
    bnel    $at, $zero, lbl_800282BC
    or      v0, $zero, $zero           # v0 = 00000000
    bltz    t0, lbl_800282A4
    subu    v0, $zero, t0
    b       lbl_800282A4
    or      v0, t0, $zero              # v0 = 00000000
lbl_800282A4:
    slt     $at, a3, v0
    bnel    $at, $zero, lbl_800282BC
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_800282B8:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800282BC:
    jr      $ra
    nop


func_800282C4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x001C($sp)
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, $zero, 0x00A0          # t7 = 000000A0
    addiu   t8, $zero, 0x0078          # t8 = 00000078
    addiu   t9, $zero, 0x0082          # t9 = 00000082
    addiu   t0, $zero, 0x005A          # t0 = 0000005A
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    addiu   t2, $sp, 0x0024            # t2 = FFFFFFFC
    addiu   t3, $sp, 0x0020            # t3 = FFFFFFF8
    sb      t6, 0x0024($sp)
    sb      t7, 0x0025($sp)
    sb      t8, 0x0026($sp)
    sb      t9, 0x0020($sp)
    sb      t0, 0x0021($sp)
    sb      t1, 0x0022($sp)
    sw      t3, 0x0014($sp)
    jal     func_8001C66C
    sw      t2, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80028320:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a2, 0x800F                 # a2 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    addiu   a3, a3, 0x8504             # a3 = 800E8504
    jal     func_800282C4
    addiu   a2, a2, 0x84F8             # a2 = 800E84F8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002834C:
    lbu     t6, 0x0011(a1)             # 00000011
    lw      v0, 0x1C44(a0)             # 00001C44
    andi    t7, t6, 0x0008             # t7 = 00000000
    beql    t7, $zero, lbl_80028388
    or      v0, $zero, $zero           # v0 = 00000000
    lb      t8, 0x0833(v0)             # 00000833
    beql    t8, $zero, lbl_80028388
    or      v0, $zero, $zero           # v0 = 00000000
    lb      t9, 0x0832(v0)             # 00000832
    addiu   $at, $zero, 0x0016         # $at = 00000016
    bnel    t9, $at, lbl_80028388
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80028384:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80028388:
    jr      $ra
    nop


func_80028390:
# Subtracts damage amount (from colliding damage source) from this actor's health
# A0 = Actor Instance
# V0 = u8 resulting actor health
    lbu     v0, 0x00B0(a0)             # 000000B0
    lbu     v1, 0x00AF(a0)             # 000000AF
    slt     $at, v0, v1
    bne     $at, $zero, lbl_800283AC
    subu    t6, v1, v0
    b       lbl_800283B0
    sb      $zero, 0x00AF(a0)          # 000000AF
lbl_800283AC:
    sb      t6, 0x00AF(a0)             # 000000AF
lbl_800283B0:
    lbu     v0, 0x00AF(a0)             # 000000AF
    jr      $ra
    nop


func_800283BC:
# Attack Collision (sets redead-freeze variable in some cases)
# A0 = Actor Instance
# A1 = Actor Collision Struct + 0x18
# A2 = ?
    lw      v0, 0x0024(a1)             # 00000024
    bne     v0, $zero, lbl_800283D0
    nop
    jr      $ra
    sb      $zero, 0x0116(a0)          # 00000116
lbl_800283D0:
    beql    a2, $zero, lbl_80028400
    lw      v1, 0x0000(v0)             # 00000000
    lw      t6, 0x0000(v0)             # 00000000
    lui     $at, 0x1006                # $at = 10060000
    and     t7, t6, $at
    beql    t7, $zero, lbl_80028400
    lw      v1, 0x0000(v0)             # 00000000
    lbu     t8, 0x0005(v0)             # 00000005
    sb      $zero, 0x0116(a0)          # 00000116
    jr      $ra
    sh      t8, 0x0110(a0)             # 00000110
lbl_800283FC:
    lw      v1, 0x0000(v0)             # 00000000
lbl_80028400:
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    andi    t9, v1, 0x0800             # t9 = 00000000
    beq     t9, $zero, lbl_80028418
    andi    t1, v1, 0x1000             # t1 = 00000000
    jr      $ra
    sb      t0, 0x0116(a0)             # 00000116
lbl_80028418:
    beq     t1, $zero, lbl_8002842C
    andi    t3, v1, 0x4000             # t3 = 00000000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    jr      $ra
    sb      t2, 0x0116(a0)             # 00000116
lbl_8002842C:
    beq     t3, $zero, lbl_80028440
    andi    t5, v1, 0x8000             # t5 = 00000000
    addiu   t4, $zero, 0x0004          # t4 = 00000004
    jr      $ra
    sb      t4, 0x0116(a0)             # 00000116
lbl_80028440:
    beq     t5, $zero, lbl_80028454
    sll     t7, v1, 15
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    jr      $ra
    sb      t6, 0x0116(a0)             # 00000116
lbl_80028454:
    bgez    t7, lbl_80028468
    andi    t9, v1, 0x2000             # t9 = 00000000
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    jr      $ra
    sb      t8, 0x0116(a0)             # 00000116
lbl_80028468:
    beq     t9, $zero, lbl_8002847C
    sll     t1, v1, 12
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    jr      $ra
    sb      t0, 0x0116(a0)             # 00000116
lbl_8002847C:
    bgez    t1, lbl_8002849C
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    beq     a2, $zero, lbl_80028494
    nop
    lbu     t2, 0x0005(v0)             # 00000005
    sh      t2, 0x0110(a0)             # 00000110
lbl_80028494:
    jr      $ra
    sb      t3, 0x0116(a0)             # 00000116
lbl_8002849C:
    sb      $zero, 0x0116(a0)          # 00000116
    jr      $ra
    nop


func_800284A8:
    or      a3, a2, $zero              # a3 = 00000000
    sb      $zero, 0x0116(a0)          # 00000116
    lw      v0, 0x0018(a1)             # 00000018
    lui     t2, 0x0008                 # t2 = 00080000
    lui     t1, 0x0001                 # t1 = 00010000
    addiu   v0, v0, 0xFFFF             # v0 = FFFFFFFF
    bltz    v0, lbl_800285A8
    sll     v1, v0,  6
    lui     t0, 0x1006                 # t0 = 10060000
lbl_800284CC:
    lw      t6, 0x001C(a1)             # 0000001C
    addu    v0, t6, v1
    lw      a2, 0x0024(v0)             # 00000023
    bne     a2, $zero, lbl_800284E8
    nop
    b       lbl_80028594
    or      v0, $zero, $zero           # v0 = 00000000
lbl_800284E8:
    beql    a3, $zero, lbl_80028514
    lw      v0, 0x0000(a2)             # 00000000
    lw      t7, 0x0000(a2)             # 00000000
    and     t8, t7, t0
    beql    t8, $zero, lbl_80028514
    lw      v0, 0x0000(a2)             # 00000000
    lbu     t9, 0x0005(a2)             # 00000005
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80028594
    sh      t9, 0x0110(a0)             # 00000110
    lw      v0, 0x0000(a2)             # 00000000
lbl_80028514:
    andi    t3, v0, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80028528
    andi    t4, v0, 0x1000             # t4 = 00000000
    b       lbl_80028594
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80028528:
    beq     t4, $zero, lbl_80028538
    andi    t5, v0, 0x4000             # t5 = 00000000
    b       lbl_80028594
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80028538:
    beq     t5, $zero, lbl_80028548
    andi    t6, v0, 0x8000             # t6 = 00000000
    b       lbl_80028594
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80028548:
    beq     t6, $zero, lbl_80028558
    and     t7, v0, t1
    b       lbl_80028594
    addiu   v0, $zero, 0x0008          # v0 = 00000008
lbl_80028558:
    beq     t7, $zero, lbl_80028568
    andi    t8, v0, 0x2000             # t8 = 00000000
    b       lbl_80028594
    addiu   v0, $zero, 0x0010          # v0 = 00000010
lbl_80028568:
    beq     t8, $zero, lbl_80028578
    and     t9, v0, t2
    b       lbl_80028594
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_80028578:
    beq     t9, $zero, lbl_80028594
    or      v0, $zero, $zero           # v0 = 00000000
    beq     a3, $zero, lbl_80028594
    addiu   v0, $zero, 0x0040          # v0 = 00000040
    lbu     t3, 0x0005(a2)             # 00000005
    b       lbl_80028594
    sh      t3, 0x0110(a0)             # 00000110
lbl_80028594:
    lbu     t4, 0x0116(a0)             # 00000116
    addiu   v1, v1, 0xFFC0             # v1 = FFFFFFC0
    or      t5, t4, v0                 # t5 = 00000040
    bgez    v1, lbl_800284CC
    sb      t5, 0x0116(a0)             # 00000116
lbl_800285A8:
    jr      $ra
    nop


func_800285B0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    lwc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0000(a0)            # 00000000
    lwc1    $f8, 0x0008(a1)            # 00000008
    lwc1    $f10, 0x0008(a0)           # 00000008
    sub.s   $f14, $f4, $f6
    beq     a3, $zero, lbl_800285EC
    sub.s   $f12, $f8, $f10
    lwc1    $f18, 0x0004(a1)           # 00000004
    lwc1    $f4, 0x0004(a0)            # 00000004
    sub.s   $f6, $f18, $f4
    b       lbl_800285FC
    swc1    $f6, 0x001C($sp)
lbl_800285EC:
    lwc1    $f8, 0x0004(a0)            # 00000004
    lwc1    $f10, 0x0004(a1)           # 00000004
    sub.s   $f18, $f8, $f10
    swc1    $f18, 0x001C($sp)
lbl_800285FC:
    swc1    $f12, 0x0020($sp)
    jal     func_800AA4F8
    swc1    $f14, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f16, 0x0020($sp)
    lw      t6, 0x0030($sp)
    mul.s   $f4, $f2, $f2
    sh      v0, 0x0002(t6)             # 00000002
    mul.s   $f6, $f16, $f16
    lwc1    $f14, 0x001C($sp)
    add.s   $f0, $f4, $f6
    jal     func_800AA4F8
    sqrt.s  $f12, $f0
    lw      t7, 0x0030($sp)
    sh      v0, 0x0000(t7)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80028644:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      a1, 0x003C($sp)
    sw      a2, 0x0040($sp)
    lw      a2, 0x0050($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a0, 0x0038($sp)
    sw      a3, 0x0044($sp)
    lw      t6, 0x003C($sp)
    lw      t7, 0x0040($sp)
    lh      t1, 0x0056($sp)
    lwc1    $f4, 0x0000(t6)            # 00000000
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0004(t6)            # 00000004
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x0008(t6)            # 00000008
    swc1    $f8, 0x0018($sp)
    lh      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x001C($sp)
    lh      t9, 0x0002(t7)             # 00000002
    sw      t9, 0x0020($sp)
    lb      t0, 0x001E(a1)             # 0000001E
    sw      a1, 0x0038($sp)
    sw      t1, 0x0028($sp)
    jal     func_800253F0
    sw      t0, 0x0024($sp)
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_8002870C
    lw      a1, 0x0038($sp)
    lw      t3, 0x0050(a1)             # 00000050
    addiu   t5, $zero, 0x0002          # t5 = 00000002
    sw      t3, 0x0050(v0)             # 00000050
    lw      t2, 0x0054(a1)             # 00000054
    sw      t2, 0x0054(v0)             # 00000054
    lw      t3, 0x0058(a1)             # 00000058
    sw      t3, 0x0058(v0)             # 00000058
    lwc1    $f10, 0x0000(a0)           # 00000000
    swc1    $f10, 0x0068(v0)           # 00000068
    lw      t4, 0x0058($sp)
    sb      t5, 0x013C(v0)             # 0000013C
    sw      t4, 0x0140(v0)             # 00000140
    lw      t6, 0x0048($sp)
    sh      t6, 0x013E(v0)             # 0000013E
    lwc1    $f16, 0x0004(a0)           # 00000004
    swc1    $f16, 0x0144(v0)           # 00000144
    lwc1    $f18, 0x0008(a0)           # 00000008
    b       lbl_80028710
    swc1    $f18, 0x0148(v0)           # 00000148
lbl_8002870C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80028710:
    lw      $ra, 0x0034($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80028720:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0014($sp)
    sw      a1, 0x004C($sp)
    sw      a2, 0x0050($sp)
    lw      v1, 0x0078(a0)             # 00000078
    lui     $at, 0x8010                # $at = 80100000
    beql    v1, $zero, lbl_80028878
    lw      $ra, 0x0014($sp)
    lwc1    $f0, 0x66DC($at)           # 801066DC
    lh      t6, 0x0008(v1)             # 00000008
    lh      a0, 0x004E($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    swc1    $f8, 0x0044($sp)
    lh      t7, 0x000A(v1)             # 0000000A
    mtc1    t7, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f18, $f16, $f0
    swc1    $f18, 0x0040($sp)
    lh      t8, 0x000C(v1)             # 0000000C
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f8, $f6, $f0
    jal     func_800636C4              # sins?
    swc1    $f8, 0x003C($sp)
    swc1    $f0, 0x0038($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x004E($sp)
    lwc1    $f10, 0x0044($sp)
    lwc1    $f16, 0x0038($sp)
    lwc1    $f6, 0x003C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f18, $f10, $f16
    lwc1    $f16, 0x0040($sp)
    mtc1    $at, $f14                  # $f14 = 1.00
    mul.s   $f8, $f6, $f0
    neg.s   $f4, $f18
    sub.s   $f10, $f4, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800CD76C
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f18, 0x66E0($at)          # 801066E0
    lw      t4, 0x0050($sp)
    mul.s   $f6, $f0, $f18
    trunc.w.s $f4, $f6
    mfc1    t2, $f4
    nop
    subu    t3, $zero, t2
    sh      t3, 0x0000(t4)             # 00000000
    lh      a0, 0x004E($sp)
    addiu   a0, a0, 0xC009             # a0 = FFFFC009
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80063684              # coss?
    swc1    $f0, 0x002C($sp)
    lwc1    $f8, 0x0044($sp)
    lwc1    $f10, 0x002C($sp)
    lwc1    $f6, 0x003C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f16, $f8, $f10
    lwc1    $f10, 0x0040($sp)
    mtc1    $at, $f14                  # $f14 = 1.00
    mul.s   $f4, $f6, $f0
    neg.s   $f18, $f16
    sub.s   $f8, $f18, $f4
    mul.s   $f12, $f8, $f10
    jal     func_800CD76C
    nop
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f16, 0x66E4($at)          # 801066E4
    lw      t0, 0x0050($sp)
    mul.s   $f6, $f0, $f16
    trunc.w.s $f18, $f6
    mfc1    t8, $f18
    nop
    subu    t9, $zero, t8
    sh      t9, 0x0004(t0)             # 00000004
    lw      $ra, 0x0014($sp)
lbl_80028878:
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80028884:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    jal     func_800DCE80
    lhu     a1, 0x0022($sp)
    lhu     t6, 0x0022($sp)
    lw      t7, 0x001C($sp)
    sh      t6, 0x010E(t7)             # 0000010E
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800288B4:
# Tests if event_chk_inf flag is set
# A0 = event_chk_inf flag id
# V0 = 0 if not set, non-zero if set
    sra     t6, a0,  4
    sll     t7, t6,  1
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lhu     t8, -0x4B5C(t8)            # 8011B4A4
    andi    t9, a0, 0x000F             # t9 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, t9
    and     v0, t8, t1
    jr      $ra
    nop


func_800288E0:
# Sets event_chk_inf flag to 1
# A0 = event_chk_inf_flag id
    sra     t6, a0,  4
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xA5D0             # t8 = 8011A5D0
    sll     t7, t6,  1
    addu    v0, t7, t8
    lhu     t9, 0x0ED4(v0)             # 00000ED4
    andi    t0, a0, 0x000F             # t0 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, t0
    or      t3, t9, t2                 # t3 = 00000000
    sh      t3, 0x0ED4(v0)             # 00000ED4
    jr      $ra
    nop


func_80028914:
# Tests if inf_table flag is set
# A0 = inf_table flag id
# V0 = 0 if not set, non-zero if set
    sra     t6, a0,  4
    sll     t7, t6,  1
    lui     t8, 0x8012                 # t8 = 80120000
    addu    t8, t8, t7
    lhu     t8, -0x4B38(t8)            # 8011B4C8
    andi    t9, a0, 0x000F             # t9 = 00000000
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sllv    t1, t0, t9
    and     v0, t8, t1
    jr      $ra
    nop


func_80028940:
# Sets inf_table flag to 1
# A0 = inf_table flag id
    sra     t6, a0,  4
    lui     t8, 0x8012                 # t8 = 80120000
    addiu   t8, t8, 0xA5D0             # t8 = 8011A5D0
    sll     t7, t6,  1
    addu    v0, t7, t8
    lhu     t9, 0x0EF8(v0)             # 00000EF8
    andi    t0, a0, 0x000F             # t0 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sllv    t2, t1, t0
    or      t3, t9, t2                 # t3 = 00000000
    sh      t3, 0x0EF8(v0)             # 00000EF8
    jr      $ra
    nop


func_80028974:
# Generic NPC Text Handler 4
# References Jump Table 801066E8
# A0 = Global Context
# A1 = u16 Jump Table index to use
# V0 = Text Id
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sltiu   $at, a1, 0x0049
    beq     $at, $zero, lbl_80029BA8
    or      v1, $zero, $zero           # v1 = 00000000
    sll     t6, a1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x66E8($at)            # 801066E8
    jr      t6
    nop
lbl_800289AC:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_800289DC
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    beq     v0, $zero, lbl_800289D4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1048          # v1 = 00001048
lbl_800289D4:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1047          # v1 = 00001047
lbl_800289DC:
    jal     func_800288B4
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    beq     v0, $zero, lbl_80028A0C
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    beq     v0, $zero, lbl_80028A04
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1032          # v1 = 00001032
lbl_80028A04:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1031          # v1 = 00001031
lbl_80028A0C:
    jal     func_80028914
    or      a0, $zero, $zero           # a0 = 00000000
    beq     v0, $zero, lbl_80028A3C
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    beq     v0, $zero, lbl_80028A34
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1003          # v1 = 00001003
lbl_80028A34:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1002          # v1 = 00001002
lbl_80028A3C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1001          # v1 = 00001001
lbl_80028A44:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    beq     t7, $zero, lbl_80028AD4
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028A84
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    beq     v0, $zero, lbl_80028A7C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1046          # v1 = 00001046
lbl_80028A7C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1045          # v1 = 00001045
lbl_80028A84:
    jal     func_800288B4
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    beq     v0, $zero, lbl_80028AB4
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    beq     v0, $zero, lbl_80028AAC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1034          # v1 = 00001034
lbl_80028AAC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1033          # v1 = 00001033
lbl_80028AB4:
    jal     func_80028914
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    beq     v0, $zero, lbl_80028ACC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1030          # v1 = 00001030
lbl_80028ACC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x102F          # v1 = 0000102F
lbl_80028AD4:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028B04
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    beq     v0, $zero, lbl_80028AFC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1071          # v1 = 00001071
lbl_80028AFC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1070          # v1 = 00001070
lbl_80028B04:
    jal     func_800288B4
    addiu   a0, $zero, 0x000B          # a0 = 0000000B
    beq     v0, $zero, lbl_80028B34
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0017          # a0 = 00000017
    beq     v0, $zero, lbl_80028B2C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1068          # v1 = 00001068
lbl_80028B2C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1067          # v1 = 00001067
lbl_80028B34:
    jal     func_80028914
    addiu   a0, $zero, 0x0015          # a0 = 00000015
    beq     v0, $zero, lbl_80028B4C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1061          # v1 = 00001061
lbl_80028B4C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1060          # v1 = 00001060
lbl_80028B54:
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    beq     t8, $zero, lbl_80028B84
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028B7C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1042          # v1 = 00001042
lbl_80028B7C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1004          # v1 = 00001004
lbl_80028B84:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028B9C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1072          # v1 = 00001072
lbl_80028B9C:
    jal     func_80028914
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    beq     v0, $zero, lbl_80028BB4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1055          # v1 = 00001055
lbl_80028BB4:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1056          # v1 = 00001056
lbl_80028BBC:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    beq     t9, $zero, lbl_80028C04
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028BE4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1043          # v1 = 00001043
lbl_80028BE4:
    jal     func_80028914
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    beq     v0, $zero, lbl_80028BFC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1006          # v1 = 00001006
lbl_80028BFC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1005          # v1 = 00001005
lbl_80028C04:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028C1C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1073          # v1 = 00001073
lbl_80028C1C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x105A          # v1 = 0000105A
lbl_80028C24:
    lui     t0, 0x8012                 # t0 = 80120000
    lw      t0, -0x5A2C(t0)            # 8011A5D4
    beq     t0, $zero, lbl_80028C54
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028C4C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1042          # v1 = 00001042
lbl_80028C4C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1007          # v1 = 00001007
lbl_80028C54:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028C6C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1072          # v1 = 00001072
lbl_80028C6C:
    jal     func_80028914
    addiu   a0, $zero, 0x0047          # a0 = 00000047
    beq     v0, $zero, lbl_80028C84
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x105E          # v1 = 0000105E
lbl_80028C84:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x105D          # v1 = 0000105D
lbl_80028C8C:
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    beq     t1, $zero, lbl_80028CD4
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028CB4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1044          # v1 = 00001044
lbl_80028CB4:
    jal     func_80028914
    addiu   a0, $zero, 0x0022          # a0 = 00000022
    beq     v0, $zero, lbl_80028CCC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1009          # v1 = 00001009
lbl_80028CCC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1008          # v1 = 00001008
lbl_80028CD4:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028CEC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1075          # v1 = 00001075
lbl_80028CEC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x105B          # v1 = 0000105B
lbl_80028CF4:
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x5A2C(t2)            # 8011A5D4
    beq     t2, $zero, lbl_80028D3C
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028D1C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1042          # v1 = 00001042
lbl_80028D1C:
    jal     func_80028914
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    beq     v0, $zero, lbl_80028D34
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x100B          # v1 = 0000100B
lbl_80028D34:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x100A          # v1 = 0000100A
lbl_80028D3C:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028D54
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1056          # v1 = 00001056
lbl_80028D54:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x105F          # v1 = 0000105F
lbl_80028D5C:
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    beq     t3, $zero, lbl_80028DA4
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028D84
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1043          # v1 = 00001043
lbl_80028D84:
    jal     func_80028914
    addiu   a0, $zero, 0x0026          # a0 = 00000026
    beq     v0, $zero, lbl_80028D9C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x100D          # v1 = 0000100D
lbl_80028D9C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x100C          # v1 = 0000100C
lbl_80028DA4:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028DBC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1057          # v1 = 00001057
lbl_80028DBC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1057          # v1 = 00001057
lbl_80028DC4:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    beq     t4, $zero, lbl_80028E0C
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028DEC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1043          # v1 = 00001043
lbl_80028DEC:
    jal     func_80028914
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    beq     v0, $zero, lbl_80028E04
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1019          # v1 = 00001019
lbl_80028E04:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x100E          # v1 = 0000100E
lbl_80028E0C:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028E24
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1077          # v1 = 00001077
lbl_80028E24:
    jal     func_80028914
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    beq     v0, $zero, lbl_80028E3C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1058          # v1 = 00001058
lbl_80028E3C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1059          # v1 = 00001059
lbl_80028E44:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A2C(t5)            # 8011A5D4
    beq     t5, $zero, lbl_80028E74
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028E6C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1049          # v1 = 00001049
lbl_80028E6C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1035          # v1 = 00001035
lbl_80028E74:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028E8C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1079          # v1 = 00001079
lbl_80028E8C:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104E          # v1 = 0000104E
lbl_80028E94:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    beq     t6, $zero, lbl_80028EC4
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028EBC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104A          # v1 = 0000104A
lbl_80028EBC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1038          # v1 = 00001038
lbl_80028EC4:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028EDC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1079          # v1 = 00001079
lbl_80028EDC:
    jal     func_80028914
    addiu   a0, $zero, 0x0059          # a0 = 00000059
    beq     v0, $zero, lbl_80028EF4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1050          # v1 = 00001050
lbl_80028EF4:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104F          # v1 = 0000104F
lbl_80028EFC:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    beq     t7, $zero, lbl_80028F2C
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028F24
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104B          # v1 = 0000104B
lbl_80028F24:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x103C          # v1 = 0000103C
lbl_80028F2C:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028F44
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x107B          # v1 = 0000107B
lbl_80028F44:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1051          # v1 = 00001051
lbl_80028F4C:
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    beq     t8, $zero, lbl_80028F7C
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028F74
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104C          # v1 = 0000104C
lbl_80028F74:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x103D          # v1 = 0000103D
lbl_80028F7C:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028F94
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x107C          # v1 = 0000107C
lbl_80028F94:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1052          # v1 = 00001052
lbl_80028F9C:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    beq     t9, $zero, lbl_80028FCC
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80028FC4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x104D          # v1 = 0000104D
lbl_80028FC4:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x103E          # v1 = 0000103E
lbl_80028FCC:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_80028FE4
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x106E          # v1 = 0000106E
lbl_80028FE4:
    jal     func_80028914
    addiu   a0, $zero, 0x0061          # a0 = 00000061
    beq     v0, $zero, lbl_80028FFC
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1053          # v1 = 00001053
lbl_80028FFC:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1054          # v1 = 00001054
lbl_80029004:
    jal     func_800288B4
    addiu   a0, $zero, 0x005C          # a0 = 0000005C
    beq     v0, $zero, lbl_8002901C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1078          # v1 = 00001078
lbl_8002901C:
    jal     func_80028914
    addiu   a0, $zero, 0x0066          # a0 = 00000066
    beq     v0, $zero, lbl_80029034
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1066          # v1 = 00001066
lbl_80029034:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x1062          # v1 = 00001062
lbl_8002903C:
    lh      t0, 0x00A4(a0)             # 000000A4
    addiu   $at, $zero, 0x005F         # $at = 0000005F
    bne     t0, $at, lbl_80029054
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7002          # v1 = 00007002
lbl_80029054:
    jal     func_80028914
    addiu   a0, $zero, 0x006A          # a0 = 0000006A
    beq     v0, $zero, lbl_8002906C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7004          # v1 = 00007004
lbl_8002906C:
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    slti    $at, v0, 0x4000
    bne     $at, $zero, lbl_80029094
    ori     $at, $zero, 0xC556         # $at = 0000C556
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80029094
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7002          # v1 = 00007002
lbl_80029094:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7003          # v1 = 00007003
lbl_8002909C:
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    jal     func_800288B4
    sh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_80029BA8
    lhu     v1, 0x001E($sp)
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    jal     func_800288B4
    sh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_80029BA8
    lhu     v1, 0x001E($sp)
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    jal     func_800288B4
    sh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_80029BA8
    lhu     v1, 0x001E($sp)
    jal     func_80028914
    addiu   a0, $zero, 0x006C          # a0 = 0000006C
    beq     v0, $zero, lbl_800290F0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7008          # v1 = 00007008
lbl_800290F0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7007          # v1 = 00007007
lbl_800290F8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x702D          # v1 = 0000702D
lbl_80029100:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029138
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029138
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029138
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7006          # v1 = 00007006
lbl_80029138:
    jal     func_800288B4
    addiu   a0, $zero, 0x0012          # a0 = 00000012
    beq     v0, $zero, lbl_80029168
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0071          # a0 = 00000071
    beq     v0, $zero, lbl_80029160
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7072          # v1 = 00007072
lbl_80029160:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7071          # v1 = 00007071
lbl_80029168:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7029          # v1 = 00007029
lbl_80029170:
    jal     func_800288B4
    addiu   a0, $zero, 0x0042          # a0 = 00000042
    beq     v0, $zero, lbl_80029188
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2012          # v1 = 00002012
lbl_80029188:
    jal     func_800288B4
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    beq     v0, $zero, lbl_800291B8
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0076          # a0 = 00000076
    beq     v0, $zero, lbl_800291B0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2011          # v1 = 00002011
lbl_800291B0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2010          # v1 = 00002010
lbl_800291B8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0040          # a0 = 00000040
    beq     v0, $zero, lbl_800291D0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x200F          # v1 = 0000200F
lbl_800291D0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x200E          # v1 = 0000200E
lbl_800291D8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029210
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029210
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029210
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7044          # v1 = 00007044
lbl_80029210:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7015          # v1 = 00007015
lbl_80029218:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029250
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029250
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029250
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7045          # v1 = 00007045
lbl_80029250:
    jal     func_80028914
    addiu   a0, $zero, 0x00C2          # a0 = 000000C2
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7016          # v1 = 00007016
lbl_80029260:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029298
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029298
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029298
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7046          # v1 = 00007046
lbl_80029298:
    jal     func_80028914
    addiu   a0, $zero, 0x00C2          # a0 = 000000C2
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7018          # v1 = 00007018
lbl_800292A8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_800292E0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800292E0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800292E0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7047          # v1 = 00007047
lbl_800292E0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beq     v0, $zero, lbl_800292F8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701A          # v1 = 0000701A
lbl_800292F8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0011          # a0 = 00000011
    beq     v0, $zero, lbl_80029328
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x00C6          # a0 = 000000C6
    beq     v0, $zero, lbl_80029320
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701C          # v1 = 0000701C
lbl_80029320:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701B          # v1 = 0000701B
lbl_80029328:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701A          # v1 = 0000701A
lbl_80029330:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029368
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029368
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029368
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7048          # v1 = 00007048
lbl_80029368:
    jal     func_80028914
    addiu   a0, $zero, 0x00CA          # a0 = 000000CA
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701D          # v1 = 0000701D
lbl_80029378:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_800293B0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800293B0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800293B0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7049          # v1 = 00007049
lbl_800293B0:
    jal     func_80028914
    addiu   a0, $zero, 0x00CC          # a0 = 000000CC
    b       lbl_80029BA8
    addiu   v1, $zero, 0x701F          # v1 = 0000701F
lbl_800293C0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_800293F8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800293F8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800293F8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x704A          # v1 = 0000704A
lbl_800293F8:
    jal     func_80028914
    addiu   a0, $zero, 0x00CE          # a0 = 000000CE
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7021          # v1 = 00007021
lbl_80029408:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029440
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029440
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029440
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x704B          # v1 = 0000704B
lbl_80029440:
    jal     func_80028914
    addiu   a0, $zero, 0x00D0          # a0 = 000000D0
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7023          # v1 = 00007023
lbl_80029450:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_80029488
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029488
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029488
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x704C          # v1 = 0000704C
lbl_80029488:
    jal     func_80028914
    addiu   a0, $zero, 0x00D2          # a0 = 000000D2
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7025          # v1 = 00007025
lbl_80029498:
    jal     func_800288B4
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    beq     v0, $zero, lbl_800294D0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800294D0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800294D0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x704D          # v1 = 0000704D
lbl_800294D0:
    jal     func_80028914
    addiu   a0, $zero, 0x00D4          # a0 = 000000D4
    b       lbl_80029BA8
    addiu   v1, $zero, 0x7027          # v1 = 00007027
lbl_800294E0:
    jal     func_80028914
    addiu   a0, $zero, 0x00D6          # a0 = 000000D6
    b       lbl_80029BA8
    addiu   v1, $zero, 0x403C          # v1 = 0000403C
lbl_800294F0:
    jal     func_80028914
    addiu   a0, $zero, 0x00D8          # a0 = 000000D8
    beq     v0, $zero, lbl_80029508
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5029          # v1 = 00005029
lbl_80029508:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5028          # v1 = 00005028
lbl_80029510:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5002          # v1 = 00005002
lbl_80029518:
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    beq     t1, $zero, lbl_80029578
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029540
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_80029540:
    jal     func_800288B4
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    beq     v0, $zero, lbl_80029558
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3021          # v1 = 00003021
lbl_80029558:
    jal     func_80028914
    addiu   a0, $zero, 0x00E0          # a0 = 000000E0
    beq     v0, $zero, lbl_80029570
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_80029570:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3008          # v1 = 00003008
lbl_80029578:
    jal     func_800288B4
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    beq     v0, $zero, lbl_80029590
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_80029590:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_80029598:
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x5A2C(t2)            # 8011A5D4
    beq     t2, $zero, lbl_800295E0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800295C0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_800295C0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    beq     v0, $zero, lbl_800295D8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3026          # v1 = 00003026
lbl_800295D8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3009          # v1 = 00003009
lbl_800295E0:
    jal     func_800288B4
    addiu   a0, $zero, 0x002A          # a0 = 0000002A
    beq     v0, $zero, lbl_800295F8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_800295F8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_80029600:
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    beq     t3, $zero, lbl_80029660
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029628
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_80029628:
    jal     func_800288B4
    addiu   a0, $zero, 0x0023          # a0 = 00000023
    beq     v0, $zero, lbl_80029640
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3026          # v1 = 00003026
lbl_80029640:
    jal     func_80028914
    addiu   a0, $zero, 0x00EB          # a0 = 000000EB
    beq     v0, $zero, lbl_80029658
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302B          # v1 = 0000302B
lbl_80029658:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x300A          # v1 = 0000300A
lbl_80029660:
    jal     func_800288B4
    addiu   a0, $zero, 0x002B          # a0 = 0000002B
    beq     v0, $zero, lbl_80029678
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_80029678:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_80029680:
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t4, -0x5A2C(t4)            # 8011A5D4
    beq     t4, $zero, lbl_800296C8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800296A8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_800296A8:
    jal     func_80028914
    addiu   a0, $zero, 0x00F0          # a0 = 000000F0
    beq     v0, $zero, lbl_800296C0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3015          # v1 = 00003015
lbl_800296C0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3014          # v1 = 00003014
lbl_800296C8:
    jal     func_800288B4
    addiu   a0, $zero, 0x002C          # a0 = 0000002C
    beq     v0, $zero, lbl_800296E0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_800296E0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_800296E8:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A2C(t5)            # 8011A5D4
    beq     t5, $zero, lbl_80029730
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029710
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_80029710:
    jal     func_80028914
    addiu   a0, $zero, 0x00F4          # a0 = 000000F4
    beq     v0, $zero, lbl_80029728
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3017          # v1 = 00003017
lbl_80029728:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3016          # v1 = 00003016
lbl_80029730:
    jal     func_800288B4
    addiu   a0, $zero, 0x002C          # a0 = 0000002C
    beq     v0, $zero, lbl_80029748
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_80029748:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_80029750:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    beq     t6, $zero, lbl_80029798
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_80029778
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3027          # v1 = 00003027
lbl_80029778:
    jal     func_80028914
    addiu   a0, $zero, 0x00F8          # a0 = 000000F8
    beq     v0, $zero, lbl_80029790
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3019          # v1 = 00003019
lbl_80029790:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3018          # v1 = 00003018
lbl_80029798:
    jal     func_800288B4
    addiu   a0, $zero, 0x002D          # a0 = 0000002D
    beq     v0, $zero, lbl_800297B0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4043          # v1 = 00004043
lbl_800297B0:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x302A          # v1 = 0000302A
lbl_800297B8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0025          # a0 = 00000025
    beq     v0, $zero, lbl_800297D0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x3029          # v1 = 00003029
lbl_800297D0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    beq     v0, $zero, lbl_800297F8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0021          # a0 = 00000021
    beq     v0, $zero, lbl_800297F8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x301B          # v1 = 0000301B
lbl_800297F8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x301A          # v1 = 0000301A
lbl_80029800:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029818
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402D          # v1 = 0000402D
lbl_80029818:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_80029830
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4007          # v1 = 00004007
lbl_80029830:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_80029838:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029850
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402E          # v1 = 0000402E
lbl_80029850:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_80029880
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0124          # a0 = 00000124
    beq     v0, $zero, lbl_80029878
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4009          # v1 = 00004009
lbl_80029878:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4008          # v1 = 00004008
lbl_80029880:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_80029888:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800298A0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402D          # v1 = 0000402D
lbl_800298A0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0031          # a0 = 00000031
    beq     v0, $zero, lbl_800298D0
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x012A          # a0 = 0000012A
    beq     v0, $zero, lbl_800298C8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x400B          # v1 = 0000400B
lbl_800298C8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402F          # v1 = 0000402F
lbl_800298D0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_800298E8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x400A          # v1 = 0000400A
lbl_800298E8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_800298F0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029908
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402E          # v1 = 0000402E
lbl_80029908:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_80029920
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x400C          # v1 = 0000400C
lbl_80029920:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_80029928:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029940
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402D          # v1 = 0000402D
lbl_80029940:
    jal     func_800288B4
    addiu   a0, $zero, 0x0033          # a0 = 00000033
    beq     v0, $zero, lbl_80029958
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4010          # v1 = 00004010
lbl_80029958:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_80029970
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x400F          # v1 = 0000400F
lbl_80029970:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_80029978:
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_80029990
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402E          # v1 = 0000402E
lbl_80029990:
    jal     func_800288B4
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_800299A8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4011          # v1 = 00004011
lbl_800299A8:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x4006          # v1 = 00004006
lbl_800299B0:
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    beq     t7, $zero, lbl_80029BA8
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0037          # a0 = 00000037
    beq     v0, $zero, lbl_800299D8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x402B          # v1 = 0000402B
lbl_800299D8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0031          # a0 = 00000031
    beq     v0, $zero, lbl_80029A08
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0138          # a0 = 00000138
    beq     v0, $zero, lbl_80029A00
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x401C          # v1 = 0000401C
lbl_80029A00:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x401B          # v1 = 0000401B
lbl_80029A08:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x401A          # v1 = 0000401A
lbl_80029A10:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x500F          # v1 = 0000500F
lbl_80029A18:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5010          # v1 = 00005010
lbl_80029A20:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5012          # v1 = 00005012
lbl_80029A28:
    jal     func_80028914
    addiu   a0, $zero, 0x0166          # a0 = 00000166
    beq     v0, $zero, lbl_80029A40
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5001          # v1 = 00005001
lbl_80029A40:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5000          # v1 = 00005000
lbl_80029A48:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5012          # v1 = 00005012
lbl_80029A50:
    jal     func_80028914
    addiu   a0, $zero, 0x016A          # a0 = 0000016A
    beq     v0, $zero, lbl_80029A68
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5001          # v1 = 00005001
lbl_80029A68:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x5000          # v1 = 00005000
lbl_80029A70:
    jal     func_800288B4
    addiu   a0, $zero, 0x0016          # a0 = 00000016
    beq     v0, $zero, lbl_80029A88
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2049          # v1 = 00002049
lbl_80029A88:
    jal     func_800288B4
    addiu   a0, $zero, 0x0015          # a0 = 00000015
    beq     v0, $zero, lbl_80029AA0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2048          # v1 = 00002048
lbl_80029AA0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beq     v0, $zero, lbl_80029AB8
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2047          # v1 = 00002047
lbl_80029AB8:
    jal     func_800288B4
    addiu   a0, $zero, 0x0012          # a0 = 00000012
    beq     v0, $zero, lbl_80029AE0
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    bne     v0, $zero, lbl_80029AE0
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2044          # v1 = 00002044
lbl_80029AE0:
    jal     func_800288B4
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    beq     v0, $zero, lbl_80029B10
    nop
    jal     func_800288B4
    addiu   a0, $zero, 0x0011          # a0 = 00000011
    beq     v0, $zero, lbl_80029B08
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2043          # v1 = 00002043
lbl_80029B08:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2042          # v1 = 00002042
lbl_80029B10:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2041          # v1 = 00002041
lbl_80029B18:
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x5A2C(t8)            # 8011A5D4
    beql    t8, $zero, lbl_80029B64
    addiu   a0, $zero, 0x0018          # a0 = 00000018
    jal     func_800288B4
    addiu   a0, $zero, 0x0014          # a0 = 00000014
    beq     v0, $zero, lbl_80029B40
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2040          # v1 = 00002040
lbl_80029B40:
    jal     func_80028914
    addiu   a0, $zero, 0x0094          # a0 = 00000094
    beq     v0, $zero, lbl_80029B58
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2040          # v1 = 00002040
lbl_80029B58:
    b       lbl_80029BA8
    addiu   v1, $zero, 0x203F          # v1 = 0000203F
    addiu   a0, $zero, 0x0018          # a0 = 00000018
lbl_80029B64:
    jal     func_800288B4
    sh      v1, 0x001E($sp)
    bne     v0, $zero, lbl_80029BA8
    lhu     v1, 0x001E($sp)
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A20(t9)            # 8011A5E0
    beq     t9, $zero, lbl_80029B8C
    nop
    b       lbl_80029BA8
    addiu   v1, $zero, 0x204E          # v1 = 0000204E
lbl_80029B8C:
    jal     func_80028914
    addiu   a0, $zero, 0x009A          # a0 = 0000009A
    beql    v0, $zero, lbl_80029BA8
    addiu   v1, $zero, 0x2030          # v1 = 00002030
    b       lbl_80029BA8
    addiu   v1, $zero, 0x2031          # v1 = 00002031
    addiu   v1, $zero, 0x2030          # v1 = 00002030
lbl_80029BA8:
    bnel    v1, $zero, lbl_80029BB8
    or      v0, v1, $zero              # v0 = 00002030
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      v0, v1, $zero              # v0 = 00000001
lbl_80029BB8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80029BC8:
# Generic NPC Text Handler 5
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a1, 0x002C($sp)
    sll     a1, a1, 16
    sw      a0, 0x0028($sp)
    andi    a0, a0, 0xFFFF             # a0 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x001C($sp)
    sltiu   $at, a1, 0x0049
    beq     $at, $zero, lbl_8002A248
    sll     t6, a1,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x680C($at)            # 8010680C
    jr      t6
    nop
lbl_80029C04:
    addiu   $at, $zero, 0x1001         # $at = 00001001
    beq     a0, $at, lbl_80029C30
    addiu   $at, $zero, 0x1002         # $at = 00001002
    beq     a0, $at, lbl_80029C40
    addiu   $at, $zero, 0x1031         # $at = 00001031
    beq     a0, $at, lbl_80029C50
    addiu   $at, $zero, 0x1047         # $at = 00001047
    beq     a0, $at, lbl_80029C68
    nop
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029C30:
    jal     func_80028940
    or      a0, $zero, $zero           # a0 = 00000000
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029C40:
    jal     func_80028940
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029C50:
    jal     func_800288E0
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    jal     func_80028940
    addiu   a0, $zero, 0x0003          # a0 = 00000003
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029C68:
    jal     func_80028940
    addiu   a0, $zero, 0x0005          # a0 = 00000005
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029C78:
    addiu   $at, $zero, 0x102F         # $at = 0000102F
    beq     a0, $at, lbl_80029CB8
    addiu   $at, $zero, 0x1033         # $at = 00001033
    beq     a0, $at, lbl_80029CD0
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   $at, $zero, 0x1045         # $at = 00001045
    beq     a0, $at, lbl_80029D10
    addiu   $at, $zero, 0x1060         # $at = 00001060
    beq     a0, $at, lbl_80029D20
    addiu   $at, $zero, 0x1067         # $at = 00001067
    beq     a0, $at, lbl_80029D30
    addiu   $at, $zero, 0x1070         # $at = 00001070
    beq     a0, $at, lbl_80029D48
    nop
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029CB8:
    jal     func_800288E0
    addiu   a0, $zero, 0x0002          # a0 = 00000002
    jal     func_80028940
    addiu   a0, $zero, 0x000C          # a0 = 0000000C
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029CD0:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 000043A0
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800288E0
    addiu   a0, $zero, 0x0004          # a0 = 00000004
    jal     func_80028940
    addiu   a0, $zero, 0x000E          # a0 = 0000000E
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D10:
    jal     func_80028940
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D20:
    jal     func_80028940
    addiu   a0, $zero, 0x0015          # a0 = 00000015
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D30:
    jal     func_800288E0
    addiu   a0, $zero, 0x000A          # a0 = 0000000A
    jal     func_80028940
    addiu   a0, $zero, 0x0017          # a0 = 00000017
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D48:
    jal     func_80028940
    addiu   a0, $zero, 0x0019          # a0 = 00000019
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D58:
    addiu   $at, $zero, 0x1056         # $at = 00001056
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0041          # a0 = 00000041
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D74:
    addiu   $at, $zero, 0x1005         # $at = 00001005
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029D90:
    addiu   $at, $zero, 0x105D         # $at = 0000105D
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0047          # a0 = 00000047
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029DAC:
    addiu   $at, $zero, 0x1008         # $at = 00001008
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0022          # a0 = 00000022
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029DC8:
    addiu   $at, $zero, 0x100A         # $at = 0000100A
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0024          # a0 = 00000024
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029DE4:
    addiu   $at, $zero, 0x100C         # $at = 0000100C
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0026          # a0 = 00000026
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029E00:
    addiu   $at, $zero, 0x100E         # $at = 0000100E
    bne     a0, $at, lbl_80029E1C
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0028          # a0 = 00000028
    jal     func_80028940
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_80029E1C:
    addiu   $at, $zero, 0x1059         # $at = 00001059
    bnel    v0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0051          # a0 = 00000051
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029E38:
    addiu   $at, $zero, 0x104F         # $at = 0000104F
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0059          # a0 = 00000059
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029E54:
    addiu   $at, $zero, 0x1054         # $at = 00001054
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0061          # a0 = 00000061
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029E70:
    addiu   $at, $zero, 0x1062         # $at = 00001062
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0066          # a0 = 00000066
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029E8C:
    addiu   $at, $zero, 0x7002         # $at = 00007002
    bne     a0, $at, lbl_80029EA8
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x006A          # a0 = 0000006A
    jal     func_80028940
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_80029EA8:
    addiu   $at, $zero, 0x7003         # $at = 00007003
    bnel    v0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x006A          # a0 = 0000006A
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029EC4:
    addiu   $at, $zero, 0x7007         # $at = 00007007
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x006C          # a0 = 0000006C
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029EE0:
    addiu   $at, $zero, 0x7071         # $at = 00007071
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0071          # a0 = 00000071
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029EFC:
    addiu   $at, $zero, 0x2010         # $at = 00002010
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0076          # a0 = 00000076
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029F18:
    addiu   $at, $zero, 0x7016         # $at = 00007016
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00C2          # a0 = 000000C2
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029F34:
    addiu   $at, $zero, 0x7018         # $at = 00007018
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00C4          # a0 = 000000C4
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029F50:
    addiu   $at, $zero, 0x701D         # $at = 0000701D
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00CA          # a0 = 000000CA
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029F6C:
    addiu   $at, $zero, 0x701F         # $at = 0000701F
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00CC          # a0 = 000000CC
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029F88:
    addiu   $at, $zero, 0x7021         # $at = 00007021
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00CE          # a0 = 000000CE
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029FA4:
    addiu   $at, $zero, 0x7023         # $at = 00007023
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00D0          # a0 = 000000D0
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029FC0:
    addiu   $at, $zero, 0x7025         # $at = 00007025
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00D2          # a0 = 000000D2
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029FDC:
    addiu   $at, $zero, 0x7027         # $at = 00007027
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00D4          # a0 = 000000D4
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_80029FF8:
    addiu   $at, $zero, 0x403C         # $at = 0000403C
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00D6          # a0 = 000000D6
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A014:
    addiu   $at, $zero, 0x5028         # $at = 00005028
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00D8          # a0 = 000000D8
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A030:
    addiu   $at, $zero, 0x3008         # $at = 00003008
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00E0          # a0 = 000000E0
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A04C:
    addiu   $at, $zero, 0x300B         # $at = 0000300B
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00EB          # a0 = 000000EB
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A068:
    addiu   $at, $zero, 0x3014         # $at = 00003014
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00F0          # a0 = 000000F0
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A084:
    addiu   $at, $zero, 0x3016         # $at = 00003016
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x00F4          # a0 = 000000F4
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A0A0:
    addiu   $at, $zero, 0x3018         # $at = 00003018
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x0020          # a0 = 00000020
    jal     func_80028940
    addiu   a0, $zero, 0x00F8          # a0 = 000000F8
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A0C4:
    addiu   $at, $zero, 0x3020         # $at = 00003020
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x0022          # a0 = 00000022
    jal     func_80028940
    addiu   a0, $zero, 0x0113          # a0 = 00000113
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A0E8:
    addiu   $at, $zero, 0x4006         # $at = 00004006
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A104:
    addiu   $at, $zero, 0x4006         # $at = 00004006
    bne     a0, $at, lbl_8002A120
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A120:
    addiu   $at, $zero, 0x4008         # $at = 00004008
    bnel    v0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0124          # a0 = 00000124
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A13C:
    addiu   $at, $zero, 0x4006         # $at = 00004006
    bne     a0, $at, lbl_8002A158
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A158:
    addiu   $at, $zero, 0x400A         # $at = 0000400A
    bne     v0, $at, lbl_8002A170
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A170:
    addiu   $at, $zero, 0x402F         # $at = 0000402F
    bnel    v0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x012A          # a0 = 0000012A
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A18C:
    addiu   $at, $zero, 0x401B         # $at = 0000401B
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x0033          # a0 = 00000033
    jal     func_80028940
    addiu   a0, $zero, 0x0138          # a0 = 00000138
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A1B0:
    addiu   $at, $zero, 0x5000         # $at = 00005000
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x0166          # a0 = 00000166
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A1CC:
    addiu   $at, $zero, 0x5013         # $at = 00005013
    bnel    a0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x016A          # a0 = 0000016A
    b       lbl_8002A24C
    lw      $ra, 0x001C($sp)
lbl_8002A1E8:
    addiu   $at, $zero, 0x2041         # $at = 00002041
    bne     a0, $at, lbl_8002A204
    or      v0, a0, $zero              # v0 = 00000000
    addiu   a0, $zero, 0x0010          # a0 = 00000010
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A204:
    addiu   $at, $zero, 0x2044         # $at = 00002044
    bne     v0, $at, lbl_8002A21C
    addiu   a0, $zero, 0x0012          # a0 = 00000012
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A21C:
    addiu   $at, $zero, 0x2047         # $at = 00002047
    bne     v0, $at, lbl_8002A234
    addiu   a0, $zero, 0x0015          # a0 = 00000015
    jal     func_800288E0
    sw      v0, 0x0020($sp)
    lw      v0, 0x0020($sp)
lbl_8002A234:
    addiu   $at, $zero, 0x2048         # $at = 00002048
    bnel    v0, $at, lbl_8002A24C
    lw      $ra, 0x001C($sp)
    jal     func_800288E0
    addiu   a0, $zero, 0x0016          # a0 = 00000016
lbl_8002A248:
    lw      $ra, 0x001C($sp)
lbl_8002A24C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8002A258:
# Generic NPC Text Handler 6
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    sw      a2, 0x0038($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    slti    $at, a2, 0x300B
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    bne     $at, $zero, lbl_8002A2CC
    or      v0, a2, $zero              # v0 = 00000000
    addiu   $at, $zero, 0x301B         # $at = 0000301B
    beq     a2, $at, lbl_8002A888
    addiu   $at, $zero, 0x301E         # $at = 0000301E
    beq     a2, $at, lbl_8002A8FC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x400C         # $at = 0000400C
    beq     a2, $at, lbl_8002A910
    addiu   $at, $zero, 0x7007         # $at = 00007007
    beq     a2, $at, lbl_8002A95C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x703E         # $at = 0000703E
    beq     a2, $at, lbl_8002A970
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x703F         # $at = 0000703F
    beq     a2, $at, lbl_8002A984
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002A2CC:
    slti    $at, v0, 0x1042
    bne     $at, $zero, lbl_8002A334
    addiu   a0, $zero, 0x1035          # a0 = 00001035
    slti    $at, v0, 0x205B
    bne     $at, $zero, lbl_8002A2F4
    addiu   $at, $zero, 0x300A         # $at = 0000300A
    beql    v0, $at, lbl_8002A808
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    b       lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002A2F4:
    slti    $at, v0, 0x1063
    bne     $at, $zero, lbl_8002A320
    addiu   t6, v0, 0xDFD0             # t6 = FFFFDFD1
    sltiu   $at, t6, 0x002B
    beq     $at, $zero, lbl_8002A994
    sll     t6, t6,  2
    lui     $at, 0x8010                # $at = 80100000
    addu    $at, $at, t6
    lw      t6, 0x6930($at)            # 80106930
    jr      t6
    nop
lbl_8002A320:
    addiu   $at, $zero, 0x1062         # $at = 00001062
    beql    v0, $at, lbl_8002A654
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    b       lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002A334:
    beq     v0, a0, lbl_8002A360
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addiu   $at, $zero, 0x1038         # $at = 00001038
    beq     v0, $at, lbl_8002A408
    addiu   $at, $zero, 0x103E         # $at = 0000103E
    beq     v0, $at, lbl_8002A50C
    addiu   $at, $zero, 0x1041         # $at = 00001041
    beql    v0, $at, lbl_8002A55C
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    b       lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000001
lbl_8002A360:
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E6
    addiu   a0, $zero, 0x002A          # a0 = 0000002A
    bnel    v0, $zero, lbl_8002A3C4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80028914
    sw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_8002A3A4
    lw      v1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1036          # a2 = 00001036
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    b       lbl_8002A3C0
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A3A4:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1041          # a2 = 00001041
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A3C0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8002A3C4:
    bne     v0, $at, lbl_8002A400
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x002B          # a0 = 0000002B
    beq     v0, $zero, lbl_8002A3F4
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x1037          # a2 = 00001037
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A3F4:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x1041          # a2 = 00001041
lbl_8002A400:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A408:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    addiu   a0, $zero, 0x002E          # a0 = 0000002E
    bnel    v0, $zero, lbl_8002A470
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80028914
    sw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_8002A450
    lw      v1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1039          # a2 = 00001039
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    b       lbl_8002A46C
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A450:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1041          # a2 = 00001041
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A46C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8002A470:
    bne     v0, $at, lbl_8002A4C4
    addiu   a0, $zero, 0x002F          # a0 = 0000002F
    jal     func_80028914
    sw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_8002A4A8
    lw      v1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x103A          # a2 = 0000103A
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    b       lbl_8002A4C4
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A4A8:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1041          # a2 = 00001041
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A4C4:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8002A504
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0030          # a0 = 00000030
    beq     v0, $zero, lbl_8002A4F8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x103B          # a2 = 0000103B
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A4F8:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x1041          # a2 = 00001041
lbl_8002A504:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A50C:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A538
    addiu   a2, $zero, 0x103F          # a2 = 0000103F
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A538:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A550
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x1040          # a2 = 00001040
lbl_8002A550:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
lbl_8002A55C:
    addu    v1, s0, $at
    lhu     t7, 0x62FA(v1)             # 000062FA
    bnel    a0, t7, lbl_8002A5C4
    lhu     t8, 0x62FA(v1)             # 000062FA
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A598
    addiu   a2, $zero, 0x1036          # a2 = 00001036
    jal     func_80028884
    sw      v1, 0x0020($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x002A          # a0 = 0000002A
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A598:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A5C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x1037          # a2 = 00001037
    jal     func_80028884
    sw      v1, 0x0020($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x002B          # a0 = 0000002B
    lw      v1, 0x0020($sp)
lbl_8002A5C0:
    lhu     t8, 0x62FA(v1)             # 000062FA
lbl_8002A5C4:
    addiu   $at, $zero, 0x1038         # $at = 00001038
    bne     t8, $at, lbl_8002A648
    nop
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A5FC
    addiu   a2, $zero, 0x1039          # a2 = 00001039
    jal     func_80028884
    sw      v1, 0x0020($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x002E          # a0 = 0000002E
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A5FC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A628
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x103A          # a2 = 0000103A
    jal     func_80028884
    sw      v1, 0x0020($sp)
    jal     func_80028940
    addiu   a0, $zero, 0x002F          # a0 = 0000002F
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A628:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8002A648
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x103B          # a2 = 0000103B
    jal     func_80028940
    addiu   a0, $zero, 0x0030          # a0 = 00000030
lbl_8002A648:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
lbl_8002A654:
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A67C
    addiu   a2, $zero, 0x1063          # a2 = 00001063
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A67C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A694
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x1064          # a2 = 00001064
lbl_8002A694:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A69C:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    lui     t9, 0x8012                 # t9 = 80120000
    bnel    v0, $zero, lbl_8002A708
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lh      t9, -0x59FC(t9)            # 8011A604
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    slti    $at, t9, 0x000A
    bne     $at, $zero, lbl_8002A6F4
    addiu   a2, $zero, 0x2032          # a2 = 00002032
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x2034          # a2 = 00002034
    jal     func_80028884
    sw      v1, 0x0020($sp)
    jal     func_800721CC
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    lw      v1, 0x0020($sp)
    b       lbl_8002A704
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A6F4:
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A704:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8002A708:
    bne     v0, $at, lbl_8002A71C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x2032          # a2 = 00002032
lbl_8002A71C:
    jal     func_80028940
    addiu   a0, $zero, 0x009A          # a0 = 0000009A
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A72C:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A758
    addiu   a2, $zero, 0x201F          # a2 = 0000201F
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A758:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A770
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x205A          # a2 = 0000205A
lbl_8002A770:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A778:
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s0
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $zero, lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000000
    bne     v0, $at, lbl_8002A7A4
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x205A          # a2 = 0000205A
lbl_8002A7A4:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A7AC:
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s0
    lbu     t0, 0x04BD(t0)             # 000104BD
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bnel    t0, $zero, lbl_8002A998
    or      v0, v1, $zero              # v0 = 00000000
    jal     func_80028884
    addiu   a2, $zero, 0x2035          # a2 = 00002035
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A7D8:
    addiu   a0, $zero, 0x0012          # a0 = 00000012
    jal     func_800288B4
    sw      v1, 0x0028($sp)
    bne     v0, $zero, lbl_8002A994
    lw      v1, 0x0028($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x2044          # a2 = 00002044
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
lbl_8002A808:
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    addiu   a0, $zero, 0x0022          # a0 = 00000022
    bnel    v0, $zero, lbl_8002A86C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_800288B4
    sw      v1, 0x0020($sp)
    beq     v0, $zero, lbl_8002A84C
    lw      v1, 0x0020($sp)
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x300B          # a2 = 0000300B
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    b       lbl_8002A868
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A84C:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    addiu   a2, $zero, 0x300C          # a2 = 0000300C
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A868:
    addiu   $at, $zero, 0x0001         # $at = 00000001
lbl_8002A86C:
    bne     v0, $at, lbl_8002A880
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x300D          # a2 = 0000300D
lbl_8002A880:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A888:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A8B4
    addiu   a2, $zero, 0x301D          # a2 = 0000301D
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A8B4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A8F4
    nop
    jal     func_80028914
    addiu   a0, $zero, 0x0113          # a0 = 00000113
    beq     v0, $zero, lbl_8002A8E8
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x301F          # a2 = 0000301F
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A8E8:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x301E          # a2 = 0000301E
lbl_8002A8F4:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A8FC:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x3020          # a2 = 00003020
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A910:
    ori     $at, $zero, 0xA0D8         # $at = 0000A0D8
    addu    v1, s0, $at
    lbu     v0, 0x63E5(v1)             # 000063E5
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    bne     v0, $zero, lbl_8002A93C
    addiu   a2, $zero, 0x400D          # a2 = 0000400D
    jal     func_80028884
    sw      v1, 0x0020($sp)
    lw      v1, 0x0020($sp)
    lbu     v0, 0x63E5(v1)             # 000063E5
lbl_8002A93C:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8002A954
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x400E          # a2 = 0000400E
lbl_8002A954:
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A95C:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x703E          # a2 = 0000703E
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A970:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x703F          # a2 = 0000703F
    b       lbl_8002A994
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A984:
    lw      a1, 0x0034($sp)
    jal     func_80028884
    addiu   a2, $zero, 0x7042          # a2 = 00007042
    or      v1, $zero, $zero           # v1 = 00000000
lbl_8002A994:
    or      v0, v1, $zero              # v0 = 00000000
lbl_8002A998:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002A9AC:
# Generic NPC Text Handler 7
# (Wrapper for 80028974)
# A0 = Global Context
# A1 = ? (always 0x000F)
# V0 = ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    jal     func_80028974
    nop
    andi    v0, v0, 0xFFFF             # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002A9DC:
# Generic NPC Text Handler 8
# (Wrapper for 80029BC8)
# A0 = ?
# A1 = s16 ?
# A2 = ?
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    sw      a2, 0x0020($sp)
    andi    a2, a2, 0xFFFF             # a2 = 00000000
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80029BC8
    andi    a0, a2, 0xFFFF             # a0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002AA18:
# Wrapper for 8002A258
# A0 = ?
# A1 = ?
# A2 = ? (ignored?, set to LHU 0x010E(A1) before calling inner function)
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    jal     func_8002A258
    lhu     a2, 0x010E(a1)             # 0000010E
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002AA3C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    sw      a2, 0x0038($sp)
    lw      a0, 0x0030($sp)
    sw      $zero, 0x0028($sp)
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8002AA8C
    lw      a0, 0x0030($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8002AAA8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_8002AAA8
    nop
    b       lbl_8002AB10
    lw      v0, 0x0028($sp)
lbl_8002AA8C:
    lw      t6, 0x0034($sp)
    lh      a1, 0x003A($sp)
    jal     func_8002A9DC
    lhu     a2, 0x010E(t6)             # 0000010E
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    b       lbl_8002AB0C
    sw      t7, 0x0028($sp)
lbl_8002AAA8:
    jal     func_800D6110
    lw      a0, 0x0030($sp)
    beq     v0, $zero, lbl_8002AB0C
    lw      a0, 0x0030($sp)
    lw      a1, 0x0034($sp)
    jal     func_8002AA18
    lh      a2, 0x003A($sp)
    beq     v0, $zero, lbl_8002AB0C
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t8, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x480A          # a0 = 0000480A
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    lw      t0, 0x0020($sp)
    addiu   t9, $zero, 0x0036          # t9 = 00000036
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   $at, t0, 0x7FFF            # $at = 00007FFF
    sb      t9, 0x6305($at)            # 0000E304
    sw      t1, 0x0028($sp)
lbl_8002AB0C:
    lw      v0, 0x0028($sp)
lbl_8002AB10:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002AB20:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x0030($sp)
    beq     v0, $zero, lbl_8002AB60
    lw      v1, 0x003C($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0000(v1)             # 00000000
    b       lbl_8002ACA4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002AB60:
    lw      t7, 0x0000(v1)             # 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x0030($sp)
    bne     t7, $at, lbl_8002AB98
    or      a1, s0, $zero              # a1 = 00000000
    lw      a0, 0x0030($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_8002AA3C
    lh      a2, 0x003A($sp)
    beq     v0, $zero, lbl_8002AB90
    lw      v1, 0x003C($sp)
    sw      $zero, 0x0000(v1)          # 00000000
lbl_8002AB90:
    b       lbl_8002ACA4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002AB98:
    addiu   a2, $sp, 0x002C            # a2 = FFFFFFFC
    jal     func_80022B14
    addiu   a3, $sp, 0x002A            # a3 = FFFFFFFA
    lh      v0, 0x002C($sp)
    bltz    v0, lbl_8002ABC8
    slti    $at, v0, 0x0141
    beq     $at, $zero, lbl_8002ABC8
    lh      v0, 0x002A($sp)
    bltz    v0, lbl_8002ABC8
    slti    $at, v0, 0x00F1
    bnel    $at, $zero, lbl_8002ABD4
    lh      t8, 0x008A(s0)             # 0000008A
lbl_8002ABC8:
    b       lbl_8002ACA4
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x008A(s0)             # 0000008A
lbl_8002ABD4:
    lh      t9, 0x00B6(s0)             # 000000B6
    subu    v0, t8, t9
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8002ABF8
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_8002AC00
    sra     v1, v1, 16
lbl_8002ABF8:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8002AC00:
    slti    $at, v1, 0x4300
    bnel    $at, $zero, lbl_8002AC18
    lui     $at, 0x46C8                # $at = 46C80000
    b       lbl_8002ACA4
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x46C8                # $at = 46C80000
lbl_8002AC18:
    mtc1    $at, $f4                   # $f4 = 25600.00
    lwc1    $f0, 0x008C(s0)            # 0000008C
    lui     $at, 0x45C8                # $at = 45C80000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_8002AC4C
    mtc1    $at, $f6                   # $f6 = 6400.00
    lbu     t0, 0x010C(s0)             # 0000010C
    bnel    t0, $zero, lbl_8002AC4C
    mtc1    $at, $f6                   # $f6 = 6400.00
    b       lbl_8002ACA4
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f6                   # $f6 = 6400.00
lbl_8002AC4C:
    lw      a1, 0x0030($sp)
    lui     a2, 0x42A0                 # a2 = 42A00000
    c.le.s  $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    bc1f    lbl_8002AC84
    nop
    jal     func_80022A68
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8002ACA0
    lw      a0, 0x0030($sp)
    jal     func_8002A9AC
    lh      a1, 0x003A($sp)
    b       lbl_8002ACA0
    sh      v0, 0x010E(s0)             # 0000010E
lbl_8002AC84:
    jal     func_80022A90
    lw      a1, 0x0030($sp)
    beq     v0, $zero, lbl_8002ACA0
    lw      a0, 0x0030($sp)
    jal     func_8002A9AC
    lh      a1, 0x003A($sp)
    sh      v0, 0x010E(s0)             # 0000010E
lbl_8002ACA0:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002ACA4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8002ACB8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0010($sp)
    lw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      a0, 0x0024($sp)
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    sw      t9, 0x0010($sp)
    lw      a0, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8002AD54:
# Set actor head look-at direction?
# A0 = Actor Instance
# A1 = vector3_f32* look at point?
# A2 = ptr to ? (some actor data)
# A3 = ptr to ? (some actor data)
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a2, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0038($sp)
    sw      a1, 0x003C($sp)
    sw      a3, 0x0044($sp)
    lw      a0, 0x0038($sp)
    lw      a1, 0x003C($sp)
    addiu   a0, a0, 0x0038             # a0 = 00000038
    jal     func_80063F34
    sw      a0, 0x0028($sp)
    lw      a0, 0x0028($sp)
    sh      v0, 0x0036($sp)
    jal     func_80063F00
    lw      a1, 0x003C($sp)
    lw      t6, 0x0038($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    lh      t7, 0x0032(t6)             # 00000032
    sw      t9, 0x0010($sp)
    lh      a1, 0x0036($sp)
    subu    t8, v0, t7
    sh      t8, 0x0034($sp)
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    lh      a0, 0x0000(s0)             # 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    slti    $at, a0, 0xE890
    beq     $at, $zero, lbl_8002ADE4
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t0, $zero, 0xE890          # t0 = FFFFE890
    b       lbl_8002ADFC
    sh      t0, 0x0000(s0)             # 00000000
lbl_8002ADE4:
    slti    $at, a0, 0x1771
    bne     $at, $zero, lbl_8002ADF8
    or      v1, a0, $zero              # v1 = 00000000
    b       lbl_8002ADF8
    addiu   v1, $zero, 0x1770          # v1 = 00001770
lbl_8002ADF8:
    sh      v1, 0x0000(s0)             # 00000000
lbl_8002ADFC:
    addiu   a0, s0, 0x0002             # a0 = 00000002
    lh      a1, 0x0034($sp)
    jal     func_80064508
    sw      t1, 0x0010($sp)
    lh      a0, 0x0002(s0)             # 00000002
    addiu   t2, $zero, 0xE0C0          # t2 = FFFFE0C0
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    slti    $at, a0, 0xE0C0
    beq     $at, $zero, lbl_8002AE2C
    addiu   a3, $zero, 0x07D0          # a3 = 000007D0
    b       lbl_8002AE44
    sh      t2, 0x0002(s0)             # 00000002
lbl_8002AE2C:
    slti    $at, a0, 0x1F41
    bne     $at, $zero, lbl_8002AE40
    or      v1, a0, $zero              # v1 = 00000000
    b       lbl_8002AE40
    addiu   v1, $zero, 0x1F40          # v1 = 00001F40
lbl_8002AE40:
    sh      v1, 0x0002(s0)             # 00000002
lbl_8002AE44:
    beq     v0, $zero, lbl_8002AE74
    lh      t3, 0x0034($sp)
    lh      a0, 0x0002(s0)             # 00000002
    bltz    a0, lbl_8002AE60
    subu    v1, $zero, a0
    b       lbl_8002AE60
    or      v1, a0, $zero              # v1 = 00000000
lbl_8002AE60:
    slti    $at, v1, 0x1F40
    beql    $at, $zero, lbl_8002AE78
    lh      t4, 0x0002(s0)             # 00000002
    b       lbl_8002AED4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002AE74:
    lh      t4, 0x0002(s0)             # 00000002
lbl_8002AE78:
    lw      a0, 0x0044($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    subu    a1, t3, t4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sw      t5, 0x0010($sp)
    jal     func_80064508
    addiu   a0, a0, 0x0002             # a0 = 00000002
    lw      a1, 0x0044($sp)
    addiu   t6, $zero, 0xD120          # t6 = FFFFD120
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    lh      a0, 0x0002(a1)             # 00000002
    slti    $at, a0, 0xD120
    beql    $at, $zero, lbl_8002AEC0
    slti    $at, a0, 0x2EE1
    b       lbl_8002AED4
    sh      t6, 0x0002(a1)             # 00000002
    slti    $at, a0, 0x2EE1
lbl_8002AEC0:
    bne     $at, $zero, lbl_8002AED0
    or      v1, a0, $zero              # v1 = 00000000
    b       lbl_8002AED0
    addiu   v1, $zero, 0x2EE0          # v1 = 00002EE0
lbl_8002AED0:
    sh      v1, 0x0002(a1)             # 00000002
lbl_8002AED4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8002AEE8:
# ? (Unused? Identical to 8002B024?)
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t7, 0x0024(s0)             # 00000024
    lw      t1, 0x1C44(a0)             # 00001C44
    lw      t6, 0x0028(s0)             # 00000028
    sw      t7, 0x0038(s0)             # 00000038
    lw      t7, 0x002C(s0)             # 0000002C
    sw      t6, 0x003C(s0)             # 0000003C
    lwc1    $f4, 0x003C(s0)            # 0000003C
    sw      t7, 0x0040(s0)             # 00000040
    lwc1    $f6, 0x0050($sp)
    lui     t8, 0x800F                 # t8 = 800F0000
    lui     t9, 0x8012                 # t9 = 80120000
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x003C(s0)            # 0000003C
    lbu     t0, 0x1D6C(a0)             # 00001D6C
    bne     t0, $zero, lbl_8002AF44
    nop
    lw      t8, -0x0E60(t8)            # 800EF1A0
    beql    t8, $zero, lbl_8002AF58
    lh      t2, 0x008A(s0)             # 0000008A
lbl_8002AF44:
    lw      t9, -0x5A30(t9)            # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    beq     t9, $at, lbl_8002AFA4
    nop
    lh      t2, 0x008A(s0)             # 0000008A
lbl_8002AF58:
    lh      t3, 0x00B6(s0)             # 000000B6
    or      a1, a3, $zero              # a1 = 00000000
    subu    v0, t2, t3
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8002AF80
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_8002AF88
    sra     v1, v1, 16
lbl_8002AF80:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8002AF88:
    slti    $at, v1, 0x4300
    bne     $at, $zero, lbl_8002AFA4
    nop
    jal     func_8002ACB8
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_8002B010
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002AFA4:
    bne     t0, $zero, lbl_8002AFB4
    lui     t4, 0x800F                 # t4 = 800F0000
    lw      t4, -0x0E60(t4)            # 800EF1A0
    beq     t4, $zero, lbl_8002AFE8
lbl_8002AFB4:
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x5A30(t5)            # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    bnel    t5, $at, lbl_8002AFEC
    lw      t9, 0x0038(t1)             # 00000038
    lw      t7, 0x00E0(a0)             # 000000E0
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    sw      t7, 0x0000(a1)             # FFFFFFEC
    lw      t6, 0x00E4(a0)             # 000000E4
    sw      t6, 0x0004(a1)             # FFFFFFF0
    lw      t7, 0x00E8(a0)             # 000000E8
    b       lbl_8002B004
    sw      t7, 0x0008(a1)             # FFFFFFF4
lbl_8002AFE8:
    lw      t9, 0x0038(t1)             # 00000038
lbl_8002AFEC:
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    sw      t9, 0x0000(a1)             # FFFFFFEC
    lw      t8, 0x003C(t1)             # 0000003C
    sw      t8, 0x0004(a1)             # FFFFFFF0
    lw      t9, 0x0040(t1)             # 00000040
    sw      t9, 0x0008(a1)             # FFFFFFF4
lbl_8002B004:
    jal     func_8002AD54
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002B010:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8002B024:
# Wrapper for 8002AD54 and 8002ACB8
# A0 = Global Context
# A1 = Actor instance
# A2 = ptr to ? (some actor data)
# A3 = ptr to ? (some actor data)
# SP+0x10 float x
# SP+0x14 float y
# SP+0x18 float z
# V0 = 1 if successful?, else 0
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    addiu   t7, $sp, 0x0048            # t7 = 00000010
    lw      t9, 0x0000(t7)             # 00000010
    lw      t6, 0x003C($sp)
    lw      t1, 0x1C44(a0)             # 00001C44
    lui     t2, 0x800F                 # t2 = 800F0000
    sw      t9, 0x0038(t6)             # 00000038
    lw      t8, 0x0004(t7)             # 00000014
    lui     t3, 0x8012                 # t3 = 80120000
    sw      t8, 0x003C(t6)             # 0000003C
    lw      t9, 0x0008(t7)             # 00000018
    sw      t9, 0x0040(t6)             # 00000040
    lbu     t0, 0x1D6C(a0)             # 00001D6C
    bne     t0, $zero, lbl_8002B074
    nop
    lw      t2, -0x0E60(t2)            # 800EF1A0
    beql    t2, $zero, lbl_8002B088
    lw      t4, 0x003C($sp)
lbl_8002B074:
    lw      t3, -0x5A30(t3)            # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    beq     t3, $at, lbl_8002B0D8
    nop
    lw      t4, 0x003C($sp)
lbl_8002B088:
    or      a1, a3, $zero              # a1 = 00000000
    lh      t5, 0x008A(t4)             # 0000008A
    lh      t6, 0x00B6(t4)             # 000000B6
    subu    v0, t5, t6
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8002B0B4
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_8002B0BC
    sra     v1, v1, 16
lbl_8002B0B4:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8002B0BC:
    slti    $at, v1, 0x4300
    bne     $at, $zero, lbl_8002B0D8
    nop
    jal     func_8002ACB8
    or      a0, a2, $zero              # a0 = 00000000
    b       lbl_8002B144
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8002B0D8:
    bne     t0, $zero, lbl_8002B0E8
    lui     t7, 0x800F                 # t7 = 800F0000
    lw      t7, -0x0E60(t7)            # 800EF1A0
    beq     t7, $zero, lbl_8002B11C
lbl_8002B0E8:
    lui     t8, 0x8012                 # t8 = 80120000
    lw      t8, -0x5A30(t8)            # 8011A5D0
    addiu   $at, $zero, 0x00EE         # $at = 000000EE
    bnel    t8, $at, lbl_8002B120
    lw      t4, 0x0038(t1)             # 00000038
    lw      t2, 0x00E0(a0)             # 000000E0
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFEC
    sw      t2, 0x0000(a1)             # FFFFFFEC
    lw      t9, 0x00E4(a0)             # 000000E4
    sw      t9, 0x0004(a1)             # FFFFFFF0
    lw      t2, 0x00E8(a0)             # 000000E8
    b       lbl_8002B138
    sw      t2, 0x0008(a1)             # FFFFFFF4
lbl_8002B11C:
    lw      t4, 0x0038(t1)             # 00000038
lbl_8002B120:
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFEC
    sw      t4, 0x0000(a1)             # FFFFFFEC
    lw      t3, 0x003C(t1)             # 0000003C
    sw      t3, 0x0004(a1)             # FFFFFFF0
    lw      t4, 0x0040(t1)             # 00000040
    sw      t4, 0x0008(a1)             # FFFFFFF4
lbl_8002B138:
    jal     func_8002AD54
    lw      a0, 0x003C($sp)
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_8002B144:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
    nop
    nop
    nop


func_8002B160:
    jr      $ra
    nop


func_8002B168:
# Actor overlay related. - Specifically actor_dlftbls [?]
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x0044($sp)
    sw      s8, 0x0040($sp)
    sw      s7, 0x003C($sp)
    sw      s6, 0x0038($sp)
    sw      s5, 0x0034($sp)
    sw      s4, 0x0030($sp)
    sw      s3, 0x002C($sp)
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0048($sp)
    sw      a1, 0x004C($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1C9C(v0)             # 80121C9C
    or      s6, $zero, $zero           # s6 = 00000000
    or      s5, $zero, $zero           # s5 = 00000000
    beq     v0, $zero, lbl_8002B1BC
    nop
    b       lbl_8002B1BC
    lw      s6, 0x011C(v0)             # 8012011C
lbl_8002B1BC:
    beq     v0, $zero, lbl_8002B1D0
    nop
    lw      t6, 0x0100(v0)             # 80120100
    b       lbl_8002B1D0
    lw      s5, 0x0104(v0)             # 80120104
lbl_8002B1D0:
    jal     func_800ADB98
    nop
    lui     s0, 0x800F                 # s0 = 800F0000
    addiu   s0, s0, 0xC010             # s0 = 800EC010
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x69E0             # a0 = 801069E0
    jal     func_800ADBF8
    lw      a1, 0x0000(s0)             # 800EC010
    lui     a0, 0x8010                 # a0 = 80100000
    jal     func_800ADBF8
    addiu   a0, a0, 0x69F4             # a0 = 801069F4
    lw      v1, 0x0000(s0)             # 800EC010
    lui     s3, 0x800F                 # s3 = 800F0000
    addiu   s3, s3, 0x8530             # s3 = 800E8530
    beq     v1, $zero, lbl_8002B2BC
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s8, 0x8010                 # s8 = 80100000
    lui     s7, 0x8010                 # s7 = 80100000
    addiu   s7, s7, 0x6A14             # s7 = 80106A14
    addiu   s8, s8, 0x6A28             # s8 = 80106A28
lbl_8002B220:
    lw      v0, 0x0008(s3)             # 800E8538
    lw      s0, 0x0010(s3)             # 800E8540
    lw      t8, 0x000C(s3)             # 800E853C
    or      a0, s7, $zero              # a0 = 80106A14
    subu    s2, v0, s0
    beq     s0, $zero, lbl_8002B2AC
    subu    t0, t8, v0
    addu    s1, s0, t0
    or      a3, s1, $zero              # a3 = 00000000
    or      a1, s4, $zero              # a1 = 00000000
    or      a2, s0, $zero              # a2 = 800EC010
    jal     func_800ADBF8
    sw      s2, 0x0010($sp)
    sltu    $at, s6, s0
    bne     $at, $zero, lbl_8002B278
    sltu    $at, s6, s1
    beq     $at, $zero, lbl_8002B278
    or      a0, s8, $zero              # a0 = 80106A28
    jal     func_800ADBF8
    addu    a1, s6, s2
    b       lbl_8002B298
    nop
lbl_8002B278:
    sltu    $at, s5, s0
    bne     $at, $zero, lbl_8002B298
    sltu    $at, s5, s1
    beq     $at, $zero, lbl_8002B298
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x6A34             # a0 = 80106A34
    jal     func_800ADBF8
    addu    a1, s5, s2
lbl_8002B298:
    lui     a0, 0x8010                 # a0 = 80100000
    jal     func_800ADBF8
    addiu   a0, a0, 0x6A40             # a0 = 80106A40
    lui     v1, 0x800F                 # v1 = 800F0000
    lw      v1, -0x3FF0(v1)            # 800EC010
lbl_8002B2AC:
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sltu    $at, s4, v1
    bne     $at, $zero, lbl_8002B220
    addiu   s3, s3, 0x0020             # s3 = 800E8550
lbl_8002B2BC:
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
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8002B2EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   t6, $zero, 0x01D7          # t6 = 000001D7
    lui     $at, 0x800F                # $at = 800F0000
    lui     a0, 0x8012                 # a0 = 80120000
    lui     a1, 0x8003                 # a1 = 80030000
    sw      t6, -0x3FF0($at)           # 800EC010
    addiu   a1, a1, 0xB168             # a1 = 8002B168
    addiu   a0, a0, 0x8C60             # a0 = 80118C60
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AEF8C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8002B32C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8012                 # a0 = 80120000
    jal     func_800AF014
    addiu   a0, a0, 0x8C60             # a0 = 80118C60
    lui     $at, 0x800F                # $at = 800F0000
    sw      $zero, -0x3FF0($at)        # 800EC010
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop
    nop
    nop
