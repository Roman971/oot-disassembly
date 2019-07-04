.section .text
func_80AA7750:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a1, %hi(var_80AA87D0)      # a1 = 80AB0000
    addiu   a1, a1, %lo(var_80AA87D0)  # a1 = 80AA87D0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41C8                 # a3 = 41C80000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01E0             # t7 = 000001E0
    addiu   t8, $zero, 0x0010          # t8 = 00000010
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x00E8             # a3 = 060000E8
    addiu   a2, a2, 0x2530             # a2 = 06002530
    lw      a0, 0x0034($sp)
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lh      t9, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, 0x3C23                 # a1 = 3C230000
    bgez    t9, lbl_80AA77D8
    nop
    sh      $zero, 0x001C(s0)          # 0000001C
lbl_80AA77D8:
    jal     func_80020F88
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    swc1    $f4, 0x006C(s0)            # 0000006C
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f12                  # $f12 = 10.00
    jal     func_80026D90
    swc1    $f0, 0x0288(s0)            # 00000288
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f12                  # $f12 = 100.00
    jal     func_80026D90
    swc1    $f0, 0x028C(s0)            # 0000028C
    lui     a1, 0x3C23                 # a1 = 3C230000
    swc1    $f0, 0x0290(s0)            # 00000290
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t1, t0, $at
    jal     func_800CDCCC              # Rand.Next() float
    sw      t1, 0x0004(s0)             # 00000004
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f6                   # $f6 = 0.50
    lui     $at, %hi(var_80AA87F0)     # $at = 80AB0000
    lwc1    $f10, %lo(var_80AA87F0)($at)
    sub.s   $f8, $f0, $f6
    lui     t3, %hi(func_80AA7CC4)     # t3 = 80AA0000
    addiu   t3, t3, %lo(func_80AA7CC4) # t3 = 80AA7CC4
    sw      t3, 0x0240(s0)             # 00000240
    mul.s   $f16, $f8, $f10
    trunc.w.s $f18, $f16
    mfc1    v0, $f18
    nop
    sh      v0, 0x0032(s0)             # 00000032
    sh      v0, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80AA7884:
    sw      a1, 0x0004($sp)
    lw      v1, 0x0118(a0)             # 00000118
    beq     v1, $zero, lbl_80AA78B0
    or      v0, v1, $zero              # v0 = 00000000
    lw      t6, 0x0130(v1)             # 00000130
    beq     t6, $zero, lbl_80AA78B0
    nop
    lh      v1, 0x0286(v1)             # 00000286
    blez    v1, lbl_80AA78B0
    addiu   t7, v1, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0286(v0)             # 00000286
lbl_80AA78B0:
    jr      $ra
    nop


func_80AA78B8:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      a2, 0x0028($sp)
    sll     a2, a2, 16
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sra     a2, a2, 16
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x0244(s0)             # 00000244
    bnel    t6, $zero, lbl_80AA7958
    lh      t4, 0x0248(s0)             # 00000248
    bne     a2, $zero, lbl_80AA78F8
    lui     $at, %hi(var_80AA87F4)     # $at = 80AB0000
    mtc1    $zero, $f2                 # $f2 = 0.00
    beq     $zero, $zero, lbl_80AA7904
    swc1    $f2, 0x0254(s0)            # 00000254
lbl_80AA78F8:
    lwc1    $f4, %lo(var_80AA87F4)($at)
    mtc1    $zero, $f2                 # $f2 = 0.00
    swc1    $f4, 0x0254(s0)            # 00000254
lbl_80AA7904:
    lh      t7, 0x027E(s0)             # 0000027E
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x0244(s0)             # 00000244
    addiu   t8, t7, 0x0001             # t8 = 00000001
    sh      t8, 0x027E(s0)             # 0000027E
    lh      t0, 0x027E(s0)             # 0000027E
    andi    t1, t0, 0x0001             # t1 = 00000000
    bnel    t1, $zero, lbl_80AA7958
    lh      t4, 0x0248(s0)             # 00000248
    bne     a2, $zero, lbl_80AA7954
    swc1    $f2, 0x0254(s0)            # 00000254
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f12                  # $f12 = 30.00
    jal     func_80026D64
    sh      a2, 0x002A($sp)
    trunc.w.s $f6, $f0
    lh      a2, 0x002A($sp)
    mfc1    t3, $f6
    nop
    sh      t3, 0x0244(s0)             # 00000244
lbl_80AA7954:
    lh      t4, 0x0248(s0)             # 00000248
lbl_80AA7958:
    mtc1    $zero, $f2                 # $f2 = 0.00
    bnel    t4, $zero, lbl_80AA7AB8
    lwc1    $f0, 0x0278(s0)            # 00000278
    lh      t5, 0x0282(s0)             # 00000282
    sltiu   $at, a2, 0x0006
    sll     t9, a2,  2
    addiu   t6, t5, 0x0001             # t6 = 00000001
    sh      t6, 0x0282(s0)             # 00000282
    lh      t7, 0x0282(s0)             # 00000282
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     $at, $zero, lbl_80AA7AB4
    sh      t8, 0x0282(s0)             # 00000282
    lui     $at, %hi(var_80AA87F8)     # $at = 80AB0000
    addu    $at, $at, t9
    lw      t9, %lo(var_80AA87F8)($at)
    jr      t9
    nop
var_80AA799C:
    swc1    $f2, 0x025C(s0)            # 0000025C
    beq     $zero, $zero, lbl_80AA7AB4
    swc1    $f2, 0x0258(s0)            # 00000258
