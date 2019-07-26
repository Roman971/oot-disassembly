.section .text
func_8097D000:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   $at, $zero, 0x0006         # $at = 00000006
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sh      t7, 0x02EE(s0)             # 000002EE
    lh      v0, 0x02EE(s0)             # 000002EE
    lui     t9, %hi(func_8097ED04)     # t9 = 80980000
    sb      t8, 0x00AE(s0)             # 000000AE
    beq     v0, $at, lbl_8097D05C
    addiu   t9, t9, %lo(func_8097ED04) # t9 = 8097ED04
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_8097D144
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
lbl_8097D05C:
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sw      t9, 0x0134(s0)             # 00000134
    and     t1, t0, $at
    sw      t1, 0x0004(s0)             # 00000004
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s1, 0x1C24             # a1 = 00001C24
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_800265D4
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    lh      t2, 0x02EE(s0)             # 000002EE
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    bne     t2, $at, lbl_8097D0A8
    lui     a1, 0x3CA3                 # a1 = 3CA30000
    lui     t3, %hi(func_8097D2C4)     # t3 = 80980000
    addiu   t3, t3, %lo(func_8097D2C4) # t3 = 8097D2C4
    b       lbl_8097D26C
    sw      t3, 0x024C(s0)             # 0000024C
lbl_8097D0A8:
    jal     func_80020F88
    ori     a1, a1, 0xD70A             # a1 = 3CA3D70A
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f0                   # $f0 = 90.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x4270                # $at = 42700000
    lw      t5, 0x0024(s0)             # 00000024
    mtc1    $at, $f10                  # $f10 = 60.00
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f18, 0x002C(s0)           # 0000002C
    add.s   $f6, $f4, $f0
    addiu   t6, $zero, 0x7918          # t6 = 00007918
    sh      t6, 0x0032(s0)             # 00000032
    sub.s   $f16, $f8, $f10
    sw      t5, 0x0264(s0)             # 00000264
    lw      t5, 0x002C(s0)             # 0000002C
    add.s   $f4, $f18, $f0
    lw      t4, 0x0028(s0)             # 00000028
    lh      t7, 0x0032(s0)             # 00000032
    swc1    $f6, 0x0024(s0)            # 00000024
    swc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f4, 0x002C(s0)            # 0000002C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0388             # a1 = 00000388
    sw      t5, 0x026C(s0)             # 0000026C
    sw      t4, 0x0268(s0)             # 00000268
    jal     func_8004ABCC
    sh      t7, 0x00B6(s0)             # 000000B6
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      t8, 0x0004(s0)             # 00000004
    lui     t0, %hi(func_8097E548)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097E548) # t0 = 8097E548
    ori     t9, t8, 0x0011             # t9 = 00000011
    sw      t9, 0x0004(s0)             # 00000004
    b       lbl_8097D26C
    sw      t0, 0x024C(s0)             # 0000024C
lbl_8097D144:
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_8001EC20
    swc1    $f6, 0x02D0(s0)            # 000002D0
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t1, s0, 0x0180             # t1 = 00000180
    addiu   t2, s0, 0x01E6             # t2 = 000001E6
    addiu   t3, $zero, 0x0011          # t3 = 00000011
    sw      t3, 0x0018($sp)
    sw      t2, 0x0014($sp)
    sw      t1, 0x0010($sp)
    addiu   a3, a3, 0x5C30             # a3 = 06005C30
    addiu   a2, a2, 0xBAC8             # a2 = 0600BAC8
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0388             # a1 = 00000388
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_8097EF20)      # a3 = 80980000
    addiu   a3, a3, %lo(var_8097EF20)  # a3 = 8097EF20
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      v0, 0x02EE(s0)             # 000002EE
    addiu   v1, $zero, 0x0006          # v1 = 00000006
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    addiu   t5, $zero, 0x0046          # t5 = 00000046
    addiu   $at, $zero, 0x0002         # $at = 00000002
    sh      $zero, 0x03CC(s0)          # 000003CC
    sh      t4, 0x03C8(s0)             # 000003C8
    sh      t5, 0x03CA(s0)             # 000003CA
    beq     v0, $at, lbl_8097D204
    sb      v1, 0x001F(s0)             # 0000001F
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v0, $at, lbl_8097D220
    lui     t7, %hi(func_8097D9B0)     # t7 = 80980000
    beq     v0, v1, lbl_8097D238
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_8097D260
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8097D204:
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    lui     t6, %hi(func_8097D2E4)     # t6 = 80980000
    addiu   t6, t6, %lo(func_8097D2E4) # t6 = 8097D2E4
    sw      t6, 0x024C(s0)             # 0000024C
    b       lbl_8097D25C
    swc1    $f8, 0x006C(s0)            # 0000006C
lbl_8097D220:
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    addiu   t7, t7, %lo(func_8097D9B0) # t7 = 8097D9B0
    sw      t7, 0x024C(s0)             # 0000024C
    b       lbl_8097D25C
    swc1    $f10, 0x006C(s0)           # 0000006C
lbl_8097D238:
    jal     func_8004ABCC
    lw      a1, 0x0030($sp)
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFF6         # $at = FFFFFFF6
    lui     t0, %hi(func_8097D2D4)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097D2D4) # t0 = 8097D2D4
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    sw      t0, 0x024C(s0)             # 0000024C
lbl_8097D25C:
    lh      t1, 0x001C(s0)             # 0000001C
lbl_8097D260:
    sra     t2, t1,  8
    andi    t3, t2, 0x00FF             # t3 = 00000000
    sh      t3, 0x02E0(s0)             # 000002E0
lbl_8097D26C:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_8097D280:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lh      t6, 0x03C8(a2)             # 000003C8
    or      a0, a3, $zero              # a0 = 00000000
    bne     t6, $zero, lbl_8097D2AC
    nop
    lh      t7, 0x03CA(a2)             # 000003CA
    beql    t7, $zero, lbl_8097D2B8
    lw      $ra, 0x0014($sp)
lbl_8097D2AC:
    jal     func_8004ABCC
    addiu   a1, a2, 0x0388             # a1 = 00000388
    lw      $ra, 0x0014($sp)
lbl_8097D2B8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097D2C4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8097D2D4:
    sw      a0, 0x0000($sp)
    sw      a1, 0x0004($sp)
    jr      $ra
    nop


func_8097D2E4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_8097D378)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097D378) # t0 = 8097D378
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097D378:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sb      $zero, 0x02FB(a2)          # 000002FB
    sh      $zero, 0x02FE(a2)          # 000002FE
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_8097D3E0
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    jal     func_800597C0
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     t8, %hi(func_8097E7EC)     # t8 = 80980000
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $zero, 0x0006          # t7 = 00000006
    addiu   t8, t8, %lo(func_8097E7EC) # t8 = 8097E7EC
    sh      v0, 0x010E(a2)             # 0000010E
    sb      t6, 0x02FB(a2)             # 000002FB
    sh      t7, 0x02F0(a2)             # 000002F0
    b       lbl_8097D4E8
    sw      t8, 0x024C(a2)             # 0000024C
