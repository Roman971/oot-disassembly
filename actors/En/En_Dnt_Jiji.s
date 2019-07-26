.section .text
func_80B4DC40:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    mfc1    a1, $f0
    lui     a2, 0x8002                 # a2 = 80020000
    mfc1    a3, $f0
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    jal     func_8001EC20
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0180             # t6 = 00000180
    addiu   t7, s0, 0x01CE             # t7 = 000001CE
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0560             # a3 = 06000560
    addiu   a2, a2, 0x33E0             # a2 = 060033E0
    lw      a0, 0x003C($sp)
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x024C             # a1 = 0000024C
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    lw      a0, 0x003C($sp)
    lui     a3, %hi(var_80B4EFE0)      # a3 = 80B50000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B4EFE0)  # a3 = 80B4EFE0
    lw      a0, 0x003C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lw      t0, 0x0004(s0)             # 00000004
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    lw      t9, 0x0118(s0)             # 00000118
    and     t1, t0, $at
    lui     $at, 0xC000                # $at = C0000000
    mtc1    $at, $f4                   # $f4 = -2.00
    lui     t4, %hi(func_80B4DD4C)     # t4 = 80B50000
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   t3, $zero, 0x0006          # t3 = 00000006
    addiu   t4, t4, %lo(func_80B4DD4C) # t4 = 80B4DD4C
    sw      t1, 0x0004(s0)             # 00000004
    sb      t2, 0x00AE(s0)             # 000000AE
    sb      t3, 0x001F(s0)             # 0000001F
    sw      t4, 0x021C(s0)             # 0000021C
    sw      t9, 0x0248(s0)             # 00000248
    swc1    $f4, 0x006C(s0)            # 0000006C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4DD20:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x024C             # a1 = 0000024C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4DD4C:
    sw      a1, 0x0004($sp)
    lhu     t6, 0x0088(a0)             # 00000088
    lui     t0, %hi(func_80B4DD8C)     # t0 = 80B50000
    andi    t7, t6, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_80B4DD84
    nop
    lw      t9, 0x0024(a0)             # 00000024
    lw      t8, 0x0028(a0)             # 00000028
    addiu   t0, t0, %lo(func_80B4DD8C) # t0 = 80B4DD8C
    sw      t9, 0x0220(a0)             # 00000220
    lw      t9, 0x002C(a0)             # 0000002C
    sw      t0, 0x021C(a0)             # 0000021C
    sw      t8, 0x0224(a0)             # 00000224
    sw      t9, 0x0228(a0)             # 00000228
lbl_80B4DD84:
    jr      $ra
    nop


func_80B4DD8C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0560             # a0 = 06000560
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   a1, a1, 0x0560             # a1 = 06000560
    trunc.w.s $f8, $f6
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lui     $at, 0x4100                # $at = 41000000
    sh      $zero, 0x022E(s0)          # 0000022E
    mtc1    $at, $f4                   # $f4 = 8.00
    lh      t9, 0x022E(s0)             # 0000022E
    lui     t0, %hi(func_80B4DE3C)     # t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4DE3C) # t0 = 80B4DE3C
    sw      t0, 0x021C(s0)             # 0000021C
    swc1    $f4, 0x0154(s0)            # 00000154
    sb      t9, 0x022C(s0)             # 0000022C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4DE3C:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lw      t6, 0x0034($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    jal     func_8008C9C0
    sw      t7, 0x002C($sp)
    lh      t8, 0x0230(s0)             # 00000230
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     t8, $at, lbl_80B4DEE0
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B4DEE4
    lw      $ra, 0x0024($sp)
    jal     func_8009CB08
    lw      a0, 0x0034($sp)
    bne     v0, $zero, lbl_80B4DEE0
    lw      t9, 0x002C($sp)
    lw      t0, 0x066C(t9)             # 0000066C
    lw      a0, 0x0034($sp)
    addiu   a1, $zero, 0x08B6          # a1 = 000008B6
    andi    t1, t0, 0x0800             # t1 = 00000000
    bne     t1, $zero, lbl_80B4DEE0
    addiu   a2, $zero, 0xFF9D          # a2 = FFFFFF9D
    or      a3, s0, $zero              # a3 = 00000000
    jal     func_8006B6FC
    sw      $zero, 0x0010($sp)
    sh      $zero, 0x0230(s0)          # 00000230
    lw      a0, 0x0034($sp)
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0008          # a2 = 00000008
    lui     t2, %hi(func_80B4E048)     # t2 = 80B50000
    addiu   t2, t2, %lo(func_80B4E048) # t2 = 80B4E048
    sw      t2, 0x021C(s0)             # 0000021C
