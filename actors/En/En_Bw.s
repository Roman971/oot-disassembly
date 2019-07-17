.section .text
func_808C6E10:
    sw      a1, 0x0218(a0)             # 00000218
    jr      $ra
    nop


func_808C6E1C:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lui     a1, 0x3C54                 # a1 = 3C540000
    ori     a1, a1, 0xFDF3             # a1 = 3C54FDF3
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    addiu   t6, $zero, 0x0023          # t6 = 00000023
    sb      t6, 0x0117(s0)             # 00000117
    swc1    $f4, 0x006C(s0)            # 0000006C
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t7, s0, 0x0180             # t7 = 00000180
    addiu   t8, s0, 0x01C8             # t8 = 000001C8
    addiu   t9, $zero, 0x000C          # t9 = 0000000C
    sw      t9, 0x0018($sp)
    sw      t8, 0x0014($sp)
    sw      t7, 0x0010($sp)
    addiu   a3, a3, 0x0228             # a3 = 06000228
    addiu   a2, a2, 0x20F0             # a2 = 060020F0
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4220                 # a3 = 42200000
    lw      t3, 0x0024(s0)             # 00000024
    lw      t2, 0x0028(s0)             # 00000028
    lui     t0, %hi(var_808C9B98)      # t0 = 808D0000
    sw      t3, 0x0038(s0)             # 00000038
    lw      t3, 0x002C(s0)             # 0000002C
    addiu   t0, t0, %lo(var_808C9B98)  # t0 = 808C9B98
    addiu   t1, $zero, 0x0006          # t1 = 00000006
    sw      t0, 0x0098(s0)             # 00000098
    sb      t1, 0x00AF(s0)             # 000000AF
    or      a0, s0, $zero              # a0 = 00000000
    sw      t2, 0x003C(s0)             # 0000003C
    jal     func_808C70D8
    sw      t3, 0x0040(s0)             # 00000040
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sb      t5, 0x021C(s0)             # 0000021C
    sb      t5, 0x021F(s0)             # 0000021F
    sb      $zero, 0x021E(s0)          # 0000021E
    sb      $zero, 0x021D(s0)          # 0000021D
    lui     $at, %hi(var_808C9C50)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9C50)($at)
    addiu   t7, $zero, 0x0003          # t7 = 00000003
    sb      t7, 0x0211(s0)             # 00000211
    addiu   a1, s0, 0x0284             # a1 = 00000284
    swc1    $f6, 0x0238(s0)            # 00000238
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_808C9B40)      # a3 = 808D0000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_808C9B40)  # a3 = 808C9B40
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a3, %hi(var_808C9B6C)      # a3 = 808D0000
    addiu   a3, a3, %lo(var_808C9B6C)  # a3 = 808C9B6C
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lh      t8, 0x0032(s0)             # 00000032
    lui     v0, %hi(var_808C9BB8)      # v0 = 808D0000
    addiu   v0, v0, %lo(var_808C9BB8)  # v0 = 808C9BB8
    sh      t8, 0x0226(s0)             # 00000226
    lw      t9, 0x0000(v0)             # 808C9BB8
    sh      t9, 0x001C(s0)             # 0000001C
    lw      t0, 0x0000(v0)             # 808C9BB8
    addiu   t1, t0, 0x0001             # t1 = 00000001
    andi    t2, t1, 0x0003             # t2 = 00000001
    sw      t2, 0x0000(v0)             # 808C9BB8
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_808C6F74:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0284             # a1 = 00000284
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x02D0             # a1 = 000002D0
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C6FB4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    lh      t6, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9C54)     # $at = 808D0000
    addiu   t7, t6, 0xFF06             # t7 = FFFFFF06
    sh      t7, 0x0212(s0)             # 00000212
    lh      t8, 0x0212(s0)             # 00000212
    lwc1    $f8, %lo(var_808C9C54)($at)
    mtc1    t8, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9C58)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9C58)($at)
    lh      t9, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9C5C)     # $at = 808D0000
    mul.s   $f16, $f0, $f10
    lwc1    $f18, %lo(var_808C9C5C)($at)
    mtc1    t9, $f6                    # $f6 = 0.00
    lui     $at, %hi(var_808C9C60)     # $at = 808D0000
    cvt.s.w $f8, $f6
    add.s   $f4, $f16, $f18
    swc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f10, %lo(var_808C9C60)($at)
    mul.s   $f12, $f8, $f10
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9C64)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9C64)($at)
    lui     $at, %hi(var_808C9C68)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9C68)($at)
    lh      t0, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9C6C)     # $at = 808D0000
    mul.s   $f4, $f0, $f18
    mtc1    t0, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    sub.s   $f6, $f16, $f4
    swc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f18, %lo(var_808C9C6C)($at)
    mul.s   $f12, $f10, $f18
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9C70)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9C70)($at)
    lui     $at, %hi(var_808C9C74)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9C74)($at)
    mul.s   $f4, $f0, $f16
    lh      t1, 0x0212(s0)             # 00000212
    add.s   $f8, $f4, $f6
    bne     t1, $zero, lbl_808C70C4
    swc1    $f8, 0x0058(s0)            # 00000058
    lh      t2, 0x00B6(s0)             # 000000B6
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C70D8
    sh      t2, 0x0032(s0)             # 00000032
lbl_808C70C4:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808C70D8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0228             # a1 = 06000228
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC000                 # a2 = C0000000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    jal     func_800CDCCC              # Rand.Next() float
    sb      t6, 0x0210(a3)             # 00000210
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f2                   # $f2 = 200.00
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f10                # $f10 = 0.00
    mul.s   $f4, $f0, $f2
    lui     a1, %hi(func_808C7154)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C7154) # a1 = 808C7154
    sb      $zero, 0x0222(a0)          # 00000222
    swc1    $f10, 0x0068(a0)           # 00000068
    add.s   $f6, $f4, $f2
    trunc.w.s $f8, $f6
    mfc1    t8, $f8
    jal     func_808C6E10
    sh      t8, 0x0212(a0)             # 00000212
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C7154:
    addiu   $sp, $sp, 0xFF88           # $sp -= 0x78
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x007C($sp)
    lw      t6, 0x007C($sp)
    sw      $zero, 0x0074($sp)
    sw      $zero, 0x0064($sp)
    lw      v0, 0x1C44(t6)             # 00001C44
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    sw      v0, 0x0054($sp)
    jal     func_8008C9C0
    sw      v0, 0x0050($sp)
    lui     $at, %hi(var_808C9C78)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9C78)($at)
    lwc1    $f4, 0x0240(s0)            # 00000240
    lwc1    $f12, 0x0230(s0)           # 00000230
    add.s   $f8, $f4, $f6
    jal     func_800A4650
    swc1    $f8, 0x0234(s0)            # 00000234
    lwc1    $f10, 0x0230(s0)           # 00000230
    lwc1    $f16, 0x0234(s0)           # 00000234
    lui     $at, %hi(var_808C9C7C)     # $at = 808D0000
    lwc1    $f12, 0x023C(s0)           # 0000023C
    add.s   $f18, $f10, $f16
    mov.s   $f2, $f0
    swc1    $f18, 0x0230(s0)           # 00000230
    lwc1    $f4, %lo(var_808C9C7C)($at)
    lui     $at, %hi(var_808C9C80)     # $at = 808D0000
    c.lt.s  $f12, $f4
    nop
    bc1fl   lbl_808C71E8
    lwc1    $f12, 0x0230(s0)           # 00000230
    lwc1    $f6, %lo(var_808C9C80)($at)
    add.s   $f8, $f12, $f6
    swc1    $f8, 0x023C(s0)            # 0000023C
    lwc1    $f12, 0x0230(s0)           # 00000230
lbl_808C71E8:
    jal     func_800A45FC
    swc1    $f2, 0x0058($sp)
    lui     $at, %hi(var_808C9C84)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9C84)($at)
    lwc1    $f10, 0x023C(s0)           # 0000023C
    lui     $at, %hi(var_808C9C88)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9C88)($at)
    mul.s   $f18, $f10, $f16
    lwc1    $f12, 0x0230(s0)           # 00000230
    mul.s   $f4, $f0, $f18
    sub.s   $f8, $f6, $f4
    jal     func_800A45FC
    swc1    $f8, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_808C9C8C)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9C8C)($at)
    lwc1    $f10, 0x023C(s0)           # 0000023C
    lui     $at, %hi(var_808C9C90)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9C90)($at)
    mul.s   $f18, $f10, $f16
    lwc1    $f12, 0x0230(s0)           # 00000230
    mul.s   $f6, $f0, $f18
    sub.s   $f8, $f4, $f6
    jal     func_800A45FC
    swc1    $f8, 0x0054(s0)            # 00000054
    lui     $at, %hi(var_808C9C94)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9C94)($at)
    lwc1    $f10, 0x023C(s0)           # 0000023C
    lui     $at, %hi(var_808C9C98)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9C98)($at)
    mul.s   $f18, $f10, $f16
    lwc1    $f12, 0x0230(s0)           # 00000230
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    jal     func_800A4650
    swc1    $f8, 0x0058(s0)            # 00000058
    lbu     v0, 0x0222(s0)             # 00000222
    lwc1    $f2, 0x0058($sp)
    mov.s   $f14, $f0
    bnel    v0, $zero, lbl_808C72E8
    mtc1    $zero, $f18                # $f18 = 0.00
    mtc1    $zero, $f10                # $f10 = 0.00
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t7, v0, 0x0001             # t7 = 00000001
    c.le.s  $f10, $f2
    nop
    bc1fl   lbl_808C72B0
    neg.s   $f12, $f2
    beq     $zero, $zero, lbl_808C72B0
    mov.s   $f12, $f2
    neg.s   $f12, $f2
lbl_808C72B0:
    c.le.s  $f16, $f0
    nop
    bc1fl   lbl_808C72CC
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_808C72CC
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_808C72CC:
    c.lt.s  $f12, $f2
    nop
    bc1fl   lbl_808C734C
    lui     $at, 0x4120                # $at = 41200000
    beq     $zero, $zero, lbl_808C7348
    sb      t7, 0x0222(s0)             # 00000222
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_808C72E8:
    mtc1    $zero, $f4                 # $f4 = 0.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f18, $f2
    addiu   a1, $zero, 0x3974          # a1 = 00003974
    bc1fl   lbl_808C730C
    neg.s   $f12, $f2
    beq     $zero, $zero, lbl_808C730C
    mov.s   $f12, $f2
    neg.s   $f12, $f2
lbl_808C730C:
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_808C7328
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_808C7328
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_808C7328:
    c.lt.s  $f2, $f12
    nop
    bc1fl   lbl_808C734C
    lui     $at, 0x4120                # $at = 41200000
    jal     func_80022FD0
    swc1    $f14, 0x005C($sp)
    lwc1    $f14, 0x005C($sp)
    sb      $zero, 0x0222(s0)          # 00000222
lbl_808C7348:
    lui     $at, 0x4120                # $at = 41200000
lbl_808C734C:
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f8, 0x0234(s0)            # 00000234
    lwc1    $f16, 0x023C(s0)           # 0000023C
    mtc1    $zero, $f4                 # $f4 = 0.00
    mul.s   $f10, $f6, $f8
    nop
    mul.s   $f18, $f16, $f10
    nop
    mul.s   $f14, $f14, $f18
    c.le.s  $f4, $f14
    nop
    bc1f    lbl_808C7388
    nop
    beq     $zero, $zero, lbl_808C7390
    swc1    $f14, 0x0068(s0)           # 00000068
lbl_808C7388:
    neg.s   $f6, $f14
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_808C7390:
    lbu     t8, 0x0211(s0)             # 00000211
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t8, $at, lbl_808C73E8
    lw      t3, 0x007C($sp)
    jal     func_800A45FC
    lwc1    $f12, 0x0230(s0)           # 00000230
    mtc1    $zero, $f8                 # $f8 = 0.00
    lui     $at, 0x42AA                # $at = 42AA0000
    mtc1    $at, $f16                  # $f16 = 85.00
    c.le.s  $f8, $f0
    nop
    bc1fl   lbl_808C73D0
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_808C73D0
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_808C73D0:
    mul.s   $f10, $f2, $f16
    trunc.w.s $f18, $f10
    mfc1    t2, $f18
    nop
    sb      t2, 0x021D(s0)             # 0000021D
    lw      t3, 0x007C($sp)
lbl_808C73E8:
    lui     $at, 0x0001                # $at = 00010000
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t4, t3, $at
    sw      t4, 0x003C($sp)
    addu    t6, t6, t3
    lw      t6, 0x1DE4(t6)             # 00011DE4
    lh      t5, 0x001C(s0)             # 0000001C
    andi    t7, t6, 0x0003             # t7 = 00000000
    bnel    t5, t7, lbl_808C7460
    lh      t1, 0x0212(s0)             # 00000212
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    addiu   a0, t3, 0x07C0             # a0 = 000007C0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    c.eq.s  $f4, $f6
    addiu   a2, s0, 0x0254             # a2 = 00000254
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    addiu   t8, $sp, 0x0074            # t8 = FFFFFFFC
    bc1t    lbl_808C745C
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sw      t0, 0x0020($sp)
    sw      t8, 0x0010($sp)
    sw      t9, 0x0014($sp)
    sw      $zero, 0x0018($sp)
    jal     func_80030B2C
    sw      $zero, 0x001C($sp)
    bne     v0, $zero, lbl_808C7468
    sw      v0, 0x0064($sp)
lbl_808C745C:
    lh      t1, 0x0212(s0)             # 00000212
