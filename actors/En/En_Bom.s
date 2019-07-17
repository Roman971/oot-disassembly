.section .text
func_80870A00:
    sw      a1, 0x01F4(a0)             # 000001F4
    jr      $ra
    nop


func_80870A0C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     a1, %hi(var_80871790)      # a1 = 80870000
    addiu   a1, a1, %lo(var_80871790)  # a1 = 80871790
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a1, 0x442F                 # a1 = 442F0000
    jal     func_8001EC20
    lui     a3, 0x4180                 # a3 = 41800000
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    addiu   t0, $zero, 0x0007          # t0 = 00000007
    sb      t6, 0x00AE(s0)             # 000000AE
    sh      t7, 0x00A8(s0)             # 000000A8
    sh      t8, 0x00AA(s0)             # 000000AA
    sh      t9, 0x01E8(s0)             # 000001E8
    sh      t0, 0x01EA(s0)             # 000001EA
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x002C($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0188             # a1 = 00000188
    sw      a1, 0x0030($sp)
    jal     func_8004A484
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80871730)      # a3 = 80870000
    addiu   a3, a3, %lo(var_80871730)  # a3 = 80871730
    lw      a0, 0x003C($sp)
    lw      a1, 0x002C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_80871780)      # a3 = 80870000
    addiu   t1, s0, 0x01A8             # t1 = 000001A8
    sw      t1, 0x0010($sp)
    addiu   a3, a3, %lo(var_80871780)  # a3 = 80871780
    lw      a0, 0x003C($sp)
    lw      a1, 0x0030($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lh      t7, 0x00B8(s0)             # 000000B8
    lh      t3, 0x00B8(s0)             # 000000B8
    lbu     t2, 0x01AD(s0)             # 000001AD
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sh      t8, 0x00B8(s0)             # 000000B8
    lh      v0, 0x00B8(s0)             # 000000B8
    andi    t4, t3, 0xFF00             # t4 = 00000000
    sra     t5, t4,  8
    addu    t6, t2, t5
    andi    t9, v0, 0x0080             # t9 = 00000000
    beq     t9, $zero, lbl_80870B00
    sb      t6, 0x01AD(s0)             # 000001AD
    ori     t0, v0, 0xFF00             # t0 = 0000FF00
    sh      t0, 0x00B8(s0)             # 000000B8
lbl_80870B00:
    lui     a1, %hi(func_80870B64)     # a1 = 80870000
    addiu   a1, a1, %lo(func_80870B64) # a1 = 80870B64
    jal     func_80870A00
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80870B24:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004A550
    addiu   a1, a1, 0x0188             # a1 = 00000188
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80870B64:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80870BA4
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80870D34)     # a1 = 80870000
    jal     func_80870A00
    addiu   a1, a1, %lo(func_80870D34) # a1 = 80870D34
    addiu   t6, $zero, 0xFFFF          # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80870D20
    sb      t6, 0x0003(s0)             # 00000003
lbl_80870BA4:
    mtc1    $zero, $f2                 # $f2 = 0.00
    lwc1    $f0, 0x0060(s0)            # 00000060
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80870BD8
    lwc1    $f6, 0x0068(s0)            # 00000068
    lhu     t7, 0x0088(s0)             # 00000088
    andi    t8, t7, 0x0010             # t8 = 00000000
    beql    t8, $zero, lbl_80870BD8
    lwc1    $f6, 0x0068(s0)            # 00000068
    neg.s   $f4, $f0
    swc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x0068(s0)            # 00000068
lbl_80870BD8:
    lhu     v0, 0x0088(s0)             # 00000088
    c.eq.s  $f2, $f6
    andi    t9, v0, 0x0008             # t9 = 00000000
    bc1tl   lbl_80870C70
    andi    t5, v0, 0x0001             # t5 = 00000000
    beql    t9, $zero, lbl_80870C70
    andi    t5, v0, 0x0001             # t5 = 00000000
    lh      v1, 0x007E(s0)             # 0000007E
    lh      t0, 0x0032(s0)             # 00000032
    subu    a0, v1, t0
    sll     v0, a0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80870C18
    subu    a1, $zero, v0
    beq     $zero, $zero, lbl_80870C18
    or      a1, v0, $zero              # a1 = 00000000