lbl_8097D3E0:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t9, 0x0ED4(v0)             # 8011B4A4
    andi    t0, t9, 0x0200             # t0 = 00000000
    beql    t0, $zero, lbl_8097D438
    lw      t8, 0x0010(v0)             # 8011A5E0
    lhu     t1, 0x0ED8(v0)             # 8011B4A8
    andi    t2, t1, 0x0020             # t2 = 00000000
    beql    t2, $zero, lbl_8097D438
    lw      t8, 0x0010(v0)             # 8011A5E0
    lhu     t3, 0x0EDA(v0)             # 8011B4AA
    addiu   t5, $zero, 0x0006          # t5 = 00000006
    addiu   t6, $zero, 0x7006          # t6 = 00007006
    andi    t4, t3, 0x0080             # t4 = 00000000
    beq     t4, $zero, lbl_8097D434
    lui     t7, %hi(func_8097E7EC)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097E7EC) # t7 = 8097E7EC
    sh      t5, 0x02F0(a2)             # 000002F0
    sh      t6, 0x010E(a2)             # 0000010E
    b       lbl_8097D4E8
    sw      t7, 0x024C(a2)             # 0000024C
lbl_8097D434:
    lw      t8, 0x0010(v0)             # 8011A5E0
lbl_8097D438:
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    addiu   t0, $zero, 0x7002          # t0 = 00007002
    beq     t8, $zero, lbl_8097D45C
    lui     t1, %hi(func_8097E7EC)     # t1 = 80980000
    addiu   t1, t1, %lo(func_8097E7EC) # t1 = 8097E7EC
    sh      t9, 0x02F0(a2)             # 000002F0
    sh      t0, 0x010E(a2)             # 0000010E
    b       lbl_8097D4E8
    sw      t1, 0x024C(a2)             # 0000024C
lbl_8097D45C:
    lbu     t2, 0x02FC(a2)             # 000002FC
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t4, $zero, 0x7099          # t4 = 00007099
    beq     t2, $zero, lbl_8097D484
    lui     t5, %hi(func_8097E7EC)     # t5 = 80980000
    addiu   t5, t5, %lo(func_8097E7EC) # t5 = 8097E7EC
    sh      t3, 0x02F0(a2)             # 000002F0
    sh      t4, 0x010E(a2)             # 0000010E
    b       lbl_8097D4E8
    sw      t5, 0x024C(a2)             # 0000024C
lbl_8097D484:
    lhu     t6, 0x0ED6(v0)             # 8011B4A6
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    addiu   t5, $zero, 0x7029          # t5 = 00007029
    andi    t7, t6, 0x0004             # t7 = 00000004
    beq     t7, $zero, lbl_8097D4D8
    lui     t6, %hi(func_8097E7EC)     # t6 = 80980000
    lh      t8, 0x02FE(a2)             # 000002FE
    lui     t3, %hi(func_8097E7EC)     # t3 = 80980000
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    bne     t8, $zero, lbl_8097D4C4
    addiu   t3, t3, %lo(func_8097E7EC) # t3 = 8097E7EC
    addiu   t9, $zero, 0x7071          # t9 = 00007071
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sh      t9, 0x010E(a2)             # 0000010E
    b       lbl_8097D4CC
    sh      t0, 0x02FE(a2)             # 000002FE
lbl_8097D4C4:
    addiu   t1, $zero, 0x7072          # t1 = 00007072
    sh      t1, 0x010E(a2)             # 0000010E
lbl_8097D4CC:
    sh      t2, 0x02F0(a2)             # 000002F0
    b       lbl_8097D4E8
    sw      t3, 0x024C(a2)             # 0000024C
lbl_8097D4D8:
    addiu   t6, t6, %lo(func_8097E7EC) # t6 = 8097E7EC
    sh      t4, 0x02F0(a2)             # 000002F0
    sh      t5, 0x010E(a2)             # 0000010E
    sw      t6, 0x024C(a2)             # 0000024C
lbl_8097D4E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097D4F8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_8097D5D4
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_8097D5D0
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t6, 0x02F0(s0)             # 000002F0
    lw      t7, 0x0024($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addu    v0, v0, t7
    lbu     v0, 0x04BD(v0)             # 000104BD
    lui     t8, 0x8012                 # t8 = 80120000
    beq     v0, $zero, lbl_8097D570
    nop
    beq     v0, $at, lbl_8097D5B4
    addiu   t3, $zero, 0x7096          # t3 = 00007096
    b       lbl_8097D5C8
    lw      a0, 0x0024($sp)
lbl_8097D570:
    lh      t8, -0x59FC(t8)            # 8011A604
    lui     t2, %hi(func_8097E9E4)     # t2 = 80980000
    addiu   t1, $zero, 0x7097          # t1 = 00007097
    slti    $at, t8, 0x000A
    bne     $at, $zero, lbl_8097D5A8
    addiu   t2, t2, %lo(func_8097E9E4) # t2 = 8097E9E4
    jal     func_800721CC
    addiu   a0, $zero, 0xFFF6          # a0 = FFFFFFF6
    lui     t0, %hi(func_8097D5E4)     # t0 = 80980000
    addiu   t9, $zero, 0x7098          # t9 = 00007098
    addiu   t0, t0, %lo(func_8097D5E4) # t0 = 8097D5E4
    sh      t9, 0x010E(s0)             # 0000010E
    b       lbl_8097D5C4
    sw      t0, 0x024C(s0)             # 0000024C
lbl_8097D5A8:
    sh      t1, 0x010E(s0)             # 0000010E
    b       lbl_8097D5C4
    sw      t2, 0x024C(s0)             # 0000024C
lbl_8097D5B4:
    lui     t4, %hi(func_8097E9E4)     # t4 = 80980000
    addiu   t4, t4, %lo(func_8097E9E4) # t4 = 8097E9E4
    sh      t3, 0x010E(s0)             # 0000010E
    sw      t4, 0x024C(s0)             # 0000024C
lbl_8097D5C4:
    lw      a0, 0x0024($sp)
lbl_8097D5C8:
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
lbl_8097D5D0:
    lw      $ra, 0x001C($sp)
lbl_8097D5D4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097D5E4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0018($sp)
    lh      t7, 0x02F0(t6)             # 000002F0
    bnel    t7, v0, lbl_8097D660
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_8097D65C
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      t9, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    addu    $at, $at, t9
    sb      t8, 0x03DC($at)            # 000103DC
    lw      t1, 0x0018($sp)
    lui     t0, %hi(func_8097D66C)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097D66C) # t0 = 8097D66C
    sw      t0, 0x024C(t1)             # 0000024C
lbl_8097D65C:
    lw      $ra, 0x0014($sp)
lbl_8097D660:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097D66C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5500             # a0 = 06005500
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f0, $f4
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x5500             # a1 = 06005500
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x02DC(v1)            # 000002DC
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_8097D6E8)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097D6E8) # t7 = 8097D6E8
    sw      t7, 0x024C(t8)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097D6E8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0154(a2)            # 00000154
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0020($sp)
    lw      v0, 0x1C6C(a1)             # 00001C6C
    sw      a2, 0x0028($sp)
    jal     func_8008C9C0
    sw      v0, 0x001C($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lwc1    $f6, 0x0020($sp)
    lw      v0, 0x001C($sp)
    lw      a2, 0x0028($sp)
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_8097D768
    lwc1    $f10, 0x0020($sp)
    lbu     t6, 0x02F8(a2)             # 000002F8
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2823          # a1 = 00002823
    bnel    t6, $zero, lbl_8097D768
    lwc1    $f10, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_80022FD0
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lw      v0, 0x001C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x02F8(a2)             # 000002F8
    lwc1    $f10, 0x0020($sp)
lbl_8097D768:
    lwc1    $f16, 0x02DC(a2)           # 000002DC
    lui     t9, %hi(func_8097D7D4)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097D7D4) # t9 = 8097D7D4
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_8097D7C8
    lw      $ra, 0x0014($sp)
    beq     v0, $zero, lbl_8097D7C0
    addiu   v1, $zero, 0x00F8          # v1 = 000000F8
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097D790:
    beql    v1, t8, lbl_8097D7A4
    sw      v0, 0x0304(a2)             # 00000304
    b       lbl_8097D7B8
    lw      v0, 0x0124(v0)             # 00000124
    sw      v0, 0x0304(a2)             # 00000304
