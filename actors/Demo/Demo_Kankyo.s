.section .text
func_809307C0:
    sw      a1, 0x05F0(a0)             # 000005F0
    jr      $ra
    nop


func_809307CC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s3, 0x0040($sp)
    sw      s0, 0x0034($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    lh      t6, 0x001C(s3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    lui     a1, %hi(var_80933A80)      # a1 = 80930000
    sll     t7, t6,  1
    addu    a1, a1, t7
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s0, $at
    jal     func_80081628              # ObjectIndex
    lh      a1, %lo(var_80933A80)(a1)
    bltzl   v0, lbl_80930820
    lhu     t8, 0x001C(s3)             # 0000001C
    sb      v0, 0x013C(s3)             # 0000013C
    lhu     t8, 0x001C(s3)             # 0000001C
lbl_80930820:
    sltiu   $at, t8, 0x0012
    beq     $at, $zero, lbl_80930B58
    sll     t8, t8,  2
    lui     $at, %hi(var_80934000)     # $at = 80930000
    addu    $at, $at, t8
    lw      t8, %lo(var_80934000)($at)
    jr      t8
    nop
var_80930840:
    lh      v0, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    addiu   t1, $zero, 0x000E          # t1 = 0000000E
    beq     v0, $at, lbl_8093089C
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   $at, $zero, 0x0047         # $at = 00000047
    beq     v0, $at, lbl_80930874
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   $at, $zero, 0x0051         # $at = 00000051
    beq     v0, $at, lbl_809308B4
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    b       lbl_809308D0
    nop
lbl_80930874:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    sw      $zero, 0x1CC8($at)         # 00011CC8
    lui     $at, %hi(var_809344AC)     # $at = 80930000
    sh      t9, %lo(var_809344AC)($at)
    lui     $at, %hi(var_809344AE)     # $at = 80930000
    addiu   t0, $zero, 0x0008          # t0 = 00000008
    sh      t0, %lo(var_809344AE)($at)
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_8093089C:
    lui     $at, %hi(var_809344AC)     # $at = 80930000
    sh      t1, %lo(var_809344AC)($at)
    lui     $at, %hi(var_809344AE)     # $at = 80930000
    sh      t2, %lo(var_809344AE)($at)
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_809308B4:
    lui     $at, %hi(var_809344AC)     # $at = 80930000
    sh      t3, %lo(var_809344AC)($at)
    lui     $at, %hi(var_809344AE)     # $at = 80930000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    sh      t4, %lo(var_809344AE)($at)
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_809308D0:
    jal     func_80020EB4
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
var_809308E0:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    jal     func_800CDCCC              # Rand.Next() float
    sw      $zero, 0x1CC8($at)         # 00011CC8
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    nop
    mul.s   $f4, $f0, $f12
    add.s   $f2, $f4, $f12
    swc1    $f2, 0x0058(s3)            # 00000058
    swc1    $f2, 0x0054(s3)            # 00000054
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f2, 0x0050(s3)            # 00000050
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f8, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0140(s3)           # 00000140
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f16                  # $f16 = 3.00
    nop
    mul.s   $f18, $f0, $f16
    add.s   $f4, $f18, $f2
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0144(s3)            # 00000144
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   s2, $zero, 0x0028          # s2 = 00000028
    mul.s   $f8, $f0, $f6
    add.s   $f10, $f8, $f2
    b       lbl_80930B5C
    swc1    $f10, 0x0148(s3)           # 00000148
var_80930980:
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_80930988:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, %hi(var_80934048)     # $at = 80930000
    lwc1    $f16, %lo(var_80934048)($at)
    multu   s0, s2
    mul.s   $f18, $f0, $f16
    trunc.w.s $f4, $f18
    mflo    t5
    addu    s1, s3, t5
    mfc1    t7, $f4
    jal     func_800CDCCC              # Rand.Next() float
    sh      t7, 0x0160(s1)             # 00000160
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f10                  # $f10 = 60.00
    mul.s   $f8, $f0, $f6
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x001E
    add.s   $f16, $f8, $f10
    bne     $at, $zero, lbl_80930988
    swc1    $f16, 0x0158(s1)           # 00000158
    b       lbl_80930B60
    or      s0, $zero, $zero           # s0 = 00000000
var_809309F0:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     t8, 0x8012                 # t8 = 80120000
    swc1    $f2, 0x0058(s3)            # 00000058
    swc1    $f2, 0x0054(s3)            # 00000054
    swc1    $f2, 0x0050(s3)            # 00000050
    swc1    $f18, 0x0158(s3)           # 00000158
    lhu     t8, -0x4B54(t8)            # 8011B4AC
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    andi    t9, t8, 0x0800             # t9 = 00000000
    bne     t9, $zero, lbl_80930A6C
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    lwc1    $f4, 0x0024(s3)            # 00000024
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s3, $zero              # a1 = 00000000
    swc1    $f4, 0x0010($sp)
    lwc1    $f6, 0x0028(s3)            # 00000028
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0070          # a3 = 00000070
    swc1    $f6, 0x0014($sp)
    lwc1    $f8, 0x002C(s3)            # 0000002C
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f8, 0x0018($sp)
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_80930A6C:
    sh      t0, 0x1D32($at)            # 00001D32
    jal     func_80020EB4
    or      a0, s3, $zero              # a0 = 00000000
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
var_80930A80:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   s2, $zero, 0x0028          # s2 = 00000028
    swc1    $f2, 0x0058(s3)            # 00000058
    swc1    $f2, 0x0054(s3)            # 00000054
    swc1    $f2, 0x0050(s3)            # 00000050
    b       lbl_80930B5C
    swc1    $f10, 0x0158(s3)           # 00000158
var_80930AA4:
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x1C24             # a1 = 00001C24
    or      a2, s3, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0007          # a3 = 00000007
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lw      t1, 0x0004(s3)             # 00000004
    lh      t5, 0x001C(s3)             # 0000001C
    lui     $at, 0x0200                # $at = 02000000
    or      t2, t1, $at                # t2 = 02000000
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x0023          # t4 = 00000023
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    sw      t2, 0x0004(s3)             # 00000004
    sb      t3, 0x0003(s3)             # 00000003
    sb      t4, 0x013E(s3)             # 0000013E
    sb      $zero, 0x013D(s3)          # 0000013D
    swc1    $f2, 0x0058(s3)            # 00000058
    swc1    $f2, 0x0054(s3)            # 00000054
    bne     t5, $at, lbl_80930B28
    swc1    $f2, 0x0050(s3)            # 00000050
    lui     a3, 0x8010                 # a3 = 80100000
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    sw      a3, 0x0010($sp)
    addiu   a0, $zero, 0x28A6          # a0 = 000028A6
    jal     func_800C806C
    addiu   a2, $zero, 0x0004          # a2 = 00000004
lbl_80930B28:
    b       lbl_80930B5C
    addiu   s2, $zero, 0x0028          # s2 = 00000028
var_80930B30:
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    addiu   t7, $zero, 0x0023          # t7 = 00000023
    sb      t7, 0x013E(s3)             # 0000013E
    sb      $zero, 0x013D(s3)          # 0000013D
    addiu   s2, $zero, 0x0028          # s2 = 00000028
    swc1    $f2, 0x0058(s3)            # 00000058
    swc1    $f2, 0x0054(s3)            # 00000054
    b       lbl_80930B5C
    swc1    $f2, 0x0050(s3)            # 00000050
lbl_80930B58:
    addiu   s2, $zero, 0x0028          # s2 = 00000028
lbl_80930B5C:
    or      s0, $zero, $zero           # s0 = 00000000
lbl_80930B60:
    multu   s0, s2
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x001E
    mflo    t8
    addu    t9, s3, t8
    bne     $at, $zero, lbl_80930B60
    sb      $zero, 0x0162(t9)          # 00000162
    lui     a1, %hi(func_80930BBC)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80930BBC) # a1 = 80930BBC
    jal     func_809307C0
    or      a0, s3, $zero              # a0 = 00000000
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_80930BB0:
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80930BBC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a2, a1, $zero              # a2 = 00000000
    lbu     t6, 0x013C(a3)             # 0000013C
    lb      t7, 0x001E(a3)             # 0000001E
    lw      t0, 0x1C44(a2)             # 00001C44
    bnel    t6, t7, lbl_80930FE8
    lw      $ra, 0x0014($sp)
    lhu     t8, 0x001C(a3)             # 0000001C
    sltiu   $at, t8, 0x0012
    beq     $at, $zero, lbl_80930FE4
    sll     t8, t8,  2
    lui     $at, %hi(var_8093404C)     # $at = 80930000
    addu    $at, $at, t8
    lw      t8, %lo(var_8093404C)($at)
    jr      t8
    nop
var_80930C04:
    lui     a1, %hi(func_80931150)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80931150) # a1 = 80931150
    jal     func_809307C0
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80930FE8
    lw      $ra, 0x0014($sp)
var_80930C1C:
    lui     a1, %hi(func_809311C8)     # a1 = 80930000
    addiu   a1, a1, %lo(func_809311C8) # a1 = 809311C8
    jal     func_809307C0
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80930FE8
    lw      $ra, 0x0014($sp)
var_80930C34:
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    jal     func_8005991C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80930FE4
    lw      a3, 0x0018($sp)
    lui     a1, %hi(func_80931214)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80931214) # a1 = 80931214
    jal     func_809307C0
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80930FE8
    lw      $ra, 0x0014($sp)
var_80930C64:
    lui     $at, 0x0001                # $at = 00010000
    addu    a0, a2, $at
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    sb      a1, 0x0B06(a0)             # 00000B06
    sb      a1, 0x0B07(a0)             # 00000B07
    sb      a1, 0x0B08(a0)             # 00000B08
    addu    $at, $at, a2
    sb      $zero, 0x0B05($at)         # 00010B05
    lbu     v0, 0x013E(a3)             # 0000013E
    slti    $at, v0, 0x0015
    beq     $at, $zero, lbl_80930D84
    or      v1, v0, $zero              # v1 = 00000000
    slti    $at, v1, 0x000F
    bne     $at, $zero, lbl_80930D84
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80930CC0
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80930CC0:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f10                  # $f10 = 15.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    sub.s   $f16, $f6, $f10
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    div.s   $f0, $f16, $f18
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    sb      t9, 0x0B05($at)            # 00010B05
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f4, $f2, $f0
    sub.s   $f8, $f2, $f4
    cfc1    t1, $f31
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f8
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80930D64
    mfc1    t2, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f6, $f8, $f6
    ctc1    t2, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80930D58
    nop
    mfc1    t2, $f6
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80930D70
    or      t2, t2, $at                # t2 = 80000000
lbl_80930D58:
    b       lbl_80930D70
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f6
lbl_80930D64:
    nop
    bltz    t2, lbl_80930D58
    nop
lbl_80930D70:
    ctc1    t1, $f31
    sb      t2, 0x0B09(a0)             # 00000B09
    nop
    lbu     v0, 0x013E(a3)             # 0000013E
    or      v1, v0, $zero              # v1 = 00000000
lbl_80930D84:
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    slti    $at, v1, 0x000F
    beq     $at, $zero, lbl_80930E7C
    slti    $at, v1, 0x0004
    bnel    $at, $zero, lbl_80930E80
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    mtc1    v0, $f10                   # $f10 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_80930DBC
    cvt.s.w $f16, $f10
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_80930DBC:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    sub.s   $f8, $f16, $f4
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a2
    div.s   $f0, $f8, $f6
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    sb      t3, 0x0B05($at)            # 00010B05
    lui     $at, 0x4F00                # $at = 4F000000
    mul.s   $f10, $f2, $f0
    cfc1    t4, $f31
    ctc1    t5, $f31
    nop
    cvt.w.s $f18, $f10
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    beql    t5, $zero, lbl_80930E5C
    mfc1    t5, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sub.s   $f18, $f10, $f18
    ctc1    t5, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t5, $f31
    nop
    andi    t5, t5, 0x0078             # t5 = 00000000
    bne     t5, $zero, lbl_80930E50
    nop
    mfc1    t5, $f18
    lui     $at, 0x8000                # $at = 80000000
    b       lbl_80930E68
    or      t5, t5, $at                # t5 = 80000000
lbl_80930E50:
    b       lbl_80930E68
    addiu   t5, $zero, 0xFFFF          # t5 = FFFFFFFF
    mfc1    t5, $f18
lbl_80930E5C:
    nop
    bltz    t5, lbl_80930E50
    nop
lbl_80930E68:
    ctc1    t4, $f31
    sb      t5, 0x0B09(a0)             # 00000B09
    nop
    lbu     v0, 0x013E(a3)             # 0000013E
    or      v1, v0, $zero              # v1 = 00000000
lbl_80930E7C:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
lbl_80930E80:
    bne     v1, $at, lbl_80930E90
    or      a0, a2, $zero              # a0 = 00000000
    sw      $zero, 0x0134(t0)          # 00000134
    lbu     v0, 0x013E(a3)             # 0000013E
