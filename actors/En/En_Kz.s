.section .text
func_80AD5D60:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a1, 0x0004($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x73C0(t6)            # 800F8C40
    lw      t7, 0x00A4(v0)             # 8011A674
    lw      v1, 0x1C44(a0)             # 00001C44
    and     t8, t6, t7
    beql    t8, $zero, lbl_80AD5D94
    lhu     t9, 0x0EDA(v0)             # 8011B4AA
    jr      $ra
    addiu   v0, $zero, 0x402B          # v0 = 0000402B
lbl_80AD5D90:
    lhu     t9, 0x0EDA(v0)             # 00004F05
lbl_80AD5D94:
    addiu   t1, $zero, 0x001D          # t1 = 0000001D
    addiu   v0, $zero, 0x401A          # v0 = 0000401A
    andi    t0, t9, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_80AD5DB4
    sb      t1, 0x0683(v1)             # 00000683
    jr      $ra
    addiu   v0, $zero, 0x401C          # v0 = 0000401C
lbl_80AD5DB0:
    sb      t1, 0x0683(v1)             # 00000683
lbl_80AD5DB4:
    jr      $ra
    nop


func_80AD5DBC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    sw      a1, 0x0004($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    lbu     t6, -0x709F(t6)            # 800F8F61
    lw      v1, 0x1C44(a0)             # 00001C44
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    addu    t7, v0, t6
    lbu     t8, 0x0074(t7)             # 00000074
    slti    $at, t8, 0x0035
    bnel    $at, $zero, lbl_80AD5E60
    sb      t9, 0x0683(v1)             # 00000683
    lhu     t9, 0x0F1E(v0)             # 8011B4EE
    lui     t1, 0x8010                 # t1 = 80100000
    lui     t2, 0x8010                 # t2 = 80100000
    andi    t0, t9, 0x0200             # t0 = 00000000
    bne     t0, $zero, lbl_80AD5E30
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t1, -0x7408(t1)            # 800F8BF8
    lbu     t2, -0x733E(t2)            # 800F8CC2
    lhu     t4, 0x009C(v0)             # 8011A66C
    sllv    t3, t1, t2
    and     t5, t3, t4
    beq     t5, $zero, lbl_80AD5E28
    nop
    jr      $ra
    addiu   v0, $zero, 0x401F          # v0 = 0000401F
lbl_80AD5E28:
    jr      $ra
    addiu   v0, $zero, 0x4012          # v0 = 00004012
lbl_80AD5E30:
    lw      t6, -0x73F0(t6)            # 800F8C10
    lw      t7, 0x00A4(v0)             # 000040B6
    addiu   v1, $zero, 0x401A          # v1 = 0000401A
    and     t8, t6, t7
    beq     t8, $zero, lbl_80AD5E54
    nop
    addiu   v1, $zero, 0x4045          # v1 = 00004045
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00004045
lbl_80AD5E54:
    jr      $ra
    andi    v0, v1, 0xFFFF             # v0 = 00004045
lbl_80AD5E5C:
    sb      t9, 0x0683(v1)             # 000046C8
lbl_80AD5E60:
    addiu   v0, $zero, 0x4012          # v0 = 00004012
    jr      $ra
    nop


func_80AD5E6C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    jal     func_800597C0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80AD5E9C
    andi    v1, v0, 0xFFFF             # v1 = 00000000
    beq     $zero, $zero, lbl_80AD5EC4
    or      v0, v1, $zero              # v0 = 00000000
lbl_80AD5E9C:
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A2C(t6)            # 8011A5D4
    bne     t6, $zero, lbl_80AD5EBC
    nop
    jal     func_80AD5DBC
    nop
    beq     $zero, $zero, lbl_80AD5EC8
    lw      $ra, 0x0014($sp)
lbl_80AD5EBC:
    jal     func_80AD5D60
    nop
lbl_80AD5EC4:
    lw      $ra, 0x0014($sp)
lbl_80AD5EC8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AD5ED4:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sh      t6, 0x0022($sp)
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x0028($sp)
    sltiu   $at, v0, 0x000A
    lw      v1, 0x002C($sp)
    beq     $at, $zero, lbl_80AD60AC
    lw      a2, 0x0028($sp)
    sll     t7, v0,  2
    lui     $at, %hi(var_80AD70E0)     # $at = 80AD0000
    addu    $at, $at, t7
    lw      t7, %lo(var_80AD70E0)($at)
    jr      t7
    nop
var_80AD5F20:
    sh      $zero, 0x0022($sp)
    lhu     v0, 0x010E(v1)             # 0000010E
    addiu   $at, $zero, 0x4012         # $at = 00004012
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    beq     v0, $at, lbl_80AD5F50
    addiu   $at, $zero, 0x401B         # $at = 0000401B
    beq     v0, $at, lbl_80AD5F64
    addiu   $at, $zero, 0x401F         # $at = 0000401F
    beq     v0, $at, lbl_80AD5F6C
    nop
    beq     $zero, $zero, lbl_80AD60B0
    lh      v0, 0x0022($sp)
lbl_80AD5F50:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0F1E(v0)             # 8011B4EE
    ori     t9, t8, 0x0200             # t9 = 00000200
    sh      t9, 0x0F1E(v0)             # 8011B4EE
lbl_80AD5F64:
    beq     $zero, $zero, lbl_80AD60AC
    sh      t0, 0x0022($sp)
lbl_80AD5F6C:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t1, 0x0F1E(v0)             # 8011B4EE
    ori     t2, t1, 0x0200             # t2 = 00000200
    beq     $zero, $zero, lbl_80AD60AC
    sh      t2, 0x0F1E(v0)             # 8011B4EE
var_80AD5F84:
    lhu     v0, 0x010E(v1)             # 0000010E
    addiu   $at, $zero, 0x4014         # $at = 00004014
    beq     v0, $at, lbl_80AD5FE0
    addiu   $at, $zero, 0x401B         # $at = 0000401B
    bnel    v0, $at, lbl_80AD60B0
    lh      v0, 0x0022($sp)
    lbu     t3, 0x01F8(v1)             # 000001F8
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t3, $zero, lbl_80AD60AC
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lui     t4, 0x8010                 # t4 = 80100000
    addiu   t4, t4, 0x43A8             # t4 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t4, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      v1, 0x002C($sp)
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    beq     $zero, $zero, lbl_80AD60AC
    sb      t5, 0x01F8(v1)             # 000001F8
lbl_80AD5FE0:
    lbu     t6, 0x01F8(v1)             # 000001F8
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    bne     t6, $zero, lbl_80AD60AC
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lui     t7, 0x8010                 # t7 = 80100000
    addiu   t7, t7, 0x43A8             # t7 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t7, 0x0014($sp)
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lw      v1, 0x002C($sp)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     $zero, $zero, lbl_80AD60AC
    sb      t8, 0x01F8(v1)             # 000001F8
var_80AD6024:
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x0028($sp)
    lw      v1, 0x002C($sp)
    beq     v0, $zero, lbl_80AD60AC
    lw      a2, 0x0028($sp)
    lhu     t9, 0x010E(v1)             # 0000010E
    addiu   $at, $zero, 0x4014         # $at = 00004014
    lui     t0, 0x0001                 # t0 = 00010000
    bne     t9, $at, lbl_80AD60AC
    addu    t0, t0, a2
    lbu     t0, 0x04BD(t0)             # 000104BD
    addiu   t2, $zero, 0x4016          # t2 = 00004016
    andi    a1, t2, 0xFFFF             # a1 = 00004016
    bne     t0, $zero, lbl_80AD6070
    or      a0, a2, $zero              # a0 = 00000000
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    beq     $zero, $zero, lbl_80AD60AC
    sh      t1, 0x0022($sp)
lbl_80AD6070:
    jal     func_800DCE80
    sh      t2, 0x010E(v1)             # 0000010E
    beq     $zero, $zero, lbl_80AD60B0
    lh      v0, 0x0022($sp)
var_80AD6080:
    jal     func_800D6110
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AD60AC
    addiu   t3, $zero, 0x0002          # t3 = 00000002
    beq     $zero, $zero, lbl_80AD60AC
    sh      t3, 0x0022($sp)
var_80AD6098:
    jal     func_800D6110
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80AD60AC
    addiu   t4, $zero, 0x0003          # t4 = 00000003
    sh      t4, 0x0022($sp)
lbl_80AD60AC:
    lh      v0, 0x0022($sp)
lbl_80AD60B0:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AD60C0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x01FC(a2)             # 000001FC
    bne     v0, $zero, lbl_80AD60E0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80AD60E8
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80AD60E0:
    sh      t6, 0x01FC(a2)             # 000001FC
    lh      v1, 0x01FC(a2)             # 000001FC
lbl_80AD60E8:
    bnel    v1, $zero, lbl_80AD612C
    lw      $ra, 0x0014($sp)
    lh      t7, 0x0200(a2)             # 00000200
    addiu   a0, $zero, 0x001E          # a0 = 0000001E
    addiu   a1, $zero, 0x001E          # a1 = 0000001E
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x0200(a2)             # 00000200
    lh      t9, 0x0200(a2)             # 00000200
    slti    $at, t9, 0x0003
    bnel    $at, $zero, lbl_80AD612C
    lw      $ra, 0x0014($sp)
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x01FC(a2)             # 000001FC
    sh      $zero, 0x0200(a2)          # 00000200
    lw      $ra, 0x0014($sp)
lbl_80AD612C:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AD6138:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a2, 0x0038($sp)
    sw      a3, 0x003C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80022930
    sw      t6, 0x002C($sp)
    beq     v0, $zero, lbl_80AD6188
    or      a0, s1, $zero              # a0 = 00000000
    lw      t8, 0x0038($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    beq     $zero, $zero, lbl_80AD6258
    sh      t7, 0x0000(t8)             # 00000000
lbl_80AD6188:
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x002A            # a2 = FFFFFFFA
    jal     func_80022B14
    addiu   a3, $sp, 0x0028            # a3 = FFFFFFF8
    lh      v0, 0x002A($sp)
    slti    $at, v0, 0xFFE2
    bne     $at, $zero, lbl_80AD61C4
    slti    $at, v0, 0x0169
    beq     $at, $zero, lbl_80AD61C4
    lh      v0, 0x0028($sp)
    slti    $at, v0, 0xFFF6
    bne     $at, $zero, lbl_80AD61C4
    slti    $at, v0, 0x00F1
    bne     $at, $zero, lbl_80AD61CC
    lw      t9, 0x0038($sp)
lbl_80AD61C4:
    beq     $zero, $zero, lbl_80AD6258
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD61CC:
    lh      t0, 0x0000(t9)             # 00000000
    lw      t9, 0x0044($sp)
    beq     t0, $zero, lbl_80AD61F4
    or      a0, s1, $zero              # a0 = 00000000
    jalr    $ra, t9
    or      a1, s0, $zero              # a1 = 00000000
    lw      t1, 0x0038($sp)
    sh      v0, 0x0000(t1)             # 00000000
    beq     $zero, $zero, lbl_80AD6258
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD61F4:
    lwc1    $f4, 0x0090(s0)            # 00000090
    lw      a1, 0x002C($sp)
    addiu   a0, s0, 0x0008             # a0 = 00000008
    swc1    $f4, 0x0024($sp)
    jal     func_80063EB8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    swc1    $f0, 0x0090(s0)            # 00000090
    lw      a2, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
    bne     v0, $zero, lbl_80AD6238
    lwc1    $f8, 0x0024($sp)
    lwc1    $f6, 0x0024($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    beq     $zero, $zero, lbl_80AD6258
    swc1    $f6, 0x0090(s0)            # 00000090
lbl_80AD6238:
    swc1    $f8, 0x0090(s0)            # 00000090
    lw      t9, 0x0040($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    sh      v0, 0x010E(s0)             # 0000010E
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD6258:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AD626C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lw      t0, 0x1C44(t6)             # 00001C44
    addiu   a1, t0, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sw      t0, 0x002C($sp)
    lh      t7, 0x00B6(s0)             # 000000B6
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80AD7108)     # $at = 80AD0000
    mtc1    t7, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    lwc1    $f16, %lo(var_80AD7108)($at)
    lui     t3, %hi(func_80AD5E6C)     # t3 = 80AD0000
    lw      t0, 0x002C($sp)
    addiu   t3, t3, %lo(func_80AD5E6C) # t3 = 80AD5E6C
    cvt.s.w $f10, $f8
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x01D0             # a2 = 000001D0
    lui     a3, 0x43AA                 # a3 = 43AA0000
    sub.s   $f2, $f6, $f10
    abs.s   $f0, $f2
    c.lt.s  $f16, $f0
    nop
    bc1fl   lbl_80AD62FC
    lw      t1, 0x0004(s0)             # 00000004
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t9, t8, $at
    beq     $zero, $zero, lbl_80AD646C
    sw      t9, 0x0004(s0)             # 00000004
    lw      t1, 0x0004(s0)             # 00000004
lbl_80AD62FC:
    lui     t4, %hi(func_80AD5ED4)     # t4 = 80AD0000
    addiu   t4, t4, %lo(func_80AD5ED4) # t4 = 80AD5ED4
    ori     t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
    sw      t0, 0x002C($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    jal     func_80AD6138
    lw      a0, 0x0034($sp)
    beq     v0, $zero, lbl_80AD646C
    lw      t0, 0x002C($sp)
    lhu     t5, 0x010E(s0)             # 0000010E
    addiu   $at, $zero, 0x401A         # $at = 0000401A
    lui     v1, 0x8012                 # v1 = 80120000
    bne     t5, $at, lbl_80AD6388
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t6, 0x0EDA(v1)             # 8011B4AA
    lw      a0, 0x0034($sp)
    andi    t7, t6, 0x0008             # t7 = 00000000
    bne     t7, $zero, lbl_80AD6388
    nop
    jal     func_80022B04
    sw      t0, 0x002C($sp)
    addiu   $at, $zero, 0x001D         # $at = 0000001D
    bne     v0, $at, lbl_80AD6374
    lw      t0, 0x002C($sp)
    addiu   t8, $zero, 0x401B          # t8 = 0000401B
    sh      t8, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80AD637C
    sb      $zero, 0x01F8(s0)          # 000001F8
lbl_80AD6374:
    addiu   t9, $zero, 0x401A          # t9 = 0000401A
    sh      t9, 0x010E(s0)             # 0000010E
lbl_80AD637C:
    lhu     t1, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80AD646C
    sh      t1, 0x010E(t0)             # 0000010E
lbl_80AD6388:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t2, 0x0004(v1)             # 8011A5D4
    lui     t3, 0x8010                 # t3 = 80100000
    bnel    t2, $zero, lbl_80AD6470
    lw      $ra, 0x0024($sp)
    lbu     t3, -0x709F(t3)            # 800F8F61
    addiu   $at, $zero, 0x0034         # $at = 00000034
    lw      a0, 0x0034($sp)
    addu    t4, v1, t3
    lbu     t5, 0x0074(t4)             # 00000074
    bnel    t5, $at, lbl_80AD63F0
    lhu     t8, 0x0F1E(v1)             # 8011B4EE
    jal     func_80022B04
    sw      t0, 0x002C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    bne     v0, $at, lbl_80AD63EC
    lw      t0, 0x002C($sp)
    addiu   t7, $zero, 0x4014          # t7 = 00004014
    sh      t7, 0x010E(s0)             # 0000010E
    sb      $zero, 0x01F8(s0)          # 000001F8
    beq     $zero, $zero, lbl_80AD646C
    sh      t7, 0x010E(t0)             # 0000010E
lbl_80AD63EC:
    lhu     t8, 0x0F1E(v1)             # 8011B4EE
lbl_80AD63F0:
    lui     t1, 0x8010                 # t1 = 80100000
    lui     t7, 0x8010                 # t7 = 80100000
    andi    t9, t8, 0x0200             # t9 = 00000000
    beq     t9, $zero, lbl_80AD6438
    lui     t8, 0x8010                 # t8 = 80100000
    lw      t1, -0x73F0(t1)            # 800F8C10
    lw      t2, 0x00A4(v1)             # 8011A674
    addiu   t5, $zero, 0x401A          # t5 = 0000401A
    addiu   t4, $zero, 0x4045          # t4 = 00004045
    and     t3, t1, t2
    beql    t3, $zero, lbl_80AD642C
    sh      t5, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80AD642C
    sh      t4, 0x010E(s0)             # 0000010E
    sh      t5, 0x010E(s0)             # 0000010E
lbl_80AD642C:
    lhu     t6, 0x010E(s0)             # 0000010E
    beq     $zero, $zero, lbl_80AD646C
    sh      t6, 0x010E(t0)             # 0000010E
lbl_80AD6438:
    lw      t7, -0x7408(t7)            # 800F8BF8
    lbu     t8, -0x733E(t8)            # 800F8CC2
    lhu     t1, 0x009C(v1)             # 8011A66C
    addiu   t4, $zero, 0x4012          # t4 = 00004012
    sllv    t9, t7, t8
    and     t2, t9, t1
    beq     t2, $zero, lbl_80AD6460
    addiu   t3, $zero, 0x401F          # t3 = 0000401F
    beq     $zero, $zero, lbl_80AD6464
    sh      t3, 0x010E(s0)             # 0000010E
lbl_80AD6460:
    sh      t4, 0x010E(s0)             # 0000010E
lbl_80AD6464:
    lhu     t5, 0x010E(s0)             # 0000010E
    sh      t5, 0x010E(t0)             # 0000010E
lbl_80AD646C:
    lw      $ra, 0x0024($sp)
lbl_80AD6470:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AD6480:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lh      a2, 0x001C(s0)             # 0000001C
    ori     $at, $zero, 0xFF00         # $at = 0000FF00
    lui     t6, 0x0001                 # t6 = 00010000
    andi    a2, a2, 0xFF00             # a2 = 00000000
    bne     a2, $at, lbl_80AD64B0
    addu    t6, t6, a1
    beq     $zero, $zero, lbl_80AD65D8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD64B0:
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t7, a2,  8
    sll     t8, t7,  3
    addu    a0, t6, t8
    lw      v1, 0x0004(a0)             # 00000004
    lui     t2, 0x8012                 # t2 = 80120000
    lh      t4, 0x01FA(s0)             # 000001FA
    sll     t9, v1,  4
    srl     t0, t9, 28
    sll     t1, t0,  2
    addu    t2, t2, t1
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t2, 0x0C38(t2)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t3, v1, $at
    sll     t5, t4,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t5, t5, t4
    addu    v0, t2, t3
    addu    v0, v0, $at
    sll     t5, t5,  1
    addu    v0, v0, t5
    lh      t7, 0x0000(v0)             # 00000000
    lh      t6, 0x0004(v0)             # 00000004
    lwc1    $f8, 0x0024(s0)            # 00000024
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f10                   # $f10 = 0.00
    lwc1    $f18, 0x002C(s0)           # 0000002C
    cvt.s.w $f6, $f4
    sw      a0, 0x0034($sp)
    cvt.s.w $f16, $f10
    sub.s   $f12, $f6, $f8
    sub.s   $f14, $f16, $f18
    swc1    $f12, 0x002C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0028($sp)
    lui     $at, %hi(var_80AD710C)     # $at = 80AD0000
    lwc1    $f4, %lo(var_80AD710C)($at)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sw      t9, 0x0010($sp)
    mul.s   $f6, $f0, $f4
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    trunc.w.s $f8, $f6
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lwc1    $f12, 0x002C($sp)
    lwc1    $f14, 0x0028($sp)
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f10, $f12, $f12
    mtc1    $at, $f4                   # $f4 = 10.00
    or      v0, $zero, $zero           # v0 = 00000000
    mul.s   $f16, $f14, $f14
    add.s   $f18, $f10, $f16
    c.lt.s  $f18, $f4
    nop
    bc1f    lbl_80AD65D8
    nop
    lh      t0, 0x01FA(s0)             # 000001FA
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x01FA(s0)             # 000001FA
    lw      t3, 0x0034($sp)
    lh      t2, 0x01FA(s0)             # 000001FA
    lbu     t4, 0x0000(t3)             # 00000000
    slt     $at, t2, t4
    bne     $at, $zero, lbl_80AD65D0
    nop
    sh      $zero, 0x01FA(s0)          # 000001FA
lbl_80AD65D0:
    beq     $zero, $zero, lbl_80AD65D8
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AD65D8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80AD65EC:
    or      a2, a1, $zero              # a2 = 00000000
    lh      v1, 0x001C(a0)             # 0000001C
    ori     $at, $zero, 0xFF00         # $at = 0000FF00
    lui     t6, 0x0001                 # t6 = 00010000
    andi    v1, v1, 0xFF00             # v1 = 00000000
    bne     v1, $at, lbl_80AD6610
    addu    t6, t6, a2
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AD6610:
    lw      t6, 0x1E08(t6)             # 00011E08
    sra     t7, v1,  8
    sll     t8, t7,  3
    addu    a1, t6, t8
    lw      t0, 0x0004(a1)             # 00000004
    lui     t3, 0x8012                 # t3 = 80120000
    lbu     t5, 0x0000(a1)             # 00000000
    sll     t9, t0,  4
    srl     t1, t9, 28
    sll     t2, t1,  2
    addu    t3, t3, t2
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t4, t0, $at
    sll     t7, t5,  2
    lui     $at, 0x8000                # $at = 80000000
    subu    t7, t7, t5
    addu    a3, t3, t4
    addu    a3, a3, $at
    sll     t7, t7,  1
    addu    a3, a3, t7
    lh      t6, -0x0006(a3)            # FFFFFFFA
    addiu   a3, a3, 0xFFFA             # a3 = FFFFFFFA
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0024(a0)            # 00000024
    lh      t8, 0x0002(a3)             # FFFFFFFC
    mtc1    t8, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0028(a0)           # 00000028
    lh      t9, 0x0004(a3)             # FFFFFFFE
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x002C(a0)           # 0000002C
    jr      $ra
    nop


func_80AD66B4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x0206             # t6 = 00000206
    addiu   t7, s0, 0x024E             # t7 = 0000024E
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x86D0             # a2 = 060086D0
    sw      a1, 0x0044($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    or      a2, $zero, $zero           # a2 = 00000000
    mfc1    a1, $f0
    mfc1    a3, $f0
    jal     func_8001EC20
    nop
    addiu   a1, s0, 0x0184             # a1 = 00000184
    sw      a1, 0x0040($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80AD7030)      # a3 = 80AD0000
    lw      a1, 0x0040($sp)
    addiu   a3, a3, %lo(var_80AD7030)  # a3 = 80AD7030
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, %hi(var_80AD705C)      # a2 = 80AD0000
    addiu   a2, a2, %lo(var_80AD705C)  # a2 = 80AD705C
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, $zero, $zero           # a1 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sb      t9, 0x001F(s0)             # 0000001F
    sh      $zero, 0x01D0(s0)          # 000001D0
    lui     a1, %hi(var_80AD7068)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD7068)  # a1 = 80AD7068
    lw      a0, 0x0044($sp)
    jal     func_80027C98
    or      a2, $zero, $zero           # a2 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x0EDA(v0)             # 8011B4AA
    or      a0, s0, $zero              # a0 = 00000000
    andi    t1, t0, 0x0008             # t1 = 00000000
    beql    t1, $zero, lbl_80AD67B8
    lw      t2, 0x0004(v0)             # 8011A5D4
    jal     func_80AD65EC
    or      a1, s1, $zero              # a1 = 00000000
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lw      t2, 0x0004(v0)             # 8011A5D4
lbl_80AD67B8:
    lui     t7, %hi(func_80AD686C)     # t7 = 80AD0000
    addiu   t7, t7, %lo(func_80AD686C) # t7 = 80AD686C
    bnel    t2, $zero, lbl_80AD682C
    sw      t7, 0x0180(s0)             # 00000180
    lhu     t3, 0x0F1E(v0)             # 8011B4EE
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    andi    t4, t3, 0x0100             # t4 = 00000000
    bne     t4, $zero, lbl_80AD6818
    nop
    lwc1    $f4, 0x0024(s0)            # 00000024
    addiu   t5, $zero, 0x04FF          # t5 = 000004FF
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s0)            # 00000028
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x00EF          # a3 = 000000EF
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      t5, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
lbl_80AD6818:
    lui     t6, %hi(func_80AD6BD8)     # t6 = 80AD0000
    addiu   t6, t6, %lo(func_80AD6BD8) # t6 = 80AD6BD8
    beq     $zero, $zero, lbl_80AD682C
    sw      t6, 0x0180(s0)             # 00000180
    sw      t7, 0x0180(s0)             # 00000180
lbl_80AD682C:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80AD6840:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0184             # a1 = 00000184
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AD686C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0024($sp)
    bne     t6, $at, lbl_80AD68BC
    addiu   a1, s0, 0x0296             # a1 = 00000296
    lui     a1, %hi(var_80AD7068)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD7068)  # a1 = 80AD7068
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lui     t7, %hi(func_80AD68DC)     # t7 = 80AD0000
    addiu   t7, t7, %lo(func_80AD68DC) # t7 = 80AD68DC
    sh      $zero, 0x01D0(s0)          # 000001D0
    beq     $zero, $zero, lbl_80AD68C8
    sw      t7, 0x0180(s0)             # 00000180
lbl_80AD68BC:
    addiu   a2, s0, 0x02AE             # a2 = 000002AE
    jal     func_80027D30
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
lbl_80AD68C8:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AD68DC:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lui     t7, %hi(var_80AD70B0)      # t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD70B0)  # t7 = 80AD70B0
    lw      t9, 0x0000(t7)             # 80AD70B0
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AD70B4
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AD70B8
    or      a0, s1, $zero              # a0 = 00000000
    sw      t8, 0x0004(t6)             # FFFFFFF8
    jal     func_8009D0F0
    sw      t9, 0x0008(t6)             # FFFFFFFC
    sh      v0, 0x0202(s0)             # 00000202
    lh      t0, 0x07A0(s1)             # 000007A0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sh      t0, 0x0204(s0)             # 00000204
    jal     func_8009D1AC
    lh      a1, 0x0204(s0)             # 00000204
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0202(s0)             # 00000202
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t2, 0x0024(s0)             # 00000024
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFDC
    sw      t2, 0x0000(a2)             # FFFFFFE8
    lw      t1, 0x0028(s0)             # 00000028
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    sw      t1, 0x0004(a2)             # FFFFFFEC
    lw      t2, 0x002C(s0)             # 0000002C
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f16                  # $f16 = -100.00
    sw      t2, 0x0008(a2)             # FFFFFFF0
    lw      t4, 0x0008(s0)             # 00000008
    lui     $at, 0x4382                # $at = 43820000
    or      a0, s1, $zero              # a0 = 00000000
    sw      t4, 0x0000(a3)             # FFFFFFDC
    lw      t3, 0x000C(s0)             # 0000000C
    sw      t3, 0x0004(a3)             # FFFFFFE0
    lw      t4, 0x0010(s0)             # 00000010
    sw      t4, 0x0008(a3)             # FFFFFFE4
    lwc1    $f4, 0x0034($sp)
    lwc1    $f10, 0x0028($sp)
    add.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 260.00
    lwc1    $f4, 0x002C($sp)
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0034($sp)
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0028($sp)
    swc1    $f8, 0x002C($sp)
    jal     func_8009D328
    lh      a1, 0x0202(s0)             # 00000202
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     $at, %hi(var_80AD7110)     # $at = 80AD0000
    lwc1    $f10, %lo(var_80AD7110)($at)
    lui     t5, %hi(func_80AD6A08)     # t5 = 80AD0000
    addiu   t5, t5, %lo(func_80AD6A08) # t5 = 80AD6A08
    sw      t5, 0x0180(s0)             # 00000180
    swc1    $f10, 0x0068(s0)           # 00000068
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80AD6A08:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x004C($sp)
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFE8
    addiu   a3, $sp, 0x0024            # a3 = FFFFFFDC
    lui     t7, %hi(var_80AD70BC)      # t7 = 80AD0000
    addiu   t7, t7, %lo(var_80AD70BC)  # t7 = 80AD70BC
    lw      t9, 0x0000(t7)             # 80AD70BC
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 80AD70C0
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 80AD70C4
    sw      t8, 0x0004(t6)             # FFFFFFF8
    lui     $at, 0x4270                # $at = 42700000
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t1, 0x0024(s0)             # 00000024
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     $at, 0xC2C8                # $at = C2C80000
    sw      t1, 0x0000(a2)             # FFFFFFE8
    lw      t0, 0x0028(s0)             # 00000028
    mtc1    $at, $f16                  # $f16 = -100.00
    lui     $at, 0x4382                # $at = 43820000
    sw      t0, 0x0004(a2)             # FFFFFFEC
    lw      t1, 0x002C(s0)             # 0000002C
    sw      t1, 0x0008(a2)             # FFFFFFF0
    lw      t3, 0x0008(s0)             # 00000008
    sw      t3, 0x0000(a3)             # FFFFFFDC
    lw      t2, 0x000C(s0)             # 0000000C
    sw      t2, 0x0004(a3)             # FFFFFFE0
    lw      t3, 0x0010(s0)             # 00000010
    sw      t3, 0x0008(a3)             # FFFFFFE4
    lwc1    $f4, 0x0034($sp)
    lwc1    $f10, 0x0028($sp)
    lw      a0, 0x004C($sp)
    add.s   $f8, $f4, $f6
    mtc1    $at, $f6                   # $f6 = 260.00
    lwc1    $f4, 0x002C($sp)
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x0034($sp)
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0028($sp)
    swc1    $f8, 0x002C($sp)
    jal     func_8009D328
    lh      a1, 0x0202(s0)             # 00000202
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD6480
    lw      a1, 0x004C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    v0, $at, lbl_80AD6B3C
    lui     $at, 0x4150                # $at = 41500000
    lh      t4, 0x01FA(s0)             # 000001FA
    lui     a1, %hi(var_80AD7068)      # a1 = 80AD0000
    addiu   a1, a1, %lo(var_80AD7068)  # a1 = 80AD7068
    bne     t4, $zero, lbl_80AD6B38
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80027C98
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x004C($sp)
    addiu   a1, $zero, 0x001B          # a1 = 0000001B
    jal     func_800719E0
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD65EC
    lw      a1, 0x004C($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t5, 0x0EDA(v1)             # 8011B4AA
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     t7, %hi(func_80AD6B74)     # t7 = 80AD0000
    ori     t6, t5, 0x0008             # t6 = 00000008
    sh      t6, 0x0EDA(v1)             # 8011B4AA
    addiu   t7, t7, %lo(func_80AD6B74) # t7 = 80AD6B74
    sw      t7, 0x0180(s0)             # 00000180
    swc1    $f10, 0x0068(s0)           # 00000068
lbl_80AD6B38:
    lui     $at, 0x4150                # $at = 41500000
lbl_80AD6B3C:
    mtc1    $at, $f16                  # $f16 = 13.00
    lwc1    $f18, 0x0154(s0)           # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f16, $f18
    nop
    bc1fl   lbl_80AD6B64
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x687A          # a1 = 0000687A
    lw      $ra, 0x001C($sp)
lbl_80AD6B64:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    jr      $ra
    nop


func_80AD6B74:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      t6, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_8009D1AC
    lh      a1, 0x0204(t6)             # 00000204
    lw      t7, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8009D21C
    lh      a1, 0x0202(t7)             # 00000202
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t9, 0x0018($sp)
    lui     t8, %hi(func_80AD6BD8)     # t8 = 80AD0000
    addiu   t8, t8, %lo(func_80AD6BD8) # t8 = 80AD6BD8
    sw      t8, 0x0180(t9)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AD6BD8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x01D0(s0)             # 000001D0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0024($sp)
    bne     t6, $at, lbl_80AD6C24
    addiu   a1, s0, 0x0296             # a1 = 00000296
    lui     t7, %hi(func_80AD6C44)     # t7 = 80AD0000
    addiu   t7, t7, %lo(func_80AD6C44) # t7 = 80AD6C44
    sh      $zero, 0x01D0(s0)          # 000001D0
    sw      t7, 0x0180(s0)             # 00000180
    lw      a1, 0x0024($sp)
    jal     func_80AD6C44
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AD6C34
    lw      $ra, 0x001C($sp)
lbl_80AD6C24:
    addiu   a2, s0, 0x02AE             # a2 = 000002AE
    jal     func_80027D30
    addiu   a3, $zero, 0x000C          # a3 = 0000000C
    lw      $ra, 0x001C($sp)
lbl_80AD6C34:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AD6C44:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80AD6C84
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lui     t7, %hi(func_80AD6CE4)     # t7 = 80AD0000
    addiu   t7, t7, %lo(func_80AD6CE4) # t7 = 80AD6CE4
    sw      $zero, 0x0118(s0)          # 00000118
    sh      t6, 0x01D0(s0)             # 000001D0
    beq     $zero, $zero, lbl_80AD6CD0
    sw      t7, 0x0180(s0)             # 00000180
lbl_80AD6C84:
    jal     func_80022B04
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     v0, $at, lbl_80AD6CA0
    addiu   a2, $zero, 0x002D          # a2 = 0000002D
    beq     $zero, $zero, lbl_80AD6CA0
    addiu   a2, $zero, 0x0024          # a2 = 00000024
lbl_80AD6CA0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    lwc1    $f0, 0x0094(s0)            # 00000094
    lwc1    $f4, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    abs.s   $f0, $f0
    add.s   $f2, $f4, $f12
    lw      a1, 0x002C($sp)
    add.s   $f6, $f0, $f12
    mfc1    a3, $f2
    jal     func_80022BD4
    swc1    $f6, 0x0010($sp)
lbl_80AD6CD0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AD6CE4:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lh      t6, 0x01D0(a1)             # 000001D0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t7, 0x8010                 # t7 = 80100000
    bnel    t6, $at, lbl_80AD6D64
    lw      $ra, 0x0014($sp)
    lbu     t7, -0x709F(t7)            # 800F8F61
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t8, v0, t7
    lbu     t9, 0x0074(t8)             # 00000074
    addiu   $at, $zero, 0x0035         # $at = 00000035
    addiu   a0, $zero, 0x00B4          # a0 = 000000B4
    bne     t9, $at, lbl_80AD6D50
    nop
    jal     func_800738E8
    sw      a1, 0x0018($sp)
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t0, 0x13FC(v0)             # 8011B9CC
    lw      a1, 0x0018($sp)
    andi    t1, t0, 0xFFFE             # t1 = 00000000
    sh      t1, 0x13FC(v0)             # 8011B9CC
lbl_80AD6D50:
    lui     t2, %hi(func_80AD6BD8)     # t2 = 80AD0000
    addiu   t2, t2, %lo(func_80AD6BD8) # t2 = 80AD6BD8
    sh      $zero, 0x01D0(a1)          # 000001D0
    sw      t2, 0x0180(a1)             # 00000180
    lw      $ra, 0x0014($sp)
lbl_80AD6D64:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80AD6D70:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0004(v1)             # 8011A5D4
    addiu   a2, s0, 0x0184             # a2 = 00000184
    or      a1, a2, $zero              # a1 = 00000184
    bne     t6, $zero, lbl_80AD6DB4
    or      a0, s0, $zero              # a0 = 00000000
    lhu     v0, 0x0F1E(v1)             # 8011B4EE
    andi    t7, v0, 0x0100             # t7 = 00000000
    bne     t7, $zero, lbl_80AD6DB4
    ori     t8, v0, 0x0100             # t8 = 00000100
    sh      t8, 0x0F1E(v1)             # 8011B4EE
lbl_80AD6DB4:
    jal     func_80050B00
    sw      a2, 0x0024($sp)
    lw      a0, 0x0034($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0024($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_80AD60C0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AD626C
    lw      a1, 0x0034($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jalr    $ra, t9
    nop
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80AD6E20:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     a1, $at, lbl_80AD6E50
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     a1, $at, lbl_80AD6E50
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     a1, $at, lbl_80AD6EDC
lbl_80AD6E50:
    sll     t7, a1,  1
    addu    v1, t6, t7
    lh      a0, 0x0296(v1)             # 00000296
    sw      a1, 0x002C($sp)
    jal     func_800636C4              # sins?
    sw      v1, 0x001C($sp)
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    lh      t8, 0x0002(v0)             # 00000002
    lw      v1, 0x001C($sp)
    mul.s   $f10, $f0, $f8
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    sh      t0, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x02AE(v1)             # 000002AE
    lw      v0, 0x0038($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lh      t1, 0x0004(v0)             # 00000004
    mul.s   $f10, $f0, $f6
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    add.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    nop
    sh      t3, 0x0004(v0)             # 00000004
lbl_80AD6EDC:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AD6EF0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      a0, 0x0028($sp)
    addiu   a0, $sp, 0x0018            # a0 = FFFFFFF0
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0030($sp)
    sw      a3, 0x0034($sp)
    lui     t6, %hi(var_80AD70C8)      # t6 = 80AD0000
    addiu   t6, t6, %lo(var_80AD70C8)  # t6 = 80AD70C8
    lw      t8, 0x0000(t6)             # 80AD70C8
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    sw      t8, 0x0000(a0)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 80AD70CC
    sw      t7, 0x0004(a0)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 80AD70D0
    bne     a1, $at, lbl_80AD6F3C
    sw      t8, 0x0008(a0)             # FFFFFFF8
    lw      a1, 0x0038($sp)
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80AD6F3C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AD6F4C:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lw      v0, 0x0000(a1)             # 00000000
    lw      a2, 0x02C0(v0)             # 000002C0
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0020             # t7 = DB060020
    addiu   t6, a2, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(v0)             # 000002C0
    sw      t7, 0x0000(a2)             # 00000000
    lh      t8, 0x0200(s0)             # 00000200
    lui     a3, %hi(var_80AD70D4)      # a3 = 80AD0000
    lui     t4, 0x8012                 # t4 = 80120000
    sll     t9, t8,  2
    addu    a3, a3, t9
    lw      a3, %lo(var_80AD70D4)(a3)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t1, a3,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    addu    t4, t4, t3
    lw      t4, 0x0C38(t4)             # 80120C38
    and     t0, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t5, t0, t4
    addu    t6, t5, $at
    sw      t6, 0x0004(a2)             # 00000004
    lw      a0, 0x0000(a1)             # 00000000
    jal     func_8007E56C
    sw      a1, 0x0034($sp)
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t7, %hi(func_80AD6E20)     # t7 = 80AD0000
    lui     t8, %hi(func_80AD6EF0)     # t8 = 80AD0000
    addiu   t8, t8, %lo(func_80AD6EF0) # t8 = 80AD6EF0
    addiu   t7, t7, %lo(func_80AD6E20) # t7 = 80AD6E20
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0034($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80AD7010: .word 0x01640400, 0x00000009, 0x00FF0000, 0x000002C8
.word func_80AD66B4
.word func_80AD6840
.word func_80AD6D70
.word func_80AD6F4C
var_80AD7030: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00500078, 0x00000000, 0x00000000
var_80AD705C: .word 0x00000000, 0x00000000, 0xFF000000
var_80AD7068: .word \
0x0600075C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0x00000000, 0x0600075C, 0x3F800000, \
0x00000000, 0xBF800000, 0x00000000, 0xC1200000, \
0x0600046C, 0x3F800000, 0x00000000, 0xBF800000, \
0x00000000, 0xC1200000
var_80AD70B0: .word 0x00000000, 0x00000000, 0x00000000
var_80AD70BC: .word 0x00000000, 0x00000000, 0x00000000
var_80AD70C8: .word 0x45228000, 0x00000000, 0x00000000
var_80AD70D4: .word 0x06001470, 0x06001870, 0x06001C70

.section .rodata

var_80AD70E0: .word lbl_80AD60AC
.word lbl_80AD60AC
.word var_80AD5F20
.word var_80AD5F84
.word var_80AD6024
.word var_80AD6080
.word var_80AD6098
.word lbl_80AD60AC
.word lbl_80AD60AC
.word lbl_80AD60AC
var_80AD7108: .word 0x44E38000
var_80AD710C: .word 0x4622F983
var_80AD7110: .word 0x3DCCCCCD, 0x00000000, 0x00000000, 0x00000000

