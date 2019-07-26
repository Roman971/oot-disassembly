.section .text
func_8097B9A0:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x003C($sp)
    sw      a1, 0x0054($sp)
    lui     a1, %hi(var_8097C2E0)      # a1 = 80980000
    sw      $zero, 0x0044($sp)
    addiu   a1, a1, %lo(var_8097C2E0)  # a1 = 8097C2E0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80035260
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lh      t9, 0x001C(s0)             # 0000001C
    lh      t6, 0x001C(s0)             # 0000001C
    lui     a0, 0x0601                 # a0 = 06010000
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sh      t0, 0x001C(s0)             # 0000001C
    lh      t1, 0x001C(s0)             # 0000001C
    sra     t8, t6,  8
    sb      t8, 0x0159(s0)             # 00000159
    bne     t1, $zero, lbl_8097BA24
    addiu   a0, a0, 0xED7C             # a0 = 0600ED7C
    lui     a0, 0x0601                 # a0 = 06010000
    addiu   a0, a0, 0xE408             # a0 = 0600E408
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    lui     t3, %hi(func_8097BB80)     # t3 = 80980000
    addiu   t2, $zero, 0x0008          # t2 = 00000008
    addiu   t3, t3, %lo(func_8097BB80) # t3 = 8097BB80
    sb      t2, 0x0158(s0)             # 00000158
    b       lbl_8097BA38
    sw      t3, 0x0154(s0)             # 00000154
lbl_8097BA24:
    jal     func_80033EF4
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFF4
    lui     t4, %hi(func_8097BB24)     # t4 = 80980000
    addiu   t4, t4, %lo(func_8097BB24) # t4 = 8097BB24
    sw      t4, 0x0154(s0)             # 00000154
