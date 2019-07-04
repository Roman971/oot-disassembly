.section .text
func_80A24050:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_80A25784)      # a1 = 80A20000
    addiu   a1, a1, %lo(var_80A25784)  # a1 = 80A25784
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(var_80A25764)      # t6 = 80A20000
    addiu   t6, t6, %lo(var_80A25764)  # t6 = 80A25764
    addiu   t7, $zero, 0x0002          # t7 = 00000002
    sw      t6, 0x0098(s0)             # 00000098
    sb      t7, 0x00AF(s0)             # 000000AF
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      a1, 0x0028($sp)
    jal     func_8004A484
    lw      a0, 0x0034($sp)
    lui     a3, %hi(var_80A25754)      # a3 = 80A20000
    addiu   t8, s0, 0x0160             # t8 = 00000160
    lw      a1, 0x0028($sp)
    sw      t8, 0x0010($sp)
    addiu   a3, a3, %lo(var_80A25754)  # a3 = 80A25754
    lw      a0, 0x0034($sp)
    jal     func_8004A874
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     a1, 0x3C23                 # a1 = 3C230000
    sh      $zero, 0x01BA(s0)          # 000001BA
    sb      $zero, 0x01C0(s0)          # 000001C0
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      $zero, 0x00B6(s0)          # 000000B6
    lui     $at, %hi(var_80A257E0)     # $at = 80A20000
    swc1    $f0, 0x0068(s0)            # 00000068
    lwc1    $f4, %lo(var_80A257E0)($at)
    lh      t0, 0x001C(s0)             # 0000001C
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    sh      $zero, 0x01BC(s0)          # 000001BC
    sh      t9, 0x01BE(s0)             # 000001BE
    sw      v0, 0x01C4(s0)             # 000001C4
    sw      $zero, 0x01C8(s0)          # 000001C8
    swc1    $f0, 0x0060(s0)            # 00000060
    swc1    $f0, 0x01D8(s0)            # 000001D8
    swc1    $f4, 0x006C(s0)            # 0000006C
    bne     t0, $zero, lbl_80A2415C
    swc1    $f6, 0x01D0(s0)            # 000001D0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f8                   # $f8 = 1.00
    sb      $zero, 0x00AE(s0)          # 000000AE
    sw      $zero, 0x01C4(s0)          # 000001C4
    sw      v0, 0x01C8(s0)             # 000001C8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A24244
    swc1    $f8, 0x01D0(s0)            # 000001D0
    beq     $zero, $zero, lbl_80A2417C
    lw      $ra, 0x0024($sp)
lbl_80A2415C:
    lui     t2, %hi(func_80A25090)     # t2 = 80A20000
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    addiu   t2, t2, %lo(func_80A25090) # t2 = 80A25090
    addiu   t3, $zero, 0x0009          # t3 = 00000009
    sb      t1, 0x00AE(s0)             # 000000AE
    sw      t2, 0x0130(s0)             # 00000130
    sb      t3, 0x0154(s0)             # 00000154
    lw      $ra, 0x0024($sp)
lbl_80A2417C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A2418C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004A550
    addiu   a1, a2, 0x0140             # a1 = 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A241B8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0084(a0)            # 00000084
    lui     $at, 0x3F80                # $at = 3F800000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A241E4
    mtc1    $at, $f0                   # $f0 = 1.00
    lui     $at, %hi(var_80A257E4)     # $at = 80A20000
    beq     $zero, $zero, lbl_80A241E8
    lwc1    $f0, %lo(var_80A257E4)($at)
    mtc1    $at, $f0                   # $f0 = 0.00
lbl_80A241E4:
    nop
lbl_80A241E8:
    lui     $at, %hi(var_80A257E8)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A257E8)($at)
    mul.s   $f10, $f8, $f0
    swc1    $f10, 0x01D8(a0)           # 000001D8
    jr      $ra
    nop


func_80A24200:
    lui     t6, %hi(func_80A242E0)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A242E0) # t6 = 80A242E0
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A24214:
    lui     t7, %hi(func_80A24320)     # t7 = 80A20000
    addiu   t6, $zero, 0x0014          # t6 = 00000014
    addiu   t7, t7, %lo(func_80A24320) # t7 = 80A24320
    sw      t6, 0x01CC(a0)             # 000001CC
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A24230:
    lui     t6, %hi(func_80A2437C)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A2437C) # t6 = 80A2437C
    sw      t6, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A24244:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x01E4(a0)            # 000001E4
    jal     func_80A241B8
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_80A243DC)     # t7 = 80A20000
    addiu   t6, $zero, 0x00B4          # t6 = 000000B4
    addiu   t7, t7, %lo(func_80A243DC) # t7 = 80A243DC
    sw      t6, 0x01CC(a0)             # 000001CC
    sw      t7, 0x013C(a0)             # 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A24288:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x38EA          # a1 = 000038EA
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     t6, %hi(func_80A244F0)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A244F0) # t6 = 80A244F0
    sw      t6, 0x013C(a0)             # 0000013C
    swc1    $f4, 0x01D8(a0)            # 000001D8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A242C4:
    lui     t7, %hi(func_80A245B0)     # t7 = 80A20000
    addiu   t6, $zero, 0x003C          # t6 = 0000003C
    addiu   t7, t7, %lo(func_80A245B0) # t7 = 80A245B0
    sw      t6, 0x01CC(a0)             # 000001CC
    sw      t7, 0x013C(a0)             # 0000013C
    jr      $ra
    nop


func_80A242E0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x46C8                # $at = 46C80000
    mtc1    $at, $f4                   # $f4 = 25600.00
    lwc1    $f6, 0x008C(a0)            # 0000008C
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_80A24314
    lw      $ra, 0x0014($sp)
    jal     func_80A24214
    nop
    lw      $ra, 0x0014($sp)
lbl_80A24314:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A24320:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x01C8(a0)             # 000001C8
    lw      v1, 0x01C4(a0)             # 000001C4
    addiu   v0, v0, 0x0040             # v0 = 00000040
    slti    $at, v0, 0x00FF
    bne     $at, $zero, lbl_80A24364
    addiu   v1, v1, 0xFFC0             # v1 = FFFFFFC0
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    sw      v0, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80A24230
    sw      a0, 0x0020($sp)
    lw      v0, 0x0018($sp)
    lw      v1, 0x001C($sp)
    lw      a0, 0x0020($sp)
