.section .text
func_80B239A0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0030($sp)
    sw      a1, 0x0034($sp)
    lw      v0, 0x0034($sp)
    lui     t6, %hi(var_80B250FC)      # t6 = 80B20000
    lw      t7, 0x0030($sp)
    sll     v0, v0,  2
    addu    t6, t6, v0
    lw      t6, %lo(var_80B250FC)(t6)
    lui     t8, %hi(var_80B25120)      # t8 = 80B20000
    addiu   t8, t8, %lo(var_80B25120)  # t8 = 80B25120
    addu    v1, v0, t8
    sw      t6, 0x02F8(t7)             # 000002F8
    sw      v1, 0x0028($sp)
    jal     func_8008A194
    lw      a0, 0x0000(v1)             # 00000000
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      t9, 0x0034($sp)
    lui     t0, %hi(var_80B25144)      # t0 = 80B20000
    cvt.s.w $f6, $f4
    lui     $at, 0xC100                # $at = C1000000
    addu    t0, t0, t9
    lbu     t0, %lo(var_80B25144)(t0)
    mtc1    $at, $f8                   # $f8 = -8.00
    lw      v1, 0x0028($sp)
    lw      a0, 0x0030($sp)
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      t0, 0x0014($sp)
    lw      a1, 0x0000(v1)             # 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0188             # a0 = 00000188
    lw      v0, 0x0030($sp)
    lhu     t1, 0x02E4(v0)             # 000002E4
    andi    t2, t1, 0xFFFD             # t2 = 00000000
    sh      t2, 0x02E4(v0)             # 000002E4
    lw      $ra, 0x0024($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B23A48:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0601                 # a2 = 06010000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x0250             # t7 = 00000250
    addiu   t8, $zero, 0x0016          # t8 = 00000016
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a2, a2, 0x8968             # a2 = 06008968
    sw      a1, 0x0030($sp)
    lw      a0, 0x0044($sp)
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lui     a1, 0x0601                 # a1 = 06010000
    addiu   a1, a1, 0x9ED4             # a1 = 06009ED4
    jal     func_8008D2D4
    lw      a0, 0x0030($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x0044($sp)
    lui     a3, %hi(var_80B250D0)      # a3 = 80B20000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B250D0)  # a3 = 80B250D0
    lw      a0, 0x0044($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0044($sp)
    addiu   $at, $zero, 0x005A         # $at = 0000005A
    or      a0, s0, $zero              # a0 = 00000000
    lh      t1, 0x00A4(t0)             # 000000A4
    bne     t1, $at, lbl_80B23B1C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    b       lbl_80B23B2C
    swc1    $f4, 0x00F4(s0)            # 000000F4
lbl_80B23B1C:
    lui     $at, 0x4496                # $at = 44960000
    mtc1    $at, $f6                   # $f6 = 1200.00
    nop
    swc1    $f6, 0x00F4(s0)            # 000000F4
lbl_80B23B2C:
    lh      t2, 0x0034(s0)             # 00000034
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    addiu   t3, t2, 0x0001             # t3 = 00000001
    mtc1    t3, $f8                    # $f8 = 0.00
    lh      v0, 0x001C(s0)             # 0000001C
    sh      $zero, 0x0034(s0)          # 00000034
    cvt.s.w $f10, $f8
    andi    v0, v0, 0x00FF             # v0 = 00000000
    sh      $zero, 0x00B8(s0)          # 000000B8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    mul.s   $f18, $f10, $f16
    beq     v0, $zero, lbl_80B23B80
    swc1    $f18, 0x02EC(s0)           # 000002EC
    beq     v0, $at, lbl_80B23BAC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B23BD8
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80B23C04
    lh      t2, 0x001C(s0)             # 0000001C
lbl_80B23B80:
    jal     func_80B239A0
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80B23E68
    nop
    beq     v0, $zero, lbl_80B23C00
    lui     t4, %hi(func_80B24B04)     # t4 = 80B20000
    addiu   t4, t4, %lo(func_80B24B04) # t4 = 80B24B04
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sw      t4, 0x0130(s0)             # 00000130
    b       lbl_80B23C00
    sb      t5, 0x001F(s0)             # 0000001F
lbl_80B23BAC:
    jal     func_80B239A0
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    jal     func_80B23E68
    nop
    beq     v0, $zero, lbl_80B23C00
    lui     t6, %hi(func_80B24B04)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B24B04) # t6 = 80B24B04
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    sw      t6, 0x0130(s0)             # 00000130
    b       lbl_80B23C00
    sb      t7, 0x001F(s0)             # 0000001F
lbl_80B23BD8:
    jal     func_80B239A0
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    lui     t8, %hi(func_80B24BDC)     # t8 = 80B20000
    lui     t9, %hi(func_80B248DC)     # t9 = 80B20000
    addiu   t8, t8, %lo(func_80B24BDC) # t8 = 80B24BDC
    addiu   t9, t9, %lo(func_80B248DC) # t9 = 80B248DC
    addiu   t0, $zero, 0x0006          # t0 = 00000006
    sw      t8, 0x0130(s0)             # 00000130
    sw      t9, 0x02F8(s0)             # 000002F8
    sb      t0, 0x001F(s0)             # 0000001F
lbl_80B23C00:
    lh      t2, 0x001C(s0)             # 0000001C
lbl_80B23C04:
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f4                   # $f4 = -4.00
    andi    t3, t2, 0xFF00             # t3 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    sra     t4, t3,  8
    mtc1    $at, $f6                   # $f6 = -1.00
    lh      t1, 0x0032(s0)             # 00000032
    sll     t5, t4,  2
    addu    t5, t5, t4
    sll     t5, t5,  1
    sh      $zero, 0x02E4(s0)          # 000002E4
    sb      $zero, 0x02F4(s0)          # 000002F4
    sh      $zero, 0x02F2(s0)          # 000002F2
    sb      $zero, 0x02F6(s0)          # 000002F6
    sh      t5, 0x02F0(s0)             # 000002F0
    swc1    $f4, 0x0070(s0)            # 00000070
    swc1    $f6, 0x006C(s0)            # 0000006C
    sh      t1, 0x02E6(s0)             # 000002E6
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B23C60:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B23C8C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x5A20(t6)            # 8011A5E0
    lui     $at, 0x3FC0                # $at = 3FC00000
    beql    t6, $zero, lbl_80B23CBC
    mtc1    $at, $f0                   # $f0 = 1.50
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f0                   # $f0 = 0.75
    b       lbl_80B23CC4
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f0                   # $f0 = 250.00
lbl_80B23CBC:
    nop
    lui     $at, 0x437A                # $at = 437A0000
lbl_80B23CC4:
    mtc1    $at, $f4                   # $f4 = 250.00
    lwc1    $f2, 0x0090(a1)            # 00000090
    lui     $at, 0x4248                # $at = 42480000
    mul.s   $f6, $f4, $f0
    c.lt.s  $f6, $f2
    nop
    bc1fl   lbl_80B23CF0
    mtc1    $at, $f8                   # $f8 = 50.00
    b       lbl_80B23D28
    or      v0, $zero, $zero           # v0 = 00000000
    mtc1    $at, $f8                   # $f8 = 50.00
lbl_80B23CF0:
    nop
    c.lt.s  $f2, $f8
    nop
    bc1f    lbl_80B23D0C
    nop
    b       lbl_80B23D28
    addiu   v0, $zero, 0x0002          # v0 = 00000002
lbl_80B23D0C:
    jal     func_80021768
    nop
    beql    v0, $zero, lbl_80B23D28
    or      v0, $zero, $zero           # v0 = 00000000
    b       lbl_80B23D28
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B23D28:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B23D38:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      a3, 0x0054($sp)
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t7, -0x5A20(t7)            # 8011A5E0
    lw      t6, 0x0048($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    beq     t7, $zero, lbl_80B23D7C
    lw      t0, 0x1C44(t6)             # 00001C44
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f0                   # $f0 = 0.75
    b       lbl_80B23D88
    lui     $at, 0x437A                # $at = 437A0000
lbl_80B23D7C:
    mtc1    $at, $f0                   # $f0 = 250.00
    nop
    lui     $at, 0x437A                # $at = 437A0000
lbl_80B23D88:
    mtc1    $at, $f4                   # $f4 = 250.00
    lwc1    $f8, 0x0090(a1)            # 00000090
    lwc1    $f16, 0x0058($sp)
    mul.s   $f6, $f4, $f0
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_80B23DB4
    lwc1    $f0, 0x0094(a1)            # 00000094
    b       lbl_80B23E58
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f0, 0x0094(a1)            # 00000094
lbl_80B23DB4:
    mtc1    $zero, $f10                # $f10 = 0.00
    nop
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_80B23DD8
    neg.s   $f2, $f0
    b       lbl_80B23DD8
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_80B23DD8:
    c.lt.s  $f16, $f2
    nop
    bc1fl   lbl_80B23DF4
    lh      t8, 0x008A(a1)             # 0000008A
    b       lbl_80B23E58
    or      v0, $zero, $zero           # v0 = 00000000
    lh      t8, 0x008A(a1)             # 0000008A
lbl_80B23DF4:
    lw      a1, 0x0050($sp)
    lw      a0, 0x0048($sp)
    subu    v0, t8, a3
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B23E18
    subu    v1, $zero, v0
    b       lbl_80B23E18
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B23E18:
    slti    $at, v1, 0x2001
    bne     $at, $zero, lbl_80B23E2C
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    b       lbl_80B23E58
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B23E2C:
    addiu   t9, $sp, 0x0034            # t9 = FFFFFFEC
    sw      t9, 0x0010($sp)
    addiu   a2, t0, 0x094C             # a2 = 0000094C
    addiu   a3, $sp, 0x0038            # a3 = FFFFFFF0
    jal     func_80030AE8
    sw      $zero, 0x0014($sp)
    beql    v0, $zero, lbl_80B23E58
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_80B23E58
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B23E58:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B23E68:
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t7, -0x4B4A(t6)            # 8011B4B6
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    or      v0, $zero, $zero           # v0 = 00000000
    andi    t8, t7, 0x000F             # t8 = 00000000
    bne     t8, $at, lbl_80B23E8C
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80B23E8C:
    jr      $ra
    nop


func_80B23E94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     v0, 0x02F5(a0)             # 000002F5
    blez    v0, lbl_80B23EB0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80B23F58
    sb      t6, 0x02F5(a0)             # 000002F5
lbl_80B23EB0:
    or      a0, a1, $zero              # a0 = 00000000
    jal     func_8005A474
    sw      a1, 0x001C($sp)
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8F34             # a0 = 800F8F34
    lbu     t7, 0x000A(a0)             # 800F8F3E
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t8, v0, t7
    lbu     t9, 0x0074(t8)             # 00000074
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    lw      a1, 0x001C($sp)
    beq     v1, t9, lbl_80B23EF8
    addiu   t8, $zero, 0x0026          # t8 = 00000026
    lbu     t0, 0x000B(a0)             # 800F8F3F
    addu    t1, v0, t0
    lbu     t2, 0x0074(t1)             # 00000074
    bne     v1, t2, lbl_80B23F0C
lbl_80B23EF8:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t3, $zero, 0x01A5          # t3 = 000001A5
    b       lbl_80B23F3C
    sh      t3, 0x1E1A($at)            # 00011E1A
lbl_80B23F0C:
    lhu     t4, 0x0EEC(v0)             # 8011B4BC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    andi    t5, t4, 0x0080             # t5 = 00000000
    beq     t5, $zero, lbl_80B23F38
    addiu   t7, $zero, 0x03B4          # t7 = 000003B4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t6, $zero, 0x05F8          # t6 = 000005F8
    b       lbl_80B23F3C
    sh      t6, 0x1E1A($at)            # 00011E1A
lbl_80B23F38:
    sh      t7, 0x1E1A($at)            # 00011E1A
lbl_80B23F3C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    sb      t8, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a1
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x1E15($at)            # 00011E15
lbl_80B23F58:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B23F68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f6                   # $f6 = 50.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lh      t7, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    sh      t7, 0x00B6(s0)             # 000000B6
    bc1fl   lbl_80B23FD8
    lbu     v0, 0x02F5(s0)             # 000002F5
    jal     func_80B239A0
    addiu   a1, $zero, 0x0006          # a1 = 00000006
    mtc1    $zero, $f8                 # $f8 = 0.00
    nop
    swc1    $f8, 0x0068(s0)            # 00000068
    lbu     v0, 0x02F5(s0)             # 000002F5
lbl_80B23FD8:
    blez    v0, lbl_80B23FE8
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    b       lbl_80B24088
    sb      t8, 0x02F5(s0)             # 000002F5
lbl_80B23FE8:
    jal     func_8005A474
    or      a0, s1, $zero              # a0 = 00000000
    lui     a0, 0x8010                 # a0 = 80100000
    addiu   a0, a0, 0x8F34             # a0 = 800F8F34
    lbu     t9, 0x000A(a0)             # 800F8F3E
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    addu    t0, v0, t9
    lbu     t1, 0x0074(t0)             # 00000074
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t5, $zero, 0x01A5          # t5 = 000001A5
    beq     v1, t1, lbl_80B2402C
    addiu   t0, $zero, 0x0026          # t0 = 00000026
    lbu     t2, 0x000B(a0)             # 800F8F3F
    addu    t3, v0, t2
    lbu     t4, 0x0074(t3)             # 00000074
    bne     v1, t4, lbl_80B2403C
lbl_80B2402C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    b       lbl_80B2406C
    sh      t5, 0x1E1A($at)            # 00011E1A
lbl_80B2403C:
    lhu     t6, 0x0EEC(v0)             # 8011B4BC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    andi    t7, t6, 0x0080             # t7 = 00000000
    beq     t7, $zero, lbl_80B24068
    addiu   t9, $zero, 0x03B4          # t9 = 000003B4
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t8, $zero, 0x05F8          # t8 = 000005F8
    b       lbl_80B2406C
    sh      t8, 0x1E1A($at)            # 00011E1A
lbl_80B24068:
    sh      t9, 0x1E1A($at)            # 00011E1A
lbl_80B2406C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    sb      t0, 0x1E5E($at)            # 00011E5E
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    addiu   t1, $zero, 0x0014          # t1 = 00000014
    sb      t1, 0x1E15($at)            # 00011E15
lbl_80B24088:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80B2409C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0100          # t6 = 00000100
    sw      t6, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    lh      v0, 0x0032(s0)             # 00000032
    lh      t7, 0x008A(s0)             # 0000008A
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x00B6(s0)             # 000000B6
    bnel    t7, v0, lbl_80B24104
    lw      $ra, 0x0024($sp)
    jal     func_80B239A0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    addiu   t8, $zero, 0x0032          # t8 = 00000032
    sb      t8, 0x02F5(s0)             # 000002F5
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      $ra, 0x0024($sp)
lbl_80B24104:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B24114:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x0004(s0)             # 00000004
    lhu     t8, 0x02E4(s0)             # 000002E4
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80B241F8
    sw      t7, 0x0004(s0)             # 00000004
    lw      t0, 0x004C($sp)
    lw      $at, 0x009C(t0)            # 0000009C
    sll     v0, $at,  2
    addu    v0, v0, $at
    sll     v0, v0, 11
    sll     a0, v0, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    sw      a0, 0x0034($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lwc1    $f8, 0x0038(s0)            # 00000038
    lui     $at, 0x4120                # $at = 41200000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f18                  # $f18 = 10.00
    lw      a0, 0x0034($sp)
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0038($sp)
    lwc1    $f16, 0x003C(s0)           # 0000003C
    add.s   $f4, $f16, $f18
    jal     func_800636C4              # sins?
    swc1    $f4, 0x003C($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f6                   # $f6 = 5.00
    lwc1    $f10, 0x0040(s0)           # 00000040
    lui     t1, %hi(var_80B25168)      # t1 = 80B20000
    mul.s   $f8, $f0, $f6
    lui     t2, %hi(var_80B2516C)      # t2 = 80B20000
    addiu   t2, t2, %lo(var_80B2516C)  # t2 = 80B2516C
    addiu   t1, t1, %lo(var_80B25168)  # t1 = 80B25168
    lui     a2, %hi(var_80B25150)      # a2 = 80B20000
    lui     a3, %hi(var_80B2515C)      # a3 = 80B20000
    addiu   t3, $zero, 0x03E8          # t3 = 000003E8
    add.s   $f16, $f8, $f10
    addiu   t4, $zero, 0x0010          # t4 = 00000010
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    swc1    $f16, 0x0040($sp)
    addiu   a3, a3, %lo(var_80B2515C)  # a3 = 80B2515C
    addiu   a2, a2, %lo(var_80B25150)  # a2 = 80B25150
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    lw      a0, 0x004C($sp)
    jal     func_8001C6A8
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
lbl_80B241F8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B2420C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lhu     v0, 0x02E4(s0)             # 000002E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, a2, $zero              # a0 = 00000000
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_80B24244
    swc1    $f4, 0x0068(s0)            # 00000068
    andi    t7, v0, 0xFFEF             # t7 = 00000000
    b       lbl_80B2429C
    sh      t7, 0x02E4(s0)             # 000002E4
lbl_80B24244:
    jal     func_80B23C8C
    or      a1, s0, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B24274
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    lbu     t0, 0x02F6(s0)             # 000002F6
    lh      t9, 0x008A(s0)             # 0000008A
    sb      t8, 0x02F5(s0)             # 000002F5
    slt     $at, t0, v0
    beq     $at, $zero, lbl_80B2429C
    sh      t9, 0x02E8(s0)             # 000002E8
    b       lbl_80B2429C
    sb      v0, 0x02F6(s0)             # 000002F6
lbl_80B24274:
    lh      t1, 0x02E8(s0)             # 000002E8
    lh      t2, 0x0032(s0)             # 00000032
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bnel    t1, t2, lbl_80B242A0
    lbu     v0, 0x02F6(s0)             # 000002F6
    jal     func_80B239A0
    sb      $zero, 0x02F6(s0)          # 000002F6
    b       lbl_80B24304
    lw      $ra, 0x0024($sp)
lbl_80B2429C:
    lbu     v0, 0x02F6(s0)             # 000002F6
lbl_80B242A0:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a0, s0, 0x0032             # a0 = 00000032
    beq     v0, $at, lbl_80B242C4
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B242E0
    addiu   a0, s0, 0x0032             # a0 = 00000032
    b       lbl_80B242FC
    lh      v1, 0x0032(s0)             # 00000032
lbl_80B242C4:
    lh      a1, 0x02E8(s0)             # 000002E8
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x0200          # a3 = 00000200
    b       lbl_80B242FC
    lh      v1, 0x0032(s0)             # 00000032
lbl_80B242E0:
    lh      a1, 0x02E8(s0)             # 000002E8
    addiu   t4, $zero, 0x0180          # t4 = 00000180
    sw      t4, 0x0010($sp)
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x0600          # a3 = 00000600
    lh      v1, 0x0032(s0)             # 00000032
lbl_80B242FC:
    sh      v1, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0024($sp)
lbl_80B24304:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B24314:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a2, a1, $zero              # a2 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, a2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80B23C8C
    swc1    $f4, 0x0068(s0)            # 00000068
    beq     v0, $zero, lbl_80B2436C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_80B239A0
    sw      v0, 0x002C($sp)
    lw      v1, 0x002C($sp)
    lh      t7, 0x008A(s0)             # 0000008A
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sb      t6, 0x02F5(s0)             # 000002F5
    sb      v1, 0x02F6(s0)             # 000002F6
    b       lbl_80B2439C
    sh      t7, 0x02E8(s0)             # 000002E8
lbl_80B2436C:
    lhu     t8, 0x02E4(s0)             # 000002E4
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    andi    t9, t8, 0x0002             # t9 = 00000000
    beq     t9, $zero, lbl_80B2439C
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    lh      a1, 0x02E6(s0)             # 000002E6
    addiu   t0, $zero, 0x0200          # t0 = 00000200
    jal     func_80064508
    sw      t0, 0x0010($sp)
    lh      t1, 0x0032(s0)             # 00000032
    sh      t1, 0x00B6(s0)             # 000000B6
lbl_80B2439C:
    lh      t2, 0x02E6(s0)             # 000002E6
    lh      t3, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t2, t3, lbl_80B243BC
    lw      $ra, 0x0024($sp)
    jal     func_80B239A0
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0024($sp)
lbl_80B243BC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B243CC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a2, a1, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80B23C8C
    or      a1, s0, $zero              # a1 = 00000000
    andi    t6, v0, 0x00FF             # t6 = 00000000
    beq     t6, $zero, lbl_80B2442C
    andi    v1, v0, 0x00FF             # v1 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    swc1    $f4, 0x0068(s0)            # 00000068
    jal     func_80B239A0
    sb      v1, 0x0027($sp)
    lbu     v1, 0x0027($sp)
    lh      t8, 0x008A(s0)             # 0000008A
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sb      t7, 0x02F5(s0)             # 000002F5
    sb      v1, 0x02F6(s0)             # 000002F6
    b       lbl_80B24480
    sh      t8, 0x02E8(s0)             # 000002E8
lbl_80B2442C:
    lhu     v0, 0x02F2(s0)             # 000002F2
    lhu     t9, 0x02F0(s0)             # 000002F0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    slt     $at, v0, t9
    bnel    $at, $zero, lbl_80B24470
    lui     $at, 0x4000                # $at = 40000000
    lh      t0, 0x02E6(s0)             # 000002E6
    ori     $at, $zero, 0x8000         # $at = 00008000
    sh      $zero, 0x02F2(s0)          # 000002F2
    addu    t1, t0, $at
    jal     func_80B239A0
    sh      t1, 0x02E6(s0)             # 000002E6
    mtc1    $zero, $f6                 # $f6 = 0.00
    b       lbl_80B24480
    swc1    $f6, 0x0068(s0)            # 00000068
    lui     $at, 0x4000                # $at = 40000000
lbl_80B24470:
    mtc1    $at, $f8                   # $f8 = 2.00
    addiu   t2, v0, 0x0001             # t2 = 00000001
    sh      t2, 0x02F2(s0)             # 000002F2
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80B24480:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B24494:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0020($sp)
    addiu   t7, $zero, 0x0200          # t7 = 00000200
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lh      a1, 0x02E6(t6)             # 000002E6
    sw      t7, 0x0010($sp)
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    jal     func_80064508
    addiu   a0, t6, 0x0032             # a0 = 00000032
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B244D4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x008A(s0)             # 0000008A
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    sw      t6, 0x0030($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    lh      a1, 0x0032($sp)
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    subu    v0, t6, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B24520
    subu    v1, $zero, v0
    b       lbl_80B24520
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B24520:
    slti    $at, v1, 0x4001
    beq     $at, $zero, lbl_80B24570
    addiu   t9, $zero, 0x0064          # t9 = 00000064
    jal     func_80064508
    sw      t9, 0x0010($sp)
    lh      t0, 0x00B6(s0)             # 000000B6
    lw      t2, 0x0038(s0)             # 00000038
    or      a1, s0, $zero              # a1 = 00000000
    sh      t0, 0x0032(s0)             # 00000032
    sw      t2, 0x0010($sp)
    lw      t1, 0x003C(s0)             # 0000003C
    lw      a0, 0x0044($sp)
    addiu   a2, s0, 0x02D8             # a2 = 000002D8
    sw      t1, 0x0014($sp)
    lw      t2, 0x0040(s0)             # 00000040
    addiu   a3, s0, 0x02DE             # a3 = 000002DE
    jal     func_8002B024
    sw      t2, 0x0018($sp)
    b       lbl_80B245DC
    lw      $ra, 0x002C($sp)
lbl_80B24570:
    bgez    v0, lbl_80B2459C
    addiu   a0, s0, 0x02DA             # a0 = 000002DA
    addiu   t3, $zero, 0x0100          # t3 = 00000100
    sw      t3, 0x0010($sp)
    addiu   a0, s0, 0x02DA             # a0 = 000002DA
    addiu   a1, $zero, 0xE000          # a1 = FFFFE000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    b       lbl_80B245B8
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B2459C:
    addiu   t4, $zero, 0x0100          # t4 = 00000100
    sw      t4, 0x0010($sp)
    addiu   a1, $zero, 0x2000          # a1 = 00002000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lh      a1, 0x008A(s0)             # 0000008A
lbl_80B245B8:
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000C          # a2 = 0000000C
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t6, 0x00B6(s0)             # 000000B6
    sh      t6, 0x0032(s0)             # 00000032
    lw      $ra, 0x002C($sp)
lbl_80B245DC:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80B245EC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x008A(s0)             # 0000008A
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   a0, s0, 0x02D8             # a0 = 000002D8
    or      a1, $zero, $zero           # a1 = 00000000
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80B2462C
    subu    v1, $zero, v0
    b       lbl_80B2462C
    or      v1, v0, $zero              # v1 = 00000000
lbl_80B2462C:
    slti    $at, v1, 0x4301
    beq     $at, $zero, lbl_80B24688
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B2468C
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    lw      t9, 0x0038(s0)             # 00000038
    lw      a0, 0x0034($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t9, 0x0010($sp)
    lw      t8, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x02D8             # a2 = 000002D8
    addiu   a3, s0, 0x02DE             # a3 = 000002DE
    sw      t8, 0x0014($sp)
    lw      t9, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t9, 0x0018($sp)
    b       lbl_80B246F0
    lw      $ra, 0x002C($sp)
lbl_80B24688:
    addiu   t0, $zero, 0x0064          # t0 = 00000064
lbl_80B2468C:
    sw      t0, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0010($sp)
    addiu   a0, s0, 0x02DA             # a0 = 000002DA
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    sw      t2, 0x0010($sp)
    addiu   a0, s0, 0x02DE             # a0 = 000002DE
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    sw      t3, 0x0010($sp)
    addiu   a0, s0, 0x02E0             # a0 = 000002E0
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lw      $ra, 0x002C($sp)
lbl_80B246F0:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B24700:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022AD0
    lw      a1, 0x0024($sp)
    beql    v0, $zero, lbl_80B247A8
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_80B2475C
    nop
    beq     v0, $at, lbl_80B2476C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B2477C
    lui     t6, %hi(func_80B247C4)     # t6 = 80B20000
    b       lbl_80B24788
    lw      t8, 0x0004(s0)             # 00000004
lbl_80B2475C:
    jal     func_80B239A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    b       lbl_80B24788
    lw      t8, 0x0004(s0)             # 00000004
lbl_80B2476C:
    jal     func_80B239A0
    addiu   a1, $zero, 0x0007          # a1 = 00000007
    b       lbl_80B24788
    lw      t8, 0x0004(s0)             # 00000004
lbl_80B2477C:
    addiu   t6, t6, %lo(func_80B247C4) # t6 = 000047C4
    sw      t6, 0x02F8(s0)             # 000002F8
    lw      t8, 0x0004(s0)             # 00000004
lbl_80B24788:
    lui     $at, 0xFFFE                # $at = FFFE0000
    lui     t7, %hi(func_80B24B04)     # t7 = 80B20000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    addiu   t7, t7, %lo(func_80B24B04) # t7 = 80B24B04
    and     t9, t8, $at
    sw      t7, 0x0130(s0)             # 00000130
    sw      t9, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B247A8:
    jal     func_80B244D4
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B247C4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80B245EC
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B247E4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B24818
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80B24700)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B24700) # t6 = 80B24700
    sw      $zero, 0x0118(a0)          # 00000118
    b       lbl_80B24838
    sw      t6, 0x02F8(a0)             # 000002F8
lbl_80B24818:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x003A          # a2 = 0000003A
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80B24838:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B24848:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B248D0
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_80B248D0
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lw      a0, 0x0020($sp)
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t6, 0x0004(a0)             # 00000004
    lui     t8, %hi(func_80B247E4)     # t8 = 80B20000
    addiu   t8, t8, %lo(func_80B247E4) # t8 = 80B247E4
    and     t7, t6, $at
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    sw      t7, 0x0004(a0)             # 00000004
    sw      t8, 0x02F8(a0)             # 000002F8
    lw      a1, 0x0024($sp)
    ori     a3, a3, 0x4000             # a3 = 461C4000
    addiu   a2, $zero, 0x003A          # a2 = 0000003A
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80B248D0:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B248DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022930
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80B2490C
    lw      a0, 0x0020($sp)
    lui     t6, %hi(func_80B24848)     # t6 = 80B20000
    addiu   t6, t6, %lo(func_80B24848) # t6 = 80B24848
    b       lbl_80B24948
    sw      t6, 0x02F8(a0)             # 000002F8
lbl_80B2490C:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f0                   # $f0 = 300.00
    lw      t8, 0x0004(a0)             # 00000004
    lui     $at, 0x0001                # $at = 00010000
    addiu   t7, $zero, 0x6004          # t7 = 00006004
    or      t9, t8, $at                # t9 = 00010000
    sh      t7, 0x010E(a0)             # 0000010E
    sw      t9, 0x0004(a0)             # 00000004
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      a0, 0x0020($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80022960
    lw      a1, 0x0024($sp)
    lw      a0, 0x0020($sp)
lbl_80B24948:
    jal     func_80B245EC
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B24960:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lhu     t6, 0x02E4(s0)             # 000002E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    ori     t7, t6, 0x0008             # t7 = 00000008
    sh      t7, 0x02E4(s0)             # 000002E4
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    jal     func_80B239A0
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      a0, 0x0024($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x005F          # a2 = 0000005F
    jal     func_800646F0
    addiu   a0, $zero, 0x482C          # a0 = 0000482C
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x6000          # a1 = 00006000
    jal     func_800DCE14
    or      a2, s0, $zero              # a2 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B249D0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lhu     t7, 0x02E4(s0)             # 000002E4
    andi    t8, t7, 0x0002             # t8 = 00000000
    bnel    t8, $zero, lbl_80B24A68
    lw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80B24A68
    lw      $ra, 0x0024($sp)
    lhu     t9, 0x02E4(s0)             # 000002E4
    ori     t0, t9, 0x0002             # t0 = 00000002
    sh      t0, 0x02E4(s0)             # 000002E4
    lw      $ra, 0x0024($sp)
lbl_80B24A68:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B24A78:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_8002121C
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    lh      v1, 0x02D6(a2)             # 000002D6
    bne     v1, $zero, lbl_80B24AB4
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_80B24AC0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80B24AB4:
    sh      t6, 0x02D6(a2)             # 000002D6
    lh      v1, 0x02D6(a2)             # 000002D6
    or      v0, v1, $zero              # v0 = 00000000
lbl_80B24AC0:
    bnel    v0, $zero, lbl_80B24AE0
    sh      v1, 0x02D4(a2)             # 000002D4
    jal     func_80063BF0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sh      v0, 0x02D6(a2)             # 000002D6
    lh      v1, 0x02D6(a2)             # 000002D6
    sh      v1, 0x02D4(a2)             # 000002D4
lbl_80B24AE0:
    lh      t7, 0x02D4(a2)             # 000002D4
    slti    $at, t7, 0x0003
    bnel    $at, $zero, lbl_80B24AF8
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x02D4(a2)          # 000002D4
    lw      $ra, 0x0014($sp)
lbl_80B24AF8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B24B04:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B249D0
    or      a1, s1, $zero              # a1 = 00000000
    lw      t9, 0x02F8(s0)             # 000002F8
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80B24B90
    lui     $at, 0x42C8                # $at = 42C80000
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    bne     t7, $zero, lbl_80B24B74
    nop
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   a1, $zero, 0x0008          # a1 = 00000008
    jal     func_80B239A0
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80B24B74:
    lui     t8, %hi(func_80B24700)     # t8 = 80B20000
    lui     t0, %hi(func_80B24BDC)     # t0 = 80B20000
    addiu   t8, t8, %lo(func_80B24700) # t8 = 80B24700
    addiu   t0, t0, %lo(func_80B24BDC) # t0 = 80B24BDC
    sw      t8, 0x02F8(s0)             # 000002F8
    b       lbl_80B24BBC
    sw      t0, 0x0130(s0)             # 00000130
lbl_80B24B90:
    mtc1    $at, $f0                   # $f0 = 0.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    addiu   t1, $zero, 0x6005          # t1 = 00006005
    sh      t1, 0x010E(s0)             # 0000010E
    c.lt.s  $f6, $f0
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_80B24BC0
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a2, $f0
    jal     func_80022A68
    or      a1, s1, $zero              # a1 = 00000000
lbl_80B24BBC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B24BC0:
    jal     func_80B24A78
    or      a1, s1, $zero              # a1 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80B24BDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lhu     t6, 0x02E4(a0)             # 000002E4
    ori     t7, t6, 0x0010             # t7 = 00000010
    sh      t7, 0x02E4(a0)             # 000002E4
    sw      a0, 0x0018($sp)
    jal     func_80B249D0
    lw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      t9, 0x02F8(a0)             # 000002F8
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    jal     func_80B24A78
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B24C30:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B249D0
    lw      a1, 0x002C($sp)
    lhu     v0, 0x02E4(s0)             # 000002E4
    andi    t6, v0, 0x0004             # t6 = 00000000
    bne     t6, $zero, lbl_80B24C68
    andi    t7, v0, 0x0008             # t7 = 00000000
    beql    t7, $zero, lbl_80B24C88
    lbu     t8, 0x014D(s0)             # 0000014D
lbl_80B24C68:
    lw      t9, 0x02F8(s0)             # 000002F8
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    b       lbl_80B24D90
    lhu     t1, 0x02E4(s0)             # 000002E4
    lbu     t8, 0x014D(s0)             # 0000014D
lbl_80B24C88:
    andi    t0, t8, 0x0002             # t0 = 00000000
    beql    t0, $zero, lbl_80B24D18
    lw      t9, 0x02F8(s0)             # 000002F8
    lw      v0, 0x0178(s0)             # 00000178
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_80B24CDC
    nop
    lw      t1, 0x0000(v0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    andi    t2, t1, 0x0080             # t2 = 00000000
    beq     t2, $zero, lbl_80B24CDC
    or      a3, $zero, $zero           # a3 = 00000000
    addiu   t3, $zero, 0x0190          # t3 = 00000190
    sw      t3, 0x0010($sp)
    jal     func_80027090
    or      a0, s0, $zero              # a0 = 00000000
    lui     t4, %hi(func_80B24E18)     # t4 = 80B20000
    addiu   t4, t4, %lo(func_80B24E18) # t4 = 80B24E18
    b       lbl_80B24E04
    sw      t4, 0x0130(s0)             # 00000130
lbl_80B24CDC:
    jal     func_80B239A0
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    lhu     t6, 0x02E4(s0)             # 000002E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    ori     t7, t6, 0x0004             # t7 = 00000004
    sb      t5, 0x02F5(s0)             # 000002F5
    sh      t7, 0x02E4(s0)             # 000002E4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6872          # a1 = 00006872
    jal     func_80022FD0
    swc1    $f4, 0x0068(s0)            # 00000068
    b       lbl_80B24D90
    lhu     t1, 0x02E4(s0)             # 000002E4
    lw      t9, 0x02F8(s0)             # 000002F8
lbl_80B24D18:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    lwc1    $f6, 0x02EC(s0)            # 000002EC
    lh      a3, 0x00B6(s0)             # 000000B6
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0038             # a2 = 00000038
    jal     func_80B23D38
    swc1    $f6, 0x0010($sp)
    beq     v0, $zero, lbl_80B24D54
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B24960
    lw      a1, 0x002C($sp)
lbl_80B24D54:
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    andi    t0, t8, 0x00FF             # t0 = 00000000
    bne     t0, $at, lbl_80B24D8C
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80B24D90
    lhu     t1, 0x02E4(s0)             # 000002E4
    jal     func_80B24960
    lw      a1, 0x002C($sp)
lbl_80B24D8C:
    lhu     t1, 0x02E4(s0)             # 000002E4
lbl_80B24D90:
    andi    t2, t1, 0x0004             # t2 = 00000000
    bnel    t2, $zero, lbl_80B24DCC
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lw      a0, 0x002C($sp)
    andi    v0, v0, 0x00FF             # v0 = 00000000
    beq     v0, $zero, lbl_80B24DB8
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    bne     v0, $at, lbl_80B24DC8
lbl_80B24DB8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
lbl_80B24DC8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B24DCC:
    jal     func_80B24A78
    lw      a1, 0x002C($sp)
    jal     func_80B23E68
    nop
    beql    v0, $zero, lbl_80B24E08
    lw      $ra, 0x0024($sp)
    lhu     t3, 0x02E4(s0)             # 000002E4
    lui     t5, %hi(func_80B24B04)     # t5 = 80B20000
    addiu   t5, t5, %lo(func_80B24B04) # t5 = 80B24B04
    andi    t4, t3, 0x0004             # t4 = 00000000
    bne     t4, $zero, lbl_80B24E04
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    sw      t5, 0x0130(s0)             # 00000130
    sb      t6, 0x001F(s0)             # 0000001F
lbl_80B24E04:
    lw      $ra, 0x0024($sp)
lbl_80B24E08:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B24E18:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0028($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x002C($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a3, 0x41C8                 # a3 = 41C80000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lbu     t7, 0x014D(s0)             # 0000014D
    andi    t8, t7, 0x0002             # t8 = 00000000
    beql    t8, $zero, lbl_80B24EEC
    or      a0, s1, $zero              # a0 = 00000000
    lw      v0, 0x0178(s0)             # 00000178
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0003          # a1 = 00000003
    beq     v0, $zero, lbl_80B24EB8
    nop
    lw      t9, 0x0000(v0)             # 00000000
    andi    t0, t9, 0x0080             # t0 = 00000000
    bnel    t0, $zero, lbl_80B24EEC
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B24EB8:
    jal     func_80B239A0
    sb      $zero, 0x0114(s0)          # 00000114
    lhu     t2, 0x02E4(s0)             # 000002E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    ori     t3, t2, 0x0004             # t3 = 00000004
    sb      t1, 0x02F5(s0)             # 000002F5
    sh      t3, 0x02E4(s0)             # 000002E4
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x6872          # a1 = 00006872
    jal     func_80022FD0
    swc1    $f4, 0x0068(s0)            # 00000068
    or      a0, s1, $zero              # a0 = 00000000
lbl_80B24EEC:
    lw      a1, 0x0028($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x002C($sp)
    jal     func_80B23E68
    nop
    beq     v0, $zero, lbl_80B24F20
    lui     t4, %hi(func_80B24B04)     # t4 = 80B20000
    addiu   t4, t4, %lo(func_80B24B04) # t4 = 80B24B04
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    sw      t4, 0x0130(s0)             # 00000130
    sb      t5, 0x001F(s0)             # 0000001F
    b       lbl_80B24F38
    sb      $zero, 0x0114(s0)          # 00000114
lbl_80B24F20:
    lbu     t6, 0x0114(s0)             # 00000114
    lui     t7, %hi(func_80B24C30)     # t7 = 80B20000
    addiu   t7, t7, %lo(func_80B24C30) # t7 = 80B24C30
    bnel    t6, $zero, lbl_80B24F3C
    lw      $ra, 0x0024($sp)
    sw      t7, 0x0130(s0)             # 00000130
lbl_80B24F38:
    lw      $ra, 0x0024($sp)
lbl_80B24F3C:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B24F4C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     a1, $at, lbl_80B24F88
    lw      v0, 0x0014($sp)
    lw      v1, 0x0010($sp)
    lh      t7, 0x02DA(v0)             # 000002DA
    lh      t6, 0x0000(v1)             # 00000000
    lh      t9, 0x0004(v1)             # 00000004
    addu    t8, t6, t7
    sh      t8, 0x0000(v1)             # 00000000
    lh      t0, 0x02D8(v0)             # 000002D8
    addu    t1, t9, t0
    sh      t1, 0x0004(v1)             # 00000004
lbl_80B24F88:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80B24F94:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     a1, $at, lbl_80B24FC4
    lui     a0, %hi(var_80B25170)      # a0 = 80B20000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80B25170)  # a0 = 80B25170
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80B24FC4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B24FD4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E56C
    sw      a0, 0x0034($sp)
    lw      t0, 0x0034($sp)
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x02D4(s0)             # 000002D4
    lui     a3, %hi(var_80B2517C)      # a3 = 80B20000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t1, t9,  2
    addu    a3, a3, t1
    lw      a3, %lo(var_80B2517C)(a3)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, a3,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, t6, t5
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, a3, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0044($sp)
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      a1, 0x018C(s0)             # 0000018C
    lw      a2, 0x01A8(s0)             # 000001A8
    lbu     a3, 0x018A(s0)             # 0000018A
    lui     t9, %hi(func_80B24F4C)     # t9 = 80B20000
    lui     t1, %hi(func_80B24F94)     # t1 = 80B20000
    addiu   t1, t1, %lo(func_80B24F94) # t1 = 80B24F94
    addiu   t9, t9, %lo(func_80B24F4C) # t9 = 80B24F4C
    sw      t9, 0x0010($sp)
    sw      t1, 0x0014($sp)
    sw      s0, 0x0018($sp)
    jal     func_80089D8C
    lw      a0, 0x0044($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop

.section .data

var_80B250B0: .word 0x01860400, 0x00000019, 0x01670000, 0x000002FC
.word func_80B23A48
.word func_80B23C60
.word func_80B24C30
.word func_80B24FD4
var_80B250D0: .word \
0x0A000939, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x000007A2, 0x00000000, 0x00010100, \
0x0014003C, 0x00000000, 0x00000000
var_80B250FC: .word func_80B243CC
.word func_80B24314
.word func_80B2420C
.word func_80B24114
.word func_80B2409C
.word func_80B23F68
.word func_80B23E94
.word func_80B24494
.word func_80B247C4
var_80B25120: .word \
0x06009ED4, 0x060098AC, 0x060098AC, 0x060011F4, \
0x060098AC, 0x06008D60, 0x060098AC, 0x060098AC, \
0x060098AC
var_80B25144: .word 0x00020002, 0x00000000, 0x02000000
var_80B25150: .word 0x00000000, 0xBD4CCCCD, 0x00000000
var_80B2515C: .word 0x00000000, 0xBCCCCCCD, 0x00000000
var_80B25168: .word 0xFFFFFF00
var_80B2516C: .word 0xFF960000
var_80B25170: .word 0x44160000, 0x442F0000, 0x00000000
var_80B2517C: .word \
0x06004F78, 0x06005578, 0x06005BF8, 0x00000000, \
0x00000000

.section .rodata


