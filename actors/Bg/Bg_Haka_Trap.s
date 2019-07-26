.section .text
func_8099C8E0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_8099DC70)      # a1 = 809A0000
    sw      $zero, 0x002C($sp)
    addiu   a1, a1, %lo(var_8099DC70)  # a1 = 8099DC70
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lui     t3, %hi(func_8099D604)     # t3 = 809A0000
    andi    t7, t6, 0x00FF             # t7 = 00000000
    sh      t7, 0x001C(s0)             # 0000001C
    lh      t8, 0x001C(s0)             # 0000001C
    lw      a0, 0x003C($sp)
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    beq     t8, $at, lbl_8099CB44
    addiu   t3, t3, %lo(func_8099D604) # t3 = 8099D604
    addiu   a1, s0, 0x0168             # a1 = 00000168
    jal     func_8004AB7C
    sw      a1, 0x0028($sp)
    lui     a3, %hi(var_8099DBB4)      # a3 = 809A0000
    lw      a1, 0x0028($sp)
    addiu   a3, a3, %lo(var_8099DBB4)  # a3 = 8099DBB4
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    beq     v1, $zero, lbl_8099C970
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    bne     v1, $at, lbl_8099C9AC
    or      a0, s0, $zero              # a0 = 00000000
lbl_8099C970:
    sb      t9, 0x0158(s0)             # 00000158
    sh      t0, 0x01AC(s0)             # 000001AC
    lui     $at, %hi(var_8099DCA0)     # $at = 809A0000
    lwc1    $f4, %lo(var_8099DCA0)($at)
    lh      t1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lui     t3, %hi(func_8099D0D4)     # t3 = 809A0000
    bne     t1, $at, lbl_8099C9A0
    swc1    $f4, 0x0060(s0)            # 00000060
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sh      $zero, 0x001C(s0)          # 0000001C
    sh      t2, 0x015A(s0)             # 0000015A
lbl_8099C9A0:
    addiu   t3, t3, %lo(func_8099D0D4) # t3 = 8099D0D4
    b       lbl_8099CB58
    sw      t3, 0x0154(s0)             # 00000154
lbl_8099C9AC:
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      t4, 0x0004(s0)             # 00000004
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    ori     t5, t4, 0x0010             # t5 = 00000010
    bne     v1, $at, lbl_8099CA78
    sw      t5, 0x0004(s0)             # 00000004
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x9CD0             # a0 = 06009CD0
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    addiu   t6, $zero, 0x001E          # t6 = 0000001E
    sb      t6, 0x0158(s0)             # 00000158
    lui     t7, %hi(var_8099DC74)      # t7 = 809A0000
    lw      t7, %lo(var_8099DC74)(t7)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, %hi(var_8099DC74)     # $at = 809A0000
    beq     t7, $zero, lbl_8099CA14
    lui     t0, %hi(func_8099D30C)     # t0 = 809A0000
    lui     t8, %hi(func_8099D544)     # t8 = 809A0000
    addiu   t8, t8, %lo(func_8099D544) # t8 = 8099D544
    sw      t8, 0x0154(s0)             # 00000154
    lui     $at, %hi(var_8099DC74)     # $at = 809A0000
    b       lbl_8099CA2C
    sw      $zero, %lo(var_8099DC74)($at)
lbl_8099CA14:
    sw      t9, %lo(var_8099DC74)($at)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    addiu   t0, t0, %lo(func_8099D30C) # t0 = 8099D30C
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f6, 0x0060(s0)            # 00000060
lbl_8099CA2C:
    lui     $at, 0x4361                # $at = 43610000
    mtc1    $at, $f10                  # $f10 = 225.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    sub.s   $f0, $f8, $f10
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f4                   # $f4 = 25.00
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    add.s   $f18, $f0, $f16
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    swc1    $f0, 0x0080(s0)            # 00000080
    sh      t3, 0x01A8(s0)             # 000001A8
    sub.s   $f6, $f18, $f4
    sh      t4, 0x01AA(s0)             # 000001AA
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    b       lbl_8099CB28
    sh      t2, 0x015A(s0)             # 0000015A
lbl_8099CA78:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     v1, $at, lbl_8099CAA8
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x81D0             # a0 = 060081D0
    jal     func_80033EF4
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lwc1    $f10, 0x0008(s0)           # 00000008
    sub.s   $f18, $f10, $f16
    b       lbl_8099CACC
    swc1    $f18, 0x0008(s0)           # 00000008
lbl_8099CAA8:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0008(s0)            # 00000008
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0x8D10             # a0 = 06008D10
    add.s   $f8, $f4, $f6
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFF4
    jal     func_80033EF4
    swc1    $f8, 0x0008(s0)            # 00000008
lbl_8099CACC:
    addiu   a1, s0, 0x01B4             # a1 = 000001B4
    sw      a1, 0x0028($sp)
    jal     func_8004B064
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_8099DC58)      # a3 = 809A0000
    addiu   t5, s0, 0x01D4             # t5 = 000001D4
    lw      a1, 0x0028($sp)
    sw      t5, 0x0010($sp)
    addiu   a3, a3, %lo(var_8099DC58)  # a3 = 8099DC58
    lw      a0, 0x003C($sp)
    jal     func_8004B3EC
    or      a2, s0, $zero              # a2 = 00000000
    lbu     t9, 0x0195(s0)             # 00000195
    lui     t1, %hi(func_8099CE04)     # t1 = 809A0000
    addiu   t6, $zero, 0x0012          # t6 = 00000012
    addiu   t7, $zero, 0x0073          # t7 = 00000073
    addiu   t1, t1, %lo(func_8099CE04) # t1 = 8099CE04
    sb      t9, 0x0195(s0)             # 00000195
    ori     t0, t9, 0x0010             # t0 = 00000010
    sh      t6, 0x01A8(s0)             # 000001A8
    sh      t7, 0x01AA(s0)             # 000001AA
    sb      t0, 0x0195(s0)             # 00000195
    sw      t1, 0x0154(s0)             # 00000154