lbl_8097D7A4:
    addiu   t0, $zero, 0x0000          # t0 = 00000000
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sw      t1, 0x015C(v0)             # 0000015C
    b       lbl_8097D7C0
    sw      t0, 0x0158(v0)             # 00000158
lbl_8097D7B8:
    bnel    v0, $zero, lbl_8097D790
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097D7C0:
    sw      t9, 0x024C(a2)             # 0000024C
    lw      $ra, 0x0014($sp)
lbl_8097D7C8:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097D7D4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t0, $zero, 0x00C8          # t0 = 000000C8
    sh      t0, 0x02E2(s0)             # 000002E2
    jal     func_8009D0F0
    lw      a0, 0x0034($sp)
    sh      v0, 0x0300(s0)             # 00000300
    lw      a0, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0034($sp)
    lh      a1, 0x0300(s0)             # 00000300
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, %hi(var_8097EF50)     # $at = 80980000
    lwc1    $f4, %lo(var_8097EF50)($at)
    lui     $at, %hi(var_8097EF54)     # $at = 80980000
    lh      a1, 0x0300(s0)             # 00000300
    swc1    $f4, 0x0270(s0)            # 00000270
    lwc1    $f6, %lo(var_8097EF54)($at)
    lui     $at, %hi(var_8097EF58)     # $at = 80980000
    addiu   a2, s0, 0x0270             # a2 = 00000270
    swc1    $f6, 0x0274(s0)            # 00000274
    lwc1    $f8, %lo(var_8097EF58)($at)
    lui     $at, %hi(var_8097EF5C)     # $at = 80980000
    addiu   a3, s0, 0x027C             # a3 = 0000027C
    swc1    $f8, 0x0278(s0)            # 00000278
    lwc1    $f10, %lo(var_8097EF5C)($at)
    lui     $at, %hi(var_8097EF60)     # $at = 80980000
    swc1    $f10, 0x027C(s0)           # 0000027C
    lwc1    $f16, %lo(var_8097EF60)($at)
    lui     $at, %hi(var_8097EF64)     # $at = 80980000
    swc1    $f16, 0x0280(s0)           # 00000280
    lwc1    $f18, %lo(var_8097EF64)($at)
    swc1    $f18, 0x0284(s0)           # 00000284
    jal     func_8009D328
    lw      a0, 0x0034($sp)
    lui     t1, %hi(func_8097D8F8)     # t1 = 80980000
    addiu   t1, t1, %lo(func_8097D8F8) # t1 = 8097D8F8
    sw      t1, 0x024C(s0)             # 0000024C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8097D8F8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0300(s0)             # 00000300
    addiu   a2, s0, 0x0270             # a2 = 00000270
    jal     func_8009D328
    addiu   a3, s0, 0x027C             # a3 = 0000027C
    lh      t6, 0x02E2(s0)             # 000002E2
    lw      v0, 0x0304(s0)             # 00000304
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_8097D958
    nop
    lw      t8, 0x0158(v0)             # 00000158
    lw      t9, 0x015C(v0)             # 0000015C
    bnel    t8, $zero, lbl_8097D9A0
    lw      $ra, 0x001C($sp)
    bnel    t9, $zero, lbl_8097D9A0
    lw      $ra, 0x001C($sp)
lbl_8097D958:
    jal     func_8009D21C
    lh      a1, 0x0300(s0)             # 00000300
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x02FC(s0)             # 000002FC
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t0, %hi(func_8097D2E4)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097D2E4) # t0 = 8097D2E4
    sw      t0, 0x024C(s0)             # 0000024C
    lw      $ra, 0x001C($sp)
lbl_8097D9A0:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8097D9B0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_8097DA44)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097DA44) # t0 = 8097DA44
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097DA44:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sb      $zero, 0x02FB(a2)          # 000002FB
    lui     v0, 0x8012                 # v0 = 80120000
    lhu     v0, -0x4B2A(v0)            # 8011B4D6
    lui     t0, %hi(func_8097DB68)     # t0 = 80980000
    or      v1, $zero, $zero           # v1 = 00000000
    andi    t6, v0, 0x0040             # t6 = 00000000
    beq     t6, $zero, lbl_8097DB54
    addiu   t0, t0, %lo(func_8097DB68) # t0 = 8097DB68
    andi    t7, v0, 0x0080             # t7 = 00000000
    bne     t7, $zero, lbl_8097DAE4
    addiu   t5, $zero, 0x2020          # t5 = 00002020
    lw      a0, 0x0024($sp)
    jal     func_80079B44
    sw      a2, 0x0020($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8097DACC
    lw      a2, 0x0020($sp)
    lbu     t8, 0x02F9(a2)             # 000002F9
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bne     t8, $zero, lbl_8097DAB8
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   t9, $zero, 0x200A          # t9 = 0000200A
    b       lbl_8097DAC0
    sh      t9, 0x010E(a2)             # 0000010E
lbl_8097DAB8:
    addiu   t0, $zero, 0x200B          # t0 = 0000200B
    sh      t0, 0x010E(a2)             # 0000010E
lbl_8097DAC0:
    sh      t1, 0x02F0(a2)             # 000002F0
    b       lbl_8097DAF4
    sb      t2, 0x02FB(a2)             # 000002FB
lbl_8097DACC:
    addiu   t3, $zero, 0x2016          # t3 = 00002016
    addiu   t4, $zero, 0x0006          # t4 = 00000006
    sh      t3, 0x010E(a2)             # 0000010E
    sh      t4, 0x02F0(a2)             # 000002F0
    b       lbl_8097DAF4
    addiu   v1, $zero, 0x0001          # v1 = 00000001
lbl_8097DAE4:
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t5, 0x010E(a2)             # 0000010E
    sh      t6, 0x02F0(a2)             # 000002F0
    sh      $zero, 0x02FE(a2)          # 000002FE
lbl_8097DAF4:
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    sh      v1, 0x001E($sp)
    jal     func_800597C0
    sw      a2, 0x0020($sp)
    lh      v1, 0x001E($sp)
    beq     v0, $zero, lbl_8097DB44
    lw      a2, 0x0020($sp)
    bne     v1, $zero, lbl_8097DB44
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    jal     func_800597C0
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    sh      v0, 0x010E(a2)             # 0000010E
    sb      t7, 0x02FB(a2)             # 000002FB
    sh      t8, 0x02F0(a2)             # 000002F0
    sh      $zero, 0x02FE(a2)          # 000002FE
lbl_8097DB44:
    lui     t9, %hi(func_8097E7EC)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097E7EC) # t9 = 8097E7EC
    b       lbl_8097DB58
    sw      t9, 0x024C(a2)             # 0000024C
lbl_8097DB54:
    sw      t0, 0x024C(a2)             # 0000024C