lbl_80A24364:
    sw      v1, 0x01C4(a0)             # 000001C4
    sw      v0, 0x01C8(a0)             # 000001C8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A2437C:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f0, 0x01D0(a0)            # 000001D0
    mtc1    $at, $f4                   # $f4 = 2.00
    nop
    add.s   $f0, $f0, $f4
    c.le.s  $f2, $f0
    nop
    bc1fl   lbl_80A243CC
    swc1    $f0, 0x01D0(a0)            # 000001D0
    sw      a0, 0x0020($sp)
    jal     func_80A24244
    swc1    $f2, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lwc1    $f0, 0x001C($sp)
    swc1    $f0, 0x01D0(a0)            # 000001D0
lbl_80A243CC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A243DC:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lwc1    $f4, 0x01E0(s0)            # 000001E0
    lwc1    $f6, 0x0084(s0)            # 00000084
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_80A24414
    nop
    jal     func_8002313C
    addiu   a1, $zero, 0x30E9          # a1 = 000030E9
lbl_80A24414:
    jal     func_80A241B8
    or      a0, s0, $zero              # a0 = 00000000
    lw      v0, 0x01CC(s0)             # 000001CC
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    blez    v0, lbl_80A24438
    sw      t6, 0x01CC(s0)             # 000001CC
    lh      t7, 0x01BC(s0)             # 000001BC
    beql    t7, $zero, lbl_80A2444C
    lwc1    $f8, 0x01E4(s0)            # 000001E4
lbl_80A24438:
    jal     func_80A24288
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A244E0
    lw      $ra, 0x0024($sp)
    lwc1    $f8, 0x01E4(s0)            # 000001E4
lbl_80A2444C:
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    trunc.w.s $f10, $f8
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x000A          # a2 = 0000000A
    mfc1    a3, $f10
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    addiu   a0, s0, 0x01E4             # a0 = 000001E4
    lui     a1, 0x44FA                 # a1 = 44FA0000
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lh      t9, 0x00B6(s0)             # 000000B6
    lwc1    $f12, 0x0094(s0)           # 00000094
    lwc1    $f14, 0x0090(s0)           # 00000090
    jal     func_800CD76C
    sh      t9, 0x0032(s0)             # 00000032
    swc1    $f0, 0x002C($sp)
    jal     func_800D2CD0
    mov.s   $f12, $f0
    lwc1    $f16, 0x01D8(s0)           # 000001D8
    lwc1    $f18, 0x01E0(s0)           # 000001E0
    lwc1    $f4, 0x0084(s0)            # 00000084
    mul.s   $f0, $f0, $f16
    c.lt.s  $f18, $f4
    abs.s   $f0, $f0
    bc1f    lbl_80A244DC
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_800CF470
    lwc1    $f12, 0x002C($sp)
    lwc1    $f6, 0x01D8(s0)            # 000001D8
    mul.s   $f8, $f0, $f6
    swc1    $f8, 0x01DC(s0)            # 000001DC
lbl_80A244DC:
    lw      $ra, 0x0024($sp)
lbl_80A244E0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A244F0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f2                   # $f2 = 0.25
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lui     $at, 0x4000                # $at = 40000000
    lwc1    $f0, 0x01D0(a0)            # 000001D0
    mtc1    $at, $f4                   # $f4 = 2.00
    nop
    sub.s   $f0, $f0, $f4
    c.le.s  $f0, $f2
    nop
    bc1fl   lbl_80A245A0
    swc1    $f0, 0x01D0(a0)            # 000001D0
    lhu     v0, 0x0088(a0)             # 00000088
    mov.s   $f0, $f2
    andi    t6, v0, 0x0002             # t6 = 00000000
    beql    t6, $zero, lbl_80A245A0
    swc1    $f0, 0x01D0(a0)            # 000001D0
    lwc1    $f6, 0x01E0(a0)            # 000001E0
    lwc1    $f8, 0x0084(a0)            # 00000084
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    c.lt.s  $f6, $f8
    nop
    bc1tl   lbl_80A24574
    mtc1    $zero, $f10                # $f10 = 0.00
    sw      a0, 0x0020($sp)
    jal     func_80022FD0
    swc1    $f0, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lwc1    $f0, 0x001C($sp)
    lhu     v0, 0x0088(a0)             # 00000088
    mtc1    $zero, $f10                # $f10 = 0.00
lbl_80A24574:
    lh      t8, 0x00B6(a0)             # 000000B6
    andi    t7, v0, 0xFFFD             # t7 = 00000000
    sh      t7, 0x0088(a0)             # 00000088
    swc1    $f10, 0x0068(a0)           # 00000068
    sh      t8, 0x0032(a0)             # 00000032
    swc1    $f0, 0x001C($sp)
    jal     func_80A242C4
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    lwc1    $f0, 0x001C($sp)
    swc1    $f0, 0x01D0(a0)            # 000001D0
lbl_80A245A0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A245B0:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      v0, 0x01C4(a0)             # 000001C4
    lw      v1, 0x01C8(a0)             # 000001C8
    addiu   v0, v0, 0x0040             # v0 = 00000040
    slti    $at, v0, 0x00FF
    bne     $at, $zero, lbl_80A2460C
    addiu   v1, v1, 0xFFC0             # v1 = FFFFFFC0
    lw      a1, 0x01CC(a0)             # 000001CC
    addiu   v0, $zero, 0x00FF          # v0 = 000000FF
    or      v1, $zero, $zero           # v1 = 00000000
    beq     a1, $zero, lbl_80A245F0
    addiu   t6, a1, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_80A2460C
    sw      t6, 0x01CC(a0)             # 000001CC
lbl_80A245F0:
    sw      v0, 0x001C($sp)
    sw      v1, 0x0018($sp)
    jal     func_80A24200
    sw      a0, 0x0020($sp)
    lw      v0, 0x001C($sp)
    lw      v1, 0x0018($sp)
    lw      a0, 0x0020($sp)
lbl_80A2460C:
    sw      v0, 0x01C4(a0)             # 000001C4
    sw      v1, 0x01C8(a0)             # 000001C8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A24624:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    sb      $zero, 0x003F($sp)
    lbu     v1, 0x0150(s0)             # 00000150
    sh      $zero, 0x01BC(s0)          # 000001BC
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    andi    t6, v1, 0x0004             # t6 = 00000000
    beq     t6, $zero, lbl_80A2467C
    andi    t0, v1, 0x0002             # t0 = 00000000
    lui     $at, 0xC080                # $at = C0800000
    lh      t9, 0x008A(s0)             # 0000008A
    mtc1    $at, $f4                   # $f4 = -4.00
    andi    t7, v1, 0xFFFB             # t7 = 00000000
    sb      t7, 0x0150(s0)             # 00000150
    sh      t8, 0x01BC(s0)             # 000001BC
    or      v0, $zero, $zero           # v0 = 00000000
    sh      t9, 0x0032(s0)             # 00000032
    beq     $zero, $zero, lbl_80A24838
    swc1    $f4, 0x0068(s0)            # 00000068
