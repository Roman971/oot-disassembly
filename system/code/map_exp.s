# "Exploration Map (Minimap)" part of the code file
#
# Handles the minimap.
#
# General Documentation about maps:
# https://wiki.cloudmodding.com/oot/Maps
#
# Starts at VRAM: 8006BC70 / VROM: AE1BD0
#

.section .text
func_8006BC70:
    lw      v0, 0x1C44(a0)             # 00001C44
    lui     $at, 0x800F                # $at = 800F0000
    addiu   t1, $zero, 0x7FFF          # t1 = 00007FFF
    lwc1    $f4, 0x0024(v0)            # 00000024
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x5530($at)            # 800F5530
    lwc1    $f8, 0x002C(v0)            # 0000002C
    lui     $at, 0x800F                # $at = 800F0000
    trunc.w.s $f10, $f8
    mfc1    t9, $f10
    nop
    sh      t9, 0x5534($at)            # 800F5534
    lh      t0, 0x00B6(v0)             # 000000B6
    subu    t2, t1, t0
    bgez    t2, lbl_8006BCC0
    sra     t3, t2, 10
    addiu   $at, t2, 0x03FF            # $at = 000003FF
    sra     t3, $at, 10
lbl_8006BCC0:
    lui     $at, 0x800F                # $at = 800F0000
    sh      t3, 0x5538($at)            # 800F5538
    jr      $ra
    nop


func_8006BCD0:
    sw      a1, 0x0004($sp)
    sll     a1, a1, 16
    sra     a1, a1, 16
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x40F0(t6)            # 8011BF10
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x462E(v0)            # 8011B9D2
    lw      t7, 0x0008(t6)             # 80120008
    lui     t2, 0x0001                 # t2 = 00010000
    addu    t2, t2, a0
    lh      t2, 0x074C(t2)             # 0001074C
    sll     t8, v0,  6
    sll     t0, a1,  1
    addu    t9, t7, t8
    addu    t1, t9, t0
    bne     a1, t2, lbl_8006BD20
    lh      v1, 0x0000(t1)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      v1, 0x074E($at)            # 0001074E
lbl_8006BD20:
    sll     t3, v1,  1
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, t3
    addu    v0, v0, $at
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   t5, $zero, 0x00BF          # t5 = 000000BF
    sb      t4, 0x0140(v0)             # 80120140
    sb      t5, 0x0141(v0)             # 80120141
    jr      $ra
    nop


