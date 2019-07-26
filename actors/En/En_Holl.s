.section .text
func_80895700:
    sw      a1, 0x0140(a0)             # 00000140
    jr      $ra
    nop


func_8089570C:
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lw      v0, 0x0000(v1)             # 8011A5D0
    xori    v0, v0, 0x00EE             # v0 = 000000EE
    sltiu   v0, v0, 0x0001
    beq     v0, $zero, lbl_80895734
    nop
    lw      v0, 0x1360(v1)             # 8011B930
    xori    v0, v0, 0x0008             # v0 = 000000E6
    sltiu   v0, v0, 0x0001
lbl_80895734:
    jr      $ra
    nop


func_8089573C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    lui     t7, %hi(var_80896520)      # t7 = 80890000
    addiu   t7, t7, %lo(var_80896520)  # t7 = 80896520
    sra     v0, v0,  6
    andi    v0, v0, 0x0007             # v0 = 00000000
    sll     t6, v0,  2
    addu    v1, t6, t7
    lw      a1, 0x0000(v1)             # 00000000
    sw      v1, 0x0018($sp)
    jal     func_80895700
    sw      a0, 0x0020($sp)
    lw      v1, 0x0018($sp)
    lui     t8, %hi(var_80896520)      # t8 = 80890000
    addiu   t8, t8, %lo(var_80896520)  # t8 = 80896520
    beq     v1, t8, lbl_8089578C
    lw      a0, 0x0020($sp)
    b       lbl_80895794
    sw      $zero, 0x0134(a0)          # 00000134
lbl_8089578C:
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sh      t9, 0x013C(a0)             # 0000013C
lbl_80895794:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808957A4:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lui     a1, %hi(var_8089653C)      # a1 = 80890000
    addiu   a1, a1, %lo(var_8089653C)  # a1 = 8089653C
    jal     func_80063F7C
    lw      a0, 0x0018($sp)
    jal     func_8089573C
    lw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    sb      $zero, 0x013F(t6)          # 0000013F
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808957E0:
    lhu     v0, 0x001C(a0)             # 0000001C
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a1
    lw      t6, 0x1D38(t6)             # 00011D38
    sra     v0, v0, 10
    sll     t7, v0,  4
    addu    v1, t6, t7
    lh      t8, 0x0004(v1)             # 00000004
    subu    t9, $zero, t8
    sh      t9, 0x0004(v1)             # 00000004
    jr      $ra
    nop


func_80895810:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    addiu   a1, $sp, 0x0004            # a1 = FFFFFFEC
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    v0, a0, $at
    lw      t7, 0x0000(v0)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CD0           # $at = 00011CD0
    sw      t7, 0x0000(a1)             # FFFFFFEC
    lw      t6, 0x0004(v0)             # 00000004
    addu    v1, a0, $at
    lui     t2, 0x0001                 # t2 = 00010000
    sw      t6, 0x0004(a1)             # FFFFFFF0
    lw      t7, 0x0008(v0)             # 00000008
    addu    t2, t2, a0
    lui     $at, 0x0001                # $at = 00010000
    sw      t7, 0x0008(a1)             # FFFFFFF4
    lw      t6, 0x000C(v0)             # 0000000C
    addu    $at, $at, a0
    sw      t6, 0x000C(a1)             # FFFFFFF8
    lw      t7, 0x0010(v0)             # 00000010
    sw      t7, 0x0010(a1)             # FFFFFFFC
    lw      t9, 0x0000(v1)             # 00000000
    sw      t9, 0x0000(v0)             # 00000000
    lw      t8, 0x0004(v1)             # 00000004
    sw      t8, 0x0004(v0)             # 00000004
    lw      t9, 0x0008(v1)             # 00000008
    sw      t9, 0x0008(v0)             # 00000008
    lw      t8, 0x000C(v1)             # 0000000C
    sw      t8, 0x000C(v0)             # 0000000C
    lw      t9, 0x0010(v1)             # 00000010
    sw      t9, 0x0010(v0)             # 00000010
    lw      t1, 0x0000(a1)             # FFFFFFEC
    sw      t1, 0x0000(v1)             # 00000000
    lw      t0, 0x0004(a1)             # FFFFFFF0
    sw      t0, 0x0004(v1)             # 00000004
    lw      t1, 0x0008(a1)             # FFFFFFF4
    sw      t1, 0x0008(v1)             # 00000008
    lw      t0, 0x000C(a1)             # FFFFFFF8
    sw      t0, 0x000C(v1)             # 0000000C
    lw      t1, 0x0010(a1)             # FFFFFFFC
    sw      t1, 0x0010(v1)             # 00000010
    lbu     t2, 0x1CEC(t2)             # 00011CEC
    xori    t3, t2, 0x0001             # t3 = 00010001
    sb      t3, 0x1CEC($at)            # 00011CEC
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_808958CC:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      t6, 0x00A4(s0)             # 000000A4
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lw      v0, 0x1C44(s0)             # 00001C44
    bne     t6, $at, lbl_808958FC
    or      a0, a3, $zero              # a0 = 00000000
    b       lbl_80895900
    addiu   t0, $zero, 0x0001          # t0 = 00000001