var_80AA79A8:
    addiu   t0, $zero, 0x0003          # t0 = 00000003
    sh      t0, 0x0248(s0)             # 00000248
    lui     $at, %hi(var_80AA8810)     # $at = 80AB0000
    lwc1    $f8, %lo(var_80AA8810)($at)
    lh      t1, 0x0282(s0)             # 00000282
    lui     $at, %hi(var_80AA8814)     # $at = 80AB0000
    swc1    $f8, 0x025C(s0)            # 0000025C
    lwc1    $f10, %lo(var_80AA8814)($at)
    bne     t1, $zero, lbl_80AA7AB4
    swc1    $f10, 0x0258(s0)           # 00000258
    swc1    $f2, 0x025C(s0)            # 0000025C
    beq     $zero, $zero, lbl_80AA7AB4
    swc1    $f2, 0x0258(s0)            # 00000258
var_80AA79DC:
    lui     $at, %hi(var_80AA8818)     # $at = 80AB0000
    lwc1    $f0, %lo(var_80AA8818)($at)
    lui     $at, %hi(var_80AA881C)     # $at = 80AB0000
    lwc1    $f2, %lo(var_80AA881C)($at)
    addiu   t2, $zero, 0x0002          # t2 = 00000002
    sh      t2, 0x0248(s0)             # 00000248
    lui     $at, %hi(var_80AA8820)     # $at = 80AB0000
    lwc1    $f16, %lo(var_80AA8820)($at)
    lui     $at, %hi(var_80AA8824)     # $at = 80AB0000
    lh      t3, 0x0282(s0)             # 00000282
    swc1    $f16, 0x025C(s0)           # 0000025C
    lwc1    $f18, %lo(var_80AA8824)($at)
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f2, 0x026C(s0)            # 0000026C
    bne     t3, $zero, lbl_80AA7AB4
    swc1    $f18, 0x0258(s0)           # 00000258
    lui     $at, 0x45FA                # $at = 45FA0000
    mtc1    $at, $f0                   # $f0 = 8000.00
    nop
    swc1    $f0, 0x0268(s0)            # 00000268
    beq     $zero, $zero, lbl_80AA7AB4
    swc1    $f0, 0x0270(s0)            # 00000270
var_80AA7A3C:
    lui     $at, %hi(var_80AA8828)     # $at = 80AB0000
    lwc1    $f0, %lo(var_80AA8828)($at)
    lh      t5, 0x0282(s0)             # 00000282
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    sh      t4, 0x0248(s0)             # 00000248
    swc1    $f0, 0x0268(s0)            # 00000268
    bne     t5, $zero, lbl_80AA7AB4
    swc1    $f0, 0x0270(s0)            # 00000270
    lui     $at, %hi(var_80AA882C)     # $at = 80AB0000
    lwc1    $f0, %lo(var_80AA882C)($at)
    swc1    $f0, 0x0268(s0)            # 00000268
    beq     $zero, $zero, lbl_80AA7AB4
    swc1    $f0, 0x0270(s0)            # 00000270
var_80AA7A70:
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    sh      t6, 0x0246(s0)             # 00000246
    lh      t7, 0x0246(s0)             # 00000246
    beq     $zero, $zero, lbl_80AA7AB4
    sh      t7, 0x0244(s0)             # 00000244
var_80AA7A84:
    lui     $at, %hi(var_80AA8830)     # $at = 80AB0000
    lwc1    $f0, %lo(var_80AA8830)($at)
    lh      t9, 0x0282(s0)             # 00000282
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sh      t8, 0x0248(s0)             # 00000248
    swc1    $f0, 0x0268(s0)            # 00000268
    bne     t9, $zero, lbl_80AA7AB4
    swc1    $f0, 0x0270(s0)            # 00000270
    lui     $at, %hi(var_80AA8834)     # $at = 80AB0000
    lwc1    $f0, %lo(var_80AA8834)($at)
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0270(s0)            # 00000270
lbl_80AA7AB4:
    lwc1    $f0, 0x0278(s0)            # 00000278
lbl_80AA7AB8:
    lwc1    $f4, 0x02B0(s0)            # 000002B0
    addiu   a0, s0, 0x02B0             # a0 = 000002B0
    lui     a2, 0x3F00                 # a2 = 3F000000
    c.eq.s  $f4, $f0
    nop
    bc1tl   lbl_80AA7AE4
    lwc1    $f0, 0x0254(s0)            # 00000254
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    lwc1    $f0, 0x0254(s0)            # 00000254
lbl_80AA7AE4:
    lwc1    $f6, 0x02AC(s0)            # 000002AC
    addiu   a0, s0, 0x02AC             # a0 = 000002AC
    lui     a2, 0x3F00                 # a2 = 3F000000
    c.eq.s  $f6, $f0
    nop
    bc1tl   lbl_80AA7B10
    lwc1    $f0, 0x025C(s0)            # 0000025C
    mfc1    a1, $f0
    jal     func_80064280
    lui     a3, 0x457A                 # a3 = 457A0000
    lwc1    $f0, 0x025C(s0)            # 0000025C
