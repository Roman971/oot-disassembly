.section .text
func_809EBB40:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lui     $at, %hi(var_809ECCA0)     # $at = 809F0000
    lwc1    $f6, %lo(var_809ECCA0)($at)
    lwc1    $f4, 0x0258(s0)            # 00000258
    lw      t6, 0x0024($sp)
    lwc1    $f16, 0x0264(s0)           # 00000264
    add.s   $f8, $f4, $f6
    lw      v0, 0x1C44(t6)             # 00001C44
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    swc1    $f8, 0x0258(s0)            # 00000258
    lwc1    $f10, 0x0028(v0)           # 00000028
    addiu   a0, s0, 0x0028             # a0 = 00000028
    lui     a3, 0x4120                 # a3 = 41200000
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0260(s0)           # 00000260
    jal     func_80064280
    lw      a1, 0x0260(s0)             # 00000260
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    addiu   a0, s0, 0x0264             # a0 = 00000264
    lui     a1, 0x4120                 # a1 = 41200000
    jal     func_80064280
    lui     a3, 0x3F00                 # a3 = 3F000000
    lwc1    $f4, 0x0258(s0)            # 00000258
    trunc.w.s $f6, $f4
    mfc1    a0, $f6
    nop
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    swc1    $f0, 0x0060(s0)            # 00000060
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809EBBE4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0014($sp)
    lw      v0, 0x1C44(a1)             # 00001C44
    lui     $at, 0x4120                # $at = 41200000
    lwc1    $f6, 0x0270(a0)            # 00000270
    mtc1    $at, $f10                  # $f10 = 10.00
    lwc1    $f4, 0x0024(v0)            # 00000024
    lwc1    $f8, 0x0028(v0)            # 00000028
    sub.s   $f2, $f4, $f6
    lwc1    $f6, 0x002C(v0)            # 0000002C
    lwc1    $f4, 0x0274(a0)            # 00000274
    add.s   $f18, $f8, $f10
    lwc1    $f8, 0x0278(a0)            # 00000278
    mul.s   $f10, $f2, $f2
    swc1    $f2, 0x0020($sp)
    sub.s   $f16, $f6, $f8
    sw      a0, 0x0028($sp)
    sub.s   $f12, $f18, $f4
    mul.s   $f18, $f16, $f16
    swc1    $f16, 0x0018($sp)
    add.s   $f0, $f10, $f18
    jal     func_800CD76C
    sqrt.s  $f14, $f0
    lui     $at, %hi(var_809ECCA4)     # $at = 809F0000
    lwc1    $f4, %lo(var_809ECCA4)($at)
    lw      a0, 0x0028($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    subu    t0, $zero, t9
    mtc1    t0, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x027C(a0)           # 0000027C
    lwc1    $f14, 0x0018($sp)
    jal     func_800CD76C
    lwc1    $f12, 0x0020($sp)
    lui     $at, %hi(var_809ECCA8)     # $at = 809F0000
    lwc1    $f4, %lo(var_809ECCA8)($at)
    lw      a0, 0x0028($sp)
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    t2, $f8
    nop
    sll     t3, t2, 16
    sra     t4, t3, 16
    mtc1    t4, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f18, $f10
    swc1    $f18, 0x0280(a0)           # 00000280
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_809EBCC4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41A0                 # a3 = 41A00000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E0             # t7 = 000001E0
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0F74             # a3 = 06000F74
    addiu   a2, a2, 0x3990             # a2 = 06003990
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   t9, $zero, 0x003A          # t9 = 0000003A
    sb      t9, 0x0117(s0)             # 00000117
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_809ECC30)      # a3 = 809F0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_809ECC30)  # a3 = 809ECC30
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a1, 0x3C75                 # a1 = 3C750000
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     t0, %hi(var_809ECC5C)      # t0 = 809F0000
    addiu   t0, t0, %lo(var_809ECC5C)  # t0 = 809ECC5C
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    sw      t0, 0x0098(s0)             # 00000098
    sb      t1, 0x00AE(s0)             # 000000AE
    lui     $at, %hi(var_809ECCAC)     # $at = 809F0000
    lwc1    $f4, %lo(var_809ECCAC)($at)
    lw      t5, 0x0024(s0)             # 00000024
    lw      t2, 0x0004(s0)             # 00000004
    mtc1    $zero, $f6                 # $f6 = 0.00
    sw      t5, 0x0288(s0)             # 00000288
    lw      t5, 0x002C(s0)             # 0000002C
    lw      t4, 0x0028(s0)             # 00000028
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lui     t7, %hi(func_809EBE38)     # t7 = 809F0000
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    addiu   t7, t7, %lo(func_809EBE38) # t7 = 809EBE38
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
    sb      t6, 0x001F(s0)             # 0000001F
    sw      t7, 0x0240(s0)             # 00000240
    swc1    $f4, 0x00BC(s0)            # 000000BC
    swc1    $f6, 0x026C(s0)            # 0000026C
    sw      t5, 0x0290(s0)             # 00000290
    sw      t4, 0x028C(s0)             # 0000028C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809EBDDC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a2, 0x02B8             # a1 = 000002B8
    jal     func_8004ABCC
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lh      t6, 0x001C(a2)             # 0000001C
    beql    t6, $zero, lbl_809EBE2C
    lw      $ra, 0x0014($sp)
    lw      v1, 0x0118(a2)             # 00000118
    beql    v1, $zero, lbl_809EBE2C
    lw      $ra, 0x0014($sp)
    lw      t7, 0x0130(v1)             # 00000130
    beql    t7, $zero, lbl_809EBE2C
    lw      $ra, 0x0014($sp)
    sw      $zero, 0x0140(v1)          # 00000140
    lw      $ra, 0x0014($sp)