lbl_808958FC:
    or      t0, $zero, $zero           # t0 = 00000000
lbl_80895900:
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFEC
    addiu   a2, v0, 0x0024             # a2 = 00000024
    sw      a3, 0x0050($sp)
    jal     func_8002154C
    sw      t0, 0x0030($sp)
    lwc1    $f4, 0x0044($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f8                   # $f8 = -50.00
    c.lt.s  $f4, $f6
    lw      a3, 0x0050($sp)
    lw      t0, 0x0030($sp)
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    bc1f    lbl_80895944
    lui     $at, 0x4348                # $at = 43480000
    b       lbl_80895948
    sb      $zero, 0x013E(a3)          # 0000013E
lbl_80895944:
    sb      t7, 0x013E(a3)             # 0000013E
lbl_80895948:
    lwc1    $f12, 0x0040($sp)
    lwc1    $f0, 0x0044($sp)
    c.lt.s  $f8, $f12
    abs.s   $f2, $f0
    bc1fl   lbl_80895AFC
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f10                  # $f10 = 200.00
    lui     $at, 0x42C8                # $at = 42C80000
    lwc1    $f0, 0x003C($sp)
    c.lt.s  $f12, $f10
    nop
    bc1fl   lbl_80895AFC
    lw      $ra, 0x001C($sp)
    mtc1    $at, $f16                  # $f16 = 100.00
    abs.s   $f0, $f0
    lui     t9, %hi(var_80896548)      # t9 = 80890000
    c.lt.s  $f0, $f16
    addiu   t9, t9, %lo(var_80896548)  # t9 = 80896548
    sll     t8, t0,  4
    addu    v0, t8, t9
    bc1fl   lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lwc1    $f18, 0x0000(v0)           # 00000000
    c.lt.s  $f2, $f18
    nop
    bc1fl   lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lwc1    $f4, 0x0004(v0)            # 00000004
    lhu     a1, 0x001C(a3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f4, $f2
    addu    v1, s0, $at
    sra     a1, a1, 10
    bc1fl   lbl_80895A3C
    lbu     t4, 0x013E(a3)             # 0000013E
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, s0, $at
    lb      t1, 0x1CD0(v1)             # 00001CD0
    bltzl   t1, lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lb      t2, 0x1CED(v1)             # 00001CED
    bnel    t2, $zero, lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lw      t3, 0x1D38(v1)             # 00001D38
    lbu     t6, 0x013E(a3)             # 0000013E
    sll     t4, a1,  4
    addu    t5, t3, t4
    sll     t7, t6,  1
    addu    t8, t5, t7
    lb      t9, 0x0000(t8)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80895810
    sb      t9, 0x0003(a3)             # 00000003
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addu    a1, s0, $at
    jal     func_80080C98
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lbu     t4, 0x013E(a3)             # 0000013E
lbl_80895A3C:
    lw      t1, 0x1D38(v1)             # 00001D38
    sll     t2, a1,  4
    xori    t6, t4, 0x0001             # t6 = 00000001
    sll     t5, t6,  1
    addu    t3, t1, t2
    addu    t7, t3, t5
    lb      t8, 0x0000(t7)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    sb      t8, 0x0003(a3)             # 00000003
    lb      t9, 0x1CD0(v1)             # 00001CD0
    addu    a1, s0, $at
    or      a0, s0, $zero              # a0 = 00000000
    bgezl   t9, lbl_80895A8C
    lwc1    $f0, 0x000C(v0)            # 0000000C
    jal     func_80080A3C
    lb      a2, 0x0003(a3)             # 00000003
    b       lbl_80895AFC
    lw      $ra, 0x001C($sp)
    lwc1    $f0, 0x000C(v0)            # 0000000C
lbl_80895A8C:
    lwc1    $f8, 0x0008(v0)            # 00000008
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f6                   # $f6 = 255.00
    sub.s   $f10, $f8, $f0
    sub.s   $f18, $f2, $f0
    div.s   $f16, $f6, $f10
    mul.s   $f4, $f18, $f16
    trunc.w.s $f8, $f4
    mfc1    t2, $f8
    nop
    sh      t2, 0x013C(a3)             # 0000013C
    lh      a0, 0x013C(a3)             # 0000013C
    bgez    a0, lbl_80895ACC
    slti    $at, a0, 0x0100
    b       lbl_80895AE0
    sh      $zero, 0x013C(a3)          # 0000013C
lbl_80895ACC:
    bne     $at, $zero, lbl_80895ADC
    or      t0, a0, $zero              # t0 = 00000000
    b       lbl_80895ADC
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
lbl_80895ADC:
    sh      t0, 0x013C(a3)             # 0000013C
lbl_80895AE0:
    lb      t4, 0x0003(a3)             # 00000003
    lb      t6, 0x1CBC(v1)             # 00001CBC
    beql    t4, t6, lbl_80895AFC
    lw      $ra, 0x001C($sp)
    jal     func_80895810
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_80895AFC:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_80895B0C:
    addiu   $sp, $sp, 0xFFA8           # $sp -= 0x58
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0058($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lui     a2, 0x800F                 # a2 = 800F0000
    lw      a2, -0x0E60(a2)            # 800EF1A0
    lw      v0, 0x1C44(a3)             # 00001C44
    lw      a0, 0x0058($sp)
    sltu    a2, $zero, a2
    bne     a2, $zero, lbl_80895B40
    addiu   a1, $sp, 0x0044            # a1 = FFFFFFEC
    lbu     a2, 0x1D6C(a3)             # 00001D6C
    sltu    a2, $zero, a2
lbl_80895B40:
    beql    a2, $zero, lbl_80895B54
    addiu   a2, v0, 0x0024             # a2 = 00000024
    b       lbl_80895B54
    addiu   a2, a3, 0x00E0             # a2 = 000000E0
    addiu   a2, v0, 0x0024             # a2 = 00000024
lbl_80895B54:
    jal     func_8002154C
    sw      a3, 0x005C($sp)
    lw      t6, 0x0058($sp)
    addiu   $at, $zero, 0x0006         # $at = 00000006
    lh      t7, 0x001C(t6)             # 0000001C
    sra     t8, t7,  6
    andi    t9, t8, 0x0007             # t9 = 00000000
    bne     t9, $at, lbl_80895B84
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f2                   # $f2 = 100.00
    b       lbl_80895B90
    nop
lbl_80895B84:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    nop
lbl_80895B90:
    jal     func_8089570C
    swc1    $f2, 0x003C($sp)
    bne     v0, $zero, lbl_80895C24
    lwc1    $f2, 0x003C($sp)
    lui     $at, 0xC248                # $at = C2480000
    mtc1    $at, $f4                   # $f4 = -50.00
    lwc1    $f0, 0x0048($sp)
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80895CB0
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f6                   # $f6 = 200.00
    nop
    c.lt.s  $f0, $f6
    lwc1    $f0, 0x0044($sp)
    bc1fl   lbl_80895CB0
    lw      $ra, 0x0014($sp)
    abs.s   $f0, $f0
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f2
    lwc1    $f0, 0x004C($sp)
    bc1fl   lbl_80895CB0
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f8                   # $f8 = 100.00
    abs.s   $f0, $f0
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80895CB0
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = 50.00
    nop
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_80895CB0
    lw      $ra, 0x0014($sp)
lbl_80895C24:
    lw      t0, 0x0058($sp)
    lwc1    $f16, 0x004C($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lhu     a3, 0x001C(t0)             # 0000001C
    lw      a1, 0x005C($sp)
    c.lt.s  $f16, $f18
    lui     $at, 0x0001                # $at = 00010000
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    sra     a3, a3, 10
    bc1f    lbl_80895C58
    addu    a1, a1, $at
    b       lbl_80895C58
    or      a0, $zero, $zero           # a0 = 00000000
lbl_80895C58:
    lw      t1, 0x1D38(a1)             # 00001D38
    sll     t2, a3,  4
    sll     t3, a0,  1
    addu    v1, t1, t2
    addu    t4, v1, t3
    lb      a2, 0x0000(t4)             # 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    sb      a2, 0x0003(t0)             # 00000003
    lb      t5, 0x1CBC(a1)             # 00001CBC
    lb      a3, 0x0003(t0)             # 00000003
    lw      a0, 0x005C($sp)
    beq     t5, a3, lbl_80895CAC
    addu    a1, a0, $at
    jal     func_80080A3C
    or      a2, a3, $zero              # a2 = 00000000
    beq     v0, $zero, lbl_80895CAC
    lw      a0, 0x0058($sp)
    lui     a1, %hi(func_80896330)     # a1 = 80890000
    jal     func_80895700
    addiu   a1, a1, %lo(func_80896330) # a1 = 80896330
lbl_80895CAC:
    lw      $ra, 0x0014($sp)
lbl_80895CB0:
    addiu   $sp, $sp, 0x0058           # $sp += 0x58
    jr      $ra
    nop


func_80895CBC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, 0x43FA                # $at = 43FA0000
    mtc1    $at, $f6                   # $f6 = 500.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lwc1    $f0, 0x0094(s0)            # 00000094
    lw      t0, 0x1C44(s1)             # 00001C44
    c.lt.s  $f4, $f6
    lui     $at, 0x442F                # $at = 442F0000
    abs.s   $f0, $f0
    bc1fl   lbl_80895E7C
    lbu     t3, 0x013F(s0)             # 0000013F
    mtc1    $at, $f8                   # $f8 = 700.00
    lui     $at, 0x42BE                # $at = 42BE0000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80895E7C
    lbu     t3, 0x013F(s0)             # 0000013F
    mtc1    $at, $f12                  # $f12 = 95.00
    lui     $at, %hi(var_808965D0)     # $at = 80890000
    c.lt.s  $f0, $f12
    lhu     v1, 0x001C(s0)             # 0000001C
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   a0, t0, 0x0024             # a0 = 00000024
    bc1f    lbl_80895D44
    sra     v1, v1, 10
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    b       lbl_80895DB0
    sh      t6, 0x1E18($at)            # 00011E18
lbl_80895D44:
    lwc1    $f2, %lo(var_808965D0)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_80895D6C
    sub.s   $f10, $f2, $f0
    b       lbl_80895DB0
    sh      $zero, 0x1E18($at)         # 00011E18
    sub.s   $f10, $f2, $f0
lbl_80895D6C:
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, 0x0001                # $at = 00010000
    trunc.w.s $f16, $f10
    addu    $at, $at, s1
    mfc1    t8, $f16
    nop
    sll     t9, t8, 16
    sra     t1, t9, 16
    mtc1    t1, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    mul.s   $f8, $f4, $f6
    trunc.w.s $f10, $f8
    mfc1    t3, $f10
    nop
    sh      t3, 0x1E18($at)            # 00011E18
lbl_80895DB0:
    c.lt.s  $f0, $f12
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s1, $at
    sll     t5, v1,  4
    bc1f    lbl_80895E94
    lui     a2, 0x3F80                 # a2 = 3F800000
    lw      t4, 0x1D38(v0)             # 00001D38
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    addu    t6, t4, t5
    lb      t7, 0x0002(t6)             # 00000101
    lw      a1, 0x0024(s0)             # 00000024
    lui     a3, 0x4248                 # a3 = 42480000
    sb      t7, 0x0003(s0)             # 00000003
    sw      t0, 0x0034($sp)
    sw      v0, 0x0028($sp)
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    lw      a0, 0x0034($sp)
    lw      a1, 0x002C(s0)             # 0000002C
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x4248                 # a3 = 42480000
    swc1    $f18, 0x0010($sp)
    jal     func_80064178
    addiu   a0, a0, 0x002C             # a0 = 0000002C
    lw      t8, 0x0028($sp)
    lb      a2, 0x0003(s0)             # 00000003
    lui     $at, 0x0001                # $at = 00010000
    lb      t9, 0x1CBC(t8)             # 00001CBC
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    or      a0, s1, $zero              # a0 = 00000000
    beql    t9, a2, lbl_80895E98
    lw      $ra, 0x0024($sp)
    jal     func_80080A3C
    addu    a1, s1, $at
    beq     v0, $zero, lbl_80895E94
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80896330)     # a1 = 80890000
    jal     func_80895700
    addiu   a1, a1, %lo(func_80896330) # a1 = 80896330
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    sb      t1, 0x013F(s0)             # 0000013F
    lw      t2, 0x0034($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    nop
    swc1    $f4, 0x0068(t2)            # 00000068
    b       lbl_80895E98
    lw      $ra, 0x0024($sp)
    lbu     t3, 0x013F(s0)             # 0000013F
lbl_80895E7C:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s1
    beql    t3, $zero, lbl_80895E98
    lw      $ra, 0x0024($sp)
    sh      $zero, 0x1E18($at)         # 00011E18
    sb      $zero, 0x013F(s0)          # 0000013F
lbl_80895E94:
    lw      $ra, 0x0024($sp)
lbl_80895E98:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80895EA8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80895FFC
    lbu     t7, 0x013F(a3)             # 0000013F
    lwc1    $f0, 0x0094(a3)            # 00000094
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    abs.s   $f0, $f0
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80895FFC
    lbu     t7, 0x013F(a3)             # 0000013F
    mtc1    $at, $f12                  # $f12 = 50.00
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    lui     $at, %hi(var_808965D4)     # $at = 80890000
    c.lt.s  $f0, $f12
    nop
    bc1fl   lbl_80895F2C
    sub.s   $f8, $f2, $f0
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    b       lbl_80895F4C
    sh      t6, 0x1E18($at)            # 00011E18
    sub.s   $f8, $f2, $f0
lbl_80895F2C:
    lwc1    $f10, %lo(var_808965D4)($at)
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    t8, $f18
    nop
    sh      t8, 0x1E18($at)            # 00011E18
lbl_80895F4C:
    c.lt.s  $f12, $f0
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, s0, $at
    bc1fl   lbl_80896018
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0094(a3)            # 00000094
    lhu     a0, 0x001C(a3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f4, $f6
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addu    a1, s0, $at
    bc1f    lbl_80895F90
    sra     a0, a0, 10
    b       lbl_80895F90
    or      v1, $zero, $zero           # v1 = 00000000
lbl_80895F90:
    lw      t9, 0x1D38(v0)             # 00001D38
    sll     t0, a0,  4
    sll     t2, v1,  1
    addu    t1, t9, t0
    addu    t3, t1, t2
    lb      t4, 0x0000(t3)             # 00000000
    or      a0, s0, $zero              # a0 = 00000000
    sb      t4, 0x0003(a3)             # 00000003
    lb      t5, 0x1CBC(v0)             # 00001CBC
    lb      a2, 0x0003(a3)             # 00000003
    beql    t5, a2, lbl_80896018
    lw      $ra, 0x001C($sp)
    jal     func_80080A3C
    sw      a3, 0x0020($sp)
    beq     v0, $zero, lbl_80896014
    lw      a3, 0x0020($sp)
    lui     a1, %hi(func_80896330)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80896330) # a1 = 80896330
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_80895700
    sw      a3, 0x0020($sp)
    lw      a3, 0x0020($sp)
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x013F(a3)             # 0000013F
    b       lbl_80896018
    lw      $ra, 0x001C($sp)
    lbu     t7, 0x013F(a3)             # 0000013F
lbl_80895FFC:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, s0
    beql    t7, $zero, lbl_80896018
    lw      $ra, 0x001C($sp)
    sb      $zero, 0x013F(a3)          # 0000013F
    sh      $zero, 0x1E18($at)         # 00011E18
lbl_80896014:
    lw      $ra, 0x001C($sp)
lbl_80896018:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80896028:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     $at, 0x42F0                # $at = 42F00000
    mtc1    $at, $f6                   # $f6 = 120.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80896114
    lw      $ra, 0x0014($sp)
    lwc1    $f2, 0x0094(a3)            # 00000094
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f8                   # $f8 = 200.00
    abs.s   $f0, $f2
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_80896114
    lw      $ra, 0x0014($sp)
    mtc1    $at, $f10                  # $f10 = 50.00
    lw      v0, 0x001C($sp)
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f10, $f0
    addu    v0, v0, $at
    bc1fl   lbl_80896114
    lw      $ra, 0x0014($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lhu     a0, 0x001C(a3)             # 0000001C
    lui     $at, 0x0001                # $at = 00010000
    c.lt.s  $f16, $f2
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    sra     a0, a0, 10
    bc1f    lbl_808960C0
    nop
    b       lbl_808960C0
    or      v1, $zero, $zero           # v1 = 00000000
lbl_808960C0:
    lw      t6, 0x1D38(v0)             # 00001D38
    sll     t7, a0,  4
    sll     t9, v1,  1
    addu    t8, t6, t7
    addu    t0, t8, t9
    lb      t1, 0x0000(t0)             # 00000000
    sb      t1, 0x0003(a3)             # 00000003
    lb      t2, 0x1CBC(v0)             # 00001CBC
    lb      a2, 0x0003(a3)             # 00000003
    lw      a0, 0x001C($sp)
    beq     t2, a2, lbl_80896110
    addu    a1, a0, $at
    jal     func_80080A3C
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80896110
    lw      a3, 0x0018($sp)
    lui     a1, %hi(func_80896330)     # a1 = 80890000
    addiu   a1, a1, %lo(func_80896330) # a1 = 80896330
    jal     func_80895700
    or      a0, a3, $zero              # a0 = 00000000
lbl_80896110:
    lw      $ra, 0x0014($sp)
lbl_80896114:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80896120:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x1C44(a3)             # 00001C44
    or      a0, a3, $zero              # a0 = 00000000
    sw      t6, 0x0044($sp)
    lh      a1, 0x001C(s0)             # 0000001C
    sw      a3, 0x004C($sp)
    jal     func_8002049C
    andi    a1, a1, 0x003F             # a1 = 00000000
    bne     v0, $zero, lbl_80896178
    lw      a3, 0x004C($sp)
    lbu     t7, 0x013F(s0)             # 0000013F
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    beql    t7, $zero, lbl_80896320
    lw      $ra, 0x001C($sp)
    sh      $zero, 0x1E18($at)         # 00011E18
    b       lbl_8089631C
    sb      $zero, 0x013F(s0)          # 0000013F
lbl_80896178:
    lw      a2, 0x0044($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0038            # a1 = FFFFFFF0
    sw      a3, 0x004C($sp)
    jal     func_8002154C
    addiu   a2, a2, 0x0024             # a2 = 00000024
    lui     $at, 0xC248                # $at = C2480000
    lwc1    $f12, 0x003C($sp)
    mtc1    $at, $f4                   # $f4 = -50.00
    lwc1    $f0, 0x0040($sp)
    lw      a3, 0x004C($sp)
    c.lt.s  $f4, $f12
    lui     $at, 0x4348                # $at = 43480000
    abs.s   $f2, $f0
    bc1fl   lbl_80896304
    lbu     t9, 0x013F(s0)             # 0000013F
    mtc1    $at, $f14                  # $f14 = 200.00
    lwc1    $f0, 0x0038($sp)
    c.lt.s  $f12, $f14
    nop
    bc1fl   lbl_80896304
    lbu     t9, 0x013F(s0)             # 0000013F
    abs.s   $f0, $f0
    lui     $at, 0x42C8                # $at = 42C80000
    c.lt.s  $f0, $f14
    nop
    bc1fl   lbl_80896304
    lbu     t9, 0x013F(s0)             # 0000013F
    mtc1    $at, $f6                   # $f6 = 100.00
    lui     $at, 0x4248                # $at = 42480000
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    c.lt.s  $f2, $f6
    nop
    bc1fl   lbl_80896304
    lbu     t9, 0x013F(s0)             # 0000013F
    mtc1    $at, $f0                   # $f0 = 50.00
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    sub.s   $f8, $f2, $f0
    sb      t8, 0x013F(s0)             # 0000013F
    lui     $at, %hi(var_808965D8)     # $at = 80890000
    lwc1    $f10, %lo(var_808965D8)($at)
    lui     $at, 0x0001                # $at = 00010000
    lhu     a0, 0x001C(s0)             # 0000001C
    mul.s   $f16, $f8, $f10
    addu    $at, $at, a3
    sra     a0, a0, 10
    trunc.w.s $f18, $f16
    mfc1    t0, $f18
    nop
    subu    t1, a1, t0
    sh      t1, 0x1E18($at)            # 00011E18
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a3, $at
    lh      v0, 0x1E18(v1)             # 00001E18
    slti    $at, v0, 0x0100
    bne     $at, $zero, lbl_80896268
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    b       lbl_80896278
    sh      a1, 0x1E18($at)            # 00011E18
lbl_80896268:
    bgez    v0, lbl_80896278
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    sh      $zero, 0x1E18($at)         # 00011E18
lbl_80896278:
    c.lt.s  $f2, $f0
    lwc1    $f4, 0x0040($sp)
    bc1fl   lbl_80896320
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    c.lt.s  $f4, $f6
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    addu    a1, a3, $at
    bc1f    lbl_808962B0
    nop
    b       lbl_808962B0
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808962B0:
    lw      t2, 0x1D38(v1)             # 00001D38
    sll     t3, a0,  4
    sll     t5, v0,  1
    addu    t4, t2, t3
    addu    t6, t4, t5
    lb      t7, 0x0000(t6)             # 00000000
    sb      t7, 0x0003(s0)             # 00000003
    lb      t8, 0x1CBC(v1)             # 00001CBC
    lb      a2, 0x0003(s0)             # 00000003
    beql    t8, a2, lbl_80896320
    lw      $ra, 0x001C($sp)
    jal     func_80080A3C
    or      a0, a3, $zero              # a0 = 00000000
    beq     v0, $zero, lbl_8089631C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80896330)     # a1 = 80890000
    jal     func_80895700
    addiu   a1, a1, %lo(func_80896330) # a1 = 80896330
    b       lbl_80896320
    lw      $ra, 0x001C($sp)
    lbu     t9, 0x013F(s0)             # 0000013F
lbl_80896304:
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a3
    beql    t9, $zero, lbl_80896320
    lw      $ra, 0x001C($sp)
    sh      $zero, 0x1E18($at)         # 00011E18
    sb      $zero, 0x013F(s0)          # 0000013F
lbl_8089631C:
    lw      $ra, 0x001C($sp)
lbl_80896320:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80896330:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    or      a2, a1, $zero              # a2 = 00000000
    jal     func_8089570C
    sw      a2, 0x0024($sp)
    bne     v0, $zero, lbl_80896398
    lw      a2, 0x0024($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a2, $at
    lb      t6, 0x1CED(v0)             # 00001CED
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1CBC           # $at = 00011CBC
    bne     t6, $zero, lbl_80896398
    or      a0, a2, $zero              # a0 = 00000000
    addu    a1, a2, $at
    jal     func_80080C98
    sw      v0, 0x001C($sp)
    lw      v0, 0x001C($sp)
    lw      t8, 0x0020($sp)
    lh      t7, 0x1E18(v0)             # 00001E18
    bne     t7, $zero, lbl_80896390
    nop
    sb      $zero, 0x013F(t8)          # 0000013F
lbl_80896390:
    jal     func_8089573C
    lw      a0, 0x0020($sp)
lbl_80896398:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808963A8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t9, 0x0140(a0)             # 00000140
    jalr    $ra, t9
    nop
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808963CC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      $ra, 0x001C($sp)
    sw      s0, 0x0018($sp)
    sw      a1, 0x003C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      v0, 0x013C(a2)             # 0000013C
    lw      t6, 0x003C($sp)
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    beql    v0, $zero, lbl_808964E8
    lw      $ra, 0x001C($sp)
    bne     v0, $at, lbl_80896408
    lw      a3, 0x0000(t6)             # 00000000
    lw      s0, 0x02C0(a3)             # 000002C0
    b       lbl_80896410
    addiu   a1, $zero, 0x0025          # a1 = 00000025
lbl_80896408:
    lw      s0, 0x02D0(a3)             # 000002D0
    or      a1, $zero, $zero           # a1 = 00000000
lbl_80896410:
    or      a0, s0, $zero              # a0 = 00000000
    sw      a2, 0x0038($sp)
    jal     func_8007DFBC
    sw      a3, 0x0028($sp)
    lw      a2, 0x0038($sp)
    lw      a3, 0x0028($sp)
    or      s0, v0, $zero              # s0 = 00000000
    lbu     t7, 0x013E(a2)             # 0000013E
    lui     $at, %hi(var_808965DC)     # $at = 80890000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    bnel    t7, $zero, lbl_8089645C
    lui     t8, 0xDA38                 # t8 = DA380000
    lwc1    $f12, %lo(var_808965DC)($at)
    sw      a2, 0x0038($sp)
    jal     func_800AAB94
    sw      a3, 0x0028($sp)
    lw      a2, 0x0038($sp)
    lw      a3, 0x0028($sp)
    lui     t8, 0xDA38                 # t8 = DA380000
lbl_8089645C:
    ori     t8, t8, 0x0003             # t8 = DA380003
    or      a1, s0, $zero              # a1 = 00000000
    sw      t8, 0x0000(a1)             # 00000000
    lw      t9, 0x003C($sp)
    addiu   s0, s0, 0x0008             # s0 = 00000008
    lw      a0, 0x0000(t9)             # 00000000
    sw      a3, 0x0028($sp)
    sw      a2, 0x0038($sp)
    jal     func_800AB900
    sw      a1, 0x0020($sp)
    lw      a1, 0x0020($sp)
    lw      a2, 0x0038($sp)
    lw      a3, 0x0028($sp)
    sw      v0, 0x0004(a1)             # 00000004
    or      v1, s0, $zero              # v1 = 00000008
    lui     t0, 0xFA00                 # t0 = FA000000
    sw      t0, 0x0000(v1)             # 00000008
    lbu     t2, 0x013D(a2)             # 0000013D
    addiu   s0, s0, 0x0008             # s0 = 00000010
    or      a0, s0, $zero              # a0 = 00000010
    sw      t2, 0x0004(v1)             # 0000000C
    lui     t4, %hi(var_808965A8)      # t4 = 80890000
    addiu   t4, t4, %lo(var_808965A8)  # t4 = 808965A8
    lui     t3, 0xDE00                 # t3 = DE000000
    sw      t3, 0x0000(a0)             # 00000010
    sw      t4, 0x0004(a0)             # 00000014
    addiu   s0, s0, 0x0008             # s0 = 00000018
    lh      t5, 0x013C(a2)             # 0000013C
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bnel    t5, $at, lbl_808964E4
    sw      s0, 0x02D0(a3)             # 000002D0
    b       lbl_808964E4
    sw      s0, 0x02C0(a3)             # 000002C0
    sw      s0, 0x02D0(a3)             # 000002D0
lbl_808964E4:
    lw      $ra, 0x001C($sp)
lbl_808964E8:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop
    nop
    nop

.section .data

var_80896500: .word 0x00230A00, 0x00000010, 0x00010000, 0x00000144
.word func_808957A4
.word func_808957E0
.word func_808963A8
.word func_808963CC
var_80896520: .word func_808958CC
.word func_80895CBC
.word func_80896028
.word func_80896120
.word func_80895B0C
.word func_80895EA8
.word func_80895B0C
var_8089653C: .word 0xB0F40FA0, 0xB0F80190, 0x30FC0190
var_80896548: .word \
0x43480000, 0x43160000, 0x42C80000, 0x42480000, \
0x42C80000, 0x42960000, 0x42480000, 0x41C80000
var_80896568: .word \
0x55F04E20, 0x00000000, 0x08000800, 0xFFFFFFFF, \
0xAA104E20, 0x00000000, 0x00000800, 0xFFFFFFFF, \
0xAA10B1E0, 0x00000000, 0x00000000, 0xFFFFFFFF, \
0x55F0B1E0, 0x00000000, 0x08000000, 0xFFFFFFFF
var_808965A8: .word \
0xD7000000, 0xFFFFFFFF, 0xFCFFFFFF, 0xFFFDF638, \
0x01004008
.word var_80896568
.word 0x06000204, 0x00000406, 0xDF000000, 0x00000000

.section .rodata

var_808965D0: .word 0x44174000
var_808965D4: .word 0x3FD9999A
var_808965D8: .word 0x40BCCCCD
var_808965DC: .word 0x40490FDB

