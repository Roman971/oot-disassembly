# "Player Health" part of the code file
#
# Handles the player's health.
#
# Starts at VRAM: 800647D0 / VROM: ADA730
#

.section .text
func_800647D0:
# Potentially Initialize hud to default values?
# Possibly Heart Hud based on locality/values read in
# A0 = Global Context
    lui     t1, 0x8012                 # t1 = 80120000
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBD50             # t2 = 8011BD50
    addiu   t1, t1, 0xBD40             # t1 = 8011BD40
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   a1, $zero, 0x0046          # a1 = 00000046
    addiu   a2, $zero, 0x0032          # a2 = 00000032
    addiu   a3, $zero, 0x0028          # a3 = 00000028
    addiu   t0, $zero, 0x003C          # t0 = 0000003C
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    sh      t6, 0x0718(v0)             # 00000718
    lui     t7, 0x8012                 # t7 = 80120000
    lh      t7, -0x5A00(t7)            # 8011A600
    sh      $zero, 0x06EE(v0)          # 000006EE
    sh      $zero, 0x06F0(v0)          # 000006F0
    lh      t8, 0x06EE(v0)             # 000006EE
    lh      t9, 0x06F0(v0)             # 000006F0
    sh      t7, 0x0716(v0)             # 00000716
    sh      t8, 0x071A(v0)             # 0000071A
    sh      t9, 0x071C(v0)             # 0000071C
    sh      v1, 0x06FE(v0)             # 000006FE
    sh      a1, 0x0702(v0)             # 00000702
    sh      a2, 0x0706(v0)             # 00000706
    sh      a2, 0x070A(v0)             # 0000070A
    sh      a3, 0x070E(v0)             # 0000070E
    sh      t0, 0x0712(v0)             # 00000712
    sh      v1, 0x0700(v0)             # 00000700
    sh      a1, 0x0704(v0)             # 00000704
    sh      a2, 0x0708(v0)             # 00000708
    sh      a2, 0x070C(v0)             # 0000070C
    sh      a3, 0x0710(v0)             # 00000710
    sh      t0, 0x0714(v0)             # 00000714
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sh      v1, 0x0006(t1)             # 8011BD46
    sh      v1, 0x0008(t1)             # 8011BD48
    sh      v1, 0x000A(t1)             # 8011BD4A
    sh      t6, 0x0006(t2)             # 8011BD56
    sh      $zero, 0x0008(t2)          # 8011BD58
    sh      $zero, 0x000A(t2)          # 8011BD5A
    lh      t3, 0x0006(t1)             # 8011BD46
    lh      t4, 0x0008(t1)             # 8011BD48
    lh      t5, 0x000A(t1)             # 8011BD4A
    lh      t7, 0x0006(t2)             # 8011BD56
    lh      t8, 0x0008(t2)             # 8011BD58
    lh      t9, 0x000A(t2)             # 8011BD5A
    sh      t3, 0x0000(t1)             # 8011BD40
    sh      t4, 0x0002(t1)             # 8011BD42
    sh      t5, 0x0004(t1)             # 8011BD44
    sh      t7, 0x0000(t2)             # 8011BD50
    sh      t8, 0x0002(t2)             # 8011BD52
    sh      t9, 0x0004(t2)             # 8011BD54
    jr      $ra
    nop


func_800648AC:
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lh      t6, 0x06EE(t6)             # 000106EE
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A70($at)           # 80107A70
    mtc1    t6, $f4                    # $f4 = 0.00
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    cvt.s.w $f6, $f4
    addu    v0, a0, $at
    lh      t7, 0x0200(v0)             # 00000200
    addiu   a0, $zero, 0x0032          # a0 = 00000032
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    mul.s   $f0, $f6, $f8
    beql    t7, $zero, lbl_80064914
    lh      t4, 0x01FE(v0)             # 000001FE
    lh      t8, 0x01FE(v0)             # 000001FE
    addiu   t9, t8, 0xFFFF             # t9 = FFFFFFFF
    sh      t9, 0x01FE(v0)             # 000001FE
    lh      t3, 0x01FE(v0)             # 000001FE
    bgtzl   t3, lbl_80064940
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    sh      $zero, 0x01FE(v0)          # 000001FE
    beq     $zero, $zero, lbl_8006493C
    sh      $zero, 0x0200(v0)          # 00000200
    lh      t4, 0x01FE(v0)             # 000001FE
lbl_80064914:
    addiu   t7, $zero, 0x000A          # t7 = 0000000A
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t5, t4, 0x0001             # t5 = 00000001
    sh      t5, 0x01FE(v0)             # 000001FE
    lh      t6, 0x01FE(v0)             # 000001FE
    slti    $at, t6, 0x000A
    bnel    $at, $zero, lbl_80064940
    addiu   t9, $zero, 0x0046          # t9 = 00000046
    sh      t7, 0x01FE(v0)             # 000001FE
    sh      t8, 0x0200(v0)             # 00000200
lbl_8006493C:
    addiu   t9, $zero, 0x0046          # t9 = 00000046