lbl_808C7460:
    bnel    t1, $zero, lbl_808C7714
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808C7468:
    lw      t2, 0x0074($sp)
    lw      t4, 0x0074($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    beq     t2, $zero, lbl_808C74F8
    sll     t6, t4,  4
    srl     t5, t6, 28
    sll     t7, t5,  2
    addu    t3, t3, t7
    lui     $at, 0x00FF                # $at = 00FF0000
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, t4, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t9, t3, t8
    addu    t0, t9, $at
    sw      t0, 0x0074($sp)
    lui     t1, 0x8000                 # t1 = 80000000
    lui     t2, 0x8000                 # t2 = 80000000
    addu    t2, t2, t9
    addu    t1, t1, t9
    lh      t1, 0x0008(t1)             # 80000008
    lh      t2, 0x000C(t2)             # 8000000C
    mtc1    t1, $f8                    # $f8 = 0.00
    mtc1    t2, $f16                   # $f16 = 0.00
    cvt.s.w $f12, $f8
    jal     func_800CD76C
    cvt.s.w $f14, $f16
    lui     $at, %hi(var_808C9C9C)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9C9C)($at)
    mul.s   $f18, $f0, $f10
    trunc.w.s $f4, $f18
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    beq     $zero, $zero, lbl_808C750C
    sra     v1, v1, 16
lbl_808C74F8:
    lh      v1, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    v1, v1, $at
    sll     v1, v1, 16
    sra     v1, v1, 16
lbl_808C750C:
    lh      t5, 0x0226(s0)             # 00000226
    lw      a0, 0x007C($sp)
    lw      t7, 0x0064($sp)
    bne     v1, t5, lbl_808C7524
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    bne     t7, $zero, lbl_808C7914
lbl_808C7524:
    addiu   a1, s0, 0x0260             # a1 = 00000260
    addiu   t4, $sp, 0x0074            # t4 = FFFFFFFC
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sw      t8, 0x0020($sp)
    sw      t3, 0x0014($sp)
    sw      t4, 0x0010($sp)
    sw      a1, 0x0038($sp)
    addiu   a2, s0, 0x0278             # a2 = 00000278
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sh      v1, 0x0062($sp)
    jal     func_80030B2C
    sw      a0, 0x0040($sp)
    lh      v1, 0x0062($sp)
    lw      a0, 0x0040($sp)
    beq     v0, $zero, lbl_808C757C
    lw      a1, 0x0038($sp)
    lw      t0, 0x0064($sp)
    ori     t1, t0, 0x0002             # t1 = 00000002
    sw      t1, 0x0064($sp)
lbl_808C757C:
    addiu   t9, $sp, 0x0074            # t9 = FFFFFFFC
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sw      t6, 0x0020($sp)
    sw      t2, 0x0014($sp)
    sw      t9, 0x0010($sp)
    addiu   a2, s0, 0x026C             # a2 = 0000026C
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80030B2C
    sh      v1, 0x0062($sp)
    beq     v0, $zero, lbl_808C75C0
    lh      v1, 0x0062($sp)
    lw      t5, 0x0064($sp)
    ori     t7, t5, 0x0004             # t7 = 00000004
    sw      t7, 0x0064($sp)
lbl_808C75C0:
    lw      t4, 0x0064($sp)
    sltiu   $at, t4, 0x0008
    beq     $at, $zero, lbl_808C76D0
    sll     t4, t4,  2
    lui     $at, %hi(var_808C9CA0)     # $at = 808D0000
    addu    $at, $at, t4
    lw      t4, %lo(var_808C9CA0)($at)
    jr      t4
    nop
var_808C75E4:
    lh      t3, 0x0226(s0)             # 00000226
    lh      t8, 0x0228(s0)             # 00000228
    addu    t0, t3, t8
    sh      t0, 0x0226(s0)             # 00000226
var_808C75F4:
    lbu     t1, 0x0211(s0)             # 00000211
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lw      t9, 0x003C($sp)
    bnel    t1, $at, lbl_808C7634
    lh      t4, 0x008A(s0)             # 0000008A
    lw      t2, 0x1DE4(t9)             # 00001DE4
    addiu   t5, $zero, 0x4000          # t5 = 00004000
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    andi    t6, t2, 0x0002             # t6 = 00000000
    beq     t6, $zero, lbl_808C7628
    nop
    beq     $zero, $zero, lbl_808C76D0
    sh      t5, 0x0228(s0)             # 00000228
lbl_808C7628:
    beq     $zero, $zero, lbl_808C76D0
    sh      t7, 0x0228(s0)             # 00000228
    lh      t4, 0x008A(s0)             # 0000008A
lbl_808C7634:
    lh      t3, 0x00B6(s0)             # 000000B6
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t9, $zero, 0x4000          # t9 = 00004000
    subu    t8, t4, t3
    sll     t0, t8, 16
    sra     t1, t0, 16
    mtc1    t1, $f6                    # $f6 = 0.00
    addiu   t2, $zero, 0xC000          # t2 = FFFFC000
    cvt.s.w $f8, $f6
    c.le.s  $f16, $f8
    nop
    bc1fl   lbl_808C7674
    sh      t2, 0x0228(s0)             # 00000228
    beq     $zero, $zero, lbl_808C7674
    sh      t9, 0x0228(s0)             # 00000228
    sh      t2, 0x0228(s0)             # 00000228
lbl_808C7674:
    lbu     t6, 0x0211(s0)             # 00000211
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t6, $at, lbl_808C76D4
    lw      t5, 0x0064($sp)
    lh      t5, 0x0228(s0)             # 00000228
    subu    t7, $zero, t5
    beq     $zero, $zero, lbl_808C76D0
    sh      t7, 0x0228(s0)             # 00000228
var_808C7694:
    lh      t4, 0x0226(s0)             # 00000226
    lh      t3, 0x0228(s0)             # 00000228
    addu    t8, t4, t3
    sh      t8, 0x0226(s0)             # 00000226
var_808C76A4:
    addiu   t0, $zero, 0x4000          # t0 = 00004000
    beq     $zero, $zero, lbl_808C76D0
    sh      t0, 0x0228(s0)             # 00000228
var_808C76B0:
    lh      t1, 0x0226(s0)             # 00000226
    lh      t9, 0x0228(s0)             # 00000228
    addu    t2, t1, t9
    sh      t2, 0x0226(s0)             # 00000226
var_808C76C0:
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    beq     $zero, $zero, lbl_808C76D0
    sh      t6, 0x0228(s0)             # 00000228
var_808C76CC:
    sh      $zero, 0x0228(s0)          # 00000228
lbl_808C76D0:
    lw      t5, 0x0064($sp)
lbl_808C76D4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     t5, $at, lbl_808C76E4
    nop
    sh      v1, 0x0226(s0)             # 00000226
lbl_808C76E4:
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    mtc1    $at, $f4                   # $f4 = 200.00
    mul.s   $f18, $f0, $f10
    add.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    t4, $f8
    beq     $zero, $zero, lbl_808C7914
    sh      t4, 0x0212(s0)             # 00000212
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808C7714:
    lwc1    $f10, 0x0068(s0)           # 00000068
    c.eq.s  $f16, $f10
    nop
    bc1tl   lbl_808C7918
    lh      t0, 0x0212(s0)             # 00000212
    lhu     t3, 0x0088(s0)             # 00000088
    andi    t8, t3, 0x0008             # t8 = 00000000
    beql    t8, $zero, lbl_808C7918
    lh      t0, 0x0212(s0)             # 00000212
    lh      v1, 0x007E(s0)             # 0000007E
    lh      t0, 0x0226(s0)             # 00000226
    lbu     v0, 0x0211(s0)             # 00000211
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    beq     v1, t0, lbl_808C780C
    addiu   $at, $zero, 0x0003         # $at = 00000003
    sw      t1, 0x0064($sp)
    bne     v0, $at, lbl_808C77BC
    sh      v1, 0x0226(s0)             # 00000226
    lw      t9, 0x003C($sp)
    addiu   t5, $zero, 0x4000          # t5 = 00004000
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    lw      t2, 0x1DE4(t9)             # 00001DE4
    andi    t6, t2, 0x0020             # t6 = 00000000
    beql    t6, $zero, lbl_808C7784
    sh      t7, 0x0228(s0)             # 00000228
    beq     $zero, $zero, lbl_808C7784
    sh      t5, 0x0228(s0)             # 00000228
    sh      t7, 0x0228(s0)             # 00000228
lbl_808C7784:
    lhu     t4, 0x0088(s0)             # 00000088
    andi    t3, t4, 0xFFF7             # t3 = 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sh      t3, 0x0088(s0)             # 00000088
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f18                  # $f18 = 20.00
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f6                   # $f6 = 160.00
    mul.s   $f4, $f0, $f18
    add.s   $f8, $f4, $f6
    trunc.w.s $f16, $f8
    mfc1    t0, $f16
    beq     $zero, $zero, lbl_808C7914
    sh      t0, 0x0212(s0)             # 00000212
lbl_808C77BC:
    lh      t1, 0x008A(s0)             # 0000008A
    lh      t9, 0x0226(s0)             # 00000226
    addiu   t7, $zero, 0x4000          # t7 = 00004000
    addiu   t4, $zero, 0xC000          # t4 = FFFFC000
    subu    t2, t1, t9
    sll     t6, t2, 16
    sra     t5, t6, 16
    bltzl   t5, lbl_808C77EC
    sh      t4, 0x0228(s0)             # 00000228
    beq     $zero, $zero, lbl_808C77EC
    sh      t7, 0x0228(s0)             # 00000228
    sh      t4, 0x0228(s0)             # 00000228
lbl_808C77EC:
    lbu     t3, 0x0211(s0)             # 00000211
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bnel    t3, $at, lbl_808C7918
    lh      t0, 0x0212(s0)             # 00000212
    lh      t8, 0x0228(s0)             # 00000228
    subu    t0, $zero, t8
    beq     $zero, $zero, lbl_808C7914
    sh      t0, 0x0228(s0)             # 00000228
lbl_808C780C:
    bne     v0, $zero, lbl_808C7914
    lw      a0, 0x007C($sp)
    lw      a2, 0x0054($sp)
    addiu   t1, $sp, 0x0074            # t1 = FFFFFFFC
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0020($sp)
    sw      t9, 0x0014($sp)
    sw      t1, 0x0010($sp)
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a3, $sp, 0x0068            # a3 = FFFFFFF0
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    jal     func_80030B2C
    addiu   a2, a2, 0x0024             # a2 = 00000024
    beq     v0, $zero, lbl_808C7914
    sw      v0, 0x0064($sp)
    lw      t6, 0x0074($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t5, t6,  4
    srl     t7, t5, 28
    sll     t4, t7,  2
    addu    t3, t3, t4
    lw      t3, 0x0C38(t3)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    and     t8, t6, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t0, t3, t8
    addu    t1, t0, $at
    sw      t1, 0x0074($sp)
    lui     t9, 0x8000                 # t9 = 80000000
    lui     t2, 0x8000                 # t2 = 80000000
    addu    t2, t2, t0
    addu    t9, t9, t0
    lh      t9, 0x0008(t9)             # 80000008
    lh      t2, 0x000C(t2)             # 8000000C
    mtc1    t9, $f10                   # $f10 = 0.00
    mtc1    t2, $f18                   # $f18 = 0.00
    cvt.s.w $f12, $f10
    jal     func_800CD76C
    cvt.s.w $f14, $f18
    lui     $at, %hi(var_808C9CC0)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9CC0)($at)
    lh      t7, 0x0226(s0)             # 00000226
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    beql    v0, t7, lbl_808C7918
    lh      t0, 0x0212(s0)             # 00000212
    lh      t4, 0x008A(s0)             # 0000008A
    addiu   t1, $zero, 0x4000          # t1 = 00004000
    addiu   t9, $zero, 0xC000          # t9 = FFFFC000
    subu    t6, t4, v0
    sll     t3, t6, 16
    sra     t8, t3, 16
    bltzl   t8, lbl_808C7910
    sh      t9, 0x0228(s0)             # 00000228
    beq     $zero, $zero, lbl_808C7910
    sh      t1, 0x0228(s0)             # 00000228
    sh      t9, 0x0228(s0)             # 00000228
lbl_808C7910:
    sh      v0, 0x0226(s0)             # 00000226
lbl_808C7914:
    lh      t0, 0x0212(s0)             # 00000212
lbl_808C7918:
    lh      v0, 0x0214(s0)             # 00000214
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t2, t0, 0xFFFF             # t2 = FFFFFFFF
    beq     v0, $zero, lbl_808C7934
    sh      t2, 0x0212(s0)             # 00000212
    addiu   t5, v0, 0xFFFF             # t5 = FFFFFFFF
    sh      t5, 0x0214(s0)             # 00000214
lbl_808C7934:
    lh      t7, 0x0224(s0)             # 00000224
    bnel    t7, $zero, lbl_808C798C
    lbu     v1, 0x0211(s0)             # 00000211
    lh      t4, 0x0226(s0)             # 00000226
    lh      t6, 0x0228(s0)             # 00000228
    lw      a1, 0x007C($sp)
    lui     a2, 0x4248                 # a2 = 42480000
    addu    a3, t4, t6
    sll     a3, a3, 16
    jal     func_80026850
    sra     a3, a3, 16
    bnel    v0, $zero, lbl_808C798C
    lbu     v1, 0x0211(s0)             # 00000211
    lh      t3, 0x0228(s0)             # 00000228
    addiu   $at, $zero, 0x4000         # $at = 00004000
    addiu   t8, $zero, 0x4000          # t8 = 00004000
    beq     t3, $at, lbl_808C7984
    addiu   t1, $zero, 0xC000          # t1 = FFFFC000
    beq     $zero, $zero, lbl_808C7988
    sh      t8, 0x0228(s0)             # 00000228