lbl_8097DB58:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097DB68:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x0024($sp)
    lw      a0, 0x002C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_8097DBB8
    addiu   t8, $zero, 0x200E          # t8 = 0000200E
    lw      a0, 0x002C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    b       lbl_8097DBBC
    sh      v0, 0x010E(s0)             # 0000010E
lbl_8097DBB8:
    sh      t8, 0x010E(s0)             # 0000010E
lbl_8097DBBC:
    addiu   t9, $zero, 0x0006          # t9 = 00000006
    sh      t9, 0x02F0(s0)             # 000002F0
    lw      a1, 0x002C($sp)
    jal     func_80022930
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_8097DC30
    lh      t6, 0x008A(s0)             # 0000008A
    jal     func_80022B04
    lw      a0, 0x002C($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_8097DC18
    nop
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lw      t1, 0x0024($sp)
    addiu   t0, $zero, 0x2010          # t0 = 00002010
    lui     t3, %hi(func_8097DCA4)     # t3 = 80980000
    addiu   t2, $zero, 0x0005          # t2 = 00000005
    addiu   t3, t3, %lo(func_8097DCA4) # t3 = 8097DCA4
    sh      t0, 0x010E(t1)             # 0000010E
    sh      t2, 0x02F0(s0)             # 000002F0
    b       lbl_8097DC90
    sw      t3, 0x024C(s0)             # 0000024C
lbl_8097DC18:
    beq     v0, $zero, lbl_8097DC90
    lw      t5, 0x0024($sp)
    addiu   t4, $zero, 0x200F          # t4 = 0000200F
    b       lbl_8097DC90
    sh      t4, 0x010E(t5)             # 0000010E
    lh      t6, 0x008A(s0)             # 0000008A
lbl_8097DC30:
    lh      t7, 0x00B6(s0)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    subu    v0, t6, t7
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8097DC58
    sll     v1, v0, 16
    b       lbl_8097DC64
    sra     v1, v1, 16
lbl_8097DC58:
    subu    v1, $zero, v0
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8097DC64:
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_8097DC90
    slti    $at, v1, 0x4300
    beq     $at, $zero, lbl_8097DC90
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    lui     a2, 0x42C8                 # a2 = 42C80000
    jal     func_80022A34
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_8097DC90:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097DCA4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lw      t6, 0x0018($sp)
    lh      t7, 0x02F0(t6)             # 000002F0
    bnel    t7, v0, lbl_8097DD20
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_8097DD1C
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lw      t9, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    addiu   t8, $zero, 0x0037          # t8 = 00000037
    addu    $at, $at, t9
    sb      t8, 0x03DC($at)            # 000103DC
    lw      t1, 0x0018($sp)
    lui     t0, %hi(func_8097DD2C)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097DD2C) # t0 = 8097DD2C
    sw      t0, 0x024C(t1)             # 0000024C
lbl_8097DD1C:
    lw      $ra, 0x0014($sp)
lbl_8097DD20:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097DD2C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5500             # a0 = 06005500
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f0, $f4
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x5500             # a1 = 06005500
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x02DC(v1)            # 000002DC
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_8097DDA8)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097DDA8) # t7 = 8097DDA8
    sw      t7, 0x024C(t8)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097DDA8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0154(a2)            # 00000154
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0020($sp)
    lw      v0, 0x1C6C(a1)             # 00001C6C
    sw      a2, 0x0028($sp)
    jal     func_8008C9C0
    sw      v0, 0x001C($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lwc1    $f6, 0x0020($sp)
    lw      v0, 0x001C($sp)
    lw      a2, 0x0028($sp)
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_8097DE28
    lwc1    $f10, 0x0020($sp)
    lbu     t6, 0x02F8(a2)             # 000002F8
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2823          # a1 = 00002823
    bnel    t6, $zero, lbl_8097DE28
    lwc1    $f10, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_80022FD0
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lw      v0, 0x001C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x02F8(a2)             # 000002F8
    lwc1    $f10, 0x0020($sp)
lbl_8097DE28:
    lwc1    $f16, 0x02DC(a2)           # 000002DC
    lui     t0, %hi(func_8097DE8C)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097DE8C) # t0 = 8097DE8C
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_8097DE80
    lw      $ra, 0x0014($sp)
    beq     v0, $zero, lbl_8097DE78
    addiu   v1, $zero, 0x0100          # v1 = 00000100
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097DE50:
    beql    v1, t8, lbl_8097DE64
    sw      v0, 0x0304(a2)             # 00000304
    b       lbl_8097DE70
    lw      v0, 0x0124(v0)             # 00000124
    sw      v0, 0x0304(a2)             # 00000304
lbl_8097DE64:
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    b       lbl_8097DE78
    sh      t9, 0x0158(v0)             # 00000158
lbl_8097DE70:
    bnel    v0, $zero, lbl_8097DE50
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097DE78:
    sw      t0, 0x024C(a2)             # 0000024C
    lw      $ra, 0x0014($sp)
lbl_8097DE80:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097DE8C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    sw      $zero, 0x0014($sp)
    trunc.w.s $f8, $f6
    mtc1    $at, $f6                   # $f6 = -10.00
    mfc1    t7, $f8
    swc1    $f6, 0x0018($sp)
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f4, $f10
    jal     func_8008D17C
    swc1    $f4, 0x0010($sp)
    addiu   t0, $zero, 0x00C8          # t0 = 000000C8
    sh      t0, 0x02E2(s0)             # 000002E2
    jal     func_8009D0F0
    lw      a0, 0x0034($sp)
    sh      v0, 0x0300(s0)             # 00000300
    lw      a0, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lw      a0, 0x0034($sp)
    lh      a1, 0x0300(s0)             # 00000300
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0xC28E                # $at = C28E0000
    mtc1    $at, $f0                   # $f0 = -71.00
    lui     $at, %hi(var_8097EF68)     # $at = 80980000
    lwc1    $f2, %lo(var_8097EF68)($at)
    lui     $at, %hi(var_8097EF6C)     # $at = 80980000
    lwc1    $f12, %lo(var_8097EF6C)($at)
    lui     $at, 0x4335                # $at = 43350000
    mtc1    $at, $f14                  # $f14 = 181.00
    lui     $at, %hi(var_8097EF70)     # $at = 80980000
    lwc1    $f16, %lo(var_8097EF70)($at)
    lui     $at, %hi(var_8097EF74)     # $at = 80980000
    lwc1    $f18, %lo(var_8097EF74)($at)
    swc1    $f0, 0x02AC(s0)            # 000002AC
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f2, 0x02B0(s0)            # 000002B0
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f12, 0x02B4(s0)           # 000002B4
    swc1    $f12, 0x0278(s0)           # 00000278
    swc1    $f14, 0x0288(s0)           # 00000288
    swc1    $f14, 0x027C(s0)           # 0000027C
    swc1    $f16, 0x028C(s0)           # 0000028C
    swc1    $f16, 0x0280(s0)           # 00000280
    swc1    $f18, 0x0290(s0)           # 00000290
    swc1    $f18, 0x0284(s0)           # 00000284
    lw      a0, 0x0034($sp)
    lh      a1, 0x0300(s0)             # 00000300
    addiu   a2, s0, 0x0270             # a2 = 00000270
    jal     func_8009D328
    addiu   a3, s0, 0x027C             # a3 = 0000027C
    lui     t1, %hi(func_8097DFC4)     # t1 = 80980000
    addiu   t1, t1, %lo(func_8097DFC4) # t1 = 8097DFC4
    sw      t1, 0x024C(s0)             # 0000024C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_8097DFC4:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s1, $zero              # a0 = 00000000
    lh      a1, 0x0300(s0)             # 00000300
    addiu   a2, s0, 0x0270             # a2 = 00000270
    jal     func_8009D328
    addiu   a3, s0, 0x027C             # a3 = 0000027C
    lh      t6, 0x02E2(s0)             # 000002E2
    lw      v0, 0x0304(s0)             # 00000304
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_8097E018
    nop
    lh      t7, 0x0158(v0)             # 00000158
    bnel    t7, $zero, lbl_8097E0BC
    lw      $ra, 0x001C($sp)