lbl_80930E90:
    beq     v0, $zero, lbl_80930EA4
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x013E(a3)             # 0000013E
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_80930EA4:
    bnel    v0, $at, lbl_80930FE8
    lw      $ra, 0x0014($sp)
    lh      t7, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    lui     v1, 0x8012                 # v1 = 80120000
    bne     t7, $at, lbl_80930EFC
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   t8, $zero, 0x0019          # t8 = 00000019
    lui     $at, %hi(var_809344B0)     # $at = 80930000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    sh      t8, %lo(var_809344B0)($at)
    lw      t9, 0x0004(v1)             # 8011A5D4
    lui     t2, %hi(var_80933330)      # t2 = 80930000
    lui     t1, %hi(var_80933810)      # t1 = 80930000
    beq     t9, $zero, lbl_80930EF4
    addiu   t2, t2, %lo(var_80933330)  # t2 = 80933330
    addiu   t1, t1, %lo(var_80933810)  # t1 = 80933810
    b       lbl_80930F2C
    sw      t1, 0x1D68(a2)             # 00001D68
lbl_80930EF4:
    b       lbl_80930F2C
    sw      t2, 0x1D68(a2)             # 00001D68
lbl_80930EFC:
    addiu   t3, $zero, 0x0020          # t3 = 00000020
    lui     $at, %hi(var_809344B0)     # $at = 80930000
    sh      t3, %lo(var_809344B0)($at)
    lw      t4, 0x0004(v1)             # 8011A5D4
    lui     t6, %hi(var_809330A0)      # t6 = 80930000
    lui     t5, %hi(var_80933560)      # t5 = 80930000
    beq     t4, $zero, lbl_80930F28
    addiu   t6, t6, %lo(var_809330A0)  # t6 = 809330A0
    addiu   t5, t5, %lo(var_80933560)  # t5 = 80933560
    b       lbl_80930F2C
    sw      t5, 0x1D68(a2)             # 00001D68
lbl_80930F28:
    sw      t6, 0x1D68(a2)             # 00001D68
lbl_80930F2C:
    jal     func_8009DAE4
    sw      a3, 0x0018($sp)
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beq     v0, $zero, lbl_80930F4C
    lw      a3, 0x0018($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x1414(v1)             # 8011B9E4
lbl_80930F4C:
    lui     a1, %hi(func_80930FF4)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80930FF4) # a1 = 80930FF4
    jal     func_809307C0
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80930FE8
    lw      $ra, 0x0014($sp)
var_80930F64:
    lh      t8, 0x00A4(a2)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    bne     t8, $at, lbl_80930FA8
    or      a0, a3, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t9, 0x0004(v1)             # 8011A5D4
    lui     t2, %hi(var_80933440)      # t2 = 80930000
    lui     t1, %hi(var_80933940)      # t1 = 80930000
    beq     t9, $zero, lbl_80930FA0
    addiu   t2, t2, %lo(var_80933440)  # t2 = 80933440
    addiu   t1, t1, %lo(var_80933940)  # t1 = 80933940
    b       lbl_80930FD4
    sw      t1, 0x1D68(a2)             # 00001D68
lbl_80930FA0:
    b       lbl_80930FD4
    sw      t2, 0x1D68(a2)             # 00001D68
lbl_80930FA8:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      t3, 0x0004(v1)             # 8011A5D4
    lui     t5, %hi(var_809331B0)      # t5 = 80930000
    lui     t4, %hi(var_80933690)      # t4 = 80930000
    beq     t3, $zero, lbl_80930FD0
    addiu   t5, t5, %lo(var_809331B0)  # t5 = 809331B0
    addiu   t4, t4, %lo(var_80933690)  # t4 = 80933690
    b       lbl_80930FD4
    sw      t4, 0x1D68(a2)             # 00001D68
lbl_80930FD0:
    sw      t5, 0x1D68(a2)             # 00001D68
lbl_80930FD4:
    lui     a1, %hi(func_80931004)     # a1 = 80930000
    sb      t6, 0x1414(v1)             # 8011B9E4
    jal     func_809307C0
    addiu   a1, a1, %lo(func_80931004) # a1 = 80931004
lbl_80930FE4:
    lw      $ra, 0x0014($sp)