lbl_80B4DEE0:
    lw      $ra, 0x0024($sp)
lbl_80B4DEE4:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4DEF4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x12B0             # a0 = 060012B0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a1, a1, 0x12B0             # a1 = 060012B0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      t9, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x40C0                 # a2 = 40C00000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    lui     t5, %hi(func_80B4DFD8)     # t5 = 80B50000
    addiu   t5, t5, %lo(func_80B4DFD8) # t5 = 80B4DFD8
    sw      t5, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4DFD8:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064508
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f6                   # $f6 = 150.00
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     t6, %hi(func_80B4E4BC)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4E4BC) # t6 = 80B4E4BC
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B4E038
    lw      $ra, 0x0024($sp)
    sw      t6, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0024($sp)
lbl_80B4E038:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4E048:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0DF8             # a0 = 06000DF8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a1, a1, 0x0DF8             # a1 = 06000DF8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      t9, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x40C0                 # a2 = 40C00000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    lui     t5, %hi(func_80B4E12C)     # t5 = 80B50000
    addiu   t5, t5, %lo(func_80B4E12C) # t5 = 80B4E12C
    sw      t5, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4E12C:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lwc1    $f4, 0x0154(a1)            # 00000154
    sw      a1, 0x0020($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lwc1    $f6, 0x001C($sp)
    lh      t6, 0x0238(a1)             # 00000238
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.le.s  $f10, $f6
    nop
    bc1fl   lbl_80B4E1A8
    lw      $ra, 0x0014($sp)
    lh      t7, 0x022E(a1)             # 0000022E
    addiu   $at, $zero, 0x0003         # $at = 00000003
    lui     t9, %hi(func_80B4EA84)     # t9 = 80B50000
    beq     t7, $at, lbl_80B4E1A0
    addiu   t9, t9, %lo(func_80B4EA84) # t9 = 80B4EA84
    lui     t8, %hi(func_80B4E1B4)     # t8 = 80B50000
    addiu   t8, t8, %lo(func_80B4E1B4) # t8 = 80B4E1B4
    b       lbl_80B4E1A4
    sw      t8, 0x021C(a1)             # 0000021C
lbl_80B4E1A0:
    sw      t9, 0x021C(a1)             # 0000021C
lbl_80B4E1A4:
    lw      $ra, 0x0014($sp)
lbl_80B4E1A8:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B4E1B4:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x37C0             # a0 = 060037C0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x37C0             # a1 = 060037C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f4                   # $f4 = 1.00
    lui     t1, %hi(func_80B4E264)     # t1 = 80B50000
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, t1, %lo(func_80B4E264) # t1 = 80B4E264
    sb      t9, 0x022C(s0)             # 0000022C
    sh      t0, 0x023A(s0)             # 0000023A
    sw      t1, 0x021C(s0)             # 0000021C
    swc1    $f4, 0x0068(s0)            # 00000068
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4E264:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508
    addiu   a3, $zero, 0x03E8          # a3 = 000003E8
    lh      t6, 0x00B6(s0)             # 000000B6
    lui     a2, 0x3E4C                 # a2 = 3E4C0000
    lui     a3, 0x3ECC                 # a3 = 3ECC0000
    ori     a3, a3, 0xCCCD             # a3 = 3ECCCCCD
    ori     a2, a2, 0xCCCD             # a2 = 3E4CCCCD
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x3F80                 # a1 = 3F800000
    jal     func_80064280
    sh      t6, 0x0032(s0)             # 00000032
    lh      t7, 0x0232(s0)             # 00000232
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     t7, $zero, lbl_80B4E2D8
    addiu   a1, $zero, 0x387F          # a1 = 0000387F
    jal     func_80022FD0
    sh      t8, 0x0232(s0)             # 00000232
lbl_80B4E2D8:
    lhu     v0, 0x0088(s0)             # 00000088
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x8010                 # t2 = 80100000
    andi    t9, v0, 0x0008             # t9 = 00000000
    beq     t9, $zero, lbl_80B4E30C
    andi    t0, v0, 0x0001             # t0 = 00000000
    beq     t0, $zero, lbl_80B4E30C
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f4                   # $f4 = 9.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    swc1    $f4, 0x0060(s0)            # 00000060
    swc1    $f6, 0x0068(s0)            # 00000068
lbl_80B4E30C:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    lwc1    $f8, 0x0090(s0)            # 00000090
    addiu   t8, $zero, 0x104D          # t8 = 0000104D
    lui     t4, 0x8010                 # t4 = 80100000
    c.lt.s  $f8, $f10
    andi    a1, t8, 0xFFFF             # a1 = 0000104D
    or      a2, $zero, $zero           # a2 = 00000000
    bc1fl   lbl_80B4E390
    lw      $ra, 0x0024($sp)
    lw      t1, -0x5990(t1)            # 8011A670
    lw      t2, -0x7368(t2)            # 800F8C98
    lbu     t4, -0x7336(t4)            # 800F8CCA
    addiu   $at, $zero, 0x0001         # $at = 00000001
    and     t3, t1, t2
    srav    t5, t3, t4
    bne     t5, $at, lbl_80B4E360
    addiu   t7, $zero, 0x0078          # t7 = 00000078
    addiu   t6, $zero, 0x0077          # t6 = 00000077
    b       lbl_80B4E364
    sw      t6, 0x0244(s0)             # 00000244
lbl_80B4E360:
    sw      t7, 0x0244(s0)             # 00000244
lbl_80B4E364:
    sh      t8, 0x010E(s0)             # 0000010E
    jal     func_800DCE14
    lw      a0, 0x002C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    lui     t0, %hi(func_80B4E734)     # t0 = 80B50000
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    addiu   t0, t0, %lo(func_80B4E734) # t0 = 80B4E734
    sh      t9, 0x0240(s0)             # 00000240
    sw      t0, 0x021C(s0)             # 0000021C
    swc1    $f16, 0x0068(s0)           # 00000068
    lw      $ra, 0x0024($sp)
lbl_80B4E390:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4E3A0:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0560             # a0 = 06000560
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a1, a1, 0x0560             # a1 = 06000560
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      t9, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t0, $zero, 0x000F          # t0 = 0000000F
    addiu   t1, $zero, 0x0005          # t1 = 00000005
    addiu   t2, $zero, 0x0014          # t2 = 00000014
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x40C0                 # a2 = 40C00000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387D          # a1 = 0000387D
    lui     t5, %hi(func_80B4E490)     # t5 = 80B50000
    addiu   t5, t5, %lo(func_80B4E490) # t5 = 80B4E490
    sw      t5, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4E490:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_8008C9C0
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4E4BC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0944             # a0 = 06000944
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a1, a1, 0x0944             # a1 = 06000944
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      t9, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    addiu   t3, $zero, 0xFFFF          # t3 = FFFFFFFF
    addiu   t4, $zero, 0x000A          # t4 = 0000000A
    sw      t4, 0x0020($sp)
    sw      t3, 0x001C($sp)
    sw      t2, 0x0018($sp)
    sw      t1, 0x0014($sp)
    sw      t0, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0024             # a1 = 00000024
    lui     a2, 0x4040                 # a2 = 40400000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x387C          # a1 = 0000387C
    lui     t5, 0x8012                 # t5 = 80120000
    lui     t6, 0x8010                 # t6 = 80100000
    lw      t6, -0x7364(t6)            # 800F8C9C
    lw      t5, -0x5990(t5)            # 8011A670
    lui     t8, 0x8010                 # t8 = 80100000
    lbu     t8, -0x7335(t8)            # 800F8CCB
    and     t7, t5, t6
    addiu   $at, $zero, 0x0001         # $at = 00000001
    srav    v0, t7, t8
    beq     v0, $at, lbl_80B4E5B4
    addiu   t3, $zero, 0x10DB          # t3 = 000010DB
    bne     v0, $zero, lbl_80B4E5C0
    addiu   t0, $zero, 0x007A          # t0 = 0000007A
lbl_80B4E5B4:
    addiu   t9, $zero, 0x0079          # t9 = 00000079
    b       lbl_80B4E5C4
    sw      t9, 0x0244(s0)             # 00000244
lbl_80B4E5C0:
    sw      t0, 0x0244(s0)             # 00000244
lbl_80B4E5C4:
    lw      t1, 0x0004(s0)             # 00000004
    lui     t5, %hi(func_80B4E5FC)     # t5 = 80B50000
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    addiu   t5, t5, %lo(func_80B4E5FC) # t5 = 80B4E5FC
    ori     t2, t1, 0x0001             # t2 = 00000001
    sw      t2, 0x0004(s0)             # 00000004
    sh      t3, 0x010E(s0)             # 0000010E
    sh      t4, 0x0240(s0)             # 00000240
    sw      t5, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4E5FC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    lwc1    $f4, 0x0154(s0)            # 00000154
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x002C($sp)
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064508
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    lh      t6, 0x0238(s0)             # 00000238
    lwc1    $f6, 0x002C($sp)
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.le.s  $f10, $f6
    nop
    bc1fl   lbl_80B4E690
    lw      $ra, 0x0024($sp)
    jal     func_80022930
    lw      a1, 0x0034($sp)
    beq     v0, $zero, lbl_80B4E680
    or      a0, s0, $zero              # a0 = 00000000
    lui     t7, %hi(func_80B4E6A0)     # t7 = 80B50000
    addiu   t7, t7, %lo(func_80B4E6A0) # t7 = 80B4E6A0
    b       lbl_80B4E68C
    sw      t7, 0x021C(s0)             # 0000021C
lbl_80B4E680:
    lw      a1, 0x0034($sp)
    jal     func_80022A68
    lui     a2, 0x42C8                 # a2 = 42C80000
lbl_80B4E68C:
    lw      $ra, 0x0024($sp)
lbl_80B4E690:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4E6A0:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0BD0             # a0 = 06000BD0
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0BD0             # a1 = 06000BD0
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(v1)             # 00000238
    lh      t8, 0x0238(v1)             # 00000238
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      v1, 0x0028($sp)
    lui     t9, %hi(func_80B4E734)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4E734) # t9 = 80B4E734
    sw      t9, 0x021C(v1)             # 0000021C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4E734:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lh      a1, 0x008A(s0)             # 0000008A
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80064508
    addiu   a3, $zero, 0x1388          # a3 = 00001388
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bnel    v0, $at, lbl_80B4E7F0
    lw      $ra, 0x0024($sp)
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B4E7F0
    lw      $ra, 0x0024($sp)
    lh      t6, 0x07A0(s1)             # 000007A0
    sll     t7, t6,  2
    addu    t8, s1, t7
    jal     func_80049DB4
    lw      a0, 0x0790(t8)             # 00000790
    jal     func_800D6218
    or      a0, s1, $zero              # a0 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, $zero, $zero           # a1 = 00000000
    jal     func_800218EC
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    sw      $zero, 0x0118(s0)          # 00000118
    lw      a2, 0x0244(s0)             # 00000244
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lui     t9, %hi(func_80B4E800)     # t9 = 80B50000
    addiu   t9, t9, %lo(func_80B4E800) # t9 = 80B4E800
    sw      t9, 0x021C(s0)             # 0000021C
    lw      $ra, 0x0024($sp)