lbl_80AA7B10:
    lwc1    $f8, 0x0294(s0)            # 00000294
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f8, $f0
    addiu   a0, s0, 0x0294             # a0 = 00000294
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7B40
    lwc1    $f0, 0x0270(s0)            # 00000270
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0270(s0)            # 00000270
lbl_80AA7B40:
    lwc1    $f10, 0x0298(s0)           # 00000298
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f10, $f0
    addiu   a0, s0, 0x0298             # a0 = 00000298
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7B70
    lwc1    $f0, 0x0274(s0)            # 00000274
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0274(s0)            # 00000274
lbl_80AA7B70:
    lwc1    $f16, 0x029C(s0)           # 0000029C
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f16, $f0
    addiu   a0, s0, 0x029C             # a0 = 0000029C
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7BA0
    lwc1    $f0, 0x0258(s0)            # 00000258
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0258(s0)            # 00000258
lbl_80AA7BA0:
    lwc1    $f18, 0x02A0(s0)           # 000002A0
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f18, $f0
    addiu   a0, s0, 0x02A0             # a0 = 000002A0
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7BD0
    lwc1    $f0, 0x0268(s0)            # 00000268
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x0268(s0)            # 00000268
lbl_80AA7BD0:
    lwc1    $f4, 0x02A4(s0)            # 000002A4
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f4, $f0
    addiu   a0, s0, 0x02A4             # a0 = 000002A4
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7C00
    lwc1    $f0, 0x026C(s0)            # 0000026C
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lwc1    $f0, 0x026C(s0)            # 0000026C
lbl_80AA7C00:
    lwc1    $f6, 0x02A8(s0)            # 000002A8
    lui     a2, 0x3F4C                 # a2 = 3F4C0000
    ori     a2, a2, 0xCCCD             # a2 = 3F4CCCCD
    c.eq.s  $f6, $f0
    addiu   a0, s0, 0x02A8             # a0 = 000002A8
    lui     a3, 0x45DA                 # a3 = 45DA0000
    bc1tl   lbl_80AA7C30
    lw      $ra, 0x001C($sp)
    mfc1    a1, $f0
    jal     func_80064280
    ori     a3, a3, 0xC000             # a3 = 45DAC000
    lw      $ra, 0x001C($sp)
lbl_80AA7C30:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80AA7C40:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x02D4(a0)             # 000002D4
    jal     func_80020F04
    sw      a0, 0x0020($sp)
    lw      a0, 0x0024($sp)
    lw      a1, 0x0020($sp)
    addiu   a2, $sp, 0x001E            # a2 = FFFFFFFE
    jal     func_80022B14
    addiu   a3, $sp, 0x001C            # a3 = FFFFFFFC
    lw      t6, 0x0020($sp)
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f6                   # $f6 = -20.00
    lwc1    $f4, 0x00EC(t6)            # 000000EC
    lh      v0, 0x001E($sp)
    lw      $ra, 0x0014($sp)
    c.lt.s  $f4, $f6
    nop
    bc1t    lbl_80AA7CB4
    nop
    bltz    v0, lbl_80AA7CB4
    slti    $at, v0, 0x0141
    beq     $at, $zero, lbl_80AA7CB4
    lh      v0, 0x001C($sp)
    bltz    v0, lbl_80AA7CB4
    slti    $at, v0, 0x00F1
    bne     $at, $zero, lbl_80AA7CBC
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80AA7CB4:
    beq     $zero, $zero, lbl_80AA7CBC
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA7CBC:
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80AA7CC4:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lwc1    $f6, 0x0288(s0)            # 00000288
    lwc1    $f16, 0x028C(s0)           # 0000028C
    swc1    $f4, 0x0068(s0)            # 00000068
    lwc1    $f0, 0x00EC(s1)            # 000000EC
    lwc1    $f18, 0x00F0(s1)           # 000000F0
    lwc1    $f10, 0x00E0(s1)           # 000000E0
    add.s   $f8, $f6, $f0
    lwc1    $f6, 0x00E4(s1)            # 000000E4
    addiu   a0, s0, 0x0024             # a0 = 00000024
    add.s   $f4, $f16, $f18
    lwc1    $f18, 0x00E8(s1)           # 000000E8
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFE4
    sub.s   $f2, $f8, $f10
    lwc1    $f10, 0x00F4(s1)           # 000000F4
    lwc1    $f8, 0x0290(s0)            # 00000290
    sub.s   $f12, $f4, $f6
    add.s   $f4, $f0, $f2
    add.s   $f16, $f8, $f10
    swc1    $f4, 0x0034($sp)
    lwc1    $f6, 0x00F0(s1)            # 000000F0
    sub.s   $f14, $f16, $f18
    add.s   $f8, $f6, $f12
    swc1    $f8, 0x0038($sp)
    lwc1    $f10, 0x00F4(s1)           # 000000F4
    sw      a0, 0x002C($sp)
    add.s   $f16, $f10, $f14
    jal     func_80063F00
    swc1    $f16, 0x003C($sp)
    mtc1    v0, $f18                   # $f18 = 0.00
    lw      a0, 0x002C($sp)
    addiu   a1, $sp, 0x0034            # a1 = FFFFFFE4
    cvt.s.w $f4, $f18
    jal     func_80063F34
    swc1    $f4, 0x02C4(s0)            # 000002C4
    mtc1    v0, $f6                    # $f6 = 0.00
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f10                  # $f10 = -1.00
    cvt.s.w $f8, $f6
    lwc1    $f6, 0x02CC(s0)            # 000002CC
    lwc1    $f18, 0x02C4(s0)           # 000002C4
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    trunc.w.s $f4, $f18
    mul.s   $f16, $f8, $f10
    mfc1    a1, $f4
    trunc.w.s $f8, $f6
    swc1    $f16, 0x02C0(s0)           # 000002C0
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f8
    sw      $zero, 0x0010($sp)
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lwc1    $f10, 0x02C0(s0)           # 000002C0
    lwc1    $f18, 0x02CC(s0)           # 000002CC
    sw      $zero, 0x0010($sp)
    trunc.w.s $f16, $f10
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    trunc.w.s $f4, $f18
    mfc1    a1, $f16
    mfc1    a3, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     a1, 0x459C                 # a1 = 459C0000
    ori     a1, a1, 0x4000             # a1 = 459C4000
    addiu   a0, s0, 0x02CC             # a0 = 000002CC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lw      a1, 0x02D4(s0)             # 000002D4
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x004E            # a2 = FFFFFFFE
    jal     func_80022B14
    addiu   a3, $sp, 0x004C            # a3 = FFFFFFFC
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t0, v0, 0x0008             # t0 = 00000000
    beql    t0, $zero, lbl_80AA7EC4
    mtc1    $zero, $f2                 # $f2 = 0.00
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t2, 0x0030(s0)             # 00000030
    lui     $at, %hi(var_80AA8838)     # $at = 80AB0000
    mtc1    t1, $f6                    # $f6 = 0.00
    mtc1    t2, $f10                   # $f10 = 0.00
    mtc1    $zero, $f2                 # $f2 = 0.00
    cvt.s.w $f8, $f6
    addiu   t3, $zero, 0x0064          # t3 = 00000064
    lui     t4, %hi(func_80AA8004)     # t4 = 80AB0000
    addiu   t4, t4, %lo(func_80AA8004) # t4 = 80AA8004
    cvt.s.w $f16, $f10
    swc1    $f8, 0x02C4(s0)            # 000002C4
    lwc1    $f18, %lo(var_80AA8838)($at)
    sh      $zero, 0x024A(s0)          # 0000024A
    lh      v0, 0x024A(s0)             # 0000024A
    sh      t3, 0x024C(s0)             # 0000024C
    sub.s   $f4, $f16, $f18
    lui     $at, %hi(var_80AA883C)     # $at = 80AB0000
    swc1    $f2, 0x02CC(s0)            # 000002CC
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f4, 0x02C0(s0)            # 000002C0
    swc1    $f2, 0x026C(s0)            # 0000026C
    sh      v0, 0x0248(s0)             # 00000248
    sh      v0, 0x0246(s0)             # 00000246
    sh      v0, 0x0244(s0)             # 00000244
    lwc1    $f6, %lo(var_80AA883C)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f8                   # $f8 = 5.00
    sw      t4, 0x0240(s0)             # 00000240
    swc1    $f2, 0x0278(s0)            # 00000278
    swc1    $f6, 0x006C(s0)            # 0000006C
    beq     $zero, $zero, lbl_80AA7FF0
    swc1    $f8, 0x02D0(s0)            # 000002D0
    mtc1    $zero, $f2                 # $f2 = 0.00