lbl_808C7984:
    sh      t1, 0x0228(s0)             # 00000228
lbl_808C7988:
    lbu     v1, 0x0211(s0)             # 00000211
lbl_808C798C:
    lui     a1, 0x3F19                 # a1 = 3F190000
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    beq     v1, $zero, lbl_808C7AAC
    addiu   a0, s0, 0x0238             # a0 = 00000238
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808C7C3C
    lw      t4, 0x0064($sp)
    addiu   $at, $zero, 0x0003         # $at = 00000003
    bne     v1, $at, lbl_808C7E44
    addiu   a0, s0, 0x0238             # a0 = 00000238
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     a1, 0x3F19                 # a1 = 3F190000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f16, 0x0010($sp)
    lh      t9, 0x0214(s0)             # 00000214
    lui     $at, 0x4348                # $at = 43480000
    bnel    t9, $zero, lbl_808C7A60
    lui     $at, 0x447A                # $at = 447A0000
    lwc1    $f10, 0x0090(s0)           # 00000090
    mtc1    $at, $f18                  # $f18 = 1000.00
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f10, $f18
    nop
    bc1fl   lbl_808C7A60
    lui     $at, 0x447A                # $at = 447A0000
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 1000.00
    or      a0, s0, $zero              # a0 = 00000000
    c.le.s  $f4, $f0
    nop
    bc1fl   lbl_808C7A2C
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_808C7A2C
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_808C7A2C:
    c.lt.s  $f2, $f6
    nop
    bc1fl   lbl_808C7A60
    lui     $at, 0x447A                # $at = 447A0000
    jal     func_80021A28
    addiu   a1, $zero, 0x1C70          # a1 = 00001C70
    beql    v0, $zero, lbl_808C7A60
    lui     $at, 0x447A                # $at = 447A0000
    jal     func_808C7E5C
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C7E48
    lh      t1, 0x0032(s0)             # 00000032
    lui     $at, 0x447A                # $at = 447A0000
lbl_808C7A60:
    mtc1    $at, $f16                  # $f16 = 1000.00
    lwc1    $f8, 0x0068(s0)            # 00000068
    lh      t0, 0x0226(s0)             # 00000226
    lh      t2, 0x0228(s0)             # 00000228
    mul.s   $f10, $f8, $f16
    sw      $zero, 0x0010($sp)
    addu    a1, t0, t2
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f18, $f10
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    beq     $zero, $zero, lbl_808C7E48
    lh      t1, 0x0032(s0)             # 00000032
lbl_808C7AAC:
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    lw      t7, 0x0064($sp)
    lui     $at, 0x447A                # $at = 447A0000
    bnel    t7, $zero, lbl_808C7B88
    lwc1    $f16, 0x0068(s0)           # 00000068
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    lwc1    $f6, 0x0068(s0)            # 00000068
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    mul.s   $f16, $f6, $f8
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f10, $f16
    mfc1    a3, $f10
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lui     $at, 0x42B4                # $at = 42B40000
    mtc1    $at, $f4                   # $f4 = 90.00
    lwc1    $f18, 0x0090(s0)           # 00000090
    lui     $at, 0x4248                # $at = 42480000
    c.lt.s  $f18, $f4
    nop
    bc1fl   lbl_808C7BCC
    lh      t1, 0x0214(s0)             # 00000214
    lwc1    $f6, 0x0094(s0)            # 00000094
    mtc1    $at, $f8                   # $f8 = 50.00
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f6, $f8
    nop
    bc1fl   lbl_808C7BCC
    lh      t1, 0x0214(s0)             # 00000214
    jal     func_80021A28
    addiu   a1, $zero, 0x1554          # a1 = 00001554
    beq     v0, $zero, lbl_808C7BC8
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x428E                 # a2 = 428E0000
    ori     a2, a2, 0x7EFC             # a2 = 428E7EFC
    lw      a1, 0x007C($sp)
    jal     func_80026850
    lh      a3, 0x008A(s0)             # 0000008A
    beql    v0, $zero, lbl_808C7BCC
    lh      t1, 0x0214(s0)             # 00000214
    jal     func_808C8020
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C7BCC
    lh      t1, 0x0214(s0)             # 00000214
    lwc1    $f16, 0x0068(s0)           # 00000068
lbl_808C7B88:
    mtc1    $at, $f10                  # $f10 = 0.00
    lh      t6, 0x0226(s0)             # 00000226
    lh      t3, 0x0228(s0)             # 00000228
    mul.s   $f18, $f16, $f10
    sw      $zero, 0x0010($sp)
    addu    a1, t6, t3
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f4, $f18
    mfc1    a3, $f4
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
lbl_808C7BC8:
    lh      t1, 0x0214(s0)             # 00000214
lbl_808C7BCC:
    lui     $at, 0x4270                # $at = 42700000
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    beq     t1, $zero, lbl_808C7C28
    addiu   t7, $zero, 0x0096          # t7 = 00000096
    lwc1    $f0, 0x0094(s0)            # 00000094
    mtc1    $zero, $f6                 # $f6 = 0.00
    mtc1    $at, $f8                   # $f8 = 60.00
    lw      t9, 0x0050($sp)
    c.le.s  $f6, $f0
    nop
    bc1fl   lbl_808C7C08
    neg.s   $f2, $f0
    beq     $zero, $zero, lbl_808C7C08
    mov.s   $f2, $f0
    neg.s   $f2, $f0
lbl_808C7C08:
    c.lt.s  $f8, $f2
    nop
    bc1tl   lbl_808C7C2C
    mtc1    $zero, $f16                # $f16 = 0.00
    lw      t0, 0x066C(t9)             # 0000066C
    andi    t2, t0, 0x6000             # t2 = 00000000
    beql    t2, $zero, lbl_808C7E48
    lh      t1, 0x0032(s0)             # 00000032
lbl_808C7C28:
    mtc1    $zero, $f16                # $f16 = 0.00
lbl_808C7C2C:
    sb      t5, 0x0211(s0)             # 00000211
    sh      t7, 0x0214(s0)             # 00000214
    beq     $zero, $zero, lbl_808C7E44
    swc1    $f16, 0x0240(s0)           # 00000240
lbl_808C7C3C:
    bne     t4, $zero, lbl_808C7C54
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t6, 0x0088(s0)             # 00000088
    andi    t3, t6, 0x0008             # t3 = 00000000
    beql    t3, $zero, lbl_808C7C68
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C7C54:
    jal     func_80021A28
    addiu   a1, $zero, 0x1C70          # a1 = 00001C70
    beq     v0, $zero, lbl_808C7CD4
    lui     $at, 0x447A                # $at = 447A0000
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C7C68:
    jal     func_80021A28
    addiu   a1, $zero, 0x1C70          # a1 = 00001C70
    beql    v0, $zero, lbl_808C7C88
    lh      a1, 0x008A(s0)             # 0000008A
    lh      t8, 0x0228(s0)             # 00000228
    subu    t1, $zero, t8
    sh      t1, 0x0228(s0)             # 00000228
    lh      a1, 0x008A(s0)             # 0000008A
lbl_808C7C88:
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    lwc1    $f10, 0x0068(s0)           # 00000068
    addu    a1, a1, $at
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f18                  # $f18 = 1000.00
    sll     a1, a1, 16
    sra     a1, a1, 16
    mul.s   $f4, $f10, $f18
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f6, $f4
    mfc1    a3, $f6
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    beq     $zero, $zero, lbl_808C7D1C
    lh      v0, 0x0214(s0)             # 00000214
lbl_808C7CD4:
    lwc1    $f8, 0x0068(s0)            # 00000068
    mtc1    $at, $f16                  # $f16 = 0.00
    lh      t0, 0x0226(s0)             # 00000226
    lh      t2, 0x0228(s0)             # 00000228
    mul.s   $f10, $f8, $f16
    sw      $zero, 0x0010($sp)
    addu    a1, t0, t2
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    trunc.w.s $f18, $f10
    mfc1    a3, $f18
    nop
    sll     a3, a3, 16
    jal     func_80064508
    sra     a3, a3, 16
    lh      v0, 0x0214(s0)             # 00000214
lbl_808C7D1C:
    addiu   t7, $zero, 0x0960          # t7 = 00000960
    slti    $at, v0, 0x00C9
    beq     $at, $zero, lbl_808C7E44
    subu    t4, t7, v0
    multu   v0, t4
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x425C                # $at = 425C0000
    mtc1    $at, $f4                   # $f4 = 55.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_808C7D74
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_808C7D74
    or      v1, v0, $zero              # v1 = 00000000
lbl_808C7D74:
    lh      v0, 0x0214(s0)             # 00000214
    addiu   t1, $zero, 0x0960          # t1 = 00000960
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    subu    t9, t1, v0
    multu   v0, t9
    subu    t8, t3, v1
    sb      t8, 0x021C(s0)             # 0000021C
    mflo    a0
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x42E6                # $at = 42E60000
    mtc1    $at, $f16                  # $f16 = 115.00
    addiu   t7, $zero, 0x0960          # t7 = 00000960
    mul.s   $f10, $f0, $f16
    trunc.w.s $f18, $f10
    mfc1    v0, $f18
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_808C7DD4
    subu    v1, $zero, v0
    beq     $zero, $zero, lbl_808C7DD4
    or      v1, v0, $zero              # v1 = 00000000
lbl_808C7DD4:
    lh      t5, 0x0214(s0)             # 00000214
    addiu   t2, v1, 0x0055             # t2 = 00000055
    sb      t2, 0x021D(s0)             # 0000021D
    subu    a0, t7, t5
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x437F                # $at = 437F0000
    mtc1    $at, $f4                   # $f4 = 255.00
    nop
    mul.s   $f6, $f0, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_808C7E24
    subu    t6, $zero, v0
    beq     $zero, $zero, lbl_808C7E28
    sb      v0, 0x021E(s0)             # 0000021E
lbl_808C7E24:
    sb      t6, 0x021E(s0)             # 0000021E
lbl_808C7E28:
    lh      t3, 0x0214(s0)             # 00000214
    bnel    t3, $zero, lbl_808C7E48
    lh      t1, 0x0032(s0)             # 00000032
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    sb      t8, 0x0211(s0)             # 00000211
    swc1    $f16, 0x0240(s0)           # 00000240
lbl_808C7E44:
    lh      t1, 0x0032(s0)             # 00000032
lbl_808C7E48:
    sh      t1, 0x00B6(s0)             # 000000B6
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0078           # $sp += 0x78


func_808C7E5C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x21A0             # a1 = 060021A0
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC000                 # a2 = C0000000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x0003          # t6 = 00000003
    lui     $at, %hi(var_808C9CC4)     # $at = 808D0000
    sb      t6, 0x0210(a0)             # 00000210
    sb      $zero, 0x0211(a0)          # 00000211
    lwc1    $f4, %lo(var_808C9CC4)($at)
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t7, $zero, 0x0014          # t7 = 00000014
    addiu   t8, $zero, 0x0BB8          # t8 = 00000BB8
    addiu   a1, $zero, 0x3975          # a1 = 00003975
    sh      t7, 0x0212(a0)             # 00000212
    sh      t8, 0x0214(a0)             # 00000214
    swc1    $f4, 0x0240(a0)            # 00000240
    jal     func_80022FD0
    swc1    $f6, 0x0068(a0)            # 00000068
    lui     a1, %hi(func_808C7EDC)     # a1 = 808C0000
    lw      a0, 0x0018($sp)
    jal     func_808C6E10
    addiu   a1, a1, %lo(func_808C7EDC) # a1 = 808C7EDC
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C7EDC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beql    v0, $zero, lbl_808C7F20
    lh      t8, 0x0212(s0)             # 00000212
    lh      v0, 0x0212(s0)             # 00000212
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    blez    v0, lbl_808C7F18
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    beq     $zero, $zero, lbl_808C7F1C
    sh      t6, 0x0212(s0)             # 00000212
lbl_808C7F18:
    sh      t7, 0x0212(s0)             # 00000212
lbl_808C7F1C:
    lh      t8, 0x0212(s0)             # 00000212
lbl_808C7F20:
    slti    $at, t8, 0x0014
    bnel    $at, $zero, lbl_808C7F3C
    lh      t1, 0x0214(s0)             # 00000214
    lh      t9, 0x0214(s0)             # 00000214
    addiu   t0, t9, 0xFF06             # t0 = FFFFFF06
    sh      t0, 0x0214(s0)             # 00000214
    lh      t1, 0x0214(s0)             # 00000214
lbl_808C7F3C:
    lui     $at, %hi(var_808C9CC8)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9CC8)($at)
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9CCC)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9CCC)($at)
    lui     $at, %hi(var_808C9CD0)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9CD0)($at)
    lh      t2, 0x0214(s0)             # 00000214
    lui     $at, %hi(var_808C9CD4)     # $at = 808D0000
    mul.s   $f18, $f0, $f16
    mtc1    t2, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f4, $f10, $f18
    swc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f16, %lo(var_808C9CD4)($at)
    mul.s   $f12, $f8, $f16
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9CD8)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9CD8)($at)
    lh      t3, 0x0214(s0)             # 00000214
    lui     $at, %hi(var_808C9CDC)     # $at = 808D0000
    mul.s   $f18, $f0, $f10
    lwc1    $f4, %lo(var_808C9CDC)($at)
    mtc1    t3, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_808C9CE0)     # $at = 808D0000
    cvt.s.w $f16, $f8
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, %lo(var_808C9CE0)($at)
    mul.s   $f12, $f16, $f10
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9CE4)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9CE4)($at)
    lui     $at, %hi(var_808C9CE8)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9CE8)($at)
    lh      t4, 0x0214(s0)             # 00000214
    mul.s   $f6, $f0, $f4
    sub.s   $f8, $f18, $f6
    bne     t4, $zero, lbl_808C800C
    swc1    $f8, 0x0058(s0)            # 00000058
    jal     func_808C70D8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    sh      t5, 0x0214(s0)             # 00000214