lbl_809EBE2C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809EBE38:
    lh      t6, 0x024E(a0)             # 0000024E
    lui     t4, %hi(func_809EBEC0)     # t4 = 809F0000
    beq     t6, $zero, lbl_809EBEB8
    nop
    lh      t7, 0x0254(a0)             # 00000254
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    bnel    t7, $zero, lbl_809EBEA8
    lw      t2, 0x0004(a0)             # 00000004
    lw      v1, 0x1C64(a1)             # 00001C64
    or      v0, $zero, $zero           # v0 = 00000000
    addiu   a1, $zero, 0x0049          # a1 = 00000049
    beql    v1, $zero, lbl_809EBEA4
    sh      t1, 0x0254(a0)             # 00000254
    lh      t8, 0x0000(v1)             # 00000000
lbl_809EBE70:
    sll     t9, v0,  2
    addu    t0, a0, t9
    beq     a1, t8, lbl_809EBE88
    slti    $at, v0, 0x0004
    beq     $zero, $zero, lbl_809EBE98
    lw      v1, 0x0124(v1)             # 00000124
lbl_809EBE88:
    beq     $at, $zero, lbl_809EBE94
    sw      v1, 0x02A0(t0)             # 000002A0
    addiu   v0, v0, 0x0001             # v0 = 00000001
lbl_809EBE94:
    lw      v1, 0x0124(v1)             # 00000124
lbl_809EBE98:
    bnel    v1, $zero, lbl_809EBE70
    lh      t8, 0x0000(v1)             # 00000000
    sh      t1, 0x0254(a0)             # 00000254
lbl_809EBEA4:
    lw      t2, 0x0004(a0)             # 00000004
lbl_809EBEA8:
    addiu   t4, t4, %lo(func_809EBEC0) # t4 = 809EBEC0
    sw      t4, 0x0240(a0)             # 00000240
    ori     t3, t2, 0x0001             # t3 = 00000001
    sw      t3, 0x0004(a0)             # 00000004
lbl_809EBEB8:
    jr      $ra
    nop


func_809EBEC0:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0F74             # a0 = 06000F74
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a3, $f0
    addiu   a1, a1, 0x0F74             # a1 = 06000F74
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    trunc.w.s $f8, $f6
    lui     a2, 0x3F80                 # a2 = 3F800000
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
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t0, %hi(func_809EBF68)     # t0 = 809F0000
    addiu   t0, t0, %lo(func_809EBF68) # t0 = 809EBF68
    sw      t0, 0x0240(s0)             # 00000240
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x005C(s0)            # 0000005C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809EBF68:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      t6, 0x002C($sp)
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x4396                 # a2 = 43960000
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a1, 0x428C                 # a1 = 428C0000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x40A0                 # a3 = 40A00000
    lh      t7, 0x0252(s0)             # 00000252
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bne     t7, $zero, lbl_809EBFCC
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
lbl_809EBFCC:
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809EC038
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t0, %hi(func_809EC198)     # t0 = 809F0000
    addiu   t0, t0, %lo(func_809EC198) # t0 = 809EC198
    swc1    $f0, 0x00BC(s0)            # 000000BC
    lw      t8, 0x002C($sp)
    lb      t9, 0x0833(t8)             # 00000833
    beql    t9, $zero, lbl_809EC014
    lh      t1, 0x0250(s0)             # 00000250
    beq     $zero, $zero, lbl_809EC034
    sw      t0, 0x0240(s0)             # 00000240
    lh      t1, 0x0250(s0)             # 00000250