lbl_80B4E7F0:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28


func_80B4E800:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022BB0
    lw      a1, 0x002C($sp)
    beq     v0, $zero, lbl_80B4E840
    or      a0, s0, $zero              # a0 = 00000000
    lui     t6, %hi(func_80B4E870)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B4E870) # t6 = 80B4E870
    b       lbl_80B4E85C
    sw      t6, 0x021C(s0)             # 0000021C
lbl_80B4E840:
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f4                   # $f4 = 200.00
    lw      a2, 0x0244(s0)             # 00000244
    lw      a1, 0x002C($sp)
    lui     a3, 0x43C8                 # a3 = 43C80000
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
lbl_80B4E85C:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4E870:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    addiu   a0, a2, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bne     v0, $at, lbl_80B4E970
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_800D6110
    sw      a2, 0x0018($sp)
    beq     v0, $zero, lbl_80B4E970
    lw      a2, 0x0018($sp)
    lw      v0, 0x0244(a2)             # 00000244
    addiu   $at, $zero, 0x0079         # $at = 00000079
    beq     v0, $at, lbl_80B4E8CC
    addiu   $at, $zero, 0x007A         # $at = 0000007A
    bne     v0, $at, lbl_80B4E8E4
lbl_80B4E8CC:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t6, 0x0EF2(v0)             # 8011B4C2
    ori     t7, t6, 0x8000             # t7 = 00008000
    b       lbl_80B4E8F8
    sh      t7, 0x0EF2(v0)             # 8011B4C2