lbl_80064940:
    addiu   t3, $zero, 0x0028          # t3 = 00000028
    addiu   t4, $zero, 0x003C          # t4 = 0000003C
    sh      a2, 0x020E(v0)             # 0000020E
    sh      t9, 0x0212(v0)             # 00000212
    sh      a0, 0x0216(v0)             # 00000216
    sh      a0, 0x021A(v0)             # 0000021A
    sh      t3, 0x021E(v0)             # 0000021E
    sh      t4, 0x0222(v0)             # 00000222
    lui     t5, 0x800F                 # t5 = 800F0000
    lh      t5, 0x1A20(t5)             # 800F1A20
    lui     t6, 0x800F                 # t6 = 800F0000
    lui     t7, 0x800F                 # t7 = 800F0000
    sh      t5, 0x0210(v0)             # 00000210
    lh      t6, 0x1A22(t6)             # 800F1A22
    lui     t8, 0x800F                 # t8 = 800F0000
    lui     t9, 0x800F                 # t9 = 800F0000
    sh      t6, 0x0214(v0)             # 00000214
    lh      t7, 0x1A24(t7)             # 800F1A24
    lui     t3, 0x800F                 # t3 = 800F0000
    lui     a3, 0x800F                 # a3 = 800F0000
    sh      t7, 0x0218(v0)             # 00000218
    lh      t8, 0x1A34(t8)             # 800F1A34
    addiu   a3, a3, 0x1A48             # a3 = 800F1A48
    lui     t0, 0x800F                 # t0 = 800F0000
    sh      t8, 0x021C(v0)             # 0000021C
    lh      t9, 0x1A36(t9)             # 800F1A36
    addiu   t0, t0, 0x1A5C             # t0 = 800F1A5C
    lui     $at, 0x8012                # $at = 80120000
    sh      t9, 0x0220(v0)             # 00000220
    lh      t3, 0x1A38(t3)             # 800F1A38
    lui     t1, 0x8012                 # t1 = 80120000
    addiu   t1, t1, 0xBD30             # t1 = 8011BD30
    sh      t3, 0x0224(v0)             # 00000224
    lh      t4, 0x0000(a3)             # 800F1A48
    lh      t6, 0x0002(a3)             # 800F1A4A
    lh      t8, 0x0004(a3)             # 800F1A4C
    mtc1    t4, $f10                   # $f10 = 0.00
    mtc1    t6, $f6                    # $f6 = 0.00
    lui     a3, 0x8012                 # a3 = 80120000
    cvt.s.w $f16, $f10
    addiu   a3, a3, 0xBD40             # a3 = 8011BD40
    lui     t2, 0x8012                 # t2 = 80120000
    addiu   t2, t2, 0xBD38             # t2 = 8011BD38
    cvt.s.w $f8, $f6
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mtc1    t8, $f18                   # $f18 = 0.00
    mul.s   $f10, $f8, $f0
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    cvt.s.w $f4, $f18
    sra     v1, v1, 16
    addiu   t4, v1, 0x00FF             # t4 = 000000FF
    andi    t5, t4, 0x00FF             # t5 = 000000FF
    sh      t5, 0x0202(v0)             # 00000202
    trunc.w.s $f16, $f10
    mul.s   $f6, $f4, $f0
    mfc1    a0, $f16
    nop
    sll     a0, a0, 16
    trunc.w.s $f8, $f6
    sra     a0, a0, 16
    addiu   t7, a0, 0x0046             # t7 = 00000078
    andi    t8, t7, 0x00FF             # t8 = 00000078
    mfc1    a1, $f8
    sh      t8, 0x0204(v0)             # 00000204
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   t3, a1, 0x0032             # t3 = 00000032
    andi    t4, t3, 0x00FF             # t4 = 00000032
    sh      t4, 0x0206(v0)             # 00000206
    lh      t5, 0x0000(t0)             # 800F1A5C
    lh      t7, 0x0002(t0)             # 800F1A5E
    lh      t9, 0x0004(t0)             # 800F1A60
    mtc1    t5, $f10                   # $f10 = 0.00
    mtc1    t7, $f6                    # $f6 = 0.00
    lui     t0, 0x8012                 # t0 = 80120000
    cvt.s.w $f16, $f10
    addiu   t0, t0, 0xBD50             # t0 = 8011BD50
    lui     t7, 0x800F                 # t7 = 800F0000
    lui     t3, 0x800F                 # t3 = 800F0000
    cvt.s.w $f8, $f6
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mtc1    t9, $f18                   # $f18 = 0.00
    mul.s   $f10, $f8, $f0
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    cvt.s.w $f4, $f18
    sra     v1, v1, 16
    addiu   t5, v1, 0x0032             # t5 = 00000032
    andi    t6, t5, 0x00FF             # t6 = 00000032
    sh      t6, 0x0208(v0)             # 00000208
    trunc.w.s $f16, $f10
    mul.s   $f6, $f4, $f0
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    mfc1    a0, $f16
    nop
    sll     a0, a0, 16
    trunc.w.s $f8, $f6
    sra     a0, a0, 16
    addiu   t8, a0, 0x0028             # t8 = 0000005A
    andi    t9, t8, 0x00FF             # t9 = 0000005A
    mfc1    a1, $f8
    sh      t9, 0x020A(v0)             # 0000020A
    lui     t8, 0x800F                 # t8 = 800F0000
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   t4, a1, 0x003C             # t4 = 0000003C
    andi    t5, t4, 0x00FF             # t5 = 0000003C
    sh      t5, 0x020C(v0)             # 0000020C
    sh      t6, 0x0000(t0)             # 8011BD50
    sh      a2, 0x0000(a3)             # 8011BD40
    sh      a2, 0x0002(a3)             # 8011BD42
    sh      a2, 0x0004(a3)             # 8011BD44
    sh      $zero, 0x0002(t0)          # 8011BD52
    sh      $zero, 0x0004(t0)          # 8011BD54
    lui     t6, 0x800F                 # t6 = 800F0000
    lh      t6, 0x1A98(t6)             # 800F1A98
    lh      t7, 0x1A70(t7)             # 800F1A70
    lh      t8, 0x1A72(t8)             # 800F1A72
    mtc1    t6, $f10                   # $f10 = 0.00
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x1A74(t9)             # 800F1A74
    cvt.s.w $f16, $f10
    sh      t7, -0x42BA($at)           # 8011BD46
    lui     $at, 0x8012                # $at = 80120000
    lh      t3, 0x1A84(t3)             # 800F1A84
    sh      t8, -0x42B8($at)           # 8011BD48
    lui     t8, 0x800F                 # t8 = 800F0000
    mul.s   $f18, $f16, $f0
    sh      t9, -0x42B6($at)           # 8011BD4A
    lh      t8, 0x1A9A(t8)             # 800F1A9A
    lui     $at, 0x8012                # $at = 80120000
    sh      t3, -0x42AA($at)           # 8011BD56
    lui     t3, 0x800F                 # t3 = 800F0000
    lh      t3, 0x1A9C(t3)             # 800F1A9C
    mtc1    t8, $f6                    # $f6 = 0.00
    trunc.w.s $f4, $f18
    mtc1    t3, $f18                   # $f18 = 0.00
    lui     t5, 0x800F                 # t5 = 800F0000
    cvt.s.w $f8, $f6
    mfc1    v1, $f4
    lh      t5, 0x1A88(t5)             # 800F1A88
    lui     t4, 0x800F                 # t4 = 800F0000
    lh      t4, 0x1A86(t4)             # 800F1A86
    cvt.s.w $f4, $f18
    mul.s   $f10, $f8, $f0
    sll     v1, v1, 16
    lui     $at, 0x8012                # $at = 80120000
    sra     v1, v1, 16
    addiu   t6, v1, 0x00FF             # t6 = 000000FF
    mul.s   $f6, $f4, $f0
    sh      t5, -0x42A6($at)           # 8011BD5A
    andi    t7, t6, 0x00FF             # t7 = 000000FF
    sh      t4, -0x42A8($at)           # 8011BD58
    sh      t7, 0x0000(t1)             # 8011BD30
    lui     t7, 0x800F                 # t7 = 800F0000
    trunc.w.s $f16, $f10
    lui     t4, 0x800F                 # t4 = 800F0000
    trunc.w.s $f8, $f6
    mfc1    a0, $f16
    mfc1    a1, $f8
    sll     a0, a0, 16
    sra     a0, a0, 16
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   t9, a0, 0x00FF             # t9 = 00000131
    addiu   t5, a1, 0x00FF             # t5 = 000000FF
    andi    t3, t9, 0x00FF             # t3 = 00000031
    andi    t6, t5, 0x00FF             # t6 = 000000FF
    sh      t3, 0x0002(t1)             # 8011BD32
    sh      t6, 0x0004(t1)             # 8011BD34
    lh      t7, 0x1AAC(t7)             # 800F1AAC
    lui     t9, 0x800F                 # t9 = 800F0000
    lh      t9, 0x1AAE(t9)             # 800F1AAE
    mtc1    t7, $f10                   # $f10 = 0.00
    lh      t4, 0x1AB0(t4)             # 800F1AB0
    mtc1    t9, $f6                    # $f6 = 0.00
    cvt.s.w $f16, $f10
    cvt.s.w $f8, $f6
    mul.s   $f18, $f16, $f0
    trunc.w.s $f4, $f18
    mtc1    t4, $f18                   # $f18 = 0.00
    mul.s   $f10, $f8, $f0
    mfc1    v1, $f4
    nop
    sll     v1, v1, 16
    cvt.s.w $f4, $f18
    sra     v1, v1, 16
    addiu   t7, v1, 0x00C8             # t7 = 000000C8
    andi    t8, t7, 0x00FF             # t8 = 000000C8
    sh      t8, 0x0000(t2)             # 8011BD38
    trunc.w.s $f16, $f10
    mul.s   $f6, $f4, $f0
    mfc1    a0, $f16
    nop
    sll     a0, a0, 16
    trunc.w.s $f8, $f6
    sra     t9, a0, 16
    andi    t3, t9, 0x00FF             # t3 = 00000000
    sh      t3, 0x0002(t2)             # 8011BD3A
    mfc1    a1, $f8
    nop
    sll     a1, a1, 16
    sra     t4, a1, 16
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sh      t5, 0x0004(t2)             # 8011BD3C
    jr      $ra
    nop