lbl_80AA7EC4:
    lwc1    $f10, 0x00EC(s0)           # 000000EC
    lwc1    $f16, 0x0034($sp)
    andi    t5, v0, 0x0001             # t5 = 00000000
    c.lt.s  $f2, $f10
    nop
    bc1f    lbl_80AA7F44
    nop
    lwc1    $f18, 0x0024(s0)           # 00000024
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f12                  # $f12 = 50.00
    sub.s   $f0, $f16, $f18
    lwc1    $f4, 0x0038($sp)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_80AA7F44
    nop
    lwc1    $f6, 0x0028(s0)            # 00000028
    lwc1    $f8, 0x003C($sp)
    sub.s   $f0, $f4, $f6
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1f    lbl_80AA7F44
    nop
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f12
    nop
    bc1tl   lbl_80AA7F50
    lh      t7, 0x0030(s0)             # 00000030
lbl_80AA7F44:
    beq     t5, $zero, lbl_80AA7FC4
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    lh      t7, 0x0030(s0)             # 00000030
lbl_80AA7F50:
    lh      t6, 0x008A(s0)             # 0000008A
    lui     $at, 0x44FA                # $at = 44FA0000
    mtc1    t7, $f4                    # $f4 = 0.00
    mtc1    t6, $f16                   # $f16 = 0.00
    mtc1    $at, $f8                   # $f8 = 2000.00
    cvt.s.w $f6, $f4
    sh      $zero, 0x024A(s0)          # 0000024A
    lh      v0, 0x024A(s0)             # 0000024A
    swc1    $f2, 0x02CC(s0)            # 000002CC
    swc1    $f2, 0x026C(s0)            # 0000026C
    cvt.s.w $f18, $f16
    swc1    $f2, 0x0274(s0)            # 00000274
    lui     $at, %hi(var_80AA8840)     # $at = 80AB0000
    sh      v0, 0x0248(s0)             # 00000248
    sh      v0, 0x0246(s0)             # 00000246
    sub.s   $f10, $f6, $f8
    swc1    $f18, 0x02C4(s0)           # 000002C4
    sh      v0, 0x0244(s0)             # 00000244
    lui     t8, %hi(func_80AA8004)     # t8 = 80AB0000
    swc1    $f10, 0x02C0(s0)           # 000002C0
    lwc1    $f16, %lo(var_80AA8840)($at)
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    addiu   t8, t8, %lo(func_80AA8004) # t8 = 80AA8004
    swc1    $f2, 0x0278(s0)            # 00000278
    sw      t8, 0x0240(s0)             # 00000240
    swc1    $f16, 0x006C(s0)           # 0000006C
    beq     $zero, $zero, lbl_80AA7FF0
    swc1    $f18, 0x02D0(s0)           # 000002D0