lbl_808C800C:
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C8020:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2250             # a1 = 06002250
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x40E0                # $at = 40E00000
    mtc1    $at, $f4                   # $f4 = 7.00
    lh      v0, 0x008A(a0)             # 0000008A
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f6                   # $f6 = 11.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    addiu   a1, $zero, 0x386C          # a1 = 0000386C
    sb      t6, 0x0210(a0)             # 00000210
    sh      t7, 0x0212(a0)             # 00000212
    swc1    $f4, 0x0068(a0)            # 00000068
    sh      v0, 0x00B6(a0)             # 000000B6
    sh      v0, 0x0032(a0)             # 00000032
    jal     func_80022FD0
    swc1    $f6, 0x0060(a0)            # 00000060
    lw      a0, 0x0018($sp)
    lui     $at, 0x0100                # $at = 01000000
    lui     a1, %hi(func_808C80B4)     # a1 = 808D0000
    lw      t8, 0x0004(a0)             # 00000004
    addiu   a1, a1, %lo(func_808C80B4) # a1 = 808C80B4
    or      t9, t8, $at                # t9 = 01000000
    jal     func_808C6E10
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C80B4:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lw      t6, 0x0044($sp)
    mfc1    a1, $f0
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lw      t7, 0x1C44(t6)             # 00001C44
    swc1    $f0, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    lui     a3, 0x3F00                 # a3 = 3F000000
    jal     func_80064178
    sw      t7, 0x003C($sp)
    lh      t8, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9CEC)     # $at = 808D0000
    addiu   t9, t8, 0x00FA             # t9 = 000000FA
    sh      t9, 0x0212(s0)             # 00000212
    lh      t0, 0x0212(s0)             # 00000212
    lwc1    $f8, %lo(var_808C9CEC)($at)
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9CF0)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9CF0)($at)
    lui     $at, %hi(var_808C9CF4)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9CF4)($at)
    lh      t1, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9CF8)     # $at = 808D0000
    mul.s   $f18, $f0, $f16
    mtc1    t1, $f6                    # $f6 = 0.00
    nop
    cvt.s.w $f8, $f6
    sub.s   $f4, $f10, $f18
    swc1    $f4, 0x0050(s0)            # 00000050
    lwc1    $f16, %lo(var_808C9CF8)($at)
    mul.s   $f12, $f8, $f16
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9CFC)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9CFC)($at)
    lh      t2, 0x0212(s0)             # 00000212
    lui     $at, %hi(var_808C9D00)     # $at = 808D0000
    mul.s   $f18, $f0, $f10
    lwc1    $f4, %lo(var_808C9D00)($at)
    mtc1    t2, $f8                    # $f8 = 0.00
    lui     $at, %hi(var_808C9D04)     # $at = 808D0000
    cvt.s.w $f16, $f8
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0054(s0)            # 00000054
    lwc1    $f10, %lo(var_808C9D04)($at)
    mul.s   $f12, $f16, $f10
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9D08)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9D08)($at)
    lui     $at, %hi(var_808C9D0C)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9D0C)($at)
    lbu     v0, 0x0294(s0)             # 00000294
    addiu   $at, $zero, 0xFFFD         # $at = FFFFFFFD
    mul.s   $f6, $f0, $f4
    andi    t3, v0, 0x0002             # t3 = 00000000
    and     t4, v0, $at
    lui     $at, 0xC0C0                # $at = C0C00000
    sub.s   $f8, $f18, $f6
    beq     t3, $zero, lbl_808C8204
    swc1    $f8, 0x0058(s0)            # 00000058
    lw      a0, 0x003C($sp)
    lw      t6, 0x0288(s0)             # 00000288
    mtc1    $at, $f16                  # $f16 = -6.00
    lh      t5, 0x008A(s0)             # 0000008A
    sb      t4, 0x0294(s0)             # 00000294
    swc1    $f16, 0x0068(s0)           # 00000068
    bne     a0, t6, lbl_808C8204
    sh      t5, 0x0032(s0)             # 00000032
    andi    t8, t4, 0x0004             # t8 = 00000000
    bne     t8, $zero, lbl_808C8204
    nop
    jal     func_80022FD0
    addiu   a1, $zero, 0x083E          # a1 = 0000083E
lbl_808C8204:
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t9, 0x0088(s0)             # 00000088
    lw      a0, 0x0044($sp)
    andi    t0, t9, 0x0003             # t0 = 00000000
    beq     t0, $zero, lbl_808C82C8
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800343D4
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_808C8248
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_808C8248
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     v0, $at, lbl_808C8258
    lw      a0, 0x0044($sp)
lbl_808C8248:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C82CC
    lw      $ra, 0x0034($sp)
lbl_808C8258:
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    addiu   t1, $zero, 0x000B          # t1 = 0000000B
    sw      t1, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     a3, 0x41F0                 # a3 = 41F00000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f10, 0x0014($sp)
    lw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0xFEFF                # $at = FEFF0000
    mtc1    $zero, $f4                 # $f4 = 0.00
    ori     $at, $at, 0xFFFF           # $at = FEFFFFFF
    addiu   t2, $zero, 0x0BB8          # t2 = 00000BB8
    and     t4, t3, $at
    sh      t2, 0x0212(s0)             # 00000212
    sw      t4, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    jal     func_80022FD0
    swc1    $f4, 0x0068(s0)            # 00000068
    lui     a1, %hi(func_808C6FB4)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6FB4) # a1 = 808C6FB4
    jal     func_808C6E10
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C82C8:
    lw      $ra, 0x0034($sp)
lbl_808C82CC:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808C82DC:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2250             # a1 = 06002250
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0xBF80                 # a2 = BF800000
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $at, $f4                   # $f4 = 11.00
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    sb      t6, 0x0210(s0)             # 00000210
    sh      t7, 0x0212(s0)             # 00000212
    swc1    $f0, 0x0250(s0)            # 00000250
    swc1    $f0, 0x0068(s0)            # 00000068
    jal     func_800CDCCC              # Rand.Next() float
    swc1    $f4, 0x0060(s0)            # 00000060
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6
    addiu   t8, $zero, 0x0BB8          # t8 = 00000BB8
    sh      t8, 0x0214(s0)             # 00000214
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3976          # a1 = 00003976
    add.s   $f16, $f8, $f10
    jal     func_80022FD0
    swc1    $f16, 0x024C(s0)           # 0000024C
    lui     a1, %hi(func_808C8380)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808C8380) # a1 = 808C8380
    jal     func_808C6E10
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_808C8380:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    addiu   a1, $zero, 0x7FFF          # a1 = 00007FFF
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    mfc1    a1, $f0
    addiu   a0, s0, 0x0238             # a0 = 00000238
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f0, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t6, 0x0088(s0)             # 00000088
    lw      t8, 0x003C($sp)
    lui     t9, 0x0001                 # t9 = 00010000
    andi    t7, t6, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_808C859C
    addu    t9, t9, t8
    lw      t9, 0x1DE4(t9)             # 00011DE4
    andi    t0, t9, 0x007F             # t0 = 00000000
    bnel    t0, $zero, lbl_808C8424
    lwc1    $f16, 0x0248(s0)           # 00000248
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    lui     $at, %hi(var_808C9D10)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D10)($at)
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x024C(s0)           # 0000024C
    lwc1    $f16, 0x0248(s0)           # 00000248
lbl_808C8424:
    lwc1    $f18, 0x024C(s0)           # 0000024C
    mtc1    $zero, $f6                 # $f6 = 0.00
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    add.s   $f4, $f16, $f18
    sb      t1, 0x0211(s0)             # 00000211
    lui     a1, 0x3D99                 # a1 = 3D990000
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    swc1    $f4, 0x0248(s0)            # 00000248
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    addiu   a0, s0, 0x0250             # a0 = 00000250
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lhu     t2, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t3, t2, 0x0002             # t3 = 00000000
    beq     t3, $zero, lbl_808C84A8
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f8                   # $f8 = 4.00
    addiu   t4, $zero, 0x000B          # t4 = 0000000B
    sw      t4, 0x0010($sp)
    lui     a3, 0x41F0                 # a3 = 41F00000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f8, 0x0014($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
lbl_808C84A8:
    lh      v0, 0x0214(s0)             # 00000214
    beq     v0, $zero, lbl_808C8574
    addiu   t5, v0, 0xFF06             # t5 = FFFFFF06
    sh      t5, 0x0214(s0)             # 00000214
    lh      t6, 0x0214(s0)             # 00000214
    lui     $at, %hi(var_808C9D14)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9D14)($at)
    mtc1    t6, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    mul.s   $f12, $f16, $f18
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9D18)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9D18)($at)
    lh      t7, 0x0214(s0)             # 00000214
    lui     $at, %hi(var_808C9D1C)     # $at = 808D0000
    mul.s   $f6, $f0, $f4
    lwc1    $f8, %lo(var_808C9D1C)($at)
    mtc1    t7, $f16                   # $f16 = 0.00
    lui     $at, %hi(var_808C9D20)     # $at = 808D0000
    cvt.s.w $f18, $f16
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0050(s0)           # 00000050
    lwc1    $f4, %lo(var_808C9D20)($at)
    mul.s   $f12, $f18, $f4
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9D24)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D24)($at)
    lui     $at, %hi(var_808C9D28)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D28)($at)
    lh      t8, 0x0214(s0)             # 00000214
    lui     $at, %hi(var_808C9D2C)     # $at = 808D0000
    mul.s   $f10, $f0, $f8
    mtc1    t8, $f18                   # $f18 = 0.00
    nop
    cvt.s.w $f4, $f18
    sub.s   $f16, $f6, $f10
    swc1    $f16, 0x0054(s0)           # 00000054
    lwc1    $f8, %lo(var_808C9D2C)($at)
    mul.s   $f12, $f4, $f8
    jal     func_800A45FC
    nop
    lui     $at, %hi(var_808C9D30)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D30)($at)
    lui     $at, %hi(var_808C9D34)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9D34)($at)
    mul.s   $f10, $f0, $f6
    add.s   $f18, $f10, $f16
    swc1    $f18, 0x0058(s0)           # 00000058
lbl_808C8574:
    lh      t9, 0x0212(s0)             # 00000212
    addiu   t0, t9, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0212(s0)             # 00000212
    lh      t1, 0x0212(s0)             # 00000212
    bnel    t1, $zero, lbl_808C8634
    lw      $ra, 0x0034($sp)
    jal     func_808C8644
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C8634
    lw      $ra, 0x0034($sp)
lbl_808C859C:
    lbu     t2, 0x021C(s0)             # 0000021C
    lbu     t4, 0x021D(s0)             # 0000021D
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    addiu   t3, t2, 0xFFF8             # t3 = FFFFFFF8
    andi    t6, t3, 0x00FF             # t6 = 000000F8
    slti    $at, t6, 0x00C8
    addiu   t5, t4, 0x0020             # t5 = 00000020
    sb      t3, 0x021C(s0)             # 0000021C
    beq     $at, $zero, lbl_808C85C8
    sb      t5, 0x021D(s0)             # 0000021D
    sb      t7, 0x021C(s0)             # 0000021C
lbl_808C85C8:
    lbu     t8, 0x021D(s0)             # 0000021D
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    slti    $at, t8, 0x00C9
    bnel    $at, $zero, lbl_808C85E8
    lbu     v0, 0x021E(s0)             # 0000021E
    sb      t9, 0x021D(s0)             # 0000021D
    lbu     v0, 0x021E(s0)             # 0000021E
lbl_808C85E8:
    slti    $at, v0, 0x00EC
    bne     $at, $zero, lbl_808C85FC
    addiu   t1, v0, 0x0028             # t1 = 00000028
    beq     $zero, $zero, lbl_808C8600
    sb      t0, 0x021E(s0)             # 0000021E
lbl_808C85FC:
    sb      t1, 0x021E(s0)             # 0000021E
lbl_808C8600:
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lwc1    $f0, 0x00BC(s0)            # 000000BC
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_808C8634
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f8                   # $f8 = 200.00
    nop
    add.s   $f6, $f0, $f8
    swc1    $f6, 0x00BC(s0)            # 000000BC
    lw      $ra, 0x0034($sp)