func_80064C90:
    lui     t6, 0x0001                 # t6 = 00010000
    addu    t6, t6, a0
    lh      t6, 0x0716(t6)             # 00010716
    lui     $at, 0x8012                # $at = 80120000
    addiu   v0, $zero, 0x0001          # v0 = 00000001
    sh      t6, -0x5A00($at)           # 8011A600
    jr      $ra
    nop


func_80064CB0:
    lui     $at, 0x0001                # $at = 00010000
    addu    v0, a0, $at
    lh      t7, 0x0716(v0)             # 00000716
    addiu   t6, $zero, 0x0140          # t6 = 00000140
    sh      t6, 0x0718(v0)             # 00000718
    addiu   t8, t7, 0x0010             # t8 = 00000010
    sh      t8, 0x0716(v0)             # 00000716
    lui     v1, 0x8012                 # v1 = 80120000
    lh      v1, -0x5A00(v1)            # 8011A600
    lh      t9, 0x0716(v0)             # 00000716
    or      v0, $zero, $zero           # v0 = 00000000
    slt     $at, t9, v1
    bne     $at, $zero, lbl_80064CF8
    lui     $at, 0x0001                # $at = 00010000
    addu    $at, $at, a0
    sh      v1, 0x0716($at)            # 00010716
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80064CF8:
    jr      $ra
    nop


func_80064D00:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a0, $at
    lh      t6, 0x0718(v1)             # 00000718
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    beq     t6, $zero, lbl_80064D40
    addu    v0, a0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, $at
    lh      t7, 0x0228(v0)             # 00000228
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    beq     $zero, $zero, lbl_80064D84
    sh      t8, 0x0228(v0)             # 00000228
lbl_80064D40:
    lh      t0, 0x0226(v0)             # 00000226
    addiu   t9, $zero, 0x0140          # t9 = 00000140
    sh      t9, 0x0228(v0)             # 00000228
    addiu   t1, t0, 0xFFF0             # t1 = FFFFFFF0
    sh      t1, 0x0226(v0)             # 00000226
    lh      t2, 0x0226(v0)             # 00000226
    lui     t3, 0x8012                 # t3 = 80120000
    bgtzl   t2, lbl_80064D88
    or      v0, $zero, $zero           # v0 = 00000000
    sh      $zero, 0x0226(v0)          # 00000226
    lw      t9, 0x1D58(v1)             # 00001D58
    lh      t3, -0x5A00(t3)            # 8011A600
    addiu   t4, $zero, 0xFFFF          # t4 = FFFFFFFF
    jalr    $ra, t9
    subu    a1, t4, t3
    beq     $zero, $zero, lbl_80064D88
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80064D84:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80064D88:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80064D98:
# parameter_static texture: 4/4 Regular Heart & 4/4 Double Defense Heart
    addiu   $sp, $sp, 0xFE70           # $sp = FFFFFE70
    lui     a2, 0x8012                 # a2 = 80120000
    addiu   a2, a2, 0xA5D0             # a2 = 8011A5D0
    sw      $ra, 0x005C($sp)
    sw      s8, 0x0058($sp)
    sw      s7, 0x0054($sp)
    sw      s6, 0x0050($sp)
    sw      s5, 0x004C($sp)
    sw      s4, 0x0048($sp)
    sw      s3, 0x0044($sp)
    sw      s2, 0x0040($sp)
    sw      s1, 0x003C($sp)
    sw      s0, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    sdc1    $f20, 0x0028($sp)
    lui     $at, 0x0001                # $at = 00010000
    lh      v1, 0x0030(a2)             # 8011A600
    addu    v0, a0, $at
    lw      t6, 0x061C(v0)             # 0000061C
    lw      s0, 0x0000(a0)             # 00000000
    lh      a3, 0x002E(a2)             # 8011A5FE
    sw      t6, 0x014C($sp)
    bgez    v1, lbl_80064E04
    andi    a1, v1, 0x000F             # a1 = 00000000
    beq     a1, $zero, lbl_80064E04
    nop
    addiu   a1, a1, 0xFFF0             # a1 = FFFFFFF0
lbl_80064E04:
    sw      a1, 0x0148($sp)
    lh      t7, 0x071A(v0)             # 0000071A
    bgez    a3, lbl_80064E18
    addu    $at, a3, $zero
    addiu   $at, a3, 0x000F            # $at = 0000000F