lbl_80AA7FC4:
    sh      t9, 0x0244(s0)             # 00000244
    lui     $at, %hi(var_80AA8844)     # $at = 80AB0000
    lwc1    $f4, %lo(var_80AA8844)($at)
    lui     $at, %hi(var_80AA8848)     # $at = 80AB0000
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0254(s0)            # 00000254
    lwc1    $f6, %lo(var_80AA8848)($at)
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80AA78B8
    swc1    $f6, 0x0278(s0)            # 00000278
lbl_80AA7FF0:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp = 00000000


func_80AA8004:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA7C40
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80AA8040
    lhu     t6, 0x0088(s0)             # 00000088
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA8264
    lw      $ra, 0x0024($sp)
    lhu     t6, 0x0088(s0)             # 00000088
lbl_80AA8040:
    andi    t7, t6, 0x0001             # t7 = 00000000
    beql    t7, $zero, lbl_80AA80DC
    lh      t3, 0x024C(s0)             # 0000024C
    lh      t8, 0x024A(s0)             # 0000024A
    lui     $at, 0x4060                # $at = 40600000
    addiu   t1, $zero, 0x0032          # t1 = 00000032
    bne     t8, $zero, lbl_80AA8070
    addiu   t2, $zero, 0x0064          # t2 = 00000064
    mtc1    $at, $f4                   # $f4 = 3.50
    addiu   t9, $zero, 0x0003          # t9 = 00000003
    sh      t9, 0x024A(s0)             # 0000024A
    swc1    $f4, 0x0060(s0)            # 00000060
lbl_80AA8070:
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f6                   # $f6 = -2.00
    lwc1    $f8, 0x006C(s0)            # 0000006C
    lui     $at, %hi(var_80AA884C)     # $at = 80AB0000
    c.eq.s  $f6, $f8
    nop
    bc1tl   lbl_80AA80DC
    lh      t3, 0x024C(s0)             # 0000024C
    lwc1    $f0, %lo(var_80AA884C)($at)
    lh      t0, 0x008A(s0)             # 0000008A
    mtc1    $zero, $f2                 # $f2 = 0.00
    lui     $at, 0xC000                # $at = C0000000
    mtc1    t0, $f10                   # $f10 = 0.00
    mtc1    $at, $f18                  # $f18 = -2.00
    sh      t1, 0x0252(s0)             # 00000252
    cvt.s.w $f16, $f10
    sh      t2, 0x024C(s0)             # 0000024C
    swc1    $f0, 0x0268(s0)            # 00000268
    swc1    $f0, 0x0270(s0)            # 00000270
    swc1    $f2, 0x026C(s0)            # 0000026C
    swc1    $f2, 0x0274(s0)            # 00000274
    swc1    $f16, 0x02C4(s0)           # 000002C4
    swc1    $f2, 0x0258(s0)            # 00000258
    swc1    $f2, 0x025C(s0)            # 0000025C
    swc1    $f2, 0x02C0(s0)            # 000002C0
    swc1    $f18, 0x006C(s0)           # 0000006C
    lh      t3, 0x024C(s0)             # 0000024C
lbl_80AA80DC:
    addiu   $at, $zero, 0x0032         # $at = 00000032
    bne     t3, $at, lbl_80AA810C
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f12                  # $f12 = 200.00
    jal     func_80026D90
    nop
    lh      t4, 0x008A(s0)             # 0000008A
    mtc1    t4, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    add.s   $f8, $f0, $f6
    swc1    $f8, 0x02C4(s0)            # 000002C4
lbl_80AA810C:
    lwc1    $f10, 0x02C4(s0)           # 000002C4
    lwc1    $f18, 0x02CC(s0)           # 000002CC
    sw      $zero, 0x0010($sp)
    trunc.w.s $f16, $f10
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    trunc.w.s $f4, $f18
    mfc1    a1, $f16
    mfc1    a3, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lwc1    $f6, 0x02C0(s0)            # 000002C0
    lwc1    $f10, 0x02CC(s0)           # 000002CC
    sw      $zero, 0x0010($sp)
    trunc.w.s $f8, $f6
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    trunc.w.s $f16, $f10
    mfc1    a1, $f8
    mfc1    a3, $f16
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     a1, 0x461C                 # a1 = 461C0000
    ori     a1, a1, 0x4000             # a1 = 461C4000
    addiu   a0, s0, 0x02CC             # a0 = 000002CC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x447A                 # a3 = 447A0000
    lui     a2, 0x3F66                 # a2 = 3F660000
    ori     a2, a2, 0x6666             # a2 = 3F666666
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      a1, 0x02D0(s0)             # 000002D0
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f18                  # $f18 = -2.00
    lwc1    $f4, 0x006C(s0)            # 0000006C
    mtc1    $zero, $f2                 # $f2 = 0.00
    c.eq.s  $f18, $f4
    nop
    bc1fl   lbl_80AA8230
    lhu     t5, 0x0088(s0)             # 00000088
    lh      t9, 0x0252(s0)             # 00000252
    bnel    t9, $zero, lbl_80AA8230
    lhu     t5, 0x0088(s0)             # 00000088
    lhu     t0, 0x0088(s0)             # 00000088
    andi    t1, t0, 0x0008             # t1 = 00000000
    bnel    t1, $zero, lbl_80AA81F8
    lh      t3, 0x0030(s0)             # 00000030
    lh      t2, 0x024C(s0)             # 0000024C
    bnel    t2, $zero, lbl_80AA8230
    lhu     t5, 0x0088(s0)             # 00000088
    lh      t3, 0x0030(s0)             # 00000030
