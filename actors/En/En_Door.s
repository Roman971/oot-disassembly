.section .text
func_80867920:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    lui     t0, %hi(var_808685F0)      # t0 = 80870000
    addiu   t0, t0, %lo(var_808685F0)  # t0 = 808685F0
    lui     a1, %hi(var_80868614)      # a1 = 80870000
    addiu   a1, a1, %lo(var_80868614)  # a1 = 80868614
    sw      t0, 0x0054($sp)
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0401                 # a2 = 04010000
    lui     a3, 0x0401                 # a3 = 04010000
    addiu   t6, s0, 0x0188             # t6 = 00000188
    addiu   t7, s0, 0x01A6             # t7 = 000001A6
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0xEBF8             # a3 = 0400EBF8
    addiu   a2, a2, 0x0418             # a2 = 04010418
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lw      t0, 0x0054($sp)
    or      v1, $zero, $zero           # v1 = 00000000
    lh      a0, 0x00A4(s1)             # 000000A4
    addiu   v0, $zero, 0x0004          # v0 = 00000004
lbl_80867998:
    lh      t9, 0x0000(t0)             # 00000000
    beql    t9, a0, lbl_808679B4
    slti    $at, v1, 0x0004
    addiu   v1, v1, 0x0001             # v1 = 00000001
    bne     v1, v0, lbl_80867998
    addiu   t0, t0, 0x0006             # t0 = 00000006
    slti    $at, v1, 0x0004
lbl_808679B4:
    bne     $at, $zero, lbl_808679DC
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    jal     func_80081628              # ObjectIndex
    sw      t0, 0x0054($sp)
    bltz    v0, lbl_808679DC
    lw      t0, 0x0054($sp)
    addiu   t0, t0, 0x0006             # t0 = 00000006