lbl_80064E18:
    sra     a3, $at,  4
    mtc1    t7, $f4                    # $f4 = 0.00
    lb      t3, 0x00CF(a2)             # 8011A69F
    sll     a3, a3, 16
    cvt.s.w $f6, $f4
    sra     a3, a3, 16
    bgez    v1, lbl_80064E40
    sra     s4, v1,  4
    addiu   $at, v1, 0x000F            # $at = 0000000F
    sra     s4, $at,  4
lbl_80064E40:
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f8, 0x7A74($at)           # 80107A74
    sll     s4, s4, 16
    sra     s4, s4, 16
    mul.s   $f10, $f6, $f8
    sw      $zero, 0x0138($sp)
    sw      $zero, 0x0134($sp)
    addiu   s3, $zero, 0xFFFF          # s3 = FFFFFFFF
    lui     s8, 0xFA00                 # s8 = FA000000
    lui     s7, 0x8012                 # s7 = 80120000
    addiu   t3, t3, 0xFFFF             # t3 = FFFFFFFF
    swc1    $f10, 0x013C($sp)
    bne     a1, $zero, lbl_80064E84
    addiu   s7, s7, 0xBD50             # s7 = 8011BD50
    addiu   s4, s4, 0xFFFF             # s4 = FFFFFFFF
    sll     s4, s4, 16
    sra     s4, s4, 16
lbl_80064E84:
    mtc1    $zero, $f22                # $f22 = 0.00
    mtc1    $zero, $f20                # $f20 = 0.00
    blez    a3, lbl_800659DC
    or      s2, $zero, $zero           # s2 = 00000000
    lui     s6, 0x8012                 # s6 = 80120000
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x04F0             # t0 = 000104F0
    addiu   s6, s6, 0xBD40             # s6 = 8011BD40
    sw      a0, 0x0190($sp)
    sh      a3, 0x0146($sp)
    lui     s5, 0xE700                 # s5 = E7000000
    or      t2, a0, $zero              # t2 = 00000000
    lui     t1, 0xFB00                 # t1 = FB000000
lbl_80064EB8:
    bltz    t3, lbl_80064EC4
    slt     $at, t3, s2
    beq     $at, $zero, lbl_800651EC
lbl_80064EC4:
    slt     $at, s2, s4
    beq     $at, $zero, lbl_80064F84
    nop
    beql    s3, $zero, lbl_800651B4
    slt     $at, s2, s4
    or      s3, $zero, $zero           # s3 = 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addu    v1, t2, t0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t4, 0x0216(v1)             # 00000216
    lh      t8, 0x020E(v1)             # 0000020E
    andi    t5, t4, 0x00FF             # t5 = 00000000
    sll     t6, t5,  8
    lh      t5, 0x0212(v1)             # 00000212
    sll     t9, t8, 24
    or      t4, t6, t9                 # t4 = 00000008
    lhu     t9, 0x0250(v1)             # 00000250
    andi    t7, t5, 0x00FF             # t7 = 00000000
    sll     t8, t7, 16
    or      t6, t4, t8                 # t6 = 00000008
    andi    t5, t9, 0x00FF             # t5 = 00000008
    or      t7, t6, t5                 # t7 = 00000008
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t8, 0x0222(v1)             # 00000222
    lh      t7, 0x021A(v1)             # 0000021A
    andi    t9, t8, 0x00FF             # t9 = 00000008
    sll     t6, t9,  8
    lh      t9, 0x021E(v1)             # 0000021E
    sll     t4, t7, 24
    or      t8, t6, t4                 # t8 = 00000008
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t7, t5, 16
    or      t6, t8, t7                 # t6 = 00000008
    ori     t4, t6, 0x00FF             # t4 = 000000FF
    sw      t4, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800651B4
    slt     $at, s2, s4
lbl_80064F84:
    bne     s4, s2, lbl_80065044
    slt     $at, s4, s2
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beql    s3, $at, lbl_800651B4
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0001          # s3 = 00000001
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addu    v1, t2, t0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t8, 0x0206(v1)             # 00000206
    lh      t9, 0x0202(v1)             # 00000202
    andi    t7, t8, 0x00FF             # t7 = 00000008
    sll     t6, t7,  8
    lh      t7, 0x0204(v1)             # 00000204
    sll     t5, t9, 24
    or      t8, t6, t5                 # t8 = 00000008
    lhu     t5, 0x0250(v1)             # 00000250
    andi    t4, t7, 0x00FF             # t4 = 00000008
    sll     t9, t4, 16
    or      t6, t8, t9                 # t6 = 00000008
    andi    t7, t5, 0x00FF             # t7 = 00000008
    or      t4, t6, t7                 # t4 = 00000008
    sw      t4, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t9, 0x020C(v1)             # 0000020C
    lh      t4, 0x0208(v1)             # 00000208
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t6, t5,  8
    lh      t5, 0x020A(v1)             # 0000020A
    sll     t8, t4, 24
    or      t9, t6, t8                 # t9 = 00000008
    andi    t7, t5, 0x00FF             # t7 = 00000008
    sll     t4, t7, 16
    or      t6, t9, t4                 # t6 = 00000008
    ori     t8, t6, 0x00FF             # t8 = 000000FF
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800651B4
    slt     $at, s2, s4
lbl_80065044:
    beq     $at, $zero, lbl_80065100
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beql    s3, $at, lbl_800651B4
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0002          # s3 = 00000002
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addu    v1, t2, t0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t9, 0x0216(v1)             # 00000216
    lh      t5, 0x020E(v1)             # 0000020E
    andi    t4, t9, 0x00FF             # t4 = 00000008
    sll     t6, t4,  8
    lh      t4, 0x0212(v1)             # 00000212
    sll     t7, t5, 24
    or      t9, t6, t7                 # t9 = 00000008
    lhu     t7, 0x0250(v1)             # 00000250
    andi    t8, t4, 0x00FF             # t8 = 00000008
    sll     t5, t8, 16
    or      t6, t9, t5                 # t6 = 00000008
    andi    t4, t7, 0x00FF             # t4 = 00000008
    or      t8, t6, t4                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t5, 0x0222(v1)             # 00000222
    lh      t8, 0x021A(v1)             # 0000021A
    andi    t7, t5, 0x00FF             # t7 = 00000008
    sll     t6, t7,  8
    lh      t7, 0x021E(v1)             # 0000021E
    sll     t9, t8, 24
    or      t5, t6, t9                 # t5 = 00000008
    andi    t4, t7, 0x00FF             # t4 = 00000008
    sll     t8, t4, 16
    or      t6, t5, t8                 # t6 = 00000008
    ori     t9, t6, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800651B4
    slt     $at, s2, s4