lbl_80870C18:
    slti    $at, a1, 0x4001
    bne     $at, $zero, lbl_80870C34
    addiu   a1, $zero, 0x282F          # a1 = 0000282F
    addu    t1, a0, v1
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    addu    t2, t1, $at
    sh      t2, 0x0032(s0)             # 00000032
lbl_80870C34:
    jal     func_80022FD0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, %hi(var_808717D0)     # $at = 80870000
    lwc1    $f10, %lo(var_808717D0)($at)
    lwc1    $f8, 0x0068(s0)            # 00000068
    lhu     t3, 0x0088(s0)             # 00000088
    mtc1    $zero, $f2                 # $f2 = 0.00
    mul.s   $f16, $f8, $f10
    andi    t4, t3, 0xFFF7             # t4 = 00000000
    sh      t4, 0x0088(s0)             # 00000088
    swc1    $f16, 0x0068(s0)           # 00000068
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t5, v0, 0x0001             # t5 = 00000000
lbl_80870C70:
    bne     t5, $zero, lbl_80870C94
    addiu   a0, s0, 0x0068             # a0 = 00000068
    mfc1    a1, $f2
    lui     a2, 0x3DA3                 # a2 = 3DA30000
    ori     a2, a2, 0xD70A             # a2 = 3DA3D70A
    jal     func_8006385C
    addiu   a0, s0, 0x0068             # a0 = 00000068
    beq     $zero, $zero, lbl_80870D18
    nop
lbl_80870C94:
    mfc1    a1, $f2
    jal     func_8006385C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lhu     t6, 0x0088(s0)             # 00000088
    lui     $at, 0xC040                # $at = C0400000
    andi    t7, t6, 0x0002             # t7 = 00000000
    beql    t7, $zero, lbl_80870D00
    lh      t0, 0x01E8(s0)             # 000001E8
    lwc1    $f18, 0x0060(s0)           # 00000060
    mtc1    $at, $f4                   # $f4 = -3.00
    lw      a0, 0x0024($sp)
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_80870D00
    lh      t0, 0x01E8(s0)             # 000001E8
    jal     func_80022FFC
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, %hi(var_808717D4)     # $at = 80870000
    lwc1    $f8, %lo(var_808717D4)($at)
    lwc1    $f6, 0x0060(s0)            # 00000060
    lhu     t8, 0x0088(s0)             # 00000088
    mul.s   $f10, $f6, $f8
    andi    t9, t8, 0xFFFD             # t9 = 00000000
    sh      t9, 0x0088(s0)             # 00000088
    beq     $zero, $zero, lbl_80870D18
    swc1    $f10, 0x0060(s0)           # 00000060
    lh      t0, 0x01E8(s0)             # 000001E8
lbl_80870D00:
    or      a0, s0, $zero              # a0 = 00000000
    slti    $at, t0, 0x0004
    bne     $at, $zero, lbl_80870D18
    nop
    jal     func_80022D20
    lw      a1, 0x0024($sp)
lbl_80870D18:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
lbl_80870D20:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80870D34:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x0018($sp)
    jal     func_80022D40
    lw      a1, 0x001C($sp)
    beq     v0, $zero, lbl_80870D70
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80870B64)     # a1 = 80870000
    jal     func_80870A00
    addiu   a1, a1, %lo(func_80870B64) # a1 = 80870B64
    lw      a0, 0x0018($sp)
    jal     func_80870B64
    lw      a1, 0x001C($sp)
lbl_80870D70:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80870D80:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x01A4(s0)             # 000001A4
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    addiu   a2, $zero, 0x0014          # a2 = 00000014
    lh      t6, 0x002E(v0)             # 0000002E
    bnel    t6, $zero, lbl_80870DCC
    lh      t9, 0x0036(v0)             # 00000036
    lw      t7, 0x0004(s0)             # 00000004
    lwc1    $f12, 0x0090(s0)           # 00000090
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    ori     t8, t7, 0x0020             # t8 = 00000020
    jal     func_800915CC
    sw      t8, 0x0004(s0)             # 00000004
    lw      v0, 0x01A4(s0)             # 000001A4
    lh      t9, 0x0036(v0)             # 00000036
