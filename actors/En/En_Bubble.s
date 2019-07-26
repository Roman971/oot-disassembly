.section .text
func_808B6F50:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3F80                 # a1 = 3F800000
    ori     t7, t6, 0x0001             # t7 = 00000001
    jal     func_80020F88
    sw      t7, 0x0004(s0)             # 00000004
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f0                   # $f0 = 16.00
    lwc1    $f2, 0x002C($sp)
    lui     $at, %hi(var_808B8200)     # $at = 808C0000
    swc1    $f0, 0x00BC(s0)            # 000000BC
    swc1    $f0, 0x0200(s0)            # 00000200
    lwc1    $f4, %lo(var_808B8200)($at)
    swc1    $f2, 0x0210(s0)            # 00000210
    swc1    $f2, 0x0214(s0)            # 00000214
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0204(s0)            # 00000204
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0024($sp)
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0020($sp)
    lwc1    $f12, 0x0024($sp)
    lwc1    $f14, 0x0020($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mul.s   $f6, $f12, $f12
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f8, $f14, $f14
    swc1    $f16, 0x0208(s0)           # 00000208
    swc1    $f16, 0x020C(s0)           # 0000020C
    mul.s   $f18, $f0, $f0
    add.s   $f10, $f6, $f8
    add.s   $f2, $f10, $f18
    div.s   $f8, $f0, $f2
    div.s   $f4, $f12, $f2
    swc1    $f8, 0x01F4(s0)            # 000001F4
    div.s   $f6, $f14, $f2
    swc1    $f4, 0x01EC(s0)            # 000001EC
    swc1    $f6, 0x01F0(s0)            # 000001F0
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808B700C:
    lw      v1, 0x015C(a0)             # 0000015C
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t6, 0x0000(v1)             # 00000000
    sb      $zero, 0x0004(v1)          # 00000004
    sb      t7, 0x0005(v1)             # 00000005
    sb      t8, 0x0015(v1)             # 00000015
    addiu   v0, $zero, 0x0006          # v0 = 00000006
    swc1    $f4, 0x0060(a0)            # 00000060
    jr      $ra
    nop


func_808B7040:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_808B6F50
    lui     a1, 0xBF80                 # a1 = BF800000
    addiu   v0, $zero, 0x000C          # v0 = 0000000C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7064:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    lw      t6, 0x0020($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    addu    t9, t9, a2
    lw      t7, 0x015C(t6)             # 0000015C
    or      a0, a2, $zero              # a0 = 00000000
    lbu     a1, 0x0005(t7)             # 00000005
    sw      a2, 0x0024($sp)
    lw      t9, 0x1D58(t9)             # 00011D58
    subu    a1, $zero, a1
    jalr    $ra, t9
    nop
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f0                   # $f0 = 6.00
    lw      a1, 0x0020($sp)
    lw      a0, 0x0024($sp)
    mfc1    a2, $f0
    lh      a3, 0x008A(a1)             # 0000008A
    jal     func_80022F48
    swc1    $f0, 0x0010($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B70D0:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sdc1    $f20, 0x0030($sp)
    lui     $at, %hi(var_808B8204)     # $at = 808C0000
    lwc1    $f20, %lo(var_808B8204)($at)
    lui     $at, 0x447A                # $at = 447A0000
    sdc1    $f22, 0x0038($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    mtc1    $at, $f22                  # $f22 = 1000.00
    or      s6, a0, $zero              # s6 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    addiu   s8, $sp, 0x0090            # s8 = FFFFFFF0
    sw      $ra, 0x0064($sp)
    sw      s5, 0x0054($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    lui     t6, %hi(var_808B81E4)      # t6 = 808C0000
    addiu   t6, t6, %lo(var_808B81E4)  # t6 = 808B81E4
    lw      t8, 0x0000(t6)             # 808B81E4
    mtc1    $zero, $f4                 # $f4 = 0.00
    mfc1    a2, $f20
    sw      t8, 0x0000(s8)             # FFFFFFF0
    lw      t7, 0x0004(t6)             # 808B81E8
    mfc1    a3, $f22
    addiu   a0, s6, 0x0210             # a0 = 00000210
    sw      t7, 0x0004(s8)             # FFFFFFF4
    lw      t8, 0x0008(t6)             # 808B81EC
    lui     a1, 0x4080                 # a1 = 40800000
    sw      t8, 0x0008(s8)             # FFFFFFF8
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    mfc1    a2, $f20
    mfc1    a3, $f22
    addiu   a0, s6, 0x0214             # a0 = 00000214
    lui     a1, 0x4080                 # a1 = 40800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    mfc1    a2, $f20
    mfc1    a3, $f22
    addiu   a0, s6, 0x0200             # a0 = 00000200
    lui     a1, 0x4258                 # a1 = 42580000
    jal     func_80064178
    swc1    $f8, 0x0010($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    lui     a1, 0x3E4C                 # a1 = 3E4C0000
    mfc1    a2, $f20
    mfc1    a3, $f22
    ori     a1, a1, 0xCCCD             # a1 = 3E4CCCCD
    addiu   a0, s6, 0x0204             # a0 = 00000204
    jal     func_80064178
    swc1    $f10, 0x0010($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f18                  # $f18 = 1.00
    lwc1    $f16, 0x0214(s6)           # 00000214
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f6                   # $f6 = 16.00
    add.s   $f4, $f16, $f18
    lh      v0, 0x01FA(s6)             # 000001FA
    lui     $at, 0x3F00                # $at = 3F000000
    or      s0, $zero, $zero           # s0 = 00000000
    mul.s   $f8, $f4, $f6
    addiu   s5, $zero, 0x0014          # s5 = 00000014
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    bne     v0, $zero, lbl_808B71F4
    swc1    $f8, 0x00BC(s6)            # 000000BC
    b       lbl_808B71FC
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808B71F4:
    sh      t9, 0x01FA(s6)             # 000001FA
    lh      v1, 0x01FA(s6)             # 000001FA
lbl_808B71FC:
    beql    v1, $zero, lbl_808B7210
    lwc1    $f10, 0x0024(s6)           # 00000024
    b       lbl_808B72F4
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
    lwc1    $f10, 0x0024(s6)           # 00000024
lbl_808B7210:
    mtc1    $at, $f22                  # $f22 = 0.50
    lui     $at, 0x40E0                # $at = 40E00000
    swc1    $f10, 0x0078($sp)
    lwc1    $f18, 0x00BC(s6)           # 000000BC
    lwc1    $f16, 0x0028(s6)           # 00000028
    lui     s4, %hi(var_808B81F4)      # s4 = 808C0000
    lui     s3, %hi(var_808B81F0)      # s3 = 808C0000
    add.s   $f4, $f16, $f18
    mtc1    $at, $f20                  # $f20 = 7.00
    addiu   s3, s3, %lo(var_808B81F0)  # s3 = 808B81F0
    addiu   s4, s4, %lo(var_808B81F4)  # s4 = 808B81F4
    swc1    $f4, 0x007C($sp)
    lwc1    $f6, 0x002C(s6)            # 0000002C
    addiu   s2, $sp, 0x0084            # s2 = FFFFFFE4
    addiu   s1, $sp, 0x0078            # s1 = FFFFFFD8
    swc1    $f6, 0x0080($sp)
lbl_808B7250:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    sub.s   $f8, $f0, $f22
    mul.s   $f10, $f8, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f10, 0x0084($sp)
    mul.s   $f16, $f0, $f20
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f16, 0x0088($sp)
    sub.s   $f18, $f0, $f22
    addiu   a0, $zero, 0x0064          # a0 = 00000064
    addiu   a1, $zero, 0x0032          # a1 = 00000032
    mul.s   $f4, $f18, $f20
    jal     func_80063BF0
    swc1    $f4, 0x008C($sp)
    addiu   t0, $zero, 0x0019          # t0 = 00000019
    sw      t0, 0x001C($sp)
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = FFFFFFD8
    or      a2, s2, $zero              # a2 = FFFFFFE4
    or      a3, s8, $zero              # a3 = FFFFFFF0
    sw      s3, 0x0010($sp)
    sw      s4, 0x0014($sp)
    sw      v0, 0x0018($sp)
    jal     func_8001D18C
    sw      $zero, 0x0020($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s5, lbl_808B7250
    nop
    or      a0, s7, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, s6, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x0050          # a3 = 00000050
    lw      t1, 0x0004(s6)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   a0, $zero, 0x005A          # a0 = 0000005A
    and     t2, t1, $at
    sw      t2, 0x0004(s6)             # 00000004
    jal     func_80063BF0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
lbl_808B72F4:
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
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_808B732C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x01FA(a0)             # 000001FA
    bne     v0, $zero, lbl_808B7348
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_808B7350
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808B7348:
    sh      t6, 0x01FA(a0)             # 000001FA
    lh      v1, 0x01FA(a0)             # 000001FA
lbl_808B7350:
    beq     v1, $zero, lbl_808B7360
    nop
    b       lbl_808B7368
    addiu   v0, $zero, 0xFFFF          # v0 = FFFFFFFF
lbl_808B7360:
    jal     func_808B7040
    nop
lbl_808B7368:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7378:
    lui     $at, %hi(var_808B8208)     # $at = 808C0000
    lwc1    $f0, %lo(var_808B8208)($at)
    lwc1    $f4, 0x0210(a0)            # 00000210
    lwc1    $f8, 0x0214(a0)            # 00000214
    lh      v0, 0x01FA(a0)             # 000001FA
    add.s   $f6, $f4, $f0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    add.s   $f10, $f8, $f0
    swc1    $f6, 0x0210(a0)            # 00000210
    bne     v0, $zero, lbl_808B73AC
    swc1    $f10, 0x0214(a0)           # 00000214
    b       lbl_808B73B4
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808B73AC:
    sh      t6, 0x01FA(a0)             # 000001FA
    lh      v1, 0x01FA(a0)             # 000001FA
lbl_808B73B4:
    beq     v1, $zero, lbl_808B73C4
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808B73C4:
    jr      $ra
    nop


func_808B73CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_800A4F98
    sw      a2, 0x0020($sp)
    lw      a2, 0x0020($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lwc1    $f2, 0x0000(a2)            # 00000000
    lwc1    $f12, 0x0004(a2)           # 00000004
    lwc1    $f14, 0x0008(a2)           # 00000008
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f14
    add.s   $f0, $f8, $f10
    sqrt.s  $f0, $f0
    c.eq.s  $f0, $f16
    nop
    bc1t    lbl_808B7438
    nop
    div.s   $f18, $f2, $f0
    div.s   $f4, $f12, $f0
    swc1    $f18, 0x0000(a2)           # 00000000
    div.s   $f6, $f14, $f0
    swc1    $f4, 0x0004(a2)            # 00000004
    b       lbl_808B7444
    swc1    $f6, 0x0008(a2)            # 00000008
lbl_808B7438:
    swc1    $f16, 0x0008(a2)           # 00000008
    swc1    $f16, 0x0004(a2)           # 00000004
    swc1    $f16, 0x0000(a2)           # 00000000
lbl_808B7444:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7454:
    mtc1    $zero, $f18                # $f18 = 0.00
    nop
    lwc1    $f2, 0x0000(a0)            # 00000000
    lwc1    $f12, 0x0004(a0)           # 00000004
    lwc1    $f14, 0x0008(a0)           # 00000008
    mul.s   $f4, $f2, $f2
    nop
    mul.s   $f6, $f12, $f12
    add.s   $f8, $f4, $f6
    mul.s   $f10, $f14, $f14
    add.s   $f4, $f8, $f10
    cvt.d.s $f0, $f4
    sqrt.d  $f0, $f0
    cvt.s.d $f16, $f0
    c.eq.s  $f18, $f16
    nop
    bc1t    lbl_808B74B8
    nop
    div.s   $f6, $f2, $f16
    div.s   $f8, $f12, $f16
    swc1    $f6, 0x0000(a0)            # 00000000
    div.s   $f10, $f14, $f16
    swc1    $f8, 0x0004(a0)            # 00000004
    jr      $ra
    swc1    $f10, 0x0008(a0)           # 00000008
lbl_808B74B8:
    swc1    $f18, 0x0008(a0)           # 00000008
    swc1    $f18, 0x0004(a0)           # 00000004
    swc1    $f18, 0x0000(a0)           # 00000000
    jr      $ra
    nop


func_808B74CC:
    addiu   $sp, $sp, 0xFF68           # $sp -= 0x98
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sdc1    $f20, 0x0030($sp)
    sw      a1, 0x009C($sp)
    lw      t6, 0x015C(s0)             # 0000015C
    lbu     t7, 0x0056(t6)             # 00000056
    andi    t8, t7, 0x0002             # t8 = 00000000
    beq     t8, $zero, lbl_808B7560
    nop
    lw      v0, 0x0148(s0)             # 00000148
    addiu   a0, s0, 0x0234             # a0 = 00000234
    lw      t0, 0x005C(v0)             # 0000005C
    sw      t0, 0x0000(a0)             # 00000234
    lw      t9, 0x0060(v0)             # 00000060
    sw      t9, 0x0004(a0)             # 00000238
    lw      t0, 0x0064(v0)             # 00000064
    jal     func_808B7454
    sw      t0, 0x0008(a0)             # 0000023C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    lwc1    $f6, 0x0234(s0)            # 00000234
    lwc1    $f4, 0x0240(s0)            # 00000240
    lwc1    $f18, 0x0238(s0)           # 00000238
    mul.s   $f8, $f6, $f2
    lwc1    $f16, 0x0244(s0)           # 00000244
    mul.s   $f6, $f18, $f2
    add.s   $f10, $f4, $f8
    lwc1    $f8, 0x0248(s0)            # 00000248
    add.s   $f4, $f16, $f6
    swc1    $f10, 0x0240(s0)           # 00000240
    lwc1    $f10, 0x023C(s0)           # 0000023C
    swc1    $f4, 0x0244(s0)            # 00000244
    mul.s   $f18, $f10, $f2
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0248(s0)           # 00000248
lbl_808B7560:
    lui     $at, %hi(var_808B820C)     # $at = 808C0000
    lwc1    $f4, %lo(var_808B820C)($at)
    lwc1    $f6, 0x024C(s0)            # 0000024C
    lwc1    $f0, 0x0070(s0)            # 00000070
    sub.s   $f10, $f6, $f4
    swc1    $f10, 0x024C(s0)           # 0000024C
    lwc1    $f8, 0x024C(s0)            # 0000024C
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_808B7594
    lwc1    $f18, 0x0228(s0)           # 00000228
    swc1    $f0, 0x024C(s0)            # 0000024C
    lwc1    $f18, 0x0228(s0)           # 00000228
lbl_808B7594:
    lwc1    $f16, 0x0240(s0)           # 00000240
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFBC
    add.s   $f6, $f18, $f16
    swc1    $f6, 0x0054($sp)
    lwc1    $f10, 0x0244(s0)           # 00000244
    lwc1    $f4, 0x022C(s0)            # 0000022C
    lwc1    $f18, 0x024C(s0)           # 0000024C
    add.s   $f8, $f4, $f10
    add.s   $f16, $f8, $f18
    swc1    $f16, 0x0058($sp)
    lwc1    $f4, 0x0248(s0)            # 00000248
    lwc1    $f6, 0x0230(s0)            # 00000230
    add.s   $f10, $f6, $f4
    jal     func_808B7454
    swc1    $f10, 0x005C($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    addiu   a1, $sp, 0x0078            # a1 = FFFFFFE0
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFD4
    swc1    $f8, 0x0078($sp)
    lwc1    $f16, 0x00BC(s0)           # 000000BC
    lwc1    $f18, 0x0028(s0)           # 00000028
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f0                   # $f0 = 24.00
    add.s   $f6, $f18, $f16
    addiu   t3, $sp, 0x0094            # t3 = FFFFFFFC
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    swc1    $f6, 0x007C($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t7, $sp, 0x004C            # t7 = FFFFFFB4
    swc1    $f4, 0x0080($sp)
    lw      t2, 0x0000(a1)             # FFFFFFE0
    lw      t1, 0x0004(a1)             # FFFFFFE4
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFEC
    sw      t2, 0x0000(a2)             # FFFFFFD4
    lw      t2, 0x0008(a1)             # FFFFFFE8
    sw      t1, 0x0004(a2)             # FFFFFFD8
    sw      t2, 0x0008(a2)             # FFFFFFDC
    lwc1    $f8, 0x0054($sp)
    lwc1    $f10, 0x006C($sp)
    lwc1    $f4, 0x0058($sp)
    mul.s   $f18, $f8, $f0
    lwc1    $f6, 0x0070($sp)
    lw      a0, 0x009C($sp)
    mul.s   $f8, $f4, $f0
    sw      t7, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    add.s   $f16, $f10, $f18
    lwc1    $f18, 0x0074($sp)
    sw      t4, 0x0014($sp)
    add.s   $f10, $f6, $f8
    swc1    $f16, 0x006C($sp)
    lwc1    $f16, 0x005C($sp)
    sw      t3, 0x0010($sp)
    swc1    $f10, 0x0070($sp)
    mul.s   $f4, $f16, $f0
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    add.s   $f6, $f18, $f4
    jal     func_800308B4
    swc1    $f6, 0x0074($sp)
    beq     v0, $zero, lbl_808B77DC
    lw      t8, 0x0094($sp)
    lh      t9, 0x0008(t8)             # 00000008
    lui     $at, %hi(var_808B8210)     # $at = 808C0000
    lwc1    $f0, %lo(var_808B8210)($at)
    mtc1    t9, $f8                    # $f8 = 0.00
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFBC
    or      a2, a0, $zero              # a2 = FFFFFFBC
    cvt.s.w $f10, $f8
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFC8
    mul.s   $f16, $f10, $f0
    swc1    $f16, 0x0060($sp)
    lh      t0, 0x000A(t8)             # 0000000A
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f6, $f4, $f0
    swc1    $f6, 0x0064($sp)
    lh      t1, 0x000C(t8)             # 0000000C
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    mul.s   $f16, $f10, $f0
    jal     func_808B73CC
    swc1    $f16, 0x0068($sp)
    addiu   t2, $sp, 0x0054            # t2 = FFFFFFBC
    lw      t4, 0x0000(t2)             # FFFFFFBC
    lbu     v0, 0x0218(s0)             # 00000218
    sw      t4, 0x021C(s0)             # 0000021C
    lw      t3, 0x0004(t2)             # FFFFFFC0
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sw      t3, 0x0220(s0)             # 00000220
    lw      t4, 0x0008(t2)             # FFFFFFC4
    sb      v0, 0x0218(s0)             # 00000218
    sw      t4, 0x0224(s0)             # 00000224
    jal     func_800CDCCC              # Rand.Next() float
    sb      v0, 0x004B($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lbu     v0, 0x004B($sp)
    mul.s   $f4, $f0, $f18
    trunc.w.s $f6, $f4
    mfc1    t6, $f6
    nop
    sll     t7, t6, 16
    sra     t9, t7, 16
    slt     $at, t9, v0
    beql    $at, $zero, lbl_808B775C
    lbu     t0, 0x0218(s0)             # 00000218
    sb      $zero, 0x0218(s0)          # 00000218
    lbu     t0, 0x0218(s0)             # 00000218
lbl_808B775C:
    lui     $at, 0x4040                # $at = 40400000
    bnel    t0, $zero, lbl_808B7778
    mtc1    $at, $f0                   # $f0 = 3.00
    lui     $at, %hi(var_808B8214)     # $at = 808C0000
    b       lbl_808B777C
    lwc1    $f0, %lo(var_808B8214)($at)
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_808B7778:
    nop
lbl_808B777C:
    lwc1    $f8, 0x021C(s0)            # 0000021C
    lwc1    $f16, 0x0220(s0)           # 00000220
    lwc1    $f4, 0x0224(s0)            # 00000224
    mul.s   $f10, $f8, $f0
    mtc1    $zero, $f20                # $f20 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f18, $f16, $f0
    addiu   a1, $zero, 0x3948          # a1 = 00003948
    swc1    $f20, 0x0248(s0)           # 00000248
    mul.s   $f6, $f4, $f0
    swc1    $f10, 0x0228(s0)           # 00000228
    swc1    $f20, 0x0244(s0)           # 00000244
    swc1    $f20, 0x0240(s0)           # 00000240
    swc1    $f18, 0x022C(s0)           # 0000022C
    swc1    $f20, 0x024C(s0)           # 0000024C
    jal     func_80022FD0
    swc1    $f6, 0x0230(s0)            # 00000230
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f8                   # $f8 = 128.00
    lui     $at, %hi(var_808B8218)     # $at = 808C0000
    swc1    $f8, 0x0200(s0)            # 00000200
    lwc1    $f10, %lo(var_808B8218)($at)
    b       lbl_808B7904
    swc1    $f10, 0x0204(s0)           # 00000204
lbl_808B77DC:
    lhu     t8, 0x0088(s0)             # 00000088
    lwc1    $f16, 0x0058($sp)
    andi    t1, t8, 0x0020             # t1 = 00000000
    beql    t1, $zero, lbl_808B7908
    lwc1    $f18, 0x0228(s0)           # 00000228
    mtc1    $zero, $f20                # $f20 = 0.00
    addiu   a0, $sp, 0x0054            # a0 = FFFFFFBC
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f16, $f20
    or      a2, a0, $zero              # a2 = FFFFFFBC
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFC8
    bc1fl   lbl_808B7908
    lwc1    $f18, 0x0228(s0)           # 00000228
    mtc1    $at, $f18                  # $f18 = 1.00
    swc1    $f20, 0x0068($sp)
    swc1    $f20, 0x0060($sp)
    jal     func_808B73CC
    swc1    $f18, 0x0064($sp)
    addiu   t2, $sp, 0x0054            # t2 = FFFFFFBC
    lw      t4, 0x0000(t2)             # FFFFFFBC
    lbu     v0, 0x0218(s0)             # 00000218
    sw      t4, 0x021C(s0)             # 0000021C
    lw      t3, 0x0004(t2)             # FFFFFFC0
    addiu   v0, v0, 0x0001             # v0 = 00000001
    sw      t3, 0x0220(s0)             # 00000220
    lw      t4, 0x0008(t2)             # FFFFFFC4
    sb      v0, 0x0218(s0)             # 00000218
    sw      t4, 0x0224(s0)             # 00000224
    jal     func_800CDCCC              # Rand.Next() float
    sb      v0, 0x004B($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lbu     v0, 0x004B($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t6, $f8
    nop
    sll     t7, t6, 16
    sra     t9, t7, 16
    slt     $at, t9, v0
    beql    $at, $zero, lbl_808B788C
    lbu     t0, 0x0218(s0)             # 00000218
    sb      $zero, 0x0218(s0)          # 00000218
    lbu     t0, 0x0218(s0)             # 00000218
lbl_808B788C:
    lui     $at, 0x4040                # $at = 40400000
    bnel    t0, $zero, lbl_808B78A8
    mtc1    $at, $f0                   # $f0 = 3.00
    lui     $at, %hi(var_808B821C)     # $at = 808C0000
    b       lbl_808B78AC
    lwc1    $f0, %lo(var_808B821C)($at)
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_808B78A8:
    nop
lbl_808B78AC:
    lwc1    $f10, 0x021C(s0)           # 0000021C
    lwc1    $f18, 0x0220(s0)           # 00000220
    lwc1    $f6, 0x0224(s0)            # 00000224
    mul.s   $f16, $f10, $f0
    swc1    $f20, 0x0248(s0)           # 00000248
    swc1    $f20, 0x0244(s0)           # 00000244
    mul.s   $f4, $f18, $f0
    swc1    $f20, 0x0240(s0)           # 00000240
    swc1    $f20, 0x024C(s0)           # 0000024C
    mul.s   $f8, $f6, $f0
    swc1    $f16, 0x0228(s0)           # 00000228
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3948          # a1 = 00003948
    swc1    $f4, 0x022C(s0)            # 0000022C
    jal     func_80022FD0
    swc1    $f8, 0x0230(s0)            # 00000230
    lui     $at, 0x4300                # $at = 43000000
    mtc1    $at, $f10                  # $f10 = 128.00
    lui     $at, %hi(var_808B8220)     # $at = 808C0000
    swc1    $f10, 0x0200(s0)           # 00000200
    lwc1    $f16, %lo(var_808B8220)($at)
    swc1    $f16, 0x0204(s0)           # 00000204
lbl_808B7904:
    lwc1    $f18, 0x0228(s0)           # 00000228
lbl_808B7908:
    lwc1    $f4, 0x0240(s0)            # 00000240
    lwc1    $f8, 0x022C(s0)            # 0000022C
    lwc1    $f10, 0x0244(s0)           # 00000244
    add.s   $f6, $f18, $f4
    lwc1    $f18, 0x024C(s0)           # 0000024C
    mtc1    $zero, $f20                # $f20 = 0.00
    add.s   $f16, $f8, $f10
    swc1    $f6, 0x005C(s0)            # 0000005C
    lwc1    $f6, 0x0230(s0)            # 00000230
    lwc1    $f8, 0x0248(s0)            # 00000248
    add.s   $f4, $f16, $f18
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    add.s   $f10, $f6, $f8
    mfc1    a1, $f20
    swc1    $f4, 0x0060(s0)            # 00000060
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    swc1    $f10, 0x0064(s0)           # 00000064
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    jal     func_80064280
    addiu   a0, s0, 0x0240             # a0 = 00000240
    mfc1    a1, $f20
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    jal     func_80064280
    addiu   a0, s0, 0x0244             # a0 = 00000244
    mfc1    a1, $f20
    lui     a2, 0x3E99                 # a2 = 3E990000
    lui     a3, 0x3DCC                 # a3 = 3DCC0000
    ori     a3, a3, 0xCCCD             # a3 = 3DCCCCCD
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    jal     func_80064280
    addiu   a0, s0, 0x0248             # a0 = 00000248
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0030($sp)
    lw      s0, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0098           # $sp += 0x98


func_808B79A8:
    lbu     v0, 0x0151(a0)             # 00000151
    andi    t6, v0, 0x0002             # t6 = 00000000
    sltu    t7, $zero, t6
    bnel    t7, $zero, lbl_808B79C8
    lw      t9, 0x015C(a0)             # 0000015C
    jr      $ra
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808B79C4:
    lw      t9, 0x015C(a0)             # 0000015C
lbl_808B79C8:
    andi    t8, v0, 0xFFFD             # t8 = 00000000
    sb      t8, 0x0151(a0)             # 00000151
    lbu     t0, 0x0056(t9)             # 00000056
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_808B7A3C
    sh      t2, 0x01F8(a0)             # 000001F8
    lw      v1, 0x0148(a0)             # 00000148
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lwc1    $f4, 0x005C(v1)            # 0000005C
    lui     $at, 0x4300                # $at = 43000000
    or      v0, $zero, $zero           # v0 = 00000000
    div.s   $f6, $f4, $f0
    mtc1    $at, $f4                   # $f4 = 128.00
    lui     $at, %hi(var_808B8224)     # $at = 808C0000
    swc1    $f6, 0x01E0(a0)            # 000001E0
    lwc1    $f8, 0x0060(v1)            # 00000060
    div.s   $f10, $f8, $f0
    swc1    $f10, 0x01E4(a0)           # 000001E4
    lwc1    $f16, 0x0064(v1)           # 00000064
    swc1    $f4, 0x0200(a0)            # 00000200
    div.s   $f18, $f16, $f0
    swc1    $f18, 0x01E8(a0)           # 000001E8
    lwc1    $f6, %lo(var_808B8224)($at)
    jr      $ra
    swc1    $f6, 0x0204(a0)            # 00000204
lbl_808B7A38:
    sh      t2, 0x01F8(a0)             # 000001F8
lbl_808B7A3C:
    jr      $ra
    nop


func_808B7A44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lh      v0, 0x01F8(a0)             # 000001F8
    bne     v0, $zero, lbl_808B7A60
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    b       lbl_808B7A68
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808B7A60:
    sh      t6, 0x01F8(a0)             # 000001F8
    lh      v1, 0x01F8(a0)             # 000001F8
lbl_808B7A68:
    bne     v1, $zero, lbl_808B7A84
    nop
    lw      t8, 0x013C(a0)             # 0000013C
    lui     t7, %hi(func_808B7DC8)     # t7 = 808B0000
    addiu   t7, t7, %lo(func_808B7DC8) # t7 = 808B7DC8
    bnel    t7, t8, lbl_808B7A90
    lbu     v0, 0x0153(a0)             # 00000153
lbl_808B7A84:
    b       lbl_808B7AC4
    or      v0, $zero, $zero           # v0 = 00000000
    lbu     v0, 0x0153(a0)             # 00000153
lbl_808B7A90:
    andi    t9, v0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_808B7ABC
    andi    t0, v0, 0xFFFE             # t0 = 00000000
    sb      t0, 0x0153(a0)             # 00000153
    jal     func_808B7064
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t1, $zero, 0x0008          # t1 = 00000008
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    b       lbl_808B7AC4
    sh      t1, 0x01F8(a0)             # 000001F8
lbl_808B7ABC:
    jal     func_808B79A8
    nop
lbl_808B7AC4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7AD4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lw      v0, 0x015C(a2)             # 0000015C
    addiu   a0, $sp, 0x0028            # a0 = FFFFFFF0
    addiu   a1, $sp, 0x001C            # a1 = FFFFFFE4
    lh      t6, 0x0028(v0)             # 00000028
    addiu   v0, v0, 0x0028             # v0 = 00000028
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0028($sp)
    lh      t7, 0x0002(v0)             # 0000002A
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x002C($sp)
    lh      t8, 0x0004(v0)             # 0000002C
    sw      a2, 0x0038($sp)
    sw      v0, 0x0034($sp)
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_800AB958
    swc1    $f18, 0x0030($sp)
    lwc1    $f4, 0x001C($sp)
    lw      v0, 0x0034($sp)
    lw      a2, 0x0038($sp)
    trunc.w.s $f6, $f4
    lh      t5, 0x0006(v0)             # 00000006
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    mfc1    t0, $f6
    nop
    sh      t0, 0x0008(v0)             # 00000008
    lwc1    $f8, 0x0020($sp)
    lw      t0, 0x0000(v0)             # 00000000
    trunc.w.s $f10, $f8
    mfc1    t2, $f10
    mtc1    t5, $f10                   # $f10 = 0.00
    sh      t2, 0x000A(v0)             # 0000000A
    lwc1    $f16, 0x0024($sp)
    trunc.w.s $f18, $f16
    cvt.s.w $f16, $f10
    mfc1    t4, $f18
    nop
    sh      t4, 0x000C(v0)             # 0000000C
    lwc1    $f6, 0x0210(a2)            # 00000210
    add.s   $f8, $f4, $f6
    mul.s   $f18, $f16, $f8
    trunc.w.s $f4, $f18
    mfc1    t7, $f4
    nop
    sh      t7, 0x000E(v0)             # 0000000E
    lw      t8, 0x015C(a2)             # 0000015C
    sw      t0, 0x0068(t8)             # 00000068
    lw      t9, 0x0004(v0)             # 00000004
    sw      t9, 0x006C(t8)             # 0000006C
    lw      t0, 0x0008(v0)             # 00000008
    sw      t0, 0x0070(t8)             # 00000070
    lw      t9, 0x000C(v0)             # 0000000C
    sw      t9, 0x0074(t8)             # 00000074
    lw      t0, 0x0010(v0)             # 00000010
    sw      t0, 0x0078(t8)             # 00000078
    lw      t9, 0x0014(v0)             # 00000014
    sw      t9, 0x007C(t8)             # 0000007C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808B7BE8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    lui     a3, 0x3E4C                 # a3 = 3E4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3E4CCCCD
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    jal     func_8001EC20
    lui     a1, 0x4180                 # a1 = 41800000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0028($sp)
    jal     func_8004A484
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_808B81C8)      # a3 = 808C0000
    addiu   t6, s0, 0x0160             # t6 = 00000160
    lw      a1, 0x0028($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, %lo(var_808B81C8)  # a3 = 808B81C8
    lw      a0, 0x003C($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    jal     func_80049E10
    addiu   a0, $zero, 0x0009          # a0 = 00000009
    lui     a2, %hi(var_808B81D8)      # a2 = 808C0000
    addiu   a2, a2, %lo(var_808B81D8)  # a2 = 808B81D8
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050370
    or      a1, v0, $zero              # a1 = 00000000
    addiu   t7, $zero, 0x0016          # t7 = 00000016
    jal     func_800CDCCC              # Rand.Next() float
    sb      t7, 0x0117(s0)             # 00000117
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x021C(s0)            # 0000021C
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f0, 0x0220(s0)            # 00000220
    swc1    $f0, 0x0224(s0)            # 00000224
    jal     func_808B7454
    addiu   a0, s0, 0x021C             # a0 = 0000021C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f0                   # $f0 = 3.00
    lwc1    $f4, 0x021C(s0)            # 0000021C
    lwc1    $f8, 0x0220(s0)            # 00000220
    lwc1    $f16, 0x0224(s0)           # 00000224
    mul.s   $f6, $f4, $f0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    mul.s   $f10, $f8, $f0
    nop
    mul.s   $f18, $f16, $f0
    swc1    $f6, 0x0228(s0)            # 00000228
    swc1    $f10, 0x022C(s0)           # 0000022C
    jal     func_808B6F50
    swc1    $f18, 0x0230(s0)           # 00000230
    lui     t8, %hi(func_808B7D14)     # t8 = 808B0000
    addiu   t8, t8, %lo(func_808B7D14) # t8 = 808B7D14
    sw      t8, 0x013C(s0)             # 0000013C
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808B7CE8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7D14:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B7A44
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_808B7D5C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808B700C
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_808B7DC8)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B7DC8) # t6 = 808B7DC8
    sh      v0, 0x01FA(s0)             # 000001FA
    b       lbl_808B7DB4
    sw      t6, 0x013C(s0)             # 0000013C
lbl_808B7D5C:
    jal     func_808B74CC
    or      a1, s1, $zero              # a1 = 00000000
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    lwc1    $f4, 0x0214(s0)            # 00000214
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f10                  # $f10 = 16.00
    add.s   $f8, $f4, $f6
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    mul.s   $f16, $f8, $f10
    addiu   a2, s0, 0x0140             # a2 = 00000140
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f16, 0x00BC(s0)           # 000000BC
    sw      a2, 0x0020($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    lw      a2, 0x0020($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
lbl_808B7DB4:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_808B7DC8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_808B70D0
    lw      a1, 0x001C($sp)
    bltz    v0, lbl_808B7E08
    lw      a0, 0x001C($sp)
    lw      a1, 0x0018($sp)
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    addiu   a3, $zero, 0x3949          # a3 = 00003949
    jal     func_80058FF8
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_80020EB4
    lw      a0, 0x0018($sp)
lbl_808B7E08:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7E18:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    jal     func_808B732C
    sw      a0, 0x0018($sp)
    bltz    v0, lbl_808B7E50
    lw      a0, 0x0018($sp)
    lui     t6, 0x8002                 # t6 = 80020000
    lui     t7, %hi(func_808B7E60)     # t7 = 808B0000
    addiu   t6, t6, 0xEFF4             # t6 = 8001EFF4
    addiu   t7, t7, %lo(func_808B7E60) # t7 = 808B7E60
    sw      t6, 0x00C0(a0)             # 000000C0
    sh      v0, 0x01FA(a0)             # 000001FA
    sw      t7, 0x013C(a0)             # 0000013C
lbl_808B7E50:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808B7E60:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_808B7378
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_808B7E90
    lw      a3, 0x0020($sp)
    lui     t6, %hi(func_808B7D14)     # t6 = 808B0000
    addiu   t6, t6, %lo(func_808B7D14) # t6 = 808B7D14
    sw      t6, 0x013C(a3)             # 0000013C
lbl_808B7E90:
    lw      a0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addiu   a2, a3, 0x0140             # a2 = 00000140
    addu    a1, a0, $at
    sw      a1, 0x001C($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x0018($sp)
    lw      a1, 0x001C($sp)
    lw      a2, 0x0018($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a0, 0x0024($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808B7ED0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_80021124
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4180                # $at = 41800000
    mtc1    $at, $f0                   # $f0 = 16.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    lw      a0, 0x002C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jalr    $ra, t9
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x00BC(s0)             # 000000BC
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808B7F4C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      s1, 0x002C($sp)
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s2, 0x0030($sp)
    sdc1    $f20, 0x0020($sp)
    lui     t6, %hi(func_808B7E18)     # t6 = 808B0000
    lw      a3, 0x0000(s1)             # 00000000
    addiu   t6, t6, %lo(func_808B7E18) # t6 = 808B7E18
    sw      t6, 0x0038($sp)
    lw      a2, 0x013C(s0)             # 0000013C
    or      s2, a3, $zero              # s2 = 00000000
    beql    t6, a2, lbl_808B8108
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_8007E2C0
    or      a0, a3, $zero              # a0 = 00000000
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f20                  # $f20 = 1000.00
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0200             # a0 = 00000200
    lui     a1, 0x4180                 # a1 = 41800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x3DA3                 # a1 = 3DA30000
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    mfc1    a3, $f20
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    ori     a1, a1, 0xD70A             # a1 = 3DA3D70A
    addiu   a0, s0, 0x0204             # a0 = 00000204
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s1, $at
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f20                  # $f20 = 1.00
    lwc1    $f8, 0x0210(s0)            # 00000210
    lwc1    $f10, 0x0214(s0)           # 00000214
    mfc1    a2, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    add.s   $f12, $f8, $f20
    jal     func_800AA8FC
    add.s   $f14, $f10, $f20
    lw      t7, 0x009C(s1)             # 0000009C
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t7, $f16                   # $f16 = 0.00
    bgez    t7, lbl_808B8034
    cvt.s.w $f18, $f16
    mtc1    $at, $f4                   # $f4 = 4294967000.00
    nop
    add.s   $f18, $f18, $f4
lbl_808B8034:
    lui     $at, %hi(var_808B8228)     # $at = 808C0000
    lwc1    $f6, %lo(var_808B8228)($at)
    lwc1    $f10, 0x0200(s0)           # 00000200
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f8, $f18, $f6
    nop
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    lwc1    $f16, 0x0204(s0)           # 00000204
    mfc1    a2, $f20
    mov.s   $f14, $f20
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA8FC
    add.s   $f12, $f16, $f20
    lw      t8, 0x009C(s1)             # 0000009C
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t8, $f4                    # $f4 = 0.00
    bgez    t8, lbl_808B8090
    cvt.s.w $f18, $f4
    mtc1    $at, $f6                   # $f6 = 4294967000.00
    nop
    add.s   $f18, $f18, $f6
lbl_808B8090:
    lui     $at, %hi(var_808B822C)     # $at = 808C0000
    lwc1    $f10, %lo(var_808B822C)($at)
    neg.s   $f8, $f18
    lwc1    $f4, 0x0200(s0)            # 00000200
    mul.s   $f16, $f8, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f4
    jal     func_800AAD4C
    nop
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s2)             # 000002D0
    sw      t0, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0044($sp)
    lw      a1, 0x0044($sp)
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s2)             # 000002D0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x1000             # t3 = 06001000
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s2)             # 000002D0
    sw      t3, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      a2, 0x013C(s0)             # 0000013C
    lui     $at, 0x3F80                # $at = 3F800000
lbl_808B8108:
    mtc1    $at, $f20                  # $f20 = 1.00
    lw      t4, 0x0038($sp)
    beql    t4, a2, lbl_808B813C
    lw      $ra, 0x0034($sp)
    lwc1    $f6, 0x0210(s0)            # 00000210
    lui     $at, %hi(var_808B8230)     # $at = 808C0000
    lwc1    $f8, %lo(var_808B8230)($at)
    add.s   $f18, $f6, $f20
    or      a0, s0, $zero              # a0 = 00000000
    mul.s   $f10, $f18, $f8
    jal     func_808B7AD4
    swc1    $f10, 0x00C4(s0)           # 000000C4
    lw      $ra, 0x0034($sp)
lbl_808B813C:
    ldc1    $f20, 0x0020($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    nop
    nop
    nop

.section .data

var_808B8160: .word 0x002D0500, 0x00000001, 0x00120000, 0x00000250
.word func_808B7BE8
.word func_808B7CE8
.word func_808B7ED0
.word func_808B7F4C
var_808B8180: .word \
0x00000000, 0x00000000, 0x00040000, 0xFFCFD753, \
0x00000000, 0x00010100, 0x00000000, 0x00000000, \
0x00100064, 0x00000000, 0x00000000, 0x00000000, \
0x00002824, 0x00000000, 0x00790000, 0x00000000, \
0x00000000, 0x00100064
var_808B81C8: .word 0x06110939, 0x10000000, 0x00000002
.word var_808B8180
var_808B81D8: .word 0x01000002, 0x00190019, 0xFF000000
var_808B81E4: .word 0x00000000, 0xBF000000, 0x00000000
var_808B81F0: .word 0xFFFFFFFF
var_808B81F4: .word 0x96969600, 0x00000000, 0x00000000

.section .rodata

var_808B8200: .word 0x3DA3D70A
var_808B8204: .word 0x3DCCCCCD
var_808B8208: .word 0x3DAAAAAB
var_808B820C: .word 0x3DCCCCCD
var_808B8210: .word 0x38000100
var_808B8214: .word 0x40666667
var_808B8218: .word 0x3EF5C28F
var_808B821C: .word 0x40666667
var_808B8220: .word 0x3EF5C28F
var_808B8224: .word 0x3EF5C28F
var_808B8228: .word 0x3C8EFA35
var_808B822C: .word 0x3C8EFA35
var_808B8230: .word 0x3E4CCCCD, 0x00000000, 0x00000000, 0x00000000