lbl_8099CB28:
    lw      a0, 0x003C($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x002C($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    b       lbl_8099CB58
    sw      v0, 0x013C(s0)             # 0000013C
lbl_8099CB44:
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f10                  # $f10 = 500.00
    sb      t2, 0x0158(s0)             # 00000158
    sw      t3, 0x0154(s0)             # 00000154
    swc1    $f10, 0x00F8(s0)           # 000000F8
lbl_8099CB58:
    lui     a2, %hi(var_8099DC68)      # a2 = 809A0000
    addiu   a2, a2, %lo(var_8099DC68)  # a2 = 8099DC68
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344
    or      a1, $zero, $zero           # a1 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_8099CB80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8099CBE8
    nop
    beq     v0, $zero, lbl_8099CBDC
    lw      a0, 0x0024($sp)
    addiu   a1, a0, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(s0)             # 0000013C
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lw      a0, 0x0024($sp)
    beq     v0, $at, lbl_8099CBD4
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bnel    v0, $at, lbl_8099CBE0
    lw      a0, 0x0024($sp)
lbl_8099CBD4:
    jal     func_8004B148
    addiu   a1, s0, 0x01B4             # a1 = 000001B4
lbl_8099CBDC:
    lw      a0, 0x0024($sp)
lbl_8099CBE0:
    jal     func_8004ABCC
    addiu   a1, s0, 0x0168             # a1 = 00000168
lbl_8099CBE8:
    jal     func_800C9568
    addiu   a0, s0, 0x015C             # a0 = 0000015C
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8099CC04:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x0014($sp)
    sw      a1, 0x003C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x003C($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0028            # a1 = FFFFFFF0
    lw      v0, 0x1C44(t6)             # 00001C44
    sw      a3, 0x0038($sp)
    jal     func_8002154C
    addiu   a2, v0, 0x0024             # a2 = 00000024
    lw      a3, 0x0038($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(a3)             # 000000B6
    lw      a3, 0x0038($sp)
    lh      a0, 0x00B6(a3)             # 000000B6
    jal     func_80063684              # coss?
    swc1    $f0, 0x0024($sp)
    lw      a3, 0x0038($sp)
    lwc1    $f16, 0x0024($sp)
    lwc1    $f12, 0x0028($sp)
    lh      t7, 0x001C(a3)             # 0000001C
    lui     $at, 0xC322                # $at = C3220000
    bnel    t7, $zero, lbl_8099CD08
    mtc1    $at, $f18                  # $f18 = -162.00
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f2                   # $f2 = -50.00
    lwc1    $f12, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_8099CC98
    mtc1    $at, $f14                  # $f14 = 50.00
    b       lbl_8099CCBC
    swc1    $f2, 0x0028($sp)
    mtc1    $at, $f14                  # $f14 = 50.00
lbl_8099CC98:
    nop
    c.lt.s  $f14, $f12
    nop
    bc1fl   lbl_8099CCB8
    mov.s   $f2, $f12
    b       lbl_8099CCB8
    mov.s   $f2, $f14
    mov.s   $f2, $f12
lbl_8099CCB8:
    swc1    $f2, 0x0028($sp)
lbl_8099CCBC:
    lwc1    $f4, 0x0030($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_8099CCE8
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    b       lbl_8099CCF0
    lui     $at, 0xC170                # $at = C1700000
    mtc1    $at, $f2                   # $f2 = -15.00
lbl_8099CCE8:
    nop
    lui     $at, 0xC170                # $at = C1700000
lbl_8099CCF0:
    mtc1    $at, $f8                   # $f8 = -15.00
    nop
    mul.s   $f10, $f2, $f8
    b       lbl_8099CDA0
    swc1    $f10, 0x0030($sp)
    mtc1    $at, $f18                  # $f18 = -15.00
lbl_8099CD08:
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x4322                # $at = 43220000
    c.lt.s  $f12, $f18
    nop
    bc1fl   lbl_8099CD34
    mtc1    $at, $f14                  # $f14 = 162.00
    lui     $at, 0x4322                # $at = 43220000
    mtc1    $at, $f12                  # $f12 = 162.00
    b       lbl_8099CD5C
    swc1    $f12, 0x0028($sp)
    mtc1    $at, $f14                  # $f14 = 162.00
lbl_8099CD34:
    nop
    c.lt.s  $f14, $f12
    nop
    bc1fl   lbl_8099CD54
    mov.s   $f2, $f12
    b       lbl_8099CD54
    mov.s   $f2, $f14
    mov.s   $f2, $f12
lbl_8099CD54:
    neg.s   $f12, $f2
    swc1    $f12, 0x0028($sp)
lbl_8099CD5C:
    lwc1    $f4, 0x0030($sp)
    lui     $at, 0xBF80                # $at = BF800000
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_8099CD88
    mtc1    $at, $f2                   # $f2 = -1.00
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    b       lbl_8099CD90
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f2                   # $f2 = 15.00
lbl_8099CD88:
    nop
    lui     $at, 0x4170                # $at = 41700000
lbl_8099CD90:
    mtc1    $at, $f8                   # $f8 = 15.00
    nop
    mul.s   $f10, $f2, $f8
    swc1    $f10, 0x0030($sp)
lbl_8099CDA0:
    lwc1    $f4, 0x0028($sp)
    lwc1    $f10, 0x0030($sp)
    lwc1    $f18, 0x0024(a3)           # 00000024
    mul.s   $f6, $f4, $f0
    add.s   $f8, $f18, $f6
    mul.s   $f4, $f10, $f16
    lwc1    $f10, 0x002C(a3)           # 0000002C
    add.s   $f18, $f8, $f4
    trunc.w.s $f6, $f18
    mfc1    t9, $f6
    nop
    sh      t9, 0x01AE(a3)             # 000001AE
    lwc1    $f8, 0x0028($sp)
    lwc1    $f6, 0x0030($sp)
    mul.s   $f4, $f8, $f16
    add.s   $f18, $f10, $f4
    mul.s   $f8, $f6, $f0
    add.s   $f10, $f18, $f8
    trunc.w.s $f4, $f10
    mfc1    t1, $f4
    nop
    sh      t1, 0x01B2(a3)             # 000001B2
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_8099CE04:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lui     t8, %hi(var_8099DB90)      # t8 = 809A0000
    lw      t8, %lo(var_8099DB90)(t8)
    lw      t7, 0x1C44(t6)             # 00001C44
    bne     t8, $zero, lbl_8099CEA8
    sw      t7, 0x0024($sp)
    jal     func_8007943C
    or      a0, t6, $zero              # a0 = 00000000
    bne     v0, $zero, lbl_8099CEA8
    addiu   a0, s0, 0x0024             # a0 = 00000024
    lw      a1, 0x0008(s0)             # 00000008
    jal     func_8006385C
    lui     a2, 0x3F00                 # a2 = 3F000000
    bne     v0, $zero, lbl_8099CE64
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x2058          # a1 = 00002058
    b       lbl_8099CEAC
    or      a0, s0, $zero              # a0 = 00000000
lbl_8099CE64:
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lui     t9, %hi(var_8099DC78)      # t9 = 809A0000
    bnel    v0, $at, lbl_8099CE90
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t9, %lo(var_8099DC78)(t9)
    lui     $at, %hi(var_8099DC78)     # $at = 809A0000
    ori     t0, t9, 0x0001             # t0 = 809A0001
    b       lbl_8099CEA8
    sw      t0, %lo(var_8099DC78)($at)
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_8099CE90:
    bne     v0, $at, lbl_8099CEA8
    lui     t1, %hi(var_8099DC78)      # t1 = 809A0000
    lw      t1, %lo(var_8099DC78)(t1)
    lui     $at, %hi(var_8099DC78)     # $at = 809A0000
    ori     t2, t1, 0x0002             # t2 = 809A0002
    sw      t2, %lo(var_8099DC78)($at)
lbl_8099CEA8:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8099CEAC:
    jal     func_8099CC04
    lw      a1, 0x002C($sp)
    lbu     t3, 0x01C5(s0)             # 000001C5
    addiu   t5, $zero, 0x0014          # t5 = 00000014
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    andi    t4, t3, 0x0002             # t4 = 00000000
    beq     t4, $zero, lbl_8099CEE8
    lui     t6, %hi(var_8099DC78)      # t6 = 809A0000
    sb      t5, 0x0158(s0)             # 00000158
    lui     $at, %hi(var_8099DB90)     # $at = 809A0000
    lui     t8, %hi(func_8099CF28)     # t8 = 809A0000
    sw      t7, %lo(var_8099DB90)($at)
    addiu   t8, t8, %lo(func_8099CF28) # t8 = 8099CF28
    b       lbl_8099CF14
    sw      t8, 0x0154(s0)             # 00000154
lbl_8099CEE8:
    lw      t6, %lo(var_8099DC78)(t6)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t9, $zero, 0x0004          # t9 = 00000004
    bnel    t6, $at, lbl_8099CF18
    lw      $ra, 0x001C($sp)
    lw      t0, 0x0024($sp)
    lui     $at, %hi(var_8099DC78)     # $at = 809A0000
    sw      t9, %lo(var_8099DC78)($at)
    lhu     t1, 0x0088(t0)             # 00000088
    ori     t2, t1, 0x0100             # t2 = 00000100
    sh      t2, 0x0088(t0)             # 00000088
lbl_8099CF14:
    lw      $ra, 0x001C($sp)
lbl_8099CF18:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8099CF28:
    addiu   $sp, $sp, 0xFF60           # $sp -= 0xA0
    sw      s5, 0x0078($sp)
    sw      s1, 0x0068($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x007C($sp)
    sw      s4, 0x0074($sp)
    sw      s3, 0x0070($sp)
    sw      s2, 0x006C($sp)
    sw      s0, 0x0064($sp)
    sdc1    $f26, 0x0058($sp)
    sdc1    $f24, 0x0050($sp)
    sdc1    $f22, 0x0048($sp)
    sdc1    $f20, 0x0040($sp)
    lbu     v0, 0x0158(s1)             # 00000158
    or      a0, s1, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8099CF74
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(s1)             # 00000158
lbl_8099CF74:
    jal     func_8002313C
    addiu   a1, $zero, 0x205B          # a1 = 0000205B
    lui     $at, 0x43A0                # $at = 43A00000
    mtc1    $at, $f26                  # $f26 = 320.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f24                  # $f24 = 10.00
    lui     $at, 0xC1F0                # $at = C1F00000
    mtc1    $at, $f22                  # $f22 = -30.00
    lui     $at, 0x41F0                # $at = 41F00000
    lui     s3, %hi(var_8099DC7C)      # s3 = 809A0000
    mtc1    $at, $f20                  # $f20 = 30.00
    addiu   s3, s3, %lo(var_8099DC7C)  # s3 = 8099DC7C
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s4, $sp, 0x0094            # s4 = FFFFFFF4
    addiu   s2, $zero, 0x0002          # s2 = 00000002
lbl_8099CFB0:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lh      t7, 0x001C(s1)             # 0000001C
    mov.s   $f2, $f0
    bnel    s2, t7, lbl_8099CFD4
    mov.s   $f0, $f20
    b       lbl_8099CFD4
    mov.s   $f0, $f22
    mov.s   $f0, $f20
lbl_8099CFD4:
    mul.s   $f4, $f0, $f2
    lwc1    $f6, 0x0024(s1)            # 00000024
    add.s   $f8, $f4, $f6
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f8, 0x0094($sp)
    mul.s   $f10, $f0, $f24
    lwc1    $f16, 0x0028(s1)           # 00000028
    mov.s   $f12, $f26
    add.s   $f18, $f10, $f16
    add.s   $f4, $f18, $f20
    jal     func_80026D90
    swc1    $f4, 0x0098($sp)
    lwc1    $f6, 0x002C(s1)            # 0000002C
    addiu   t8, $zero, 0x0082          # t8 = 00000082
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    add.s   $f8, $f0, $f6
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, $zero, 0x0096          # t2 = 00000096
    addiu   t3, $zero, 0x00AA          # t3 = 000000AA
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    addiu   t6, $zero, 0x0009          # t6 = 00000009
    swc1    $f8, 0x009C($sp)
    sw      t6, 0x0038($sp)
    sw      t5, 0x0034($sp)
    sw      t4, 0x0028($sp)
    sw      t3, 0x0024($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x003C($sp)
    sw      $zero, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s4, $zero              # a1 = FFFFFFF4
    or      a2, s3, $zero              # a2 = 8099DC7C
    jal     func_8001E1D4
    or      a3, s3, $zero              # a3 = 8099DC7C
    addiu   s0, s0, 0x0001             # s0 = 00000001
    bne     s0, s2, lbl_8099CFB0
    nop
    lbu     t7, 0x0158(s1)             # 00000158
    lui     $at, %hi(var_8099DB90)     # $at = 809A0000
    or      a0, s1, $zero              # a0 = 00000000
    bnel    t7, $zero, lbl_8099D0A4
    lw      $ra, 0x007C($sp)
    jal     func_80020EB4
    sw      $zero, %lo(var_8099DB90)($at)
    lw      $ra, 0x007C($sp)
lbl_8099D0A4:
    ldc1    $f20, 0x0040($sp)
    ldc1    $f22, 0x0048($sp)
    ldc1    $f24, 0x0050($sp)
    ldc1    $f26, 0x0058($sp)
    lw      s0, 0x0064($sp)
    lw      s1, 0x0068($sp)
    lw      s2, 0x006C($sp)
    lw      s3, 0x0070($sp)
    lw      s4, 0x0074($sp)
    lw      s5, 0x0078($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A0           # $sp += 0xA0


func_8099D0D4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lh      t6, 0x015A(s0)             # 0000015A
    lui     $at, 0x4040                # $at = 40400000
    beql    t6, $zero, lbl_8099D114
    lwc1    $f0, 0x0060(s0)            # 00000060
    lwc1    $f4, 0x0060(s0)            # 00000060
    mtc1    $at, $f6                   # $f6 = 3.00
    nop
    mul.s   $f8, $f4, $f6
    b       lbl_8099D11C
    swc1    $f8, 0x0060(s0)            # 00000060
    lwc1    $f0, 0x0060(s0)            # 00000060
lbl_8099D114:
    add.s   $f10, $f0, $f0
    swc1    $f10, 0x0060(s0)           # 00000060
lbl_8099D11C:
    lbu     v1, 0x0158(s0)             # 00000158
    lui     $at, 0x4339                # $at = 43390000
    mtc1    $at, $f18                  # $f18 = 185.00
    beq     v1, $zero, lbl_8099D134
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sb      t7, 0x0158(s0)             # 00000158
lbl_8099D134:
    lwc1    $f16, 0x000C(s0)           # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lw      a2, 0x0060(s0)             # 00000060
    sub.s   $f4, $f16, $f18
    mfc1    a1, $f4
    jal     func_8006385C
    nop
    sw      v0, 0x0024($sp)
    lbu     v1, 0x0158(s0)             # 00000158
    addiu   $at, $zero, 0x000A         # $at = 0000000A
    bne     v1, $at, lbl_8099D16C
    or      a0, v1, $zero              # a0 = 00000000
    lh      t8, 0x015A(s0)             # 0000015A
    beq     t8, $zero, lbl_8099D180
lbl_8099D16C:
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a0, $at, lbl_8099D190
    nop
    lh      t9, 0x015A(s0)             # 0000015A
    beq     t9, $zero, lbl_8099D190
lbl_8099D180:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x284B          # a1 = 0000284B
    lbu     v1, 0x0158(s0)             # 00000158
lbl_8099D190:
    bne     v1, $zero, lbl_8099D1D0
    or      a0, s0, $zero              # a0 = 00000000
    lh      t0, 0x015A(s0)             # 0000015A
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t2, $zero, 0x0028          # t2 = 00000028
    beq     t0, $zero, lbl_8099D1B8
    swc1    $f6, 0x0060(s0)            # 00000060
    addiu   t1, $zero, 0x000A          # t1 = 0000000A
    b       lbl_8099D1BC
    sb      t1, 0x0158(s0)             # 00000158
lbl_8099D1B8:
    sb      t2, 0x0158(s0)             # 00000158
lbl_8099D1BC:
    jal     func_80022FD0
    addiu   a1, $zero, 0x284A          # a1 = 0000284A
    lui     t3, %hi(func_8099D210)     # t3 = 809A0000
    addiu   t3, t3, %lo(func_8099D210) # t3 = 8099D210
    sw      t3, 0x0154(s0)             # 00000154
lbl_8099D1D0:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8099CC04
    lw      a1, 0x002C($sp)
    lw      t4, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    bne     t4, $zero, lbl_8099D1FC
    lw      a0, 0x002C($sp)
    addu    a1, a0, $at
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0168             # a2 = 00000168
lbl_8099D1FC:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8099D210:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x0158(s0)             # 00000158
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x41D8                 # a2 = 41D80000
    beq     v0, $zero, lbl_8099D23C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(s0)             # 00000158
lbl_8099D23C:
    lh      t7, 0x015A(s0)             # 0000015A
    beql    t7, $zero, lbl_8099D25C
    lbu     t8, 0x0158(s0)             # 00000158
    jal     func_8006385C
    lw      a1, 0x000C(s0)             # 0000000C
    b       lbl_8099D2C0
    lbu     v0, 0x0158(s0)             # 00000158
    lbu     t8, 0x0158(s0)             # 00000158
lbl_8099D25C:
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4090                 # a2 = 40900000
    slti    $at, t8, 0x0015
    bne     $at, $zero, lbl_8099D298
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f6                   # $f6 = 90.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a2, 0x4110                 # a2 = 41100000
    sub.s   $f8, $f4, $f6
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    b       lbl_8099D2A4
    lbu     v0, 0x0158(s0)             # 00000158
lbl_8099D298:
    jal     func_8006385C
    lw      a1, 0x000C(s0)             # 0000000C
    lbu     v0, 0x0158(s0)             # 00000158
lbl_8099D2A4:
    addiu   $at, $zero, 0x0014         # $at = 00000014
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_8099D2C0
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x284A          # a1 = 0000284A
    lbu     v0, 0x0158(s0)             # 00000158
lbl_8099D2C0:
    bne     v0, $zero, lbl_8099D2F0
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f10, 0x000C(s0)           # 0000000C
    addiu   t9, $zero, 0x0014          # t9 = 00000014
    sb      t9, 0x0158(s0)             # 00000158
    lui     $at, %hi(var_8099DCA4)     # $at = 809A0000
    swc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, %lo(var_8099DCA4)($at)
    lui     t0, %hi(func_8099D0D4)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_8099D0D4) # t0 = 8099D0D4
    sw      t0, 0x0154(s0)             # 00000154
    swc1    $f16, 0x0060(s0)           # 00000060
lbl_8099D2F0:
    jal     func_8099CC04
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8099D30C:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s3, 0x0044($sp)
    or      s3, a0, $zero              # s3 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     $at, %hi(var_8099DCA8)     # $at = 809A0000
    lwc1    $f6, %lo(var_8099DCA8)($at)
    lwc1    $f4, 0x0060(s3)            # 00000060
    lbu     v0, 0x0158(s3)             # 00000158
    lui     $at, 0x42B4                # $at = 42B40000
    mul.s   $f8, $f4, $f6
    mtc1    $at, $f22                  # $f22 = 90.00
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     v0, $zero, lbl_8099D36C
    swc1    $f8, 0x0060(s3)            # 00000060
    sb      t6, 0x0158(s3)             # 00000158
lbl_8099D36C:
    lwc1    $f10, 0x0024(s3)           # 00000024
    lui     $at, 0x41C8                # $at = 41C80000
    mtc1    $at, $f24                  # $f24 = 25.00
    add.s   $f16, $f10, $f22
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    or      s0, $zero, $zero           # s0 = 00000000
    swc1    $f16, 0x0074($sp)
    lwc1    $f18, 0x0028(s3)           # 00000028
    addiu   s1, a1, 0x07C0             # s1 = 000007C0
    addiu   s2, s3, 0x0078             # s2 = 00000078
    add.s   $f6, $f18, $f4
    addiu   s6, $zero, 0x0003          # s6 = 00000003
    addiu   s5, $sp, 0x0074            # s5 = FFFFFFF4
    addiu   s4, $sp, 0x0064            # s4 = FFFFFFE4
    add.s   $f8, $f6, $f24
    swc1    $f8, 0x0078($sp)
    lwc1    $f10, 0x002C(s3)           # 0000002C
    swc1    $f10, 0x007C($sp)
    lwc1    $f20, 0x0080(s3)           # 00000080
lbl_8099D3BC:
    or      a0, s1, $zero              # a0 = 000007C0
    or      a1, s2, $zero              # a1 = 00000078
    or      a2, s4, $zero              # a2 = FFFFFFE4
    or      a3, s3, $zero              # a3 = 00000000
    jal     func_8002F4B8              # Raycast
    sw      s5, 0x0010($sp)
    sub.s   $f2, $f0, $f24
    lwc1    $f16, 0x0074($sp)
    addiu   s0, s0, 0x0001             # s0 = 00000001
    c.lt.s  $f20, $f2
    sub.s   $f18, $f16, $f22
    bc1f    lbl_8099D3F4
    nop
    mov.s   $f20, $f2
lbl_8099D3F4:
    bne     s0, s6, lbl_8099D3BC
    swc1    $f18, 0x0074($sp)
    mfc1    a1, $f20
    addiu   a0, s3, 0x0028             # a0 = 00000028
    jal     func_8006385C
    lw      a2, 0x0060(s3)             # 00000060
    beq     v0, $zero, lbl_8099D444
    lui     $at, %hi(var_8099DCAC)     # $at = 809A0000
    lwc1    $f4, %lo(var_8099DCAC)($at)
    lwc1    $f6, 0x0060(s3)            # 00000060
    or      a0, s3, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_8099D43C
    mtc1    $zero, $f8                 # $f8 = 0.00
    jal     func_80022FD0
    addiu   a1, $zero, 0x2851          # a1 = 00002851
    mtc1    $zero, $f8                 # $f8 = 0.00
lbl_8099D43C:
    nop
    swc1    $f8, 0x0060(s3)            # 00000060
lbl_8099D444:
    lui     $at, %hi(var_8099DCB0)     # $at = 809A0000
    lwc1    $f16, %lo(var_8099DCB0)($at)
    lwc1    $f10, 0x0060(s3)           # 00000060
    or      a0, s3, $zero              # a0 = 00000000
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_8099D470
    lbu     t7, 0x0158(s3)             # 00000158
    jal     func_8002313C
    addiu   a1, $zero, 0x204D          # a1 = 0000204D
    lbu     t7, 0x0158(s3)             # 00000158
lbl_8099D470:
    bnel    t7, $zero, lbl_8099D514
    lw      $ra, 0x0054($sp)
    lwc1    $f4, 0x0028(s3)            # 00000028
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, 0x4248                # $at = 42480000
    trunc.w.s $f6, $f4
    mtc1    $at, $f16                  # $f16 = 50.00
    swc1    $f18, 0x0060(s3)           # 00000060
    lwc1    $f0, 0x000C(s3)            # 0000000C
    mfc1    t0, $f6
    addiu   t8, $zero, 0x001E          # t8 = 0000001E
    sb      t8, 0x0158(s3)             # 00000158
    sll     t1, t0, 16
    sra     t2, t1, 16
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     t0, %hi(func_8099D544)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_8099D544) # t0 = 8099D544
    cvt.s.w $f10, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    t4, $f4
    nop
    sh      t4, 0x015A(s3)             # 0000015A
    lh      t5, 0x015A(s3)             # 0000015A
    mtc1    t5, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f2, $f6
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_8099D500
    trunc.w.s $f10, $f2
    trunc.w.s $f8, $f0
    mfc1    t7, $f8
    b       lbl_8099D50C
    sh      t7, 0x015A(s3)             # 0000015A
    trunc.w.s $f10, $f2
lbl_8099D500:
    mfc1    t9, $f10
    nop
    sh      t9, 0x015A(s3)             # 0000015A
lbl_8099D50C:
    sw      t0, 0x0154(s3)             # 00000154
    lw      $ra, 0x0054($sp)
lbl_8099D514:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_8099D544:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v1, 0x0158(a3)             # 00000158
    addiu   a0, a3, 0x0028             # a0 = 00000028
    lui     a2, 0x41A0                 # a2 = 41A00000
    beq     v1, $zero, lbl_8099D574
    or      v0, v1, $zero              # v0 = 00000000
    addiu   t6, v1, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a3)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8099D574:
    slti    $at, v0, 0x0015
    bnel    $at, $zero, lbl_8099D5B4
    lw      a1, 0x000C(a3)             # 0000000C
    lh      t7, 0x015A(a3)             # 0000015A
    sw      a3, 0x0018($sp)
    addiu   a0, a3, 0x0028             # a0 = 00000028
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     a2, 0x4170                 # a2 = 41700000
    cvt.s.w $f4, $f4
    mfc1    a1, $f4
    jal     func_8006385C
    nop
    lw      a3, 0x0018($sp)
    b       lbl_8099D5C4
    sb      v0, 0x0159(a3)             # 00000159
    lw      a1, 0x000C(a3)             # 0000000C
lbl_8099D5B4:
    jal     func_8006385C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    sb      v0, 0x0159(a3)             # 00000159
lbl_8099D5C4:
    lbu     t8, 0x0158(a3)             # 00000158
    addiu   t9, $zero, 0x001E          # t9 = 0000001E
    lui     $at, 0x3F00                # $at = 3F000000
    bne     t8, $zero, lbl_8099D5F4
    lui     t0, %hi(func_8099D30C)     # t0 = 809A0000
    lwc1    $f6, 0x000C(a3)            # 0000000C
    mtc1    $at, $f8                   # $f8 = 0.50
    addiu   t0, t0, %lo(func_8099D30C) # t0 = 8099D30C
    sb      t9, 0x0158(a3)             # 00000158
    sw      t0, 0x0154(a3)             # 00000154
    swc1    $f6, 0x0028(a3)            # 00000028
    swc1    $f8, 0x0060(a3)            # 00000060
lbl_8099D5F4:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8099D604:
    sw      a1, 0x0004($sp)
    lbu     v0, 0x0158(a0)             # 00000158
    lui     t7, %hi(func_8099D744)     # t7 = 809A0000
    addiu   t7, t7, %lo(func_8099D744) # t7 = 8099D744
    beq     v0, $zero, lbl_8099D624
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a0)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8099D624:
    bne     v0, $zero, lbl_8099D630
    nop
    sw      t7, 0x0154(a0)             # 00000154
lbl_8099D630:
    jr      $ra
    nop


func_8099D638:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    sw      a2, 0x0030($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0028($sp)
    addiu   a1, $sp, 0x0018            # a1 = FFFFFFF0
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a2, v0, 0x0024             # a2 = 00000024
    jal     func_8002154C
    sw      v0, 0x0024($sp)
    lwc1    $f0, 0x0018($sp)
    lui     $at, 0x428C                # $at = 428C0000
    mtc1    $at, $f4                   # $f4 = 70.00
    abs.s   $f0, $f0
    lw      v0, 0x0024($sp)
    c.lt.s  $f0, $f4
    lwc1    $f0, 0x001C($sp)
    lui     $at, 0x42C8                # $at = 42C80000
    bc1fl   lbl_8099D738
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f6                   # $f6 = 100.00
    abs.s   $f0, $f0
    lui     $at, 0x43FA                # $at = 43FA0000
    c.lt.s  $f0, $f6
    lwc1    $f8, 0x0020($sp)
    bc1fl   lbl_8099D738
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f0                   # $f0 = 500.00
    lw      t7, 0x002C($sp)
    c.lt.s  $f8, $f0
    nop
    bc1fl   lbl_8099D738
    lw      $ra, 0x0014($sp)
    lw      t8, 0x1C44(t7)             # 00001C44
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lb      t9, 0x013F(t8)             # 0000013F
    beql    t9, $at, lbl_8099D738
    lw      $ra, 0x0014($sp)
    sub.s   $f10, $f0, $f8
    lui     $at, %hi(var_8099DCB4)     # $at = 809A0000
    lwc1    $f16, %lo(var_8099DCB4)($at)
    lh      t0, 0x0032($sp)
    lui     $at, 0x40A0                # $at = 40A00000
    mul.s   $f18, $f10, $f16
    mtc1    t0, $f8                    # $f8 = 0.00
    mtc1    $at, $f4                   # $f4 = 5.00
    lui     $at, %hi(var_8099DCB8)     # $at = 809A0000
    cvt.s.w $f10, $f8
    add.s   $f6, $f18, $f4
    lwc1    $f18, %lo(var_8099DCB8)($at)
    lui     $at, %hi(var_8099DCBC)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099DCBC)($at)
    mul.s   $f16, $f6, $f10
    nop
    mul.s   $f4, $f16, $f18
    nop
    mul.s   $f6, $f4, $f8
    swc1    $f6, 0x089C(v0)            # 0000089C
    lw      t1, 0x0028($sp)
    lh      t2, 0x00B6(t1)             # 000000B6
    sh      t2, 0x08A0(v0)             # 000008A0
    lw      $ra, 0x0014($sp)
lbl_8099D738:
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_8099D744:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     t6, 0x0158(s0)             # 00000158
    beql    t6, $zero, lbl_8099D7C8
    lh      t1, 0x0034(s0)             # 00000034
    lh      t7, 0x0034(s0)             # 00000034
    lui     $at, %hi(var_8099DCC0)     # $at = 809A0000
    lwc1    $f8, %lo(var_8099DCC0)($at)
    mtc1    t7, $f4                    # $f4 = 0.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f16                  # $f16 = 5.00
    cvt.s.w $f6, $f4
    addiu   a0, s0, 0x0034             # a0 = 00000034
    or      a1, $zero, $zero           # a1 = 00000000
    mul.s   $f10, $f6, $f8
    add.s   $f18, $f10, $f16
    trunc.w.s $f4, $f18
    mfc1    a2, $f4
    nop
    sll     a2, a2, 16
    jal     func_80063704
    sra     a2, a2, 16
    beq     v0, $zero, lbl_8099D820
    addiu   t9, $zero, 0x0028          # t9 = 00000028
    lui     t0, %hi(func_8099D604)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_8099D604) # t0 = 8099D604
    sb      t9, 0x0158(s0)             # 00000158
    b       lbl_8099D820
    sw      t0, 0x0154(s0)             # 00000154
    lh      t1, 0x0034(s0)             # 00000034
lbl_8099D7C8:
    lui     $at, %hi(var_8099DCC4)     # $at = 809A0000
    lwc1    $f10, %lo(var_8099DCC4)($at)
    mtc1    t1, $f6                    # $f6 = 0.00
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    cvt.s.w $f8, $f6
    addiu   a0, s0, 0x0034             # a0 = 00000034
    addiu   a1, $zero, 0x3A00          # a1 = 00003A00
    mul.s   $f16, $f8, $f10
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    a2, $f6
    nop
    sll     a2, a2, 16
    jal     func_80063704
    sra     a2, a2, 16
    beq     v0, $zero, lbl_8099D820
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    lui     t4, %hi(func_8099D868)     # t4 = 809A0000
    addiu   t4, t4, %lo(func_8099D868) # t4 = 8099D868
    sb      t3, 0x0158(s0)             # 00000158
    sw      t4, 0x0154(s0)             # 00000154
lbl_8099D820:
    lh      a2, 0x0034(s0)             # 00000034
    lh      t5, 0x00B8(s0)             # 000000B8
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, a2, 0x1801
    addu    t6, t5, a2
    bne     $at, $zero, lbl_8099D848
    sh      t6, 0x00B8(s0)             # 000000B8
    jal     func_8002313C
    addiu   a1, $zero, 0x2057          # a1 = 00002057
    lh      a2, 0x0034(s0)             # 00000034
lbl_8099D848:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8099D638
    lw      a1, 0x0024($sp)
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8099D868:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0158(a0)             # 00000158
    addiu   a1, $zero, 0x2057          # a1 = 00002057
    beq     v0, $zero, lbl_8099D888
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a0)             # 00000158
lbl_8099D888:
    jal     func_8002313C
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t9, %hi(func_8099D744)     # t9 = 809A0000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lbu     t7, 0x0158(a0)             # 00000158
    addiu   t9, t9, %lo(func_8099D744) # t9 = 8099D744
    bnel    t7, $zero, lbl_8099D8B8
    lh      a2, 0x0034(a0)             # 00000034
    sb      t8, 0x0158(a0)             # 00000158
    sw      t9, 0x0154(a0)             # 00000154
    lh      a2, 0x0034(a0)             # 00000034
lbl_8099D8B8:
    lh      t0, 0x00B8(a0)             # 000000B8
    addu    t1, t0, a2
    sh      t1, 0x00B8(a0)             # 000000B8
    jal     func_8099D638
    lw      a1, 0x001C($sp)
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8099D8DC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t9, 0x0154(s0)             # 00000154
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     v0, $at, lbl_8099D9B8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    v0, $at, lbl_8099D9BC
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    trunc.w.s $f6, $f4
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a2, s0, 0x0168             # a2 = 00000168
    mfc1    t7, $f6
    beq     v0, $zero, lbl_8099D948
    sh      t7, 0x01B0(s0)             # 000001B0
    bne     v0, $at, lbl_8099D978
lbl_8099D948:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    sw      a2, 0x0020($sp)
    lw      a1, 0x0024($sp)
    lw      a2, 0x0020($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    b       lbl_8099D9BC
    lw      $ra, 0x001C($sp)
lbl_8099D978:
    lw      t0, 0x0154(s0)             # 00000154
    lui     t8, %hi(func_8099CE04)     # t8 = 809A0000
    addiu   t8, t8, %lo(func_8099CE04) # t8 = 8099CE04
    bne     t8, t0, lbl_8099D9A0
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x01B4             # a2 = 000001B4
lbl_8099D9A0:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x0168             # a2 = 00000168
lbl_8099D9B8:
    lw      $ra, 0x001C($sp)
lbl_8099D9BC:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_8099D9CC:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0048($sp)
    lui     a0, %hi(var_8099DBF8)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099DBF8)  # a0 = 8099DBF8
    jal     func_800AB958
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFDC
    lui     a0, %hi(var_8099DC04)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099DC04)  # a0 = 8099DC04
    jal     func_800AB958
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    lui     a0, %hi(var_8099DC10)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099DC10)  # a0 = 8099DC10
    jal     func_800AB958
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFF4
    lw      a0, 0x0048($sp)
    addiu   t6, $sp, 0x003C            # t6 = FFFFFFF4
    sw      t6, 0x0010($sp)
    addiu   a0, a0, 0x01B4             # a0 = 000001B4
    sw      a0, 0x0020($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFDC
    jal     func_80050BD4
    addiu   a3, $sp, 0x0030            # a3 = FFFFFFE8
    lui     a0, %hi(var_8099DC4C)      # a0 = 809A0000
    addiu   a0, a0, %lo(var_8099DC4C)  # a0 = 8099DC4C
    jal     func_800AB958
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE8
    addiu   t7, $sp, 0x0030            # t7 = FFFFFFE8
    sw      t7, 0x0010($sp)
    lw      a0, 0x0020($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    addiu   a2, $sp, 0x0024            # a2 = FFFFFFDC
    jal     func_80050BD4
    addiu   a3, $sp, 0x003C            # a3 = FFFFFFF4
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_8099DA68:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0044($sp)
    lui     t6, %hi(func_8099CF28)     # t6 = 809A0000
    addiu   t6, t6, %lo(func_8099CF28) # t6 = 8099CF28
    sw      t6, 0x0028($sp)
    lw      t7, 0x0154(s0)             # 00000154
    lw      a0, 0x0044($sp)
    lui     a1, %hi(var_8099DC9C)      # a1 = 809A0000
    bnel    t6, t7, lbl_8099DABC
    lh      t8, 0x001C(s0)             # 0000001C
    lbu     a2, 0x0158(s0)             # 00000158
    addiu   a1, a1, %lo(var_8099DC9C)  # a1 = 8099DC9C
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    addiu   a2, a2, 0x0014             # a2 = 00000014
    sll     a2, a2, 16
    jal     func_8001A0E0
    sra     a2, a2, 16
    lh      t8, 0x001C(s0)             # 0000001C
lbl_8099DABC:
    lui     a1, %hi(var_8099DC88)      # a1 = 809A0000
    lw      a0, 0x0044($sp)
    sll     t9, t8,  2
    addu    a1, a1, t9
    jal     func_80028048
    lw      a1, %lo(var_8099DC88)(a1)
    lw      v0, 0x0154(s0)             # 00000154
    lui     t0, %hi(func_8099CE04)     # t0 = 809A0000
    addiu   t0, t0, %lo(func_8099CE04) # t0 = 8099CE04
    bnel    t0, v0, lbl_8099DAF8
    lw      t1, 0x0028($sp)
    jal     func_8099D9CC
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x0154(s0)             # 00000154
    lw      t1, 0x0028($sp)
lbl_8099DAF8:
    bne     t1, v0, lbl_8099DB0C
    nop
    jal     func_8001A468
    lw      a0, 0x0044($sp)
    lw      v0, 0x0154(s0)             # 00000154
lbl_8099DB0C:
    lui     t2, %hi(func_8099D544)     # t2 = 809A0000
    addiu   t2, t2, %lo(func_8099D544) # t2 = 8099D544
    bnel    t2, v0, lbl_8099DB7C
    lw      $ra, 0x001C($sp)
    lbu     t3, 0x0159(s0)             # 00000159
    lui     $at, 0x42DC                # $at = 42DC0000
    bnel    t3, $zero, lbl_8099DB7C
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0024(s0)            # 00000024
    mtc1    $at, $f10                  # $f10 = 110.00
    lw      a0, 0x0044($sp)
    swc1    $f4, 0x002C($sp)
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    swc1    $f6, 0x0034($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   a2, s0, 0x015C             # a2 = 0000015C
    sw      a2, 0x0028($sp)
    add.s   $f16, $f8, $f10
    addiu   a1, $sp, 0x002C            # a1 = FFFFFFEC
    addu    a0, a0, $at
    jal     func_8008ED08
    swc1    $f16, 0x0030($sp)
    lw      a0, 0x0028($sp)
    jal     func_80064780
    addiu   a1, $zero, 0x200D          # a1 = 0000200D
    lw      $ra, 0x001C($sp)
lbl_8099DB7C:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop
    nop

.section .data

var_8099DB90: .word 0x00000000
var_8099DB94: .word 0x00BC0100, 0x00000000, 0x00690000, 0x0000028C
.word func_8099C8E0
.word func_8099CB80
.word func_8099D8DC
.word func_8099DA68
var_8099DBB4: .word \
0x09110D09, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00040000, 0xFFCFFFFF, 0x00000000, 0x01010100, \
0x001E005A, 0x00000000, 0x00000000
var_8099DBE0: .word \
0x00000000, 0x00000000, 0x00000000, 0x00020000, \
0x00000000, 0x00010000
var_8099DBF8: .word 0x44E10000, 0x44960000, 0x00000000
var_8099DC04: .word 0xC4E10000, 0x44960000, 0x00000000
var_8099DC10: .word \
0xC4E10000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00020000, 0x00000000, \
0x00010000, 0x44E10000, 0x44960000, 0x00000000, \
0xC4E10000, 0x00000000, 0x00000000
var_8099DC4C: .word 0x44E10000, 0x00000000, 0x00000000
var_8099DC58: .word 0x0A000900, 0x20020000, 0x00000002
.word var_8099DBE0
var_8099DC68: .word 0x00000050, 0x0064FF00
var_8099DC70: .word 0x48500064
var_8099DC74: .word 0x00000000
var_8099DC78: .word 0x00000000
var_8099DC7C: .word 0x00000000, 0x00000000, 0x00000000
var_8099DC88: .word \
0x06007610, 0x06009860, 0x06007EF0, 0x06008A20, \
0x060072C0
var_8099DC9C: .word 0x00000000

.section .rodata

var_8099DCA0: .word 0x3DCCCCCD
var_8099DCA4: .word 0x3DCCCCCD
var_8099DCA8: .word 0x3FCCCCCD
var_8099DCAC: .word 0x3C23D70A
var_8099DCB0: .word 0x3C23D70A
var_8099DCB4: .word 0x3D75C28F
var_8099DCB8: .word 0x388D3DCB
var_8099DCBC: .word 0x3F2AAAAB
var_8099DCC0: .word 0x3CF5C28F
var_8099DCC4: .word 0x3CF5C28F, 0x00000000, 0x00000000

