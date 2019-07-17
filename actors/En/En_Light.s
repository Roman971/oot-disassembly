.section .text
func_80866B30:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      a1, 0x0034($sp)
    lui     t6, 0x8012                 # t6 = 80120000
    lw      t6, -0x46D4(t6)            # 8011B92C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   s1, s0, 0x0144             # s1 = 00000144
    bne     t6, $at, lbl_80866BE8
    or      a0, s1, $zero              # a0 = 00000144
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   s1, s0, 0x0144             # s1 = 00000144
    or      a0, s1, $zero              # a0 = 00000144
    bgez    t7, lbl_80866B7C
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    beq     $zero, $zero, lbl_80866B80
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80866B7C:
    addiu   v0, $zero, 0x0028          # v0 = 00000028
lbl_80866B80:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f10, $f8
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00B4          # t6 = 000000B4
    trunc.w.s $f6, $f4
    mfc1    t2, $f10
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    trunc.w.s $f18, $f16
    mfc1    a1, $f6
    addu    a2, v0, t2
    sll     a2, a2, 16
    mfc1    a3, $f18
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    jal     func_80065BCC
    sw      t4, 0x0010($sp)
    beq     $zero, $zero, lbl_80866C64
    lw      a0, 0x0034($sp)
lbl_80866BE8:
    lh      t8, 0x001C(s0)             # 0000001C
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    bgez    t8, lbl_80866C04
    addiu   t7, $zero, 0x00B4          # t7 = 000000B4
    beq     $zero, $zero, lbl_80866C08
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80866C04:
    addiu   v0, $zero, 0x0028          # v0 = 00000028
lbl_80866C08:
    lwc1    $f8, 0x0028(s0)            # 00000028
    lwc1    $f4, 0x0024(s0)            # 00000024
    lwc1    $f16, 0x002C(s0)           # 0000002C
    trunc.w.s $f10, $f8
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    sw      t8, 0x001C($sp)
    trunc.w.s $f6, $f4
    mfc1    t3, $f10
    sw      t7, 0x0018($sp)
    trunc.w.s $f18, $f16
    mfc1    a1, $f6
    addu    a2, v0, t3
    sll     a2, a2, 16
    mfc1    a3, $f18
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sw      t6, 0x0014($sp)
    jal     func_80065C30
    sw      t5, 0x0010($sp)
    lw      a0, 0x0034($sp)
lbl_80866C64:
    or      a2, s1, $zero              # a2 = 00000144
    jal     func_800665B0
    addiu   a1, a0, 0x07A8             # a1 = 000007A8
    lh      t0, 0x001C(s0)             # 0000001C
    lui     t3, %hi(var_808677E7)      # t3 = 80860000
    sw      v0, 0x0140(s0)             # 00000140
    andi    t1, t0, 0x000F             # t1 = 00000000
    sll     t2, t1,  3
    addu    t3, t3, t2
    lbu     t3, %lo(var_808677E7)(t3)
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t3, $f4                    # $f4 = 0.00
    bgez    t3, lbl_80866CAC
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_80866CAC:
    lui     $at, %hi(var_80867860)     # $at = 80860000
    lwc1    $f10, %lo(var_80867860)($at)
    mul.s   $f16, $f6, $f10
    mfc1    a1, $f16
    jal     func_80020F88
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f18                  # $f18 = 255.00
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t8, %hi(func_80867064)     # t8 = 80860000
    mul.s   $f4, $f0, $f18
    andi    t7, t6, 0x0400             # t7 = 00000000
    addiu   t8, t8, %lo(func_80867064) # t8 = 80867064
    trunc.w.s $f8, $f4
    mfc1    t5, $f8
    beq     t7, $zero, lbl_80866CFC
    sb      t5, 0x013C(s0)             # 0000013C
    sw      t8, 0x0130(s0)             # 00000130
lbl_80866CFC:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80866D10:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    jal     func_80066610
    lw      a2, 0x0140(t6)             # 00000140
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80866D44:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x07A0(a1)             # 000007A0
    sll     t7, t6,  2
    addu    t8, a1, t7
    lw      a0, 0x0790(t8)             # 00000790
    jal     func_8004977C
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t9, v0, $at
    lw      v1, 0x0118(a2)             # 00000118
    sh      t9, 0x00B6(a2)             # 000000B6
    addiu   a0, a2, 0x0024             # a0 = 00000024
    beq     v1, $zero, lbl_80866DA8
    addiu   a1, v1, 0x0024             # a1 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lui     $at, 0x4188                # $at = 41880000
    mtc1    $at, $f6                   # $f6 = 17.00
    lwc1    $f4, 0x0028(a2)            # 00000028
    add.s   $f8, $f4, $f6
    swc1    $f8, 0x0028(a2)            # 00000028