lbl_80930FE8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80930FF4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_80931004:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    lui     a3, 0x8010                 # a3 = 80100000
    addiu   a3, a3, 0x43A0             # a3 = 801043A0
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lui     t6, 0x8010                 # t6 = 80100000
    addiu   t6, t6, 0x43A8             # t6 = 801043A8
    lui     a1, 0x8010                 # a1 = 80100000
    addiu   a1, a1, 0x4394             # a1 = 80104394
    sw      t6, 0x0014($sp)
    addiu   a0, $zero, 0x28A7          # a0 = 000028A7
    addiu   a2, $zero, 0x0004          # a2 = 00000004
    jal     func_800C806C
    sw      a3, 0x0010($sp)
    lui     a1, %hi(func_80930FF4)     # a1 = 80930000
    addiu   a1, a1, %lo(func_80930FF4) # a1 = 80930FF4
    jal     func_809307C0
    lw      a0, 0x0020($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80931060:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0038($sp)
    sll     t7, t6,  2
    addu    t8, a3, t7
    lw      v0, 0x1D8C(t8)             # 00001D8C
    lw      t2, 0x0018(v0)             # 00000018
    lw      t9, 0x000C(v0)             # 0000000C
    lw      t0, 0x0010(v0)             # 00000010
    mtc1    t2, $f10                   # $f10 = 0.00
    lw      t1, 0x0014(v0)             # 00000014
    mtc1    t9, $f4                    # $f4 = 0.00
    cvt.s.w $f16, $f10
    mtc1    t0, $f6                    # $f6 = 0.00
    mtc1    t1, $f8                    # $f8 = 0.00
    cvt.s.w $f2, $f4
    swc1    $f16, 0x0018($sp)
    lw      t3, 0x001C(v0)             # 0000001C
    mtc1    t3, $f18                   # $f18 = 0.00
    cvt.s.w $f12, $f6
    cvt.s.w $f4, $f18
    cvt.s.w $f14, $f8
    swc1    $f4, 0x001C($sp)
    lw      t4, 0x0020(v0)             # 00000020
    mtc1    t4, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    swc1    $f8, 0x0020($sp)
    lhu     a2, 0x1D74(a3)             # 00001D74
    lhu     a1, 0x0002(v0)             # 00000002
    lhu     a0, 0x0004(v0)             # 00000004
    swc1    $f14, 0x002C($sp)
    swc1    $f12, 0x0028($sp)
    jal     func_8005C690
    swc1    $f2, 0x0024($sp)
    lwc1    $f2, 0x0024($sp)
    lwc1    $f10, 0x0018($sp)
    lw      v0, 0x0030($sp)
    lwc1    $f12, 0x0028($sp)
    sub.s   $f16, $f10, $f2
    lwc1    $f14, 0x002C($sp)
    mul.s   $f18, $f16, $f0
    add.s   $f4, $f18, $f2
    swc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f6, 0x001C($sp)
    sub.s   $f8, $f6, $f12
    mul.s   $f10, $f8, $f0
    add.s   $f16, $f10, $f12
    swc1    $f16, 0x0028(v0)           # 00000028
    lwc1    $f18, 0x0020($sp)
    sub.s   $f4, $f18, $f14
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f6, $f14
    swc1    $f8, 0x002C(v0)            # 0000002C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80931150:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x1D6C(a1)             # 00001D6C
    beql    t6, $zero, lbl_80931190
    lwc1    $f4, 0x014C(a0)            # 0000014C
    lh      v0, 0x001C(a0)             # 0000001C
    sll     t7, v0,  2
    addu    t8, a1, t7
    lw      t9, 0x1D84(t8)             # 00001D84
    addiu   a2, v0, 0xFFFE             # a2 = FFFFFFFE
    beql    t9, $zero, lbl_80931190
    lwc1    $f4, 0x014C(a0)            # 0000014C
    jal     func_80931060
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lwc1    $f4, 0x014C(a0)            # 0000014C
lbl_80931190:
    lwc1    $f6, 0x0140(a0)            # 00000140
    lwc1    $f10, 0x0150(a0)           # 00000150
    lwc1    $f16, 0x0144(a0)           # 00000144
    add.s   $f8, $f4, $f6
    lwc1    $f6, 0x0148(a0)            # 00000148
    lwc1    $f4, 0x0154(a0)            # 00000154
    add.s   $f18, $f10, $f16
    swc1    $f8, 0x014C(a0)            # 0000014C
    add.s   $f8, $f4, $f6
    swc1    $f18, 0x0150(a0)           # 00000150
    swc1    $f8, 0x0154(a0)            # 00000154
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_809311C8:
    sw      a1, 0x0004($sp)
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0x0028          # a1 = 00000028
lbl_809311D4:
    multu   v0, a1
    addiu   v0, v0, 0x0001             # v0 = 00000001
    andi    v0, v0, 0x00FF             # v0 = 00000001
    slti    $at, v0, 0x001E
    mflo    t6
    addu    v1, a0, t6
    lwc1    $f4, 0x0158(v1)            # 00000158
    lh      t7, 0x0160(v1)             # 00000160
    trunc.w.s $f6, $f4
    mfc1    t1, $f6
    nop
    addu    t2, t7, t1
    bne     $at, $zero, lbl_809311D4
    sh      t2, 0x0160(v1)             # 00000160
    jr      $ra
    nop


func_80931214:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x201E          # a1 = 0000201E
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0158(s0)            # 00000158
    lui     $at, 0x42CC                # $at = 42CC0000
    mtc1    $at, $f16                  # $f16 = 102.00
    add.s   $f8, $f4, $f6
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f8, 0x0158(s0)            # 00000158
    lwc1    $f10, 0x0158(s0)           # 00000158
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_809312A0
    lw      $ra, 0x001C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2893          # a1 = 00002893
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EDC(v0)             # 8011B4AC
    ori     t7, t6, 0x0800             # t7 = 00000800
    sh      t7, 0x0EDC(v0)             # 8011B4AC
    jal     func_80020EB4
    lw      a0, 0x011C(s0)             # 0000011C
    lui     a1, %hi(func_809312B0)     # a1 = 80930000
    addiu   a1, a1, %lo(func_809312B0) # a1 = 809312B0
    jal     func_809307C0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809312A0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809312B0:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80020EB4
    lw      a0, 0x011C(a1)             # 0000011C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809312DC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x05F0(a0)             # 000005F0
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80931300:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lbu     a2, 0x013C(s0)             # 0000013C
    lb      t6, 0x001E(s0)             # 0000001E
    bnel    a2, t6, lbl_80931474
    lui     $at, 0x0001                # $at = 00010000
    lhu     t7, 0x001C(s0)             # 0000001C
    sltiu   $at, t7, 0x0012
    beq     $at, $zero, lbl_80931470
    sll     t7, t7,  2
    lui     $at, %hi(var_80934094)     # $at = 80930000
    addu    $at, $at, t7
    lw      t7, %lo(var_80934094)($at)
    jr      t7
    nop
var_8093134C:
    lh      t8, 0x00A4(s1)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t8, $at, lbl_809313EC
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8005991C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bne     v0, $zero, lbl_80931378
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
lbl_80931378:
    lui     a1, 0x4396                 # a1 = 43960000
    jal     func_80021AD4
    addiu   a2, $zero, 0x7530          # a2 = 00007530
    bne     v0, $zero, lbl_80931394
    lui     t9, 0x8012                 # t9 = 80120000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
lbl_80931394:
    lw      t9, -0x5A2C(t9)            # 8011A5D4
    beql    t9, $zero, lbl_809313C8
    lhu     t2, 0x1D74(s1)             # 00001D74
    lhu     t0, 0x1D74(s1)             # 00001D74
    slti    $at, t0, 0x00AA
    bne     $at, $zero, lbl_809313BC
    nop
    lbu     t1, 0x1D6C(s1)             # 00001D6C
    bnel    t1, $zero, lbl_809313EC
    or      a0, s0, $zero              # a0 = 00000000
lbl_809313BC:
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
    lhu     t2, 0x1D74(s1)             # 00001D74
lbl_809313C8:
    slti    $at, t2, 0x0078
    bne     $at, $zero, lbl_809313E0
    nop
    lbu     t3, 0x1D6C(s1)             # 00001D6C
    bnel    t3, $zero, lbl_809313EC
    or      a0, s0, $zero              # a0 = 00000000
lbl_809313E0:
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
lbl_809313EC:
    jal     func_80931678
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_809313FC:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80931C78
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_80931410:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80931DB8
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_80931424:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809320F8
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_80931438:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8093220C
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_8093144C:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809323F0
    or      a1, s1, $zero              # a1 = 00000000
    b       lbl_80931470
    lbu     a2, 0x013C(s0)             # 0000013C
var_80931460:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80932B1C
    or      a1, s1, $zero              # a1 = 00000000
    lbu     a2, 0x013C(s0)             # 0000013C
lbl_80931470:
    lui     $at, 0x0001                # $at = 00010000
lbl_80931474:
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    jal     func_80081688
    or      a1, a2, $zero              # a1 = 00000000
    beql    v0, $zero, lbl_80931498
    lw      $ra, 0x001C($sp)
    lbu     t4, 0x013C(s0)             # 0000013C
    sb      t4, 0x001E(s0)             # 0000001E
    lw      $ra, 0x001C($sp)
lbl_80931498:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_809314A8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sw      s1, 0x0018($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0014($sp)
    lh      v0, 0x00A4(a1)             # 000000A4
    addiu   $at, $zero, 0x0043         # $at = 00000043
    sll     t8, a2,  2
    beq     v0, $at, lbl_80931560
    addu    t8, t8, a2
    addiu   $at, $zero, 0x0047         # $at = 00000047
    beq     v0, $at, lbl_80931500
    addiu   $at, $zero, 0x0051         # $at = 00000051
    beq     v0, $at, lbl_809315C8
    sll     t6, a2,  2
    addu    t6, t6, a2
    sll     t6, t6,  3
    b       lbl_8093162C
    addu    s0, s1, t6
lbl_80931500:
    jal     func_800CDCCC              # Rand.Next() float
    sh      a2, 0x002A($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f2                   # $f2 = 500.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lh      a2, 0x002A($sp)
    sub.s   $f6, $f0, $f4
    sll     t7, a2,  2
    addu    t7, t7, a2
    sll     t7, t7,  3
    mul.s   $f8, $f6, $f2
    addu    s0, s1, t7
    swc1    $f2, 0x0144(s0)            # 00000144
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0140(s0)            # 00000140
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f18                  # $f18 = 500.00
    sub.s   $f16, $f0, $f10
    mul.s   $f4, $f16, $f18
    b       lbl_8093162C
    swc1    $f4, 0x0148(s0)            # 00000148
lbl_80931560:
    mtc1    $zero, $f0                 # $f0 = 0.00
    sll     t8, t8,  3
    addu    s0, s1, t8
    swc1    $f0, 0x014C(s0)            # 0000014C
    swc1    $f0, 0x0150(s0)            # 00000150
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0154(s0)            # 00000154
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f10                  # $f10 = 180.00
    sub.s   $f8, $f0, $f6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    mul.s   $f16, $f8, $f10
    swc1    $f18, 0x0144(s0)           # 00000144
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0140(s0)           # 00000140
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f4                   # $f4 = 0.50
    lui     $at, 0x4334                # $at = 43340000
    mtc1    $at, $f8                   # $f8 = 180.00
    sub.s   $f6, $f0, $f4
    mul.s   $f10, $f6, $f8
    b       lbl_8093162C
    swc1    $f10, 0x0148(s0)           # 00000148
lbl_809315C8:
    jal     func_800CDCCC              # Rand.Next() float
    sh      a2, 0x002A($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f16                  # $f16 = 0.50
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f4                   # $f4 = 600.00
    sub.s   $f18, $f0, $f16
    lh      a2, 0x002A($sp)
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f8                   # $f8 = -500.00
    mul.s   $f6, $f18, $f4
    sll     t9, a2,  2
    addu    t9, t9, a2
    sll     t9, t9,  3
    addu    s0, s1, t9
    swc1    $f8, 0x0144(s0)            # 00000144
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f6, 0x0140(s0)            # 00000140
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f10                  # $f10 = 0.50
    lui     $at, 0x4416                # $at = 44160000
    mtc1    $at, $f18                  # $f18 = 600.00
    sub.s   $f16, $f0, $f10
    mul.s   $f4, $f16, $f18
    swc1    $f4, 0x0148(s0)            # 00000148
lbl_8093162C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     t0, %hi(var_809344AC)      # t0 = 80930000
    lh      t0, %lo(var_809344AC)(t0)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    mtc1    t0, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6
    mul.s   $f10, $f2, $f8
    nop
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f2
    swc1    $f18, 0x0158(s0)           # 00000158
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80931678:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s5, 0x005C($sp)
    sw      s4, 0x0058($sp)
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
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
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f30                  # $f30 = 300.00
    lui     $at, 0x43AF                # $at = 43AF0000
    mtc1    $at, $f28                  # $f28 = 350.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f26                  # $f26 = 10.00
    lui     $at, 0x457A                # $at = 457A0000
    mtc1    $at, $f24                  # $f24 = 4000.00
    lw      s3, 0x0000(s5)             # 00000000
    lui     $at, %hi(var_809340DC)     # $at = 80930000
    lui     s7, 0x0600                 # s7 = 06000000
    lui     s8, 0xDA38                 # s8 = DA380000
    mtc1    $zero, $f20                # $f20 = 0.00
    ori     s8, s8, 0x0003             # s8 = DA380003
    addiu   s7, s7, 0x0080             # s7 = 06000080
    lwc1    $f22, %lo(var_809340DC)($at)
    sh      $zero, 0x0076($sp)
    addiu   s6, $zero, 0x0043          # s6 = 00000043
lbl_8093170C:
    lwc1    $f16, 0x00E0(s5)           # 000000E0
    lwc1    $f4, 0x00EC(s5)            # 000000EC
    lwc1    $f6, 0x00F0(s5)            # 000000F0
    lwc1    $f8, 0x00E4(s5)            # 000000E4
    sub.s   $f12, $f4, $f16
    lwc1    $f10, 0x00F4(s5)           # 000000F4
    lwc1    $f18, 0x00E8(s5)           # 000000E8
    sub.s   $f2, $f6, $f8
    mul.s   $f4, $f12, $f12
    lh      t6, 0x00A4(s5)             # 000000A4
    sub.s   $f14, $f10, $f18
    mul.s   $f6, $f2, $f2
    lh      a2, 0x0076($sp)
    or      a0, s4, $zero              # a0 = 00000000
    mul.s   $f10, $f14, $f14
    add.s   $f8, $f4, $f6
    add.s   $f0, $f8, $f10
    beq     s6, t6, lbl_809317A8
    sqrt.s  $f0, $f0
    div.s   $f18, $f12, $f0
    lui     $at, 0x42A0                # $at = 42A00000
    mtc1    $at, $f10                  # $f10 = 80.00
    sll     t7, a2,  2
    addu    t7, t7, a2
    sll     t7, t7,  3
    addu    s2, s4, t7
    div.s   $f8, $f2, $f0
    mul.s   $f4, $f18, $f28
    add.s   $f6, $f16, $f4
    mul.s   $f18, $f8, $f10
    swc1    $f6, 0x014C(s2)            # 0000014C
    lwc1    $f4, 0x00E4(s5)            # 000000E4
    div.s   $f10, $f14, $f0
    add.s   $f6, $f4, $f18
    swc1    $f6, 0x0150(s2)            # 00000150
    lwc1    $f8, 0x00E8(s5)            # 000000E8
    mul.s   $f4, $f10, $f28
    add.s   $f18, $f8, $f4
    swc1    $f18, 0x0154(s2)           # 00000154
lbl_809317A8:
    lh      a2, 0x0076($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    sll     t8, a2,  2
    addu    t8, t8, a2
    sll     t8, t8,  3
    addu    s2, s4, t8
    lbu     v0, 0x0162(s2)             # 00000162
    beq     v0, $zero, lbl_809317EC
    nop
    beq     v0, $at, lbl_80931860
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80931984
    or      a0, s4, $zero              # a0 = 00000000
    lwc1    $f6, 0x0144(s2)            # 00000144
    lwc1    $f10, 0x0150(s2)           # 00000150
    b       lbl_809319A4
    add.s   $f14, $f6, $f10
lbl_809317EC:
    jal     func_809314A8
    or      a1, s5, $zero              # a1 = 00000000
    lui     t9, 0x8012                 # t9 = 80120000
    lw      t9, -0x5A30(t9)            # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bne     t9, $at, lbl_80931828
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f8                   # $f8 = 500.00
    nop
    mul.s   $f4, $f0, $f8
    b       lbl_80931844
    swc1    $f4, 0x0144(s2)            # 00000144
lbl_80931828:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0xC3FA                # $at = C3FA0000
    mtc1    $at, $f18                  # $f18 = -500.00
    nop
    mul.s   $f6, $f0, $f18
    swc1    $f6, 0x0144(s2)            # 00000144
lbl_80931844:
    lbu     t0, 0x0162(s2)             # 00000162
    lwc1    $f10, 0x0144(s2)           # 00000144
    lwc1    $f8, 0x0150(s2)            # 00000150
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0162(s2)             # 00000162
    b       lbl_809319A4
    add.s   $f14, $f10, $f8
lbl_80931860:
    div.s   $f4, $f2, $f0
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f18                  # $f18 = 150.00
    lui     t2, 0x8012                 # t2 = 80120000
    lw      t2, -0x5A30(t2)            # 8011A5D0
    lwc1    $f10, 0x00E4(s5)           # 000000E4
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    lui     v0, 0x8012                 # v0 = 80120000
    mul.s   $f6, $f4, $f18
    bne     t2, $at, lbl_809318A0
    add.s   $f12, $f10, $f6
    lwc1    $f8, 0x0144(s2)            # 00000144
    lwc1    $f4, 0x0158(s2)            # 00000158
    sub.s   $f18, $f8, $f4
    b       lbl_809318B0
    swc1    $f18, 0x0144(s2)           # 00000144
lbl_809318A0:
    lwc1    $f10, 0x0144(s2)           # 00000144
    lwc1    $f6, 0x0158(s2)            # 00000158
    add.s   $f8, $f10, $f6
    swc1    $f8, 0x0144(s2)            # 00000144
lbl_809318B0:
    lw      v0, -0x5A30(v0)            # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    bnel    v0, $at, lbl_80931900
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
    lwc1    $f4, 0x0144(s2)            # 00000144
    lwc1    $f18, 0x0150(s2)           # 00000150
    sub.s   $f10, $f12, $f30
    add.s   $f14, $f4, $f18
    c.lt.s  $f14, $f10
    nop
    bc1fl   lbl_809319A8
    lwc1    $f8, 0x0148(s2)            # 00000148
    lbu     t3, 0x0162(s2)             # 00000162
    lwc1    $f6, 0x0144(s2)            # 00000144
    lwc1    $f8, 0x0150(s2)            # 00000150
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sb      t4, 0x0162(s2)             # 00000162
    b       lbl_809319A4
    add.s   $f14, $f6, $f8
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
lbl_80931900:
    bnel    v0, $at, lbl_80931948
    lwc1    $f4, 0x0144(s2)            # 00000144
    lwc1    $f4, 0x0144(s2)            # 00000144
    lwc1    $f18, 0x0150(s2)           # 00000150
    add.s   $f10, $f12, $f30
    add.s   $f14, $f4, $f18
    c.lt.s  $f10, $f14
    nop
    bc1fl   lbl_809319A8
    lwc1    $f8, 0x0148(s2)            # 00000148
    lbu     t5, 0x0162(s2)             # 00000162
    lwc1    $f6, 0x0144(s2)            # 00000144
    lwc1    $f8, 0x0150(s2)            # 00000150
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0162(s2)             # 00000162
    b       lbl_809319A4
    add.s   $f14, $f6, $f8
    lwc1    $f4, 0x0144(s2)            # 00000144
lbl_80931948:
    lwc1    $f18, 0x0150(s2)           # 00000150
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f10                  # $f10 = 1000.00
    add.s   $f14, $f4, $f18
    c.lt.s  $f10, $f14
    nop
    bc1fl   lbl_809319A8
    lwc1    $f8, 0x0148(s2)            # 00000148
    lbu     t7, 0x0162(s2)             # 00000162
    lwc1    $f6, 0x0144(s2)            # 00000144
    lwc1    $f8, 0x0150(s2)            # 00000150
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0162(s2)             # 00000162
    b       lbl_809319A4
    add.s   $f14, $f6, $f8
lbl_80931984:
    jal     func_809314A8
    or      a1, s5, $zero              # a1 = 00000000
    lbu     t9, 0x0162(s2)             # 00000162
    lwc1    $f4, 0x0144(s2)            # 00000144
    lwc1    $f18, 0x0150(s2)           # 00000150
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sb      t0, 0x0162(s2)             # 00000162
    add.s   $f14, $f4, $f18
lbl_809319A4:
    lwc1    $f8, 0x0148(s2)            # 00000148
lbl_809319A8:
    lwc1    $f4, 0x0154(s2)            # 00000154
    lwc1    $f10, 0x0140(s2)           # 00000140
    lwc1    $f6, 0x014C(s2)            # 0000014C
    add.s   $f18, $f8, $f4
    or      a3, $zero, $zero           # a3 = 00000000
    add.s   $f12, $f10, $f6
    mfc1    a2, $f18
    jal     func_800AA7F4
    nop
    lui     t1, 0x8012                 # t1 = 80120000
    lw      t1, -0x5A30(t1)            # 8011A5D0
    addiu   $at, $zero, 0x00A0         # $at = 000000A0
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    beq     t1, $at, lbl_809319EC
    lui     $at, %hi(var_809340E0)     # $at = 80930000
    jal     func_800AA9E0
    lwc1    $f12, %lo(var_809340E0)($at)
lbl_809319EC:
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xE700                 # t3 = E7000000
    lui     t4, 0x8012                 # t4 = 80120000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s3)             # 000002D0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t3, 0x0000(v0)             # 00000000
    lw      t4, -0x5A30(t4)            # 8011A5D0
    addiu   $at, $zero, 0x00CD         # $at = 000000CD
    lui     t2, 0xFA00                 # t2 = FA000000
    bne     t4, $at, lbl_80931A60
    lui     t5, 0xFB00                 # t5 = FB000000
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s3)             # 000002D0
    sw      t7, 0x0004(v0)             # 00000004
    sw      t6, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t0, 0xFFFF                 # t0 = FFFF0000
    ori     t0, t0, 0x00FF             # t0 = FFFF00FF
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s3)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t0, 0x0004(v0)             # 00000004
    b       lbl_80931A98
    nop
lbl_80931A60:
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t3, 0xC8FF                 # t3 = C8FF0000
    ori     t3, t3, 0xFFFF             # t3 = C8FFFFFF
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s3)             # 000002D0
    sw      t3, 0x0004(v0)             # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x02D0(s3)             # 000002D0
    lui     t6, 0x0096                 # t6 = 00960000
    ori     t6, t6, 0xFFFF             # t6 = 0096FFFF
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t5, 0x0000(v0)             # 00000000
lbl_80931A98:
    lui     t7, %hi(var_809344AE)      # t7 = 80930000
    lh      t7, %lo(var_809344AE)(t7)
    lui     $at, %hi(var_809340E4)     # $at = 80930000
    lwc1    $f8, %lo(var_809340E4)($at)
    mtc1    t7, $f10                   # $f10 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f6, $f10
    mul.s   $f12, $f6, $f8
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    or      s0, $zero, $zero           # s0 = 00000000
    lh      t8, 0x00A4(s5)             # 000000A4
lbl_80931ACC:
    andi    t1, s0, 0x0001             # t1 = 00000000
    beql    s6, t8, lbl_80931B9C
    mtc1    s0, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0140(s2)            # 00000140
    subu    t9, $zero, s0
    subu    t0, $zero, s0
    c.le.s  $f20, $f4
    subu    t2, $zero, s0
    bc1fl   lbl_80931B10
    mtc1    s0, $f6                    # $f6 = 0.00
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f12, $f10, $f22
    b       lbl_80931B24
    lwc1    $f4, 0x0148(s2)            # 00000148
    mtc1    s0, $f6                    # $f6 = 0.00
lbl_80931B10:
    nop
    cvt.s.w $f8, $f6
    mul.s   $f12, $f8, $f22
    nop
    lwc1    $f4, 0x0148(s2)            # 00000148
lbl_80931B24:
    c.le.s  $f20, $f4
    nop
    bc1fl   lbl_80931B50
    mtc1    s0, $f6                    # $f6 = 0.00
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f10, $f18
    mul.s   $f0, $f10, $f22
    b       lbl_80931B60
    nop
    mtc1    s0, $f6                    # $f6 = 0.00
lbl_80931B50:
    nop
    cvt.s.w $f8, $f6
    mul.s   $f0, $f8, $f22
    nop
lbl_80931B60:
    beql    t1, $zero, lbl_80931B84
    mtc1    t2, $f10                   # $f10 = 0.00
    mtc1    s0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f18, $f4
    mul.s   $f14, $f18, $f24
    b       lbl_80931BB4
    mfc1    a2, $f0
    mtc1    t2, $f10                   # $f10 = 0.00
lbl_80931B84:
    nop
    cvt.s.w $f6, $f10
    mul.s   $f14, $f6, $f24
    b       lbl_80931BB4
    mfc1    a2, $f0
    mtc1    s0, $f8                    # $f8 = 0.00
lbl_80931B9C:
    mov.s   $f12, $f20
    mov.s   $f0, $f20
    cvt.s.w $f4, $f8
    mul.s   $f14, $f4, $f26
    nop
    mfc1    a2, $f0
lbl_80931BB4:
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v0, 0x02D0(s3)             # 000002D0
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s3)             # 000002D0
    sw      s8, 0x0000(v0)             # 00000000
    lw      a0, 0x0000(s5)             # 00000000
    jal     func_800AB900
    or      s1, v0, $zero              # s1 = 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      a0, 0x02D0(s3)             # 000002D0
    jal     func_8007DFBC
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s3)             # 000002D0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v0)             # 00000000
    sw      s7, 0x0004(v0)             # 00000004
    addiu   s0, s0, 0x0001             # s0 = 00000001
    sll     s0, s0, 16
    sra     s0, s0, 16
    slti    $at, s0, 0x0005
    bnel    $at, $zero, lbl_80931ACC
    lh      t8, 0x00A4(s5)             # 000000A4
    lh      t6, 0x0076($sp)
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sll     t8, t7, 16
    sra     t9, t8, 16
    slti    $at, t9, 0x001E
    bne     $at, $zero, lbl_8093170C
    sh      t7, 0x0076($sp)
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
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_80931C78:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    lwc1    $f12, 0x0024(s0)           # 00000024
    lwc1    $f14, 0x0028(s0)           # 00000028
    lw      a2, 0x002C(s0)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_809340E8)     # $at = 80930000
    lwc1    $f6, %lo(var_809340E8)($at)
    lwc1    $f4, 0x014C(s0)            # 0000014C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lui     $at, %hi(var_809340EC)     # $at = 80930000
    lwc1    $f10, %lo(var_809340EC)($at)
    lwc1    $f8, 0x0150(s0)            # 00000150
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_809340F0)     # $at = 80930000
    lwc1    $f18, %lo(var_809340F0)($at)
    lwc1    $f16, 0x0154(s0)           # 00000154
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lwc1    $f12, 0x0050(s0)           # 00000050
    lwc1    $f14, 0x0054(s0)           # 00000054
    lw      a2, 0x0058(s0)             # 00000058
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFF9B                 # t9 = FF9B0000
    ori     t9, t9, 0x37FF             # t9 = FF9B37FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFA00                 # t8 = FA000000
    sw      t8, 0x0000(v1)             # 00000000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t2, 0x9BFF                 # t2 = 9BFF0000
    ori     t2, t2, 0x37FF             # t2 = 9BFF37FF
    addiu   t0, v1, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s1)             # 000002C0
    lui     t1, 0xFB00                 # t1 = FB000000
    sw      t1, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x0024($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t5)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0DE0             # t8 = 06000DE0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s1)             # 000002C0
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      t7, 0x0000(v1)             # 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_80931DB8:
    addiu   $sp, $sp, 0xFF30           # $sp -= 0xD0
    sw      s5, 0x005C($sp)
    sw      s3, 0x0054($sp)
    or      s3, a1, $zero              # s3 = 00000000
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x006C($sp)
    sw      s8, 0x0068($sp)
    sw      s7, 0x0064($sp)
    sw      s6, 0x0060($sp)
    sw      s4, 0x0058($sp)
    sw      s2, 0x0050($sp)
    sw      s1, 0x004C($sp)
    sw      s0, 0x0048($sp)
    sdc1    $f30, 0x0040($sp)
    sdc1    $f28, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lui     v0, 0x0406                 # v0 = 04060000
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    addiu   v0, v0, 0x82E0             # v0 = 040582E0
    and     t1, v0, $at
    lw      s1, 0x0000(s3)             # 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    sll     t6, v0,  4
    srl     t7, t6, 28
    mtc1    $at, $f30                  # $f30 = 30.00
    lui     t9, 0x8012                 # t9 = 80120000
    addiu   t9, t9, 0x0C38             # t9 = 80120C38
    lui     $at, 0x42F0                # $at = 42F00000
    sll     t8, t7,  2
    lui     t2, 0x0100                 # t2 = 01000000
    lui     t3, 0x0401                 # t3 = 04010000
    addiu   t3, t3, 0x04F0             # t3 = 040104F0
    addiu   t2, t2, 0x0000             # t2 = 01000000
    addu    t0, t8, t9
    lui     s6, 0xE300                 # s6 = E3000000
    mtc1    $at, $f28                  # $f28 = 120.00
    ori     s6, s6, 0x1801             # s6 = E3001801
    sw      t0, 0x0080($sp)
    sw      t2, 0x0078($sp)
    sw      t3, 0x0074($sp)
    sw      t1, 0x007C($sp)
    or      s4, $zero, $zero           # s4 = 00000000
    lui     s8, 0xE700                 # s8 = E7000000
    addiu   s7, $zero, 0x0028          # s7 = 00000028