lbl_80870DCC:
    lh      t0, 0x00B8(s0)             # 000000B8
    addiu   $at, $zero, 0x0001         # $at = 00000001
    addiu   a2, s0, 0x0188             # a2 = 00000188
    addu    t1, t9, t0
    addiu   t2, t1, 0x0008             # t2 = 00000008
    sh      t2, 0x0036(v0)             # 00000036
    lh      t3, 0x001C(s0)             # 0000001C
    lw      a0, 0x0024($sp)
    bne     t3, $at, lbl_80870E00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004BD50              # CollisionCheck_setAT
    addu    a1, a0, $at
lbl_80870E00:
    lw      v0, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, v0, $at
    lh      v1, 0x0AB6(v0)             # 00000AB6
    beq     v1, $zero, lbl_80870E1C
    addiu   t5, v1, 0xFFE7             # t5 = FFFFFFE7
    sh      t5, 0x0AB6(v0)             # 00000AB6
lbl_80870E1C:
    lh      v1, 0x0AB8(v0)             # 00000AB8
    beq     v1, $zero, lbl_80870E2C
    addiu   t6, v1, 0xFFE7             # t6 = FFFFFFE7
    sh      t6, 0x0AB8(v0)             # 00000AB8
lbl_80870E2C:
    lh      v1, 0x0ABA(v0)             # 00000ABA
    beq     v1, $zero, lbl_80870E3C
    addiu   t7, v1, 0xFFE7             # t7 = FFFFFFE7
    sh      t7, 0x0ABA(v0)             # 00000ABA
lbl_80870E3C:
    lh      v1, 0x0AB0(v0)             # 00000AB0
    beq     v1, $zero, lbl_80870E4C
    addiu   t8, v1, 0xFFE7             # t8 = FFFFFFE7
    sh      t8, 0x0AB0(v0)             # 00000AB0
lbl_80870E4C:
    lh      v1, 0x0AB2(v0)             # 00000AB2
    beq     v1, $zero, lbl_80870E5C
    addiu   t9, v1, 0xFFE7             # t9 = FFFFFFE7
    sh      t9, 0x0AB2(v0)             # 00000AB2
lbl_80870E5C:
    lh      v1, 0x0AB4(v0)             # 00000AB4
    beq     v1, $zero, lbl_80870E6C
    addiu   t0, v1, 0xFFE7             # t0 = FFFFFFE7
    sh      t0, 0x0AB4(v0)             # 00000AB4
lbl_80870E6C:
    lh      t1, 0x01E8(s0)             # 000001E8
    lw      t2, 0x0024($sp)
    bnel    t1, $zero, lbl_80870EC0
    lw      $ra, 0x001C($sp)
    lw      v0, 0x1C44(t2)             # 00001C44
    lw      v1, 0x066C(v0)             # 0000066C
    andi    t3, v1, 0x0800             # t3 = 00000000
    beq     t3, $zero, lbl_80870EB4
    nop
    lw      t4, 0x039C(v0)             # 0000039C
    addiu   $at, $zero, 0xF7FF         # $at = FFFFF7FF
    and     t5, v1, $at
    bne     s0, t4, lbl_80870EB4
    nop
    sw      $zero, 0x011C(v0)          # 0000011C
    sw      $zero, 0x039C(v0)          # 0000039C
    sw      $zero, 0x0428(v0)          # 00000428
    sw      t5, 0x066C(v0)             # 0000066C
