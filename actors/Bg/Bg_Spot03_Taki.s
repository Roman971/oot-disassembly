.section .text
func_80A79180:
    or      a2, a0, $zero              # a2 = 00000000
    bne     a1, $zero, lbl_80A791C8
    lui     v1, 0x0600                 # v1 = 06000000
    lui     v1, 0x0600                 # v1 = 06000000
    addiu   v1, v1, 0x0800             # v1 = 06000800
    sll     t6, v1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    lui     t9, 0x8012                 # t9 = 80120000
    addu    t9, t9, t8
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t9, 0x0C38(t9)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t0, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, t9, t0
    beq     $zero, $zero, lbl_80A791FC
    addu    v0, v0, $at
lbl_80A791C8:
    addiu   v1, v1, 0x0990             # v1 = 06001190
    sll     t1, v1,  4
    srl     t2, t1, 28
    sll     t3, t2,  2
    lui     t4, 0x8012                 # t4 = 80120000
    addu    t4, t4, t3
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t4, 0x0C38(t4)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t5, v1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, t4, t5
    addu    v0, v0, $at
lbl_80A791FC:
    cfc1    t6, $f31
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    ctc1    t7, $f31
    lwc1    $f4, 0x0160(a2)            # 00000160
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    beql    t7, $zero, lbl_80A79270
    mfc1    t7, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t7, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t7, $f31
    nop
    andi    t7, t7, 0x0078             # t7 = 00000000
    bne     t7, $zero, lbl_80A79264
    nop
    mfc1    t7, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A7927C
    or      t7, t7, $at                # t7 = 80000000
lbl_80A79264:
    beq     $zero, $zero, lbl_80A7927C
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    mfc1    t7, $f6
lbl_80A79270:
    nop
    bltz    t7, lbl_80A79264
    nop
lbl_80A7927C:
    ctc1    t6, $f31
    sb      t7, 0x00AF(v0)             # 000000AF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lwc1    $f8, 0x0160(a2)            # 00000160
    cfc1    t9, $f31
    ctc1    t0, $f31
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    sll     t8, v1,  4
    cvt.w.s $f10, $f8
    addu    a0, v0, t8
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80A79304
    mfc1    t0, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t0, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80A792F8
    nop
    mfc1    t0, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A79310
    or      t0, t0, $at                # t0 = 80000000
lbl_80A792F8:
    beq     $zero, $zero, lbl_80A79310
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f10
lbl_80A79304:
    nop
    bltz    t0, lbl_80A792F8
    nop
lbl_80A79310:
    ctc1    t9, $f31
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t0, 0x00AF(a0)             # 000000AF
    lwc1    $f16, 0x0160(a2)           # 00000160
    cfc1    t1, $f31
    ctc1    t2, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f18, $f16
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    beql    t2, $zero, lbl_80A7938C
    mfc1    t2, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    t2, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    t2, $f31
    nop
    andi    t2, t2, 0x0078             # t2 = 00000000
    bne     t2, $zero, lbl_80A79380
    nop
    mfc1    t2, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A79398
    or      t2, t2, $at                # t2 = 80000000
lbl_80A79380:
    beq     $zero, $zero, lbl_80A79398
    addiu   t2, $zero, 0xFFFF          # t2 = FFFFFFFF
    mfc1    t2, $f18
lbl_80A7938C:
    nop
    bltz    t2, lbl_80A79380
    nop
lbl_80A79398:
    ctc1    t1, $f31
    sb      t2, 0x00BF(a0)             # 000000BF
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    lwc1    $f4, 0x0160(a2)            # 00000160
    cfc1    t3, $f31
    ctc1    t4, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f6, $f4
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    beql    t4, $zero, lbl_80A79414
    mfc1    t4, $f6
    mtc1    $at, $f6                   # $f6 = 2147484000.00
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sub.s   $f6, $f4, $f6
    ctc1    t4, $f31
    nop
    cvt.w.s $f6, $f6
    cfc1    t4, $f31
    nop
    andi    t4, t4, 0x0078             # t4 = 00000000
    bne     t4, $zero, lbl_80A79408
    nop
    mfc1    t4, $f6
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A79420
    or      t4, t4, $at                # t4 = 80000000
lbl_80A79408:
    beq     $zero, $zero, lbl_80A79420
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    mfc1    t4, $f6
lbl_80A79414:
    nop
    bltz    t4, lbl_80A79408
    nop
lbl_80A79420:
    ctc1    t3, $f31
    sb      t4, 0x00CF(a0)             # 000000CF
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    lwc1    $f8, 0x0160(a2)            # 00000160
    cfc1    t5, $f31
    ctc1    t6, $f31
    lui     $at, 0x4F00                # $at = 4F000000
    cvt.w.s $f10, $f8
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    beql    t6, $zero, lbl_80A7949C
    mfc1    t6, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sub.s   $f10, $f8, $f10
    ctc1    t6, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    t6, $f31
    nop
    andi    t6, t6, 0x0078             # t6 = 00000000
    bne     t6, $zero, lbl_80A79490
    nop
    mfc1    t6, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80A794A8
    or      t6, t6, $at                # t6 = 80000000