lbl_80866DA8:
    lbu     t0, 0x013C(a2)             # 0000013C
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sb      t1, 0x013C(a2)             # 0000013C
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80866DC0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_808677E0)      # t9 = 80860000
    addiu   t9, t9, %lo(var_808677E0)  # t9 = 808677E0
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  3
    addu    v0, t8, t9
    jal     func_800CDCCC              # Rand.Next() float
    sw      v0, 0x0028($sp)
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lh      t0, 0x001C(s0)             # 0000001C
    lw      v0, 0x0028($sp)
    mul.s   $f4, $f0, $f12
    addiu   v1, $zero, 0x012C          # v1 = 0000012C
    bgez    t0, lbl_80866E1C
    add.s   $f2, $f4, $f12
    beq     $zero, $zero, lbl_80866E1C
    addiu   v1, $zero, 0x0064          # v1 = 00000064
lbl_80866E1C:
    lbu     t1, 0x0000(v0)             # 00000000
    addiu   a0, s0, 0x0144             # a0 = 00000144
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f6                    # $f6 = 0.00
    bgez    t1, lbl_80866E40
    cvt.s.w $f8, $f6
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f8, $f8, $f10
lbl_80866E40:
    mul.s   $f16, $f8, $f2
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t2, $f31
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f16
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_80866EB8
    mfc1    a1, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f18, $f16, $f18
    ctc1    a1, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_80866EAC
    nop
    mfc1    a1, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80866EC4
    or      a1, a1, $at                # a1 = 80000000
lbl_80866EAC:
    beq     $zero, $zero, lbl_80866EC4
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f18
lbl_80866EB8:
    nop
    bltz    a1, lbl_80866EAC
    nop
lbl_80866EC4:
    lbu     t3, 0x0001(v0)             # 00000001
    ctc1    t2, $f31
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    mtc1    t3, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t3, lbl_80866EEC
    cvt.s.w $f6, $f4
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f6, $f6, $f10
lbl_80866EEC:
    mul.s   $f8, $f6, $f2
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t4, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f16, $f8
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_80866F64
    mfc1    a2, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f16, $f8, $f16
    ctc1    a2, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_80866F58
    nop
    mfc1    a2, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80866F70
    or      a2, a2, $at                # a2 = 80000000
lbl_80866F58:
    beq     $zero, $zero, lbl_80866F70
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f16
lbl_80866F64:
    nop
    bltz    a2, lbl_80866F58
    nop
lbl_80866F70:
    lbu     t5, 0x0002(v0)             # 00000002
    ctc1    t4, $f31
    andi    a2, a2, 0x00FF             # a2 = 000000FF
    mtc1    t5, $f18                   # $f18 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t5, lbl_80866F98
    cvt.s.w $f4, $f18
    mtc1    $at, $f10                  # $f10 = 4294967000.00
    nop
    add.s   $f4, $f4, $f10
lbl_80866F98:
    mul.s   $f6, $f4, $f2
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t6, $f31
    ctc1    a3, $f31
    nop
    cvt.w.s $f8, $f6
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_80867010
    mfc1    a3, $f8
    mtc1    $at, $f8                   # $f8 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f8, $f6, $f8
    ctc1    a3, $f31
    nop
    cvt.w.s $f8, $f8
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_80867004
    nop
    mfc1    a3, $f8
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8086701C
    or      a3, a3, $at                # a3 = 80000000
lbl_80867004:
    beq     $zero, $zero, lbl_8086701C
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f8
lbl_80867010:
    nop
    bltz    a3, lbl_80867004
    nop
lbl_8086701C:
    ctc1    t6, $f31
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    jal     func_80065C98
    sw      v1, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80866D44
    lw      a1, 0x0034($sp)
    lh      t7, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bltzl   t7, lbl_80867054
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2031          # a1 = 00002031
    lw      $ra, 0x0024($sp)
lbl_80867054:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80867064:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0044($sp)
    lh      t6, 0x001C(s0)             # 0000001C
    lui     t9, %hi(var_808677E0)      # t9 = 80860000
    addiu   t9, t9, %lo(var_808677E0)  # t9 = 808677E0
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  3
    addu    t0, t8, t9
    sw      t0, 0x0038($sp)
    lbu     t1, 0x0007(t0)             # 00000007
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    t1, $f4                    # $f4 = 0.00
    bgez    t1, lbl_808670B4
    cvt.s.w $f6, $f4
    mtc1    $at, $f8                   # $f8 = 4294967000.00
    nop
    add.s   $f6, $f6, $f8