lbl_80870EB4:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80870EC0:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80870ED0:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0094($sp)
    lui     t7, %hi(var_8087179C)      # t7 = 80870000
    addiu   t7, t7, %lo(var_8087179C)  # t7 = 8087179C
    lw      t9, 0x0000(t7)             # 8087179C
    addiu   t6, $sp, 0x0084            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808717A0
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808717A4
    lui     t3, %hi(var_808717A8)      # t3 = 80870000
    addiu   t3, t3, %lo(var_808717A8)  # t3 = 808717A8
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lw      t5, 0x0000(t3)             # 808717A8
    addiu   t2, $sp, 0x0078            # t2 = FFFFFFE8
    lw      t4, 0x0004(t3)             # 808717AC
    sw      t5, 0x0000(t2)             # FFFFFFE8
    lw      t5, 0x0008(t3)             # 808717B0
    lui     t7, %hi(var_808717B4)      # t7 = 80870000
    addiu   t7, t7, %lo(var_808717B4)  # t7 = 808717B4
    sw      t4, 0x0004(t2)             # FFFFFFEC
    sw      t5, 0x0008(t2)             # FFFFFFF0
    lw      t9, 0x0000(t7)             # 808717B4
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFDC
    lw      t8, 0x0004(t7)             # 808717B8
    sw      t9, 0x0000(t6)             # FFFFFFDC
    lw      t9, 0x0008(t7)             # 808717BC
    lui     t3, %hi(var_808717C0)      # t3 = 80870000
    addiu   t3, t3, %lo(var_808717C0)  # t3 = 808717C0
    sw      t8, 0x0004(t6)             # FFFFFFE0
    sw      t9, 0x0008(t6)             # FFFFFFE4
    lw      t5, 0x0000(t3)             # 808717C0
    addiu   t2, $sp, 0x0054            # t2 = FFFFFFC4
    lw      t4, 0x0004(t3)             # 808717C4
    sw      t5, 0x0000(t2)             # FFFFFFC4
    lw      t5, 0x0008(t3)             # 808717C8
    lui     t6, %hi(var_808717CC)      # t6 = 80870000
    sw      t4, 0x0004(t2)             # FFFFFFC8
    sw      t5, 0x0008(t2)             # FFFFFFCC
    lw      t6, %lo(var_808717CC)(t6)
    lui     $at, %hi(var_808717D8)     # $at = 80870000
    lwc1    $f4, %lo(var_808717D8)($at)
    sw      t6, 0x0050($sp)
    lh      v0, 0x01E8(s0)             # 000001E8
    addiu   $at, $zero, 0x0043         # $at = 00000043
    swc1    $f4, 0x006C(s0)            # 0000006C
    beq     v0, $zero, lbl_80870FA4
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x01E8(s0)             # 000001E8
    lh      v0, 0x01E8(s0)             # 000001E8
lbl_80870FA4:
    bne     v0, $at, lbl_80870FC4
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x0834          # a1 = 00000834
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
lbl_80870FC4:
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    lui     $at, 0x42A0                # $at = 42A00000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.le.s  $f8, $f6
    nop
    bc1tl   lbl_80871024
    sb      t8, 0x01F0(s0)             # 000001F0
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $at, $f16                  # $f16 = 80.00
    c.le.s  $f10, $f0
    nop
    bc1fl   lbl_80871010
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_80871010
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_80871010:
    c.le.s  $f16, $f2
    nop
    bc1fl   lbl_80871028
    lw      t9, 0x01F4(s0)             # 000001F4
    sb      t8, 0x01F0(s0)             # 000001F0
lbl_80871024:
    lw      t9, 0x01F4(s0)             # 000001F4