lbl_80A2467C:
    beq     t0, $zero, lbl_80A24698
    andi    t1, v1, 0xFFFD             # t1 = 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t1, 0x0150(s0)             # 00000150
    sh      t2, 0x01BC(s0)             # 000001BC
    beq     $zero, $zero, lbl_80A24838
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A24698:
    lbu     v0, 0x0151(s0)             # 00000151
    andi    t3, v0, 0x0002             # t3 = 00000000
    beql    t3, $zero, lbl_80A24838
    or      v0, $zero, $zero           # v0 = 00000000
    lw      t5, 0x015C(s0)             # 0000015C
    andi    t4, v0, 0xFFFD             # t4 = 00000000
    sb      t4, 0x0151(s0)             # 00000151
    lh      t6, 0x000E(t5)             # 0000000E
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    t6, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    mtc1    $at, $f6                   # $f6 = 0.25
    swc1    $f8, 0x0030($sp)
    lw      t7, 0x015C(s0)             # 0000015C
    lh      t8, 0x0010(t7)             # 00000010
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    swc1    $f16, 0x0034($sp)
    lw      t9, 0x015C(s0)             # 0000015C
    lh      t0, 0x0012(t9)             # 00000012
    mtc1    t0, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    swc1    $f4, 0x0038($sp)
    lwc1    $f8, 0x01D0(s0)            # 000001D0
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_80A247E4
    lbu     t7, 0x00AF(s0)             # 000000AF
    lw      t1, 0x01C4(s0)             # 000001C4
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    t1, $at, lbl_80A247E4
    lbu     t7, 0x00AF(s0)             # 000000AF
    lbu     v0, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v0, $at, lbl_80A2478C
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80A247B8
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beq     v0, $at, lbl_80A2475C
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    beq     v0, $at, lbl_80A24760
    nop
    beq     $zero, $zero, lbl_80A247E4
    lbu     t7, 0x00AF(s0)             # 000000AF
lbl_80A2475C:
    sb      t2, 0x003F($sp)
lbl_80A24760:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    beq     $zero, $zero, lbl_80A247E4
    lbu     t7, 0x00AF(s0)             # 000000AF
lbl_80A2478C:
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t4, $zero, 0x0050          # t4 = 00000050
    sw      t4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    beq     $zero, $zero, lbl_80A247E4
    lbu     t7, 0x00AF(s0)             # 000000AF
lbl_80A247B8:
    sh      t5, 0x01BA(s0)             # 000001BA
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x0050          # t6 = 00000050
    sw      t6, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    addiu   a3, $zero, 0x2000          # a3 = 00002000
    lbu     t7, 0x00AF(s0)             # 000000AF