lbl_809EC014:
    lui     t2, %hi(func_809EC048)     # t2 = 809F0000
    lui     $at, 0xBF80                # $at = BF800000
    beq     t1, $zero, lbl_809EC034
    addiu   t2, t2, %lo(func_809EC048) # t2 = 809EC048
    mtc1    $at, $f8                   # $f8 = -1.00
    swc1    $f0, 0x0060(s0)            # 00000060
    sw      t2, 0x0240(s0)             # 00000240
    swc1    $f8, 0x006C(s0)            # 0000006C
lbl_809EC034:
    lw      $ra, 0x0024($sp)
lbl_809EC038:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809EC048:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0054($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0xC584                 # a1 = C5840000
    ori     a1, a1, 0x3000             # a1 = C5843000
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4396                 # a3 = 43960000
    addiu   a0, s0, 0x026C             # a0 = 0000026C
    lui     a1, 0x3F00                 # a1 = 3F000000
    jal     func_800642F0
    lui     a2, 0x40A0                 # a2 = 40A00000
    lh      t6, 0x0252(s0)             # 00000252
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bne     t6, $zero, lbl_809EC0AC
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
lbl_809EC0AC:
    lwc1    $f14, 0x0024(s0)           # 00000024
    lwc1    $f4, 0x0288(s0)            # 00000288
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f2                   # $f2 = 3.00
    sub.s   $f16, $f4, $f14
    lui     $at, %hi(var_809ECCB0)     # $at = 809F0000
    abs.s   $f0, $f16
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_809EC148
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    lwc1    $f18, 0x002C(s0)           # 0000002C
    lwc1    $f6, 0x0290(s0)            # 00000290
    sub.s   $f8, $f6, $f18
    swc1    $f8, 0x002C($sp)
    lwc1    $f10, 0x002C($sp)
    abs.s   $f0, $f10
    c.lt.s  $f2, $f0
    nop
    bc1fl   lbl_809EC148
    lwc1    $f8, 0x00BC(s0)            # 000000BC
    mul.s   $f4, $f16, $f16
    mov.s   $f12, $f10
    lui     $at, 0x4100                # $at = 41000000
    mul.s   $f6, $f10, $f10
    mtc1    $at, $f10                  # $f10 = 8.00
    add.s   $f0, $f4, $f6
    sqrt.s  $f0, $f0
    div.s   $f8, $f16, $f0
    mul.s   $f4, $f8, $f10
    div.s   $f8, $f12, $f0
    mtc1    $at, $f10                  # $f10 = 8.00
    add.s   $f6, $f14, $f4
    swc1    $f6, 0x0024(s0)            # 00000024
    mul.s   $f4, $f8, $f10
    add.s   $f6, $f18, $f4
    beq     $zero, $zero, lbl_809EC184
    swc1    $f6, 0x002C(s0)            # 0000002C
    lwc1    $f8, 0x00BC(s0)            # 000000BC
lbl_809EC148:
    lwc1    $f10, %lo(var_809ECCB0)($at)
    lui     t8, %hi(func_809EBE38)     # t8 = 809F0000
    lui     $at, %hi(var_809ECCB4)     # $at = 809F0000
    c.lt.s  $f8, $f10
    addiu   t8, t8, %lo(func_809EBE38) # t8 = 809EBE38
    bc1fl   lbl_809EC188
    lw      $ra, 0x0024($sp)
    lwc1    $f4, %lo(var_809ECCB4)($at)
    sh      $zero, 0x0250(s0)          # 00000250
    lh      t7, 0x0250(s0)             # 00000250
    mtc1    $zero, $f6                 # $f6 = 0.00
    sw      t8, 0x0240(s0)             # 00000240
    swc1    $f4, 0x00BC(s0)            # 000000BC
    sh      t7, 0x024E(s0)             # 0000024E
    swc1    $f6, 0x006C(s0)            # 0000006C
lbl_809EC184:
    lw      $ra, 0x0024($sp)
lbl_809EC188:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp += 0x50
    jr      $ra
    nop


func_809EC198:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x078C             # a0 = 0600078C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f6                   # $f6 = -10.00
    cvt.s.w $f0, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x078C             # a1 = 0600078C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x025C(s0)            # 0000025C
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     t7, %hi(func_809EC220)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809EC220) # t7 = 809EC220
    sw      t7, 0x0240(s0)             # 00000240
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x005C(s0)            # 0000005C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809EC220:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x003C($sp)
    lh      t6, 0x0252(s0)             # 00000252
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    bne     t6, $zero, lbl_809EC264
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80064508
    sw      $zero, 0x0010($sp)