lbl_80871028:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0094($sp)
    jalr    $ra, t9
    nop
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f18                  # $f18 = 15.00
    addiu   t2, $zero, 0x001F          # t2 = 0000001F
    sw      t2, 0x0014($sp)
    lw      a0, 0x0094($sp)
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x40A0                 # a2 = 40A00000
    lui     a3, 0x4120                 # a3 = 41200000
    jal     func_80021E6C
    swc1    $f18, 0x0010($sp)
    lh      t3, 0x001C(s0)             # 0000001C
    bnel    t3, $zero, lbl_8087144C
    or      a0, s0, $zero              # a0 = 00000000
    lh      t4, 0x01E8(s0)             # 000001E8
    slti    $at, t4, 0x003F
    beq     $at, $zero, lbl_8087113C
    lui     $at, %hi(var_808717DC)     # $at = 80870000
    lwc1    $f4, %lo(var_808717DC)($at)
    addiu   t5, $sp, 0x0060            # t5 = FFFFFFD0
    lui     $at, 0x4188                # $at = 41880000
    swc1    $f4, 0x0058($sp)
    lw      t7, 0x0024(s0)             # 00000024
    mtc1    $at, $f8                   # $f8 = 17.00
    lui     t9, 0x0001                 # t9 = 00010000
    sw      t7, 0x0000(t5)             # FFFFFFD0
    lw      t6, 0x0028(s0)             # 00000028
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0060            # a2 = FFFFFFD0
    sw      t6, 0x0004(t5)             # FFFFFFD4
    lw      t7, 0x002C(s0)             # 0000002C
    addiu   a3, $sp, 0x0084            # a3 = FFFFFFF4
    addiu   t3, $sp, 0x006C            # t3 = FFFFFFDC
    sw      t7, 0x0008(t5)             # FFFFFFD8
    lwc1    $f6, 0x0064($sp)
    lw      t8, 0x0094($sp)
    add.s   $f10, $f6, $f8
    addu    t9, t9, t8
    or      a0, t8, $zero              # a0 = 00000000
    swc1    $f10, 0x0064($sp)
    lw      t9, 0x1DE4(t9)             # 00011DE4
    andi    t2, t9, 0x0001             # t2 = 00000000
    bnel    t2, $zero, lbl_808710F0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001CC7C
    sw      t3, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_808710F0:
    jal     func_80022FD0
    addiu   a1, $zero, 0x100D          # a1 = 0000100D
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f18                  # $f18 = 3.00
    lwc1    $f16, 0x0064($sp)
    addiu   t4, $sp, 0x0050            # t4 = FFFFFFC0
    addiu   t5, $zero, 0x0032          # t5 = 00000032
    add.s   $f4, $f16, $f18
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    swc1    $f4, 0x0064($sp)
    sw      t4, 0x0010($sp)
    sw      t4, 0x0014($sp)
    lw      a0, 0x0094($sp)
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFF4
    jal     func_8001BD94
    addiu   a3, $sp, 0x0054            # a3 = FFFFFFC4
lbl_8087113C:
    addiu   t7, s0, 0x0024             # t7 = 00000024
    sw      t7, 0x0034($sp)
    lbu     t9, 0x014D(s0)             # 0000014D
    andi    t2, t9, 0x0002             # t2 = 00000000
    bnel    t2, $zero, lbl_8087117C
    sh      $zero, 0x01E8(s0)          # 000001E8
    lbu     t8, 0x014E(s0)             # 0000014E
    andi    t3, t8, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80871188
    lh      t6, 0x01E8(s0)             # 000001E8
    lw      t4, 0x0148(s0)             # 00000148
    addiu   $at, $zero, 0x0005         # $at = 00000005
    lbu     t5, 0x0002(t4)             # 00000002
    bnel    t5, $at, lbl_80871188
    lh      t6, 0x01E8(s0)             # 000001E8
    sh      $zero, 0x01E8(s0)          # 000001E8
lbl_8087117C:
    beq     $zero, $zero, lbl_808711B0
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      t6, 0x01E8(s0)             # 000001E8
lbl_80871188:
    lw      a0, 0x0094($sp)
    lw      a1, 0x0034($sp)
    slti    $at, t6, 0x0065
    bne     $at, $zero, lbl_808711B0
    lui     a2, 0x41F0                 # a2 = 41F00000
    jal     func_80079A20
    lui     a3, 0x4248                 # a3 = 42480000
    beq     v0, $zero, lbl_808711B0
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sh      t7, 0x01E8(s0)             # 000001E8
lbl_808711B0:
    lui     $at, %hi(var_808717E0)     # $at = 80870000
    lwc1    $f6, %lo(var_808717E0)($at)
    lw      t2, 0x0034($sp)
    addiu   t9, $sp, 0x0060            # t9 = FFFFFFD0
    swc1    $f6, 0x0058($sp)
    lw      t3, 0x0000(t2)             # 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    sw      t3, 0x0000(t9)             # FFFFFFD0
    lw      t8, 0x0004(t2)             # 00000004
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t8, 0x0004(t9)             # FFFFFFD4
    lw      t3, 0x0008(t2)             # 00000008
    sw      t3, 0x0008(t9)             # FFFFFFD8
    lwc1    $f8, 0x0064($sp)
    add.s   $f16, $f8, $f10
    swc1    $f16, 0x0064($sp)
    lh      v0, 0x01E8(s0)             # 000001E8
    beq     v0, $at, lbl_80871210
    addiu   $at, $zero, 0x0014         # $at = 00000014
    beq     v0, $at, lbl_80871210
    addiu   $at, $zero, 0x0028         # $at = 00000028
    bnel    v0, $at, lbl_80871228
    slti    $at, v0, 0x0064