lbl_80AA81F8:
    swc1    $f2, 0x02D0(s0)            # 000002D0
    swc1    $f2, 0x006C(s0)            # 0000006C
    mtc1    t3, $f6                    # $f6 = 0.00
    swc1    $f2, 0x02CC(s0)            # 000002CC
    lui     $at, %hi(var_80AA8850)     # $at = 80AB0000
    cvt.s.w $f8, $f6
    lwc1    $f10, %lo(var_80AA8850)($at)
    lui     t4, %hi(func_80AA8274)     # t4 = 80AB0000
    addiu   t4, t4, %lo(func_80AA8274) # t4 = 80AA8274
    sw      t4, 0x0240(s0)             # 00000240
    sub.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80AA8260
    swc1    $f16, 0x02C0(s0)           # 000002C0
    lhu     t5, 0x0088(s0)             # 00000088
lbl_80AA8230:
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    andi    t6, t5, 0x0001             # t6 = 00000000
    beq     t6, $zero, lbl_80AA8258
    lw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA78B8
    lw      a1, 0x002C($sp)
    beq     $zero, $zero, lbl_80AA8264
    lw      $ra, 0x0024($sp)
lbl_80AA8258:
    jal     func_80AA78B8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
lbl_80AA8260:
    lw      $ra, 0x0024($sp)
lbl_80AA8264:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AA8274:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80AA7C40
    lw      a1, 0x002C($sp)
    bnel    v0, $zero, lbl_80AA82B0
    lwc1    $f4, 0x02C0(s0)            # 000002C0
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA8328
    lw      $ra, 0x0024($sp)
    lwc1    $f4, 0x02C0(s0)            # 000002C0
lbl_80AA82B0:
    lwc1    $f8, 0x02CC(s0)            # 000002CC
    sw      $zero, 0x0010($sp)
    trunc.w.s $f6, $f4
    addiu   a0, s0, 0x0030             # a0 = 00000030
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    mfc1    a3, $f10
    sll     a1, a1, 16
    sra     a1, a1, 16
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     a1, 0x459C                 # a1 = 459C0000
    ori     a1, a1, 0x4000             # a1 = 459C4000
    addiu   a0, s0, 0x02CC             # a0 = 000002CC
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064280
    lui     a3, 0x42C8                 # a3 = 42C80000
    lui     a2, 0x3E99                 # a2 = 3E990000
    ori     a2, a2, 0x999A             # a2 = 3E99999A
    addiu   a0, s0, 0x0060             # a0 = 00000060
    lui     a1, 0x40A0                 # a1 = 40A00000
    jal     func_80064280
    lui     a3, 0x3F80                 # a3 = 3F800000
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x002C($sp)
    jal     func_80AA78B8
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    lw      $ra, 0x0024($sp)
lbl_80AA8328:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80AA8338:
    addiu   $sp, $sp, 0xFFB0           # $sp = FFFFFFB0
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t6, 0x1C44(a1)             # 00001C44
    sw      t6, 0x0040($sp)
    lh      t7, 0x027C(s0)             # 0000027C
    lh      v0, 0x0244(s0)             # 00000244
    addiu   t8, t7, 0x0001             # t8 = 00000001
    beq     v0, $zero, lbl_80AA836C
    sh      t8, 0x027C(s0)             # 0000027C
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0244(s0)             # 00000244
lbl_80AA836C:
    lh      v0, 0x0248(s0)             # 00000248
    beq     v0, $zero, lbl_80AA837C
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0248(s0)             # 00000248
lbl_80AA837C:
    lh      v0, 0x024A(s0)             # 0000024A
    beq     v0, $zero, lbl_80AA838C
    addiu   t1, v0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x024A(s0)             # 0000024A
lbl_80AA838C:
    lh      v0, 0x024E(s0)             # 0000024E
    beq     v0, $zero, lbl_80AA839C
    addiu   t2, v0, 0xFFFF             # t2 = FFFFFFFF
    sh      t2, 0x024E(s0)             # 0000024E
lbl_80AA839C:
    lh      v0, 0x0250(s0)             # 00000250
    beq     v0, $zero, lbl_80AA83AC
    addiu   t3, v0, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0250(s0)             # 00000250
lbl_80AA83AC:
    lh      v0, 0x024C(s0)             # 0000024C
    beq     v0, $zero, lbl_80AA83BC
    addiu   t4, v0, 0xFFFF             # t4 = FFFFFFFF
    sh      t4, 0x024C(s0)             # 0000024C
lbl_80AA83BC:
    lh      v0, 0x0252(s0)             # 00000252
    beq     v0, $zero, lbl_80AA83CC
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0252(s0)             # 00000252
lbl_80AA83CC:
    lwl     t7, 0x0030(s0)             # 00000030
    lwr     t7, 0x0033(s0)             # 00000033
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f4                   # $f4 = 15.00
    swl     t7, 0x00B4(s0)             # 000000B4
    swr     t7, 0x00B7(s0)             # 000000B7
    lhu     t7, 0x0034(s0)             # 00000034
    swc1    $f4, 0x00C4(s0)            # 000000C4
    or      a0, s0, $zero              # a0 = 00000000
    sh      t7, 0x00B8(s0)             # 000000B8
    sw      a1, 0x0054($sp)
    lw      t9, 0x0240(s0)             # 00000240
    jalr    $ra, t9
    nop
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    addiu   t8, $zero, 0x001D          # t8 = 0000001D
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t8, 0x0014($sp)
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    lw      t1, 0x0240(s0)             # 00000240
    lui     t0, %hi(func_80AA7CC4)     # t0 = 80AA0000
    addiu   t0, t0, %lo(func_80AA7CC4) # t0 = 80AA7CC4
    bne     t0, t1, lbl_80AA8458
    nop
    jal     func_800212B8
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA8464
    lui     $at, 0xC6FA                # $at = C6FA0000