lbl_8097E018:
    jal     func_8009D21C
    lh      a1, 0x0300(s0)             # 00000300
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_8009D1AC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lbu     v0, 0x02FA(s0)             # 000002FA
    addiu   $at, $zero, 0x0002         # $at = 00000002
    addiu   t1, $zero, 0x2021          # t1 = 00002021
    beq     v0, $at, lbl_8097E094
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    bne     v0, $zero, lbl_8097E06C
    addiu   t8, $zero, 0x2015          # t8 = 00002015
    sh      t8, 0x010E(s0)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t8, 0xFFFF             # a1 = 00002015
    lui     t9, %hi(func_8097E0CC)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097E0CC) # t9 = 8097E0CC
    b       lbl_8097E0B8
    sw      t9, 0x024C(s0)             # 0000024C
lbl_8097E06C:
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     t0, %hi(func_8097D9B0)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097D9B0) # t0 = 8097D9B0
    b       lbl_8097E0B8
    sw      t0, 0x024C(s0)             # 0000024C
lbl_8097E094:
    sh      $zero, 0x02FE(s0)          # 000002FE
    jal     func_800721CC
    sh      t1, 0x010E(s0)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    lhu     a1, 0x010E(s0)             # 0000010E
    lui     t2, %hi(func_8097E318)     # t2 = 80980000
    addiu   t2, t2, %lo(func_8097E318) # t2 = 8097E318
    sw      t2, 0x024C(s0)             # 0000024C
lbl_8097E0B8:
    lw      $ra, 0x001C($sp)
lbl_8097E0BC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8097E0CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_8097E14C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_8097E148
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0F06(v0)             # 8011B4D6
    lw      a0, 0x001C($sp)
    ori     t7, t6, 0x0040             # t7 = 00000040
    jal     func_800D6218
    sh      t7, 0x0F06(v0)             # 8011B4D6
    lw      a0, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      t9, 0x0018($sp)
    lui     t8, %hi(func_8097D9B0)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097D9B0) # t8 = 8097D9B0
    sw      t8, 0x024C(t9)             # 0000024C
lbl_8097E148:
    lw      $ra, 0x0014($sp)
lbl_8097E14C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097E158:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bnel    v0, $at, lbl_8097E284
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8097E280
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, s1
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   t6, $zero, 0x2020          # t6 = 00002020
    andi    a1, t6, 0xFFFF             # a1 = 00002020
    beq     v0, $zero, lbl_8097E1C8
    or      a0, s1, $zero              # a0 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     v0, v1, lbl_8097E240
    addiu   t5, $zero, 0x200C          # t5 = 0000200C
    b       lbl_8097E284
    lw      $ra, 0x001C($sp)
lbl_8097E1C8:
    jal     func_800DCE80
    sh      t6, 0x010E(s0)             # 0000010E
    jal     func_80079B54
    or      a0, s1, $zero              # a0 = 00000000
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lhu     t7, 0x0F06(v1)             # 8011B4D6
    lhu     t9, 0x0EF6(v1)             # 8011B4C6
    or      a0, s1, $zero              # a0 = 00000000
    ori     t8, t7, 0x0080             # t8 = 00000080
    ori     t0, t9, 0x0100             # t0 = 00000100
    sh      t8, 0x0F06(v1)             # 8011B4D6
    sh      t0, 0x0EF6(v1)             # 8011B4C6
    jal     func_8006FDCC
    addiu   a1, $zero, 0x002C          # a1 = 0000002C
    lbu     t1, 0x02FA(s0)             # 000002FA
    lui     t4, %hi(func_8097E294)     # t4 = 80980000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    beq     t1, $zero, lbl_8097E234
    addiu   t4, t4, %lo(func_8097E294) # t4 = 8097E294
    lui     t3, %hi(func_8097E318)     # t3 = 80980000
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    addiu   t3, t3, %lo(func_8097E318) # t3 = 8097E318
    sb      t2, 0x02FA(s0)             # 000002FA
    sh      v1, 0x02FE(s0)             # 000002FE
    b       lbl_8097E280
    sw      t3, 0x024C(s0)             # 0000024C
lbl_8097E234:
    sh      $zero, 0x02FE(s0)          # 000002FE
    b       lbl_8097E280
    sw      t4, 0x024C(s0)             # 0000024C
lbl_8097E240:
    sh      v1, 0x02FE(s0)             # 000002FE
    sh      t5, 0x010E(s0)             # 0000010E
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    andi    a1, t5, 0xFFFF             # a1 = 00000000
    lbu     t7, 0x02FA(s0)             # 000002FA
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t6, 0x02F0(s0)             # 000002F0
    bne     t7, $zero, lbl_8097E278
    lui     t9, %hi(func_8097E9E4)     # t9 = 80980000
    lui     t8, %hi(func_8097E318)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097E318) # t8 = 8097E318
    b       lbl_8097E280
    sw      t8, 0x024C(s0)             # 0000024C
lbl_8097E278:
    addiu   t9, t9, %lo(func_8097E9E4) # t9 = 8097E9E4
    sw      t9, 0x024C(s0)             # 0000024C
lbl_8097E280:
    lw      $ra, 0x001C($sp)
lbl_8097E284:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8097E294:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_8097E30C
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_8097E308
    addiu   t6, $zero, 0x2021          # t6 = 00002021
    lw      t7, 0x0018($sp)
    addiu   a0, $zero, 0x000F          # a0 = 0000000F
    jal     func_800721CC
    sh      t6, 0x010E(t7)             # 0000010E
    lw      t8, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DCE80
    lhu     a1, 0x010E(t8)             # 0000010E
    lw      t0, 0x0018($sp)
    lui     t9, %hi(func_8097E318)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097E318) # t9 = 8097E318
    sw      t9, 0x024C(t0)             # 0000024C
lbl_8097E308:
    lw      $ra, 0x0014($sp)
lbl_8097E30C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097E318:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_8097E3AC
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_8097E3AC
    lw      $ra, 0x001C($sp)
    lh      t6, 0x02FE(s0)             # 000002FE
    addiu   t9, $zero, 0x0037          # t9 = 00000037
    lw      t0, 0x0024($sp)
    bne     t6, $zero, lbl_8097E394
    lui     $at, 0x0001                # $at = 00010000
    sh      $zero, 0x02FE(s0)          # 000002FE
    lh      t7, 0x02FE(s0)             # 000002FE
    sb      t7, 0x02FA(s0)             # 000002FA
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lui     t8, %hi(func_8097D9B0)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097D9B0) # t8 = 8097D9B0
    b       lbl_8097E3A8
    sw      t8, 0x024C(s0)             # 0000024C
