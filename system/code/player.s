# "Player" part of the code file
#
# The purpose of this file's content is unclear but it contains the 4 main functions of the player actor (init, destruct, update, draw).
#
# Starts at VRAM: 80097650 / VROM: B0D5B0
#

.section .text
func_80097650:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a0, 0x8084                 # a0 = 80840000
    jal     func_80099DBC
    addiu   a0, a0, 0x4DE8             # a0 = 80844DE8
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8085                 # a0 = 80850000
    sw      v0, -0x2FD0($at)           # 8011D030
    jal     func_80099DBC
    addiu   a0, a0, 0x8BB4             # a0 = 80848BB4
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8084                 # a0 = 80840000
    sw      v0, -0x2FCC($at)           # 8011D034
    jal     func_80099DBC
    addiu   a0, a0, 0x7FC8             # a0 = 80847FC8
    lui     $at, 0x8012                # $at = 80120000
    lui     a0, 0x8085                 # a0 = 80850000
    sw      v0, -0x2FC8($at)           # 8011D038
    jal     func_80099DBC
    addiu   a0, a0, 0x8680             # a0 = 80848680
    lui     $at, 0x8012                # $at = 80120000
    sw      v0, -0x2FC4($at)           # 8011D03C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800976B8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80099E90
    nop
    jal     func_80097650
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FD0(t9)            # 8011D030
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80097700:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80099E90
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FCC(t9)            # 8011D034
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80097740:
# Link, Update Routine (Primary Wrapper for 80847FC8)
# A0 = Link Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80099E90
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FC8(t9)            # 8011D038
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80097780:
# Link, Draw Routine (Primary, Wrapper for 80848680)
# A0 = Link Instance
# A1 = Global Context
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    jal     func_80099E90
    nop
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x2FC4(t9)            # 8011D03C
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_800977C0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s8, 0x0048($sp)
    sw      s7, 0x0044($sp)
    sw      s6, 0x0040($sp)
    sw      s5, 0x003C($sp)
    sw      s4, 0x0038($sp)
    sw      s3, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    jal     func_800D08B8
    addiu   a0, s0, 0x0058             # a0 = 00000058
    jal     func_800D08B8
    addiu   a0, s0, 0x0098             # a0 = 00000098
    lui     $at, 0xC47A                # $at = C47A0000
    mtc1    $at, $f4                   # $f4 = -1000.00
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $zero, $f0                 # $f0 = 0.00
    mtc1    $at, $f6                   # $f6 = 1000.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    mfc1    a1, $f0
    addiu   a0, s0, 0x0018             # a0 = 00000018
    lui     a2, 0x43A0                 # a2 = 43A00000
    lui     a3, 0x4370                 # a3 = 43700000
    swc1    $f4, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    swc1    $f6, 0x0018($sp)
    jal     func_800D2C64
    swc1    $f8, 0x001C($sp)
    or      t5, $zero, $zero           # t5 = 00000000
    or      s8, $zero, $zero           # s8 = 00000000
    or      s6, $zero, $zero           # s6 = 00000000
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t3, $zero, 0x0078          # t3 = 00000078
    addiu   t2, $zero, 0xFFFB          # t2 = FFFFFFFB
lbl_80097858:
    bne     t5, $zero, lbl_80097868
    sw      t5, 0x0008(s0)             # 00000008
    b       lbl_8009786C
    lw      a3, 0x0010(s0)             # 00000010
lbl_80097868:
    lw      a3, 0x0014(s0)             # 00000014