lbl_80AA8458:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC6FA                # $at = C6FA0000
lbl_80AA8464:
    mtc1    $at, $f8                   # $f8 = -32000.00
    lwc1    $f10, 0x0080(s0)           # 00000080
    c.le.s  $f10, $f8
    nop
    bc1fl   lbl_80AA8490
    lhu     t2, 0x0088(s0)             # 00000088
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80AA85F0
    lw      $ra, 0x0024($sp)
    lhu     t2, 0x0088(s0)             # 00000088
lbl_80AA8490:
    andi    t3, t2, 0x0020             # t3 = 00000000
    beql    t3, $zero, lbl_80AA8528
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t4, 0x0240(s0)             # 00000240
    lui     v0, %hi(func_80AA8274)     # v0 = 80AB0000
    addiu   v0, v0, %lo(func_80AA8274) # v0 = 80AA8274
    beq     v0, t4, lbl_80AA8524
    addiu   a0, $sp, 0x0030            # a0 = FFFFFFE0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    jal     func_80063CAC              # Vec3f_Copy
    sw      v0, 0x0028($sp)
    lwc1    $f16, 0x0034($sp)
    lwc1    $f18, 0x0084(s0)           # 00000084
    addiu   t5, $zero, 0x0190          # t5 = 00000190
    sw      t5, 0x0014($sp)
    add.s   $f4, $f16, $f18
    sw      $zero, 0x0010($sp)
    lw      a0, 0x0054($sp)
    addiu   a1, $sp, 0x0030            # a1 = FFFFFFE0
    swc1    $f4, 0x0034($sp)
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001CF94
    or      a3, $zero, $zero           # a3 = 00000000
    lh      t6, 0x0030(s0)             # 00000030
    mtc1    $zero, $f0                 # $f0 = 0.00
    lw      v0, 0x0028($sp)
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_80AA8854)     # $at = 80AB0000
    swc1    $f0, 0x02CC(s0)            # 000002CC
    cvt.s.w $f8, $f6
    swc1    $f0, 0x006C(s0)            # 0000006C
    swc1    $f0, 0x02D0(s0)            # 000002D0
    lwc1    $f10, %lo(var_80AA8854)($at)
    sw      v0, 0x0240(s0)             # 00000240
    sub.s   $f16, $f8, $f10
    beq     $zero, $zero, lbl_80AA85EC
    swc1    $f16, 0x02C0(s0)           # 000002C0
lbl_80AA8524:
    lui     $at, 0x41A0                # $at = 41A00000