lbl_8097E394:
    addu    $at, $at, t0
    lui     t1, %hi(func_8097E3BC)     # t1 = 80980000
    sb      t9, 0x03DC($at)            # 000003DC
    addiu   t1, t1, %lo(func_8097E3BC) # t1 = 8097E3BC
    sw      t1, 0x024C(s0)             # 0000024C
lbl_8097E3A8:
    lw      $ra, 0x001C($sp)
lbl_8097E3AC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097E3BC:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5500             # a0 = 06005500
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f0, $f4
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x5500             # a1 = 06005500
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x02DC(v1)            # 000002DC
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    lw      v1, 0x0028($sp)
    lui     t7, %hi(func_8097E43C)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097E43C) # t7 = 8097E43C
    sb      $zero, 0x02F8(v1)          # 000002F8
    sw      t7, 0x024C(v1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097E43C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lwc1    $f4, 0x0154(a2)            # 00000154
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    swc1    $f4, 0x0020($sp)
    lw      v0, 0x1C6C(a1)             # 00001C6C
    sw      a2, 0x0028($sp)
    jal     func_8008C9C0
    sw      v0, 0x001C($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lwc1    $f6, 0x0020($sp)
    lw      v0, 0x001C($sp)
    lw      a2, 0x0028($sp)
    c.le.s  $f8, $f6
    nop
    bc1fl   lbl_8097E4BC
    lwc1    $f10, 0x0020($sp)
    lbu     t6, 0x02F8(a2)             # 000002F8
    or      a0, a2, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2823          # a1 = 00002823
    bnel    t6, $zero, lbl_8097E4BC
    lwc1    $f10, 0x0020($sp)
    sw      v0, 0x001C($sp)
    jal     func_80022FD0
    sw      a2, 0x0028($sp)
    lw      a2, 0x0028($sp)
    lw      v0, 0x001C($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x02F8(a2)             # 000002F8
    lwc1    $f10, 0x0020($sp)
lbl_8097E4BC:
    lwc1    $f16, 0x02DC(a2)           # 000002DC
    lui     t3, %hi(func_8097DE8C)     # t3 = 80980000
    addiu   t3, t3, %lo(func_8097DE8C) # t3 = 8097DE8C
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_8097E53C
    lw      $ra, 0x0014($sp)
    beq     v0, $zero, lbl_8097E520
    addiu   v1, $zero, 0x0100          # v1 = 00000100
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097E4E4:
    beql    v1, t8, lbl_8097E4F8
    lbu     t9, 0x02FA(a2)             # 000002FA
    b       lbl_8097E518
    lw      v0, 0x0124(v0)             # 00000124
    lbu     t9, 0x02FA(a2)             # 000002FA
lbl_8097E4F8:
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    sw      v0, 0x0304(a2)             # 00000304
    beq     v1, t9, lbl_8097E510
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    b       lbl_8097E520
    sh      t0, 0x0158(v0)             # 00000158
lbl_8097E510:
    b       lbl_8097E520
    sh      v1, 0x0158(v0)             # 00000158
lbl_8097E518:
    bnel    v0, $zero, lbl_8097E4E4
    lh      t8, 0x0000(v0)             # 00000000
lbl_8097E520:
    lbu     t1, 0x02FA(a2)             # 000002FA
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    bnel    t1, $zero, lbl_8097E538
    sw      t3, 0x024C(a2)             # 0000024C
    sb      t2, 0x02FA(a2)             # 000002FA
    sw      t3, 0x024C(a2)             # 0000024C
lbl_8097E538:
    lw      $ra, 0x0014($sp)
lbl_8097E53C:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097E548:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f4, 0x02D4(s0)            # 000002D4
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    trunc.w.s $f6, $f4
    addiu   a1, $zero, 0xE82C          # a1 = FFFFE82C
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x02D4             # a0 = 000002D4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43FA                 # a3 = 43FA0000
    lh      v0, 0x00B8(s0)             # 000000B8
    addiu   a1, $zero, 0x708F          # a1 = 0000708F
    or      a2, $zero, $zero           # a2 = 00000000
    slti    $at, v0, 0xE890
    beq     $at, $zero, lbl_8097E5E4
    sh      v0, 0x0034(s0)             # 00000034
    jal     func_800DCE14
    lw      a0, 0x002C($sp)
    lw      t7, 0x0004(s0)             # 00000004
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    lui     t9, %hi(func_8097E5F8)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097E5F8) # t9 = 8097E5F8
    or      t8, t7, $at                # t8 = 00010000
    sw      t8, 0x0004(s0)             # 00000004
    sw      t9, 0x024C(s0)             # 0000024C
    swc1    $f8, 0x02D4(s0)            # 000002D4
lbl_8097E5E4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097E5F8:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    jal     func_800DD464
    addiu   a0, s0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_8097E75C
    lw      $ra, 0x0034($sp)
    jal     func_800D6110
    or      a0, s0, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8097E758
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    jal     func_800D6218
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    jal     func_80026D90
    nop
    lwc1    $f4, 0x0264(s1)            # 00000264
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x0038($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f10                  # $f10 = 40.00
    lwc1    $f8, 0x0268(s1)            # 00000268
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f12                  # $f12 = 20.00
    sub.s   $f16, $f8, $f10
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x003C($sp)
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f6                   # $f6 = 20.00
    lwc1    $f4, 0x026C(s1)            # 0000026C
    lui     $at, %hi(var_8097EF78)     # $at = 80980000
    lwc1    $f12, %lo(var_8097EF78)($at)
    sub.s   $f8, $f4, $f6
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0040($sp)
    lh      t6, 0x008A(s1)             # 0000008A
    lwc1    $f4, 0x003C($sp)
    lwc1    $f6, 0x0040($sp)
    mtc1    t6, $f16                   # $f16 = 0.00
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    cvt.s.w $f18, $f16
    sw      $zero, 0x0018($sp)
    addiu   a0, s0, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0010          # a2 = 00000010
    lw      a3, 0x0038($sp)
    add.s   $f2, $f0, $f18
    swc1    $f4, 0x0010($sp)
    swc1    $f6, 0x0014($sp)
    trunc.w.s $f8, $f2
    mfc1    t8, $f8
    jal     func_80025110              # ActorSpawn
    sw      t8, 0x001C($sp)
    beq     v0, $zero, lbl_8097E74C
    or      s0, v0, $zero              # s0 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    nop
    add.s   $f4, $f0, $f18
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_8097E74C:
    lui     t9, %hi(func_8097E76C)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097E76C) # t9 = 8097E76C
    sw      t9, 0x024C(s1)             # 0000024C
lbl_8097E758:
    lw      $ra, 0x0034($sp)
lbl_8097E75C:
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_8097E76C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    lwc1    $f4, 0x02D4(s0)            # 000002D4
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    trunc.w.s $f6, $f4
    addiu   a1, $zero, 0x00C8          # a1 = 000000C8
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     a1, 0x453B                 # a1 = 453B0000
    ori     a1, a1, 0x8000             # a1 = 453B8000
    addiu   a0, s0, 0x02D4             # a0 = 000002D4
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x43FA                 # a3 = 43FA0000
    lh      v0, 0x00B8(s0)             # 000000B8
    blez    v0, lbl_8097E7D8
    sh      v0, 0x0034(s0)             # 00000034
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8097E7D8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097E7EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800597C0
    addiu   a1, $zero, 0x0005          # a1 = 00000005
    beq     v0, $zero, lbl_8097E85C
    lw      a2, 0x0018($sp)
    lbu     t6, 0x02FB(a2)             # 000002FB
    bnel    t6, $zero, lbl_8097E8A0
    or      a0, a2, $zero              # a0 = 00000000
    lh      v0, 0x02EE(a2)             # 000002EE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t7, %hi(func_8097D378)     # t7 = 80980000
    bne     v0, $at, lbl_8097E844
    addiu   t7, t7, %lo(func_8097D378) # t7 = 8097D378
    b       lbl_8097E9D4
    sw      t7, 0x024C(a2)             # 0000024C
lbl_8097E844:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8097E89C
    lui     t8, %hi(func_8097DA44)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097DA44) # t8 = 8097DA44
    b       lbl_8097E9D4
    sw      t8, 0x024C(a2)             # 0000024C
lbl_8097E85C:
    lbu     t9, 0x02FB(a2)             # 000002FB
    beql    t9, $zero, lbl_8097E8A0
    or      a0, a2, $zero              # a0 = 00000000
    lh      v0, 0x02EE(a2)             # 000002EE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t0, %hi(func_8097D378)     # t0 = 80980000
    bne     v0, $at, lbl_8097E888
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    addiu   t0, t0, %lo(func_8097D378) # t0 = 8097D378
    b       lbl_8097E9D4
    sw      t0, 0x024C(a2)             # 0000024C
lbl_8097E888:
    bne     v1, v0, lbl_8097E89C
    lui     t1, %hi(func_8097DA44)     # t1 = 80980000
    addiu   t1, t1, %lo(func_8097DA44) # t1 = 8097DA44
    b       lbl_8097E9D4
    sw      t1, 0x024C(a2)             # 0000024C
lbl_8097E89C:
    or      a0, a2, $zero              # a0 = 00000000
lbl_8097E8A0:
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a2, 0x0018($sp)
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    beq     v0, $zero, lbl_8097E95C
    lw      a2, 0x0018($sp)
    lh      v0, 0x02EE(a2)             # 000002EE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v0, $at, lbl_8097E8F4
    nop
    lh      t2, 0x02FE(a2)             # 000002FE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t4, %hi(func_8097D378)     # t4 = 80980000
    bne     t2, $at, lbl_8097E8EC
    addiu   t4, t4, %lo(func_8097D378) # t4 = 8097D378
    lui     t3, %hi(func_8097D4F8)     # t3 = 80980000
    addiu   t3, t3, %lo(func_8097D4F8) # t3 = 8097D4F8
    b       lbl_8097E9D4
    sw      t3, 0x024C(a2)             # 0000024C
lbl_8097E8EC:
    b       lbl_8097E9D4
    sw      t4, 0x024C(a2)             # 0000024C
lbl_8097E8F4:
    bnel    v1, v0, lbl_8097E960
    lh      v0, 0x02EE(a2)             # 000002EE
    lh      v0, 0x02F0(a2)             # 000002F0
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lui     t5, %hi(func_8097DA44)     # t5 = 80980000
    bne     v0, $at, lbl_8097E918
    addiu   t5, t5, %lo(func_8097DA44) # t5 = 8097DA44
    sw      t5, 0x024C(a2)             # 0000024C
    lh      v0, 0x02F0(a2)             # 000002F0
lbl_8097E918:
    bne     v1, v0, lbl_8097E930
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t6, %hi(func_8097E9E4)     # t6 = 80980000
    addiu   t6, t6, %lo(func_8097E9E4) # t6 = 8097E9E4
    sw      t6, 0x024C(a2)             # 0000024C
    lh      v0, 0x02F0(a2)             # 000002F0
lbl_8097E930:
    bne     v0, $at, lbl_8097E9D4
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sb      t7, 0x02F9(a2)             # 000002F9
    sw      a2, 0x0018($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x4807          # a0 = 00004807
    lw      a2, 0x0018($sp)
    lui     t8, %hi(func_8097E158)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097E158) # t8 = 8097E158
    b       lbl_8097E9D4
    sw      t8, 0x024C(a2)             # 0000024C
lbl_8097E95C:
    lh      v0, 0x02EE(a2)             # 000002EE
lbl_8097E960:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    v0, $at, lbl_8097E978
    lh      t9, 0x008A(a2)             # 0000008A
    bnel    v1, v0, lbl_8097E9CC
    or      a0, a2, $zero              # a0 = 00000000
    lh      t9, 0x008A(a2)             # 0000008A
lbl_8097E978:
    lh      t0, 0x00B6(a2)             # 000000B6
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f4                   # $f4 = 120.00
    subu    v0, t9, t0
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_8097E9A4
    subu    v1, $zero, v0
    sll     v1, v0, 16
    b       lbl_8097E9AC
    sra     v1, v1, 16
lbl_8097E9A4:
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_8097E9AC:
    lwc1    $f6, 0x0090(a2)            # 00000090
    slti    $at, v1, 0x4300
    c.lt.s  $f4, $f6
    nop
    bc1tl   lbl_8097E9D8
    lw      $ra, 0x0014($sp)
    beq     $at, $zero, lbl_8097E9D4
    or      a0, a2, $zero              # a0 = 00000000
lbl_8097E9CC:
    jal     func_80022A90
    lw      a1, 0x001C($sp)
lbl_8097E9D4:
    lw      $ra, 0x0014($sp)
lbl_8097E9D8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097E9E4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x5C30             # a0 = 06005C30
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x5C30             # a1 = 06005C30
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_8097EA78)     # t0 = 80980000
    addiu   t0, t0, %lo(func_8097EA78) # t0 = 8097EA78
    sw      t0, 0x024C(t1)             # 0000024C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097EA78:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0024($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    lh      t6, 0x02F0(s0)             # 000002F0
    bnel    t6, v0, lbl_8097EAF8
    lw      $ra, 0x001C($sp)
    jal     func_800D6110
    lw      a0, 0x0024($sp)
    beql    v0, $zero, lbl_8097EAF8
    lw      $ra, 0x001C($sp)
    jal     func_800D6218
    lw      a0, 0x0024($sp)
    lh      v0, 0x02EE(s0)             # 000002EE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t7, %hi(func_8097D2E4)     # t7 = 80980000
    bne     v0, $at, lbl_8097EAE0
    addiu   t7, t7, %lo(func_8097D2E4) # t7 = 8097D2E4
    sw      t7, 0x024C(s0)             # 0000024C
    lh      v0, 0x02EE(s0)             # 000002EE