lbl_8097BA38:
    lw      a0, 0x0054($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0044($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lh      t5, 0x00B6(s0)             # 000000B6
    lh      t7, 0x001C(s0)             # 0000001C
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   t6, t5, 0xC000             # t6 = FFFFC000
    sh      t6, 0x0032(s0)             # 00000032
    bne     t7, $zero, lbl_8097BAD0
    sh      $zero, 0x015A(s0)          # 0000015A
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    lwc1    $f4, 0x0024(s0)            # 00000024
    lui     $at, 0x42A4                # $at = 42A40000
    mtc1    $at, $f16                  # $f16 = 82.00
    add.s   $f8, $f4, $f6
    lw      a2, 0x0054($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f8, 0x0010($sp)
    lwc1    $f10, 0x0028(s0)           # 00000028
    addiu   a3, $zero, 0x00B0          # a3 = 000000B0
    addiu   a0, a2, 0x1C24             # a0 = 00001C24
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0014($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    sw      t9, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    jal     func_800253F0
    swc1    $f4, 0x0018($sp)
    bnel    v0, $zero, lbl_8097BAD4
    lw      $ra, 0x003C($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_8097BAD0:
    lw      $ra, 0x003C($sp)
lbl_8097BAD4:
    lw      s0, 0x0038($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_8097BAE4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      a0, 0x0018($sp)
    jal     func_800C9568
    addiu   a0, a0, 0x015C             # a0 = 0000015C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097BB24:
    sw      a1, 0x0004($sp)
    lw      v0, 0x0118(a0)             # 00000118
    beql    v0, $zero, lbl_8097BB78
    sw      $zero, 0x0118(a0)          # 00000118
    lw      t6, 0x0130(v0)             # 00000130
    lui     $at, 0xC120                # $at = C1200000
    beql    t6, $zero, lbl_8097BB78
    sw      $zero, 0x0118(a0)          # 00000118
    lwc1    $f4, 0x0024(v0)            # 00000024
    mtc1    $at, $f6                   # $f6 = -10.00
    lui     $at, 0x42A4                # $at = 42A40000
    mtc1    $at, $f16                  # $f16 = 82.00
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0024(a0)            # 00000024
    lwc1    $f10, 0x0028(v0)           # 00000028
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0028(a0)           # 00000028
    lwc1    $f4, 0x002C(v0)            # 0000002C
    jr      $ra
    swc1    $f4, 0x002C(a0)            # 0000002C
lbl_8097BB74:
    sw      $zero, 0x0118(a0)          # 00000118
lbl_8097BB78:
    jr      $ra
    nop


func_8097BB80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     a1, 0x0159(a3)             # 00000159
    sw      a3, 0x0020($sp)
    jal     func_8002049C
    lw      a0, 0x0024($sp)
    beq     v0, $zero, lbl_8097BBE8
    lw      a3, 0x0020($sp)
    lbu     v0, 0x0158(a3)             # 00000158
    addiu   t7, $zero, 0x0082          # t7 = 00000082
    lui     t8, %hi(func_8097BBF8)     # t8 = 80980000
    beq     v0, $zero, lbl_8097BBC4
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a3)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8097BBC4:
    bne     v0, $zero, lbl_8097BBE8
    addiu   t8, t8, %lo(func_8097BBF8) # t8 = 8097BBF8
    sb      t7, 0x0158(a3)             # 00000158
    sw      t8, 0x0154(a3)             # 00000154
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0024($sp)
    addiu   a1, $zero, 0x0D3E          # a1 = 00000D3E
    jal     func_8006B6FC
    addiu   a2, $zero, 0x03E7          # a2 = 000003E7
lbl_8097BBE8:
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_8097BBF8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0158(a0)             # 00000158
    lui     $at, 0x4F80                # $at = 4F800000
    beq     v0, $zero, lbl_8097BC1C
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a0)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8097BC1C:
    mtc1    v0, $f4                    # $f4 = 0.00
    bgez    v0, lbl_8097BC34
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8097BC34:
    lui     $at, %hi(var_8097C2F0)     # $at = 80980000
    lwc1    $f10, %lo(var_8097C2F0)($at)
    sw      a0, 0x0018($sp)
    mul.s   $f12, $f6, $f10
    jal     func_800CF470
    nop
    lui     $at, 0x45C0                # $at = 45C00000
    mtc1    $at, $f16                  # $f16 = 6144.00
    lw      a0, 0x0018($sp)
    lui     t1, %hi(func_8097BC94)     # t1 = 80980000
    mul.s   $f18, $f0, $f16
    lbu     t9, 0x0158(a0)             # 00000158
    addiu   t0, $zero, 0x0032          # t0 = 00000032
    addiu   t1, t1, %lo(func_8097BC94) # t1 = 8097BC94
    trunc.w.s $f4, $f18
    mfc1    t8, $f4
    bne     t9, $zero, lbl_8097BC84
    sh      t8, 0x015A(a0)             # 0000015A
    sb      t0, 0x0158(a0)             # 00000158
    sw      t1, 0x0154(a0)             # 00000154
lbl_8097BC84:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097BC94:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lbu     v0, 0x0158(s0)             # 00000158
    beq     v0, $zero, lbl_8097BCBC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(s0)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8097BCBC:
    bne     v0, $zero, lbl_8097BCCC
    addiu   t7, $zero, 0x0032          # t7 = 00000032
    sb      t7, 0x0158(s0)             # 00000158
    andi    v0, t7, 0x00FF             # v0 = 00000032
lbl_8097BCCC:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    v0, lbl_8097BCE8
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_8097BCE8:
    lui     $at, %hi(var_8097C2F4)     # $at = 80980000
    lwc1    $f10, %lo(var_8097C2F4)($at)
    mul.s   $f12, $f6, $f10
    jal     func_800CF470
    nop
    lui     $at, %hi(var_8097C2F8)     # $at = 80980000
    lwc1    $f14, %lo(var_8097C2F8)($at)
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f16                  # $f16 = 50.00
    lwc1    $f12, 0x0008(s0)           # 00000008
    lwc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x000C(s0)            # 0000000C
    sub.s   $f2, $f12, $f6
    lui     $at, %hi(var_8097C2FC)     # $at = 80980000
    c.lt.s  $f14, $f2
    add.s   $f8, $f18, $f4
    bc1f    lbl_8097BD44
    swc1    $f8, 0x0028(s0)            # 00000028
    sub.s   $f10, $f12, $f14
    mtc1    $zero, $f16                # $f16 = 0.00
    swc1    $f10, 0x0024(s0)           # 00000024
    swc1    $f16, 0x0068(s0)           # 00000068
lbl_8097BD44:
    lwc1    $f18, %lo(var_8097C2FC)($at)
    c.lt.s  $f18, $f2
    nop
    bc1fl   lbl_8097BD98
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    jal     func_8009CB08
    lw      a0, 0x0024($sp)
    bne     v0, $zero, lbl_8097BD94
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    mtc1    $zero, $f4                 # $f4 = 0.00
    sb      t8, 0x0158(s0)             # 00000158
    addiu   a1, $zero, 0x5071          # a1 = 00005071
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      a0, 0x0024($sp)
    jal     func_800DCE14
    or      a2, $zero, $zero           # a2 = 00000000
    lui     t9, %hi(func_8097BE58)     # t9 = 80980000
    addiu   t9, t9, %lo(func_8097BE58) # t9 = 8097BE58
    b       lbl_8097BDA8
    sw      t9, 0x0154(s0)             # 00000154
lbl_8097BD94:
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
lbl_8097BD98:
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    jal     func_8006385C
    lui     a1, 0x4080                 # a1 = 40800000
lbl_8097BDA8:
    lw      v0, 0x011C(s0)             # 0000011C
    beql    v0, $zero, lbl_8097BDF4
    sw      $zero, 0x011C(s0)          # 0000011C
    lw      t0, 0x0130(v0)             # 00000130
    lui     $at, %hi(var_8097C300)     # $at = 80980000
    beql    t0, $zero, lbl_8097BDF4
    sw      $zero, 0x011C(s0)          # 0000011C
    lh      t1, 0x00B8(v0)             # 000000B8
    lwc1    $f8, %lo(var_8097C300)($at)
    lwc1    $f6, 0x0068(s0)            # 00000068
    mtc1    t1, $f16                   # $f16 = 0.00
    mul.s   $f10, $f8, $f6
    cvt.s.w $f18, $f16
    add.s   $f4, $f18, $f10
    trunc.w.s $f8, $f4
    mfc1    t3, $f8
    b       lbl_8097BDF4
    sh      t3, 0x00B8(v0)             # 000000B8
    sw      $zero, 0x011C(s0)          # 0000011C
lbl_8097BDF4:
    lbu     t4, 0x0158(s0)             # 00000158
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_8097BE14
    cvt.s.w $f16, $f6
    mtc1    $at, $f18                  # $f18 = 4294967000.00
    nop
    add.s   $f16, $f16, $f18
lbl_8097BE14:
    lui     $at, %hi(var_8097C304)     # $at = 80980000
    lwc1    $f10, %lo(var_8097C304)($at)
    mul.s   $f12, $f16, $f10
    jal     func_800CF470
    nop
    lui     $at, 0x45C0                # $at = 45C00000
    mtc1    $at, $f4                   # $f4 = 6144.00
    nop
    mul.s   $f8, $f0, $f4
    trunc.w.s $f6, $f8
    mfc1    t6, $f6
    nop
    sh      t6, 0x015A(s0)             # 0000015A
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp += 0x20


func_8097BE58:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lbu     v0, 0x0158(a3)             # 00000158
    addiu   a0, a3, 0x015A             # a0 = 0000015A
    or      a1, $zero, $zero           # a1 = 00000000
    beq     v0, $zero, lbl_8097BE84
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sb      t6, 0x0158(a3)             # 00000158
    andi    v0, t6, 0x00FF             # v0 = 000000FF
lbl_8097BE84:
    bne     v0, $zero, lbl_8097BE9C
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    lui     t8, %hi(func_8097BEB4)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097BEB4) # t8 = 8097BEB4
    sb      t7, 0x0158(a3)             # 00000158
    sw      t8, 0x0154(a3)             # 00000154
lbl_8097BE9C:
    jal     func_80063704
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097BEB4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     v0, 0x0158(a0)             # 00000158
    lui     $at, 0xBF80                # $at = BF800000
    lui     t0, %hi(func_8097BF44)     # t0 = 80980000
    beq     v0, $zero, lbl_8097BEE4
    or      v1, v0, $zero              # v1 = 00000000
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    andi    v0, t6, 0x00FF             # v0 = 000000FF
    or      v1, v0, $zero              # v1 = 000000FF
    sb      t6, 0x0158(a0)             # 00000158
lbl_8097BEE4:
    bgez    v1, lbl_8097BEF8
    andi    t7, v1, 0x0003             # t7 = 00000003
    beq     t7, $zero, lbl_8097BEF8
    nop
    addiu   t7, t7, 0xFFFC             # t7 = FFFFFFFF
lbl_8097BEF8:
    sll     t8, t7,  2
    subu    t8, t8, t7
    addiu   t9, t8, 0xFFFA             # t9 = FFFFFFFA
    mtc1    t9, $f4                    # $f4 = NaN
    lwc1    $f8, 0x000C(a0)            # 0000000C
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    bne     v0, $zero, lbl_8097BF2C
    swc1    $f10, 0x0028(a0)           # 00000028
    mtc1    $at, $f16                  # $f16 = -1.00
    addiu   t0, t0, %lo(func_8097BF44) # t0 = 8097BF44
    sw      t0, 0x0154(a0)             # 00000154
    swc1    $f16, 0x006C(a0)           # 0000006C
lbl_8097BF2C:
    jal     func_8002313C
    addiu   a1, $zero, 0x205C          # a1 = 0000205C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097BF44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lwc1    $f6, 0x000C(a0)            # 0000000C
    lwc1    $f8, 0x0028(a0)            # 00000028
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    $at, $f4                   # $f4 = 2000.00
    sub.s   $f10, $f6, $f8
    addiu   a1, $zero, 0x205C          # a1 = 0000205C
    c.lt.s  $f4, $f10
    nop
    bc1f    lbl_8097BFAC
    nop
    jal     func_80020EB4
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lw      a1, 0x011C(a0)             # 0000011C
    beql    a1, $zero, lbl_8097BFF8
    lw      $ra, 0x0014($sp)
    lw      t6, 0x0130(a1)             # 00000130
    beql    t6, $zero, lbl_8097BFF8
    lw      $ra, 0x0014($sp)
    jal     func_80020EB4
    or      a0, a1, $zero              # a0 = 00000000
    b       lbl_8097BFF8
    lw      $ra, 0x0014($sp)
lbl_8097BFAC:
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f16                  # $f16 = 500.00
    lwc1    $f18, 0x000C(a0)           # 0000000C
    lwc1    $f6, 0x0028(a0)            # 00000028
    sub.s   $f8, $f18, $f6
    c.lt.s  $f16, $f8
    nop
    bc1fl   lbl_8097BFF8
    lw      $ra, 0x0014($sp)
    jal     func_80035364
    nop
    beql    v0, $zero, lbl_8097BFF8
    lw      $ra, 0x0014($sp)
    jal     func_8009D9B8
    lw      a0, 0x001C($sp)
    lw      $ra, 0x0014($sp)
lbl_8097BFF8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097C004:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      a0, 0x0018($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    bnel    t6, $zero, lbl_8097C038
    lw      $ra, 0x0014($sp)
    jal     func_8002121C
    nop
    lw      $ra, 0x0014($sp)
lbl_8097C038:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_8097C044:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    lh      t6, 0x001C(s2)             # 0000001C
    bnel    t6, $zero, lbl_8097C1E0
    lw      s0, 0x02C0(s1)             # 000002C0
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x005C($sp)
    lw      a1, 0x005C($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, 0x0601                 # t1 = 06010000
    addiu   t1, t1, 0xD330             # t1 = 0600D330
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0004(s0)             # 00000004
    sw      t0, 0x0000(s0)             # 00000000
    lh      t2, 0x015A(s2)             # 0000015A
    lui     $at, %hi(var_8097C308)     # $at = 80980000
    lwc1    $f8, %lo(var_8097C308)($at)
    mtc1    t2, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_8097C30C)     # $at = 80980000
    lwc1    $f12, %lo(var_8097C30C)($at)
    cvt.s.w $f6, $f4
    lui     $at, 0x441B                # $at = 441B0000
    mtc1    $at, $f14                  # $f14 = 620.00
    lui     a2, 0x448F                 # a2 = 448F0000
    ori     a2, a2, 0xC000             # a2 = 448FC000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f10, $f6, $f8
    jal     func_800AA7F4
    swc1    $f10, 0x0068($sp)
    lwc1    $f12, 0x0068($sp)
    jal     func_800AAD4C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0054($sp)
    lw      a1, 0x0054($sp)
    mtc1    $zero, $f12                # $f12 = 0.00
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x5A70             # a0 = 06005A70
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      a0, 0x0004(s0)             # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lui     a2, 0xC50F                 # a2 = C50F0000
    ori     a2, a2, 0xC000             # a2 = C50FC000
    mov.s   $f14, $f12
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    sw      a0, 0x002C($sp)
    lwc1    $f0, 0x0068($sp)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    add.s   $f12, $f0, $f0
    jal     func_800AAD4C
    neg.s   $f12, $f12
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x004C($sp)
    lw      a1, 0x004C($sp)
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t0, 0xDE00                 # t0 = DE000000
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t0, 0x0000(s0)             # 00000000
    lw      t1, 0x002C($sp)
    sw      t1, 0x0004(s0)             # 00000004
    b       lbl_8097C22C
    lw      v0, 0x0154(s2)             # 00000154
    lw      s0, 0x02C0(s1)             # 000002C0
lbl_8097C1E0:
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0044($sp)
    lw      a1, 0x0044($sp)
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0x0601                 # t6 = 06010000
    addiu   t6, t6, 0xE910             # t6 = 0600E910
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    sw      t6, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lw      v0, 0x0154(s2)             # 00000154
lbl_8097C22C:
    lui     t7, %hi(func_8097BBF8)     # t7 = 80980000
    addiu   t7, t7, %lo(func_8097BBF8) # t7 = 8097BBF8
    beq     t7, v0, lbl_8097C244
    lui     t8, %hi(func_8097BC94)     # t8 = 80980000
    addiu   t8, t8, %lo(func_8097BC94) # t8 = 8097BC94
    bne     t8, v0, lbl_8097C29C
lbl_8097C244:
    lui     $at, %hi(var_8097C310)     # $at = 80980000
    lwc1    $f18, %lo(var_8097C310)($at)
    lwc1    $f16, 0x0024(s2)           # 00000024
    lui     $at, 0x4278                # $at = 42780000
    mtc1    $at, $f8                   # $f8 = 62.00
    add.s   $f4, $f16, $f18
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1D60           # $at = 00011D60
    addiu   s0, s2, 0x015C             # s0 = 0000015C
    swc1    $f4, 0x0030($sp)
    lwc1    $f6, 0x0028(s2)            # 00000028
    or      a2, s0, $zero              # a2 = 0000015C
    addu    a0, s3, $at
    add.s   $f10, $f6, $f8
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFC0
    swc1    $f10, 0x0034($sp)
    lwc1    $f16, 0x002C(s2)           # 0000002C
    jal     func_8008ED08
    swc1    $f16, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 0000015C
    jal     func_80064780
    addiu   a1, $zero, 0x204F          # a1 = 0000204F
lbl_8097C29C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    nop
    nop

.section .data

var_8097C2C0: .word 0x00B00100, 0x00000030, 0x00690000, 0x00000168
.word func_8097B9A0
.word func_8097BAE4
.word func_8097C004
.word func_8097C044
var_8097C2E0: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_8097C2F0: .word 0x3E00ADFD
var_8097C2F4: .word 0x3E00ADFD
var_8097C2F8: .word 0x45EF1000
var_8097C2FC: .word 0x45ED8000
var_8097C300: .word 0x424989D9
var_8097C304: .word 0x3E00ADFD
var_8097C308: .word 0x38C90FDB
var_8097C30C: .word 0xC5656000
var_8097C310: .word 0xC3B78000, 0x00000000, 0x00000000, 0x00000000