lbl_809EC264:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_809EBBE4
    lw      a1, 0x0044($sp)
    lui     $at, 0x4140                # $at = 41400000
    mtc1    $at, $f8                   # $f8 = 12.00
    lwc1    $f6, 0x003C($sp)
    lui     $at, 0x4170                # $at = 41700000
    c.eq.s  $f6, $f8
    nop
    bc1fl   lbl_809EC2EC
    lwc1    $f18, 0x003C($sp)
    lwc1    $f10, 0x0274(s0)           # 00000274
    mtc1    $at, $f16                  # $f16 = 15.00
    lw      a3, 0x0270(s0)             # 00000270
    lw      a1, 0x0044($sp)
    add.s   $f18, $f10, $f16
    addiu   a2, $zero, 0x00E1          # a2 = 000000E1
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    swc1    $f18, 0x0010($sp)
    lwc1    $f4, 0x0278(s0)            # 00000278
    swc1    $f4, 0x0014($sp)
    lwc1    $f6, 0x027C(s0)            # 0000027C
    trunc.w.s $f8, $f6
    mfc1    t9, $f8
    nop
    sw      t9, 0x0018($sp)
    lwc1    $f10, 0x0280(s0)           # 00000280
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    trunc.w.s $f16, $f10
    mfc1    t1, $f16
    jal     func_80025110              # ActorSpawn
    sw      t1, 0x001C($sp)
    lwc1    $f18, 0x003C($sp)
lbl_809EC2EC:
    lwc1    $f4, 0x025C(s0)            # 0000025C
    lui     t2, %hi(func_809EBEC0)     # t2 = 809F0000
    addiu   t2, t2, %lo(func_809EBEC0) # t2 = 809EBEC0
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_809EC310
    lw      $ra, 0x0034($sp)
    sw      t2, 0x0240(s0)             # 00000240
    lw      $ra, 0x0034($sp)
lbl_809EC310:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809EC320:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0348             # a0 = 06000348
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f6                   # $f6 = -20.00
    cvt.s.w $f0, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    addiu   a1, a1, 0x0348             # a1 = 06000348
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    swc1    $f0, 0x025C(s0)            # 0000025C
    sw      t6, 0x0014($sp)
    swc1    $f0, 0x0010($sp)
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    jal     func_8008D17C
    swc1    $f6, 0x0018($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f8                   # $f8 = -1.00
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    sh      $zero, 0x0246(s0)          # 00000246
    sh      $zero, 0x0248(s0)          # 00000248
    sh      t7, 0x024A(s0)             # 0000024A
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x005C(s0)            # 0000005C
    swc1    $f8, 0x006C(s0)            # 0000006C
    lw      a0, 0x0034($sp)
    addiu   a1, s0, 0x0270             # a1 = 00000270
    lui     a2, 0x428C                 # a2 = 428C0000
    jal     func_80030D08
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    beq     v0, $zero, lbl_809EC3D4
    lui     t1, %hi(func_809EC3F0)     # t1 = 809F0000
    lh      t9, 0x00B4(s0)             # 000000B4
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sh      t8, 0x0246(s0)             # 00000246
    addiu   t0, t9, 0x8100             # t0 = FFFF8100
    sh      t0, 0x0248(s0)             # 00000248
lbl_809EC3D4:
    addiu   t1, t1, %lo(func_809EC3F0) # t1 = 809EC3F0
    sw      t1, 0x0240(s0)             # 00000240
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809EC3F0:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0064($sp)
    lui     t7, %hi(var_809ECC7C)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809ECC7C)  # t7 = 809ECC7C
    lw      t9, 0x0000(t7)             # 809ECC7C
    addiu   t6, $sp, 0x004C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 809ECC80
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 809ECC84
    lui     t1, %hi(var_809ECC88)      # t1 = 809F0000
    addiu   t1, t1, %lo(var_809ECC88)  # t1 = 809ECC88
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 809ECC88
    addiu   t0, $sp, 0x0040            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 809ECC8C
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 809ECC90
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      t2, 0x0004(t0)             # FFFFFFE4
    jal     func_8008C9C0
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lui     a1, 0x3ECC                 # a1 = 3ECC0000
    ori     a1, a1, 0xCCCD             # a1 = 3ECCCCCD
    addiu   a0, s0, 0x00C4             # a0 = 000000C4
    jal     func_800642F0
    lui     a2, 0x3E80                 # a2 = 3E800000
    lh      t4, 0x0246(s0)             # 00000246
    beq     t4, $zero, lbl_809EC4C4
    nop
    lh      a1, 0x0248(s0)             # 00000248
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_80064508
    addiu   a3, $zero, 0x2710          # a3 = 00002710
    lh      t5, 0x00B6(s0)             # 000000B6
    lh      t6, 0x0248(s0)             # 00000248
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f6                   # $f6 = 100.00
    subu    t7, t5, t6
    mtc1    t7, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f0, $f4
    abs.s   $f0, $f0
    c.lt.s  $f0, $f6
    nop
    bc1f    lbl_809EC4C4
    nop
    sh      $zero, 0x0246(s0)          # 00000246