func_8006BD4C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s8, 0x0038($sp)
    sw      s7, 0x0034($sp)
    lui     s7, 0x8012                 # s7 = 80120000
    sll     s8, a1, 16
    sw      s5, 0x002C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sra     s8, s8, 16
    addiu   s7, s7, 0xA5D0             # s7 = 8011A5D0
    sw      $ra, 0x003C($sp)
    sw      s6, 0x0030($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x0044($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    lhu     s4, 0x1402(s7)             # 8011B9D2
    addu    v1, s5, $at
    or      s0, $zero, $zero           # s0 = 00000000
lbl_8006BDA4:
    addu    v0, v1, s0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0010
    sb      $zero, 0x0140(v0)          # 00000140
    bne     $at, $zero, lbl_8006BDA4
    sb      $zero, 0x0150(v0)          # 00000150
    lui     s6, 0x8010                 # s6 = 80100000
    addiu   s6, s6, 0x8BF0             # s6 = 800F8BF0
    addu    t7, s7, s4
    lbu     t8, 0x00A8(t7)             # 000000A8
    lw      t6, 0x0008(s6)             # 800F8BF8
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    and     t9, t6, t8
    beql    t9, $zero, lbl_8006BDF4
    lhu     t1, 0x00A4(s5)             # 000000A4
    sb      $zero, 0x015E(v1)          # 0000015E
    sb      t0, 0x015F(v1)             # 0000015F
    lhu     t1, 0x00A4(s5)             # 000000A4
lbl_8006BDF4:
    sltiu   $at, t1, 0x0019
    beq     $at, $zero, lbl_8006BED4
    sll     t1, t1,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t1
    lw      t1, -0x7C20($at)           # 801083E0
    jr      t1
    nop
lbl_8006BE14:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x40F0(v0)            # 8011BF10
    sll     s3, s4,  1
    or      s0, $zero, $zero           # s0 = 00000000
    lw      t2, 0x000C(v0)             # 8012000C
    addiu   s2, $zero, 0x001C          # s2 = 0000001C
    addiu   s1, $zero, 0x00FF          # s1 = 000000FF
    addu    t3, t2, s3
    lh      v1, 0x0000(t3)             # 00000000
    blezl   v1, lbl_8006BED8
    lw      $ra, 0x003C($sp)
    lw      t4, 0x0010(v0)             # 80120010
lbl_8006BE44:
    sll     t5, s4,  3
    subu    t5, t5, s4
    sll     t6, s8,  3
    subu    t6, t6, s8
    sll     t5, t5,  5
    sll     t6, t6,  2
    addu    t7, t4, t5
    addu    t8, t7, t6
    sll     t9, s0,  1
    addu    t0, t8, t9
    lh      a1, 0x0000(t0)             # 00000001
    beql    a1, s1, lbl_8006BEC0
    addiu   s0, s0, 0x0001             # s0 = 00000001
    multu   s4, s2
    sll     t1, a1,  2
    addu    t2, s6, t1
    lw      t3, 0x0000(t2)             # 00000000
    mflo    t4
    addu    t5, s7, t4
    lw      t7, 0x00E8(t5)             # 000000E8
    and     t6, t3, t7
    beql    t6, $zero, lbl_8006BEC0
    addiu   s0, s0, 0x0001             # s0 = 00000002
    jal     func_8006BCD0
    or      a0, s5, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x40F0(v0)            # 8011BF10
    lw      t8, 0x000C(v0)             # 8012000C
    addu    t9, t8, s3
    lh      v1, 0x0000(t9)             # 00000000
    addiu   s0, s0, 0x0001             # s0 = 00000003
lbl_8006BEC0:
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bnel    $at, $zero, lbl_8006BE44
    lw      t4, 0x0010(v0)             # 80120010
lbl_8006BED4:
    lw      $ra, 0x003C($sp)
lbl_8006BED8:
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
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8006BF04:
# Load minimap address
# ROM st: map_grand_static & map_i_static
# A0 = Global Context
# A1 = Minimap Index
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0030($sp)
    lhu     t0, 0x1402(a2)             # 8011B9D2
    lh      v1, 0x00A4(t6)             # 000000A4
    slti    $at, v1, 0x0019
    bne     $at, $zero, lbl_8006BF58
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t7, v0, 0xFFAF             # t7 = FFFFFFAF
    sltiu   $at, t7, 0x0014
    beq     $at, $zero, lbl_8006C1E0
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x7BBC($at)           # 80108444
    jr      t7
    nop
lbl_8006BF58:
    sltiu   $at, v0, 0x0019
    beq     $at, $zero, lbl_8006C1E0
    sll     t8, v0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t8
    lw      t8, -0x7B6C($at)           # 80108494
    jr      t8
    nop
lbl_8006BF78:
    sll     a3, t0, 16
    addiu   $at, $zero, 0x0053         # $at = 00000053
    bne     v1, $at, lbl_8006BFA8
    sra     a3, a3, 16
    lui     t9, 0x8010                 # t9 = 80100000
    lw      t9, -0x73E8(t9)            # 800F8C18
    lw      t1, 0x00A4(a2)             # 8011A674
    and     t2, t9, t1
    beq     t2, $zero, lbl_8006C064
    nop
    b       lbl_8006C064
    addiu   a3, $zero, 0x0014          # a3 = 00000014
lbl_8006BFA8:
    addiu   $at, $zero, 0x0057         # $at = 00000057
    bnel    v1, $at, lbl_8006BFF8
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    lw      t3, 0x0004(a2)             # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t3, $zero, lbl_8006BFD0
    lui     t4, 0x8010                 # t4 = 80100000
    b       lbl_8006BFD0
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_8006BFD0:
    bne     v0, $at, lbl_8006C064
    nop
    lw      t4, -0x7408(t4)            # 800F8BF8
    lw      t5, 0x00A4(a2)             # 8011A674
    and     t6, t4, t5
    bne     t6, $zero, lbl_8006C064
    nop
    b       lbl_8006C064
    addiu   a3, $zero, 0x0015          # a3 = 00000015
    addiu   $at, $zero, 0x005A         # $at = 0000005A
lbl_8006BFF8:
    bnel    v1, $at, lbl_8006C044
    addiu   $at, $zero, 0x005D         # $at = 0000005D
    lw      t7, 0x0004(a2)             # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v0, $zero, 0x0011          # v0 = 00000011
    beq     t7, $zero, lbl_8006C01C
    nop
    b       lbl_8006C01C
    addiu   v0, $zero, 0x0005          # v0 = 00000005
lbl_8006C01C:
    bne     v0, $at, lbl_8006C064
    nop
    lhu     t8, 0x0EE6(a2)             # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    andi    t9, t8, 0x000F             # t9 = 00000000
    beq     t9, $at, lbl_8006C064
    nop
    b       lbl_8006C064
    addiu   a3, $zero, 0x0016          # a3 = 00000016
    addiu   $at, $zero, 0x005D         # $at = 0000005D
lbl_8006C044:
    bne     v1, $at, lbl_8006C064
    nop
    lhu     t1, 0x0EE6(a2)             # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    andi    t2, t1, 0x000F             # t2 = 00000000
    bne     t2, $at, lbl_8006C064
    nop
    addiu   a3, $zero, 0x0017          # a3 = 00000017
lbl_8006C064:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x40F0(v0)            # 8011BF10
    lui     $at, 0x800F                # $at = 800F0000
    sh      a3, 0x553C($at)            # 800F553C
    lw      t3, 0x0028(v0)             # 80120028
    lw      v1, 0x0030($sp)
    lw      t8, 0x0024(v0)             # 80120024
    lui     $at, 0x0001                # $at = 00010000
    sll     t4, a3,  1
    ori     $at, $at, 0x04F0           # $at = 000104F0
    sll     t9, t0,  1
    addu    t5, t3, t4
    lhu     t6, 0x0000(t5)             # 00000000
    lui     t7, 0x0096                 # t7 = 00960000
    addu    v1, v1, $at
    addu    t1, t8, t9
    lhu     a2, 0x0000(t1)             # 00000000
    lw      a0, 0x013C(v1)             # 0000013C
    addiu   t7, t7, 0x7000             # t7 = 00967000
    sw      t0, 0x002C($sp)
    sw      v1, 0x001C($sp)
    jal     func_80000DF0
    addu    a1, t6, t7
    lw      v1, 0x001C($sp)
    lw      t0, 0x002C($sp)
    b       lbl_8006C1E0
    sh      t0, 0x0258(v1)             # 00000258
lbl_8006C0D0:
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_8006C100
    nop
    lw      v1, 0x0028(v0)             # 80120028
    lw      a0, 0x0030($sp)
    beq     v1, $zero, lbl_8006C100
    nop
    jalr    $ra, v1
    sw      t0, 0x002C($sp)
    bne     v0, $zero, lbl_8006C158
    lw      t0, 0x002C($sp)
lbl_8006C100:
    lui     t3, 0x8012                 # t3 = 80120000
    lw      t3, -0x40F0(t3)            # 8011BF10
    sll     t5, t0,  1
    lh      t8, 0x0036($sp)
    lw      t4, 0x0020(t3)             # 80120020
    lw      t2, 0x0030($sp)
    lui     a0, 0x0001                 # a0 = 00010000
    addu    t6, t4, t5
    lhu     t7, 0x0000(t6)             # 00000000
    addu    a0, a0, t2
    lui     t2, 0x0097                 # t2 = 00970000
    addu    t9, t7, t8
    sll     t1, t9,  8
    subu    t1, t1, t9
    sll     t1, t1,  4
    addiu   t2, t2, 0x6000             # t2 = 00976000
    lw      a0, 0x062C(a0)             # 0001062C
    sw      t0, 0x002C($sp)
    addu    a1, t1, t2
    jal     func_80000DF0
    addiu   a2, $zero, 0x0FF0          # a2 = 00000FF0
    lw      t0, 0x002C($sp)
lbl_8006C158:
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xBF10             # a2 = 8011BF10
    lw      t3, 0x0000(a2)             # 8011BF10
    sll     t5, t0,  2
    subu    t5, t5, t0
    lh      v0, 0x0036($sp)
    lw      t4, 0x0014(t3)             # 00000014
    sll     t5, t5,  2
    subu    t5, t5, t0
    sll     t5, t5,  3
    lui     v1, 0x8012                 # v1 = 80120000
    sll     v0, v0,  1
    addu    t6, t4, t5
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    addu    t7, t6, v0
    lh      t8, 0x0000(t7)             # 00000000
    lw      t9, 0x0000(v1)             # 8011BA00
    sll     t3, t0,  2
    subu    t3, t3, t0
    sh      t8, 0x0F34(t9)             # 00000F34
    lw      t1, 0x0000(a2)             # 8011BF10
    sll     t3, t3,  2
    subu    t3, t3, t0
    lw      t2, 0x0018(t1)             # 00000018
    sll     t3, t3,  3
    lw      t7, 0x0000(v1)             # 8011BA00
    addu    t4, t2, t3
    addu    t5, t4, v0
    lh      t6, 0x0000(t5)             # 00000000
    sh      t6, 0x0F36(t7)             # 00000F36
    lw      t8, 0x0000(v1)             # 8011BA00
    lw      a0, 0x0030($sp)
    jal     func_8006BD4C
    lh      a1, 0x0F50(t8)             # 00000F50
lbl_8006C1E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8006C1F0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    sll     a1, a1, 16
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    sra     a1, a1, 16
    sw      $ra, 0x0014($sp)
    bltz    a1, lbl_8006C29C
    lhu     a2, 0x1402(a3)             # 8011B9D2
    lhu     t6, 0x00A4(a0)             # 000000A4
    sltiu   $at, t6, 0x0019
    beq     $at, $zero, lbl_8006C2A8
    sll     t6, t6,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t6
    lw      t6, -0x7B08($at)           # 801084F8
    jr      t6
    nop
lbl_8006C238:
    sll     t7, a2,  3
    subu    t7, t7, a2
    sll     t7, t7,  2
    sll     t9, a1,  2
    lui     t0, 0x8010                 # t0 = 80100000
    addu    t0, t0, t9
    addu    v1, a3, t7
    lw      t8, 0x00E8(v1)             # 000000E8
    lw      t0, -0x7410(t0)            # 800F8BF0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    or      t1, t8, t0                 # t1 = 80100000
    sw      t1, 0x00E8(v1)             # 000000E8
    addu    v0, a0, $at
    sh      a1, 0x025C(v0)             # 0000025C
    sh      a2, 0x025A(v0)             # 0000025A
    sh      a1, 0x001E($sp)
    jal     func_8006BCD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_8006BF04
    lh      a1, 0x001E($sp)
    lui     a3, 0x8012                 # a3 = 80120000
    b       lbl_8006C2A8
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
lbl_8006C29C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      $zero, 0x074C($at)         # 0001074C
lbl_8006C2A8:
    lh      t2, 0x1422(a3)             # 8011B9F2
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    t2, $at, lbl_8006C2C0
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x1422(a3)          # 8011B9F2
    lw      $ra, 0x0014($sp)
lbl_8006C2C0:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8006C2CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80066EC0
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
    beq     v0, $zero, lbl_8006C308
    nop
    lw      v1, 0x0024(v0)             # 80120024
    beq     v1, $zero, lbl_8006C308
    nop
    jalr    $ra, v1
    nop
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, 0x1220(v0)             # 80121220
lbl_8006C308:
    beq     v0, $zero, lbl_8006C328
    nop
    lw      v1, 0x001C(v0)             # 8012001C
    lui     a0, 0x8012                 # a0 = 80120000
    beq     v1, $zero, lbl_8006C328
    nop
    jalr    $ra, v1
    addiu   a0, a0, 0xBF10             # a0 = 8011BF10
lbl_8006C328:
    lui     $at, 0x8012                # $at = 80120000
    sw      $zero, -0x40F0($at)        # 8011BF10
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8006C340:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, 0x1220(a1)             # 80121220
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x72D8             # t6 = 800F72D8
    lui     $at, 0x8012                # $at = 80120000
    beq     a1, $zero, lbl_8006C380
    sw      t6, -0x40F0($at)           # 8011BF10
    lw      v0, 0x0018(a1)             # 80120018
    lui     a0, 0x8012                 # a0 = 80120000
    beql    v0, $zero, lbl_8006C384
    lw      v1, 0x0030($sp)
    jalr    $ra, v0
    addiu   a0, a0, 0xBF10             # a0 = 8011BF10
lbl_8006C380:
    lw      v1, 0x0030($sp)
lbl_8006C384:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    addu    v1, v1, $at
    sh      v0, 0x0258(v1)             # 00000258
    sh      v0, 0x025A(v1)             # 0000025A
    lw      a0, 0x0030($sp)
    sw      v1, 0x001C($sp)
    addiu   a1, $zero, 0x1000          # a1 = 00001000
    jal     func_800A01B8
    addiu   a0, a0, 0x0074             # a0 = 00000074
    lw      v1, 0x001C($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xBF10             # t1 = 8011BF10
    sw      v0, 0x013C(v1)             # 0000013C
    lw      t7, 0x0030($sp)
    lh      t0, 0x00A4(t7)             # 000000A4
    slti    $at, t0, 0x0019
    bne     $at, $zero, lbl_8006C3F8
    or      a0, t0, $zero              # a0 = 00000000
    addiu   t8, a0, 0xFFAF             # t8 = FFFFFFAF
    sltiu   $at, t8, 0x0014
    beq     $at, $zero, lbl_8006C610
    sll     t8, t8,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t8
    lw      t8, -0x7AA4($at)           # 8010855C
    jr      t8
    nop
lbl_8006C3F8:
    sltiu   $at, a0, 0x0019
    beq     $at, $zero, lbl_8006C610
    sll     t9, a0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t9
    lw      t9, -0x7A54($at)           # 801085AC
    jr      t9
    nop
lbl_8006C418:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      t3, 0x0000(v1)             # 8011BA00
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    addiu   a2, t0, 0xFFAF             # a2 = FFFFFFAF
    sh      a2, 0x1402(a3)             # 8011B9D2
    sh      a2, 0x0F2A(t3)             # 00000F2A
    lw      t4, 0x0000(t1)             # 8011BF10
    sll     v0, a2,  3
    lw      t8, 0x0000(v1)             # 8011BA00
    lw      t5, 0x0034(t4)             # 00000034
    sll     a1, a2, 16
    sra     a1, a1, 16
    addu    t6, t5, v0
    lh      t7, 0x0000(t6)             # 00000000
    sh      t7, 0x0F30(t8)             # 00000EDF
    lw      t9, 0x0000(t1)             # 8011BF10
    lw      t5, 0x0000(v1)             # 8011BA00
    lw      t2, 0x0034(t9)             # 00000034
    addu    t3, t2, v0
    lh      t4, 0x0002(t3)             # 00000002
    sh      t4, 0x0F32(t5)             # 00000F32
    lw      t6, 0x0000(t1)             # 8011BF10
    lw      t2, 0x0000(v1)             # 8011BA00
    lw      t7, 0x0034(t6)             # 00000034
    addu    t8, t7, v0
    lh      t9, 0x0004(t8)             # FFFFFFB3
    sh      t9, 0x0F34(t2)             # 00000F34
    lw      t3, 0x0000(t1)             # 8011BF10
    lw      t7, 0x0000(v1)             # 8011BA00
    lw      t4, 0x0034(t3)             # 00000034
    addu    t5, t4, v0
    lh      t6, 0x0006(t5)             # 00000006
    sh      t6, 0x0F36(t7)             # 00000F36
    sw      a2, 0x002C($sp)
    jal     func_8006BF04
    lw      a0, 0x0030($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xBF10             # t1 = 8011BF10
    lw      t8, 0x0000(t1)             # 8011BF10
    lw      a2, 0x002C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    lw      t9, 0x002C(t8)             # 0000002C
    sll     v0, a2,  1
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    addu    t2, t9, v0
    lh      t3, 0x0000(t2)             # 00000000
    lw      t4, 0x0000(v1)             # 8011BA00
    sh      t3, 0x0DCE(t4)             # 00000DCE
    lw      t5, 0x0000(t1)             # 8011BF10
    lw      t9, 0x0000(v1)             # 8011BA00
    lw      t6, 0x0030(t5)             # 00000030
    addu    t7, t6, v0
    lh      t8, 0x0000(t7)             # 00000000
    b       lbl_8006C610
    sh      t8, 0x0DD0(t9)             # 00000DD0
lbl_8006C4FC:
    slti    $at, t0, 0x0011
    bne     $at, $zero, lbl_8006C510
    lui     v1, 0x8012                 # v1 = 80120000
    b       lbl_8006C514
    addiu   a2, t0, 0xFFEF             # a2 = FFFFFFEF
lbl_8006C510:
    or      a2, t0, $zero              # a2 = 00000000
lbl_8006C514:
    addiu   v1, v1, 0xBA00             # v1 = 8011BA00
    lw      t3, 0x0000(v1)             # 8011BA00
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xA5D0             # a3 = 8011A5D0
    sh      a2, 0x1402(a3)             # 8011B9D2
    sh      a2, 0x0F2A(t3)             # 00000F2A
    lw      t4, 0x0030($sp)
    lh      t0, 0x00A4(t4)             # 000000A4
    slti    $at, t0, 0x000A
    bne     $at, $zero, lbl_8006C548
    slti    $at, t0, 0x0011
    bnel    $at, $zero, lbl_8006C614
    lw      $ra, 0x0014($sp)
lbl_8006C548:
    lw      t5, 0x0000(t1)             # 8011BF10
    sll     v0, a2,  3
    lw      t9, 0x0000(v1)             # 8011BA00
    lw      t6, 0x003C(t5)             # 0000003C
    lui     a1, 0x8012                 # a1 = 80120000
    addu    t7, t6, v0
    lh      t8, 0x0000(t7)             # 00000000
    sh      t8, 0x0F30(t9)             # 00000F30
    lw      t2, 0x0000(t1)             # 8011BF10
    lw      t6, 0x0000(v1)             # 8011BA00
    lw      t3, 0x003C(t2)             # 0000003C
    addu    t4, t3, v0
    lh      t5, 0x0002(t4)             # 00000002
    sh      t5, 0x0F32(t6)             # 00000F32
    lw      t7, 0x0000(t1)             # 8011BF10
    lw      t3, 0x0000(v1)             # 8011BA00
    lw      t8, 0x003C(t7)             # 0000003C
    addu    t9, t8, v0
    lh      t2, 0x0004(t9)             # 00000004
    sh      t2, 0x0F34(t3)             # 00000F34
    lw      t4, 0x0000(t1)             # 8011BF10
    lw      t8, 0x0000(v1)             # 8011BA00
    sll     t3, a2,  1
    lw      t5, 0x003C(t4)             # 0000003C
    addu    t6, t5, v0
    lh      t7, 0x0006(t6)             # 00000006
    sh      t7, 0x0F36(t8)             # 00000F36
    lw      t9, 0x0000(t1)             # 8011BF10
    lw      t5, 0x0000(v1)             # 8011BA00
    lw      t2, 0x0038(t9)             # 00000038
    addu    t4, t2, t3
    lh      a0, 0x0000(t4)             # 00000000
    sh      a0, 0x0F2C(t5)             # 00000F2C
    lw      t6, 0x0000(v1)             # 8011BA00
    sh      a0, 0x0F2E(t6)             # 00000F2E
    lw      a1, 0x1220(a1)             # 80121220
    beql    a1, $zero, lbl_8006C5F8
    lw      a0, 0x0030($sp)
    lw      v0, 0x0020(a1)             # 80120020
    beql    v0, $zero, lbl_8006C5F8
    lw      a0, 0x0030($sp)
    jalr    $ra, v0
    lw      a0, 0x0000(t1)             # 8011BF10
    lw      a0, 0x0030($sp)
lbl_8006C5F8:
    lui     a1, 0x0001                 # a1 = 00010000
    addu    a1, a1, a0
    jal     func_8006C1F0
    lb      a1, 0x1CBC(a1)             # 00011CBC
    jal     func_80066DF0
    lw      a0, 0x0030($sp)
lbl_8006C610:
    lw      $ra, 0x0014($sp)
lbl_8006C614:
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8006C620:
    addiu   $sp, $sp, 0xFF98           # $sp -= 0x68
    sw      s1, 0x0020($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sdc1    $f20, 0x0010($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    lui     t7, 0x0001                 # t7 = 00010000
    addu    t7, t7, s1
    sw      t6, 0x0060($sp)
    lhu     t7, 0x0744(t7)             # 00010744
    lw      a1, 0x0000(s1)             # 00000000
    slti    $at, t7, 0x00AA
    bne     $at, $zero, lbl_8006CA4C
    or      s0, a1, $zero              # s0 = 00000000
    jal     func_8007E890
    or      a0, a1, $zero              # a0 = 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t9, 0xDA38                 # t9 = DA380000
    lui     t5, 0x8010                 # t5 = 80100000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    addiu   t5, t5, 0xEDB0             # t5 = 800FEDB0
    ori     t9, t9, 0x0003             # t9 = DA380003
    sw      t9, 0x0000(v1)             # 00000000
    sw      t5, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t7, 0xFC30                 # t7 = FC300000
    lui     t8, 0x552E                 # t8 = 552E0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    ori     t8, t8, 0xFF7F             # t8 = 552EFF7F
    ori     t7, t7, 0x9661             # t7 = FC309661
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t5, 0xFB00                 # t5 = FB000000
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t8, 0xFCFF                 # t8 = FCFF0000
    lui     t9, 0xFFFD                 # t9 = FFFD0000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    ori     t9, t9, 0xF6FB             # t9 = FFFDF6FB
    ori     t8, t8, 0xFFFF             # t8 = FCFFFFFF
    lui     $at, 0x4120                # $at = 41200000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    mtc1    $at, $f20                  # $f20 = 10.00
    lw      v0, 0x0060($sp)
    or      a2, v1, $zero              # a2 = 00000000
    lwc1    $f4, 0x0024(v0)            # 00000024
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x4600(a1)            # 8011BA00
    trunc.w.s $f6, $f4
    lwc1    $f8, 0x002C(v0)            # 0000002C
    lh      t7, 0x0F30(a1)             # 80120F30
    lh      t8, 0x0F32(a1)             # 80120F32
    mfc1    a0, $f6
    trunc.w.s $f10, $f8
    lh      t9, 0x0F34(a1)             # 80120F34
    sll     a0, a0, 16
    sra     a0, a0, 16
    div     $zero, a0, t7
    mfc1    t0, $f10
    lh      t6, 0x0F36(a1)             # 80120F36
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    sll     t0, t0, 16
    sra     t0, t0, 16
    bne     t7, $zero, lbl_8006C750
    nop
    break   # 0x01C00
lbl_8006C750:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t7, $at, lbl_8006C768
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_8006C768
    nop
    break   # 0x01800
lbl_8006C768:
    mflo    a0
    sll     a0, a0, 16
    sra     a0, a0, 16
    div     $zero, t0, t8
    bne     t8, $zero, lbl_8006C784
    nop
    break   # 0x01C00
lbl_8006C784:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8006C79C
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_8006C79C
    nop
    break   # 0x01800
lbl_8006C79C:
    mflo    t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    addu    t5, t9, a0
    subu    t7, t6, t0
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t5, $f16                   # $f16 = -664614000000000000000000000000000000.00
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f6, $f4
    cvt.s.w $f18, $f16
    div.s   $f14, $f6, $f20
    jal     func_800AA7F4
    div.s   $f12, $f18, $f20
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x79F0($at)         # 80108610
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x8011                # $at = 80110000
    lwc1    $f12, -0x79EC($at)         # 80108614
    jal     func_800AA9E0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t8, 0x0060($sp)
    addiu   t5, $zero, 0x7FFF          # t5 = 00007FFF
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t9, 0x00B6(t8)             # 000000B6
    subu    a0, t5, t9
    bgez    a0, lbl_8006C818
    addu    $at, a0, $zero
    addiu   $at, a0, 0x03FF            # $at = 000003FF
lbl_8006C818:
    sra     a0, $at, 10
    sll     a0, a0, 16
    sra     a0, a0, 16
    mtc1    a0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    jal     func_800AAB94
    div.s   $f12, $f10, $f20
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0040($sp)
    lw      t3, 0x0040($sp)
    lui     t5, 0xFA00                 # t5 = FA000000
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(t3)             # 00000004
    lw      t1, 0x02B0(s0)             # 000002B0
    lui     t9, 0xC8FF                 # t9 = C8FF0000
    ori     t9, t9, 0x00FF             # t9 = C8FF00FF
    addiu   t8, t1, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0004(t1)             # 00000004
    sw      t5, 0x0000(t1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t4, 0x0401                 # t4 = 04010000
    addiu   t4, t4, 0xC820             # t4 = 0400C820
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    or      t2, v1, $zero              # t2 = 00000000
    lui     a0, 0x800F                 # a0 = 800F0000
    lh      a0, 0x5530(a0)             # 800F5530
    lui     a1, 0x8012                 # a1 = 80120000
    lw      a1, -0x4600(a1)            # 8011BA00
    lui     t0, 0x800F                 # t0 = 800F0000
    lh      t0, 0x5534(t0)             # 800F5534
    lh      t8, 0x0F30(a1)             # 80120F30
    lh      t5, 0x0F32(a1)             # 80120F32
    lh      t9, 0x0F34(a1)             # 80120F34
    div     $zero, a0, t8
    bne     t8, $zero, lbl_8006C8DC
    nop
    break   # 0x01C00
lbl_8006C8DC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t8, $at, lbl_8006C8F4
    lui     $at, 0x8000                # $at = 80000000
    bne     a0, $at, lbl_8006C8F4
    nop
    break   # 0x01800
lbl_8006C8F4:
    mflo    a0
    lh      t7, 0x0F36(a1)             # 80120F36
    sll     a0, a0, 16
    div     $zero, t0, t5
    sra     a0, a0, 16
    bne     t5, $zero, lbl_8006C914
    nop
    break   # 0x01C00
lbl_8006C914:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     t5, $at, lbl_8006C92C
    lui     $at, 0x8000                # $at = 80000000
    bne     t0, $at, lbl_8006C92C
    nop
    break   # 0x01800
lbl_8006C92C:
    mflo    t0
    sll     t0, t0, 16
    sra     t0, t0, 16
    addu    t6, t9, a0
    subu    t8, t7, t0
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    sw      t4, 0x0028($sp)
    cvt.s.w $f6, $f4
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f18, $f16
    div.s   $f14, $f6, $f20
    jal     func_800AA7F4
    div.s   $f12, $f18, $f20
    lui     t5, 0x8012                 # t5 = 80120000
    lw      t5, -0x4600(t5)            # 8011BA00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f16                  # $f16 = 100.00
    lh      t9, 0x0F26(t5)             # 80120F26
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mtc1    t9, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    div.s   $f12, $f10, $f16
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t7, 0x0F7C(t6)             # 80120F7C
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    jal     func_800AA9E0
    div.s   $f12, $f4, $f20
    lui     t8, 0x800F                 # t8 = 800F0000
    lh      t8, 0x5538(t8)             # 800F5538
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mtc1    t8, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    jal     func_800AAB94
    div.s   $f12, $f8, $f20
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      a2, 0x0034($sp)
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x00FF             # t7 = FA0000FF
    sw      v0, 0x0004(a2)             # 00000004
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t8, 0xC800                 # t8 = C8000000
    ori     t8, t8, 0x00FF             # t8 = C80000FF
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02B0(s0)             # 000002B0
    lui     t9, 0xDE00                 # t9 = DE000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0000(v1)             # 00000000
    lw      t6, 0x0028($sp)
    sw      t6, 0x0004(v1)             # 00000004
lbl_8006CA4C:
    lw      $ra, 0x0024($sp)
    ldc1    $f20, 0x0010($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0068           # $sp += 0x68


func_8006CA64:
# parameter_static texture: Minimap Dungeon Entrance
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     t3, 0x8012                 # t3 = 80120000
    lhu     t3, -0x462E(t3)            # 8011B9D2
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a3
    lhu     t6, 0x0934(t6)             # 00010934
    lw      a2, 0x0000(a3)             # 00000000
    slti    $at, t6, 0x0004
    beq     $at, $zero, lbl_8006D57C
    or      a1, a2, $zero              # a1 = 00000000
    lh      v1, 0x00A4(a3)             # 000000A4
    slti    $at, v1, 0x000A
    bne     $at, $zero, lbl_8006CAC4
    addiu   t7, v1, 0xFFAF             # t7 = FFFFFFAF
    sltiu   $at, t7, 0x0014
    beq     $at, $zero, lbl_8006D57C
    sll     t7, t7,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t7
    lw      t7, -0x79E8($at)           # 80108618
    jr      t7
    nop
lbl_8006CAC4:
    sltiu   $at, v1, 0x000A
    beq     $at, $zero, lbl_8006D57C
    sll     t8, v1,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t8
    lw      t8, -0x7998($at)           # 80108668
    jr      t8
    nop
lbl_8006CAE4:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    sw      a3, 0x0038($sp)
    or      a0, a2, $zero              # a0 = 00000000
    lh      t6, 0x0DD2(t9)             # 80120DD2
    bnel    t6, $zero, lbl_8006CD44
    lw      a3, 0x0038($sp)
    sw      a1, 0x0024($sp)
    sw      a3, 0x0038($sp)
    jal     func_8007E610
    sw      t3, 0x0028($sp)
    lw      a1, 0x0024($sp)
    lw      t3, 0x0028($sp)
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0xFC61                 # t8 = FC610000
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    ori     t8, t8, 0x96C3             # t8 = FC6196C3
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lui     t6, 0x8012                 # t6 = 80120000
    addiu   t6, t6, 0xA5D0             # t6 = 8011A5D0
    addu    t1, t3, t6
    lui     t7, 0x8010                 # t7 = 80100000
    lw      t7, -0x7408(t7)            # 800F8BF8
    lbu     t0, 0x00A8(t1)             # 000000A8
    lui     $ra, 0x0700                # $ra = 07000000
    lui     t5, 0xE100                 # t5 = E1000000
    and     t8, t7, t0
    beq     t8, $zero, lbl_8006CD10
    nop
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     $at, 0x0001                # $at = 00010000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0000(v0)             # 00000000
    lw      a0, 0x0038($sp)
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    a0, a0, $at
    lhu     t7, 0x0254(a0)             # 00000254
    lui     $at, 0x64FF                # $at = 64FF0000
    ori     $at, $at, 0xFF00           # $at = 64FFFF00
    andi    t8, t7, 0x00FF             # t8 = 00000000
    or      t9, t8, $at                # t9 = 64FFFF00
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xFD90                 # t7 = FD900000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0000(v0)             # 00000000
    lw      t8, 0x013C(a0)             # 0000013C
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF590                 # t6 = F5900000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $ra, 0x0004(v0)            # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0xE600                 # t8 = E6000000
    lui     t6, 0xF300                 # t6 = F3000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0x077F                 # t7 = 077F0000
    ori     t7, t7, 0x7156             # t7 = 077F7156
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0xE700                 # t9 = E7000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xF580                 # t7 = F5800000
    ori     t7, t7, 0x0C00             # t7 = F5800C00
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0x0017                 # t6 = 00170000
    ori     t6, t6, 0xC150             # t6 = 0017C150
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     v1, 0x8012                 # v1 = 80120000
    lui     $at, 0xE400                # $at = E4000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t8, 0x0E1E(v1)             # 80120E1E
    addiu   t9, t8, 0x0055             # t9 = 0000005D
    sll     t6, t9,  2
    lh      t9, 0x0E1C(v1)             # 80120E1C
    andi    t7, t6, 0x0FFF             # t7 = 00000150
    or      t8, t7, $at                # t8 = E4000150
    addiu   t6, t9, 0x0060             # t6 = 000000BD
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000150
    sll     t6, t9, 12
    or      t7, t8, t6                 # t7 = E40001FD
    lui     v1, 0x8012                 # v1 = 80120000
    sw      t7, 0x0000(v0)             # 00000000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t9, 0x0E1E(v1)             # 80120E1E
    lh      t7, 0x0E1C(v1)             # 80120E1C
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000150
    sll     t9, t7,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000150
    sll     t7, t8, 12
    or      t9, t6, t7                 # t9 = E40001FD
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xF100                 # t7 = F1000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0x0400                 # t9 = 04000000
    ori     t9, t9, 0x0400             # t9 = 04000400
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lbu     t0, 0x00A8(t1)             # 000000A8
lbl_8006CD10:
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t8, -0x740C(t8)            # 800F8BF4
    and     t6, t8, t0
    beql    t6, $zero, lbl_8006CD44
    lw      a3, 0x0038($sp)
    jal     func_8006C620
    lw      a0, 0x0038($sp)
    lw      t7, 0x0038($sp)
    jal     func_8007E610
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800673F0
    lw      a0, 0x0038($sp)
    lw      a3, 0x0038($sp)
lbl_8006CD44:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    lhu     t9, 0x0020(a3)             # 00000020
    andi    t8, t9, 0x0020             # t8 = 00000000
    bnel    t8, $at, lbl_8006D580
    lw      $ra, 0x001C($sp)
    jal     func_8009CB08
    or      a0, a3, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8006D57C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     a3, 0x8010                 # a3 = 80100000
    lui     a1, 0x8010                 # a1 = 80100000
    lh      t7, 0x0DD2(t6)             # 80120DD2
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a1, a1, 0x4394             # a1 = 80104394
    bne     t7, $zero, lbl_8006CDBC
    addiu   a0, $zero, 0x4814          # a0 = 00004814
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x4813          # a0 = 00004813
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8006CDD4
    nop
lbl_8006CDBC:
    lui     t8, 0x8010                 # t8 = 80100000
    addiu   t8, t8, 0x43A8             # t8 = 801043A8
    sw      t8, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_8006CDD4:
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t6, 0x0DD2(v1)             # 80120DD2
    xori    t7, t6, 0x0001             # t7 = 00000001
    b       lbl_8006D57C
    sh      t7, 0x0DD2(v1)             # 80120DD2
lbl_8006CDEC:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    or      a0, a2, $zero              # a0 = 00000000
    lh      t8, 0x0DD2(t9)             # 80120DD2
    bnel    t8, $zero, lbl_8006D4DC
    lhu     t9, 0x0020(a3)             # 00000020
    sw      a1, 0x0024($sp)
    sw      a3, 0x0038($sp)
    jal     func_8007E610
    sw      t3, 0x0028($sp)
    lw      a1, 0x0024($sp)
    lw      t3, 0x0028($sp)
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xFC11                 # t7 = FC110000
    lui     t9, 0xFF2F                 # t9 = FF2F0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    ori     t9, t9, 0xFFFF             # t9 = FF2FFFFF
    ori     t7, t7, 0x9623             # t7 = FC119623
    sw      t7, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xFA00                 # t6 = FA000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0000(v0)             # 00000000
    lw      v1, -0x4600(v1)            # 8011BA00
    lw      a0, 0x0038($sp)
    lui     $at, 0x0001                # $at = 00010000
    lh      t7, 0x0F3C(v1)             # 80120F3C
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    a0, a0, $at
    andi    t9, t7, 0x00FF             # t9 = 00000023
    lh      t7, 0x0F38(v1)             # 80120F38
    sll     t8, t9,  8
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t9, t7, 24
    lh      t7, 0x0F3A(v1)             # 80120F3A
    or      t6, t8, t9                 # t6 = 0000002B
    addiu   t4, t4, 0xBF10             # t4 = 8011BF10
    andi    t8, t7, 0x00FF             # t8 = 00000023
    sll     t9, t8, 16
    lhu     t8, 0x0254(a0)             # 00000254
    or      t7, t6, t9                 # t7 = 0000002B
    andi    t6, t8, 0x00FF             # t6 = 00000023
    or      t9, t7, t6                 # t9 = 0000002B
    sw      t9, 0x0004(v0)             # 00000004
    lw      t0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xFD70                 # t7 = FD700000
    addiu   t8, t0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0000(t0)             # 00000000
    lw      t6, 0x013C(a0)             # 0000013C
    sw      t6, 0x0004(t0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     $ra, 0x0700                # $ra = 07000000
    lui     t8, 0xF570                 # t8 = F5700000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $ra, 0x0004(v0)            # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE600                 # t6 = E6000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      t5, 0x02B0(a1)             # 000002B0
    lui     t8, 0xF300                 # t8 = F3000000
    sll     t2, t3,  1
    addiu   t9, t5, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t8, 0x0000(t5)             # 00000000
    lw      a0, 0x0000(t4)             # 8011BF10
    lw      t7, 0x0040(a0)             # 00000040
    lw      t9, 0x0044(a0)             # 00000044
    addu    t6, t7, t2
    addu    t8, t9, t2
    lh      t7, 0x0000(t8)             # F3000000
    lh      a2, 0x0000(t6)             # E6000000
    multu   t7, a2
    mflo    a3
    addiu   a3, a3, 0x0003             # a3 = 00000003
    sra     a3, a3,  2
    addiu   a3, a3, 0xFFFF             # a3 = 00000002
    slti    $at, a3, 0x07FF
    beql    $at, $zero, lbl_8006CF5C
    addiu   t1, $zero, 0x07FF          # t1 = 000007FF
    b       lbl_8006CF5C
    or      t1, a3, $zero              # t1 = 00000002
    addiu   t1, $zero, 0x07FF          # t1 = 000007FF
lbl_8006CF5C:
    bgez    a2, lbl_8006CF6C
    sra     v0, a2,  4
    addiu   $at, a2, 0x000F            # $at = 0000000F
    sra     v0, $at,  4
lbl_8006CF6C:
    bgtzl   v0, lbl_8006CF80
    or      t3, v0, $zero              # t3 = 00000000
    b       lbl_8006CF80
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    or      t3, v0, $zero              # t3 = 00000000
lbl_8006CF80:
    bgtz    v0, lbl_8006CF90
    addiu   t6, t3, 0x07FF             # t6 = 000007FF
    b       lbl_8006CF94
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8006CF90:
    or      v1, v0, $zero              # v1 = 00000000
lbl_8006CF94:
    div     $zero, t6, v1
    mflo    t9
    andi    t8, t9, 0x0FFF             # t8 = 00000008
    bne     v1, $zero, lbl_8006CFAC
    nop
    break   # 0x01C00
lbl_8006CFAC:
    addiu   $at, $zero, 0xFFFF         # $at = FFFFFFFF
    bne     v1, $at, lbl_8006CFC4
    lui     $at, 0x8000                # $at = 80000000
    bne     t6, $at, lbl_8006CFC4
    nop
    break   # 0x01800
lbl_8006CFC4:
    andi    t6, t1, 0x0FFF             # t6 = 000007FF
    sll     t9, t6, 12
    or      t7, t8, $ra                # t7 = 07000008
    or      t8, t7, t9                 # t8 = 07000008
    sw      t8, 0x0004(t5)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     $at, 0xF560                # $at = F5600000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    lw      t8, 0x0000(t4)             # 8011BF10
    lw      t6, 0x0040(t8)             # 07000048
    addu    t7, t6, t2
    lh      t9, 0x0000(t7)             # E7000000
    sw      $zero, 0x0004(v0)          # 00000004
    sra     t8, t9,  1
    addiu   t6, t8, 0x0007             # t6 = 0700000F
    sra     t7, t6,  3
    andi    t9, t7, 0x01FF             # t9 = 00000000
    sll     t8, t9,  9
    or      t6, t8, $at                # t6 = F7600008
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    lui     t5, 0xE100                 # t5 = E1000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(t4)             # 8011BF10
    lw      t8, 0x0044(a0)             # 00000044
    addu    t6, t8, t2
    lh      t7, 0x0000(t6)             # F7600008
    addiu   t9, t7, 0xFFFF             # t9 = 00000007
    lw      t7, 0x0040(a0)             # 00000040
    sll     t8, t9,  2
    andi    t6, t8, 0x0FFF             # t6 = 00000008
    addu    t9, t7, t2
    lh      t8, 0x0000(t9)             # 00000007
    addiu   t7, t8, 0xFFFF             # t7 = 07000007
    sll     t9, t7,  2
    andi    t8, t9, 0x0FFF             # t8 = 00000007
    sll     t7, t8, 12
    or      t9, t6, t7                 # t9 = 0700000F
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     v1, 0x8012                 # v1 = 80120000
    lui     $at, 0xE400                # $at = E4000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    lw      a0, 0x0000(t4)             # 8011BF10
    lw      v1, -0x4600(v1)            # 8011BA00
    lw      t6, 0x0044(a0)             # 00000044
    lh      t8, 0x0DD0(v1)             # 80120DD0
    addu    t7, t6, t2
    lh      t9, 0x0000(t7)             # 07000007
    addu    t6, t9, t8
    sll     t7, t6,  2
    andi    t9, t7, 0x0FFF             # t9 = 00000007
    lw      t7, 0x0040(a0)             # 00000040
    or      t8, t9, $at                # t8 = E4000007
    lh      t6, 0x0DCE(v1)             # 80120DCE
    addu    t9, t7, t2
    lh      t7, 0x0000(t9)             # 00000007
    lui     v1, 0x8012                 # v1 = 80120000
    addu    t9, t6, t7
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t6, t8, t9                 # t6 = E4000007
    sw      t6, 0x0000(v0)             # 00000000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t7, 0x0DD0(v1)             # 80120DD0
    lh      t6, 0x0DCE(v1)             # 80120DCE
    sll     t8, t7,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000007
    sll     t7, t6,  2
    andi    t8, t7, 0x0FFF             # t8 = 00000008
    sll     t6, t8, 12
    or      t7, t9, t6                 # t7 = E4000007
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0x0400                 # t7 = 04000000
    ori     t7, t7, 0x0400             # t7 = 04000400
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      t8, 0x0038($sp)
    addiu   $at, $zero, 0x0052         # $at = 00000052
    lui     t9, 0x8012                 # t9 = 80120000
    lh      t1, 0x00A4(t8)             # 000000AC
    beq     t1, $at, lbl_8006D174
    addiu   $at, $zero, 0x0055         # $at = 00000055
    beq     t1, $at, lbl_8006D174
    addiu   $at, $zero, 0x0059         # $at = 00000059
    bnel    t1, $at, lbl_8006D19C
    lw      t6, 0x0000(t4)             # 8011BF10
lbl_8006D174:
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    addiu   $at, $zero, 0x0011         # $at = 00000011
    addiu   v1, $zero, 0x0011          # v1 = 00000011
    beq     t9, $zero, lbl_8006D190
    nop
    b       lbl_8006D190
    addiu   v1, $zero, 0x0005          # v1 = 00000005
lbl_8006D190:
    beql    v1, $at, lbl_8006D394
    addiu   $at, $zero, 0x0059         # $at = 00000059
    lw      t6, 0x0000(t4)             # 8011BF10
lbl_8006D19C:
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t3, t3, 0x553C             # t3 = 800F553C
    lh      t7, 0x0000(t3)             # 800F553C
    lw      v0, 0x0050(t6)             # F1000050
    ori     a0, $zero, 0xFFFF          # a0 = 0000FFFF
    sll     t8, t7,  1
    addu    t9, v0, t8
    lhu     v1, 0x0000(t9)             # 80120000
    beql    a0, v1, lbl_8006D1F8
    lw      v0, 0x02B0(a1)             # 000002B0
    beq     a0, v1, lbl_8006D390
    addu    t6, v0, t2
    lhu     t7, 0x0000(t6)             # F1000000
    lui     t9, 0x8010                 # t9 = 80100000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, -0x7410(t9)            # 800F8BF0
    lhu     t6, -0x4B04(t6)            # 8011B4FC
    and     t7, t9, t6
    beql    t7, $zero, lbl_8006D394
    addiu   $at, $zero, 0x0059         # $at = 00000059
    lw      v0, 0x02B0(a1)             # 000002B0
lbl_8006D1F8:
    lui     t6, 0x0200                 # t6 = 02000000
    addiu   t6, t6, 0x2500             # t6 = 02002500
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    lui     t9, 0xFD10                 # t9 = FD100000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0xF510                 # t8 = F5100000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      $ra, 0x0004(v0)            # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE600                 # t6 = E6000000
    lui     t8, 0xF300                 # t8 = F3000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0x0703                 # t9 = 07030000
    ori     t9, t9, 0xF400             # t9 = 0703F400
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF510                 # t9 = F5100000
    ori     t9, t9, 0x0400             # t9 = F5100400
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0x0001                 # t8 = 00010000
    ori     t8, t8, 0xC01C             # t8 = 0001C01C
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    lui     t7, 0xF200                 # t7 = F2000000
    sw      t7, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     $at, 0xE400                # $at = E4000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    lw      a0, 0x0000(t4)             # 8011BF10
    lh      v1, 0x0000(t3)             # 800F553C
    lw      t6, 0x004C(a0)             # 0001004B
    sll     v1, v1,  1
    addu    t7, t6, v1
    lh      t8, 0x0000(t7)             # F2000000
    addiu   t9, t8, 0x0008             # t9 = 0001C024
    sll     t6, t9,  2
    lw      t9, 0x0048(a0)             # 00010047
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    or      t8, t7, $at                # t8 = E4000008
    addu    t6, t9, v1
    lh      t7, 0x0000(t6)             # 00000008
    addiu   t9, t7, 0x0008             # t9 = 00000010
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000008
    sll     t9, t7, 12
    or      t6, t8, t9                 # t6 = E4000018
    sw      t6, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(t4)             # 8011BF10
    lh      v1, 0x0000(t3)             # 800F553C
    lw      t7, 0x004C(a0)             # 0001004B
    sll     v1, v1,  1
    addu    t8, t7, v1
    lh      t9, 0x0000(t8)             # E4000008
    lw      t8, 0x0048(a0)             # 00010047
    sll     t6, t9,  2
    andi    t7, t6, 0x0FFF             # t7 = 00000018
    addu    t9, t8, v1
    lh      t6, 0x0000(t9)             # 00000010
    sll     t8, t6,  2
    andi    t9, t8, 0x0FFF             # t9 = 00000008
    sll     t6, t9, 12
    or      t8, t7, t6                 # t8 = E4000018
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      t9, 0x0038($sp)
    lh      t1, 0x00A4(t9)             # 000000AC
lbl_8006D390:
    addiu   $at, $zero, 0x0059         # $at = 00000059
lbl_8006D394:
    bne     t1, $at, lbl_8006D4CC
    lui     t7, 0x8010                 # t7 = 80100000
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B04(t6)            # 8011B4FC
    lw      t7, -0x73EC(t7)            # 800F8C14
    and     t8, t7, t6
    beq     t8, $zero, lbl_8006D4CC
    lui     t7, 0xFD10                 # t7 = FD100000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0x0200                 # t6 = 02000000
    addiu   t6, t6, 0x2500             # t6 = 02002500
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0xF510                 # t9 = F5100000
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      $ra, 0x0004(v0)            # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE600                 # t6 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0x0703                 # t7 = 07030000
    ori     t7, t7, 0xF400             # t7 = 0703F400
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(a1)             # 000002B0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t7, 0xF510                 # t7 = F5100000
    ori     t7, t7, 0x0400             # t7 = F5100400
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t9, 0x0001                 # t9 = 00010000
    ori     t9, t9, 0xC01C             # t9 = 0001C01C
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(a1)             # 000002B0
    lui     t8, 0xF200                 # t8 = F2000000
    sw      t8, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xE445                 # t6 = E4450000
    lui     t8, 0x0043                 # t8 = 00430000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    ori     t8, t8, 0x8268             # t8 = 00438268
    ori     t6, t6, 0x8288             # t6 = E4458288
    sw      t6, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t6, 0xF100                 # t6 = F1000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(a1)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(a1)             # 000002B0
    lui     t8, 0x0400                 # t8 = 04000000
    ori     t8, t8, 0x0400             # t8 = 04000400
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(a1)             # 000002B0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
lbl_8006D4CC:
    jal     func_8006C620
    lw      a0, 0x0038($sp)
    lw      a3, 0x0038($sp)
    lhu     t9, 0x0020(a3)             # 00000020
lbl_8006D4DC:
    addiu   $at, $zero, 0x0020         # $at = 00000020
    andi    t7, t9, 0x0020             # t7 = 00000000
    bnel    t7, $at, lbl_8006D580
    lw      $ra, 0x001C($sp)
    jal     func_8009CB08
    or      a0, a3, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8006D57C
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x4600(t6)            # 8011BA00
    lui     a3, 0x8010                 # a3 = 80100000
    lui     a1, 0x8010                 # a1 = 80100000
    lh      t8, 0x0DD2(t6)             # 80120DD2
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   a1, a1, 0x4394             # a1 = 80104394
    bne     t8, $zero, lbl_8006D550
    addiu   a0, $zero, 0x4814          # a0 = 00004814
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t9, 0x8010                 # t9 = 80100000
    addiu   t9, t9, 0x43A8             # t9 = 801043A8
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      a3, 0x0010($sp)
    sw      t9, 0x0014($sp)
    addiu   a0, $zero, 0x4813          # a0 = 00004813
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    b       lbl_8006D568
    nop
lbl_8006D550:
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    sw      t7, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
lbl_8006D568:
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t6, 0x0DD2(v1)             # 80120DD2
    xori    t8, t6, 0x0001             # t8 = 00000001
    sh      t8, 0x0DD2(v1)             # 80120DD2
lbl_8006D57C:
    lw      $ra, 0x001C($sp)
lbl_8006D580:
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8006D58C:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x40F0(t6)            # 8011BF10
    sll     t8, a0,  4
    sll     t0, a1,  1
    lw      t7, 0x0000(t6)             # 80120000
    addu    t9, t7, t8
    addu    t1, t9, t0
    lh      v0, 0x0000(t1)             # 00000000
    jr      $ra
    nop


func_8006D5B4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s6, 0x0030($sp)
    lui     s6, 0x8012                 # s6 = 80120000
    sw      s5, 0x002C($sp)
    or      s5, a0, $zero              # s5 = 00000000
    addiu   s6, s6, 0xA5D0             # s6 = 8011A5D0
    sw      $ra, 0x0034($sp)
    sw      s4, 0x0028($sp)
    sw      s3, 0x0024($sp)
    sw      s2, 0x0020($sp)
    sw      s1, 0x001C($sp)
    sw      s0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s5, $at
    lhu     t6, 0x0934(v0)             # 00000934
    lw      a1, 0x1C44(s5)             # 00001C44
    lhu     s4, 0x1402(s6)             # 8011B9D2
    bnel    t6, $zero, lbl_8006D8B4
    lw      $ra, 0x0034($sp)
    lhu     t7, 0x0936(v0)             # 00000936
    bnel    t7, $zero, lbl_8006D8B4
    lw      $ra, 0x0034($sp)
    lh      v0, 0x00A4(s5)             # 000000A4
    sltiu   $at, v0, 0x0019
    beq     $at, $zero, lbl_8006D8B0
    sll     t8, v0,  2
    lui     $at, 0x8011                # $at = 80110000
    addu    $at, $at, t8
    lw      t8, -0x7970($at)           # 80108690
    jr      t8
    nop
lbl_8006D630:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    s2, s5, $at
    lui     a2, 0x8010                 # a2 = 80100000
    sb      $zero, 0x015E(s2)          # 0000015E
    addiu   a2, a2, 0x8BF0             # a2 = 800F8BF0
    addu    t0, s6, s4
    lbu     t1, 0x00A8(t0)             # 000000A8
    lw      t9, 0x0008(a2)             # 800F8BF8
    sll     t8, s4,  3
    lui     t4, 0x8012                 # t4 = 80120000
    and     t2, t9, t1
    beq     t2, $zero, lbl_8006D674
    subu    t8, t8, s4
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    b       lbl_8006D678
    sb      t3, 0x015F(s2)             # 0000015F
lbl_8006D674:
    sb      $zero, 0x015F(s2)          # 0000015F
lbl_8006D678:
    lw      t4, -0x40F0(t4)            # 8011BF10
    sll     t6, s4,  5
    or      s1, $zero, $zero           # s1 = 00000000
    lw      t5, 0x0054(t4)             # 80120054
    lwc1    $f0, 0x0028(a1)            # 00000028
    sll     t8, t8,  2
    addu    v1, t5, t6
    sll     v0, s1,  2
lbl_8006D698:
    addu    t7, v1, v0
    lwc1    $f4, 0x0000(t7)            # 00000000
    c.lt.s  $f4, $f0
    nop
    bc1tl   lbl_8006D6D0
    addu    v1, s6, t8
    addiu   s1, s1, 0x0001             # s1 = 00000001
    sll     s1, s1, 16
    sra     s1, s1, 16
    slti    $at, s1, 0x0008
    bnel    $at, $zero, lbl_8006D698
    sll     v0, s1,  2
    sll     v0, s1,  2
    addu    v1, s6, t8
lbl_8006D6D0:
    addu    t9, a2, v0
    lw      t1, 0x0000(t9)             # 00000000
    lw      t0, 0x00EC(v1)             # 000000EC
    lui     t3, 0x8012                 # t3 = 80120000
    or      a0, s4, $zero              # a0 = 00000000
    or      t2, t0, t1                 # t2 = 00000000
    sw      t2, 0x00EC(v1)             # 000000EC
    lw      t3, -0x4600(t3)            # 8011BA00
    or      a1, s1, $zero              # a1 = 00000001
    jal     func_8006D58C
    sh      s1, 0x0F50(t3)             # 80120F50
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    or      a0, s4, $zero              # a0 = 00000000
    lh      t5, 0x0F2C(v1)             # 80120F2C
    lh      t4, 0x0F2E(v1)             # 80120F2E
    addu    t6, v0, t5
    beq     t4, t6, lbl_8006D738
    nop
    jal     func_8006D58C
    or      a1, s1, $zero              # a1 = 00000001
    lui     v1, 0x8012                 # v1 = 80120000
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t7, 0x0F2C(v1)             # 80120F2C
    addu    t8, v0, t7
    sh      t8, 0x0F2E(v1)             # 80120F2E
lbl_8006D738:
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x5540(t9)             # 800F5540
    lh      a0, 0x025C(s2)             # 0000025C
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBF10             # a1 = 8011BF10
    beq     t9, a0, lbl_8006D758
    lui     $at, 0x800F                # $at = 800F0000
    sh      a0, 0x5540($at)            # 800F5540
lbl_8006D758:
    lw      v0, 0x0000(a1)             # 8011BF10
    sll     s3, s4,  1
    or      s0, $zero, $zero           # s0 = 00000000
    lw      t0, 0x0058(v0)             # 00000058
    addu    t1, t0, s3
    lhu     v1, 0x0000(t1)             # 00000000
    blez    v1, lbl_8006D840
    sll     t3, s4,  2
lbl_8006D778:
    subu    t3, t3, s4
    sll     t3, t3,  2
    lw      t2, 0x005C(v0)             # 0000005C
    addu    t3, t3, s4
    sll     t3, t3,  2
    subu    t3, t3, s4
    addu    t5, t2, t3
    addu    t4, t5, s0
    lbu     t6, 0x0000(t4)             # 00000000
    sll     t8, s4,  2
    subu    t8, t8, s4
    bne     a0, t6, lbl_8006D828
    sll     t8, t8,  2
    lw      t7, 0x0060(v0)             # 00000060
    addu    t8, t8, s4
    sll     t8, t8,  2
    subu    t8, t8, s4
    addu    t9, t7, t8
    addu    t0, t9, s0
    lbu     t1, 0x0000(t0)             # 00000000
    sll     t3, s4,  2
    subu    t3, t3, s4
    bne     s1, t1, lbl_8006D828
    sll     t3, t3,  2
    lw      t2, 0x0064(v0)             # 00000064
    addu    t3, t3, s4
    sll     t3, t3,  2
    subu    t3, t3, s4
    addu    t5, t2, t3
    addu    t4, t5, s0
    lbu     t6, 0x0000(t4)             # 00000000
    or      a0, s5, $zero              # a0 = 00000000
    sh      t6, 0x025C(s2)             # 0000025C
    jal     func_8006BF04
    lh      a1, 0x025C(s2)             # 0000025C
    sh      $zero, 0x1422(s6)          # 8011B9F2
    jal     func_8006BC70
    or      a0, s5, $zero              # a0 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x40F0(v0)            # 8011BF10
    lh      a0, 0x025C(s2)             # 0000025C
    lw      t7, 0x0058(v0)             # 80120058
    addu    t8, t7, s3
    lhu     v1, 0x0000(t8)             # 00000000
lbl_8006D828:
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slt     $at, s0, v1
    bnel    $at, $zero, lbl_8006D778
    sll     t3, s4,  2
lbl_8006D840:
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x4600(t9)            # 8011BA00
    b       lbl_8006D8B0
    sh      a0, 0x0F28(t9)             # 80120F28
lbl_8006D850:
    lui     a1, 0x8012                 # a1 = 80120000
    addiu   a1, a1, 0xBF10             # a1 = 8011BF10
    lw      t0, 0x0000(a1)             # 8011BF10
    sll     t2, v0,  1
    lui     t4, 0x8012                 # t4 = 80120000
    lw      t1, 0x0004(t0)             # 00000004
    lw      t4, -0x4600(t4)            # 8011BA00
    lui     v1, 0x8012                 # v1 = 80120000
    addu    t3, t1, t2
    lh      t5, -0x0022(t3)            # FFFFFFDE
    sh      t5, 0x0F50(t4)             # 80120F50
    lw      t6, 0x0000(a1)             # 8011BF10
    lw      v1, -0x4600(v1)            # 8011BA00
    lh      t8, 0x00A4(s5)             # 000000A4
    lw      t7, 0x0000(t6)             # 00000000
    lh      t1, 0x0F50(v1)             # 80120F50
    sll     t9, t8,  4
    addu    t0, t7, t9
    sll     t2, t1,  1
    addu    t3, t0, t2
    lh      t5, -0x0110(t3)            # FFFFFEF0
    lh      t4, 0x0F2C(v1)             # 80120F2C
    addu    t6, t5, t4
    sh      t6, 0x0F2E(v1)             # 80120F2E
lbl_8006D8B0:
    lw      $ra, 0x0034($sp)
lbl_8006D8B4:
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