lbl_80871210:
    lh      t4, 0x01EA(s0)             # 000001EA
    sh      $zero, 0x00B8(s0)          # 000000B8
    lh      v0, 0x01E8(s0)             # 000001E8
    sra     t5, t4,  1
    sh      t5, 0x01EA(s0)             # 000001EA
    slti    $at, v0, 0x0064
lbl_80871228:
    beql    $at, $zero, lbl_80871284
    lh      t9, 0x01EA(s0)             # 000001EA
    lh      v1, 0x01EA(s0)             # 000001EA
    addiu   t6, v1, 0x0001             # t6 = 00000001
    and     t7, v0, t6
    beql    t7, $zero, lbl_80871284
    lh      t9, 0x01EA(s0)             # 000001EA
    mtc1    v1, $f18                   # $f18 = 0.00
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f0                   # $f0 = 140.00
    cvt.s.w $f4, $f18
    mtc1    $zero, $f2                 # $f2 = 0.00
    mfc1    a1, $f0
    addiu   a0, s0, 0x01EC             # a0 = 000001EC
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f2, 0x0010($sp)
    div.s   $f6, $f0, $f4
    mfc1    a3, $f6
    jal     func_80064178
    nop
    beq     $zero, $zero, lbl_808712BC
    lh      v0, 0x01E8(s0)             # 000001E8
    lh      t9, 0x01EA(s0)             # 000001EA
lbl_80871284:
    lui     $at, 0x430C                # $at = 430C0000
    mtc1    $at, $f0                   # $f0 = 140.00
    mtc1    t9, $f8                    # $f8 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    addiu   a0, s0, 0x01EC             # a0 = 000001EC
    cvt.s.w $f10, $f8
    mfc1    a1, $f2
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f2, 0x0010($sp)
    div.s   $f16, $f0, $f10
    mfc1    a3, $f16
    jal     func_80064178
    nop
    lh      v0, 0x01E8(s0)             # 000001E8
lbl_808712BC:
    slti    $at, v0, 0x0003
    beq     $at, $zero, lbl_808712E8
    lui     $at, %hi(var_808717E4)     # $at = 80870000
    lwc1    $f4, %lo(var_808717E4)($at)
    lwc1    $f18, 0x0050(s0)           # 00000050
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f6, $f18, $f4
    mfc1    a1, $f6
    jal     func_80020F88
    nop
    lh      v0, 0x01E8(s0)             # 000001E8