lbl_808C8634:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808C8644:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x2250             # a1 = 06002250
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xBF80                 # a2 = BF800000
    jal     func_8008D328
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4130                # $at = 41300000
    mtc1    $zero, $f4                 # $f4 = 0.00
    mtc1    $at, $f6                   # $f6 = 11.00
    addiu   t6, $zero, 0x0006          # t6 = 00000006
    addiu   t7, $zero, 0x03E8          # t7 = 000003E8
    addiu   t8, $zero, 0x0003          # t8 = 00000003
    addiu   a1, $zero, 0x3976          # a1 = 00003976
    sb      t6, 0x0210(a0)             # 00000210
    sh      t7, 0x0212(a0)             # 00000212
    sb      t8, 0x0211(a0)             # 00000211
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_80022FD0
    swc1    $f6, 0x0060(a0)            # 00000060
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_808C86CC)     # a1 = 808D0000
    addiu   a1, a1, %lo(func_808C86CC) # a1 = 808C86CC
    lhu     t9, 0x0088(a0)             # 00000088
    andi    t0, t9, 0xFFFE             # t0 = 00000000
    jal     func_808C6E10
    sh      t0, 0x0088(a0)             # 00000088
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C86CC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    addiu   a0, s0, 0x00B8             # a0 = 000000B8
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    addiu   a3, $zero, 0x0FA0          # a3 = 00000FA0
    jal     func_80064508
    sw      $zero, 0x0010($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     a1, 0x3F19                 # a1 = 3F190000
    lui     a3, 0x3D4C                 # a3 = 3D4C0000
    ori     a3, a3, 0xCCCD             # a3 = 3D4CCCCD
    ori     a1, a1, 0x999A             # a1 = 3F19999A
    addiu   a0, s0, 0x0238             # a0 = 00000238
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f4, 0x0010($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lhu     t6, 0x0088(s0)             # 00000088
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    andi    t7, t6, 0x0003             # t7 = 00000000
    beq     t7, $zero, lbl_808C8790
    addiu   a2, s0, 0x0024             # a2 = 00000024
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    sw      t8, 0x0010($sp)
    lui     a3, 0x41F0                 # a3 = 41F00000
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    jal     func_800260E8
    swc1    $f6, 0x0014($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    addiu   t9, $zero, 0x0BB8          # t9 = 00000BB8
    sh      t9, 0x0212(s0)             # 00000212
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    jal     func_80022FD0
    swc1    $f8, 0x0240(s0)            # 00000240
    lui     a1, %hi(func_808C6FB4)     # a1 = 808C0000
    addiu   a1, a1, %lo(func_808C6FB4) # a1 = 808C6FB4
    jal     func_808C6E10
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C8790:
    lbu     v0, 0x021C(s0)             # 0000021C
    mtc1    $zero, $f10                # $f10 = 0.00
    addiu   t1, $zero, 0x00FF          # t1 = 000000FF
    slti    $at, v0, 0x00F7
    beq     $at, $zero, lbl_808C87B0
    addiu   t0, v0, 0x0008             # t0 = 00000008
    beq     $zero, $zero, lbl_808C87B4
    sb      t0, 0x021C(s0)             # 0000021C
lbl_808C87B0:
    sb      t1, 0x021C(s0)             # 0000021C
lbl_808C87B4:
    lbu     v0, 0x021D(s0)             # 0000021D
    slti    $at, v0, 0x0020
    beq     $at, $zero, lbl_808C87CC
    addiu   t2, v0, 0xFFE0             # t2 = FFFFFFE0
    beq     $zero, $zero, lbl_808C87D0
    sb      $zero, 0x021D(s0)          # 0000021D
lbl_808C87CC:
    sb      t2, 0x021D(s0)             # 0000021D
lbl_808C87D0:
    lbu     v0, 0x021E(s0)             # 0000021E
    slti    $at, v0, 0x0028
    beq     $at, $zero, lbl_808C87E8
    addiu   t3, v0, 0xFFD8             # t3 = FFFFFFD8
    beq     $zero, $zero, lbl_808C87EC
    sb      $zero, 0x021E(s0)          # 0000021E
lbl_808C87E8:
    sb      t3, 0x021E(s0)             # 0000021E
lbl_808C87EC:
    lwc1    $f0, 0x00BC(s0)            # 000000BC
    lui     $at, 0x4348                # $at = 43480000
    c.lt.s  $f10, $f0
    nop
    bc1fl   lbl_808C8818
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f16                  # $f16 = 200.00
    nop
    sub.s   $f18, $f0, $f16
    swc1    $f18, 0x00BC(s0)           # 000000BC
    lw      $ra, 0x0034($sp)
lbl_808C8818:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_808C8828:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0004(a0)             # 00000004
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    and     t8, t7, $at
    sb      $zero, 0x0210(a0)          # 00000210
    sh      t6, 0x0212(a0)             # 00000212
    sw      t8, 0x0004(a0)             # 00000004
    swc1    $f4, 0x0068(a0)            # 00000068
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3978          # a1 = 00003978
    lui     a1, %hi(func_808C8880)     # a1 = 808D0000
    lw      a0, 0x0018($sp)
    jal     func_808C6E10
    addiu   a1, a1, %lo(func_808C8880) # a1 = 808C8880
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C8880:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lbu     t6, 0x0220(a0)             # 00000220
    lui     $at, %hi(var_808C9D38)     # $at = 808D0000
    beql    t6, $zero, lbl_808C88C8
    lh      t0, 0x0212(a0)             # 00000212
    lwc1    $f0, %lo(var_808C9D38)($at)
    lwc1    $f4, 0x0050(a0)            # 00000050
    lwc1    $f8, 0x0054(a0)            # 00000054
    lwc1    $f16, 0x0058(a0)           # 00000058
    add.s   $f6, $f4, $f0
    sub.s   $f10, $f8, $f0
    swc1    $f6, 0x0050(a0)            # 00000050
    add.s   $f18, $f16, $f0
    swc1    $f10, 0x0054(a0)           # 00000054
    swc1    $f18, 0x0058(a0)           # 00000058
    lh      t0, 0x0212(a0)             # 00000212
lbl_808C88C8:
    lbu     t7, 0x021F(a0)             # 0000021F
    addiu   t1, t0, 0xFFFF             # t1 = FFFFFFFF
    sh      t1, 0x0212(a0)             # 00000212
    lh      t2, 0x0212(a0)             # 00000212
    addiu   t9, t7, 0xFFFA             # t9 = FFFFFFFA
    sb      t9, 0x021F(a0)             # 0000021F
    bgtz    t2, lbl_808C88F0
    sb      t9, 0x00C8(a0)             # 000000C8
    jal     func_80020EB4
    nop
lbl_808C88F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C8900:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      t6, 0x0210(a0)             # 00000210
    swc1    $f4, 0x0068(a0)            # 00000068
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0018($sp)
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f6                   # $f6 = 0.25
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    mul.s   $f8, $f0, $f6
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f18                # $f18 = 0.00
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    lbu     t7, 0x0221(a0)             # 00000221
    addiu   t8, $zero, 0x0050          # t8 = 00000050
    addiu   t2, $zero, 0x0050          # t2 = 00000050
    add.s   $f16, $f8, $f10
    lui     a1, %hi(func_808C899C)     # a1 = 808D0000
    swc1    $f18, 0x0250(a0)           # 00000250
    bne     t7, $at, lbl_808C8964
    swc1    $f16, 0x024C(a0)           # 0000024C
    sb      t8, 0x022B(a0)             # 0000022B
lbl_808C8964:
    lhu     t9, 0x0112(a0)             # 00000112
    addiu   t1, $zero, 0x0019          # t1 = 00000019
    andi    t0, t9, 0x4000             # t0 = 00000000
    beql    t0, $zero, lbl_808C8984
    sh      t2, 0x0212(a0)             # 00000212
    beq     $zero, $zero, lbl_808C8984
    sh      t1, 0x0212(a0)             # 00000212
    sh      t2, 0x0212(a0)             # 00000212
lbl_808C8984:
    jal     func_808C6E10
    addiu   a1, a1, %lo(func_808C899C) # a1 = 808C899C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C899C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    lbu     t6, 0x021C(s0)             # 0000021C
    lbu     t8, 0x021D(s0)             # 0000021D
    lbu     t0, 0x021E(s0)             # 0000021E
    addiu   t7, t6, 0xFFFF             # t7 = FFFFFFFF
    andi    t2, t7, 0x00FF             # t2 = 000000FF
    slti    $at, t2, 0x00C8
    addiu   t9, t8, 0x0004             # t9 = 00000004
    addiu   t1, t0, 0x0005             # t1 = 00000005
    sb      t7, 0x021C(s0)             # 0000021C
    sb      t9, 0x021D(s0)             # 0000021D
    beq     $at, $zero, lbl_808C89E4
    sb      t1, 0x021E(s0)             # 0000021E
    addiu   t3, $zero, 0x00C8          # t3 = 000000C8
    sb      t3, 0x021C(s0)             # 0000021C
lbl_808C89E4:
    lbu     t4, 0x021D(s0)             # 0000021D
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    addiu   t7, $zero, 0x00E6          # t7 = 000000E6
    slti    $at, t4, 0x00C9
    bne     $at, $zero, lbl_808C8A00
    lui     t0, 0x0001                 # t0 = 00010000
    sb      t5, 0x021D(s0)             # 0000021D
lbl_808C8A00:
    lbu     t6, 0x021E(s0)             # 0000021E
    addu    t0, t0, a1
    slti    $at, t6, 0x00E7
    bnel    $at, $zero, lbl_808C8A1C
    lhu     t8, 0x0112(s0)             # 00000112
    sb      t7, 0x021E(s0)             # 0000021E
    lhu     t8, 0x0112(s0)             # 00000112
lbl_808C8A1C:
    andi    t9, t8, 0x4000             # t9 = 00000000
    beql    t9, $zero, lbl_808C8A94
    lh      t2, 0x0212(s0)             # 00000212
    lw      t0, 0x1DE4(t0)             # 00011DE4
    andi    t1, t0, 0x007F             # t1 = 00000000
    bnel    t1, $zero, lbl_808C8A60
    lwc1    $f16, 0x0248(s0)           # 00000248
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x3E80                # $at = 3E800000
    mtc1    $at, $f4                   # $f4 = 0.25
    lui     $at, 0x3F00                # $at = 3F000000
    mtc1    $at, $f8                   # $f8 = 0.50
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x024C(s0)           # 0000024C
    lwc1    $f16, 0x0248(s0)           # 00000248
lbl_808C8A60:
    lwc1    $f18, 0x024C(s0)           # 0000024C
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x3D99                 # a1 = 3D990000
    add.s   $f4, $f16, $f18
    lui     a3, 0x3BA3                 # a3 = 3BA30000
    ori     a3, a3, 0xD70A             # a3 = 3BA3D70A
    ori     a1, a1, 0x999A             # a1 = 3D99999A
    swc1    $f4, 0x0248(s0)            # 00000248
    addiu   a0, s0, 0x0250             # a0 = 00000250
    lui     a2, 0x3F80                 # a2 = 3F800000
    jal     func_80064178
    swc1    $f6, 0x0010($sp)
    lh      t2, 0x0212(s0)             # 00000212
lbl_808C8A94:
    addiu   t3, t2, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0212(s0)             # 00000212
    lh      t4, 0x0212(s0)             # 00000212
    bnel    t4, $zero, lbl_808C8AF0
    lw      $ra, 0x0024($sp)
    jal     func_808C70D8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x0258          # t8 = 00000258
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lh      t0, 0x0226(s0)             # 00000226
    sb      t6, 0x021D(s0)             # 0000021D
    sb      t6, 0x021C(s0)             # 0000021C
    sb      t7, 0x021E(s0)             # 0000021E
    sh      t8, 0x0214(s0)             # 00000214
    sb      t9, 0x0211(s0)             # 00000211
    lui     $at, %hi(var_808C9D3C)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D3C)($at)
    addiu   t1, t0, 0x0001             # t1 = 00000001
    sh      t1, 0x0226(s0)             # 00000226
    swc1    $f8, 0x0240(s0)            # 00000240
    lw      $ra, 0x0024($sp)
lbl_808C8AF0:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_808C8B00:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x0221(a0)             # 00000221
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bne     t6, $at, lbl_808C8B24
    swc1    $f4, 0x0068(a0)            # 00000068
    addiu   t7, $zero, 0x0020          # t7 = 00000020
    sb      t7, 0x022B(a0)             # 0000022B
lbl_808C8B24:
    lbu     t8, 0x0114(a0)             # 00000114
    addiu   a1, $zero, 0x389E          # a1 = 0000389E
    sb      t8, 0x022C(a0)             # 0000022C
    jal     func_80022FD0
    sw      a0, 0x0018($sp)
    lui     a1, %hi(func_808C8B58)     # a1 = 808D0000
    lw      a0, 0x0018($sp)
    jal     func_808C6E10
    addiu   a1, a1, %lo(func_808C8B58) # a1 = 808C8B58
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_808C8B58:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lbu     t6, 0x0114(s0)             # 00000114
    bnel    t6, $zero, lbl_808C8CA8
    lw      $ra, 0x0034($sp)
    lbu     t7, 0x00AF(s0)             # 000000AF
    sb      $zero, 0x022C(s0)          # 0000022C
    lw      a0, 0x0044($sp)
    beq     t7, $zero, lbl_808C8C1C
    nop
    lbu     v0, 0x0210(s0)             # 00000210
    addiu   v1, $zero, 0x0005          # v1 = 00000005
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, v0, lbl_808C8BF0
    nop
    beq     v0, $at, lbl_808C8BF0
    nop
    jal     func_808C70D8
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t9, $zero, 0x00C8          # t9 = 000000C8
    lh      t3, 0x0226(s0)             # 00000226
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0258          # t1 = 00000258
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sb      t9, 0x021D(s0)             # 0000021D
    sb      t9, 0x021C(s0)             # 0000021C
    sb      t0, 0x021E(s0)             # 0000021E
    sh      t1, 0x0214(s0)             # 00000214
    sb      t2, 0x0211(s0)             # 00000211
    lui     $at, %hi(var_808C9D40)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9D40)($at)
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sh      t4, 0x0226(s0)             # 00000226
    beq     $zero, $zero, lbl_808C8CA4
    swc1    $f4, 0x0240(s0)            # 00000240
lbl_808C8BF0:
    beq     v1, v0, lbl_808C8C0C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_808C86CC)     # a1 = 808D0000
    jal     func_808C6E10
    addiu   a1, a1, %lo(func_808C86CC) # a1 = 808C86CC
    beq     $zero, $zero, lbl_808C8CA8
    lw      $ra, 0x0034($sp)
lbl_808C8C0C:
    jal     func_808C8644
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C8CA8
    lw      $ra, 0x0034($sp)