lbl_80065100:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beql    s3, $at, lbl_800651B4
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0003          # s3 = 00000003
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addu    v1, t2, t0
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t5, 0x0218(v1)             # 00000218
    lh      t7, 0x0210(v1)             # 00000210
    andi    t8, t5, 0x00FF             # t8 = 00000008
    sll     t6, t8,  8
    lh      t8, 0x0214(v1)             # 00000214
    sll     t4, t7, 24
    or      t5, t6, t4                 # t5 = 00000008
    lhu     t4, 0x0250(v1)             # 00000250
    andi    t9, t8, 0x00FF             # t9 = 00000008
    sll     t7, t9, 16
    or      t6, t5, t7                 # t6 = 00000008
    andi    t8, t4, 0x00FF             # t8 = 00000008
    or      t9, t6, t8                 # t9 = 00000008
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t7, 0x0224(v1)             # 00000224
    lh      t9, 0x021C(v1)             # 0000021C
    andi    t4, t7, 0x00FF             # t4 = 00000008
    sll     t6, t4,  8
    lh      t4, 0x0220(v1)             # 00000220
    sll     t5, t9, 24
    or      t7, t6, t5                 # t7 = 00000008
    andi    t8, t4, 0x00FF             # t8 = 00000008
    sll     t9, t8, 16
    or      t6, t7, t9                 # t6 = 00000008
    ori     t5, t6, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v0)             # 00000004
    slt     $at, s2, s4
lbl_800651B4:
    beq     $at, $zero, lbl_800651C4
    lui     v1, 0x0200                 # v1 = 02000000
    beq     $zero, $zero, lbl_80065520
    addiu   v1, v1, 0x0400             # v1 = 02000400