lbl_80931E78:
    multu   s4, s7
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    mflo    t4
    addu    s0, s5, t4
    lh      a0, 0x0160(s0)             # 00000160
    addu    a0, a0, $at
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    mtc1    s4, $f4                    # $f4 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f8                   # $f8 = 10.00
    cvt.s.w $f20, $f4
    lh      a0, 0x0160(s0)             # 00000160
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at
    sll     a0, a0, 16
    div.s   $f6, $f20, $f30
    sra     a0, a0, 16
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f16, $f0, $f28
    add.s   $f22, $f30, $f10
    neg.s   $f18, $f16
    mul.s   $f24, $f18, $f22
    jal     func_80063684              # coss?
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f4                   # $f4 = 5.00
    lh      a0, 0x0160(s0)             # 00000160
    lui     $at, 0x4496                # $at = 44960000
    mul.s   $f6, $f0, $f4
    mtc1    $at, $f8                   # $f8 = 1200.00
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    a0, a0, $at
    sll     a0, a0, 16
    sra     a0, a0, 16
    jal     func_80063684              # coss?
    add.s   $f26, $f6, $f8
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f16                  # $f16 = 12.00
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f4                   # $f4 = 300.00
    sub.s   $f18, $f20, $f16
    lwc1    $f10, 0x00E0(s3)           # 000000E0
    lwc1    $f8, 0x00E4(s3)            # 000000E4
    lwc1    $f16, 0x00E8(s3)           # 000000E8
    mul.s   $f6, $f18, $f4
    add.s   $f12, $f10, $f24
    or      a3, $zero, $zero           # a3 = 00000000
    mul.s   $f18, $f0, $f28
    add.s   $f10, $f8, $f26
    add.s   $f14, $f10, $f6
    mul.s   $f4, $f18, $f22
    add.s   $f8, $f16, $f4
    mfc1    a2, $f8
    jal     func_800AA7F4
    nop
    lui     $at, 0x42FA                # $at = 42FA0000
    mtc1    $at, $f12                  # $f12 = 125.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f14                  # $f14 = 60.00
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t7, 0xFA00                 # t7 = FA000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      s8, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t8, 0xD2D2                 # t8 = D2D20000
    ori     t8, t8, 0xFFFF             # t8 = D2D2FFFF
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t0, 0xFB00                 # t0 = FB000000
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t3, $zero, 0x00C0          # t3 = 000000C0
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t5, $zero, 0x0010          # t5 = 00000010
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(s0)             # 00000004
    sw      s6, 0x0000(s0)             # 00000000
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s2, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0080($sp)
    lw      t2, 0x007C($sp)
    lui     $at, 0x8000                # $at = 80000000
    lw      t1, 0x0000(t0)             # 00000000
    addu    t3, t1, t2
    addu    t4, t3, $at
    sw      t4, 0x0004(s0)             # 00000004
    jal     func_8007E978
    lw      a0, 0x0000(s3)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0001             # t6 = DA380001
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x0078($sp)
    addiu   s4, s4, 0x0001             # s4 = 00000001
    sll     s4, s4, 16
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t9, 0xDE00                 # t9 = DE000000
    sra     s4, s4, 16
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0074($sp)
    slti    $at, s4, 0x001E
    sw      t0, 0x0004(s0)             # 00000004
    bne     $at, $zero, lbl_80931E78
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
    addiu   $sp, $sp, 0x00D0           # $sp += 0xD0