lbl_80B4E8E4:
    lui     v0, 0x8012                 # v0 = 80120000
    addiu   v0, v0, 0xA5D0             # v0 = 8011A5D0
    lhu     t8, 0x0EF2(v0)             # 8011B4C2
    ori     t9, t8, 0x4000             # t9 = 00004000
    sh      t9, 0x0EF2(v0)             # 8011B4C2
lbl_80B4E8F8:
    lw      v0, 0x0248(a2)             # 00000248
    lui     t9, %hi(func_80B4E980)     # t9 = 80B50000
    sh      $zero, 0x010E(a2)          # 0000010E
    beq     v0, $zero, lbl_80B4E944
    addiu   t9, t9, %lo(func_80B4E980) # t9 = 80B4E980
    lw      t0, 0x0130(v0)             # 8011A700
    beql    t0, $zero, lbl_80B4E948
    lw      t6, 0x0004(a2)             # 00000004
    sh      $zero, 0x014A(v0)          # 8011A71A
    lh      t1, 0x023A(a2)             # 0000023A
    bnel    t1, $zero, lbl_80B4E93C
    lw      t5, 0x0248(a2)             # 00000248
    lw      t3, 0x0248(a2)             # 00000248
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    b       lbl_80B4E944
    sh      t2, 0x0148(t3)             # 00000148
    lw      t5, 0x0248(a2)             # 00000248