lbl_808679DC:
    lbu     t1, 0x0002(t0)             # 00000008
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    sb      t1, 0x0184(s0)             # 00000184
    lh      a1, 0x0004(t0)             # 0000000A
    sw      t0, 0x0054($sp)
    jal     func_80081628              # ObjectIndex
    addu    a0, s1, $at
    bgez    v0, lbl_80867A14
    lw      t0, 0x0054($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80867B2C
    lw      $ra, 0x003C($sp)
lbl_80867A14:
    sb      v0, 0x0183(s0)             # 00000183
    lb      t3, 0x0183(s0)             # 00000183
    lb      t4, 0x001E(s0)             # 0000001E
    lbu     t2, 0x0002(t0)             # 00000002
    lui     t5, %hi(func_80867B70)     # t5 = 80860000
    bne     t3, t4, lbl_80867A44
    sb      t2, 0x0184(s0)             # 00000184
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80867B70
    or      a1, s1, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80867A50
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80867A44:
    addiu   t5, t5, %lo(func_80867B70) # t5 = 00007B70
    sw      t5, 0x01C4(s0)             # 000001C4
    lh      t6, 0x001C(s0)             # 0000001C
lbl_80867A50:
    andi    t7, t6, 0x0040             # t7 = 00000000
    beql    t7, $zero, lbl_80867B20
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    nop
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0048($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    lwc1    $f16, 0x0048($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    mul.s   $f2, $f0, $f8
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0009          # a3 = 00000009
    swc1    $f2, 0x0044($sp)
    lwc1    $f10, 0x0024(s0)           # 00000024
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    sw      $zero, 0x001C($sp)
    sub.s   $f8, $f6, $f2
    swc1    $f8, 0x0018($sp)
    lh      t8, 0x00B6(s0)             # 000000B6
    sw      $zero, 0x0024($sp)
    addu    t9, t8, $at
    sw      t9, 0x0020($sp)
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0xFFBF         # $at = FFFFFFBF
    and     t2, t1, $at
    jal     func_800253F0
    sw      t2, 0x0028($sp)
    beq     v0, $zero, lbl_80867AFC
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0182(v0)             # 00000182
lbl_80867AFC:
    lwc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0048($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sub.s   $f18, $f10, $f16
    swc1    $f18, 0x0024(s0)           # 00000024
    lwc1    $f6, 0x0044($sp)
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x002C(s0)            # 0000002C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80867B20:
    jal     func_80020F04
    lui     a1, 0x428C                 # a1 = 428C0000
    lw      $ra, 0x003C($sp)
lbl_80867B2C:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0060           # $sp += 0x60


func_80867B3C:
    lhu     t7, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1D38(t6)             # 00011D38
    sra     t8, t7, 10
    sll     t9, t8,  4
    addu    v0, t6, t9
    lh      v1, 0x0004(v0)             # 00000004
    bgez    v1, lbl_80867B68
    subu    t0, $zero, v1
    sh      t0, 0x0004(v0)             # 00000004
lbl_80867B68:
    jr      $ra
    nop


func_80867B70:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    lb      a1, 0x0183(a2)             # 00000183
    sw      a3, 0x0024($sp)
    sw      a2, 0x0020($sp)
    jal     func_80081688
    addu    a0, a3, $at
    lw      a2, 0x0020($sp)
    beq     v0, $zero, lbl_80867D18
    lw      a3, 0x0024($sp)
    lh      v1, 0x001C(a2)             # 0000001C
    lw      t6, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lb      t8, 0x0183(a2)             # 00000183
    lui     t9, %hi(func_80867D28)     # t9 = 80860000
    sra     v1, v1,  7
    and     t7, t6, $at
    andi    v1, v1, 0x0007             # v1 = 00000000
    addiu   t9, t9, %lo(func_80867D28) # t9 = 80867D28
    addiu   $at, $zero, 0x0006         # $at = 00000006
    sw      t7, 0x0004(a2)             # 00000004
    sw      t9, 0x01C4(a2)             # 000001C4
    bne     v1, $at, lbl_80867C10
    sb      t8, 0x001E(a2)             # 0000001E
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x5A24(v0)            # 8011A5DC
    ori     $at, $zero, 0xC001         # $at = 0000C001
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    slt     $at, v0, $at
    bne     $at, $zero, lbl_80867C10
    ori     $at, $zero, 0xE000         # $at = 0000E000
    slt     $at, v0, $at
    beq     $at, $zero, lbl_80867C10
    nop
    beq     $zero, $zero, lbl_80867C10
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_80867C10:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v1, $at, lbl_80867C4C
    sh      $zero, 0x0032(a2)          # 00000032
    lh      a1, 0x001C(a2)             # 0000001C
    sw      a2, 0x0020($sp)
    sw      v1, 0x001C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      v1, 0x001C($sp)
    bne     v0, $zero, lbl_80867D04
    lw      a2, 0x0020($sp)
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    beq     $zero, $zero, lbl_80867D04
    sh      t0, 0x0186(a2)             # 00000186
lbl_80867C4C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v1, $at, lbl_80867CA0
    or      a0, a2, $zero              # a0 = 00000000
    lw      a1, 0x1C44(a3)             # 00001C44
    sw      a2, 0x0020($sp)
    jal     func_800214FC
    sw      v1, 0x001C($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    lui     t1, %hi(func_80868064)     # t1 = 80870000
    lw      v1, 0x001C($sp)
    c.lt.s  $f4, $f0
    lw      a2, 0x0020($sp)
    addiu   t1, t1, %lo(func_80868064) # t1 = 80868064
    addiu   t2, $zero, 0xE800          # t2 = FFFFE800
    bc1fl   lbl_80867D08
    lh      t2, 0x001C(a2)             # 0000001C
    sw      t1, 0x01C4(a2)             # 000001C4
    sh      t2, 0x0032(a2)             # 00000032
    beq     $zero, $zero, lbl_80867D08
    lh      t2, 0x001C(a2)             # 0000001C
lbl_80867CA0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_80867D08
    lh      t2, 0x001C(a2)             # 0000001C
    lh      t3, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0229         # $at = 00000229
    lui     t7, 0x8012                 # t7 = 80120000
    andi    t4, t3, 0x003F             # t4 = 00000000
    addiu   t5, t4, 0x0200             # t5 = 00000200
    andi    t6, t5, 0xFFFF             # t6 = 00000200
    bne     t6, $at, lbl_80867CE4
    sh      t5, 0x010E(a2)             # 0000010E
    lhu     t7, -0x4B5A(t7)            # 8011B4A6
    andi    t8, t7, 0x0010             # t8 = 00000000
    bnel    t8, $zero, lbl_80867CE8
    lw      t0, 0x0004(a2)             # 00000004
    beq     $zero, $zero, lbl_80867D04
    addiu   v1, $zero, 0x0003          # v1 = 00000003
lbl_80867CE4:
    lw      t0, 0x0004(a2)             # 00000004
lbl_80867CE8:
    lui     $at, 0x0800                # $at = 08000000
    lui     t9, %hi(func_80867FE0)     # t9 = 80860000
    ori     $at, $at, 0x0009           # $at = 08000009
    addiu   t9, t9, %lo(func_80867FE0) # t9 = 80867FE0
    or      t1, t0, $at                # t1 = 08000009
    sw      t9, 0x01C4(a2)             # 000001C4
    sw      t1, 0x0004(a2)             # 00000004
lbl_80867D04:
    lh      t2, 0x001C(a2)             # 0000001C
lbl_80867D08:
    sll     t4, v1,  7
    andi    t3, t2, 0xFC7F             # t3 = 0000E800
    or      t5, t3, t4                 # t5 = 0000E800
    sh      t5, 0x001C(a2)             # 0000001C
lbl_80867D18:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80867D28:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0044($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0044($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    or      a0, a3, $zero              # a0 = 00000000
    lw      t0, 0x1C44(t6)             # 00001C44
    sra     t8, t7,  7
    andi    t9, t8, 0x0007             # t9 = 00000000
    sw      t9, 0x0038($sp)
    sw      a3, 0x0040($sp)
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    addiu   a2, t0, 0x0024             # a2 = 00000024
    jal     func_8002154C
    sw      t0, 0x003C($sp)
    lw      a3, 0x0040($sp)
    lui     t2, %hi(func_80868150)     # t2 = 80870000
    lw      t0, 0x003C($sp)
    lbu     t1, 0x0181(a3)             # 00000181
    addiu   t2, t2, %lo(func_80868150) # t2 = 80868150
    lui     a1, %hi(var_8086861C)      # a1 = 80870000
    beq     t1, $zero, lbl_80867E2C
    lw      a0, 0x0044($sp)
    sw      t2, 0x01C4(a3)             # 000001C4
    lw      t3, 0x066C(t0)             # 0000066C
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     $at, 0x3FC0                # $at = 3FC00000
    sll     t4, t3,  4
    bgezl   t4, lbl_80867DB8
    mtc1    $at, $f0                   # $f0 = 1.50
    lui     $at, 0x3F40                # $at = 3F400000
    mtc1    $at, $f0                   # $f0 = 0.75
    beq     $zero, $zero, lbl_80867DC0
    lbu     t5, 0x0180(a3)             # 00000180
    mtc1    $at, $f0                   # $f0 = 0.75
lbl_80867DB8:
    nop
    lbu     t5, 0x0180(a3)             # 00000180
lbl_80867DC0:
    mfc1    a2, $f0
    sw      a3, 0x0040($sp)
    sll     t6, t5,  2
    addu    a1, a1, t6
    jal     func_8008D278
    lw      a1, %lo(var_8086861C)(a1)
    lw      a3, 0x0040($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t7, 0x0186(a3)             # 00000186
    beql    t7, $zero, lbl_80867FD4
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x1402(v1)             # 8011B9D2
    lw      a0, 0x0044($sp)
    addu    v0, v1, t8
    lb      t9, 0x00BC(v0)             # 000000BC
    addiu   t1, t9, 0xFFFF             # t1 = FFFFFFFF
    sb      t1, 0x00BC(v0)             # 000000BC
    lh      a1, 0x001C(a3)             # 0000001C
    sw      a3, 0x0040($sp)
    jal     func_800204D0
    andi    a1, a1, 0x003F             # a1 = 00000000
    lw      a0, 0x0040($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x287C          # a1 = 0000287C
    beq     $zero, $zero, lbl_80867FD4
    lw      $ra, 0x0014($sp)
lbl_80867E2C:
    sw      a3, 0x0040($sp)
    jal     func_8007943C
    sw      t0, 0x003C($sp)
    lw      a3, 0x0040($sp)
    bne     v0, $zero, lbl_80867FD0
    lw      t0, 0x003C($sp)
    lwc1    $f0, 0x0030($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    abs.s   $f0, $f0
    lw      t1, 0x0038($sp)
    c.lt.s  $f0, $f2
    lwc1    $f0, 0x002C($sp)
    bc1fl   lbl_80867FA4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    abs.s   $f0, $f0
    lwc1    $f4, 0x0034($sp)
    c.lt.s  $f0, $f2
    lui     $at, 0x4248                # $at = 42480000
    bc1fl   lbl_80867FA4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    mtc1    $at, $f6                   # $f6 = 0.00
    abs.s   $f0, $f4
    c.lt.s  $f0, $f6
    nop
    bc1fl   lbl_80867FA4
    addiu   $at, $zero, 0x0004         # $at = 00000004
    mtc1    $zero, $f0                 # $f0 = 0.00
    ori     t4, $zero, 0x8000          # t4 = 00008000
    lh      t2, 0x00B6(t0)             # 000000B6
    lh      t3, 0x00B6(a3)             # 000000B6
    c.lt.s  $f0, $f4
    subu    v0, t2, t3
    sll     v0, v0, 16
    bc1f    lbl_80867EC8
    sra     v0, v0, 16
    subu    v0, t4, v0
    sll     v0, v0, 16
    sra     v0, v0, 16
lbl_80867EC8:
    bltz    v0, lbl_80867ED8
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_80867ED8
    or      v1, v0, $zero              # v1 = 00000000
lbl_80867ED8:
    slti    $at, v1, 0x3000
    beql    $at, $zero, lbl_80867FD4
    lw      $ra, 0x0014($sp)
    lh      t5, 0x0186(a3)             # 00000186
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beql    t5, $zero, lbl_80867F2C
    lw      t3, 0x0038($sp)
    lhu     t6, 0x1402(v1)             # 8011B9D2
    lw      t9, 0x0044($sp)
    addu    t7, v1, t6
    lb      t8, 0x00BC(t7)             # 000000BC
    bgtzl   t8, lbl_80867F24
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    lw      v0, 0x1C44(t9)             # 00001C44
    addiu   t1, $zero, 0xFDFD          # t1 = FFFFFDFD
    beq     $zero, $zero, lbl_80867FD0
    sh      t1, 0x0680(v0)             # 00000680
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
lbl_80867F24:
    sh      t2, 0x041E(t0)             # 0000041E
    lw      t3, 0x0038($sp)
lbl_80867F2C:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    bne     t3, $at, lbl_80867F44
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    beq     $zero, $zero, lbl_80867F48
    sb      t4, 0x041C(t0)             # 0000041C
lbl_80867F44:
    sb      t5, 0x041C(t0)             # 0000041C
lbl_80867F48:
    lwc1    $f8, 0x0034($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f0, $f8
    nop
    bc1fl   lbl_80867F80
    mtc1    $at, $f18                  # $f18 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    nop
    trunc.w.s $f16, $f10
    mfc1    t7, $f16
    beq     $zero, $zero, lbl_80867F94
    sb      t7, 0x041D(t0)             # 0000041D
    mtc1    $at, $f18                  # $f18 = 1.00
lbl_80867F80:
    nop
    trunc.w.s $f6, $f18
    mfc1    t9, $f6
    nop
    sb      t9, 0x041D(t0)             # 0000041D
lbl_80867F94:
    sw      a3, 0x0420(t0)             # 00000420
    beq     $zero, $zero, lbl_80867FD4
    lw      $ra, 0x0014($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80867FA4:
    bne     t1, $at, lbl_80867FD0
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f4                   # $f4 = 240.00
    lwc1    $f8, 0x0090(a3)            # 00000090
    lui     t2, %hi(func_80868098)     # t2 = 80870000
    addiu   t2, t2, %lo(func_80868098) # t2 = 80868098
    c.lt.s  $f4, $f8
    nop
    bc1fl   lbl_80867FD4
    lw      $ra, 0x0014($sp)
    sw      t2, 0x01C4(a3)             # 000001C4
lbl_80867FD0:
    lw      $ra, 0x0014($sp)
lbl_80867FD4:
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_80867FE0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80868010
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_8086802C)     # t6 = 80870000
    addiu   t6, t6, %lo(func_8086802C) # t6 = 8086802C
    beq     $zero, $zero, lbl_8086801C
    sw      t6, 0x01C4(a0)             # 000001C4
lbl_80868010:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x4220                 # a2 = 42200000
lbl_8086801C:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8086802C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80868054
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80867FE0)     # t6 = 80860000
    addiu   t6, t6, %lo(func_80867FE0) # t6 = 80867FE0
    sw      t6, 0x01C4(t7)             # 000001C4
lbl_80868054:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80868064:
    sw      a1, 0x0004($sp)
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    lui     t6, %hi(func_80868108)     # t6 = 80870000
    addiu   t6, t6, %lo(func_80868108) # t6 = 80868108
    c.lt.s  $f4, $f6
    nop
    bc1f    lbl_80868090
    nop
    sw      t6, 0x01C4(a0)             # 000001C4
lbl_80868090:
    jr      $ra
    nop


func_80868098:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    lui     t6, %hi(func_80868108)     # t6 = 80870000
    addiu   t6, t6, %lo(func_80868108) # t6 = 80868108
    c.lt.s  $f4, $f6
    addiu   a0, a3, 0x0032             # a0 = 00000032
    addiu   a1, $zero, 0xE800          # a1 = FFFFE800
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    bc1f    lbl_808680DC
    nop
    beq     $zero, $zero, lbl_808680F8
    sw      t6, 0x01C4(a3)             # 000001C4
lbl_808680DC:
    jal     func_80063704
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_808680F8
    lw      a3, 0x0018($sp)
    lui     t7, %hi(func_80868064)     # t7 = 80870000
    addiu   t7, t7, %lo(func_80868064) # t7 = 80868064
    sw      t7, 0x01C4(a3)             # 000001C4
lbl_808680F8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80868108:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0700          # a2 = 00000700
    jal     func_80063704
    addiu   a0, a0, 0x0032             # a0 = 00000032
    beq     v0, $zero, lbl_80868140
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80867D28)     # t6 = 80860000
    addiu   t6, t6, %lo(func_80867D28) # t6 = 80867D28
    sw      t6, 0x01C4(t7)             # 000001C4
lbl_80868140:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80868150:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s3, 0x0048($sp)
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x004C($sp)
    sw      s2, 0x0044($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v1, 0x0186(a2)             # 00000186
    addiu   s0, a2, 0x013C             # s0 = 0000013C
    or      a0, s0, $zero              # a0 = 0000013C
    bne     v1, $zero, lbl_8086819C
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808681A4
    or      v0, $zero, $zero           # v0 = 00000000
lbl_8086819C:
    sh      t6, 0x0186(a2)             # 00000186
    lh      v0, 0x0186(a2)             # 00000186
lbl_808681A4:
    bnel    v0, $zero, lbl_8086837C
    lw      $ra, 0x004C($sp)
    jal     func_8008C9C0
    sw      a2, 0x0050($sp)
    beq     v0, $zero, lbl_808681D0
    lw      a2, 0x0050($sp)
    lui     t7, %hi(func_80867D28)     # t7 = 80860000
    addiu   t7, t7, %lo(func_80867D28) # t7 = 80867D28
    sw      t7, 0x01C4(a2)             # 000001C4
    beq     $zero, $zero, lbl_80868378
    sb      $zero, 0x0181(a2)          # 00000181
lbl_808681D0:
    lbu     t8, 0x0180(a2)             # 00000180
    lui     t9, %hi(var_8086862C)      # t9 = 80870000
    or      a0, s0, $zero              # a0 = 0000013C
    addu    t9, t9, t8
    lbu     t9, %lo(var_8086862C)(t9)
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t9, $f4                    # $f4 = 0.00
    bgez    t9, lbl_80868200
    cvt.s.w $f4, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f4, $f4, $f6
lbl_80868200:
    mfc1    a1, $f4
    jal     func_8008D6A8
    sw      a2, 0x0050($sp)
    beq     v0, $zero, lbl_808682FC
    lw      a2, 0x0050($sp)
    lh      v0, 0x00A4(s3)             # 000000A4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80868238
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80868238
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80868244
    addiu   v0, $zero, 0x5802          # v0 = 00005802
lbl_80868238:
    beq     $zero, $zero, lbl_80868244
    addiu   v0, $zero, 0x28DB          # v0 = 000028DB
    addiu   v0, $zero, 0x5802          # v0 = 00005802
lbl_80868244:
    andi    a1, v0, 0xFFFF             # a1 = 00005802
    jal     func_80022FD0
    sw      a2, 0x0050($sp)
    lw      a2, 0x0050($sp)
    lui     $at, 0x3FC0                # $at = 3FC00000
    mtc1    $at, $f10                  # $f10 = 1.50
    lwc1    $f8, 0x0158(a2)            # 00000158
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_8086837C
    lw      $ra, 0x004C($sp)
    jal     func_800CDCCC              # Rand.Next() float
    sw      a2, 0x0050($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lw      a2, 0x0050($sp)
    lui     $at, %hi(var_80868660)     # $at = 80870000
    mul.s   $f18, $f0, $f16
    or      s0, $zero, $zero           # s0 = 00000000
    trunc.w.s $f4, $f18
    mfc1    v0, $f4
    nop
    addiu   s1, v0, 0x0032             # s1 = 00000032
    blezl   s1, lbl_8086837C
    lw      $ra, 0x004C($sp)
    lwc1    $f26, %lo(var_80868660)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f24                  # $f24 = 50.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f22                  # $f22 = 100.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f20                  # $f20 = 60.00
    addiu   s2, a2, 0x0024             # s2 = 00000024
    mfc1    a2, $f20
lbl_808682CC:
    mfc1    a3, $f22
    or      a0, s3, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000024
    swc1    $f24, 0x0010($sp)
    jal     func_8001CEDC
    swc1    $f26, 0x0014($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    slt     $at, s0, s1
    bnel    $at, $zero, lbl_808682CC
    mfc1    a2, $f20
    beq     $zero, $zero, lbl_8086837C
    lw      $ra, 0x004C($sp)
lbl_808682FC:
    lbu     t1, 0x0180(a2)             # 00000180
    lui     t2, %hi(var_80868630)      # t2 = 80870000
    or      a0, s0, $zero              # a0 = 00000001
    addu    t2, t2, t1
    lbu     t2, %lo(var_80868630)(t2)
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t2, $f6                    # $f6 = 0.00
    bgez    t2, lbl_8086832C
    cvt.s.w $f6, $f6
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8086832C:
    mfc1    a1, $f6
    jal     func_8008D6A8
    sw      a2, 0x0050($sp)
    beq     v0, $zero, lbl_80868378
    lw      a2, 0x0050($sp)
    lh      v0, 0x00A4(s3)             # 000000A4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    or      a0, a2, $zero              # a0 = 00000000
    beq     v0, $at, lbl_80868364
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     v0, $at, lbl_80868364
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_80868370
    addiu   v0, $zero, 0x2801          # v0 = 00002801
lbl_80868364:
    beq     $zero, $zero, lbl_80868370
    addiu   v0, $zero, 0x28DC          # v0 = 000028DC
    addiu   v0, $zero, 0x2801          # v0 = 00002801
lbl_80868370:
    jal     func_80022FD0
    andi    a1, v0, 0xFFFF             # a1 = 00002801
lbl_80868378:
    lw      $ra, 0x004C($sp)
lbl_8086837C:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_808683A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x01C4(a0)             # 000001C4
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808683C8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      a3, 0x0034($sp)
    or      a3, a0, $zero              # a3 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a2, 0x0030($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     a1, $at, lbl_808684DC
    lw      v1, 0x003C($sp)
    lw      t0, 0x0038($sp)
    lb      t6, 0x0184(v1)             # 00000184
    lh      t4, 0x0004(t0)             # 00000004
    lh      t5, 0x0032(v1)             # 00000032
    lui     $at, 0x0001                # $at = 00010000
    lhu     t1, 0x001C(v1)             # 0000001C
    lui     t8, %hi(var_80868634)      # t8 = 80870000
    addu    v0, a3, $at
    sll     t7, t6,  3
    lw      t9, 0x1D38(v0)             # 00001D38
    addiu   t8, t8, %lo(var_80868634)  # t8 = 80868634
    addu    t6, t4, t5
    addu    a2, t7, t8
    sh      t6, 0x0004(t0)             # 00000004
    lb      t7, 0x1CD0(v0)             # 00001CD0
    sra     t2, t1, 10
    sll     t3, t2,  4
    bgez    t7, lbl_80868448
    addu    a0, t9, t3
    lb      a1, 0x0000(a0)             # 00000000
    lb      t8, 0x0002(a0)             # 00000002
    lw      t1, 0x0030($sp)
    bne     a1, t8, lbl_808684B8
lbl_80868448:
    addiu   a0, a3, 0x00E0             # a0 = 000000E0
    addiu   a1, v1, 0x0024             # a1 = 00000024
    jal     func_80063F00
    sw      a2, 0x001C($sp)
    lw      v1, 0x003C($sp)
    lw      t0, 0x0038($sp)
    lw      a1, 0x0030($sp)
    lh      t1, 0x00B6(v1)             # 000000B6
    lh      t2, 0x0004(t0)             # 00000004
    lw      a2, 0x001C($sp)
    addu    t9, t1, t2
    subu    a0, t9, v0
    sll     a0, a0, 16
    sra     a0, a0, 16
    bltz    a0, lbl_80868490
    subu    v0, $zero, a0
    beq     $zero, $zero, lbl_80868490
    or      v0, a0, $zero              # v0 = 00000000
lbl_80868490:
    slti    $at, v0, 0x4000
    beql    $at, $zero, lbl_808684AC
    lw      t4, 0x0004(a2)             # 00000004
    lw      t3, 0x0000(a2)             # 00000000
    beq     $zero, $zero, lbl_808684DC
    sw      t3, 0x0000(a1)             # 00000000
    lw      t4, 0x0004(a2)             # 00000004
lbl_808684AC:
    sw      t4, 0x0000(a1)             # 00000000
    beq     $zero, $zero, lbl_808684E0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808684B8:
    lb      t5, 0x0003(v1)             # 00000003
    lbu     v0, 0x0182(v1)             # 00000182
    beql    t5, a1, lbl_808684D0
    sll     t6, v0,  2
    xori    v0, v0, 0x0001             # v0 = 00000001
    sll     t6, v0,  2
lbl_808684D0:
    addu    t7, a2, t6
    lw      t8, 0x0000(t7)             # 00000000
    sw      t8, 0x0000(t1)             # 00000000
lbl_808684DC:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808684E0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808684F0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lb      t6, 0x0183(s0)             # 00000183
    lb      t7, 0x001E(s0)             # 0000001E
    lw      t8, 0x0034($sp)
    bnel    t6, t7, lbl_808685BC
    lw      $ra, 0x0024($sp)
    lw      a0, 0x0000(t8)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0028($sp)
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lui     a3, %hi(func_808683C8)     # a3 = 80870000
    addiu   a3, a3, %lo(func_808683C8) # a3 = 808683C8
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_8008993C
    lw      a0, 0x0034($sp)
    lh      v0, 0x0032(s0)             # 00000032
    lw      t0, 0x0028($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    beql    v0, $zero, lbl_808685A8
    lh      a1, 0x0186(s0)             # 00000186
    blez    v0, lbl_80868588
    lui     t4, 0xDE00                 # t4 = DE000000
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t2, 0x0401                 # t2 = 04010000
    addiu   t2, t2, 0xF2A0             # t2 = 0400F2A0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(t0)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_808685A8
    lh      a1, 0x0186(s0)             # 00000186
lbl_80868588:
    lw      v1, 0x02C0(t0)             # 000002C0
    lui     t5, 0x0401                 # t5 = 04010000
    addiu   t5, t5, 0xF158             # t5 = 0400F158
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(t0)             # 000002C0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lh      a1, 0x0186(s0)             # 00000186
lbl_808685A8:
    beql    a1, $zero, lbl_808685BC
    lw      $ra, 0x0024($sp)
    jal     func_80026DC8
    lw      a0, 0x0034($sp)
    lw      $ra, 0x0024($sp)
lbl_808685BC:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop
    nop

.section .data

var_808685D0: .word 0x00090A00, 0x00000010, 0x00010000, 0x000001C8
.word func_80867920
.word func_80867B3C
.word func_808683A4
.word func_808684F0
var_808685F0: .word \
0x00040100, 0x002C0005, 0x02000059, 0x00070300, \
0x01870008, 0x03000187, 0xFFFF0000, 0x0001FFFF, \
0x04000002
var_80868614: .word 0x801F0000, 0x30F40FA0
var_8086861C: .word 0x0400EBF8, 0x0400EA54, 0x040104D8, 0x0400EB40
var_8086862C: .word 0x19191919
var_80868630: .word 0x3C463C46
var_80868634: .word \
0x0400F158, 0x0400F2A0, 0x0600F998, 0x0600F938, \
0x06004958, 0x06004A10, 0x060013B8, 0x06001420, \
0x050047A0, 0x05004978, 0x00000000

.section .rodata

var_80868660: .word 0x3E19999A, 0x00000000, 0x00000000, 0x00000000