lbl_80A247E4:
    sw      $zero, 0x01CC(s0)          # 000001CC
    lw      a0, 0x0044($sp)
    bne     t7, $zero, lbl_80A24824
    or      a1, $zero, $zero           # a1 = 00000000
    lw      t8, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    sb      $zero, 0x00C8(s0)          # 000000C8
    and     t9, t8, $at
    sw      t9, 0x0004(s0)             # 00000004
    lbu     t0, 0x003F($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sb      t0, 0x01C0(s0)             # 000001C0
    jal     func_80025B4C
    lw      a0, 0x0044($sp)
    beq     $zero, $zero, lbl_80A24838
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80A24824:
    jal     func_8001D7A8
    addiu   a2, $sp, 0x0030            # a2 = FFFFFFF0
    beq     $zero, $zero, lbl_80A24838
    or      v0, $zero, $zero           # v0 = 00000000
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80A24838:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80A2484C:
    mtc1    a1, $f12                   # $f12 = 0.00
    mtc1    a2, $f14                   # $f14 = 0.00
    lui     $at, %hi(var_80A257EC)     # $at = 80A20000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x01D8(a0)            # 000001D8
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80A24880
    lwc1    $f0, 0x0084(a0)            # 00000084
    lwc1    $f8, %lo(var_80A257EC)($at)
    jr      $ra
    swc1    $f8, 0x006C(a0)            # 0000006C
lbl_80A2487C:
    lwc1    $f0, 0x0084(a0)            # 00000084
lbl_80A24880:
    lui     $at, %hi(var_80A257F0)     # $at = 80A20000
    c.lt.s  $f12, $f0
    nop
    bc1tl   lbl_80A248A4
    c.lt.s  $f14, $f0
    lwc1    $f10, %lo(var_80A257F0)($at)
    jr      $ra
    swc1    $f10, 0x006C(a0)           # 0000006C
lbl_80A248A0:
    c.lt.s  $f14, $f0
lbl_80A248A4:
    nop
    bc1f    lbl_80A2492C
    nop
    lwc1    $f0, 0x01DC(a0)            # 000001DC
    lwc1    $f2, 0x0060(a0)            # 00000060
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     $at, %hi(var_80A257F4)     # $at = 80A20000
    c.lt.s  $f0, $f2
    swc1    $f16, 0x006C(a0)           # 0000006C
    bc1fl   lbl_80A248FC
    c.lt.s  $f2, $f0
    lwc1    $f18, %lo(var_80A257F4)($at)
    sub.s   $f4, $f2, $f18
    swc1    $f4, 0x0060(a0)            # 00000060
    lwc1    $f6, 0x0060(a0)            # 00000060
    c.lt.s  $f6, $f0
    nop
    bc1f    lbl_80A2492C
    nop
    jr      $ra
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80A248F8:
    c.lt.s  $f2, $f0
lbl_80A248FC:
    lui     $at, %hi(var_80A257F8)     # $at = 80A20000
    bc1f    lbl_80A2492C
    nop
    lwc1    $f8, %lo(var_80A257F8)($at)
    add.s   $f10, $f2, $f8
    swc1    $f10, 0x0060(a0)           # 00000060
    lwc1    $f16, 0x0060(a0)           # 00000060
    c.lt.s  $f0, $f16
    nop
    bc1f    lbl_80A2492C
    nop
    swc1    $f0, 0x0060(a0)            # 00000060
lbl_80A2492C:
    jr      $ra
    nop


func_80A24934:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s2, 0x0034($sp)
    sw      s0, 0x002C($sp)
    or      s0, a1, $zero              # s0 = 00000000
    or      s2, a0, $zero              # s2 = 00000000
    sw      $ra, 0x003C($sp)
    sw      s3, 0x0038($sp)
    sw      s1, 0x0030($sp)
    sdc1    $f22, 0x0020($sp)
    sdc1    $f20, 0x0018($sp)
    lh      t6, 0x01B8(s2)             # 000001B8
    lh      v0, 0x01BA(s2)             # 000001BA
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f4, 0x01D0(s2)            # 000001D0
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x01B8(s2)             # 000001B8
    beq     v0, $zero, lbl_80A24988
    sub.s   $f20, $f4, $f6
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01BA(s2)             # 000001BA
lbl_80A24988:
    or      a0, s2, $zero              # a0 = 00000000
    jal     func_80020F04
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s2, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    lui     $at, %hi(var_80A257FC)     # $at = 80A20000
    lwc1    $f8, %lo(var_80A257FC)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f16                  # $f16 = 1.00
    mul.s   $f10, $f8, $f20
    lw      t9, 0x015C(s2)             # 0000015C
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f6                   # $f6 = 1000.00
    lui     $at, 0x41C0                # $at = 41C00000
    or      a0, s2, $zero              # a0 = 00000000
    add.s   $f18, $f10, $f16
    mtc1    $at, $f16                  # $f16 = 24.00
    lui     $at, 0x4140                # $at = 41400000
    swc1    $f18, 0x0038(t9)           # 00000038
    lwc1    $f4, 0x01D8(s2)            # 000001D8
    lh      t4, 0x00B4(s2)             # 000000B4
    mul.s   $f8, $f4, $f6
    mtc1    $at, $f4                   # $f4 = 12.00
    mul.s   $f18, $f16, $f20
    trunc.w.s $f10, $f8
    add.s   $f22, $f18, $f4
    mfc1    t3, $f10
    add.s   $f6, $f22, $f0
    addu    t5, t4, t3
    sh      t5, 0x00B4(s2)             # 000000B4
    sub.s   $f8, $f22, $f0
    mfc1    a1, $f6
    mfc1    a2, $f8
    jal     func_80A2484C
    nop
    jal     func_8002121C
    or      a0, s2, $zero              # a0 = 00000000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s2, 0x01D4             # a0 = 000001D4
    jal     func_8006385C
    lw      a1, 0x01D8(s2)             # 000001D8
    lw      t9, 0x013C(s2)             # 0000013C
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lwc1    $f10, 0x0104(s2)           # 00000104
    lwc1    $f18, 0x0028(s2)           # 00000028
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f20                  # $f20 = 20.00
    sub.s   $f16, $f10, $f22
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    sub.s   $f4, $f18, $f22
    swc1    $f16, 0x0104(s2)           # 00000104
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    mfc1    a2, $f20
    swc1    $f4, 0x0028(s2)            # 00000028
    mfc1    a3, $f20
    sw      t6, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0028(s2)            # 00000028
    swc1    $f22, 0x01E0(s2)           # 000001E0
    or      a0, s2, $zero              # a0 = 00000000
    add.s   $f10, $f8, $f22
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80A24624
    swc1    $f10, 0x0028(s2)           # 00000028
    beq     v0, $zero, lbl_80A24B3C
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
lbl_80A24AC8:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f16, 0x0024(s2)           # 00000024
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x01E8(s0)           # 000001E8
    lwc1    $f4, 0x0028(s2)            # 00000028
    mov.s   $f12, $f20
    add.s   $f6, $f0, $f4
    jal     func_80026D90
    swc1    $f6, 0x01EC(s0)            # 000001EC
    lwc1    $f8, 0x002C(s2)            # 0000002C
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    add.s   $f10, $f0, $f8
    bne     s1, s3, lbl_80A24AC8
    swc1    $f10, 0x01E4(s0)           # 000001F0
    lui     t7, %hi(func_80A25050)     # t7 = 80A20000
    lui     t8, %hi(func_80A25488)     # t8 = 80A20000
    lui     t0, %hi(func_80A24BC0)     # t0 = 80A20000
    addiu   t7, t7, %lo(func_80A25050) # t7 = 80A25050
    addiu   t8, t8, %lo(func_80A25488) # t8 = 80A25488
    addiu   t0, t0, %lo(func_80A24BC0) # t0 = 80A24BC0
    sh      $zero, 0x01B8(s2)          # 000001B8
    sw      t7, 0x0130(s2)             # 00000130
    sw      t8, 0x0134(s2)             # 00000134
    beq     $zero, $zero, lbl_80A24B9C
    sw      t0, 0x013C(s2)             # 0000013C
lbl_80A24B3C:
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f16                  # $f16 = 0.25
    lwc1    $f18, 0x01D0(s2)           # 000001D0
    c.lt.s  $f16, $f18
    nop
    bc1f    lbl_80A24B6C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 0000000C
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s2, 0x0140             # a2 = 00000140
lbl_80A24B6C:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    s1, s0, $at
    addiu   s3, s2, 0x0140             # s3 = 00000140
    or      a2, s3, $zero              # a2 = 00000140
    or      a1, s1, $zero              # a1 = 00000001
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s0, $zero              # a0 = 0000000C
    or      a0, s0, $zero              # a0 = 0000000C
    or      a1, s1, $zero              # a1 = 00000001
    jal     func_8004C130              # CollisionCheck_setOT
    or      a2, s3, $zero              # a2 = 00000140
lbl_80A24B9C:
    lw      $ra, 0x003C($sp)
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    lw      s2, 0x0034($sp)
    lw      s3, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A24BC0:
    addiu   $sp, $sp, 0xFF78           # $sp = FFFFFF78
    sw      s5, 0x0050($sp)
    sw      s4, 0x004C($sp)
    sw      s3, 0x0048($sp)
    sw      s2, 0x0044($sp)
    or      s2, a0, $zero              # s2 = 00000000
    addiu   s3, $sp, 0x0068            # s3 = FFFFFFE0
    addiu   s4, $sp, 0x005C            # s4 = FFFFFFD4
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s1, 0x0040($sp)
    sw      s0, 0x003C($sp)
    sdc1    $f24, 0x0030($sp)
    sdc1    $f22, 0x0028($sp)
    sdc1    $f20, 0x0020($sp)
    lui     t6, %hi(var_80A25790)      # t6 = 80A20000
    addiu   t6, t6, %lo(var_80A25790)  # t6 = 80A25790
    lw      t8, 0x0000(t6)             # 80A25790
    lui     t9, %hi(var_80A2579C)      # t9 = 80A20000
    addiu   t9, t9, %lo(var_80A2579C)  # t9 = 80A2579C
    sw      t8, 0x0000(s3)             # FFFFFFE0
    lw      t7, 0x0004(t6)             # 80A25794
    sw      t7, 0x0004(s3)             # FFFFFFE4
    lw      t8, 0x0008(t6)             # 80A25798
    sw      t8, 0x0008(s3)             # FFFFFFE8
    lw      t1, 0x0000(t9)             # 80A2579C
    sw      t1, 0x0000(s4)             # FFFFFFD4
    lw      t0, 0x0004(t9)             # 80A257A0
    sw      t0, 0x0004(s4)             # FFFFFFD8
    lw      t1, 0x0008(t9)             # 80A257A4
    sw      t1, 0x0008(s4)             # FFFFFFDC
    lh      t2, 0x01B8(s2)             # 000001B8
    slti    $at, t2, 0x0002
    bnel    $at, $zero, lbl_80A24E18
    lw      $ra, 0x0054($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0084(s2)            # 00000084
    or      s1, $zero, $zero           # s1 = 00000000
    lui     $at, 0x41F0                # $at = 41F00000
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80A24D78
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f20                  # $f20 = 10.00
    addiu   s0, $sp, 0x0074            # s0 = FFFFFFEC
lbl_80A24C74:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f8, 0x0024(s2)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0074($sp)
    lwc1    $f16, 0x0028(s2)           # 00000028
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0078($sp)
    lwc1    $f4, 0x002C(s2)            # 0000002C
    addiu   a0, $zero, 0x0050          # a0 = 00000050
    addiu   a1, $zero, 0x0064          # a1 = 00000064
    add.s   $f6, $f0, $f4
    jal     func_80063BF0
    swc1    $f6, 0x007C($sp)
    addiu   t3, $zero, 0x0019          # t3 = 00000019
    addiu   t4, $zero, 0x0001          # t4 = 00000001
    sw      t4, 0x001C($sp)
    sw      t3, 0x0014($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = FFFFFFEC
    or      a2, s3, $zero              # a2 = FFFFFFE0
    or      a3, s4, $zero              # a3 = FFFFFFD4
    sw      v0, 0x0010($sp)
    jal     func_8001D110
    sw      $zero, 0x0018($sp)
    addiu   s1, s1, 0x0001             # s1 = 00000001
    slti    $at, s1, 0x000A
    bne     $at, $zero, lbl_80A24C74
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f24                  # $f24 = 0.25
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f22                  # $f22 = 10.00
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   s3, $zero, 0x0014          # s3 = 00000014
lbl_80A24D10:
    jal     func_80026D90
    mov.s   $f12, $f20
    lwc1    $f8, 0x0024(s2)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0074($sp)
    lwc1    $f16, 0x0028(s2)           # 00000028
    mov.s   $f12, $f20
    add.s   $f18, $f0, $f16
    jal     func_80026D90
    swc1    $f18, 0x0078($sp)
    lwc1    $f4, 0x002C(s2)            # 0000002C
    mfc1    a2, $f22
    mfc1    a3, $f22
    add.s   $f6, $f0, $f4
    swc1    $f24, 0x0014($sp)
    swc1    $f20, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    swc1    $f6, 0x007C($sp)
    jal     func_8001CEDC
    or      a1, s0, $zero              # a1 = FFFFFFEC
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bne     s1, s3, lbl_80A24D10
    nop
    lui     $at, 0x4120                # $at = 41200000
lbl_80A24D78:
    mtc1    $at, $f22                  # $f22 = 10.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f20                  # $f20 = 4.00
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s2, $zero              # s0 = 00000000
    addiu   s3, $zero, 0x0008          # s3 = 00000008
lbl_80A24D90:
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x0248(s0)            # 00000248
    jal     func_80026D90
    mov.s   $f12, $f22
    swc1    $f0, 0x0250(s0)            # 00000250
    jal     func_80026D64
    mov.s   $f12, $f20
    add.s   $f8, $f0, $f20
    addiu   s1, s1, 0x0001             # s1 = 00000001
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    bne     s1, s3, lbl_80A24D90
    swc1    $f8, 0x0240(s0)            # 0000024C
    lbu     t5, 0x01C0(s2)             # 000001C0
    sh      $zero, 0x01B8(s2)          # 000001B8
    or      a0, s5, $zero              # a0 = 00000000
    bne     t5, $zero, lbl_80A24DF4
    addiu   a1, s2, 0x0024             # a1 = 00000024
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    addiu   a2, s2, 0x0024             # a2 = 00000024
    jal     func_80013A84
    addiu   a3, $zero, 0x00A0          # a3 = 000000A0
    beq     $zero, $zero, lbl_80A24E00
    or      a0, s2, $zero              # a0 = 00000000
lbl_80A24DF4:
    jal     func_80013678
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    or      a0, s2, $zero              # a0 = 00000000
lbl_80A24E00:
    jal     func_80022FD0
    addiu   a1, $zero, 0x394B          # a1 = 0000394B
    lui     t6, %hi(func_80A24E44)     # t6 = 80A20000
    addiu   t6, t6, %lo(func_80A24E44) # t6 = 80A24E44
    sw      t6, 0x013C(s2)             # 0000013C
    lw      $ra, 0x0054($sp)
lbl_80A24E18:
    ldc1    $f20, 0x0020($sp)
    ldc1    $f22, 0x0028($sp)
    ldc1    $f24, 0x0030($sp)
    lw      s0, 0x003C($sp)
    lw      s1, 0x0040($sp)
    lw      s2, 0x0044($sp)
    lw      s3, 0x0048($sp)
    lw      s4, 0x004C($sp)
    lw      s5, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp = 00000000


func_80A24E44:
    addiu   $sp, $sp, 0xFFA8           # $sp = FFFFFFA8
    sdc1    $f20, 0x0018($sp)
    sw      s6, 0x0050($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s6, a0, $zero              # s6 = 00000000
    sw      $ra, 0x0054($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f26, 0x0030($sp)
    sdc1    $f24, 0x0028($sp)
    sdc1    $f22, 0x0020($sp)
    sw      a1, 0x005C($sp)
    lwc1    $f4, 0x0084(s6)            # 00000084
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s6, $zero              # s0 = 00000000
    c.lt.s  $f20, $f4
    addiu   s2, s6, 0x0248             # s2 = 00000248
    addiu   s3, s6, 0x024C             # s3 = 0000024C
    addiu   s4, s6, 0x0250             # s4 = 00000250
    bc1f    lbl_80A24F70
    lui     $at, %hi(var_80A25808)     # $at = 80A20000
    lui     $at, %hi(var_80A25800)     # $at = 80A20000
    lwc1    $f26, %lo(var_80A25800)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f24                  # $f24 = -1.00
    lui     $at, %hi(var_80A25804)     # $at = 80A20000
    lwc1    $f22, %lo(var_80A25804)($at)
    or      s1, $zero, $zero           # s1 = 00000000
    or      s0, s6, $zero              # s0 = 00000000
    addiu   s2, s6, 0x0248             # s2 = 00000248
    addiu   s3, s6, 0x024C             # s3 = 0000024C
    addiu   s4, s6, 0x0250             # s4 = 00000250
    addiu   s5, $zero, 0x0060          # s5 = 00000060
lbl_80A24ED8:
    lwc1    $f6, 0x01E8(s0)            # 000001E8
    lwc1    $f8, 0x0248(s0)            # 00000248
    lwc1    $f16, 0x01EC(s0)           # 000001EC
    lwc1    $f18, 0x024C(s0)           # 0000024C
    add.s   $f10, $f6, $f8
    lwc1    $f8, 0x0250(s0)            # 00000250
    lwc1    $f6, 0x01F0(s0)            # 000001F0
    add.s   $f4, $f16, $f18
    swc1    $f10, 0x01E8(s0)           # 000001E8
    mfc1    a1, $f20
    add.s   $f10, $f6, $f8
    mfc1    a2, $f22
    swc1    $f4, 0x01EC(s0)            # 000001EC
    or      a0, s2, $zero              # a0 = 00000248
    jal     func_8006385C
    swc1    $f10, 0x01F0(s0)           # 000001F0
    mfc1    a1, $f24
    mfc1    a2, $f26
    jal     func_8006385C
    or      a0, s3, $zero              # a0 = 0000024C
    mfc1    a1, $f20
    mfc1    a2, $f22
    jal     func_8006385C
    or      a0, s4, $zero              # a0 = 00000250
    addiu   s1, s1, 0x000C             # s1 = 0000000C
    addiu   s0, s0, 0x000C             # s0 = 0000000C
    addiu   s2, s2, 0x000C             # s2 = 00000254
    addiu   s3, s3, 0x000C             # s3 = 00000258
    bne     s1, s5, lbl_80A24ED8
    addiu   s4, s4, 0x000C             # s4 = 0000025C
    lh      t6, 0x01B8(s6)             # 000001B8
    slti    $at, t6, 0x001F
    bnel    $at, $zero, lbl_80A2501C
    lw      $ra, 0x0054($sp)
    jal     func_80020EB4
    or      a0, s6, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A2501C
    lw      $ra, 0x0054($sp)
lbl_80A24F70:
    lwc1    $f26, %lo(var_80A25808)($at)
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f24                  # $f24 = -1.00
    lui     $at, %hi(var_80A2580C)     # $at = 80A20000
    lwc1    $f22, %lo(var_80A2580C)($at)
    addiu   s5, $zero, 0x0060          # s5 = 00000060
lbl_80A24F88:
    lwc1    $f16, 0x01E8(s0)           # 000001F4
    lwc1    $f18, 0x0248(s0)           # 00000254
    lwc1    $f6, 0x01EC(s0)            # 000001F8
    lwc1    $f8, 0x024C(s0)            # 00000258
    add.s   $f4, $f16, $f18
    lwc1    $f18, 0x0250(s0)           # 0000025C
    lwc1    $f16, 0x01F0(s0)           # 000001FC
    add.s   $f10, $f6, $f8
    swc1    $f4, 0x01E8(s0)            # 000001F4
    mfc1    a1, $f20
    add.s   $f4, $f16, $f18
    mfc1    a2, $f22
    swc1    $f10, 0x01EC(s0)           # 000001F8
    or      a0, s2, $zero              # a0 = 00000254
    jal     func_8006385C
    swc1    $f4, 0x01F0(s0)            # 000001FC
    mfc1    a1, $f24
    mfc1    a2, $f26
    jal     func_8006385C
    or      a0, s3, $zero              # a0 = 00000258
    mfc1    a1, $f20
    mfc1    a2, $f22
    jal     func_8006385C
    or      a0, s4, $zero              # a0 = 0000025C
    addiu   s1, s1, 0x000C             # s1 = 00000018
    addiu   s0, s0, 0x000C             # s0 = 00000018
    addiu   s2, s2, 0x000C             # s2 = 00000260
    addiu   s3, s3, 0x000C             # s3 = 00000264
    bne     s1, s5, lbl_80A24F88
    addiu   s4, s4, 0x000C             # s4 = 00000268
    lh      t7, 0x01B8(s6)             # 000001B8
    slti    $at, t7, 0x0010
    bnel    $at, $zero, lbl_80A2501C
    lw      $ra, 0x0054($sp)
    jal     func_80020EB4
    or      a0, s6, $zero              # a0 = 00000000
    lw      $ra, 0x0054($sp)
lbl_80A2501C:
    ldc1    $f20, 0x0018($sp)
    ldc1    $f22, 0x0020($sp)
    ldc1    $f24, 0x0028($sp)
    ldc1    $f26, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0058           # $sp = 00000000


func_80A25050:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lh      t6, 0x01B8(a0)             # 000001B8
    lh      v0, 0x01BA(a0)             # 000001BA
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_80A25074
    sh      t7, 0x01B8(a0)             # 000001B8
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x01BA(a0)             # 000001BA
lbl_80A25074:
    lw      t9, 0x013C(a0)             # 0000013C
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A25090:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lwc1    $f4, 0x01D0(s0)            # 000001D0
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    sub.s   $f8, $f4, $f6
    swc1    $f8, 0x003C($sp)
    lh      t6, 0x01B8(s0)             # 000001B8
    addiu   t7, t6, 0x0001             # t7 = 00000001
    jal     func_80020F04
    sh      t7, 0x01B8(s0)             # 000001B8
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f2                   # $f2 = 20.00
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f10                  # $f10 = 24.00
    lwc1    $f16, 0x003C($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f4                   # $f4 = 12.00
    mul.s   $f18, $f10, $f16
    lwc1    $f6, 0x0104(s0)            # 00000104
    lwc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x4270                # $at = 42700000
    addiu   t8, $zero, 0x0007          # t8 = 00000007
    mfc1    a2, $f2
    mfc1    a3, $f2
    add.s   $f0, $f18, $f4
    mtc1    $at, $f18                  # $f18 = 60.00
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    sub.s   $f8, $f6, $f0
    sub.s   $f16, $f10, $f0
    swc1    $f8, 0x0104(s0)            # 00000104
    swc1    $f16, 0x0028(s0)           # 00000028
    swc1    $f0, 0x0034($sp)
    sw      t8, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f18, 0x0010($sp)
    lwc1    $f0, 0x0034($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    add.s   $f6, $f4, $f0
    addu    a1, s1, $at
    addiu   a2, s0, 0x0140             # a2 = 00000140
    swc1    $f0, 0x01E0(s0)            # 000001E0
    swc1    $f6, 0x0028(s0)            # 00000028
    sw      a2, 0x002C($sp)
    sw      a1, 0x0030($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0030($sp)
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x01D4             # a0 = 000001D4
    jal     func_8006385C
    lw      a1, 0x01D8(s0)             # 000001D8
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000


func_80A251C0:
    addiu   $sp, $sp, 0xFF70           # $sp = FFFFFF70
    sw      s2, 0x0030($sp)
    sw      s1, 0x002C($sp)
    or      s1, a0, $zero              # s1 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0034($sp)
    sw      s0, 0x0028($sp)
    lw      s0, 0x0000(s2)             # 00000000
    or      a0, $zero, $zero           # a0 = 00000000
    jal     func_80050CE4
    addiu   a1, s1, 0x0140             # a1 = 00000140
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022554
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x007C($sp)
    lw      a3, 0x007C($sp)
    lui     t2, 0xE200                 # t2 = E2000000
    ori     t2, t2, 0x001C             # t2 = E200001C
    lui     t1, 0xE700                 # t1 = E7000000
    lui     t3, 0xFB00                 # t3 = FB000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     $at, 0x3E80                # $at = 3E800000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0C18                 # t5 = 0C180000
    ori     t5, t5, 0x49D8             # t5 = 0C1849D8
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    mtc1    $at, $f4                   # $f4 = 0.25
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t7, 0x01C8(s1)             # 000001C8
    andi    t8, t7, 0x00FF             # t8 = 00000000
    sw      t8, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x1EA8             # t5 = 06001EA8
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s0)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t1, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xC810                 # t8 = C8100000
    ori     t8, t8, 0x49D8             # t8 = C81049D8
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t2, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t5, 0x01C4(s1)             # 000001C4
    andi    t6, t5, 0x00FF             # t6 = 000000A8
    sw      t6, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x1DD0             # t8 = 06001DD0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lwc1    $f12, 0x01D0(s1)           # 000001D0
    c.lt.s  $f4, $f12
    nop
    bc1fl   lbl_80A253A8
    lh      v1, 0x01BA(s1)             # 000001BA
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s2, $zero              # a1 = 00000000
    jal     func_80022438
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8007E298
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t5, 0xDA38                 # t5 = DA380000
    ori     t5, t5, 0x0003             # t5 = DA380003
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0058($sp)
    lw      a1, 0x0058($sp)
    lui     t7, 0xDE00                 # t7 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0x0600                 # t8 = 06000000
    addiu   t8, t8, 0x1FC8             # t8 = 06001FC8
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lh      v1, 0x01BA(s1)             # 000001BA
lbl_80A253A8:
    beq     v1, $zero, lbl_80A25470
    addiu   v0, v1, 0xFFFF             # v0 = FFFFFFFF
    lbu     t9, 0x0114(s1)             # 00000114
    sll     v0, v0, 16
    sra     v0, v0, 16
    addiu   t5, t9, 0x0001             # t5 = 00000001
    bne     v0, $zero, lbl_80A25470
    sb      t5, 0x0114(s1)             # 00000114
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    jal     func_80026D90
    sh      v0, 0x0042($sp)
    lh      v0, 0x0042($sp)
    lui     t8, %hi(var_80A257A8)      # t8 = 80A20000
    addiu   t8, t8, %lo(var_80A257A8)  # t8 = 80A257A8
    andi    t6, v0, 0x0003             # t6 = 00000000
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  2
    addu    s0, t7, t8
    lwc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f6, 0x0024(s1)            # 00000024
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f10, $f6, $f8
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0048($sp)
    lwc1    $f18, 0x0028(s1)           # 00000028
    lwc1    $f4, 0x0004(s0)            # 00000004
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f12                  # $f12 = 5.00
    add.s   $f6, $f18, $f4
    add.s   $f8, $f0, $f6
    jal     func_80026D90
    swc1    $f8, 0x004C($sp)
    lwc1    $f10, 0x002C(s1)           # 0000002C
    lwc1    $f16, 0x0008(s0)           # 00000008
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0018($sp)
    add.s   $f18, $f10, $f16
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    add.s   $f4, $f0, $f18
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0048            # a2 = FFFFFFB8
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_8001DFEC
    swc1    $f4, 0x0050($sp)
lbl_80A25470:
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0028($sp)
    lw      s1, 0x002C($sp)
    lw      s2, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp = 00000000


func_80A25488:
    addiu   $sp, $sp, 0xFF50           # $sp = FFFFFF50
    sw      s5, 0x0054($sp)
    or      s5, a0, $zero              # s5 = 00000000
    sw      $ra, 0x0064($sp)
    sw      s8, 0x0060($sp)
    sw      s7, 0x005C($sp)
    sw      s6, 0x0058($sp)
    sw      s4, 0x0050($sp)
    sw      s3, 0x004C($sp)
    sw      s2, 0x0048($sp)
    sw      s1, 0x0044($sp)
    sw      s0, 0x0040($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    sw      a1, 0x00B4($sp)
    lw      t6, 0x00B4($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s2, a0, $zero              # s2 = 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t8, 0xFB00                 # t8 = FB000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, s0, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s2)             # 000002C0
    sw      t9, 0x0004(s0)             # 00000004
    sw      t8, 0x0000(s0)             # 00000000
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t1, 0xE200                 # t1 = E2000000
    lui     t2, 0xC811                 # t2 = C8110000
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s2)             # 000002C0
    ori     t2, t2, 0x2078             # t2 = C8112078
    ori     t1, t1, 0x001C             # t1 = E200001C
    sw      t1, 0x0000(s0)             # 00000000
    sw      t2, 0x0004(s0)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    lui     t4, 0xE700                 # t4 = E7000000
    or      s1, $zero, $zero           # s1 = 00000000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s2)             # 000002C0
    sw      $zero, 0x0004(s0)          # 00000004
    sw      t4, 0x0000(s0)             # 00000000
    lui     $at, %hi(var_80A25810)     # $at = 80A20000
    lwc1    $f24, %lo(var_80A25810)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f22                  # $f22 = 1.00
    lui     $at, %hi(var_80A25814)     # $at = 80A20000
    lui     s6, 0xDA38                 # s6 = DA380000
    ori     s6, s6, 0x0003             # s6 = DA380003
    lwc1    $f20, %lo(var_80A25814)($at)
    addiu   s8, $zero, 0x0008          # s8 = 00000008
    lui     s7, 0xDE00                 # s7 = DE000000
    lh      t5, 0x01B8(s5)             # 000001B8
lbl_80A25560:
    addiu   t6, s1, 0x0016             # t6 = 00000016
    sll     t7, s1,  2
    slt     $at, t5, t6
    beq     $at, $zero, lbl_80A255FC
    subu    t7, t7, s1
    sll     t7, t7,  2
    addu    v0, s5, t7
    lui     s4, 0x0600                 # s4 = 06000000
    addiu   s4, s4, 0x1DD0             # s4 = 06001DD0
    lwc1    $f12, 0x01E8(v0)           # 000001E8
    lwc1    $f14, 0x01EC(v0)           # 000001EC
    lw      a2, 0x01F0(v0)             # 000001F0
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    mtc1    s1, $f8                    # $f8 = 0.00
    lwc1    $f4, 0x0050(s5)            # 00000050
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f10, $f8
    mul.s   $f6, $f4, $f20
    nop
    mul.s   $f16, $f10, $f24
    add.s   $f18, $f22, $f16
    mul.s   $f12, $f6, $f18
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s3, 0x02C0(s2)             # 000002C0
    addiu   t8, s3, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s2)             # 000002C0
    sw      s6, 0x0000(s3)             # 00000000
    lw      t9, 0x00B4($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t9)             # 00000000
    sw      v0, 0x0004(s3)             # 00000004
    lw      s0, 0x02C0(s2)             # 000002C0
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s2)             # 000002C0
    sw      s4, 0x0004(s0)             # 00000004
    sw      s7, 0x0000(s0)             # 00000000
lbl_80A255FC:
    addiu   s1, s1, 0x0001             # s1 = 00000001
    bnel    s1, s8, lbl_80A25560
    lh      t5, 0x01B8(s5)             # 000001B8
    lh      v0, 0x01BA(s5)             # 000001BA
    beq     v0, $zero, lbl_80A256CC
    addiu   s1, v0, 0xFFFF             # s1 = FFFFFFFF
    lbu     t1, 0x0114(s5)             # 00000114
    sll     s1, s1, 16
    sra     s1, s1, 16
    andi    t3, s1, 0x0001             # t3 = 00000001
    addiu   t2, t1, 0x0001             # t2 = 00000001
    bne     t3, $zero, lbl_80A256CC
    sb      t2, 0x0114(s5)             # 00000114
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f20                  # $f20 = 5.00
    jal     func_80026D90
    mov.s   $f12, $f20
    andi    t4, s1, 0x0003             # t4 = 00000003
    sll     t5, t4,  2
    subu    t5, t5, t4
    lui     t6, %hi(var_80A257A8)      # t6 = 80A20000
    addiu   t6, t6, %lo(var_80A257A8)  # t6 = 80A257A8
    sll     t5, t5,  2
    addu    s0, t5, t6
    lwc1    $f8, 0x0000(s0)            # 00000000
    lwc1    $f4, 0x0024(s5)            # 00000024
    mov.s   $f12, $f20
    add.s   $f10, $f4, $f8
    add.s   $f16, $f0, $f10
    jal     func_80026D90
    swc1    $f16, 0x0078($sp)
    lwc1    $f6, 0x0028(s5)            # 00000028
    lwc1    $f18, 0x0004(s0)           # 00000004
    mov.s   $f12, $f20
    add.s   $f4, $f6, $f18
    add.s   $f8, $f0, $f4
    jal     func_80026D90
    swc1    $f8, 0x007C($sp)
    lwc1    $f10, 0x002C(s5)           # 0000002C
    lwc1    $f16, 0x0008(s0)           # 00000008
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    sw      t7, 0x0018($sp)
    add.s   $f6, $f10, $f16
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x00B4($sp)
    add.s   $f18, $f0, $f6
    or      a1, s5, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0078            # a2 = FFFFFFC8
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    jal     func_8001DFEC
    swc1    $f18, 0x0080($sp)
lbl_80A256CC:
    lw      $ra, 0x0064($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
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
    addiu   $sp, $sp, 0x00B0           # $sp = 00000000
    nop
    nop

.section .data

var_80A25710: .word 0x00EC0500, 0x00000005, 0x00E50000, 0x000002A8
.word func_80A24050
.word func_80A2418C
.word func_80A24934
.word func_80A251C0
var_80A25730: .word \
0x00000000, 0xFFCFFFFF, 0x04080000, 0xFFCFFFFF, \
0x00000000, 0x01010100, 0x00000000, 0x00000000, \
0x000F0064
var_80A25754: .word 0x0A110939, 0x10000000, 0x00000001
.word var_80A25730
var_80A25764: .word \
0x000000F2, 0x00F2F212, 0x00F2F424, 0xF2F2E400, \
0x00240000, 0x000000F4, 0xF200F8F4, 0x00000000
var_80A25784: .word 0x89170028, 0x801F0002, 0x304C001E
var_80A25790: .word 0x00000000, 0x00000000, 0x00000000
var_80A2579C: .word 0x00000000, 0x3DCCCCCD, 0x00000000
var_80A257A8: .word \
0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x40A00000, 0x00000000, 0x00000000, 0xC0A00000, \
0x00000000, 0x00000000

.section .rodata

var_80A257E0: .word 0xBECCCCCD
var_80A257E4: .word 0x3F333333
var_80A257E8: .word 0x40333333
var_80A257EC: .word 0xBECCCCCD
var_80A257F0: .word 0xBECCCCCD
var_80A257F4: .word 0x3ECCCCCD
var_80A257F8: .word 0x3ECCCCCD
var_80A257FC: .word 0x3FAA3D71
var_80A25800: .word 0x3ECCCCCD
var_80A25804: .word 0x3DCCCCCD
var_80A25808: .word 0x3F19999A
var_80A2580C: .word 0x3E19999A
var_80A25810: .word 0x3D23D70A
var_80A25814: .word 0x3ECCCCCD, 0x00000000, 0x00000000