func_809320F8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      $ra, 0x001C($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    lw      t7, 0x0040($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f12, 0x0158(t7)           # 00000158
    mfc1    a2, $f14
    jal     func_800AA7F4
    neg.s   $f12, $f12
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lw      t0, 0x0044($sp)
    lw      a0, 0x0000(t0)             # 00000000
    jal     func_800AB900
    sw      s0, 0x002C($sp)
    lw      a1, 0x002C($sp)
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x7440             # t3 = 06007440
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      t4, 0x0040($sp)
    mfc1    a2, $f14
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lwc1    $f0, 0x0158(t4)            # 00000158
    jal     func_800AA7F4
    add.s   $f12, $f0, $f0
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0000(s0)             # 00000000
    lw      t7, 0x0044($sp)
    lw      a0, 0x0000(t7)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x7578             # t0 = 06007578
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0004(s0)             # 00000004
    sw      t9, 0x0000(s0)             # 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8093220C:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s0, 0x001C($sp)
    sw      a0, 0x0040($sp)
    lbu     t6, 0x1D6C(s1)             # 00001D6C
    lw      a0, 0x0000(s1)             # 00000000
    lui     t7, 0x8012                 # t7 = 80120000
    beq     t6, $zero, lbl_80932248
    or      s0, a0, $zero              # s0 = 00000000
    lw      t7, -0x46D0(t7)            # 8011B930
    slti    $at, t7, 0x0004
    bnel    $at, $zero, lbl_809322E4
    lw      $ra, 0x0024($sp)
lbl_80932248:
    jal     func_8007E2C0
    nop
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a2, 0x009C(s1)             # 0000009C
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    sw      t1, 0x0010($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a3, $zero, 0x0040          # a3 = 00000040
    sw      v1, 0x002C($sp)
    jal     func_8007EB00
    andi    a2, a2, 0x007F             # a2 = 00000000
    lw      t0, 0x002C($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0028($sp)
    lw      a1, 0x0028($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0x8390             # t6 = 06008390
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    sw      t6, 0x0004(v1)             # 00000004
    sw      t5, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)
lbl_809322E4:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809322F4:
    lwc1    $f4, 0x0000(a0)            # 00000000
    swc1    $f4, 0x0000(a1)            # 00000000
    lwc1    $f6, 0x0004(a0)            # 00000004
    swc1    $f6, 0x0004(a1)            # 00000004
    lwc1    $f8, 0x0008(a0)            # 00000008
    swc1    $f8, 0x0008(a1)            # 00000008
    jr      $ra
    nop


func_80932314:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
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
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80932394:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0030($sp)
    sw      a2, 0x0038($sp)
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_809322F4
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF8
    jal     func_800679E8
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFEC
    lw      a1, 0x0030($sp)
    lh      t6, 0x002E($sp)
    lw      a0, 0x0038($sp)
    lh      t7, 0x000E(a1)             # 0000000E
    addiu   a2, $sp, 0x0028            # a2 = FFFFFFF8
    addu    t8, t6, t7
    jal     func_80932314
    sh      t8, 0x002E($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809323F0:
    addiu   $sp, $sp, 0xFF10           # $sp -= 0xF0
    sw      s4, 0x0060($sp)
    sw      s2, 0x0058($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s4, a1, $zero              # s4 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s7, 0x006C($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s3, 0x005C($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     t7, 0x8012                 # t7 = 80120000
    lw      t6, 0x1C44(s4)             # 00001C44
    lw      t7, -0x5A2C(t7)            # 8011A5D4
    sw      t6, 0x00DC($sp)
    sb      t7, 0x00AF($sp)
    lbu     v0, 0x013D(s2)             # 0000013D
    lw      s5, 0x0000(s4)             # 00000000
    slti    $at, v0, 0x001E
    beq     $at, $zero, lbl_8093246C
    addiu   t8, v0, 0x0002             # t8 = 00000002
    sb      t8, 0x013D(s2)             # 0000013D
    andi    v0, t8, 0x00FF             # v0 = 00000002
lbl_8093246C:
    addiu   s7, v0, 0xFFFF             # s7 = 00000001
    sll     s7, s7, 16
    sra     s7, s7, 16
    bltz    s7, lbl_80932AD4
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f28                  # $f28 = 1.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f26                  # $f26 = 16.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f24                  # $f24 = 0.50
    mtc1    $zero, $f30                # $f30 = 0.00
    addiu   s8, $zero, 0x000F          # s8 = 0000000F
    lbu     v1, 0x013D(s2)             # 0000013D
lbl_809324A0:
    mtc1    s7, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v1, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    bgez    v1, lbl_809324C4
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_809324C4:
    div.s   $f18, $f6, $f10
    sll     t9, s7,  2
    addu    t9, t9, s7
    sll     t9, t9,  3
    addu    s1, s2, t9
    lbu     v0, 0x0162(s1)             # 00000162
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80932500
    sub.s   $f22, $f28, $f18
    beq     v0, $at, lbl_809325C0
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_809326D8
    lh      t2, 0x001C(s2)             # 0000001C
    b       lbl_80932728
    nop
lbl_80932500:
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x0160(s1)          # 00000160
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x015C(s1)            # 0000015C
    sub.s   $f8, $f0, $f24
    mul.s   $f16, $f8, $f26
    nop
    mul.s   $f6, $f16, $f22
    trunc.w.s $f10, $f6
    mfc1    t1, $f10
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0140(s1)            # 00000140
    sub.s   $f8, $f0, $f24
    mul.s   $f16, $f8, $f26
    nop
    mul.s   $f6, $f16, $f22
    trunc.w.s $f10, $f6
    mfc1    t5, $f10
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    mtc1    t7, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0144(s1)            # 00000144
    sub.s   $f8, $f0, $f24
    lbu     t2, 0x0162(s1)             # 00000162
    sb      $zero, 0x0163(s1)          # 00000163
    mul.s   $f16, $f8, $f26
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sb      t3, 0x0162(s1)             # 00000162
    mul.s   $f6, $f16, $f22
    trunc.w.s $f10, $f6
    mfc1    t9, $f10
    nop
    sll     t0, t9, 16
    sra     t1, t0, 16
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0148(s1)            # 00000148
lbl_809325C0:
    lh      t4, 0x001C(s2)             # 0000001C
    lui     a1, %hi(var_80934470)      # a1 = 80930000
    addiu   a1, a1, %lo(var_80934470)  # a1 = 80934470
    bne     s8, t4, lbl_80932648
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFFE0
    lui     a1, %hi(var_80934470)      # a1 = 80930000
    lui     a2, %hi(var_80934474)      # a2 = 80930000
    lui     a3, %hi(var_80933AC0)      # a3 = 80930000
    addiu   t5, s1, 0x0160             # t5 = 00000160
    addiu   t6, s1, 0x015C             # t6 = 0000015C
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, %lo(var_80933AC0)  # a3 = 80933AC0
    addiu   a2, a2, %lo(var_80934474)  # a2 = 80934474
    addiu   a1, a1, %lo(var_80934470)  # a1 = 80934470
    jal     func_800999A4
    addiu   a0, $sp, 0x00D0            # a0 = FFFFFFE0
    beql    v0, $zero, lbl_8093261C
    lh      t9, 0x00A4(s4)             # 000000A4
    lbu     t7, 0x0162(s1)             # 00000162
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0162(s1)             # 00000162
    lh      t9, 0x00A4(s4)             # 000000A4
lbl_8093261C:
    addiu   $at, $zero, 0x0043         # $at = 00000043
    bnel    t9, $at, lbl_809326B0
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
    lhu     t0, 0x1D74(s4)             # 00001D74
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bnel    t0, $at, lbl_809326B0
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
    lbu     t1, 0x0162(s1)             # 00000162
    addiu   t2, t1, 0x0001             # t2 = 00000001
    b       lbl_809326AC
    sb      t2, 0x0162(s1)             # 00000162
lbl_80932648:
    lui     a2, %hi(var_80934474)      # a2 = 80930000
    lui     a3, %hi(var_80933BA0)      # a3 = 80930000
    addiu   t3, s1, 0x0160             # t3 = 00000160
    addiu   t4, s1, 0x015C             # t4 = 0000015C
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    addiu   a3, a3, %lo(var_80933BA0)  # a3 = 80933BA0
    jal     func_800999A4
    addiu   a2, a2, %lo(var_80934474)  # a2 = 80934474
    beq     v0, $zero, lbl_80932680
    lui     t7, %hi(var_809344B0)      # t7 = 80930000
    lbu     t5, 0x0162(s1)             # 00000162
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sb      t6, 0x0162(s1)             # 00000162
lbl_80932680:
    lh      t7, %lo(var_809344B0)(t7)
    lhu     t8, 0x1D74(s4)             # 00001D74
    slt     $at, t7, t8
    beql    $at, $zero, lbl_809326B0
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
    lh      t9, 0x001C(s2)             # 0000001C
    bnel    s8, t9, lbl_809326B0
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
    lbu     t0, 0x0162(s1)             # 00000162
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0162(s1)             # 00000162
lbl_809326AC:
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
lbl_809326B0:
    jal     func_800226A4
    lw      a1, 0x00DC($sp)
    lui     a2, %hi(var_80934480)      # a2 = 80930000
    addiu   a2, a2, %lo(var_80934480)  # a2 = 80934480
    addiu   a0, $sp, 0x00B0            # a0 = FFFFFFC0
    jal     func_80932394
    addiu   a1, $sp, 0x00D0            # a1 = FFFFFFE0
    b       lbl_80932728
    nop
    lh      t2, 0x001C(s2)             # 0000001C
lbl_809326D8:
    addiu   t5, s7, 0x0001             # t5 = 00000002
    bne     s8, t2, lbl_80932704
    nop
    bne     s7, $zero, lbl_80932728
    nop
    jal     func_80063534
    or      a0, s4, $zero              # a0 = 00000000
    lbu     t3, 0x0162(s1)             # 00000162
    addiu   t4, t3, 0x0001             # t4 = 00000001
    b       lbl_80932728
    sb      t4, 0x0162(s1)             # 00000162
lbl_80932704:
    bne     t5, v1, lbl_80932728
    nop
    lbu     t6, 0x1D6C(s4)             # 00001D6C
    bne     t6, $zero, lbl_80932728
    nop
    jal     func_80073938
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
lbl_80932728:
    lui     $at, %hi(var_80934480)     # $at = 80930000
    lwc1    $f8, %lo(var_80934480)($at)
    lbu     v0, 0x0163(s1)             # 00000163
    swc1    $f8, 0x014C(s1)            # 0000014C
    lwc1    $f16, %lo(var_80934484)($at)
    lui     $at, %hi(var_80934488)     # $at = 80930000
    swc1    $f16, 0x0150(s1)           # 00000150
    lwc1    $f6, %lo(var_80934488)($at)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_8093276C
    swc1    $f6, 0x0154(s1)            # 00000154
    beq     v0, $at, lbl_80932784
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_809327C8
    addiu   a0, s1, 0x0158             # a0 = 00000158
    b       lbl_809328B8
    lbu     t3, 0x0162(s1)             # 00000162
lbl_8093276C:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lbu     t7, 0x0163(s1)             # 00000163
    swc1    $f0, 0x0158(s1)            # 00000158
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sb      t8, 0x0163(s1)             # 00000163
lbl_80932784:
    lui     $at, %hi(var_809340F4)     # $at = 80930000
    lwc1    $f10, %lo(var_809340F4)($at)
    mfc1    a1, $f28
    mfc1    a2, $f24
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    addiu   a0, s1, 0x0158             # a0 = 00000158
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lwc1    $f18, 0x0158(s1)           # 00000158
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    c.le.s  $f28, $f18
    nop
    bc1fl   lbl_809328B8
    lbu     t3, 0x0162(s1)             # 00000162
    b       lbl_809328B4
    sb      t9, 0x0163(s1)             # 00000163
lbl_809327C8:
    lui     $at, %hi(var_809340F8)     # $at = 80930000
    lwc1    $f4, %lo(var_809340F8)($at)
    mfc1    a1, $f30
    mfc1    a2, $f24
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lwc1    $f8, 0x0158(s1)            # 00000158
    c.le.s  $f8, $f30
    nop
    bc1fl   lbl_809328B8
    lbu     t3, 0x0162(s1)             # 00000162
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f16, $f0, $f24
    mul.s   $f6, $f16, $f26
    nop
    mul.s   $f10, $f6, $f22
    trunc.w.s $f18, $f10
    mfc1    t1, $f18
    nop
    sll     t2, t1, 16
    sra     t3, t2, 16
    mtc1    t3, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0140(s1)            # 00000140
    sub.s   $f16, $f0, $f24
    mul.s   $f6, $f16, $f26
    nop
    mul.s   $f10, $f6, $f22
    trunc.w.s $f18, $f10
    mfc1    t5, $f18
    nop
    sll     t6, t5, 16
    sra     t7, t6, 16
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0144(s1)            # 00000144
    sub.s   $f16, $f0, $f24
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    swc1    $f30, 0x0158(s1)           # 00000158
    sb      t2, 0x0163(s1)             # 00000163
    mul.s   $f6, $f16, $f26
    nop
    mul.s   $f10, $f6, $f22
    trunc.w.s $f18, $f10
    mfc1    t9, $f18
    nop
    sll     t0, t9, 16
    sra     t1, t0, 16
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f8, $f4
    swc1    $f8, 0x0148(s1)            # 00000148
lbl_809328B4:
    lbu     t3, 0x0162(s1)             # 00000162
lbl_809328B8:
    lwc1    $f18, 0x0140(s1)           # 00000140
    lwc1    $f16, 0x014C(s1)           # 0000014C
    lwc1    $f14, 0x0144(s1)           # 00000144
    lwc1    $f10, 0x0150(s1)           # 00000150
    add.s   $f12, $f18, $f16
    lwc1    $f16, 0x0148(s1)           # 00000148
    lwc1    $f18, 0x0154(s1)           # 00000154
    add.s   $f20, $f14, $f10
    slti    $at, t3, 0x0002
    beq     $at, $zero, lbl_80932AC0
    add.s   $f0, $f16, $f18
    lbu     t4, 0x00AF($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    lui     s6, 0x0401                 # s6 = 04010000
    addiu   s6, s6, 0x05D0             # s6 = 040105D0
    beq     t4, $zero, lbl_80932918
    addu    s3, s4, $at
    mfc1    a2, $f0
    mov.s   $f14, $f20
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    b       lbl_80932930
    nop
lbl_80932918:
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f16                  # $f16 = 15.00
    mfc1    a2, $f0
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f20, $f16
lbl_80932930:
    lui     $at, %hi(var_809340FC)     # $at = 80930000
    lwc1    $f10, %lo(var_809340FC)($at)
    lwc1    $f6, 0x0158(s1)            # 00000158
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f18, $f10, $f22
    nop
    mul.s   $f12, $f6, $f18
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lh      t8, 0x001C(s2)             # 0000001C
    lui     t0, 0xFB00                 # t0 = FB000000
    bne     s8, t8, lbl_809329E8
    nop
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t1, 0x0001                 # t1 = 00010000
    addu    t1, t1, s4
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s5)             # 000002D0
    sw      t0, 0x0000(s0)             # 00000000
    lhu     t1, 0x04C4(t1)             # 000104C4
    lui     t3, %hi(var_80933AAC)      # t3 = 80930000
    addiu   t3, t3, %lo(var_80933AAC)  # t3 = 80933AAC
    sll     t2, t1,  2
    subu    t2, t2, t1
    addu    v0, t2, t3
    lbu     t5, 0x0002(v0)             # 00000002
    lbu     t8, 0x0000(v0)             # 00000000
    lbu     t2, 0x0001(v0)             # 00000001
    sll     t6, t5,  8
    sll     t9, t8, 24
    or      t0, t6, t9                 # t0 = FA000088
    sll     t3, t2, 16
    or      t4, t0, t3                 # t4 = FA933AAC
    ori     t5, t4, 0x00FF             # t5 = FA933AFF
    sw      t5, 0x0004(s0)             # 00000004
    b       lbl_80932A40
    nop
lbl_809329E8:
    lui     a0, 0x8012                 # a0 = 80120000
    lb      a0, -0x4699(a0)            # 8011B967
    lw      s0, 0x02D0(s5)             # 000002D0
    sll     t6, a0,  2
    lui     t9, %hi(var_80933AAC)      # t9 = 80930000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s5)             # 000002D0
    addiu   t9, t9, %lo(var_80933AAC)  # t9 = 80933AAC
    subu    t6, t6, a0
    lui     t8, 0xFB00                 # t8 = FB000000
    addu    v0, t6, t9
    sw      t8, 0x0000(s0)             # 00000000
    lbu     t4, 0x0000(v0)             # 00000000
    lbu     t2, 0x0002(v0)             # 00000002
    lbu     t6, 0x0001(v0)             # 00000001
    sll     t5, t4, 24
    sll     t0, t2,  8
    or      t7, t0, t5                 # t7 = FA933AFF
    sll     t9, t6, 16
    or      t1, t7, t9                 # t1 = FA933AFF
    ori     t2, t1, 0x00FF             # t2 = FA933AFF
    sw      t2, 0x0004(s0)             # 00000004
lbl_80932A40:
    jal     func_8007E2C0
    lw      a0, 0x0000(s4)             # 00000000
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800AA79C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t3, 0x0164(s1)             # 00000164
    lui     $at, %hi(var_80934100)     # $at = 80930000
    lwc1    $f16, %lo(var_80934100)($at)
    mtc1    t3, $f4                    # $f4 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f8, $f4
    mul.s   $f12, $f8, $f16
    jal     func_800AAD4C
    nop
    lw      s3, 0x02D0(s5)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t4, s3, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s5)             # 000002D0
    sw      t0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s4)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t8, 0xDE00                 # t8 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    sw      s6, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lh      t6, 0x0164(s1)             # 00000164
    addiu   t7, t6, 0x0190             # t7 = 00000190
    sh      t7, 0x0164(s1)             # 00000164
lbl_80932AC0:
    addiu   s7, s7, 0xFFFF             # s7 = 00000000
    sll     s7, s7, 16
    sra     s7, s7, 16
    bgezl   s7, lbl_809324A0
    lbu     v1, 0x013D(s2)             # 0000013D
lbl_80932AD4:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
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
    addiu   $sp, $sp, 0x00F0           # $sp += 0xF0


func_80932B1C:
    addiu   $sp, $sp, 0xFF20           # $sp -= 0xE0
    sw      s7, 0x006C($sp)
    sw      s2, 0x0058($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0074($sp)
    sw      s8, 0x0070($sp)
    sw      s6, 0x0068($sp)
    sw      s5, 0x0064($sp)
    sw      s4, 0x0060($sp)
    sw      s3, 0x005C($sp)
    sw      s1, 0x0054($sp)
    sw      s0, 0x0050($sp)
    sdc1    $f30, 0x0048($sp)
    sdc1    $f28, 0x0040($sp)
    sdc1    $f26, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lbu     v1, 0x013D(s2)             # 0000013D
    lw      s5, 0x0000(s7)             # 00000000
    lui     s8, %hi(var_80933C80)      # s8 = 80930000
    slti    $at, v1, 0x0014
    beq     $at, $zero, lbl_80932B8C
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t6, v1, 0x0001             # t6 = 00000001
    sb      t6, 0x013D(s2)             # 0000013D
    andi    v0, t6, 0x00FF             # v0 = 00000001
lbl_80932B8C:
    addiu   s6, v0, 0xFFFF             # s6 = 00000000
    sll     s6, s6, 16
    sra     s6, s6, 16
    bltz    s6, lbl_80933050
    lui     $at, %hi(var_80934104)     # $at = 80930000
    lwc1    $f30, %lo(var_80934104)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f26                  # $f26 = 1.00
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f24                  # $f24 = 16.00
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f22                  # $f22 = 0.50
    mtc1    $zero, $f28                # $f28 = 0.00
    addiu   s8, s8, %lo(var_80933C80)  # s8 = 80933C80
    lbu     v1, 0x013D(s2)             # 0000013D
lbl_80932BC8:
    mtc1    s6, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    v1, $f8                    # $f8 = 0.00
    cvt.s.w $f6, $f4
    bgez    v1, lbl_80932BEC
    cvt.s.w $f10, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_80932BEC:
    div.s   $f18, $f6, $f10
    sll     t7, s6,  2
    addu    t7, t7, s6
    sll     t7, t7,  3
    addu    s1, s2, t7
    lbu     v0, 0x0162(s1)             # 00000162
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80932C28
    sub.s   $f20, $f26, $f18
    beq     v0, $at, lbl_80932CE8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80932D50
    addiu   t6, s6, 0x0001             # t6 = 00000001
    b       lbl_80932D6C
    nop
lbl_80932C28:
    mtc1    $zero, $f4                 # $f4 = 0.00
    sh      $zero, 0x0160(s1)          # 00000160
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x015C(s1)            # 0000015C
    sub.s   $f8, $f0, $f22
    mul.s   $f16, $f8, $f24
    nop
    mul.s   $f6, $f16, $f20
    trunc.w.s $f10, $f6
    mfc1    t9, $f10
    nop
    sll     t0, t9, 16
    sra     t1, t0, 16
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0140(s1)            # 00000140
    sub.s   $f8, $f0, $f22
    mul.s   $f16, $f8, $f24
    nop
    mul.s   $f6, $f16, $f20
    trunc.w.s $f10, $f6
    mfc1    t3, $f10
    nop
    sll     t4, t3, 16
    sra     t5, t4, 16
    mtc1    t5, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0144(s1)            # 00000144
    sub.s   $f8, $f0, $f22
    lbu     t0, 0x0162(s1)             # 00000162
    sb      $zero, 0x0163(s1)          # 00000163
    mul.s   $f16, $f8, $f24
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x0162(s1)             # 00000162
    mul.s   $f6, $f16, $f20
    trunc.w.s $f10, $f6
    mfc1    t7, $f10
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0148(s1)            # 00000148
lbl_80932CE8:
    lui     a1, %hi(var_8093448C)      # a1 = 80930000
    lui     a2, %hi(var_80934490)      # a2 = 80930000
    lui     a3, %hi(var_80933C94)      # a3 = 80930000
    addiu   t2, s1, 0x0160             # t2 = 00000160
    addiu   t3, s1, 0x015C             # t3 = 0000015C
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    addiu   a3, a3, %lo(var_80933C94)  # a3 = 80933C94
    addiu   a2, a2, %lo(var_80934490)  # a2 = 80934490
    addiu   a1, a1, %lo(var_8093448C)  # a1 = 8093448C
    jal     func_800999A4
    addiu   a0, $sp, 0x00C4            # a0 = FFFFFFE4
    beq     v0, $zero, lbl_80932D2C
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFC4
    lbu     t4, 0x0162(s1)             # 00000162
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sb      t5, 0x0162(s1)             # 00000162
lbl_80932D2C:
    jal     func_800226A4
    or      a1, s2, $zero              # a1 = 00000000
    lui     a2, %hi(var_809344A0)      # a2 = 80930000
    addiu   a2, a2, %lo(var_809344A0)  # a2 = 809344A0
    addiu   a0, $sp, 0x00A4            # a0 = FFFFFFC4
    jal     func_80932394
    addiu   a1, $sp, 0x00C4            # a1 = FFFFFFE4
    b       lbl_80932D6C
    nop
lbl_80932D50:
    bne     t6, v1, lbl_80932D6C
    nop
    lbu     t7, 0x1D6C(s7)             # 00001D6C
    bne     t7, $zero, lbl_80932D6C
    nop
    jal     func_80020EB4
    or      a0, s2, $zero              # a0 = 00000000
lbl_80932D6C:
    lui     $at, %hi(var_809344A0)     # $at = 80930000
    lwc1    $f8, %lo(var_809344A0)($at)
    lbu     v0, 0x0163(s1)             # 00000163
    swc1    $f8, 0x014C(s1)            # 0000014C
    lwc1    $f16, %lo(var_809344A4)($at)
    lui     $at, %hi(var_809344A8)     # $at = 80930000
    swc1    $f16, 0x0150(s1)           # 00000150
    lwc1    $f6, %lo(var_809344A8)($at)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $zero, lbl_80932DB0
    swc1    $f6, 0x0154(s1)            # 00000154
    beq     v0, $at, lbl_80932DC8
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80932E04
    addiu   a0, s1, 0x0158             # a0 = 00000158
    b       lbl_80932EEC
    lbu     t4, 0x0162(s1)             # 00000162
lbl_80932DB0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lbu     t8, 0x0163(s1)             # 00000163
    swc1    $f0, 0x0158(s1)            # 00000158
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sb      t9, 0x0163(s1)             # 00000163
lbl_80932DC8:
    mfc1    a1, $f26
    mfc1    a2, $f22
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    addiu   a0, s1, 0x0158             # a0 = 00000158
    jal     func_80064178
    swc1    $f30, 0x0010($sp)
    lwc1    $f10, 0x0158(s1)           # 00000158
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    c.le.s  $f26, $f10
    nop
    bc1fl   lbl_80932EEC
    lbu     t4, 0x0162(s1)             # 00000162
    b       lbl_80932EE8
    sb      t0, 0x0163(s1)             # 00000163
lbl_80932E04:
    mfc1    a1, $f28
    mfc1    a2, $f22
    lui     a3, 0x3E99                 # a3 = 3E990000
    ori     a3, a3, 0x999A             # a3 = 3E99999A
    jal     func_80064178
    swc1    $f30, 0x0010($sp)
    lwc1    $f18, 0x0158(s1)           # 00000158
    c.le.s  $f18, $f28
    nop
    bc1fl   lbl_80932EEC
    lbu     t4, 0x0162(s1)             # 00000162
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f4, $f0, $f22
    mul.s   $f8, $f4, $f24
    nop
    mul.s   $f16, $f8, $f20
    trunc.w.s $f6, $f16
    mfc1    t2, $f6
    nop
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0140(s1)           # 00000140
    sub.s   $f4, $f0, $f22
    mul.s   $f8, $f4, $f24
    nop
    mul.s   $f16, $f8, $f20
    trunc.w.s $f6, $f16
    mfc1    t6, $f6
    nop
    sll     t7, t6, 16
    sra     t8, t7, 16
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f18, 0x0144(s1)           # 00000144
    sub.s   $f4, $f0, $f22
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    swc1    $f28, 0x0158(s1)           # 00000158
    sb      t3, 0x0163(s1)             # 00000163
    mul.s   $f8, $f4, $f24
    nop
    mul.s   $f16, $f8, $f20
    trunc.w.s $f6, $f16
    mfc1    t0, $f6
    nop
    sll     t1, t0, 16
    sra     t2, t1, 16
    mtc1    t2, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x0148(s1)           # 00000148
lbl_80932EE8:
    lbu     t4, 0x0162(s1)             # 00000162
lbl_80932EEC:
    lwc1    $f18, 0x0140(s1)           # 00000140
    lwc1    $f16, 0x014C(s1)           # 0000014C
    lwc1    $f10, 0x0144(s1)           # 00000144
    lwc1    $f8, 0x0150(s1)            # 00000150
    add.s   $f12, $f18, $f16
    lwc1    $f16, 0x0148(s1)           # 00000148
    lwc1    $f18, 0x0154(s1)           # 00000154
    add.s   $f14, $f10, $f8
    slti    $at, t4, 0x0002
    beq     $at, $zero, lbl_8093303C
    add.s   $f0, $f16, $f18
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    mfc1    a2, $f0
    lui     s4, 0x0401                 # s4 = 04010000
    addiu   s4, s4, 0x05D0             # s4 = 040105D0
    addu    s3, s7, $at
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80934108)     # $at = 80930000
    lwc1    $f8, %lo(var_80934108)($at)
    lwc1    $f4, 0x0158(s1)            # 00000158
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f16, $f8, $f20
    nop
    mul.s   $f12, $f4, $f16
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t6, 0xFA00                 # t6 = FA000000
    ori     t6, t6, 0x0080             # t6 = FA000080
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t9, 0xFB00                 # t9 = FB000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s5)             # 000002D0
    sw      t9, 0x0000(s0)             # 00000000
    lbu     t4, 0x0009(s8)             # 80933C89
    lbu     t1, 0x000B(s8)             # 80933C8B
    lbu     t8, 0x000A(s8)             # 80933C8A
    sll     t5, t4, 24
    sll     t2, t1,  8
    or      t6, t2, t5                 # t6 = 00000008
    sll     t9, t8, 16
    or      t0, t6, t9                 # t0 = FB000008
    ori     t1, t0, 0x00FF             # t1 = FB0000FF
    sw      t1, 0x0004(s0)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s7)             # 00000000
    or      a0, s3, $zero              # a0 = 00000000
    jal     func_800AA79C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t3, 0x0164(s1)             # 00000164
    lui     $at, %hi(var_8093410C)     # $at = 80930000
    lwc1    $f18, %lo(var_8093410C)($at)
    mtc1    t3, $f6                    # $f6 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f10, $f6
    mul.s   $f12, $f10, $f18
    jal     func_800AAD4C
    nop
    lw      s3, 0x02D0(s5)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t4, s3, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s5)             # 000002D0
    sw      t2, 0x0000(s3)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02D0(s5)             # 000002D0
    lui     t7, 0xDE00                 # t7 = DE000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s5)             # 000002D0
    sw      s4, 0x0004(s0)             # 00000004
    sw      t7, 0x0000(s0)             # 00000000
    lh      t8, 0x0164(s1)             # 00000164
    addiu   t6, t8, 0x0190             # t6 = 00000190
    sh      t6, 0x0164(s1)             # 00000164
lbl_8093303C:
    addiu   s6, s6, 0xFFFF             # s6 = FFFFFFFF
    sll     s6, s6, 16
    sra     s6, s6, 16
    bgezl   s6, lbl_80932BC8
    lbu     v1, 0x013D(s2)             # 0000013D
lbl_80933050:
    lw      $ra, 0x0074($sp)
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    ldc1    $f26, 0x0038($sp)
    ldc1    $f28, 0x0040($sp)
    ldc1    $f30, 0x0048($sp)
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
    addiu   $sp, $sp, 0x00E0           # $sp += 0xE0
    nop
    nop

.section .data

var_809330A0: .word \
0x00000002, 0x000000A4, 0x00000005, 0x00010000, \
0x00870000, 0x00000000, 0x42714CA7, 0x001F004F, \
0x003B010F, 0x00000000, 0x42714CA7, 0x001F004E, \
0x003C0120, 0x00000000, 0x42714CA7, 0x0020004E, \
0x003C0131, 0x00000000, 0x42714CA7, 0x001E004F, \
0x003B01F4, 0x00000000, 0x42714CA7, 0x001E004E, \
0x003C01F6, 0x00000000, 0x42714CA7, 0x001E004E, \
0x003C0207, 0xFF000000, 0x42714CA7, 0x001E004E, \
0x003C0000, 0x00000006, 0x00010000, 0x00A40000, \
0x0000001E, 0x42714CA7, 0x000B0032, 0x0017010F, \
0x0000001E, 0x42714CA7, 0x000B0030, 0x00160120, \
0x00000007, 0x42714CA7, 0x000B0030, 0x00160131, \
0x00000007, 0x42714CA7, 0x00390065, 0x001501F4, \
0x0000001E, 0x42714CA7, 0x00390065, 0x001501F6, \
0x0000001E, 0x42714CA7, 0x00390065, 0x00150207, \
0xFF00001E, 0x42714CA7, 0x00390065, 0x00150000, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_809331B0: .word \
0x00000005, 0x0000048F, 0x00000005, 0x00010000, \
0x04720000, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003D20BA, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003DA1BC, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003DA5E1, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003DA5CB, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003DA5EB, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003D20BA, 0x00000000, 0x42714CA8, 0x001F0052, \
0x003DA1BC, 0xFF000000, 0x42714CA8, 0x001F0052, \
0x003DA5E1, 0x00000006, 0x00010000, 0x048F0000, \
0x0000001E, 0x42714CA8, 0x00370063, 0x001F20BA, \
0x0000001E, 0x42714CA8, 0x00370063, 0x001FA1BC, \
0x0000000A, 0x42714CA8, 0x00370063, 0x001FA5E1, \
0x00000007, 0x42714CA8, 0x0011003B, 0x001FA5CB, \
0x0000001E, 0x42714CA8, 0x0011003B, 0x001FA5EB, \
0x000003E8, 0x42714CA8, 0x0011003B, 0x001F20BA, \
0x0000001E, 0x42714CA8, 0x0011003B, 0x001FA1BC, \
0xFF00001E, 0x42714CA8, 0x0011003B, 0x001FA5E1, \
0x0000002D, 0x00000001, 0x00050024, 0x002E002E, \
0x0000002D, 0x00000001, 0x0001001E, 0x00230023, \
0x00000003, 0x00000001, 0x000C005F, 0x00610000, \
0x00000000, 0x00000000, 0xFFFFFFE3, 0xFFFFFFF9, \
0x00000000, 0xFFFFFFE3, 0xFFFFFFF9, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_80933330: .word \
0x00000002, 0x00000076, 0x00000005, 0x00010000, \
0x00590000, 0x00000000, 0x428EA647, 0x00350035, \
0x0028010F, 0x00000000, 0x42700000, 0x00350035, \
0x00280120, 0x00000000, 0x42700000, 0x00350035, \
0x00280131, 0x00000000, 0x428D3328, 0x003A0066, \
0x003001F4, 0x00000000, 0x428D3328, 0x003A0066, \
0x003001F6, 0x00000000, 0x428D3328, 0x003A0066, \
0x00300207, 0xFF000000, 0x428D3328, 0x003A0066, \
0x00300047, 0x00000006, 0x00010000, 0x00760000, \
0x00000007, 0x428D0CAF, 0x000B001D, 0x000A010F, \
0x00000007, 0x428CCCC2, 0x000B001D, 0x000A0120, \
0x00000007, 0x428D3328, 0x000B001D, 0x000A0131, \
0x00000007, 0x428D3328, 0x001D0047, 0x001901F4, \
0x0000001E, 0x428D3328, 0x001D0047, 0x001901F6, \
0x0000001E, 0x428D3328, 0x001D0047, 0x00190207, \
0xFF00001E, 0x428D3328, 0x001D0047, 0x00190047, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80933440: .word \
0x00000005, 0x00000460, 0x0000002D, 0x00000001, \
0x00050024, 0x002E002E, 0x0000002D, 0x00000001, \
0x0001001E, 0x00230023, 0x00000005, 0x00010000, \
0x04430000, 0x00000000, 0x42714CA8, 0x002A0059, \
0x00320000, 0x00000000, 0x42714CA8, 0x002A0059, \
0x00320000, 0x00000000, 0x42714CA8, 0x002A0059, \
0x00320000, 0x00000000, 0x42714CA8, 0x002A0059, \
0x00320000, 0xFF000000, 0x42714CA8, 0x002A0059, \
0x003229D0, 0x00000006, 0x00010000, 0x04600000, \
0x0000001E, 0x42714CA8, 0x00180042, 0x001D0000, \
0x0000001E, 0x42714CA8, 0x00180042, 0x001D0000, \
0x000003E8, 0x42714CA8, 0x00180042, 0x001D0000, \
0x0000001E, 0x42714CA8, 0x00180042, 0x001D0000, \
0xFF00001E, 0x42714CA8, 0x00180042, 0x001D29D0, \
0x00000003, 0x00000001, 0x000C005F, 0x00600000, \
0x00000000, 0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, \
0x00000000, 0xFFFFFFEE, 0xFFFFFFF3, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_80933560: .word \
0x00000002, 0x0000048C, 0x00000005, 0x00010000, \
0x046F0000, 0x00000000, 0x42714CA7, 0x001F0044, \
0x003B010F, 0x00000000, 0x42714CA7, 0x00200044, \
0x003C0120, 0x00000000, 0x42714CA7, 0x001F0045, \
0x003B0131, 0x00000000, 0x42714CA7, 0x001F0040, \
0x003B01F4, 0x00000000, 0x42714CA7, 0x001F0040, \
0x003B01F6, 0x00000000, 0x42714CA7, 0x001F0040, \
0x003B0207, 0x00000000, 0x42714CA7, 0x001F0040, \
0x003BB46C, 0xFF000000, 0x42714CA7, 0x001F0040, \
0x003B05BC, 0x00000006, 0x00010000, 0x048C0000, \
0x0000001E, 0x42714CA7, 0x000C0028, 0x0016010F, \
0x0000001E, 0x42714CA7, 0x000B0026, 0x00160120, \
0x00000007, 0x42714CA7, 0x000B0027, 0x00160131, \
0x00000007, 0x42714CA7, 0x00390056, 0x001501F4, \
0x0000001E, 0x42714CA7, 0x00390056, 0x001501F6, \
0x000003E8, 0x42714CA7, 0x00390056, 0x00150207, \
0x0000001E, 0x42714CA7, 0x00390056, 0x0015B46C, \
0xFF00001E, 0x42714CA7, 0x00390056, 0x001505BC, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80933690: .word \
0x00000005, 0x0000048F, 0x0000002D, 0x00000001, \
0x00050024, 0x002E002E, 0x0000002D, 0x00000001, \
0x0001001E, 0x00230023, 0x00000005, 0x00010000, \
0x04720000, 0x00000000, 0x42714CA8, 0x001E003F, \
0x003DA8A5, 0x00000000, 0x42714CA8, 0x001E003F, \
0x003DA3D9, 0x00000000, 0x42714CA8, 0x001E003F, \
0x003DF3A5, 0x00000000, 0x42714CA9, 0x001D003D, \
0x003BA5D5, 0x00000000, 0x42714CA9, 0x001D003D, \
0x003BA5E7, 0x00000000, 0x42714CA9, 0x001D003D, \
0x003BA5EC, 0x00000000, 0x42714CA9, 0x001D003D, \
0x003BBCA5, 0xFF000000, 0x42714CA9, 0x001D003D, \
0x003BEEC0, 0x00000006, 0x00010000, 0x048F0000, \
0x0000001E, 0x42714CA8, 0x0036004F, 0x001FA8A5, \
0x0000001E, 0x42714CA8, 0x00360050, 0x001FA3D9, \
0x0000000A, 0x42714CA8, 0x0036004F, 0x001FF3A5, \
0x00000007, 0x42714CA9, 0x000F002A, 0x001EA5D5, \
0x0000001E, 0x42714CA9, 0x000F002A, 0x001EA5E7, \
0x000003E8, 0x42714CA9, 0x000F002A, 0x001EA5EC, \
0x0000001E, 0x42714CA9, 0x000F002A, 0x001EBCA5, \
0xFF00001E, 0x42714CA9, 0x000F002A, 0x001EEEC0, \
0x00000003, 0x00000001, 0x000C005F, 0x00600000, \
0x00000000, 0x00000000, 0xFFFFFFEF, 0xFFFFFFCD, \
0x00000000, 0xFFFFFFEF, 0xFFFFFFCD, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_80933810: .word \
0x00000002, 0x0000045E, 0x00000005, 0x00010000, \
0x04410000, 0x00000000, 0x428EA647, 0x00350035, \
0x0028010F, 0x00000000, 0x42700000, 0x00350035, \
0x00280120, 0x00000000, 0x42700000, 0x00350035, \
0x00280131, 0x00000000, 0x428D3328, 0x003A0059, \
0x002F01F4, 0x00000000, 0x428D3328, 0x003A0059, \
0x002F01F6, 0x00000000, 0x428D3328, 0x003A0059, \
0x002F0207, 0x00000000, 0x428D3328, 0x003A0059, \
0x002F0000, 0xFF000000, 0x428D3328, 0x003A0059, \
0x002F0000, 0x00000006, 0x00010000, 0x045E0000, \
0x00000007, 0x428D0CAF, 0x000B001D, 0x000A010F, \
0x00000007, 0x428CCCC2, 0x000B001D, 0x000A0120, \
0x00000007, 0x428D3328, 0x000B001D, 0x000A0131, \
0x00000007, 0x428D3328, 0x001D003A, 0x001901F4, \
0x0000001E, 0x428D3328, 0x001D003A, 0x001901F6, \
0x000003E8, 0x428D3328, 0x001D003A, 0x00190207, \
0x0000001E, 0x428D3328, 0x001D003A, 0x00190000, \
0xFF00001E, 0x428D3328, 0x001D003A, 0x00190000, \
0xFFFFFFFF, 0x00000000, 0x00000000, 0x00000000
var_80933940: .word \
0x00000005, 0x00000460, 0x0000002D, 0x00000001, \
0x00050024, 0x002E002E, 0x0000002D, 0x00000001, \
0x0001001E, 0x00230023, 0x00000005, 0x00010000, \
0x04430000, 0x00000000, 0x42714CAA, 0x0029004B, \
0x00311F1C, 0x00000000, 0x42714CAA, 0x0029004B, \
0x00311F8C, 0x00000000, 0x42714CAA, 0x0029004B, \
0x00311FFC, 0x00000000, 0x42714CAA, 0x0029004B, \
0x0031206C, 0xFF000000, 0x42714CAA, 0x0029004B, \
0x003120DC, 0x00000006, 0x00010000, 0x04600000, \
0x0000001E, 0x42714CAA, 0x00180034, 0x001D1F1C, \
0x0000001E, 0x42714CAA, 0x00180034, 0x001D1F8C, \
0x000003E8, 0x42714CAA, 0x00180034, 0x001D1FFC, \
0x0000001E, 0x42714CAA, 0x00180034, 0x001D206C, \
0xFF00001E, 0x42714CAA, 0x00180034, 0x001D20DC, \
0x00000003, 0x00000001, 0x000C005F, 0x00600000, \
0x00000000, 0x00000000, 0xFFFFFFDF, 0x00000019, \
0x00000000, 0xFFFFFFDF, 0x00000019, 0x00000000, \
0x00000000, 0x00000000, 0xFFFFFFFF, 0x00000000
var_80933A60: .word 0x008C0100, 0x00000030, 0x00010000, 0x000005F4
.word func_809307CC
.word func_80930BB0
.word func_809312DC
.word func_80931300
var_80933A80: .word \
0x00920092, 0x00920092, 0x00920092, 0x00920001, \
0x00B600B6, 0x00B600B6, 0x00B6005E, 0x005E0001, \
0x00010001, 0x00000000, 0x43160000
var_80933AAC: .word \
0x00C800FF, 0x32000096, 0xFFFF9600, 0xC832FFC8, \
0xFF000000
var_80933AC0: .word \
0x00000008, 0x42340000, 0x00000000, 0xFFE50000, \
0x00000008, 0x42340000, 0x00000000, 0xFFE50000, \
0x00000008, 0x42340000, 0xFFE60000, 0x00000000, \
0x00000008, 0x42340000, 0x00000017, 0x00240000, \
0x00000008, 0x42340000, 0x001C0032, 0xFFFF0000, \
0x00000008, 0x42340000, 0x00010018, 0xFFD90000, \
0x00000008, 0x42340000, 0xFFE6FFFA, 0x00030000, \
0x00000008, 0x42340000, 0x00000025, 0x00370000, \
0x00000008, 0x42340000, 0x004F0066, 0x00290000, \
0x00000008, 0x42340000, 0x00A600AD, 0x00060000, \
0x00000005, 0x42340000, 0x010D015A, 0xFF4C0000, \
0x00000005, 0x42340000, 0x019F0245, 0xFE350000, \
0xFF000005, 0x42340000, 0x01CE036F, 0xFCC20000, \
0xFF000005, 0x42340000, 0x01CE036F, 0xFCC20000
var_80933BA0: .word \
0x00000005, 0x42340000, 0x019F0245, 0xFE350000, \
0x00000005, 0x42340000, 0x010D015A, 0xFF4C0000, \
0x00000008, 0x42340000, 0x00A600AD, 0x00060000, \
0x00000008, 0x42340000, 0x004F0066, 0x00290000, \
0x00000008, 0x42340000, 0x00000025, 0x00370000, \
0x00000008, 0x42340000, 0xFFE6FFFA, 0x00030000, \
0x00000008, 0x42340000, 0x00010018, 0xFFD90000, \
0x00000008, 0x42340000, 0x001C0032, 0xFFFF0000, \
0x00000008, 0x42340000, 0x00000017, 0x00240000, \
0x00000008, 0x42340000, 0xFFE60000, 0x00000000, \
0x00000008, 0x42340000, 0x00000000, 0xFFE50000, \
0x00000008, 0x42340000, 0x00000000, 0xFFE50000, \
0xFF000005, 0x42340000, 0x01CE036F, 0xFCC20000, \
0xFF000005, 0x42340000, 0x01CE036F, 0xFCC20000
var_80933C80: .word \
0x00C800FF, 0x32000096, 0xFFFF9600, 0x00FFFFC8, \
0xFF000000
var_80933C94: .word \
0x00000002, 0x42340000, 0xFFF70000, 0xFFD00000, \
0x00000002, 0x42340000, 0xFFF70000, 0xFFD00000, \
0x00000002, 0x42340000, 0xFFF70000, 0xFFD00000, \
0x00000002, 0x42340000, 0xFFF70000, 0xFFD00000, \
0x00000002, 0x42340000, 0xFFD70000, 0xFFE90000, \
0x00000002, 0x42340000, 0xFFD30000, 0x000A0000, \
0x00000002, 0x42340000, 0xFFE80001, 0x00270000, \
0x00000002, 0x42340000, 0x00150000, 0x002B0000, \
0x00000002, 0x42340000, 0x002F0005, 0x000E0000, \
0x00000002, 0x42340000, 0x00310005, 0xFFF50000, \
0x00000002, 0x42340000, 0x00200005, 0xFFDA0000, \
0x00000002, 0x42340000, 0xFFF50005, 0xFFD10000, \
0x00000002, 0x42340000, 0xFFD70006, 0xFFEA0000, \
0x00000002, 0x42340000, 0xFFD50009, 0x000D0000, \
0x00000002, 0x42340000, 0xFFE90009, 0x00270000, \
0x00000002, 0x42340000, 0x0014000B, 0x00290000, \
0x00000002, 0x42340000, 0x002D000B, 0x000F0000, \
0x00000002, 0x42340000, 0x002E000B, 0xFFF00000, \
0x00000002, 0x42340000, 0x001E000B, 0xFFDA0000, \
0x00000002, 0x42340000, 0xFFFA000E, 0xFFD30000, \
0x00000002, 0x42340000, 0xFFDA000E, 0xFFEB0000, \
0x00000002, 0x42340000, 0xFFD70010, 0x00080000, \
0x00000002, 0x42340000, 0xFFE90010, 0x00240000, \
0x00000002, 0x42340000, 0x00110010, 0x00280000, \
0x00000002, 0x42340000, 0x002C0010, 0x000D0000, \
0x00000002, 0x42340000, 0x002C0012, 0xFFF50000, \
0x00000002, 0x42340000, 0x001F0011, 0xFFDE0000, \
0x00000002, 0x42340000, 0xFFFB0014, 0xFFD50000, \
0x00000002, 0x42340000, 0xFFDD0014, 0xFFEC0000, \
0x00000002, 0x42340000, 0xFFDA0017, 0x00080000, \
0x00000002, 0x42340000, 0xFFE80014, 0x001F0000, \
0x00000002, 0x42340000, 0x000C0018, 0x00260000, \
0x00000002, 0x42340000, 0x00270018, 0x000D0000, \
0x00000002, 0x42340000, 0x0027001B, 0xFFF60000, \
0x00000002, 0x42340000, 0x001C001A, 0xFFE20000, \
0x00000002, 0x42340000, 0xFFFA000E, 0xFFD40000, \
0x00000002, 0x42340000, 0xFFD9001B, 0xFFEF0000, \
0x00000002, 0x42340000, 0xFFD7001B, 0x000A0000, \
0x00000002, 0x42340000, 0xFFE6001B, 0x00220000, \
0x00000002, 0x42340000, 0x000F001F, 0x002C0000, \
0x00000002, 0x42340000, 0x00320020, 0x00090000, \
0x00000002, 0x42340000, 0x00300021, 0xFFF00000, \
0x00000002, 0x42340000, 0x001C0025, 0xFFD90000, \
0x00000002, 0x42340000, 0xFFFA0028, 0xFFD40000, \
0x00000002, 0x42340000, 0xFFD8002B, 0xFFF50000, \
0x00000002, 0x42340000, 0xFFD7002B, 0x00060000, \
0x00000002, 0x42340000, 0xFFDF002B, 0x00190000, \
0x00000002, 0x42340000, 0x000E002E, 0x002C0000, \
0x00000002, 0x42340000, 0x0032002E, 0x00030000, \
0x00000002, 0x42340000, 0x002A0030, 0xFFE70000, \
0x00000002, 0x42340000, 0xFFF6002B, 0xFFD40000, \
0x00000002, 0x42340000, 0xFFF6002B, 0xFFD40000, \
0xFF000002, 0x42340000, 0xFFF6002B, 0xFFD40000, \
0xFF000002, 0x42340000, 0xFFF6002B, 0xFFD40000, \
0x00000000, 0x00000000, 0x00000000

.section .rodata

var_80934000: .word var_80930840
.word var_80930840
.word var_809308E0
.word var_809308E0
.word var_809308E0
.word var_809308E0
.word var_809308E0
.word var_80930980
.word lbl_80930B58
.word lbl_80930B58
.word lbl_80930B58
.word lbl_80930B58
.word lbl_80930B58
.word var_809309F0
.word var_80930A80
.word var_80930AA4
.word var_80930AA4
.word var_80930B30
var_80934048: .word 0x477FFF00
var_8093404C: .word lbl_80930FE4
.word lbl_80930FE4
.word var_80930C04
.word var_80930C04
.word var_80930C04
.word var_80930C04
.word var_80930C04
.word var_80930C1C
.word lbl_80930FE4
.word lbl_80930FE4
.word lbl_80930FE4
.word lbl_80930FE4
.word lbl_80930FE4
.word var_80930C34
.word lbl_80930FE4
.word var_80930C64
.word var_80930F64
.word lbl_80930FE4
var_80934094: .word var_8093134C
.word var_8093134C
.word var_809313FC
.word var_809313FC
.word var_809313FC
.word var_809313FC
.word var_809313FC
.word var_80931410
.word lbl_80931470
.word lbl_80931470
.word lbl_80931470
.word lbl_80931470
.word lbl_80931470
.word var_80931424
.word var_80931438
.word var_8093144C
.word var_8093144C
.word var_80931460
var_809340DC: .word 0x44BB8000
var_809340E0: .word 0x40490FDB
var_809340E4: .word 0x3A83126F
var_809340E8: .word 0x3C8EFA35
var_809340EC: .word 0x3C8EFA35
var_809340F0: .word 0x3C8EFA35
var_809340F4: .word 0x3E4CCCCD
var_809340F8: .word 0x3E4CCCCD
var_809340FC: .word 0x3C9374BC
var_80934100: .word 0x3C8EFA35
var_80934104: .word 0x3E4CCCCD
var_80934108: .word 0x3CA3D70A
var_8093410C: .word 0x3C8EFA35

.bss

var_80934470: .space 0x04
var_80934474: .space 0x0C
var_80934480: .space 0x04
var_80934484: .space 0x04
var_80934488: .space 0x04
var_8093448C: .space 0x04
var_80934490: .space 0x10
var_809344A0: .space 0x04
var_809344A4: .space 0x04
var_809344A8: .space 0x04
var_809344AC: .space 0x02
var_809344AE: .space 0x02
var_809344B0: .space 0x10