lbl_800651C4:
    bne     s4, s2, lbl_800651E4
    lui     v1, 0x0200                 # v1 = 02000000
    lw      t4, 0x0148($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    sll     t8, t4,  2
    addu    v1, v1, t8
    beq     $zero, $zero, lbl_80065520
    lw      v1, 0x1AC0(v1)             # 800F1AC0
lbl_800651E4:
    beq     $zero, $zero, lbl_80065520
    addiu   v1, v1, 0x0000             # v1 = 800F0000
lbl_800651EC:
    slt     $at, s2, s4
    beq     $at, $zero, lbl_800652B0
    lui     v1, 0x0200                 # v1 = 02000000
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beql    s3, $at, lbl_800654EC
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0004          # s3 = 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t6, 0x0004(s6)             # 8011BD44
    lh      t7, 0x0000(s6)             # 8011BD40
    andi    t5, t6, 0x00FF             # t5 = 00000008
    sll     t4, t5,  8
    lh      t5, 0x0002(s6)             # 8011BD42
    sll     t9, t7, 24
    or      t6, t4, t9                 # t6 = 00000008
    addu    t9, t2, t0
    andi    t8, t5, 0x00FF             # t8 = 00000008
    lhu     t5, 0x0250(t9)             # 00000258
    sll     t7, t8, 16
    or      t4, t6, t7                 # t4 = 00000008
    andi    t8, t5, 0x00FF             # t8 = 00000008
    or      t6, t4, t8                 # t6 = 00000008
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t9, 0x0004(s7)             # 8011BD54
    lh      t6, 0x0000(s7)             # 8011BD50
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t4, t5,  8
    lh      t5, 0x0002(s7)             # 8011BD52
    sll     t7, t6, 24
    or      t9, t4, t7                 # t9 = 00000008
    andi    t8, t5, 0x00FF             # t8 = 00000008
    sll     t6, t8, 16
    or      t4, t9, t6                 # t4 = 00000008
    ori     t7, t4, 0x00FF             # t7 = 000000FF
    sw      t7, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800654EC
    slt     $at, s2, s4
lbl_800652B0:
    bne     s4, s2, lbl_8006537C
    slt     $at, s4, s2
    addiu   $at, $zero, 0x0005         # $at = 00000005
    beq     s3, $at, lbl_800654E8
    lui     a2, 0x8012                 # a2 = 80120000
    lui     a3, 0x8012                 # a3 = 80120000
    addiu   a3, a3, 0xBD38             # a3 = 8011BD38
    addiu   a2, a2, 0xBD30             # a2 = 8011BD30
    addiu   s3, $zero, 0x0005          # s3 = 00000005
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t9, 0x0004(a2)             # 8011BD34
    lh      t5, 0x0000(a2)             # 8011BD30
    andi    t6, t9, 0x00FF             # t6 = 00000008
    sll     t4, t6,  8
    lh      t6, 0x0002(a2)             # 8011BD32
    sll     t8, t5, 24
    or      t9, t4, t8                 # t9 = 00000008
    addu    t8, t2, t0
    andi    t7, t6, 0x00FF             # t7 = 00000008
    lhu     t6, 0x0250(t8)             # 00000258
    sll     t5, t7, 16
    or      t4, t9, t5                 # t4 = 00000008
    andi    t7, t6, 0x00FF             # t7 = 00000008
    or      t9, t4, t7                 # t9 = 00000008
    sw      t9, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t8, 0x0004(a3)             # 8011BD3C
    lh      t9, 0x0000(a3)             # 8011BD38
    andi    t6, t8, 0x00FF             # t6 = 00000008
    sll     t4, t6,  8
    lh      t6, 0x0002(a3)             # 8011BD3A
    sll     t5, t9, 24
    or      t8, t4, t5                 # t8 = 00000008
    andi    t7, t6, 0x00FF             # t7 = 00000008
    sll     t9, t7, 16
    or      t4, t8, t9                 # t4 = 00000008
    ori     t5, t4, 0x00FF             # t5 = 000000FF
    sw      t5, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800654EC
    slt     $at, s2, s4
lbl_8006537C:
    beq     $at, $zero, lbl_80065438
    addiu   $at, $zero, 0x0006         # $at = 00000006
    beql    s3, $at, lbl_800654EC
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0006          # s3 = 00000006
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t8, 0x0004(s6)             # 8011BD44
    lh      t6, 0x0000(s6)             # 8011BD40
    andi    t9, t8, 0x00FF             # t9 = 00000008
    sll     t4, t9,  8
    lh      t9, 0x0002(s6)             # 8011BD42
    sll     t7, t6, 24
    or      t8, t4, t7                 # t8 = 00000008
    addu    t7, t2, t0
    andi    t5, t9, 0x00FF             # t5 = 00000008
    lhu     t9, 0x0250(t7)             # 00000258
    sll     t6, t5, 16
    or      t4, t8, t6                 # t4 = 00000008
    andi    t5, t9, 0x00FF             # t5 = 00000008
    or      t8, t4, t5                 # t8 = 00000008
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t7, 0x0004(s7)             # 8011BD54
    lh      t8, 0x0000(s7)             # 8011BD50
    andi    t9, t7, 0x00FF             # t9 = 00000008
    sll     t4, t9,  8
    lh      t9, 0x0002(s7)             # 8011BD52
    sll     t6, t8, 24
    or      t7, t4, t6                 # t7 = 00000008
    andi    t5, t9, 0x00FF             # t5 = 00000008
    sll     t8, t5, 16
    or      t4, t7, t8                 # t4 = 00000008
    ori     t6, t4, 0x00FF             # t6 = 000000FF
    sw      t6, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800654EC
    slt     $at, s2, s4
lbl_80065438:
    addiu   $at, $zero, 0x0007         # $at = 00000007
    beql    s3, $at, lbl_800654EC
    slt     $at, s2, s4
    addiu   s3, $zero, 0x0007          # s3 = 00000007
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      s8, 0x0000(v0)             # 00000000
    lh      t7, 0x000A(s6)             # 8011BD4A
    lh      t9, 0x0006(s6)             # 8011BD46
    andi    t8, t7, 0x00FF             # t8 = 00000008
    sll     t4, t8,  8
    lh      t8, 0x0008(s6)             # 8011BD48
    sll     t5, t9, 24
    or      t7, t4, t5                 # t7 = 00000008
    addu    t5, t2, t0
    andi    t6, t8, 0x00FF             # t6 = 00000008
    lhu     t8, 0x0250(t5)             # 00000258
    sll     t9, t6, 16
    or      t4, t7, t9                 # t4 = 00000008
    andi    t6, t8, 0x00FF             # t6 = 00000008
    or      t7, t4, t6                 # t7 = 00000008
    sw      t7, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t1, 0x0000(v0)             # 00000000
    lh      t5, 0x000A(s7)             # 8011BD5A
    lh      t7, 0x0006(s7)             # 8011BD56
    andi    t8, t5, 0x00FF             # t8 = 00000008
    sll     t4, t8,  8
    lh      t8, 0x0008(s7)             # 8011BD58
    sll     t9, t7, 24
    or      t5, t4, t9                 # t5 = 00000008
    andi    t6, t8, 0x00FF             # t6 = 00000008
    sll     t7, t6, 16
    or      t4, t5, t7                 # t4 = 00000008
    ori     t9, t4, 0x00FF             # t9 = 000000FF
    sw      t9, 0x0004(v0)             # 00000004
lbl_800654E8:
    slt     $at, s2, s4
lbl_800654EC:
    beq     $at, $zero, lbl_800654FC
    nop
    beq     $zero, $zero, lbl_80065520
    addiu   v1, v1, 0x0900             # v1 = 02000900
lbl_800654FC:
    bne     s4, s2, lbl_8006551C
    lui     v1, 0x0200                 # v1 = 02000000
    lw      t8, 0x0148($sp)
    lui     v1, 0x800F                 # v1 = 800F0000
    sll     t6, t8,  2
    addu    v1, v1, t6
    beq     $zero, $zero, lbl_80065520
    lw      v1, 0x1B00(v1)             # 800F1B00
lbl_8006551C:
    addiu   v1, v1, 0x0500             # v1 = 800F0500
lbl_80065520:
    lw      t5, 0x0134($sp)
    lui     $at, 0x8010                # $at = 80100000
    beq     t5, v1, lbl_800655F0
    nop
    sw      v1, 0x0134($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t4, 0xFD70                 # t4 = FD700000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      v1, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0xF570                 # t8 = F5700000
    lui     t6, 0x0700                 # t6 = 07000000
    addiu   t9, v0, 0x0008             # t9 = 00000008
    sw      t9, 0x02B0(s0)             # 000002B0
    sw      t6, 0x0004(v0)             # 00000004
    sw      t8, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t7, 0xE600                 # t7 = E6000000
    lui     t9, 0xF300                 # t9 = F3000000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0x0707                 # t8 = 07070000
    ori     t8, t8, 0xF400             # t8 = 0707F400
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xF200                 # t9 = F2000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      s5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t7, 0xF568                 # t7 = F5680000
    ori     t7, t7, 0x0400             # t7 = F5680400
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t7, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t8, 0x0003                 # t8 = 00030000
    ori     t8, t8, 0xC03C             # t8 = 0003C03C
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      t8, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
lbl_800655F0:
    beq     s4, s2, lbl_8006581C
    lwc1    $f6, 0x013C($sp)
    lui     $at, 0x41D0                # $at = 41D00000
    mtc1    $at, $f16                  # $f16 = 26.00
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f18                  # $f18 = 8.00
    lui     $at, 0x8010                # $at = 80100000
    lwc1    $f4, 0x7A78($at)           # 80107A78
    add.s   $f0, $f16, $f22
    lui     $at, 0x4080                # $at = 40800000
    mul.s   $f2, $f18, $f4
    mtc1    $at, $f8                   # $f8 = 4.00
    mtc1    $at, $f4                   # $f4 = 4.00
    lui     $at, 0x3F80                # $at = 3F800000
    lw      t5, 0x0138($sp)
    add.s   $f6, $f0, $f2
    sub.s   $f18, $f0, $f2
    mul.s   $f10, $f6, $f8
    trunc.w.s $f16, $f10
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x8010                # $at = 80100000
    mul.s   $f6, $f18, $f4
    mfc1    s1, $f16
    lwc1    $f16, 0x7A7C($at)          # 80107A7C
    lui     $at, 0x4480                # $at = 44800000
    mtc1    $at, $f4                   # $f4 = 1024.00
    slt     $at, t3, s2
    div.s   $f18, $f10, $f16
    andi    s1, s1, 0x0FFF             # s1 = 00000000
    trunc.w.s $f8, $f6
    mfc1    t7, $f8
    nop
    andi    t4, t7, 0x0FFF             # t4 = 00000400
    sw      t4, 0x006C($sp)
    mul.s   $f6, $f18, $f4
    trunc.w.s $f8, $f6
    mfc1    v0, $f8
    nop
    andi    v0, v0, 0xFFFF             # v0 = 00000000
    sll     t8, v0, 16
    or      t6, t8, v0                 # t6 = 0003C03C
    bltz    t3, lbl_800656A4
    sw      t6, 0x0064($sp)
    beq     $at, $zero, lbl_80065708
    lw      t6, 0x0138($sp)
lbl_800656A4:
    addiu   $at, $zero, 0x0001         # $at = 00000001
    beq     t5, $at, lbl_80065764
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sw      t7, 0x0138($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0130($sp)
    jal     func_8007E610
    swc1    $f2, 0x0074($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x04F0             # t0 = 000104F0
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      t2, 0x0190($sp)
    lw      t3, 0x0130($sp)
    lwc1    $f2, 0x0074($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xFC30                 # t9 = FC300000
    lui     t8, 0x552E                 # t8 = 552E0000
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    ori     t8, t8, 0xFF7F             # t8 = 552EFF7F
    ori     t9, t9, 0x9661             # t9 = FC309661
    sw      t9, 0x0000(v0)             # 00000000
    sw      t8, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_80065768
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80065708:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    beq     t6, $at, lbl_80065764
    addiu   t5, $zero, 0x0003          # t5 = 00000003
    sw      t5, 0x0138($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0130($sp)
    jal     func_8007E610
    swc1    $f2, 0x0074($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x04F0             # t0 = 000104F0
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      t2, 0x0190($sp)
    lw      t3, 0x0130($sp)
    lwc1    $f2, 0x0074($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t4, 0xFC50                 # t4 = FC500000
    lui     t9, 0x332D                 # t9 = 332D0000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    ori     t9, t9, 0xFEFF             # t9 = 332DFEFF
    ori     t4, t4, 0x96A1             # t4 = FC5096A1
    sw      t4, 0x0000(v0)             # 00000000
    sw      t9, 0x0004(v0)             # 00000004
lbl_80065764:
    lui     $at, 0x41F0                # $at = 41F00000
lbl_80065768:
    mtc1    $at, $f10                  # $f10 = 30.00
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f18                  # $f18 = 4.00
    add.s   $f0, $f10, $f20
    lui     $at, 0xE400                # $at = E4000000
    lw      v0, 0x02B0(s0)             # 000002B0
    add.s   $f16, $f0, $f2
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sub.s   $f8, $f0, $f2
    mul.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t5, $f6
    nop
    andi    t7, t5, 0x0FFF             # t7 = 00000000
    sll     t4, t7, 12
    or      t9, t4, $at                # t9 = FC5096A1
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f10                  # $f10 = 4.00
    or      t8, t9, s1                 # t8 = FC5096A1
    sw      t8, 0x0000(v0)             # 00000000
    mul.s   $f16, $f8, $f10
    lw      t9, 0x006C($sp)
    trunc.w.s $f18, $f16
    mfc1    t5, $f18
    nop
    andi    t7, t5, 0x0FFF             # t7 = 00000000
    sll     t4, t7, 12
    or      t8, t4, t9                 # t8 = FC5096A1
    sw      t8, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t5, 0xE100                 # t5 = E1000000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t5, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t4, 0xF100                 # t4 = F1000000
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t4, 0x0000(v0)             # 00000000
    lw      t9, 0x0064($sp)
    sw      t9, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800659AC
    lui     $at, 0x4120                # $at = 41200000
lbl_8006581C:
    lwc1    $f4, 0x7A80($at)           # 41207A80
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f10                  # $f10 = 1.00
    lui     $at, 0x42BD                # $at = 42BD0000
    mul.s   $f8, $f4, $f6
    mtc1    $at, $f16                  # $f16 = 94.50
    slt     $at, t3, s2
    lw      t8, 0x0138($sp)
    sub.s   $f18, $f16, $f22
    sub.s   $f0, $f10, $f8
    bltz    t3, lbl_80065854
    swc1    $f18, 0x0074($sp)
    beq     $at, $zero, lbl_800658A8
    lw      t9, 0x0138($sp)
lbl_80065854:
    addiu   $at, $zero, 0x0002         # $at = 00000002
    beq     t8, $at, lbl_800658F4
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0138($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0130($sp)
    jal     func_8007E890
    swc1    $f0, 0x0078($sp)
    lw      t3, 0x0130($sp)
    lwc1    $f0, 0x0078($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t7, 0xFC30                 # t7 = FC300000
    lui     t4, 0x552E                 # t4 = 552E0000
    addiu   t5, v0, 0x0008             # t5 = 00000008
    sw      t5, 0x02B0(s0)             # 000002B0
    ori     t4, t4, 0xFF7F             # t4 = 552EFF7F
    ori     t7, t7, 0x9661             # t7 = FC309661
    sw      t7, 0x0000(v0)             # 00000000
    sw      t4, 0x0004(v0)             # 00000004
    beq     $zero, $zero, lbl_800658F8
    lw      s1, 0x02C4(s0)             # 000002C4
lbl_800658A8:
    addiu   $at, $zero, 0x0004         # $at = 00000004
    beq     t9, $at, lbl_800658F4
    addiu   t8, $zero, 0x0004          # t8 = 00000004
    sw      t8, 0x0138($sp)
    or      a0, s0, $zero              # a0 = 00000000
    sw      t3, 0x0130($sp)
    jal     func_8007E890
    swc1    $f0, 0x0078($sp)
    lw      t3, 0x0130($sp)
    lwc1    $f0, 0x0078($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t5, 0xFC50                 # t5 = FC500000
    lui     t7, 0x332D                 # t7 = 332D0000
    addiu   t6, v0, 0x0008             # t6 = 00000008
    sw      t6, 0x02B0(s0)             # 000002B0
    ori     t7, t7, 0xFEFF             # t7 = 332DFEFF
    ori     t5, t5, 0x96A1             # t5 = FC5096A1
    sw      t5, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
lbl_800658F4:
    lw      s1, 0x02C4(s0)             # 000002C4
lbl_800658F8:
    lui     $at, 0xC302                # $at = C3020000
    mtc1    $at, $f4                   # $f4 = -130.00
    addiu   s1, s1, 0xFFC0             # s1 = FFFFFFC0
    sw      s1, 0x02C4(s0)             # 000002C4
    add.s   $f6, $f4, $f20
    lwc1    $f10, 0x0074($sp)
    mtc1    $zero, $f8                 # $f8 = 0.00
    mfc1    a1, $f0
    mfc1    a2, $f0
    mfc1    a3, $f0
    swc1    $f6, 0x0010($sp)
    sw      t3, 0x0130($sp)
    or      a0, s1, $zero              # a0 = FFFFFFC0
    swc1    $f10, 0x0014($sp)
    jal     func_800AC9B0
    swc1    $f8, 0x0018($sp)
    lui     t0, 0x0001                 # t0 = 00010000
    ori     t0, t0, 0x04F0             # t0 = 000104F0
    lui     t1, 0xFB00                 # t1 = FB000000
    lw      t2, 0x0190($sp)
    lw      t3, 0x0130($sp)
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t4, v0, 0x0008             # t4 = 00000008
    sw      t4, 0x02B0(s0)             # 000002B0
    sw      s1, 0x0004(v0)             # 00000004
    sw      t9, 0x0000(v0)             # 00000000
    lw      v0, 0x02B0(s0)             # 000002B0
    lui     t6, 0x0100                 # t6 = 01000000
    ori     t6, t6, 0x4008             # t6 = 01004008
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02B0(s0)             # 000002B0
    sw      t6, 0x0000(v0)             # 00000000
    lw      t5, 0x014C($sp)
    lui     t4, 0x0700                 # t4 = 07000000
    sw      t5, 0x0004(v0)             # 00000004
    lw      v0, 0x02B0(s0)             # 000002B0
    ori     t4, t4, 0x0406             # t4 = 07000406
    addiu   t9, $zero, 0x0602          # t9 = 00000602
    addiu   t7, v0, 0x0008             # t7 = 00000008
    sw      t7, 0x02B0(s0)             # 000002B0
    sw      t9, 0x0004(v0)             # 00000004
    sw      t4, 0x0000(v0)             # 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_800659AC:
    mtc1    $at, $f16                  # $f16 = 10.00
    addiu   $at, $zero, 0x0009         # $at = 00000009
    bne     s2, $at, lbl_800659CC
    add.s   $f20, $f20, $f16
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f18                  # $f18 = 10.00
    mtc1    $zero, $f20                # $f20 = 0.00
    add.s   $f22, $f22, $f18
lbl_800659CC:
    lh      t8, 0x0146($sp)
    addiu   s2, s2, 0x0001             # s2 = 00000001
    bne     s2, t8, lbl_80064EB8
    nop
lbl_800659DC:
    lw      $ra, 0x005C($sp)
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    lw      s0, 0x0038($sp)
    lw      s1, 0x003C($sp)
    lw      s2, 0x0040($sp)
    lw      s3, 0x0044($sp)
    lw      s4, 0x0048($sp)
    lw      s5, 0x004C($sp)
    lw      s6, 0x0050($sp)
    lw      s7, 0x0054($sp)
    lw      s8, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0190           # $sp = 00000000


func_80065A14:
# Heart Animation/Low Health SFX
# Low health beep timed with heartbeat animation
# A0 = Global Context
    addiu   $sp, $sp, 0xFFD8           # $sp = FFFFFFD8
    sw      $ra, 0x0014($sp)
    lui     $at, 0x0001                # $at = 00010000
    addu    v1, a0, $at
    lh      t6, 0x071C(v1)             # 0000071C
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    beq     t6, $zero, lbl_80065AC4
    addu    v0, a0, $at
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x04F0           # $at = 000104F0
    addu    v0, a0, $at
    lh      t7, 0x022A(v0)             # 0000022A
    addiu   t8, t7, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x022A(v0)             # 0000022A
    lh      t9, 0x022A(v0)             # 0000022A
    bgtzl   t9, lbl_80065AF4
    lw      $ra, 0x0014($sp)
    sh      $zero, 0x022A(v0)          # 0000022A
    sh      $zero, 0x022C(v0)          # 0000022C
    sw      a0, 0x0028($sp)
    jal     func_8007943C
    sw      v1, 0x001C($sp)
    lw      v1, 0x001C($sp)
    bne     v0, $zero, lbl_80065AF0
    lw      a0, 0x0028($sp)
    lhu     t0, 0x0934(v1)             # 00000934
    bnel    t0, $zero, lbl_80065AF4
    lw      $ra, 0x0014($sp)
    lhu     t1, 0x0936(v1)             # 00000936
    bnel    t1, $zero, lbl_80065AF4
    lw      $ra, 0x0014($sp)
    jal     func_80065B00
    sw      a0, 0x0028($sp)
    beq     v0, $zero, lbl_80065AF0
    lw      a0, 0x0028($sp)
    jal     func_8009CB08
    nop
    bnel    v0, $zero, lbl_80065AF4
    lw      $ra, 0x0014($sp)
    jal     func_800646F0
    addiu   a0, $zero, 0x481B          # a0 = 0000481B
    beq     $zero, $zero, lbl_80065AF4
    lw      $ra, 0x0014($sp)
lbl_80065AC4:
    lh      t2, 0x022A(v0)             # 0000022A
    addiu   t5, $zero, 0x000A          # t5 = 0000000A
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t3, t2, 0x0001             # t3 = 00000001
    sh      t3, 0x022A(v0)             # 0000022A
    lh      t4, 0x022A(v0)             # 0000022A
    slti    $at, t4, 0x000A
    bnel    $at, $zero, lbl_80065AF4
    lw      $ra, 0x0014($sp)
    sh      t5, 0x022A(v0)             # 0000022A
    sh      t6, 0x022C(v0)             # 0000022C
lbl_80065AF0:
    lw      $ra, 0x0014($sp)
lbl_80065AF4:
    addiu   $sp, $sp, 0x0028           # $sp = 00000000
    jr      $ra
    nop


func_80065B00:
# V0 = 0 if ? else 1
    lui     a0, 0x8012                 # a0 = 80120000
    addiu   a0, a0, 0xA5D0             # a0 = 8011A5D0
    lh      v0, 0x002E(a0)             # 8011A5FE
    slti    $at, v0, 0x0051
    beql    $at, $zero, lbl_80065B24
    slti    $at, v0, 0x00A1
    beq     $zero, $zero, lbl_80065B48
    addiu   v0, $zero, 0x0010          # v0 = 00000010
    slti    $at, v0, 0x00A1
lbl_80065B24:
    beql    $at, $zero, lbl_80065B38
    slti    $at, v0, 0x00F1
    beq     $zero, $zero, lbl_80065B48
    addiu   v0, $zero, 0x0018          # v0 = 00000018
    slti    $at, v0, 0x00F1
lbl_80065B38:
    beq     $at, $zero, lbl_80065B48
    addiu   v0, $zero, 0x002C          # v0 = 0000002C
    beq     $zero, $zero, lbl_80065B48
    addiu   v0, $zero, 0x0020          # v0 = 00000020
lbl_80065B48:
    lh      v1, 0x0030(a0)             # 8011A600
    slt     $at, v0, v1
    bne     $at, $zero, lbl_80065B68
    or      v0, $zero, $zero           # v0 = 00000000
    blez    v1, lbl_80065B68
    nop
    jr      $ra
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80065B68:
    jr      $ra
    nop