lbl_809EC4C4:
    lui     $at, %hi(var_809ECCB8)     # $at = 809F0000
    lwc1    $f12, %lo(var_809ECCB8)($at)
    lui     $at, %hi(var_809ECCBC)     # $at = 809F0000
    lwc1    $f14, 0x0154(s0)           # 00000154
    lwc1    $f8, %lo(var_809ECCBC)($at)
    lh      v0, 0x00B6(s0)             # 000000B6
    mul.s   $f2, $f14, $f8
    mtc1    v0, $f10                   # $f10 = 0.00
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_809EC4FC
    cvt.s.w $f16, $f10
    mov.s   $f2, $f12
    cvt.s.w $f16, $f10
lbl_809EC4FC:
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    lui     $at, %hi(var_809ECCC0)     # $at = 809F0000
    lwc1    $f6, %lo(var_809ECCC0)($at)
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f4, $f16, $f18
    swc1    $f2, 0x0058($sp)
    swc1    $f14, 0x005C($sp)
    mul.s   $f12, $f4, $f6
    jal     func_800AAB94
    nop
    lui     $at, 0x4700                # $at = 47000000
    lwc1    $f2, 0x0058($sp)
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_809ECCC4)     # $at = 809F0000
    lwc1    $f16, %lo(var_809ECCC4)($at)
    div.s   $f10, $f2, $f8
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f18                  # $f18 = 30.00
    addiu   a0, $sp, 0x004C            # a0 = FFFFFFEC
    addiu   a1, $sp, 0x0040            # a1 = FFFFFFE0
    add.s   $f4, $f0, $f18
    jal     func_800AB958
    swc1    $f4, 0x0050($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f12                  # $f12 = 40.00
    jal     func_80026D90
    nop
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f6, 0x0040($sp)
    lui     $at, 0x4220                # $at = 42200000
    add.s   $f10, $f8, $f0
    mtc1    $at, $f12                  # $f12 = 40.00
    add.s   $f16, $f6, $f10
    jal     func_80026D90
    swc1    $f16, 0x0040($sp)
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f18, 0x0044($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    add.s   $f8, $f4, $f0
    mtc1    $at, $f12                  # $f12 = 30.00
    add.s   $f6, $f18, $f8
    jal     func_80026D90
    swc1    $f6, 0x0044($sp)
    lwc1    $f16, 0x002C(s0)           # 0000002C
    lwc1    $f10, 0x0048($sp)
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    add.s   $f4, $f16, $f0
    sw      t8, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    add.s   $f18, $f10, $f4
    addiu   a2, $zero, 0x0080          # a2 = 00000080
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_80027090
    swc1    $f18, 0x0048($sp)
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    sw      t9, 0x0018($sp)
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0040            # a2 = FFFFFFE0
    addiu   a3, $zero, 0x0064          # a3 = 00000064
    sw      $zero, 0x0010($sp)
    jal     func_8001DFEC
    sw      $zero, 0x0014($sp)
    lwc1    $f8, 0x005C($sp)
    lwc1    $f6, 0x025C(s0)            # 0000025C
    c.le.s  $f6, $f8
    nop
    bc1fl   lbl_809EC694
    lw      $ra, 0x002C($sp)
    lhu     t0, 0x0088(s0)             # 00000088
    lui     a1, 0xC584                 # a1 = C5840000
    ori     a1, a1, 0x3000             # a1 = C5843000
    andi    t1, t0, 0x0001             # t1 = 00000000
    beq     t1, $zero, lbl_809EC690
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x4396                 # a3 = 43960000
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f10                  # $f10 = -2000.00
    lwc1    $f16, 0x00BC(s0)           # 000000BC
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    c.lt.s  $f16, $f10
    addiu   a2, s0, 0x0024             # a2 = 00000024
    bc1fl   lbl_809EC694
    lw      $ra, 0x002C($sp)
    jal     func_80013A84
    addiu   a3, $zero, 0x00C0          # a3 = 000000C0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
lbl_809EC690:
    lw      $ra, 0x002C($sp)
lbl_809EC694:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_809EC6A4:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0064($sp)
    lui     t6, %hi(func_809EC320)     # t6 = 809F0000
    addiu   t6, t6, %lo(func_809EC320) # t6 = 809EC320
    sw      t6, 0x0034($sp)
    lw      v0, 0x0240(s0)             # 00000240
    lui     t7, %hi(func_809EC3F0)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809EC3F0) # t7 = 809EC3F0
    beql    t6, v0, lbl_809EC948
    lh      t6, 0x0244(s0)             # 00000244
    beql    t7, v0, lbl_809EC948
    lh      t6, 0x0244(s0)             # 00000244
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    or      a0, s0, $zero              # a0 = 00000000
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_809EC948
    lh      t6, 0x0244(s0)             # 00000244
    jal     func_809EBB40
    lw      a1, 0x0064($sp)
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f2                   # $f2 = 60.00
    or      a0, $zero, $zero           # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0014          # a2 = 00000014
lbl_809EC718:
    lw      v1, 0x02A0(a1)             # 000002A0
    addiu   a0, a0, 0x0004             # a0 = 00000004
    beq     v1, $zero, lbl_809EC7BC
    nop
    lwc1    $f8, 0x0024(v1)            # 00000024
    lwc1    $f10, 0x0024(s0)           # 00000024
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_809EC7BC
    nop
    lwc1    $f16, 0x002C(v1)           # 0000002C
    lwc1    $f18, 0x002C(s0)           # 0000002C
    sub.s   $f0, $f16, $f18
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1f    lbl_809EC7BC
    nop
    lh      t8, 0x0144(v1)             # 00000144
    beq     t8, $zero, lbl_809EC7BC
    nop
    lw      a0, 0x0064($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C28
    lw      t9, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a1, s0, $zero              # a1 = 00000000
    and     t0, t9, $at
    sw      t0, 0x0004(s0)             # 00000004
    jal     func_80025B4C
    lw      a0, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x399F          # a1 = 0000399F
    lw      t1, 0x0034($sp)
    beq     $zero, $zero, lbl_809ECA94
    sw      t1, 0x0240(s0)             # 00000240
lbl_809EC7BC:
    bne     a0, a2, lbl_809EC718
    addiu   a1, a1, 0x0004             # a1 = 00000004
    lbu     v0, 0x02C9(s0)             # 000002C9
    andi    t2, v0, 0x0002             # t2 = 00000000
    beql    t2, $zero, lbl_809EC8E0
    lh      t2, 0x0252(s0)             # 00000252
    lbu     t4, 0x00B1(s0)             # 000000B1
    andi    t3, v0, 0xFFFD             # t3 = 00000000
    addiu   $at, $zero, 0x0002         # $at = 00000002
    bne     t4, $at, lbl_809EC830
    sb      t3, 0x02C9(s0)             # 000002C9
    lw      a0, 0x0064($sp)
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x0006          # a3 = 00000006
    jal     func_800265D4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    lw      t5, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    or      a1, s0, $zero              # a1 = 00000000
    and     t6, t5, $at
    sw      t6, 0x0004(s0)             # 00000004
    jal     func_80025B4C
    lw      a0, 0x0064($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x399F          # a1 = 0000399F
    lw      t7, 0x0034($sp)
    beq     $zero, $zero, lbl_809ECA94
    sw      t7, 0x0240(s0)             # 00000240
lbl_809EC830:
    lh      t8, 0x0252(s0)             # 00000252
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    bne     t8, $zero, lbl_809EC8DC
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $zero, $f0                 # $f0 = 0.00
    sh      t9, 0x024C(s0)             # 0000024C
    sh      t0, 0x0252(s0)             # 00000252
    mtc1    $at, $f4                   # $f4 = -10.00
    swc1    $f0, 0x0048($sp)
    swc1    $f0, 0x004C($sp)
    swc1    $f0, 0x003C($sp)
    swc1    $f0, 0x0040($sp)
    swc1    $f0, 0x0044($sp)
    swc1    $f4, 0x0050($sp)
    lh      t1, 0x00B6(s0)             # 000000B6
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f10                  # $f10 = 32768.00
    mtc1    t1, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_809ECCC8)     # $at = 809F0000
    lwc1    $f18, %lo(var_809ECCC8)($at)
    cvt.s.w $f8, $f6
    or      a1, $zero, $zero           # a1 = 00000000
    div.s   $f16, $f8, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800AAB94
    nop
    addiu   a0, $sp, 0x0048            # a0 = FFFFFFE8
    jal     func_800AB958
    addiu   a1, $sp, 0x003C            # a1 = FFFFFFDC
    lwc1    $f4, 0x003C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x393B          # a1 = 0000393B
    swc1    $f4, 0x005C(s0)            # 0000005C
    lwc1    $f6, 0x0044($sp)
    swc1    $f6, 0x0064(s0)            # 00000064
    lwc1    $f8, 0x003C($sp)
    neg.s   $f10, $f8
    swc1    $f10, 0x0294(s0)           # 00000294
    lwc1    $f16, 0x0044($sp)
    neg.s   $f18, $f16
    jal     func_80022FD0
    swc1    $f18, 0x029C(s0)           # 0000029C
lbl_809EC8DC:
    lh      t2, 0x0252(s0)             # 00000252
lbl_809EC8E0:
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    beq     t2, $zero, lbl_809EC944
    addiu   a0, s0, 0x005C             # a0 = 0000005C
    lh      t3, 0x00B6(s0)             # 000000B6
    lw      a1, 0x0294(s0)             # 00000294
    lui     a3, 0x3F80                 # a3 = 3F800000
    addiu   t4, t3, 0x1964             # t4 = 00001964
    jal     func_80064280
    sh      t4, 0x00B6(s0)             # 000000B6
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0064             # a0 = 00000064
    lw      a1, 0x029C(s0)             # 0000029C
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lh      t5, 0x024C(s0)             # 0000024C
    mtc1    $zero, $f0                 # $f0 = 0.00
    bnel    t5, $zero, lbl_809EC948
    lh      t6, 0x0244(s0)             # 00000244
    swc1    $f0, 0x0064(s0)            # 00000064
    swc1    $f0, 0x005C(s0)            # 0000005C
    swc1    $f0, 0x029C(s0)            # 0000029C
    swc1    $f0, 0x0294(s0)            # 00000294
    sh      $zero, 0x0252(s0)          # 00000252
lbl_809EC944:
    lh      t6, 0x0244(s0)             # 00000244
lbl_809EC948:
    lh      v0, 0x024C(s0)             # 0000024C
    addiu   t7, t6, 0x0001             # t7 = 00000001
    beq     v0, $zero, lbl_809EC960
    sh      t7, 0x0244(s0)             # 00000244
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x024C(s0)             # 0000024C
lbl_809EC960:
    lh      v0, 0x024A(s0)             # 0000024A
    beq     v0, $zero, lbl_809EC970
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x024A(s0)             # 0000024A
lbl_809EC970:
    lw      t9, 0x0240(s0)             # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0064($sp)
    jalr    $ra, t9
    nop
    lwc1    $f4, 0x0060(s0)            # 00000060
    lwc1    $f6, 0x006C(s0)            # 0000006C
    or      a0, s0, $zero              # a0 = 00000000
    add.s   $f8, $f4, $f6
    jal     func_80021124
    swc1    $f8, 0x0060(s0)            # 00000060
    lh      t0, 0x0250(s0)             # 00000250
    lui     $at, 0x40A0                # $at = 40A00000
    lw      a0, 0x0064($sp)
    bne     t0, $zero, lbl_809EC9E8
    or      a1, s0, $zero              # a1 = 00000000
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f0                   # $f0 = 5.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f10                  # $f10 = 10.00
    addiu   t1, $zero, 0x001D          # t1 = 0000001D
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t1, 0x0014($sp)
    lw      a0, 0x0064($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f10, 0x0010($sp)
    beq     $zero, $zero, lbl_809ECA10
    lw      v0, 0x0240(s0)             # 00000240
lbl_809EC9E8:
    mtc1    $at, $f0                   # $f0 = 0.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   t2, $zero, 0x001C          # t2 = 0000001C
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t2, 0x0014($sp)
    jal     func_80021E6C
    swc1    $f16, 0x0010($sp)
    lw      v0, 0x0240(s0)             # 00000240
lbl_809ECA10:
    lw      t3, 0x0034($sp)
    lui     t4, %hi(func_809EC3F0)     # t4 = 809F0000
    addiu   t4, t4, %lo(func_809EC3F0) # t4 = 809EC3F0
    beql    t3, v0, lbl_809ECA98
    lw      $ra, 0x0024($sp)
    beq     t4, v0, lbl_809ECA94
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x026C(s0)             # 0000026C
    addiu   a1, s0, 0x02B8             # a1 = 000002B8
    sw      a1, 0x0030($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0064($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, a0, $at
    sw      a1, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0030($sp)
    lh      t5, 0x0252(s0)             # 00000252
    lw      a1, 0x0034($sp)
    bnel    t5, $zero, lbl_809ECA98
    lw      $ra, 0x0024($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    lwc1    $f4, 0x00BC(s0)            # 000000BC
    lw      a0, 0x0064($sp)
    c.eq.s  $f18, $f4
    nop
    bc1fl   lbl_809ECA98
    lw      $ra, 0x0024($sp)
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0030($sp)
lbl_809ECA94:
    lw      $ra, 0x0024($sp)
lbl_809ECA98:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_809ECAA8:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    bne     a1, $at, lbl_809ECAE8
    lw      v0, 0x0010($sp)
    lh      t6, 0x0004(v0)             # 00000004
    lw      t7, 0x0014($sp)
    mtc1    t6, $f4                    # $f4 = 0.00
    lwc1    $f8, 0x0268(t7)            # 00000268
    cvt.s.w $f6, $f4
    add.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mfc1    t9, $f16
    nop
    sh      t9, 0x0004(v0)             # 00000004
lbl_809ECAE8:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_809ECAF4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      a2, 0x0048($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0040($sp)
    sw      a3, 0x004C($sp)
    lui     t7, %hi(var_809ECC94)      # t7 = 809F0000
    addiu   t7, t7, %lo(var_809ECC94)  # t7 = 809ECC94
    lw      t9, 0x0000(t7)             # 809ECC94
    addiu   t6, $sp, 0x0030            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 809ECC98
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 809ECC9C
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      t8, 0x0004(t6)             # FFFFFFF4
    bne     a1, $at, lbl_809ECBA0
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      a3, 0x0000(a2)             # 00000000
    lw      v1, 0x02D0(a3)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(a3)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a2)             # 00000000
    sw      a3, 0x002C($sp)
    jal     func_800AB900
    sw      v1, 0x0024($sp)
    lw      t0, 0x0024($sp)
    lw      a3, 0x002C($sp)
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(a3)             # 000002D0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x3468             # t5 = 06003468
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(a3)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t4, 0x0000(v1)             # 00000000
    lw      a1, 0x0050($sp)
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFF0
    jal     func_800AB958
    addiu   a1, a1, 0x0270             # a1 = 00000270
lbl_809ECBA0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_809ECBB0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a0, 0x0020($sp)
    sw      a1, 0x0024($sp)
    lw      t6, 0x0024($sp)
    jal     func_8007E2C0
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0020($sp)
    lui     t7, %hi(func_809ECAF4)     # t7 = 809F0000
    addiu   t7, t7, %lo(func_809ECAF4) # t7 = 809ECAF4
    lui     a3, %hi(func_809ECAA8)     # a3 = 809F0000
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    sw      t7, 0x0010($sp)
    addiu   a3, a3, %lo(func_809ECAA8) # a3 = 809ECAA8
    lw      a0, 0x0024($sp)
    jal     func_8008993C
    sw      v0, 0x0014($sp)
    lw      $ra, 0x001C($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop
    nop
    nop

.section .data

var_809ECC10: .word 0x00E00500, 0x00000015, 0x00D60000, 0x00000304
.word func_809EBCC4
.word func_809EBDDC
.word func_809EC6A4
.word func_809ECBB0
var_809ECC30: .word \
0x0A000939, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001D0067, 0x00000000, 0x00000000
var_809ECC5C: .word \
0x00F0F0F0, 0xF0F0F1F2, 0xF0F2F622, 0xF0F0F0F0, \
0xF0230000, 0x0000F0F6, 0xF2F0FCF4, 0x00000000
var_809ECC7C: .word 0x00000000, 0x00000000, 0x00000000
var_809ECC88: .word 0x00000000, 0x00000000, 0x00000000
var_809ECC94: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_809ECCA0: .word 0x44BB8000
var_809ECCA4: .word 0x4622F983
var_809ECCA8: .word 0x4622F983
var_809ECCAC: .word 0xC5843000
var_809ECCB0: .word 0xC583E000
var_809ECCB4: .word 0xC5843000
var_809ECCB8: .word 0xC62BE000
var_809ECCBC: .word 0xC53B8000
var_809ECCC0: .word 0x40490FDB
var_809ECCC4: .word 0x40490FDB
var_809ECCC8: .word 0x40490FDB, 0x00000000