lbl_80AA8528:
    mtc1    $at, $f0                   # $f0 = 20.00
    lwc1    $f18, 0x008C(s0)           # 0000008C
    mul.s   $f4, $f0, $f0
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_80AA85B8
    lh      t4, 0x024E(s0)             # 0000024E
    lw      v0, 0x0118(s0)             # 00000118
    lw      t7, 0x0130(v0)             # 00000130
    beql    t7, $zero, lbl_80AA85B8
    lh      t4, 0x024E(s0)             # 0000024E
    beql    v0, $zero, lbl_80AA85B8
    lh      t4, 0x024E(s0)             # 0000024E
    beql    v0, $zero, lbl_80AA85B8
    lh      t4, 0x024E(s0)             # 0000024E
    lh      t9, 0x025A(v0)             # 0000025A
    lw      t8, 0x0040($sp)
    bnel    t9, $zero, lbl_80AA85B8
    lh      t4, 0x024E(s0)             # 0000024E
    lw      t0, 0x066C(t8)             # 0000066C
    lw      a0, 0x0054($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sll     t1, t0,  5
    bltz    t1, lbl_80AA85B4
    lui     a2, 0x4000                 # a2 = 40000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lh      a3, 0x0032(s0)             # 00000032
    addiu   t2, $zero, 0x0010          # t2 = 00000010
    sw      t2, 0x0014($sp)
    sw      v0, 0x0044($sp)
    jal     func_80022E7C
    swc1    $f0, 0x0010($sp)
    lw      v1, 0x0044($sp)
    addiu   t3, $zero, 0x0046          # t3 = 00000046
    sh      t3, 0x025A(v1)             # 0000025A
lbl_80AA85B4:
    lh      t4, 0x024E(s0)             # 0000024E
lbl_80AA85B8:
    bne     t4, $zero, lbl_80AA85D0
    addiu   t5, $zero, 0x001E          # t5 = 0000001E
    sh      t5, 0x024E(s0)             # 0000024E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x2812          # a1 = 00002812
lbl_80AA85D0:
    lh      t6, 0x0250(s0)             # 00000250
    bne     t6, $zero, lbl_80AA85EC
    addiu   t7, $zero, 0x0007          # t7 = 00000007
    sh      t7, 0x0250(s0)             # 00000250
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38FF          # a1 = 000038FF
lbl_80AA85EC:
    lw      $ra, 0x0024($sp)
lbl_80AA85F0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0050           # $sp = 00000000
    jr      $ra
    nop


func_80AA8600:
    addiu   $sp, $sp, 0xFFF0           # $sp = FFFFFFF0
    sw      a0, 0x0010($sp)
    sw      a2, 0x0018($sp)
    sw      a3, 0x001C($sp)
    lui     t7, %hi(var_80AA87DC)      # t7 = 80AB0000
    addiu   t7, t7, %lo(var_80AA87DC)  # t7 = 80AA87DC
    lw      t9, 0x0000(t7)             # 80AA87DC
    addiu   t6, $sp, 0x0000            # t6 = FFFFFFF0
    lw      t8, 0x0004(t7)             # 80AA87E0
    sw      t9, 0x0000(t6)             # FFFFFFF0
    lw      t9, 0x0008(t7)             # 80AA87E4
    addiu   $at, $zero, 0x000D         # $at = 0000000D
    sw      t8, 0x0004(t6)             # FFFFFFF4
    bne     a1, $at, lbl_80AA8660
    sw      t9, 0x0008(t6)             # FFFFFFF8
    lw      v0, 0x0024($sp)
    lw      v1, 0x0020($sp)
    lwc1    $f4, 0x02AC(v0)            # 000002AC
    lh      t0, 0x0002(v1)             # 00000002
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    addu    t5, t0, t4
    sh      t5, 0x0002(v1)             # 00000002
lbl_80AA8660:
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    lw      v0, 0x0024($sp)
    bne     a1, $at, lbl_80AA868C
    lw      v1, 0x0020($sp)
    lwc1    $f8, 0x02B0(v0)            # 000002B0
    lh      t6, 0x0004(v1)             # 00000004
    trunc.w.s $f10, $f8
    mfc1    t1, $f10
    nop
    addu    t2, t6, t1
    sh      t2, 0x0004(v1)             # 00000004
lbl_80AA868C:
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    a1, $at, lbl_80AA86F0
    addiu   $at, $zero, 0x0007         # $at = 00000007
    lwc1    $f16, 0x02A8(v0)           # 000002A8
    lh      t3, 0x0000(v1)             # 00000000
    lh      t9, 0x0002(v1)             # 00000002
    trunc.w.s $f18, $f16
    lh      t5, 0x0004(v1)             # 00000004
    mfc1    t7, $f18
    nop
    addu    t8, t3, t7
    sh      t8, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x02A4(v0)            # 000002A4
    trunc.w.s $f6, $f4
    mfc1    t0, $f6
    nop
    addu    t4, t9, t0
    sh      t4, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x02A0(v0)            # 000002A0
    trunc.w.s $f10, $f8
    mfc1    t6, $f10
    nop
    addu    t1, t5, t6
    sh      t1, 0x0004(v1)             # 00000004
    addiu   $at, $zero, 0x0007         # $at = 00000007
lbl_80AA86F0:
    bnel    a1, $at, lbl_80AA8750
    or      v0, $zero, $zero           # v0 = 00000000
    lwc1    $f16, 0x029C(v0)           # 0000029C
    lh      t2, 0x0000(v1)             # 00000000
    lh      t8, 0x0002(v1)             # 00000002
    trunc.w.s $f18, $f16
    lh      t4, 0x0004(v1)             # 00000004
    mfc1    t3, $f18
    nop
    addu    t7, t2, t3
    sh      t7, 0x0000(v1)             # 00000000
    lwc1    $f4, 0x0298(v0)            # 00000298
    trunc.w.s $f6, $f4
    mfc1    t9, $f6
    nop
    addu    t0, t8, t9
    sh      t0, 0x0002(v1)             # 00000002
    lwc1    $f8, 0x0294(v0)            # 00000294
    trunc.w.s $f10, $f8
    mfc1    t5, $f10
    nop
    addu    t6, t4, t5
    sh      t6, 0x0004(v1)             # 00000004
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80AA8750:
    jr      $ra
    addiu   $sp, $sp, 0x0010           # $sp = 00000000


func_80AA8758:
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80AA8600)     # t7 = 80AB0000
    addiu   t7, t7, %lo(func_80AA8600) # t7 = 80AA8600
    lw      a1, 0x0140(v0)             # 00000140
    lw      a2, 0x015C(v0)             # 0000015C
    lbu     a3, 0x013E(v0)             # 0000013E
    sw      $zero, 0x0014($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop

.section .data

var_80AA87B0: .word 0x01440500, 0x00000010, 0x00130000, 0x000002D8
.word func_80AA7750
.word func_80AA7884
.word func_80AA8338
.word func_80AA8758
var_80AA87D0: .word 0x801F0001, 0xB86CF830, 0x304C0000
var_80AA87DC: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata

var_80AA87F0: .word 0x476A6000
var_80AA87F4: .word 0xC61C4000
var_80AA87F8: .word var_80AA799C
.word var_80AA79A8
.word var_80AA79DC
.word var_80AA7A3C
.word var_80AA7A70
.word var_80AA7A84
var_80AA8810: .word 0x45DAC000
var_80AA8814: .word 0x45DAC000
var_80AA8818: .word 0x46C35000
var_80AA881C: .word 0x45BB8000
var_80AA8820: .word 0xC61C4000
var_80AA8824: .word 0xC61C4000
var_80AA8828: .word 0x461C4000
var_80AA882C: .word 0x453B8000
var_80AA8830: .word 0x465AC000
var_80AA8834: .word 0x461C4000
var_80AA8838: .word 0x453B8000
var_80AA883C: .word 0xBE4CCCCD
var_80AA8840: .word 0xBE4CCCCD
var_80AA8844: .word 0xC61C4000
var_80AA8848: .word 0xC53B8000
var_80AA884C: .word 0x465AC000
var_80AA8850: .word 0x459C4000
var_80AA8854: .word 0x459C4000, 0x00000000, 0x00000000