lbl_808670B4:
    lui     $at, %hi(var_80867868)     # $at = 80860000
    ldc1    $f16, %lo(var_80867868)($at)
    cvt.d.s $f10, $f6
    lwc1    $f4, 0x0050(s0)            # 00000050
    mul.d   $f18, $f10, $f16
    lw      a0, 0x0044($sp)
    cvt.d.s $f8, $f4
    div.d   $f6, $f8, $f18
    cvt.s.d $f10, $f6
    swc1    $f10, 0x0030($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    andi    t2, v0, 0x0800             # t2 = 00000000
    beq     t2, $zero, lbl_80867164
    andi    a1, v0, 0x03F0             # a1 = 00000000
    andi    a1, v0, 0x03F0             # a1 = 00000000
    sra     a1, a1,  4
    jal     func_8002049C
    lw      a0, 0x0044($sp)
    beq     v0, $zero, lbl_80867120
    lwc1    $f16, 0x0030($sp)
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_8006385C
    lui     a1, 0x3F80                 # a1 = 3F800000
    beq     $zero, $zero, lbl_808671D0
    lw      t3, 0x0038($sp)
lbl_80867120:
    lui     $at, %hi(var_80867870)     # $at = 80860000
    lwc1    $f4, %lo(var_80867870)($at)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    c.lt.s  $f16, $f4
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    bc1f    lbl_80867154
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     $zero, $zero, lbl_8086748C
    lw      $ra, 0x0024($sp)
lbl_80867154:
    jal     func_8006385C
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    beq     $zero, $zero, lbl_808671D0
    lw      t3, 0x0038($sp)
lbl_80867164:
    jal     func_8002049C
    sra     a1, a1,  4
    beq     v0, $zero, lbl_808671BC
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    lui     $at, %hi(var_80867874)     # $at = 80860000
    lwc1    $f18, %lo(var_80867874)($at)
    lwc1    $f8, 0x0030($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    c.lt.s  $f8, $f18
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    bc1f    lbl_808671AC
    nop
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F88
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     $zero, $zero, lbl_8086748C
    lw      $ra, 0x0024($sp)
lbl_808671AC:
    jal     func_8006385C
    ori     a2, a2, 0xCCCD             # a2 = 0000CCCD
    beq     $zero, $zero, lbl_808671D0
    lw      t3, 0x0038($sp)
lbl_808671BC:
    lui     a2, 0x3D4C                 # a2 = 3D4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3D4CCCCD
    jal     func_8006385C
    lui     a1, 0x3F80                 # a1 = 3F800000
    lw      t3, 0x0038($sp)
lbl_808671D0:
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t4, 0x0007(t3)             # 00000007
    mtc1    t4, $f6                    # $f6 = 0.00
    bgez    t4, lbl_808671F4
    cvt.s.w $f10, $f6
    lui     $at, 0x4F80                # $at = 4F800000
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f10, $f10, $f16
lbl_808671F4:
    lui     $at, %hi(var_80867878)     # $at = 80860000
    ldc1    $f8, %lo(var_80867878)($at)
    cvt.d.s $f4, $f10
    lwc1    $f6, 0x0030($sp)
    mul.d   $f18, $f4, $f8
    cvt.d.s $f16, $f6
    mul.d   $f10, $f18, $f16
    cvt.s.d $f4, $f10
    mfc1    a1, $f4
    jal     func_80020F88
    nop
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f12                  # $f12 = 0.50
    lw      t5, 0x0038($sp)
    lui     $at, 0x4F80                # $at = 4F800000
    mul.s   $f8, $f0, $f12
    lbu     t6, 0x0000(t5)             # 00000000
    addiu   a0, s0, 0x0144             # a0 = 00000144
    mtc1    t6, $f6                    # $f6 = 0.00
    add.s   $f2, $f8, $f12
    bgez    t6, lbl_80867260
    cvt.s.w $f18, $f6
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f18, $f18, $f16
lbl_80867260:
    mul.s   $f10, $f18, $f2
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t7, $f31
    ctc1    a1, $f31
    nop
    cvt.w.s $f4, $f10
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    beql    a1, $zero, lbl_808672D8
    mfc1    a1, $f4
    mtc1    $at, $f4                   # $f4 = 2147484000.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sub.s   $f4, $f10, $f4
    ctc1    a1, $f31
    nop
    cvt.w.s $f4, $f4
    cfc1    a1, $f31
    nop
    andi    a1, a1, 0x0078             # a1 = 00000000
    bne     a1, $zero, lbl_808672CC
    nop
    mfc1    a1, $f4
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_808672E4
    or      a1, a1, $at                # a1 = 80000000
lbl_808672CC:
    beq     $zero, $zero, lbl_808672E4
    addiu   a1, $zero, 0xFFFF          # a1 = FFFFFFFF
    mfc1    a1, $f4
lbl_808672D8:
    nop
    bltz    a1, lbl_808672CC
    nop
lbl_808672E4:
    lbu     t8, 0x0001(t5)             # 00000001
    ctc1    t7, $f31
    andi    a1, a1, 0x00FF             # a1 = 000000FF
    mtc1    t8, $f8                    # $f8 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t8, lbl_8086730C
    cvt.s.w $f6, $f8
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f6, $f6, $f16
lbl_8086730C:
    mul.s   $f18, $f6, $f2
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t9, $f31
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f18
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    beql    a2, $zero, lbl_80867384
    mfc1    a2, $f10
    mtc1    $at, $f10                  # $f10 = 2147484000.00
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    sub.s   $f10, $f18, $f10
    ctc1    a2, $f31
    nop
    cvt.w.s $f10, $f10
    cfc1    a2, $f31
    nop
    andi    a2, a2, 0x0078             # a2 = 00000000
    bne     a2, $zero, lbl_80867378
    nop
    mfc1    a2, $f10
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80867390
    or      a2, a2, $at                # a2 = 80000000
lbl_80867378:
    beq     $zero, $zero, lbl_80867390
    addiu   a2, $zero, 0xFFFF          # a2 = FFFFFFFF
    mfc1    a2, $f10
lbl_80867384:
    nop
    bltz    a2, lbl_80867378
    nop
lbl_80867390:
    lbu     t0, 0x0002(t5)             # 00000002
    ctc1    t9, $f31
    andi    a2, a2, 0x00FF             # a2 = 000000FF
    mtc1    t0, $f4                    # $f4 = 0.00
    lui     $at, 0x4F80                # $at = 4F800000
    bgez    t0, lbl_808673B8
    cvt.s.w $f8, $f4
    mtc1    $at, $f16                  # $f16 = 4294967000.00
    nop
    add.s   $f8, $f8, $f16
lbl_808673B8:
    mul.s   $f6, $f8, $f2
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lui     $at, 0x4F00                # $at = 4F000000
    cfc1    t1, $f31
    ctc1    a3, $f31
    nop
    cvt.w.s $f18, $f6
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    beql    a3, $zero, lbl_80867430
    mfc1    a3, $f18
    mtc1    $at, $f18                  # $f18 = 2147484000.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f18, $f6, $f18
    ctc1    a3, $f31
    nop
    cvt.w.s $f18, $f18
    cfc1    a3, $f31
    nop
    andi    a3, a3, 0x0078             # a3 = 00000000
    bne     a3, $zero, lbl_80867424
    nop
    mfc1    a3, $f18
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_8086743C
    or      a3, a3, $at                # a3 = 80000000
lbl_80867424:
    beq     $zero, $zero, lbl_8086743C
    addiu   a3, $zero, 0xFFFF          # a3 = FFFFFFFF
    mfc1    a3, $f18
lbl_80867430:
    nop
    bltz    a3, lbl_80867424
    nop
lbl_8086743C:
    lui     $at, 0x4396                # $at = 43960000
    mtc1    $at, $f10                  # $f10 = 300.00
    ctc1    t1, $f31
    lwc1    $f4, 0x0030($sp)
    andi    a3, a3, 0x00FF             # a3 = 000000FF
    mul.s   $f16, $f10, $f4
    trunc.w.s $f8, $f16
    mfc1    t3, $f8
    jal     func_80065C98
    sw      t3, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80866D44
    lw      a1, 0x0044($sp)
    lh      t4, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    bltzl   t4, lbl_8086748C
    lw      $ra, 0x0024($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x2031          # a1 = 00002031
    lw      $ra, 0x0024($sp)
lbl_8086748C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_8086749C:
    addiu   $sp, $sp, 0xFF90           # $sp -= 0x70
    sw      s3, 0x0040($sp)
    sw      s2, 0x003C($sp)
    or      s2, a0, $zero              # s2 = 00000000
    or      s3, a1, $zero              # s3 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    lh      t6, 0x001C(s2)             # 0000001C
    lui     t9, %hi(var_808677E0)      # t9 = 80860000
    addiu   t9, t9, %lo(var_808677E0)  # t9 = 808677E0
    andi    t7, t6, 0x000F             # t7 = 00000000
    sll     t8, t7,  3
    addu    v1, t8, t9
    lw      a0, 0x0000(s3)             # 00000000
    sw      v1, 0x0064($sp)
    jal     func_8007E2C0
    or      s1, a0, $zero              # s1 = 00000000
    lh      t1, 0x001C(s2)             # 0000001C
    lui     t7, 0xDB06                 # t7 = DB060000
    lw      v1, 0x0064($sp)
    bltz    t1, lbl_80867610
    ori     t7, t7, 0x0020             # t7 = DB060020
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t3, 0xDB06                 # t3 = DB060000
    ori     t3, t3, 0x0020             # t3 = DB060020
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0040          # t5 = 00000040
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0018($sp)
    sw      t5, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lbu     t7, 0x013C(s2)             # 0000013C
    addiu   t2, $zero, 0x0080          # t2 = 00000080
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    subu    $at, $zero, t7
    sll     t8, $at,  2
    addu    t8, t8, $at
    sll     t8, t8,  2
    andi    t9, t8, 0x01FF             # t9 = 00000000
    sw      t9, 0x0020($sp)
    sw      t1, 0x0024($sp)
    sw      t2, 0x0028($sp)
    sw      v1, 0x0064($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0054($sp)
    lw      t0, 0x0054($sp)
    lw      v1, 0x0064($sp)
    lui     t3, 0x0405                 # t3 = 04050000
    sw      v0, 0x0004(t0)             # 00000004
    addiu   t3, t3, 0x2A10             # t3 = 04052A10
    sw      t3, 0x0060($sp)
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFA00                 # t5 = FA000000
    ori     t5, t5, 0x8080             # t5 = FA008080
    addiu   t4, s0, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0000(s0)             # 00000000
    lbu     t1, 0x0001(v1)             # 00000001
    lbu     t7, 0x0000(v1)             # 00000000
    lbu     t5, 0x0002(v1)             # 00000002
    sll     t2, t1, 16
    lbu     t1, 0x0003(v1)             # 00000003
    sll     t8, t7, 24
    or      t3, t8, t2                 # t3 = 00000000
    sll     t6, t5,  8
    or      t7, t3, t6                 # t7 = 00000000
    or      t8, t7, t1                 # t8 = 00000000
    sw      t8, 0x0004(s0)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   t2, s0, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(s0)             # 00000000
    lbu     t7, 0x0005(v1)             # 00000005
    lbu     t3, 0x0004(v1)             # 00000004
    lbu     t4, 0x0006(v1)             # 00000006
    sll     t1, t7, 16
    sll     t6, t3, 24
    or      t8, t6, t1                 # t8 = 00000000
    sll     t5, t4,  8
    or      t3, t8, t5                 # t3 = FA008080
    sw      t3, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_808676DC
    lh      t9, 0x07A0(s3)             # 000007A0
lbl_80867610:
    lw      s0, 0x02D0(s1)             # 000002D0
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s1)             # 000002D0
    sw      t7, 0x0000(s0)             # 00000000
    lw      a0, 0x0000(s3)             # 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t6, 0x0010($sp)
    lbu     v0, 0x013C(s2)             # 0000013C
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    addiu   t9, $zero, 0x0010          # t9 = 00000010
    subu    $at, $zero, v0
    sll     t5, $at,  2
    subu    t5, t5, $at
    sll     t5, t5,  1
    sll     t4, v0,  1
    andi    t8, t4, 0x003F             # t8 = 00000000
    andi    t3, t5, 0x007F             # t3 = 00000000
    sw      t3, 0x0020($sp)
    sw      t8, 0x001C($sp)
    sw      t9, 0x0024($sp)
    sw      t7, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      s0, 0x0048($sp)
    lw      t0, 0x0048($sp)
    lui     t6, 0x0500                 # t6 = 05000000
    addiu   t6, t6, 0x0440             # t6 = 05000440
    sw      v0, 0x0004(t0)             # 00000004
    sw      t6, 0x0060($sp)
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xFA00                 # t2 = FA000000
    ori     t2, t2, 0xC0C0             # t2 = FA00C0C0
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xFFC8                 # t4 = FFC80000
    sw      t4, 0x0004(s0)             # 00000004
    sw      t2, 0x0000(s0)             # 00000000
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFB00                 # t5 = FB000000
    lui     t3, 0xFF00                 # t3 = FF000000
    addiu   t8, s0, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0004(s0)             # 00000004
    sw      t5, 0x0000(s0)             # 00000000
    lh      t9, 0x07A0(s3)             # 000007A0
lbl_808676DC:
    sll     t7, t9,  2
    addu    t6, s3, t7
    jal     func_8004977C
    lw      a0, 0x0790(t6)             # 05000BD0
    lh      t1, 0x00B6(s2)             # 000000B6
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t2, v0, t1
    addu    t4, t2, $at
    sll     t8, t4, 16
    sra     t5, t8, 16
    mtc1    t5, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80867880)     # $at = 80860000
    lwc1    $f8, %lo(var_80867880)($at)
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AAB94
    nop
    lh      t3, 0x001C(s2)             # 0000001C
    lui     $at, %hi(var_80867884)     # $at = 80860000
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    andi    t9, t3, 0x0001             # t9 = 00000000
    beql    t9, $zero, lbl_80867748
    lui     $at, 0x3F80                # $at = 3F800000
    jal     func_800AAB94
    lwc1    $f12, %lo(var_80867884)($at)
    lui     $at, 0x3F80                # $at = 3F800000
lbl_80867748:
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s2, 0x02D0(s1)             # 000002D0
    lui     t6, 0xDA38                 # t6 = DA380000
    ori     t6, t6, 0x0003             # t6 = DA380003
    addiu   t7, s2, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s1)             # 000002D0
    sw      t6, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s3)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDE00                 # t2 = DE000000
    addiu   t1, s0, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(s0)             # 00000000
    lw      t4, 0x0060($sp)
    sw      t4, 0x0004(s0)             # 00000004
    lw      $ra, 0x0044($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    lw      s2, 0x003C($sp)
    lw      s3, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0070           # $sp += 0x70
    nop
    nop

.section .data

var_808677C0: .word 0x00080700, 0x00000000, 0x00010000, 0x00000154
.word func_80866B30
.word func_80866D10
.word func_80866DC0
.word func_8086749C
var_808677E0: .byte 0xFF, 0xC8, 0x00, 0xFF, 0xFF, 0x00, 0x00
var_808677E7: .byte \
0x4B, 0xFF, 0xC8, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x4B, 0x00, 0xAA, 0xFF, 0xFF, 0x00, 0x00, 0xFF, \
0x4B, 0xAA, 0xFF, 0x00, 0xFF, 0x00, 0x96, 0x00, 0x4B, 0xFF, 0xC8, 0x00, 0xFF, 0xFF, 0x00, 0x00, \
0x28, 0xFF, 0xC8, 0x00, 0xFF, 0xFF, 0x00, 0x00, 0x4B, 0xAA, 0xFF, 0x00, 0xFF, 0x00, 0x96, 0x00, \
0x4B, 0x00, 0xAA, 0xFF, 0xFF, 0x00, 0x00, 0xFF, 0x4B, 0xFF, 0x00, 0xAA, 0xFF, 0xC8, 0x00, 0x00, \
0x4B, 0xFF, 0xFF, 0xAA, 0xFF, 0xFF, 0x32, 0x00, 0x4B, 0xFF, 0xFF, 0xAA, 0xFF, 0xFF, 0xFF, 0x00, \
0x4B, 0xFF, 0xFF, 0xAA, 0xFF, 0x64, 0xFF, 0x00, 0x4B, 0xFF, 0xAA, 0xFF, 0xFF, 0xFF, 0x00, 0x64, \
0x4B, 0xFF, 0xAA, 0xFF, 0xFF, 0x64, 0x00, 0xFF, 0x4B, 0xAA, 0xFF, 0xFF, 0xFF, 0x00, 0x00, 0xFF, \
0x4B, 0xAA, 0xFF, 0xFF, 0xFF, 0x00, 0x96, 0xFF, 0x4B

.section .rodata

var_80867860: .word 0x38D1B717, 0x00000000
var_80867868: .word 0x3F1A36E2, 0xEB1C432D
var_80867870: .word 0x3DCCCCCD
var_80867874: .word 0x3DCCCCCD
var_80867878: .word 0x3F1A36E2, 0xEB1C432D
var_80867880: .word 0x38C90FDB
var_80867884: .word 0x40490FDB, 0x00000000, 0x00000000