lbl_808712E8:
    bne     v0, $zero, lbl_80871448
    lw      t8, 0x0034($sp)
    lw      t4, 0x0000(t8)             # 00000000
    lw      a1, 0x0094($sp)
    addiu   t2, $sp, 0x0060            # t2 = FFFFFFD0
    sw      t4, 0x0000(t2)             # FFFFFFD0
    lw      t3, 0x0004(t8)             # 00000004
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    sw      t3, 0x0004(t2)             # FFFFFFD4
    lw      t4, 0x0008(t8)             # 00000008
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a1, $at
    sw      t4, 0x0008(t2)             # FFFFFFD8
    lwc1    $f8, 0x0064($sp)
    sw      v1, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f16, $f8, $f10
    jal     func_80022BB0
    swc1    $f16, 0x0064($sp)
    beq     v0, $zero, lbl_80871354
    lw      v1, 0x0038($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lwc1    $f18, 0x0064($sp)
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0064($sp)
lbl_80871354:
    addiu   t5, $zero, 0x0064          # t5 = 00000064
    sw      t5, 0x0010($sp)
    lh      t6, 0x00B8(s0)             # 000000B8
    sw      v1, 0x0038($sp)
    lw      a0, 0x0094($sp)
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  1
    addiu   t9, t7, 0x0013             # t9 = 00000013
    sw      t9, 0x0014($sp)
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFF4
    jal     func_8001C97C
    addiu   a3, $sp, 0x0078            # a3 = FFFFFFE8
    lwc1    $f8, 0x0080(s0)            # 00000080
    lui     $at, 0xC6FA                # $at = C6FA0000
    mtc1    $at, $f10                  # $f10 = -32000.00
    swc1    $f8, 0x0064($sp)
    lwc1    $f16, 0x0080(s0)           # 00000080
    lw      v1, 0x0038($sp)
    lw      a0, 0x0094($sp)
    c.lt.s  $f10, $f16
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFD0
    addiu   a2, $sp, 0x0084            # a2 = FFFFFFF4
    addiu   a3, $sp, 0x006C            # a3 = FFFFFFDC
    bc1fl   lbl_808713D0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8001CB1C
    sw      v1, 0x0038($sp)
    lw      v1, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 00000000
lbl_808713D0:
    addiu   a1, $zero, 0x180E          # a1 = 0000180E
    jal     func_80022FD0
    sw      v1, 0x0038($sp)
    lw      v1, 0x0038($sp)
    lw      t1, 0x0094($sp)
    addiu   t0, $zero, 0x00FA          # t0 = 000000FA
    sh      t0, 0x0ABA(v1)             # 00000ABA
    lh      v0, 0x0ABA(v1)             # 00000ABA
    sh      t0, 0x0AB4(v1)             # 00000AB4
    addiu   a1, $zero, 0x0002          # a1 = 00000002
    sh      v0, 0x0AB8(v1)             # 00000AB8
    sh      v0, 0x0AB6(v1)             # 00000AB6
    lh      v0, 0x0AB4(v1)             # 00000AB4
    addiu   a2, $zero, 0x000B          # a2 = 0000000B
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    addiu   a0, t1, 0x01E0             # a0 = 000001E0
    sh      v0, 0x0AB2(v1)             # 00000AB2
    jal     func_800497A4
    sh      v0, 0x0AB0(v1)             # 00000AB0
    lw      t3, 0x0004(s0)             # 00000004
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    lui     a1, %hi(func_80870D80)     # a1 = 80870000
    ori     t4, t3, 0x0020             # t4 = 00000020
    sh      t2, 0x001C(s0)             # 0000001C
    sh      t8, 0x01E8(s0)             # 000001E8
    sw      t4, 0x0004(s0)             # 00000004
    addiu   a1, a1, %lo(func_80870D80) # a1 = 80870D80
    jal     func_80870A00
    or      a0, s0, $zero              # a0 = 00000000
lbl_80871448:
    or      a0, s0, $zero              # a0 = 00000000
lbl_8087144C:
    jal     func_80020F04
    lui     a1, 0x41A0                 # a1 = 41A00000
    lh      t5, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    bgtz    t5, lbl_808714BC
    nop
    jal     func_80050B00
    sw      a1, 0x0038($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x0094($sp)
    bnel    v0, $zero, lbl_808714A8
    lw      a0, 0x0094($sp)
    lbu     t6, 0x01F0(s0)             # 000001F0
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    beq     t6, $zero, lbl_808714A4
    lw      a0, 0x0094($sp)
    addu    a1, a0, $at
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0038($sp)
lbl_808714A4:
    lw      a0, 0x0094($sp)
lbl_808714A8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0038($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    addu    a1, a0, $at
lbl_808714BC:
    lui     $at, %hi(var_808717E8)     # $at = 80870000
    lwc1    $f4, %lo(var_808717E8)($at)
    lwc1    $f18, 0x0050(s0)           # 00000050
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_80871550
    lw      $ra, 0x002C($sp)
    lh      t2, 0x001C(s0)             # 0000001C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t2, $at, lbl_8087154C
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lwc1    $f6, 0x0084(s0)            # 00000084
    lw      a0, 0x0094($sp)
    addiu   a1, s0, 0x00E4             # a1 = 000000E4
    c.le.s  $f8, $f6
    addiu   a2, $zero, 0x180F          # a2 = 0000180F
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    bc1f    lbl_8087152C
    addiu   t3, $zero, 0x000A          # t3 = 0000000A
    sw      t8, 0x0010($sp)
    jal     func_8001E510
    sw      t3, 0x0014($sp)
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80871550
    lw      $ra, 0x002C($sp)
lbl_8087152C:
    lhu     v0, 0x0088(s0)             # 00000088
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x2817          # a1 = 00002817
    andi    t4, v0, 0x0040             # t4 = 00000000
    beq     t4, $zero, lbl_8087154C
    andi    t5, v0, 0xFFBF             # t5 = 00000000
    jal     func_80022FD0
    sh      t5, 0x0088(s0)             # 00000088
lbl_8087154C:
    lw      $ra, 0x002C($sp)
lbl_80871550:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0090           # $sp += 0x90
    jr      $ra
    nop


func_80871560:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s3, 0x0020($sp)
    sw      s2, 0x001C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    lw      a2, 0x0000(s3)             # 00000000
    bne     t6, $zero, lbl_808716E8
    or      s1, a2, $zero              # s1 = 00000000
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s3, $at
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = 00000000
    jal     func_80022438
    or      a2, $zero, $zero           # a2 = 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x0034($sp)
    lw      t0, 0x0034($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   a0, $zero, 0x4000          # a0 = 00004000
    sw      v0, 0x0004(t0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0400                 # t2 = 04000000
    addiu   t2, t2, 0x7A50             # t2 = 04007A50
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t4, 0xDA38                 # t4 = DA380000
    ori     t4, t4, 0x0003             # t4 = DA380003
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s1)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    jal     func_800AB900
    sw      s0, 0x002C($sp)
    lw      a2, 0x002C($sp)
    lui     t1, 0xDE00                 # t1 = DE000000
    or      a0, $zero, $zero           # a0 = 00000000
    sw      v0, 0x0004(a2)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t6, 0xE700                 # t6 = E7000000
    addiu   t5, s0, 0x0008             # t5 = 00000008
    sw      t5, 0x02C0(s1)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t6, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(s0)             # 00000000
    lwc1    $f4, 0x01EC(s2)            # 000001EC
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sll     t6, t4, 24
    ori     t7, t6, 0x28FF             # t7 = E70028FF
    sw      t7, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t9, 0xFA00                 # t9 = FA000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s1)             # 000002C0
    sw      t9, 0x0000(s0)             # 00000000
    lwc1    $f8, 0x01EC(s2)            # 000001EC
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    sll     t7, t5, 24
    ori     t8, t7, 0x28FF             # t8 = E70028FF
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0400                 # t2 = 04000000
    addiu   t2, t2, 0x7860             # t2 = 04007860
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t2, 0x0004(s0)             # 00000004
    sw      t1, 0x0000(s0)             # 00000000
    jal     func_80050CE4
    addiu   a1, s2, 0x0188             # a1 = 00000188
lbl_808716E8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    lw      s2, 0x001C($sp)
    lw      s3, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    nop
    nop
    nop

.section .data

var_80871710: .word 0x00100300, 0x00000030, 0x00010000, 0x000001F8
.word func_80870A0C
.word func_80870B24
.word func_80870ED0
.word func_80871560
var_80871730: .word \
0x00002939, 0x20010000, 0x02000000, 0x00000000, \
0x00000000, 0x0003F828, 0x00000000, 0x00010100, \
0x0006000B, 0x000E0000, 0x00000000
var_8087175C: .word \
0x00000000, 0x00000008, 0x00080000, 0x00000000, \
0x00000000, 0x19000000, 0x00000000, 0x00000000, \
0x00000064
var_80871780: .word 0x00390000, 0x00000000, 0x00000001
.word var_8087175C
var_80871790: .word 0xC0500000, 0xB04C07D0, 0x386CF060
var_8087179C: .word 0x00000000, 0x00000000, 0x00000000
var_808717A8: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_808717B4: .word 0x00000000, 0x00000000, 0x00000000
var_808717C0: .word 0x00000000, 0x3F19999A, 0x00000000
var_808717CC: .word 0xFFFFFFFF

.section .rodata

var_808717D0: .word 0x3F333333
var_808717D4: .word 0xBE99999A
var_808717D8: .word 0xBF99999A
var_808717DC: .word 0x3E4CCCCD
var_808717E0: .word 0x3E4CCCCD
var_808717E4: .word 0x3B03126F
var_808717E8: .word 0x3C23D70A, 0x00000000