lbl_8097EAE0:
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8097EAF4
    lui     t8, %hi(func_8097D9B0)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097D9B0) # t8 = 8097D9B0
    sw      t8, 0x024C(s0)             # 0000024C
lbl_8097EAF4:
    lw      $ra, 0x001C($sp)
lbl_8097EAF8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097EB08:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x02D0(s0)             # 000002D0
    lh      v0, 0x02EE(s0)             # 000002EE
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_8097EB3C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_8097EB80
lbl_8097EB3C:
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f0                   # $f0 = 70.00
    or      a0, s0, $zero              # a0 = 00000000
    mfc1    a1, $f0
    jal     func_80020F04
    swc1    $f0, 0x003C(s0)            # 0000003C
    lw      t7, 0x0038(s0)             # 00000038
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t7, 0x0010($sp)
    lw      t6, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0250             # a2 = 00000250
    addiu   a3, s0, 0x025C             # a3 = 0000025C
    sw      t6, 0x0014($sp)
    lw      t7, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t7, 0x0018($sp)
lbl_8097EB80:
    lh      t8, 0x02EC(s0)             # 000002EC
    or      v1, $zero, $zero           # v1 = 00000000
    or      v0, s0, $zero              # v0 = 00000000
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x02EC(s0)             # 000002EC
    addiu   a1, $zero, 0x000A          # a1 = 0000000A