lbl_8009786C:
    lw      v1, 0x0004(s0)             # 00000004
    addiu   t5, t5, 0x0001             # t5 = 00000001
    addiu   v0, v1, 0x0001             # v0 = 00000001
    blezl   v0, lbl_80097914
    slti    $at, t5, 0x0002
    lw      a2, 0x0000(s0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_80097888:
    or      a0, $zero, $zero           # a0 = 00000000
    blez    a2, lbl_800978F8
    or      a1, $zero, $zero           # a1 = 00000000
    or      v1, $zero, $zero           # v1 = 00000000
    sll     t0, s6,  5
    sll     t1, s8,  6
lbl_800978A0:
    or      v0, a3, $zero              # v0 = 00000000
    sll     t6, a0,  6
    sh      t6, 0x0008(v0)             # 00000008
    sh      v1, 0x0000(v0)             # 00000000
    sh      t0, 0x0002(v0)             # 00000002
    sh      t2, 0x0004(v0)             # 00000004
    sh      $zero, 0x0006(v0)          # 00000006
    sh      t1, 0x000A(v0)             # 0000000A
    sb      $zero, 0x000C(v0)          # 0000000C
    sb      $zero, 0x000D(v0)          # 0000000D
    sb      t3, 0x000E(v0)             # 0000000E
    sb      t4, 0x000F(v0)             # 0000000F
    addiu   a3, a3, 0x0010             # a3 = 00000010
    lw      a2, 0x0000(s0)             # 00000000
    addiu   a1, a1, 0x0001             # a1 = 00000001
    addiu   v1, v1, 0x0020             # v1 = 00000020
    addiu   a2, a2, 0x0001             # a2 = 00000002
    slt     $at, a1, a2
    bne     $at, $zero, lbl_800978A0
    addiu   a0, a0, 0x0020             # a0 = 00000020
    lw      v1, 0x0004(s0)             # 00000004
    addiu   v0, v1, 0x0001             # v0 = 00000021
lbl_800978F8:
    addiu   s6, s6, 0x0001             # s6 = 00000001
    slt     $at, s6, v0
    bne     $at, $zero, lbl_80097888
    addiu   s8, s8, 0x0020             # s8 = 00000020
    or      s8, $zero, $zero           # s8 = 00000000
    or      s6, $zero, $zero           # s6 = 00000000
    slti    $at, t5, 0x0002
lbl_80097914:
    bne     $at, $zero, lbl_80097858
    nop
    blez    v1, lbl_80097B38
    lw      v0, 0x00D8(s0)             # 000000D8
    lw      t4, 0x0000(s0)             # 00000000
    lui     s5, 0xE700                 # s5 = E7000000
    lui     s4, 0x0700                 # s4 = 07000000
    sll     a2, t4,  1
lbl_80097934:
    addiu   a2, a2, 0x0002             # a2 = 00000004
    andi    t7, a2, 0x00FF             # t7 = 00000004
    sll     t8, t7, 12
    andi    t6, a2, 0x007F             # t6 = 00000004
    lui     $at, 0x0100                # $at = 01000000
    or      t9, t8, $at                # t9 = 01000000
    sll     t7, t6,  1
    or      t8, t9, t7                 # t8 = 01000004
    or      v1, v0, $zero              # v1 = 00000021
    sw      t8, 0x0000(v1)             # 00000021
    lw      t6, 0x0000(s0)             # 00000000
    lui     $at, 0x0A00                # $at = 0A000000
    addiu   s3, s8, 0x0020             # s3 = 00000020
    addiu   t9, t6, 0x0001             # t9 = 00000005
    multu   s6, t9
    sll     s3, s3,  2
    sll     s2, s8,  2
    addiu   v0, v0, 0x0008             # v0 = 00000029
    andi    s2, s2, 0x0FFF             # s2 = 00000000
    andi    s3, s3, 0x0FFF             # s3 = 00000020
    addiu   s7, $zero, 0x0049          # s7 = 00000049
    or      t2, $zero, $zero           # t2 = 00000000
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    mflo    t7
    sll     t8, t7,  4
    addu    t6, t8, $at
    sw      t6, 0x0004(v1)             # 00000025
    lw      t4, 0x0000(s0)             # 00000000
    or      t1, $zero, $zero           # t1 = 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    blez    t4, lbl_80097B20
    or      a1, $zero, $zero           # a1 = 00000000
lbl_800979B4:
    or      v1, v0, $zero              # v1 = 00000029
    sw      s5, 0x0000(v1)             # 00000029
    sw      $zero, 0x0004(v1)          # 0000002D
    addiu   v0, v0, 0x0008             # v0 = 00000031
    or      a2, v0, $zero              # a2 = 00000031
    lui     t9, 0xFD10                 # t9 = FD100000
    ori     t9, t9, 0x013F             # t9 = FD10013F
    lui     t7, 0x0B00                 # t7 = 0B000000
    sw      t7, 0x0004(a2)             # 00000035
    sw      t9, 0x0000(a2)             # 00000031
    addiu   v0, v0, 0x0008             # v0 = 00000039
    sra     t4, s7,  3
    andi    t4, t4, 0x01FF             # t4 = 000000FF
    or      a3, v0, $zero              # a3 = 00000039
    sll     t4, t4,  9
    lui     $at, 0xF510                # $at = F5100000
    or      t4, t4, $at                # t4 = F51000FF
    sw      t4, 0x0000(a3)             # 00000039
    sw      s4, 0x0004(a3)             # 0000003D
    addiu   v0, v0, 0x0008             # v0 = 00000041
    or      t0, v0, $zero              # t0 = 00000041
    lui     t8, 0xE600                 # t8 = E6000000
    sw      t8, 0x0000(t0)             # 00000041
    sw      $zero, 0x0004(t0)          # 00000045
    addiu   v0, v0, 0x0008             # v0 = 00000049
    addiu   t0, a0, 0x0020             # t0 = 00000020
    sll     $ra, t0,  2
    sll     v1, a0,  2
    andi    v1, v1, 0x0FFF             # v1 = 00000029
    andi    $ra, $ra, 0x0FFF           # $ra = 00000000
    sll     $ra, $ra, 12
    sll     v1, v1, 12
    or      t5, v0, $zero              # t5 = 00000049
    lui     $at, 0xF400                # $at = F4000000
    or      t6, v1, $at                # t6 = F4000029
    or      t7, $ra, s4                # t7 = 07000000
    or      t8, t7, s3                 # t8 = 07000020
    or      t9, t6, s2                 # t9 = F4000029
    sw      t9, 0x0000(t5)             # 00000049
    sw      t8, 0x0004(t5)             # 0000004D
    addiu   v0, v0, 0x0008             # v0 = 00000051
    or      a2, v0, $zero              # a2 = 00000051
    sw      s5, 0x0000(a2)             # 00000051
    sw      $zero, 0x0004(a2)          # 00000055
    addiu   v0, v0, 0x0008             # v0 = 00000059
    or      a3, v0, $zero              # a3 = 00000059
    sw      t4, 0x0000(a3)             # 00000059
    sw      $zero, 0x0004(a3)          # 0000005D
    addiu   v0, v0, 0x0008             # v0 = 00000061
    or      s1, v0, $zero              # s1 = 00000061
    lui     $at, 0xF200                # $at = F2000000
    or      t6, v1, $at                # t6 = F2000029
    or      t9, t6, s2                 # t9 = F2000029
    or      t7, $ra, s3                # t7 = 00000020
    sw      t7, 0x0004(s1)             # 00000065
    sw      t9, 0x0000(s1)             # 00000061
    addiu   v0, v0, 0x0008             # v0 = 00000069
    lw      t7, 0x0000(s0)             # 00000000
    andi    t8, t3, 0x00FF             # t8 = 00000002
    sll     t6, t8,  8
    andi    a2, t2, 0x00FF             # a2 = 00000000
    sll     a2, a2, 16
    or      t9, a2, t6                 # t9 = F2000029
    addu    t8, t1, t7
    sll     t6, t8,  1
    addiu   t7, t6, 0x0004             # t7 = F200002D
    andi    t8, t7, 0x00FF             # t8 = 0000002D
    or      t6, t9, t8                 # t6 = F200002D
    or      t7, t6, s4                 # t7 = F700002D
    or      v1, v0, $zero              # v1 = 00000069
    sw      t7, 0x0000(v1)             # 00000069
    lw      t9, 0x0000(s0)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000071
    or      a0, t0, $zero              # a0 = 00000020
    addu    a3, t1, t9
    sll     a3, a3,  1
    addiu   t8, a3, 0x0004             # t8 = 0000005D
    andi    t6, t8, 0x00FF             # t6 = 0000005D
    sll     t7, t6,  8
    addiu   t8, a3, 0x0002             # t8 = 0000005B
    andi    t6, t8, 0x00FF             # t6 = 0000005B
    or      t9, a2, t7                 # t9 = F700002D
    or      t7, t9, t6                 # t7 = F700007F
    sw      t7, 0x0004(v1)             # 0000006D
    lw      t4, 0x0000(s0)             # 00000000
    addiu   a1, a1, 0x0001             # a1 = 00000001
    addiu   t1, t1, 0x0001             # t1 = 00000001
    slt     $at, a1, t4
    addiu   t2, t2, 0x0002             # t2 = 00000002
    bne     $at, $zero, lbl_800979B4
    addiu   t3, t3, 0x0002             # t3 = 00000004
lbl_80097B20:
    lw      t8, 0x0004(s0)             # 00000004
    addiu   s6, s6, 0x0001             # s6 = 00000001
    addiu   s8, s8, 0x0020             # s8 = 00000020
    slt     $at, s6, t8
    bnel    $at, $zero, lbl_80097934
    sll     a2, t4,  1
lbl_80097B38:
    lui     s5, 0xE700                 # s5 = E7000000
    or      v1, v0, $zero              # v1 = 00000071
    sw      s5, 0x0000(v1)             # 00000071
    sw      $zero, 0x0004(v1)          # 00000075
    addiu   v0, v0, 0x0008             # v0 = 00000079
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0000(v0)             # 00000079
    sw      $zero, 0x0004(v0)          # 0000007D
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
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80097B88:
    lw      v1, 0x0004(a0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    blez    v1, lbl_80097C40
    nop
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_80097BA4:
    blez    a2, lbl_80097C30
    or      a1, $zero, $zero           # a1 = 00000000
    sll     t6, v0,  5
    mtc1    t6, $f4                    # $f4 = 0.00
    or      v1, $zero, $zero           # v1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    cvt.s.w $f0, $f4
lbl_80097BC0:
    multu   v0, a2
    mtc1    a3, $f6                    # $f6 = 0.00
    lw      t7, 0x000C(a0)             # 0000000C
    addiu   a1, a1, 0x0001             # a1 = 00000001
    cvt.s.w $f8, $f6
    addu    t8, t7, v1
    addiu   a3, a3, 0x0020             # a3 = 00000020
    mflo    t9
    sll     t0, t9,  3
    addu    t1, t8, t0
    swc1    $f8, 0x0000(t1)            # 00000000
    lw      t4, 0x0000(a0)             # 00000000
    lw      t2, 0x000C(a0)             # 0000000C
    addiu   t5, t4, 0x0001             # t5 = 00000001
    multu   v0, t5
    addu    t3, t2, v1
    addiu   v1, v1, 0x0008             # v1 = 00000008
    mflo    t6
    sll     t7, t6,  3
    addu    t9, t3, t7
    swc1    $f0, 0x0004(t9)            # 00000004
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000002
    slt     $at, a1, a2
    bne     $at, $zero, lbl_80097BC0
    nop
    lw      v1, 0x0004(a0)             # 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000009
lbl_80097C30:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, v0, v1
    bne     $at, $zero, lbl_80097BA4
    nop
lbl_80097C40:
    jr      $ra
    nop


func_80097C48:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_80001CCC
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    lw      a0, 0x000C(s0)             # 0000000C
    beql    a0, $zero, lbl_80097C7C
    lw      a0, 0x0010(s0)             # 00000010
    jal     func_800CDB00
    nop
    sw      $zero, 0x000C(s0)          # 0000000C
    lw      a0, 0x0010(s0)             # 00000010
lbl_80097C7C:
    beql    a0, $zero, lbl_80097C94
    lw      a0, 0x0014(s0)             # 00000014
    jal     func_800CDB00
    nop
    sw      $zero, 0x0010(s0)          # 00000010
    lw      a0, 0x0014(s0)             # 00000014
lbl_80097C94:
    beql    a0, $zero, lbl_80097CAC
    lw      a0, 0x00D8(s0)             # 000000D8
    jal     func_800CDB00
    nop
    sw      $zero, 0x0014(s0)          # 00000014
    lw      a0, 0x00D8(s0)             # 000000D8
lbl_80097CAC:
    beql    a0, $zero, lbl_80097CC4
    lw      $ra, 0x001C($sp)
    jal     func_800CDB00
    nop
    sw      $zero, 0x00D8(s0)          # 000000D8
    lw      $ra, 0x001C($sp)
lbl_80097CC4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80097CD4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80002E80              # bzero
    addiu   a1, $zero, 0x00E0          # a1 = 000000E0
    lw      v0, 0x002C($sp)
    lw      a1, 0x0030($sp)
    sw      $zero, 0x0008(s0)          # 00000008
    sll     t6, v0,  3
    addiu   t7, t6, 0x0008             # t7 = 00000008
    addiu   v1, a1, 0x0001             # v1 = 00000001
    multu   t7, v1
    sw      v0, 0x0000(s0)             # 00000000
    sw      a1, 0x0004(s0)             # 00000004
    sw      v1, 0x0024($sp)
    mflo    a0
    jal     func_800CDA20
    nop
    lw      v1, 0x0024($sp)
    sw      v0, 0x000C(s0)             # 0000000C
    lw      t8, 0x002C($sp)
    sll     t9, t8,  4
    addiu   t0, t9, 0x0010             # t0 = 00000010
    multu   t0, v1
    mflo    a0
    sw      a0, 0x0020($sp)
    jal     func_800CDA20
    nop
    lw      a0, 0x0020($sp)
    jal     func_800CDA20
    sw      v0, 0x0010(s0)             # 00000010
    lw      t2, 0x0000(s0)             # 00000000
    lw      t1, 0x0004(s0)             # 00000004
    sw      v0, 0x0014(s0)             # 00000014
    sll     t3, t2,  3
    addu    t3, t3, t2
    addiu   t4, t3, 0x0001             # t4 = 00000001
    multu   t1, t4
    mflo    a0
    sll     a0, a0,  3
    jal     func_800CDA20
    addiu   a0, a0, 0x0010             # a0 = 00000010
    lw      a0, 0x000C(s0)             # 0000000C
    sw      v0, 0x00D8(s0)             # 000000D8
    beq     a0, $zero, lbl_80097DBC
    nop
    lw      t5, 0x0010(s0)             # 00000010
    beq     t5, $zero, lbl_80097DBC
    nop
    lw      t6, 0x0014(s0)             # 00000014
    beq     t6, $zero, lbl_80097DBC
    nop
    bne     v0, $zero, lbl_80097E20
    nop
lbl_80097DBC:
    beql    a0, $zero, lbl_80097DD4
    lw      a0, 0x0010(s0)             # 00000010
    jal     func_800CDB00
    nop
    sw      $zero, 0x000C(s0)          # 0000000C
    lw      a0, 0x0010(s0)             # 00000010
lbl_80097DD4:
    beql    a0, $zero, lbl_80097DEC
    lw      a0, 0x0014(s0)             # 00000014
    jal     func_800CDB00
    nop
    sw      $zero, 0x0010(s0)          # 00000010
    lw      a0, 0x0014(s0)             # 00000014
lbl_80097DEC:
    beql    a0, $zero, lbl_80097E04
    lw      a0, 0x00D8(s0)             # 000000D8
    jal     func_800CDB00
    nop
    sw      $zero, 0x0014(s0)          # 00000014
    lw      a0, 0x00D8(s0)             # 000000D8
lbl_80097E04:
    beq     a0, $zero, lbl_80097E18
    nop
    jal     func_800CDB00
    nop
    sw      $zero, 0x00D8(s0)          # 000000D8
lbl_80097E18:
    b       lbl_80097E38
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80097E20:
    jal     func_800977C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80097B88
    or      a0, s0, $zero              # a0 = 00000000
    sw      $zero, 0x0008(s0)          # 00000008
    or      v0, s0, $zero              # v0 = 00000000
lbl_80097E38:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80097E4C:
    lw      v1, 0x0004(a0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    blez    v1, lbl_80097F58
    nop
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000001
lbl_80097E68:
    blez    a2, lbl_80097F48
    or      a1, $zero, $zero           # a1 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    or      t1, $zero, $zero           # t1 = 00000000
    lw      t6, 0x0008(a0)             # 00000008
lbl_80097E7C:
    bnel    t6, $zero, lbl_80097E90
    lw      v1, 0x0014(a0)             # 00000014
    b       lbl_80097E90
    lw      v1, 0x0010(a0)             # 00000010
    lw      v1, 0x0014(a0)             # 00000014
lbl_80097E90:
    multu   v0, a2
    lw      t7, 0x000C(a0)             # 0000000C
    addu    t5, v1, a3
    addu    t8, t7, t1
    mflo    t0
    sll     t9, t0,  3
    addu    t2, t8, t9
    lwc1    $f4, 0x0000(t2)            # 00000000
    sll     t6, t0,  4
    addu    t7, t5, t6
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x0000(t7)             # 00000000
    lw      t8, 0x0008(a0)             # 00000008
    bnel    t8, $zero, lbl_80097EE0
    lw      v1, 0x0014(a0)             # 00000014
    b       lbl_80097EE0
    lw      v1, 0x0010(a0)             # 00000010
    lw      v1, 0x0014(a0)             # 00000014
lbl_80097EE0:
    lw      t9, 0x0000(a0)             # 00000000
    lw      t3, 0x000C(a0)             # 0000000C
    addiu   a1, a1, 0x0001             # a1 = 00000001
    addiu   t2, t9, 0x0001             # t2 = 00000001
    multu   v0, t2
    addu    t5, t3, t1
    addu    t9, v1, a3
    addiu   a3, a3, 0x0010             # a3 = 00000010
    addiu   t1, t1, 0x0008             # t1 = 00000008
    mflo    t0
    sll     t6, t0,  3
    addu    t4, t5, t6
    lwc1    $f8, 0x0004(t4)            # 00000004
    sll     t2, t0,  4
    addu    t3, t9, t2
    trunc.w.s $f10, $f8
    mfc1    t8, $f10
    nop
    sh      t8, 0x0002(t3)             # 00000002
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a2, a2, 0x0001             # a2 = 00000002
    slt     $at, a1, a2
    bnel    $at, $zero, lbl_80097E7C
    lw      t6, 0x0008(a0)             # 00000008
    lw      v1, 0x0004(a0)             # 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_80097F48:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, v0, v1
    bne     $at, $zero, lbl_80097E68
    nop
lbl_80097F58:
    jr      $ra
    nop


func_80097F60:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    lui     t0, 0x8010                 # t0 = 80100000
    lw      v0, 0x0000(t6)             # 00000000
    or      v1, v0, $zero              # v1 = 00000000
    addiu   t0, t0, 0xC5A0             # t0 = 800FC5A0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    sw      v0, 0x003C($sp)
    sw      a0, 0x0040($sp)
    jal     func_80097E4C
    sw      t0, 0x0018($sp)
    lw      v0, 0x003C($sp)
    lw      a0, 0x0040($sp)
    lw      t0, 0x0018($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    or      v1, v0, $zero              # v1 = 00000000
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0007             # t8 = DA380007
    addiu   t9, a0, 0x0018             # t9 = 00000018
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    addiu   v0, v0, 0x0008             # v0 = 00000008
    or      a1, v0, $zero              # a1 = 00000008
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t3, a0, 0x0058             # t3 = 00000058
    sw      t3, 0x0004(a1)             # 0000000C
    sw      t2, 0x0000(a1)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000010
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0028             # t4 = DB060028
    or      a2, v0, $zero              # a2 = 00000010
    sw      t4, 0x0000(a2)             # 00000010
    lw      t5, 0x0008(a0)             # 00000008
    addiu   v0, v0, 0x0008             # v0 = 00000018
    or      v1, v0, $zero              # v1 = 00000018
    bne     t5, $zero, lbl_80098018
    lui     t8, 0xDB06                 # t8 = DB060000
    lw      t6, 0x0010(a0)             # 00000010
    b       lbl_80098020
    sw      t6, 0x0004(a2)             # 00000014
lbl_80098018:
    lw      t7, 0x0014(a0)             # 00000014
    sw      t7, 0x0004(a2)             # 00000014
lbl_80098020:
    ori     t8, t8, 0x002C             # t8 = DB06002C
    sw      t8, 0x0000(v1)             # 00000018
    lw      t9, 0x00DC(a0)             # 000000DC
    addiu   v0, v0, 0x0008             # v0 = 00000020
    or      a1, v0, $zero              # a1 = 00000020
    sw      t9, 0x0004(v1)             # 0000001C
    addiu   v0, v0, 0x0008             # v0 = 00000028
    sw      t1, 0x0000(a1)             # 00000020
    sw      t0, 0x0004(a1)             # 00000024
    or      a2, v0, $zero              # a2 = 00000028
    sw      t1, 0x0000(a2)             # 00000028
    lw      t2, 0x00D8(a0)             # 000000D8
    addiu   v0, v0, 0x0008             # v0 = 00000030
    or      a3, v0, $zero              # a3 = 00000030
    sw      t2, 0x0004(a2)             # 0000002C
    lui     t3, 0xE700                 # t3 = E7000000
    sw      t3, 0x0000(a3)             # 00000030
    addiu   v0, v0, 0x0008             # v0 = 00000038
    sw      $zero, 0x0004(a3)          # 00000034
    lw      t4, 0x0008(a0)             # 00000008
    xori    t5, t4, 0x0001             # t5 = DB060029
    sw      t5, 0x0008(a0)             # 00000008
    lw      t6, 0x0044($sp)
    sw      v0, 0x0000(t6)             # 00000000
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8009808C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sdc1    $f22, 0x0010($sp)
    sdc1    $f20, 0x0008($sp)
    lw      v1, 0x0004(a0)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    addiu   v1, v1, 0x0001             # v1 = 00000001
    blezl   v1, lbl_800981B4
    ldc1    $f20, 0x0008($sp)
    lw      a2, 0x0000(a0)             # 00000000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f18                  # $f18 = 100.00
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a3, a2, 0x0001             # a3 = 00000001
lbl_800980C8:
    blez    a3, lbl_800981A0
    or      a1, $zero, $zero           # a1 = 00000000
    or      t0, $zero, $zero           # t0 = 00000000
lbl_800980D4:
    multu   v0, a3
    lw      v1, 0x000C(a0)             # 0000000C
    sll     t9, a2,  5
    addiu   a1, a1, 0x0001             # a1 = 00000001
    addu    t6, v1, t0
    addu    t2, v1, t9
    lwc1    $f4, 0x0048(t2)            # 00000048
    lwc1    $f8, 0x004C(t2)            # 0000004C
    mflo    t7
    sll     t8, t7,  3
    addu    t1, t6, t8
    lwc1    $f2, 0x0000(t1)            # 00000000
    lwc1    $f6, 0x0004(t1)            # 00000004
    sub.s   $f0, $f2, $f4
    sub.s   $f12, $f6, $f8
    mul.s   $f10, $f0, $f0
    nop
    mul.s   $f4, $f12, $f12
    add.s   $f6, $f10, $f4
    div.s   $f16, $f6, $f18
    c.eq.s  $f20, $f16
    mov.s   $f14, $f16
    bc1t    lbl_8009818C
    nop
    c.lt.s  $f16, $f22
    nop
    bc1fl   lbl_8009814C
    div.s   $f8, $f0, $f14
    mov.s   $f14, $f22
    div.s   $f8, $f0, $f14
lbl_8009814C:
    div.s   $f6, $f12, $f14
    sub.s   $f10, $f2, $f8
    swc1    $f10, 0x0000(t1)           # 00000000
    lw      t5, 0x0000(a0)             # 00000000
    lw      t3, 0x000C(a0)             # 0000000C
    addiu   t7, t5, 0x0001             # t7 = 00000001
    multu   v0, t7
    addu    t4, t3, t0
    mflo    t6
    sll     t8, t6,  3
    addu    t1, t4, t8
    lwc1    $f4, 0x0004(t1)            # 00000004
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x0004(t1)            # 00000004
    lw      a2, 0x0000(a0)             # 00000000
    addiu   a3, a2, 0x0001             # a3 = 00000001
lbl_8009818C:
    slt     $at, a1, a3
    bne     $at, $zero, lbl_800980D4
    addiu   t0, t0, 0x0008             # t0 = 00000008
    lw      v1, 0x0004(a0)             # 00000004
    addiu   v1, v1, 0x0001             # v1 = 00000002
lbl_800981A0:
    addiu   v0, v0, 0x0001             # v0 = 00000001
    slt     $at, v0, v1
    bne     $at, $zero, lbl_800980C8
    nop
    ldc1    $f20, 0x0008($sp)
lbl_800981B4:
    ldc1    $f22, 0x0010($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_800981C0:
    sw      a0, 0x0000($sp)
    jr      $ra
    nop


func_800981CC:
    sw      a0, 0x0000($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop
    nop