lbl_808C8C1C:
    jal     func_8002834C
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    beq     v0, $zero, lbl_808C8C84
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    sb      $zero, 0x0220(s0)          # 00000220
    lui     $at, %hi(var_808C9D44)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D44)($at)
    lwc1    $f6, 0x0054(s0)            # 00000054
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    sub.s   $f10, $f6, $f8
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t5, $zero, 0x000B          # t5 = 0000000B
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0054(s0)           # 00000054
    sw      a2, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t5, 0x0010($sp)
    lw      a0, 0x0044($sp)
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_800260E8
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_808C8C8C
    lw      a2, 0x003C($sp)
lbl_808C8C84:
    sb      t6, 0x0220(s0)             # 00000220
    addiu   a2, s0, 0x0024             # a2 = 00000024
lbl_808C8C8C:
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80013A84
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    jal     func_808C8828
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C8CA4:
    lw      $ra, 0x0034($sp)
lbl_808C8CA8:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808C8CB8:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0044($sp)
    lhu     v0, 0x0088(s0)             # 00000088
    andi    t6, v0, 0x0010             # t6 = 00000000
    beq     t6, $zero, lbl_808C8D3C
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_808C8D3C
    lui     $at, %hi(var_808C9D48)     # $at = 808D0000
    sb      $zero, 0x0220(s0)          # 00000220
    lwc1    $f6, %lo(var_808C9D48)($at)
    lwc1    $f4, 0x0054(s0)            # 00000054
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    sub.s   $f8, $f4, $f6
    addiu   t8, $zero, 0x000B          # t8 = 0000000B
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, s0, 0x0024             # a2 = 00000024
    swc1    $f8, 0x0054(s0)            # 00000054
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x0044($sp)
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_800260E8
    swc1    $f10, 0x0014($sp)
    jal     func_808C8828
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
lbl_808C8D3C:
    lbu     v0, 0x02E1(s0)             # 000002E1
    andi    t9, v0, 0x0002             # t9 = 00000000
    beql    t9, $zero, lbl_808C8F44
    lw      t1, 0x0044($sp)
    lbu     v1, 0x00B1(s0)             # 000000B1
    andi    t0, v0, 0xFFFD             # t0 = 00000000
    sb      t0, 0x02E1(s0)             # 000002E1
    beql    v1, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
    lbu     t1, 0x0210(s0)             # 00000210
    addiu   $at, $zero, 0x0006         # $at = 00000006
    or      a0, s0, $zero              # a0 = 00000000
    beq     t1, $at, lbl_808C8FB0
    addiu   a1, s0, 0x02E8             # a1 = 000002E8
    sb      v1, 0x0221(s0)             # 00000221
    jal     func_800283BC
    or      a2, $zero, $zero           # a2 = 00000000
    lbu     v0, 0x0221(s0)             # 00000221
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    beql    v1, v0, lbl_808C8DA0
    lbu     t2, 0x022C(s0)             # 0000022C
    bnel    v0, $at, lbl_808C8DE4
    mtc1    $zero, $f18                # $f18 = 0.00
    lbu     t2, 0x022C(s0)             # 0000022C
lbl_808C8DA0:
    bnel    t2, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   t3, $zero, 0x0050          # t3 = 00000050
    sw      t3, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0078          # a2 = 00000078
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_808C8B00
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f16                # $f16 = 0.00
    beq     $zero, $zero, lbl_808C8FB0
    swc1    $f16, 0x0238(s0)           # 00000238
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_808C8DE4:
    lwc1    $f4, 0x0238(s0)            # 00000238
    c.eq.s  $f18, $f4
    nop
    bc1fl   lbl_808C8E08
    lbu     v0, 0x0211(s0)             # 00000211
    jal     func_80028390
    or      a0, s0, $zero              # a0 = 00000000
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    lbu     v0, 0x0211(s0)             # 00000211
lbl_808C8E08:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    v1, v0, lbl_808C8E20
    lbu     t4, 0x00AF(s0)             # 000000AF
    bnel    v0, $at, lbl_808C8EE4
    lbu     v0, 0x0210(s0)             # 00000210
    lbu     t4, 0x00AF(s0)             # 000000AF