lbl_8097EB98:
    lh      a0, 0x02E2(v0)             # 000002E2
    addiu   v1, v1, 0x0002             # v1 = 00000002
    beq     a0, $zero, lbl_8097EBAC
    addiu   t0, a0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x02E2(v0)             # 000002E2
lbl_8097EBAC:
    bne     v1, a1, lbl_8097EB98
    addiu   v0, v0, 0x0002             # v0 = 00000002
    lw      t9, 0x024C(s0)             # 0000024C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lh      v0, 0x02EE(s0)             # 000002EE
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v0, $at, lbl_8097EC40
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     v0, $at, lbl_8097EC40
    lw      a0, 0x004C($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    addiu   t1, $zero, 0x001D          # t1 = 0000001D
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t1, 0x0014($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    addiu   a2, s0, 0x0388             # a2 = 00000388
    or      a1, a2, $zero              # a1 = 00000388
    sw      a2, 0x0034($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
lbl_8097EC40:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8097EC54:
    sw      a0, 0x0000($sp)
    lw      a0, 0x0014($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    lh      v0, 0x02EE(a0)             # 000002EE
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_8097ECC0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beq     v0, $at, lbl_8097ECC0
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     a1, $at, lbl_8097EC94
    lw      v0, 0x0010($sp)
    lh      t6, 0x0000(v0)             # 00000000
    lh      t7, 0x025E(a0)             # 0000025E
    addu    t8, t6, t7
    sh      t8, 0x0000(v0)             # 00000000
lbl_8097EC94:
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_8097ECC0
    lw      v0, 0x0010($sp)
    lh      t9, 0x0000(v0)             # 00000000
    lh      t0, 0x0252(a0)             # 00000252
    lh      t2, 0x0004(v0)             # 00000004
    addu    t1, t9, t0
    sh      t1, 0x0000(v0)             # 00000000
    lh      t3, 0x0254(a0)             # 00000254
    addu    t4, t2, t3
    sh      t4, 0x0004(v0)             # 00000004
lbl_8097ECC0:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_8097ECCC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x0010         # $at = 00000010
    bne     a1, $at, lbl_8097ECF4
    lw      a0, 0x0028($sp)
    jal     func_800AA740
    addiu   a0, a0, 0x0320             # a0 = 00000320
lbl_8097ECF4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097ED04:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    lw      a2, 0x0000(a1)             # 00000000
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(a2)             # 000002C0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a1)             # 00000000
    sw      a2, 0x0024($sp)
    jal     func_800AB900
    sw      v1, 0x001C($sp)
    lw      a3, 0x001C($sp)
    lw      a2, 0x0024($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a2)             # 000002C0
    lui     t0, 0x0600                 # t0 = 06000000
    addiu   t0, t0, 0x2C10             # t0 = 06002C10
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a2)             # 000002C0
    sw      t0, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8097ED78:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s2, 0x0028($sp)
    sw      s1, 0x0024($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0020($sp)
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lui     t6, %hi(func_8097ECCC)     # t6 = 80980000
    addiu   t6, t6, %lo(func_8097ECCC) # t6 = 8097ECCC
    lw      a1, 0x0140(s2)             # 00000140
    lw      a2, 0x015C(s2)             # 0000015C
    lui     a3, %hi(func_8097EC54)     # a3 = 80980000
    addiu   a3, a3, %lo(func_8097EC54) # a3 = 8097EC54
    sw      s2, 0x0014($sp)
    sw      t6, 0x0010($sp)
    jal     func_8008993C
    or      a0, s1, $zero              # a0 = 00000000
    lh      t7, 0x02EE(s2)             # 000002EE
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t8, 0x8012                 # t8 = 80120000
    bnel    t7, $at, lbl_8097EEE8
    lw      $ra, 0x002C($sp)
    lhu     t8, -0x4B2A(t8)            # 8011B4D6
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    andi    t9, t8, 0x0080             # t9 = 00000000
    beq     t9, $zero, lbl_8097EEE4
    addu    a0, s1, $at
    jal     func_80081628              # ObjectIndex
    addiu   a1, $zero, 0x0015          # a1 = 00000015
    bltz    v0, lbl_8097EEE4
    sw      v0, 0x0034($sp)
    jal     func_800AA764
    addiu   a0, s2, 0x0320             # a0 = 00000320
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, %hi(var_8097EF7C)     # $at = 80980000
    lwc1    $f12, %lo(var_8097EF7C)($at)
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, %hi(var_8097EF80)     # $at = 80980000
    lwc1    $f12, %lo(var_8097EF80)($at)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    jal     func_800AB900
    lw      a0, 0x0000(s1)             # 00000000
    lui     t0, 0xDB06                 # t0 = DB060000
    ori     t0, t0, 0x0018             # t0 = DB060018
    addiu   t1, $zero, 0x0044          # t1 = 00000044
    lui     t2, 0x0001                 # t2 = 00010000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lw      t4, 0x0034($sp)
    lui     t3, 0xDB06                 # t3 = DB060000
    multu   t4, t1
    mflo    t5
    addu    t6, s1, t5
    addu    t7, t6, t2
    lw      t8, 0x17B4(t7)             # 000017B4
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    ori     t3, t3, 0x0034             # t3 = DB060034
    addiu   t4, v0, 0xFE40             # t4 = FFFFFE40
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t7, 0x0603                 # t7 = 06030000
    addiu   t7, t7, 0xB060             # t7 = 0602B060
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s0)             # 000002C0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t0, 0x0000(v1)             # 00000000
    lb      t9, 0x001E(s2)             # 0000001E
    multu   t9, t1
    mflo    t3
    addu    t4, s1, t3
    addu    t5, t4, t2
    lw      t6, 0x17B4(t5)             # 000017BC
    sw      t6, 0x0004(v1)             # 00000004
lbl_8097EEE4:
    lw      $ra, 0x002C($sp)
lbl_8097EEE8:
    lw      s0, 0x0020($sp)
    lw      s1, 0x0024($sp)
    lw      s2, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    nop

.section .data

var_8097EF00: .word 0x00B30400, 0x00000009, 0x00970000, 0x000003D4
.word func_8097D000
.word func_8097D280
.word func_8097EB08
.word func_8097ED78
var_8097EF20: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x00210028, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8097EF50: .word 0x446CC000
var_8097EF54: .word 0x44956000
var_8097EF58: .word 0x4527A000
var_8097EF5C: .word 0x44918000
var_8097EF60: .word 0x448F2000
var_8097EF64: .word 0x453C6000
var_8097EF68: .word 0x440EC000
var_8097EF6C: .word 0xC4B9E000
var_8097EF70: .word 0x43D08000
var_8097EF74: .word 0xC486E000
var_8097EF78: .word 0x45DAC000
var_8097EF7C: .word 0xC40E8000
var_8097EF80: .word 0x3F9C61AA, 0x00000000, 0x00000000, 0x00000000