lbl_80A79490:
    beq     $zero, $zero, lbl_80A794A8
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    mfc1    t6, $f10
lbl_80A7949C:
    nop
    bltz    t6, lbl_80A79490
    nop
lbl_80A794A8:
    ctc1    t5, $f31
    sb      t6, 0x00DF(a0)             # 000000DF
    nop
    jr      $ra
    nop


func_80A794BC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    sw      $zero, 0x0024($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t7, t6, 0x003F             # t7 = 00000000
    jal     func_80035260
    sh      t7, 0x015C(s0)             # 0000015C
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x0C98             # a0 = 06000C98
    jal     func_80033EF4
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    lw      a0, 0x0034($sp)
    or      a2, s0, $zero              # a2 = 00000000
    lw      a3, 0x0024($sp)
    jal     func_800313A4              # DynaPolyInfo_setActor
    addiu   a1, a0, 0x0810             # a1 = 00000810
    lui     a1, %hi(var_80A79A10)      # a1 = 80A80000
    sw      v0, 0x013C(s0)             # 0000013C
    addiu   a1, a1, %lo(var_80A79A10)  # a1 = 80A79A10
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    sb      $zero, 0x0164(s0)          # 00000164
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_80A79180
    swc1    $f4, 0x0160(s0)            # 00000160
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A79180
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     t8, %hi(func_80A795A0)     # t8 = 80A80000
    addiu   t8, t8, %lo(func_80A795A0) # t8 = 80A795A0
    sw      t8, 0x0154(s0)             # 00000154
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A7956C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    jal     func_80031638              # DynaPolyInfo_delReserve
    lw      a2, 0x013C(t6)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A795A0:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lbu     v0, 0x015A(s0)             # 0000015A
    or      a0, a3, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $zero, lbl_80A79608
    nop
    lhu     a1, 0x015C(s0)             # 0000015C
    jal     func_8002049C
    sw      a3, 0x002C($sp)
    beq     v0, $zero, lbl_80A79754
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   t7, $zero, 0x0028          # t7 = 00000028
    sb      t6, 0x015A(s0)             # 0000015A
    sh      t7, 0x0158(s0)             # 00000158
    sw      $zero, 0x0010($sp)
    lw      a0, 0x002C($sp)
    addiu   a1, $zero, 0x1004          # a1 = 00001004
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    jal     func_8006B6FC
    or      a3, $zero, $zero           # a3 = 00000000
    beq     $zero, $zero, lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A79608:
    bnel    v0, $at, lbl_80A79638
    addiu   $at, $zero, 0x0002         # $at = 00000002
    lh      t8, 0x0158(s0)             # 00000158
    addiu   t1, $zero, 0x0002          # t1 = 00000002
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0158(s0)             # 00000158
    lh      t0, 0x0158(s0)             # 00000158
    bgezl   t0, lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A79754
    sb      t1, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x0002         # $at = 00000002
lbl_80A79638:
    bnel    v0, $at, lbl_80A796B0
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lwc1    $f0, 0x0160(s0)            # 00000160
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x40A0                # $at = 40A00000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f6                   # $f6 = 5.00
    mtc1    $zero, $f10                # $f10 = 0.00
    or      a0, a3, $zero              # a0 = 00000000
    sub.s   $f8, $f0, $f6
    addiu   a1, a3, 0x0810             # a1 = 00000810
    swc1    $f8, 0x0160(s0)            # 00000160
    lwc1    $f16, 0x0160(s0)           # 00000160
    c.le.s  $f16, $f10
    nop
    bc1fl   lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800314D8
    lw      a2, 0x013C(s0)             # 0000013C
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   t2, $zero, 0x0190          # t2 = 00000190
    addiu   t3, $zero, 0x0003          # t3 = 00000003
    sh      t2, 0x0158(s0)             # 00000158
    sb      t3, 0x015A(s0)             # 0000015A
    beq     $zero, $zero, lbl_80A79754
    swc1    $f18, 0x0160(s0)           # 00000160
    addiu   $at, $zero, 0x0003         # $at = 00000003
lbl_80A796B0:
    bnel    v0, $at, lbl_80A796E0
    addiu   $at, $zero, 0x0004         # $at = 00000004
    lh      t4, 0x0158(s0)             # 00000158
    addiu   t7, $zero, 0x0004          # t7 = 00000004
    addiu   t5, t4, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0158(s0)             # 00000158
    lh      t6, 0x0158(s0)             # 00000158
    bgezl   t6, lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A79754
    sb      t7, 0x015A(s0)             # 0000015A
    addiu   $at, $zero, 0x0004         # $at = 00000004
lbl_80A796E0:
    bne     v0, $at, lbl_80A79754
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    lwc1    $f0, 0x0160(s0)            # 00000160
    lui     $at, 0x40A0                # $at = 40A00000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $at, $f4                   # $f4 = 5.00
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x0810             # a1 = 00000810
    add.s   $f6, $f0, $f4
    swc1    $f6, 0x0160(s0)            # 00000160
    lwc1    $f8, 0x0160(s0)            # 00000160
    c.le.s  $f2, $f8
    nop
    bc1fl   lbl_80A79758
    or      a0, s0, $zero              # a0 = 00000000
    lw      a2, 0x013C(s0)             # 0000013C
    jal     func_80031530
    sw      a3, 0x002C($sp)
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f2                   # $f2 = 255.00
    sb      $zero, 0x015A(s0)          # 0000015A
    lhu     a1, 0x015C(s0)             # 0000015C
    swc1    $f2, 0x0160(s0)            # 00000160
    jal     func_80020510
    lw      a0, 0x002C($sp)
lbl_80A79754:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A79758:
    jal     func_80A79180
    lbu     a1, 0x0164(s0)             # 00000164
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80A79774:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0154(a0)             # 00000154
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A79798:
    addiu   $sp, $sp, 0xFF88           # $sp = FFFFFF88
    sw      s2, 0x003C($sp)
    sw      s1, 0x0038($sp)
    or      s1, a1, $zero              # s1 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s3, 0x0040($sp)
    sw      s0, 0x0034($sp)
    lui     s3, 0x0001                 # s3 = 00010000
    addu    s3, s3, s1
    lw      s0, 0x0000(s1)             # 00000000
    lw      s3, 0x1DE4(s3)             # 00011DE4
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0060($sp)
    lw      a2, 0x0060($sp)
    sw      v0, 0x0004(a2)             # 00000004
    jal     func_8007E2C0
    lw      a0, 0x0000(s1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0020             # t9 = DB060020
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    sll     a3, s3,  2
    addu    a3, a3, s3
    addiu   t2, $zero, 0x0040          # t2 = 00000040
    addiu   t3, $zero, 0x0040          # t3 = 00000040
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0040          # t6 = 00000040
    sw      t6, 0x0028($sp)
    sw      t5, 0x0024($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    sw      a3, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t0, 0x005C($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    or      a1, $zero, $zero           # a1 = 00000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x0B20             # t8 = 06000B20
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lbu     t9, 0x0164(s2)             # 00000164
    sll     a3, s3,  2
    subu    a3, a3, s3
    bne     t9, $zero, lbl_80A798CC
    or      a2, s3, $zero              # a2 = 00010000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0x0101                 # t3 = 01010000
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    addiu   t4, t4, 0x0800             # t4 = 06000800
    ori     t3, t3, 0x9032             # t3 = 01019032
    sw      t3, 0x0000(v1)             # 00000000
    sw      t4, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80A798F4
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80A798CC:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x0101                 # t6 = 01010000
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    addiu   t7, t7, 0x0990             # t7 = 06000990
    ori     t6, t6, 0x9032             # t6 = 01019032
    sw      t6, 0x0000(v1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
lbl_80A798F4:
    lui     t9, 0x0600                 # t9 = 06000000
    addiu   t9, t9, 0x0BC0             # t9 = 06000BC0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s1)             # 00000000
    addiu   t4, $zero, 0x0040          # t4 = 00000040
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    subu    t7, $zero, s3
    addiu   t8, $zero, 0x0040          # t8 = 00000040
    addiu   t9, $zero, 0x0040          # t9 = 00000040
    sw      t9, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      a3, 0x0020($sp)
    jal     func_8007EB84
    sw      v1, 0x0048($sp)
    lw      t0, 0x0048($sp)
    lui     t3, 0xDE00                 # t3 = DE000000
    addiu   a0, s2, 0x00E4             # a0 = 000000E4
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0x0600                 # t4 = 06000000
    addiu   t4, t4, 0x1580             # t4 = 06001580
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lbu     t5, 0x0164(s2)             # 00000164
    lbu     v0, 0x015A(s2)             # 0000015A
    sltiu   t6, t5, 0x0001
    blez    v0, lbl_80A799C0
    sb      t6, 0x0164(s2)             # 00000164
    slti    $at, v0, 0x0004
    beq     $at, $zero, lbl_80A799C0
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800C5420
    addiu   a0, s2, 0x00E4             # a0 = 000000E4
    beq     $zero, $zero, lbl_80A799CC
    lw      $ra, 0x0044($sp)
lbl_80A799C0:
    jal     func_800C5420
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      $ra, 0x0044($sp)
lbl_80A799CC:
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80A799F0: .word 0x011F0100, 0x00000030, 0x01120000, 0x00000168
.word func_80A794BC
.word func_80A7956C
.word func_80A79774
.word func_80A79798
var_80A79A10: .word 0x48500064, 0x00000000, 0x00000000, 0x00000000

.section .rodata