lbl_808C8E20:
    bnel    t4, $zero, lbl_808C8EE4
    lbu     v0, 0x0210(s0)             # 00000210
    lbu     t5, 0x0210(s0)             # 00000210
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    beq     t5, $zero, lbl_808C8F40
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   t6, $zero, 0x0008          # t6 = 00000008
    sw      t6, 0x0010($sp)
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lw      a0, 0x0044($sp)
    jal     func_8002834C
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    beq     v0, $zero, lbl_808C8EB8
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    sb      $zero, 0x0220(s0)          # 00000220
    lui     $at, %hi(var_808C9D4C)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D4C)($at)
    lwc1    $f6, 0x0054(s0)            # 00000054
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f16                  # $f16 = 4.00
    sub.s   $f10, $f6, $f8
    addiu   a2, s0, 0x0024             # a2 = 00000024
    addiu   t7, $zero, 0x000B          # t7 = 0000000B
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f10, 0x0054(s0)           # 00000054
    sw      a2, 0x003C($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0018($sp)
    sw      t7, 0x0010($sp)
    lw      a0, 0x0044($sp)
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_800260E8
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_808C8EC0
    lw      a2, 0x003C($sp)
lbl_808C8EB8:
    sb      t8, 0x0220(s0)             # 00000220
    addiu   a2, s0, 0x0024             # a2 = 00000024
lbl_808C8EC0:
    lw      a0, 0x0044($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80013A84
    addiu   a3, $zero, 0x0090          # a3 = 00000090
    jal     func_808C8828
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_808C8F44
    lw      t1, 0x0044($sp)
    lbu     v0, 0x0210(s0)             # 00000210
lbl_808C8EE4:
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    v1, v0, lbl_808C8F44
    lw      t1, 0x0044($sp)
    beq     v0, $at, lbl_808C8F40
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3977          # a1 = 00003977
    addiu   t9, $zero, 0x0008          # t9 = 00000008
    sw      t9, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x4000          # a1 = 00004000
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    jal     func_80027090
    or      a3, $zero, $zero           # a3 = 00000000
    lbu     t0, 0x0210(s0)             # 00000210
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beql    t0, $at, lbl_808C8F38
    mtc1    $zero, $f18                # $f18 = 0.00
    jal     func_808C8900
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_808C8F38:
    nop
    swc1    $f18, 0x0238(s0)           # 00000238
lbl_808C8F40:
    lw      t1, 0x0044($sp)
lbl_808C8F44:
    lui     $at, 0x43C8                # $at = 43C80000
    lbu     t2, 0x1C26(t1)             # 00001C26
    beql    t2, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
    mtc1    $at, $f4                   # $f4 = 400.00
    lwc1    $f6, 0x0090(s0)            # 00000090
    c.le.s  $f6, $f4
    nop
    bc1fl   lbl_808C8FB4
    lw      $ra, 0x0034($sp)
    lhu     t3, 0x0088(s0)             # 00000088
    andi    t4, t3, 0x0001             # t4 = 00000000
    beql    t4, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
    lbu     v0, 0x0210(s0)             # 00000210
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     v0, $at, lbl_808C8FA0
    nop
    jal     func_808C8644
    sb      $zero, 0x022C(s0)          # 0000022C
    beq     $zero, $zero, lbl_808C8FB4
    lw      $ra, 0x0034($sp)
lbl_808C8FA0:
    beq     v0, $zero, lbl_808C8FB0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_808C82DC
    sb      $zero, 0x022C(s0)          # 0000022C
lbl_808C8FB0:
    lw      $ra, 0x0034($sp)
lbl_808C8FB4:
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0040           # $sp += 0x40
    jr      $ra
    nop


func_808C8FC4:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      s1, 0x0030($sp)
    sw      s0, 0x002C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0034($sp)
    lui     t7, %hi(var_808C9BBC)      # t7 = 808D0000
    addiu   t7, t7, %lo(var_808C9BBC)  # t7 = 808C9BBC
    lw      t9, 0x0000(t7)             # 808C9BBC
    addiu   t6, $sp, 0x006C            # t6 = FFFFFFEC
    lw      t8, 0x0004(t7)             # 808C9BC0
    sw      t9, 0x0000(t6)             # FFFFFFEC
    lw      t9, 0x0008(t7)             # 808C9BC4
    lui     t1, %hi(var_808C9BC8)      # t1 = 808D0000
    addiu   t1, t1, %lo(var_808C9BC8)  # t1 = 808C9BC8
    sw      t8, 0x0004(t6)             # FFFFFFF0
    sw      t9, 0x0008(t6)             # FFFFFFF4
    lw      t3, 0x0000(t1)             # 808C9BC8
    addiu   t0, $sp, 0x0060            # t0 = FFFFFFE0
    lw      t2, 0x0004(t1)             # 808C9BCC
    sw      t3, 0x0000(t0)             # FFFFFFE0
    lw      t3, 0x0008(t1)             # 808C9BD0
    sw      t2, 0x0004(t0)             # FFFFFFE4
    lui     t4, %hi(var_808C9BD4)      # t4 = 808D0000
    sw      t3, 0x0008(t0)             # FFFFFFE8
    lui     t5, %hi(var_808C9BD8)      # t5 = 808D0000
    lui     t6, %hi(var_808C9BDC)      # t6 = 808D0000
    lui     t7, %hi(var_808C9BE0)      # t7 = 808D0000
    lw      t4, %lo(var_808C9BD4)(t4)
    lw      t5, %lo(var_808C9BD8)(t5)
    lw      t6, %lo(var_808C9BDC)(t6)
    lw      t7, %lo(var_808C9BE0)(t7)
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    sw      t4, 0x0050($sp)
    sw      t5, 0x004C($sp)
    sw      t6, 0x0048($sp)
    jal     func_808C8CB8
    sw      t7, 0x0044($sp)
    lbu     t8, 0x00B1(s0)             # 000000B1
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    t8, $at, lbl_808C9350
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
    lw      t9, 0x0218(s0)             # 00000218
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lbu     t0, 0x022C(s0)             # 0000022C
    lui     $at, 0x0001                # $at = 00010000
    addu    t4, s1, $at
    bne     t0, $zero, lbl_808C90A8
    lui     $at, 0xC040                # $at = C0400000
    lbu     t1, 0x022A(s0)             # 0000022A
    addiu   t2, t1, 0x0004             # t2 = 00000004
    andi    t3, t2, 0x007F             # t3 = 00000004
    sb      t3, 0x022A(s0)             # 0000022A
lbl_808C90A8:
    sw      t4, 0x0040($sp)
    lbu     t7, 0x0211(s0)             # 00000211
    lw      t6, 0x1DE4(t4)             # 00001DE4
    and     t8, t6, t7
    bne     t8, $zero, lbl_808C9168
    nop
    mtc1    $at, $f4                   # $f4 = -3.00
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f8                   # $f8 = 24.00
    swc1    $f4, 0x0064($sp)
    lwc1    $f6, 0x0238(s0)            # 00000238
    mul.s   $f12, $f6, $f8
    jal     func_80026D90
    nop
    swc1    $f0, 0x006C($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f16                  # $f16 = 30.00
    lwc1    $f10, 0x0238(s0)           # 00000238
    lui     $at, 0x41C0                # $at = 41C00000
    mtc1    $at, $f6                   # $f6 = 24.00
    mul.s   $f18, $f10, $f16
    swc1    $f18, 0x0070($sp)
    lwc1    $f4, 0x0238(s0)            # 00000238
    mul.s   $f12, $f4, $f6
    jal     func_80026D90
    nop
    lui     $at, %hi(var_808C9D50)     # $at = 808D0000
    lwc1    $f2, %lo(var_808C9D50)($at)
    lwc1    $f8, 0x006C($sp)
    addiu   t9, $sp, 0x0050            # t9 = FFFFFFD0
    addiu   t0, $sp, 0x004C            # t0 = FFFFFFCC
    mul.s   $f10, $f8, $f2
    addiu   t1, $zero, 0x003C          # t1 = 0000003C
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    mul.s   $f16, $f0, $f2
    swc1    $f0, 0x0074($sp)
    sw      t2, 0x0020($sp)
    sw      t1, 0x0018($sp)
    swc1    $f10, 0x0060($sp)
    sw      t0, 0x0014($sp)
    sw      t9, 0x0010($sp)
    swc1    $f16, 0x0068($sp)
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0024             # a1 = 00000024
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFEC
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFE0
    jal     func_8001BE64
    sw      $zero, 0x001C($sp)
lbl_808C9168:
    lui     $at, %hi(var_808C9D54)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9D54)($at)
    lwc1    $f4, 0x0238(s0)            # 00000238
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    c.le.s  $f4, $f18
    nop
    bc1fl   lbl_808C92D0
    sb      t7, 0x02A0(s0)             # 000002A0
    sb      $zero, 0x02A0(s0)          # 000002A0
    lw      t3, 0x0040($sp)
    lw      t4, 0x1DE4(t3)             # 00001DE4
    andi    t5, t4, 0x0001             # t5 = 00000000
    bnel    t5, $zero, lbl_808C92D4
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x0210(s0)             # 00000210
    slti    $at, t6, 0x0005
    beql    $at, $zero, lbl_808C92D4
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t7, 0x022C(s0)             # 0000022C
    lui     $at, %hi(var_808C9D58)     # $at = 808D0000
    addiu   t8, s0, 0x0024             # t8 = 00000024
    bnel    t7, $zero, lbl_808C92D4
    or      a0, s0, $zero              # a0 = 00000000
    lwc1    $f6, %lo(var_808C9D58)($at)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    sw      t8, 0x0040($sp)
    jal     func_80026D90
    swc1    $f6, 0x0064($sp)
    lui     $at, 0x4000                # $at = 40000000
    mtc1    $at, $f12                  # $f12 = 2.00
    jal     func_80026D90
    swc1    $f0, 0x006C($sp)
    lui     $at, 0x40C0                # $at = 40C00000
    mtc1    $at, $f8                   # $f8 = 6.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    add.s   $f10, $f0, $f8
    jal     func_80026D90
    swc1    $f10, 0x0070($sp)
    lui     $at, %hi(var_808C9D5C)     # $at = 808D0000
    lwc1    $f2, %lo(var_808C9D5C)($at)
    lwc1    $f16, 0x006C($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    mul.s   $f18, $f16, $f2
    swc1    $f0, 0x0074($sp)
    mul.s   $f4, $f0, $f2
    swc1    $f18, 0x0060($sp)
    jal     func_80026D90
    swc1    $f4, 0x0068($sp)
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f12                  # $f12 = 4.00
    jal     func_80026D90
    nop
    lbu     t9, 0x021F(s0)             # 0000021F
    addiu   t1, $sp, 0x0048            # t1 = FFFFFFC8
    addiu   t2, $sp, 0x0044            # t2 = FFFFFFC4
    andi    v0, t9, 0x00FF             # v0 = 00000000
    slti    $at, v0, 0x001E
    bne     $at, $zero, lbl_808C926C
    sb      t9, 0x004B($sp)
    addiu   t0, v0, 0xFFE2             # t0 = FFFFFFE2
    beq     $zero, $zero, lbl_808C9270
    sb      t0, 0x0047($sp)
lbl_808C926C:
    sb      $zero, 0x0047($sp)
lbl_808C9270:
    addiu   t3, $zero, 0x00B4          # t3 = 000000B4
    addiu   t4, $zero, 0x0028          # t4 = 00000028
    sw      t4, 0x001C($sp)
    sw      t3, 0x0018($sp)
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f8                   # $f8 = 40.00
    lwc1    $f6, 0x0238(s0)            # 00000238
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f16                  # $f16 = 20.00
    mul.s   $f10, $f6, $f8
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0040($sp)
    addiu   a2, $sp, 0x006C            # a2 = FFFFFFEC
    addiu   a3, $sp, 0x0060            # a3 = FFFFFFE0
    sub.s   $f18, $f16, $f10
    trunc.w.s $f4, $f18
    mfc1    t6, $f4
    jal     func_8001BE64
    sw      t6, 0x0020($sp)
    beq     $zero, $zero, lbl_808C92D4
    or      a0, s0, $zero              # a0 = 00000000
    sb      t7, 0x02A0(s0)             # 000002A0
lbl_808C92D0:
    or      a0, s0, $zero              # a0 = 00000000
lbl_808C92D4:
    or      a1, s1, $zero              # a1 = 00000000
    lui     a2, 0x4248                 # a2 = 42480000
    jal     func_80026850
    lh      a3, 0x0032(s0)             # 00000032
    lbu     v1, 0x0210(s0)             # 00000210
    addiu   $at, $zero, 0x0004         # $at = 00000004
    sh      v0, 0x0224(s0)             # 00000224
    beq     v1, $at, lbl_808C931C
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beq     v1, $at, lbl_808C931C
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     v1, $at, lbl_808C931C
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808C931C
    nop
    lh      t8, 0x0224(s0)             # 00000224
    beql    t8, $zero, lbl_808C9328
    lui     $at, 0x41A8                # $at = 41A80000
lbl_808C931C:
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A8                # $at = 41A80000
lbl_808C9328:
    mtc1    $at, $f6                   # $f6 = 21.00
    addiu   t9, $zero, 0x001F          # t9 = 0000001F
    sw      t9, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a2, 0x41A0                 # a2 = 41A00000
    lui     a3, 0x41F0                 # a3 = 41F00000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    addiu   a1, s0, 0x02D0             # a1 = 000002D0
lbl_808C9350:
    addiu   t0, s0, 0x0024             # t0 = 00000024
    sw      t0, 0x0040($sp)
    sw      a1, 0x0038($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x003C($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0038($sp)
    lbu     t1, 0x0210(s0)             # 00000210
    beql    t1, $zero, lbl_808C93BC
    lbu     t5, 0x0211(s0)             # 00000211
    lbu     t2, 0x0114(s0)             # 00000114
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    beq     t2, $zero, lbl_808C93B0
    nop
    lhu     t3, 0x0112(s0)             # 00000112
    andi    t4, t3, 0x4000             # t4 = 00000000
    bnel    t4, $zero, lbl_808C93BC
    lbu     t5, 0x0211(s0)             # 00000211
lbl_808C93B0:
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0038($sp)
    lbu     t5, 0x0211(s0)             # 00000211
lbl_808C93BC:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    t5, $at, lbl_808C9414
    lw      t7, 0x0040($sp)
    lbu     t6, 0x0210(s0)             # 00000210
    slti    $at, t6, 0x0005
    beq     $at, $zero, lbl_808C9410
    lui     $at, %hi(var_808C9D60)     # $at = 808D0000
    lwc1    $f8, %lo(var_808C9D60)($at)
    lwc1    $f16, 0x0238(s0)           # 00000238
    addiu   a2, s0, 0x0284             # a2 = 00000284
    or      a1, a2, $zero              # a1 = 00000284
    c.lt.s  $f8, $f16
    or      a0, s0, $zero              # a0 = 00000000
    bc1fl   lbl_808C9414
    lw      t7, 0x0040($sp)
    jal     func_80050B00
    sw      a2, 0x0038($sp)
    lw      a2, 0x0038($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BD50              # CollisionCheck_setAT
    lw      a1, 0x003C($sp)
lbl_808C9410:
    lw      t7, 0x0040($sp)
lbl_808C9414:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f18                  # $f18 = 5.00
    lw      t9, 0x0000(t7)             # 00000000
    sw      t9, 0x0038(s0)             # 00000038
    lw      t8, 0x0004(t7)             # 00000004
    sw      t8, 0x003C(s0)             # 0000003C
    lwc1    $f10, 0x003C(s0)           # 0000003C
    lw      t9, 0x0008(t7)             # 00000008
    add.s   $f4, $f10, $f18
    sw      t9, 0x0040(s0)             # 00000040
    swc1    $f4, 0x003C(s0)            # 0000003C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x002C($sp)
    lw      s1, 0x0030($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp += 0x80


func_808C9454:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      $ra, 0x003C($sp)
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    sw      a0, 0x0048($sp)
    sw      a2, 0x0050($sp)
    sw      a3, 0x0054($sp)
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     a1, $at, lbl_808C964C
    lw      s0, 0x005C($sp)
    lw      s1, 0x0060($sp)
    lw      v1, 0x0000(s1)             # 00000000
    lui     t7, 0xDB06                 # t7 = DB060000
    ori     t7, t7, 0x0024             # t7 = DB060024
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x0000(s1)             # 00000000
    sw      t7, 0x0000(v1)             # 00000000
    lw      t8, 0x0048($sp)
    addiu   t9, $zero, 0x0020          # t9 = 00000020
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    lw      a0, 0x0000(t8)             # 00000000
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      t1, 0x0014($sp)
    sw      t9, 0x0010($sp)
    lbu     t3, 0x022A(s0)             # 0000022A
    addiu   t4, $zero, 0x0020          # t4 = 00000020
    addiu   t5, $zero, 0x0020          # t5 = 00000020
    sw      t5, 0x0028($sp)
    sw      t4, 0x0024($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    sw      v1, 0x0040($sp)
    jal     func_8007EB84
    sw      t3, 0x0020($sp)
    lw      t0, 0x0040($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lbu     v1, 0x0210(s0)             # 00000210
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     v1, $at, lbl_808C9508
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v1, $at, lbl_808C9650
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C9508:
    jal     func_800AA6EC
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f12                  # $f12 = 1.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, %hi(var_808C9D64)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D64)($at)
    lwc1    $f4, 0x0248(s0)            # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AA9E0
    nop
    lui     $at, %hi(var_808C9D68)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9D68)($at)
    lwc1    $f8, 0x0248(s0)            # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    nop
    lui     $at, %hi(var_808C9D6C)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9D6C)($at)
    lwc1    $f16, 0x0248(s0)           # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AAD4C
    nop
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lwc1    $f0, 0x0250(s0)            # 00000250
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    sub.s   $f12, $f2, $f0
    add.s   $f14, $f0, $f2
    mfc1    a2, $f12
    jal     func_800AA8FC
    nop
    lui     $at, %hi(var_808C9D70)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D70)($at)
    lwc1    $f4, 0x0248(s0)            # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    neg.s   $f12, $f12
    lui     $at, %hi(var_808C9D74)     # $at = 808D0000
    lwc1    $f10, %lo(var_808C9D74)($at)
    lwc1    $f8, 0x0248(s0)            # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f8, $f10
    jal     func_800AAB94
    neg.s   $f12, $f12
    lui     $at, %hi(var_808C9D78)     # $at = 808D0000
    lwc1    $f18, %lo(var_808C9D78)($at)
    lwc1    $f16, 0x0248(s0)           # 00000248
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    mul.s   $f12, $f16, $f18
    jal     func_800AA9E0
    neg.s   $f12, $f12
    lw      s0, 0x0000(s1)             # 00000000
    lui     t7, 0xDA38                 # t7 = DA380000
    ori     t7, t7, 0x0003             # t7 = DA380003
    addiu   t6, s0, 0x0008             # t6 = 00000008
    sw      t6, 0x0000(s1)             # 00000000
    sw      t7, 0x0000(s0)             # 00000000
    lw      t8, 0x0048($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t8)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x0000(s1)             # 00000000
    lui     t1, 0xDE00                 # t1 = DE000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(s1)             # 00000000
    sw      t1, 0x0000(v1)             # 00000000
    lw      t2, 0x0050($sp)
    lw      t3, 0x0000(t2)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    jal     func_800AA724
    nop
    beq     $zero, $zero, lbl_808C9650
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_808C964C:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_808C9650:
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48


func_808C9664:
    addiu   $sp, $sp, 0xFF58           # $sp -= 0xA8
    sw      s2, 0x0040($sp)
    sw      s0, 0x0038($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s2, a1, $zero              # s2 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s1, 0x003C($sp)
    lui     t7, %hi(var_808C9C44)      # t7 = 808D0000
    addiu   t7, t7, %lo(var_808C9C44)  # t7 = 808C9C44
    lw      t9, 0x0000(t7)             # 808C9C44
    addiu   t6, $sp, 0x009C            # t6 = FFFFFFF4
    lw      t8, 0x0004(t7)             # 808C9C48
    sw      t9, 0x0000(t6)             # FFFFFFF4
    lw      t9, 0x0008(t7)             # 808C9C4C
    sw      t8, 0x0004(t6)             # FFFFFFF8
    sw      t9, 0x0008(t6)             # FFFFFFFC
    lbu     t1, 0x021F(s0)             # 0000021F
    lw      a2, 0x0000(s2)             # 00000000
    addiu   $at, $zero, 0x00FF         # $at = 000000FF
    bne     t1, $at, lbl_808C9754
    or      s1, a2, $zero              # s1 = 00000000
    jal     func_8007E298
    or      a0, a2, $zero              # a0 = 00000000
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t3, 0xFB00                 # t3 = FB000000
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t2, v0, 0x0008             # t2 = 00000008
    sw      t2, 0x02C0(s1)             # 000002C0
    sw      t3, 0x0000(v0)             # 00000000
    lbu     t8, 0x021D(s0)             # 0000021D
    lbu     t5, 0x021C(s0)             # 0000021C
    lbu     t3, 0x021E(s0)             # 0000021E
    sll     t9, t8, 16
    lbu     t8, 0x021F(s0)             # 0000021F
    sll     t6, t5, 24
    or      t1, t6, t9                 # t1 = 00000000
    sll     t4, t3,  8
    or      t5, t1, t4                 # t5 = 00000000
    or      t6, t5, t8                 # t6 = 00000000
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(s1)             # 000002C0
    lui     t2, 0xDB06                 # t2 = DB060000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    addiu   t3, t3, 0x8520             # t3 = 800E8520
    ori     t2, t2, 0x0020             # t2 = DB060020
    sw      t2, 0x0000(v0)             # 00000000
    sw      t3, 0x0004(v0)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t1, 0x02C0(s1)             # 000002C0
    lui     a3, %hi(func_808C9454)     # a3 = 808D0000
    addiu   a3, a3, %lo(func_808C9454) # a3 = 808C9454
    jal     func_8008A414
    sw      t1, 0x0018($sp)
    beq     $zero, $zero, lbl_808C9824
    sw      v0, 0x02C0(s1)             # 000002C0
lbl_808C9754:
    jal     func_8007E2C0
    or      a0, a2, $zero              # a0 = 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t7, 0xE700                 # t7 = E7000000
    or      a0, s2, $zero              # a0 = 00000000
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s1)             # 000002D0
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    ori     t8, t8, 0x8080             # t8 = FA008080
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s1)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lbu     t9, 0x021F(s0)             # 0000021F
    lui     a3, %hi(func_808C9454)     # a3 = 808D0000
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lbu     t8, 0x021D(s0)             # 0000021D
    lbu     t4, 0x021C(s0)             # 0000021C
    lbu     t3, 0x021E(s0)             # 0000021E
    sll     t6, t8, 16
    lbu     t8, 0x021F(s0)             # 0000021F
    sll     t7, t4, 24
    or      t9, t7, t6                 # t9 = E7000000
    sll     t1, t3,  8
    or      t4, t9, t1                 # t4 = E7000000
    or      t7, t4, t8                 # t7 = FF008080
    sw      t7, 0x0004(v1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    addiu   t3, t3, 0x8510             # t3 = 800E8510
    ori     t2, t2, 0x0020             # t2 = DB060020
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      t9, 0x02D0(s1)             # 000002D0
    addiu   a3, a3, %lo(func_808C9454) # a3 = 808C9454
    jal     func_8008A414
    sw      t9, 0x0018($sp)
    sw      v0, 0x02D0(s1)             # 000002D0
lbl_808C9824:
    lui     $at, 0x0001                # $at = 00010000
    addu    t1, s2, $at
    sw      t1, 0x004C($sp)
    lw      t8, 0x1DE4(t1)             # 00001DE4
    lh      t5, 0x001C(s0)             # 0000001C
    addiu   t7, t8, 0x0001             # t7 = 00000001
    andi    t6, t7, 0x0003             # t6 = 00000001
    bne     t5, t6, lbl_808C98BC
    lui     $at, %hi(var_808C9D7C)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D7C)($at)
    lwc1    $f4, 0x0058(s0)            # 00000058
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0254             # a1 = 00000254
    mul.s   $f8, $f4, $f6
    jal     func_800AB958
    swc1    $f8, 0x00A4($sp)
    lui     $at, %hi(var_808C9D80)     # $at = 808D0000
    lwc1    $f16, %lo(var_808C9D80)($at)
    lwc1    $f10, 0x0058(s0)           # 00000058
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0260             # a1 = 00000260
    mul.s   $f18, $f10, $f16
    jal     func_800AB958
    swc1    $f18, 0x00A4($sp)
    lui     $at, %hi(var_808C9D84)     # $at = 808D0000
    lwc1    $f6, %lo(var_808C9D84)($at)
    lwc1    $f4, 0x0050(s0)            # 00000050
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFF4
    addiu   a1, s0, 0x0278             # a1 = 00000278
    mul.s   $f8, $f4, $f6
    jal     func_800AB958
    swc1    $f8, 0x009C($sp)
    lwc1    $f10, 0x009C($sp)
    addiu   a0, $sp, 0x009C            # a0 = FFFFFFF4
    addiu   a1, s0, 0x026C             # a1 = 0000026C
    neg.s   $f16, $f10
    jal     func_800AB958
    swc1    $f16, 0x009C($sp)
lbl_808C98BC:
    lui     $at, %hi(var_808C9D88)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9D88)($at)
    lwc1    $f18, 0x0054(s0)           # 00000054
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f8                   # $f8 = 1000.00
    sub.s   $f6, $f18, $f4
    lwc1    $f16, 0x0028(s0)           # 00000028
    lwc1    $f12, 0x0024(s0)           # 00000024
    lw      a2, 0x002C(s0)             # 0000002C
    mul.s   $f10, $f6, $f8
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA7F4
    add.s   $f14, $f16, $f10
    jal     func_8007E2C0
    lw      a0, 0x0000(s2)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t3, 0xFB00                 # t3 = FB000000
    lui     t9, 0xFF00                 # t9 = FF000000
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s1)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t3, 0x0000(v1)             # 00000000
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t1, v1, 0x0008             # t1 = 00000008
    sw      t1, 0x02D0(s1)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    lw      t6, 0x004C($sp)
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    addiu   t7, $zero, 0x0040          # t7 = 00000040
    addiu   t5, $zero, 0x0001          # t5 = 00000001
    sw      t5, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t8, 0x0010($sp)
    sw      $zero, 0x001C($sp)
    lw      t2, 0x1DE4(t6)             # 00001DE4
    addiu   t4, $zero, 0x0080          # t4 = 00000080
    addiu   t1, $zero, 0x0020          # t1 = 00000020
    subu    $at, $zero, t2
    sll     t3, $at,  2
    addu    t3, t3, $at
    sll     t3, t3,  2
    andi    t9, t3, 0x01FF             # t9 = 00000000
    sw      t9, 0x0020($sp)
    sw      t1, 0x0024($sp)
    sw      t4, 0x0028($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EB84
    sw      v1, 0x005C($sp)
    lw      t0, 0x005C($sp)
    lui     t7, 0xFA00                 # t7 = FA000000
    ori     t7, t7, 0x8080             # t7 = FA008080
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t5, 0xFFFF                 # t5 = FFFF0000
    ori     t5, t5, 0x00FF             # t5 = FFFF00FF
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02D0(s1)             # 000002D0
    sw      t5, 0x0004(v1)             # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lui     $at, %hi(var_808C9D8C)     # $at = 808D0000
    lwc1    $f4, %lo(var_808C9D8C)($at)
    lwc1    $f18, 0x0238(s0)           # 00000238
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mul.s   $f12, $f18, $f4
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1DA0           # $at = 00011DA0
    jal     func_800ABE54
    addu    a0, s2, $at
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t6, v1, 0x0008             # t6 = 00000008
    sw      t6, 0x02D0(s1)             # 000002D0
    sw      t2, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(s2)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0054($sp)
    lw      a1, 0x0054($sp)
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s1)             # 000002D0
    lui     t1, 0x0405                 # t1 = 04050000
    addiu   t1, t1, 0x2A10             # t1 = 04052A10
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s1)             # 000002D0
    sw      t1, 0x0004(v1)             # 00000004
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t4, 0x022B(s0)             # 0000022B
    beql    t4, $zero, lbl_808C9B08
    lw      $ra, 0x0044($sp)
    lbu     t5, 0x022B(s0)             # 0000022B
    lbu     t8, 0x0114(s0)             # 00000114
    lui     t9, %hi(var_808C9BE4)      # t9 = 808D0000
    addiu   t6, t5, 0xFFFF             # t6 = FFFFFFFF
    andi    t0, t6, 0x00FF             # t0 = 000000FF
    andi    t2, t0, 0x0003             # t2 = 00000003
    addiu   t7, t8, 0x0001             # t7 = 00000001
    sb      t7, 0x0114(s0)             # 00000114
    bne     t2, $zero, lbl_808C9B04
    sb      t6, 0x022B(s0)             # 0000022B
    sra     v1, t0,  2
    sll     t3, v1,  2
    subu    t3, t3, v1
    sll     t3, t3,  2
    addiu   t9, t9, %lo(var_808C9BE4)  # t9 = 808C9BE4
    addu    v0, t3, t9
    lwc1    $f6, 0x0000(v0)            # 00000000
    lwc1    $f8, 0x0024(s0)            # 00000024
    lwc1    $f10, 0x0004(v0)           # 00000004
    lui     $at, %hi(var_808C9D90)     # $at = 808D0000
    add.s   $f16, $f6, $f8
    lwc1    $f6, 0x0008(v0)            # 00000008
    addiu   t1, $zero, 0x0096          # t1 = 00000096
    addiu   t4, $zero, 0x0096          # t4 = 00000096
    swc1    $f16, 0x0088($sp)
    lwc1    $f18, 0x0028(s0)           # 00000028
    addiu   t8, $zero, 0x00FA          # t8 = 000000FA
    addiu   t7, $zero, 0x00EB          # t7 = 000000EB
    add.s   $f4, $f10, $f18
    lwc1    $f10, %lo(var_808C9D90)($at)
    addiu   t5, $zero, 0x00F5          # t5 = 000000F5
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    swc1    $f4, 0x008C($sp)
    lwc1    $f8, 0x002C(s0)            # 0000002C
    sw      t6, 0x0024($sp)
    sw      t5, 0x0020($sp)
    add.s   $f16, $f6, $f8
    sw      t7, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t4, 0x0014($sp)
    swc1    $f16, 0x0090($sp)
    sw      t1, 0x0010($sp)
    or      a0, s2, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $sp, 0x0088            # a2 = FFFFFFE0
    addiu   a3, $zero, 0x0096          # a3 = 00000096
    jal     func_8001DC4C
    swc1    $f10, 0x0028($sp)
lbl_808C9B04:
    lw      $ra, 0x0044($sp)
lbl_808C9B08:
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x00A8           # $sp += 0xA8
    nop

.section .data

var_808C9B20: .word 0x00380500, 0x00000015, 0x00250000, 0x0000031C
.word func_808C6E1C
.word func_808C6F74
.word func_808C8FC4
.word func_808C9664
var_808C9B40: .word \
0x0A110000, 0x00010000, 0x00000000, 0xFFCFFFFF, \
0x01080000, 0x00000000, 0x00000000, 0x01000000, \
0x001E0041, 0x00000000, 0x00000000
var_808C9B6C: .word \
0x00000909, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0023, 0x00000000, 0x00000000
var_808C9B98: .word \
0x100000F2, 0x00F2F210, 0x00F2F4F2, 0xE4F2F2F2, \
0xF260E360, 0x0000F1F4, 0xF2F2F8F4, 0x0000F400
var_808C9BB8: .word 0x00000000
var_808C9BBC: .word 0x00000000, 0x00000000, 0x00000000
var_808C9BC8: .word 0x00000000, 0x00000000, 0x00000000
var_808C9BD4: .word 0xFFC800FF
var_808C9BD8: .word 0xFF5000FF
var_808C9BDC: .word 0x000000FF
var_808C9BE0: .word 0x000000DC
var_808C9BE4: .word \
0x41A00000, 0x41200000, 0x00000000, 0xC1A00000, \
0x41200000, 0x00000000, 0x00000000, 0x41200000, \
0xC1C80000, 0x41200000, 0x00000000, 0x41700000, \
0x41200000, 0x00000000, 0xC1700000, 0x00000000, \
0x41200000, 0x41C80000, 0xC1200000, 0x00000000, \
0x41700000, 0xC1200000, 0x00000000, 0xC1700000
var_808C9C44: .word 0x00000000, 0x00000000, 0x00000000

.section .rodata

var_808C9C50: .word 0x3F19999A
var_808C9C54: .word 0x3A83126F
var_808C9C58: .word 0x3BE56041
var_808C9C5C: .word 0x3C54FDF4
var_808C9C60: .word 0x3A83126F
var_808C9C64: .word 0x3C54FDF4
var_808C9C68: .word 0x3BE56041
var_808C9C6C: .word 0x3A83126F
var_808C9C70: .word 0x3BE56041
var_808C9C74: .word 0x3C54FDF4
var_808C9C78: .word 0x3DCCCCCD
var_808C9C7C: .word 0x3F4CCCCD
var_808C9C80: .word 0x3DCCCCCD
var_808C9C84: .word 0x3B83126F
var_808C9C88: .word 0x3C54FDF4
var_808C9C8C: .word 0x3B83126F
var_808C9C90: .word 0x3C54FDF4
var_808C9C94: .word 0x3B83126F
var_808C9C98: .word 0x3C54FDF4
var_808C9C9C: .word 0x4622F983
var_808C9CA0: .word var_808C75E4
.word var_808C75F4
.word var_808C7694
.word var_808C76A4
.word var_808C76B0
.word var_808C76C0
.word lbl_808C76D0
.word var_808C76CC
var_808C9CC0: .word 0x4622F983
var_808C9CC4: .word 0x3F19999A
var_808C9CC8: .word 0x3A83126F
var_808C9CCC: .word 0x3C54FDF4
var_808C9CD0: .word 0x3B656041
var_808C9CD4: .word 0x3A83126F
var_808C9CD8: .word 0x3CC8B439
var_808C9CDC: .word 0x3C54FDF4
var_808C9CE0: .word 0x3A83126F
var_808C9CE4: .word 0x3C54FDF4
var_808C9CE8: .word 0x3B656041
var_808C9CEC: .word 0x3A83126F
var_808C9CF0: .word 0x3C54FDF4
var_808C9CF4: .word 0x3B656041
var_808C9CF8: .word 0x3A83126F
var_808C9CFC: .word 0x3CC8B439
var_808C9D00: .word 0x3C54FDF4
var_808C9D04: .word 0x3A83126F
var_808C9D08: .word 0x3C54FDF4
var_808C9D0C: .word 0x3B656041
var_808C9D10: .word 0x3F333333
var_808C9D14: .word 0x3A83126F
var_808C9D18: .word 0x3BE56041
var_808C9D1C: .word 0x3C54FDF4
var_808C9D20: .word 0x3A83126F
var_808C9D24: .word 0x3C54FDF4
var_808C9D28: .word 0x3BE56041
var_808C9D2C: .word 0x3A83126F
var_808C9D30: .word 0x3BE56041
var_808C9D34: .word 0x3C54FDF4
var_808C9D38: .word 0x3951B717
var_808C9D3C: .word 0x3F333333
var_808C9D40: .word 0x3F333333
var_808C9D44: .word 0x3C1374BC
var_808C9D48: .word 0x3C1374BC
var_808C9D4C: .word 0x3C1374BC
var_808C9D50: .word 0xBD99999A
var_808C9D54: .word 0x3ECCCCCD
var_808C9D58: .word 0xBDCCCCCD
var_808C9D5C: .word 0xBDCCCCCD
var_808C9D60: .word 0x3ECCCCCD
var_808C9D64: .word 0x3DEB851F
var_808C9D68: .word 0x3E051EB8
var_808C9D6C: .word 0x3DCCCCCD
var_808C9D70: .word 0x3DCCCCCD
var_808C9D74: .word 0x3E051EB8
var_808C9D78: .word 0x3DEB851F
var_808C9D7C: .word 0x48B71B00
var_808C9D80: .word 0x48127C00
var_808C9D84: .word 0x49064700
var_808C9D88: .word 0x3C54FDF4
var_808C9D8C: .word 0x3C23D70A
var_808C9D90: .word 0x3FA66666, 0x00000000, 0x00000000, 0x00000000