lbl_80B4E93C:
    addiu   t4, $zero, 0x0005          # t4 = 00000005
    sh      t4, 0x0148(t5)             # 00000148
lbl_80B4E944:
    lw      t6, 0x0004(a2)             # 00000004
lbl_80B4E948:
    lh      t8, 0x023A(a2)             # 0000023A
    addiu   $at, $zero, 0xFFFE         # $at = FFFFFFFE
    and     t7, t6, $at
    bne     t8, $zero, lbl_80B4E964
    sw      t7, 0x0004(a2)             # 00000004
    b       lbl_80B4E970
    sw      t9, 0x021C(a2)             # 0000021C
lbl_80B4E964:
    lui     t0, %hi(func_80B4EA84)     # t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4EA84) # t0 = 80B4EA84
    sw      t0, 0x021C(a2)             # 0000021C
lbl_80B4E970:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B4E980:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0A70             # a0 = 06000A70
    mtc1    v0, $f4                    # $f4 = 0.00
    lw      v1, 0x0028($sp)
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = -10.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t9, $zero, 0x0002          # t9 = 00000002
    addiu   a1, a1, 0x0A70             # a1 = 06000A70
    lui     a2, 0x3F80                 # a2 = 3F800000
    trunc.w.s $f8, $f6
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    addiu   a0, v1, 0x013C             # a0 = 0000013C
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(v1)             # 00000238
    lh      t8, 0x0238(v1)             # 00000238
    sw      t9, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      v1, 0x0028($sp)
    lui     t0, %hi(func_80B4EA18)     # t0 = 80B50000
    addiu   t0, t0, %lo(func_80B4EA18) # t0 = 80B4EA18
    sw      t0, 0x021C(v1)             # 0000021C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B4EA18:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      a1, 0x0024($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0020($sp)
    lwc1    $f4, 0x0154(a1)            # 00000154
    sw      a1, 0x0020($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    swc1    $f4, 0x001C($sp)
    lw      a1, 0x0020($sp)
    lwc1    $f6, 0x001C($sp)
    lui     t7, %hi(func_80B4DD8C)     # t7 = 80B50000
    lh      t6, 0x0238(a1)             # 00000238
    addiu   t7, t7, %lo(func_80B4DD8C) # t7 = 80B4DD8C
    mtc1    t6, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    c.le.s  $f10, $f6
    nop
    bc1fl   lbl_80B4EA78
    lw      $ra, 0x0014($sp)
    sw      t7, 0x021C(a1)             # 0000021C
    lw      $ra, 0x0014($sp)
lbl_80B4EA78:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B4EA84:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x0034($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x37C0             # a0 = 060037C0
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x37C0             # a1 = 060037C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    sh      t7, 0x0238(s0)             # 00000238
    lh      t8, 0x0238(s0)             # 00000238
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    mtc1    t8, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    lui     $at, 0x4000                # $at = 40000000
    sh      t9, 0x023A(s0)             # 0000023A
    mtc1    $at, $f4                   # $f4 = 2.00
    lh      t0, 0x023A(s0)             # 0000023A
    lui     t1, %hi(func_80B4EB34)     # t1 = 80B50000
    addiu   t1, t1, %lo(func_80B4EB34) # t1 = 80B4EB34
    sw      t1, 0x021C(s0)             # 0000021C
    swc1    $f4, 0x0068(s0)            # 00000068
    sb      t0, 0x022C(s0)             # 0000022C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4EB34:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x0034($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lwc1    $f4, 0x0220(s0)            # 00000220
    lwc1    $f6, 0x0024(s0)            # 00000024
    lwc1    $f8, 0x0228(s0)            # 00000228
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sub.s   $f12, $f4, $f6
    sub.s   $f14, $f8, $f10
    swc1    $f12, 0x002C($sp)
    jal     func_800CD76C
    swc1    $f14, 0x0028($sp)
    lui     $at, %hi(var_80B4F020)     # $at = 80B50000
    lwc1    $f16, %lo(var_80B4F020)($at)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    mul.s   $f18, $f0, $f16
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    sw      $zero, 0x0010($sp)
    trunc.w.s $f4, $f18
    mfc1    a1, $f4
    nop
    sll     a1, a1, 16
    jal     func_80064508
    sra     a1, a1, 16
    lhu     v0, 0x0088(s0)             # 00000088
    lh      t7, 0x00B6(s0)             # 000000B6
    addiu   t1, $zero, 0x0003          # t1 = 00000003
    andi    t8, v0, 0x0008             # t8 = 00000000
    beq     t8, $zero, lbl_80B4EBE0
    sh      t7, 0x0032(s0)             # 00000032
    andi    t9, v0, 0x0001             # t9 = 00000000
    beq     t9, $zero, lbl_80B4EBE0
    lui     $at, 0x4110                # $at = 41100000
    mtc1    $at, $f6                   # $f6 = 9.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    swc1    $f6, 0x0060(s0)            # 00000060
    swc1    $f8, 0x0068(s0)            # 00000068
lbl_80B4EBE0:
    lh      t0, 0x0232(s0)             # 00000232
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x387F          # a1 = 0000387F
    bnel    t0, $zero, lbl_80B4EC00
    lwc1    $f0, 0x002C($sp)
    jal     func_80022FD0
    sh      t1, 0x0232(s0)             # 00000232
    lwc1    $f0, 0x002C($sp)
lbl_80B4EC00:
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f2                   # $f2 = 5.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    lwc1    $f0, 0x0028($sp)
    bc1fl   lbl_80B4EC9C
    lw      $ra, 0x0024($sp)
    abs.s   $f0, $f0
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_80B4EC9C
    lw      $ra, 0x0024($sp)
    lh      t2, 0x0242(s0)             # 00000242
    lwc1    $f10, 0x0220(s0)           # 00000220
    lwc1    $f16, 0x0228(s0)           # 00000228
    swc1    $f10, 0x0024(s0)           # 00000024
    beq     t2, $zero, lbl_80B4EC80
    swc1    $f16, 0x002C(s0)           # 0000002C
    lw      v0, 0x0248(s0)             # 00000248
    lw      t3, 0x0130(v0)             # 00000130
    beql    t3, $zero, lbl_80B4EC84
    mtc1    $zero, $f18                # $f18 = 0.00
    lh      t4, 0x0148(v0)             # 00000148
    addiu   t5, $zero, 0x0004          # t5 = 00000004
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    bnel    t4, $zero, lbl_80B4EC84
    mtc1    $zero, $f18                # $f18 = 0.00
    sh      t5, 0x0148(v0)             # 00000148
    lw      t7, 0x0248(s0)             # 00000248
    addiu   a0, $zero, 0x081A          # a0 = 0000081A
    jal     func_800CAA70
    sh      t6, 0x014A(t7)             # 0000014A
lbl_80B4EC80:
    mtc1    $zero, $f18                # $f18 = 0.00
lbl_80B4EC84:
    lui     t8, %hi(func_80B4E3A0)     # t8 = 80B50000
    addiu   t8, t8, %lo(func_80B4E3A0) # t8 = 80B4E3A0
    sb      $zero, 0x022C(s0)          # 0000022C
    sw      t8, 0x021C(s0)             # 0000021C
    swc1    $f18, 0x0068(s0)           # 00000068
    lw      $ra, 0x0024($sp)
lbl_80B4EC9C:
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_80B4ECAC:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    lui     a1, 0x3C75                 # a1 = 3C750000
    ori     a1, a1, 0xC28F             # a1 = 3C75C28F
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x0236(s0)             # 00000236
    lh      v0, 0x0230(s0)             # 00000230
    addiu   t7, t6, 0x0001             # t7 = 00000001
    slti    $at, v0, 0x0002
    bne     $at, $zero, lbl_80B4ECF4
    sh      t7, 0x0236(s0)             # 00000236
    beq     v0, $zero, lbl_80B4ECF4
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x0230(s0)             # 00000230
lbl_80B4ECF4:
    lh      v0, 0x0232(s0)             # 00000232
    beq     v0, $zero, lbl_80B4ED04
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x0232(s0)             # 00000232
lbl_80B4ED04:
    lh      v0, 0x0234(s0)             # 00000234
    beq     v0, $zero, lbl_80B4ED14
    addiu   t0, v0, 0xFFFF             # t0 = FFFFFFFF
    sh      t0, 0x0234(s0)             # 00000234
lbl_80B4ED14:
    lh      v0, 0x023E(s0)             # 0000023E
    addiu   v1, $zero, 0x0001          # v1 = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80B4ED88
    lhu     t5, 0x010E(s0)             # 0000010E
    beq     v0, v1, lbl_80B4ED50
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     v0, $at, lbl_80B4ED68
    lui     t3, %hi(func_80B4E3A0)     # t3 = 80B50000
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     v0, $at, lbl_80B4ED7C
    lui     t4, %hi(func_80B4EA84)     # t4 = 80B50000
    b       lbl_80B4ED88
    lhu     t5, 0x010E(s0)             # 0000010E
lbl_80B4ED50:
    lui     t2, %hi(func_80B4DEF4)     # t2 = 80B50000
    addiu   t2, t2, %lo(func_80B4DEF4) # t2 = 80B4DEF4
    sb      t1, 0x022C(s0)             # 0000022C
    sh      v1, 0x022E(s0)             # 0000022E
    b       lbl_80B4ED84
    sw      t2, 0x021C(s0)             # 0000021C
lbl_80B4ED68:
    addiu   t3, t3, %lo(func_80B4E3A0) # t3 = 80B4E3A0
    sb      $zero, 0x022C(s0)          # 0000022C
    sh      $zero, 0x022E(s0)          # 0000022E
    b       lbl_80B4ED84
    sw      t3, 0x021C(s0)             # 0000021C
lbl_80B4ED7C:
    addiu   t4, t4, %lo(func_80B4EA84) # t4 = 80B4EA84
    sw      t4, 0x021C(s0)             # 0000021C
lbl_80B4ED84:
    lhu     t5, 0x010E(s0)             # 0000010E
lbl_80B4ED88:
    beql    t5, $zero, lbl_80B4ED9C
    lh      t6, 0x023E(s0)             # 0000023E
    jal     func_80020F04
    lui     a1, 0x41F0                 # a1 = 41F00000
    lh      t6, 0x023E(s0)             # 0000023E
lbl_80B4ED9C:
    beql    t6, $zero, lbl_80B4EDAC
    lh      t7, 0x0234(s0)             # 00000234
    sh      $zero, 0x023E(s0)          # 0000023E
    lh      t7, 0x0234(s0)             # 00000234
lbl_80B4EDAC:
    bnel    t7, $zero, lbl_80B4EDF4
    lw      t9, 0x021C(s0)             # 0000021C
    lh      t8, 0x023C(s0)             # 0000023C
    addiu   t9, t8, 0x0001             # t9 = 00000001
    sh      t9, 0x023C(s0)             # 0000023C
    lh      t0, 0x023C(s0)             # 0000023C
    slti    $at, t0, 0x0003
    bne     $at, $zero, lbl_80B4EDF0
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sh      $zero, 0x023C(s0)          # 0000023C
    trunc.w.s $f4, $f0
    mfc1    t4, $f4
    nop
    addiu   t5, t4, 0x0014             # t5 = 00000014
    sh      t5, 0x0234(s0)             # 00000234
lbl_80B4EDF0:
    lw      t9, 0x021C(s0)             # 0000021C
lbl_80B4EDF4:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f0                   # $f0 = 20.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    addiu   t6, $zero, 0x001D          # t6 = 0000001D
    mfc1    a2, $f0
    mfc1    a3, $f0
    sw      t6, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f6, 0x0010($sp)
    addiu   a2, s0, 0x024C             # a2 = 0000024C
    or      a1, a2, $zero              # a1 = 0000024C
    sw      a2, 0x0028($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t7, 0x022C(s0)             # 0000022C
    lw      a2, 0x0028($sp)
    lw      a0, 0x003C($sp)
    beq     t7, $zero, lbl_80B4EE70
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
lbl_80B4EE70:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_80B4EE84:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      s1, 0x0020($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s1, a0, $zero              # s1 = 00000000
    jal     func_800AA6EC
    nop
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lh      t9, 0x023C(s0)             # 0000023C
    lui     t0, %hi(var_80B4F00C)      # t0 = 80B50000
    lui     t6, 0x8012                 # t6 = 80120000
    sll     t1, t9,  2
    addu    t0, t0, t1
    lw      t0, %lo(var_80B4F00C)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t3, t0,  4
    srl     t4, t3, 28
    sll     t5, t4,  2
    addu    t6, t6, t5
    lw      t6, 0x0C38(t6)             # 80120C38
    and     t2, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t7, t2, t6
    addu    t8, t7, $at
    sw      t8, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    sw      s0, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    lw      a0, 0x002C($sp)
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_800AA724
    nop
    lwc1    $f12, 0x0220(s0)           # 00000220
    lwc1    $f14, 0x0224(s0)           # 00000224
    lw      a2, 0x0228(s0)             # 00000228
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lui     $at, %hi(var_80B4F024)     # $at = 80B50000
    lwc1    $f12, %lo(var_80B4F024)($at)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      s0, 0x02C0(s1)             # 000002C0
    lui     t1, 0xDA38                 # t1 = DA380000
    ori     t1, t1, 0x0003             # t1 = DA380003
    addiu   t9, s0, 0x0008             # t9 = 00000008
    sw      t9, 0x02C0(s1)             # 000002C0
    sw      t1, 0x0000(s0)             # 00000000
    lw      t3, 0x002C($sp)
    jal     func_800AB900
    lw      a0, 0x0000(t3)             # 00000000
    sw      v0, 0x0004(s0)             # 00000004
    lw      v1, 0x02C0(s1)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x2310             # t2 = 06002310
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s1)             # 000002C0
    lui     t5, 0xDE00                 # t5 = DE000000
    sw      t5, 0x0000(v1)             # 00000000
    sw      t2, 0x0004(v1)             # 00000004
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0028           # $sp += 0x28

.section .data

var_80B4EFC0: .word 0x01A20400, 0x00000019, 0x01710000, 0x00000298
.word func_80B4DC40
.word func_80B4DD20
.word func_80B4ECAC
.word func_80B4EE84
var_80B4EFE0: .word \
0x0A000039, 0x20010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x001E0050, 0x00000000, 0x00000000
var_80B4F00C: .word \
0x060030A0, 0x06002EA0, 0x06003020, 0x00000000, \
0x00000000

.section .rodata

var_80B4F020: .word 0x4622F983
var_80B4F024: .word 0x3C23D70A, 0x00000000, 0x00000000

