.section .text
func_80B71E10:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_80B72AFC)      # a1 = 80B70000
    addiu   a1, a1, %lo(var_80B72AFC)  # a1 = 80B72AFC
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0198             # t6 = 00000198
    addiu   t7, s0, 0x01D4             # t7 = 000001D4
    addiu   t8, $zero, 0x000A          # t8 = 0000000A
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x0924             # a3 = 06000924
    addiu   a2, a2, 0x6A30             # a2 = 06006A30
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0228             # a1 = 00000228
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B72AD0)      # a3 = 80B70000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B72AD0)  # a3 = 80B72AD0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   v1, $zero, 0x00FF          # v1 = 000000FF
    addiu   t9, $zero, 0x00D2          # t9 = 000000D2
    sb      v1, 0x0210(s0)             # 00000210
    sb      v1, 0x0211(s0)             # 00000211
    sb      t9, 0x0212(s0)             # 00000212
    sb      v1, 0x0213(s0)             # 00000213
    addiu   a2, s0, 0x0218             # a2 = 00000218
    sw      a2, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0010(s0)           # 00000010
    trunc.w.s $f6, $f4
    sw      v0, 0x0214(s0)             # 00000214
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    mfc1    a3, $f18
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    jal     func_80065BCC
    lw      a0, 0x0034($sp)
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4214                 # a3 = 42140000
    lh      t8, 0x001C(s0)             # 0000001C
    lwc1    $f4, 0x0028(s0)            # 00000028
    addiu   t7, $zero, 0x0001          # t7 = 00000001
    sra     t9, t8,  8
    andi    t0, t9, 0x00FF             # t0 = 00000000
    sw      t7, 0x0188(s0)             # 00000188
    sh      t0, 0x001C(s0)             # 0000001C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jal     func_80B71FC8
    swc1    $f4, 0x0194(s0)            # 00000194
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_80B71F80:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    lw      a2, 0x0214(t6)             # 00000214
    jal     func_80066610
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0228             # a1 = 00000228
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B71FC8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lw      t6, 0x0024($sp)
    lui     t7, 0x0001                 # t7 = 00010000
    lh      t8, 0x001C(a3)             # 0000001C
    addu    t7, t7, t6
    lw      t7, 0x1E08(t7)             # 00011E08
    sll     t9, t8,  3
    lui     a1, 0x0600                 # a1 = 06000000
    addu    t0, t7, t9
    sw      t0, 0x001C($sp)
    addiu   a1, a1, 0x1360             # a1 = 06001360
    sw      a3, 0x0020($sp)
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    jal     func_8008D328
    lui     a2, 0xC0C0                 # a2 = C0C00000
    lw      t1, 0x001C($sp)
    lw      a0, 0x0020($sp)
    lui     t5, 0x8012                 # t5 = 80120000
    lw      v1, 0x0004(t1)             # 00000004
    lw      t7, 0x0188(a0)             # 00000188
    lui     $at, 0x00FF                # $at = 00FF0000
    sll     t2, v1,  4
    srl     t3, t2, 28
    sll     t4, t3,  2
    addu    t5, t5, t4
    lw      t5, 0x0C38(t5)             # 80120C38
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t9, t7,  2
    and     t6, v1, $at
    subu    t9, t9, t7
    sll     t9, t9,  1
    addu    t8, t5, t6
    addu    v0, t8, t9
    lui     $at, 0x8000                # $at = 80000000
    addu    v0, v0, $at
    lh      t0, 0x0000(v0)             # 00000000
    addiu   a1, a0, 0x0008             # a1 = 00000008
    mtc1    t0, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0008(a0)            # 00000008
    lh      t1, 0x0002(v0)             # 00000002
    mtc1    t1, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x000C(a0)           # 0000000C
    lh      t2, 0x0004(v0)             # 00000004
    mtc1    t2, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    jal     func_80021528
    swc1    $f18, 0x0010(a0)           # 00000010
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f2                   # $f2 = 1.00
    lw      a3, 0x0020($sp)
    lui     t8, %hi(func_80B72238)     # t8 = 80B70000
    c.lt.s  $f0, $f2
    addiu   t8, t8, %lo(func_80B72238) # t8 = 80B72238
    swc1    $f0, 0x018C(a3)            # 0000018C
    bc1fl   lbl_80B720D4
    lwc1    $f4, 0x018C(a3)            # 0000018C
    beq     $zero, $zero, lbl_80B720D8
    swc1    $f2, 0x018C(a3)            # 0000018C
    lwc1    $f4, 0x018C(a3)            # 0000018C
lbl_80B720D4:
    swc1    $f4, 0x018C(a3)            # 0000018C
lbl_80B720D8:
    lwc1    $f6, 0x000C(a3)            # 0000000C
    lwc1    $f8, 0x0028(a3)            # 00000028
    lw      t3, 0x0188(a3)             # 00000188
    mtc1    $zero, $f16                # $f16 = 0.00
    sub.s   $f10, $f6, $f8
    addiu   t4, t3, 0x0001             # t4 = 00000001
    sw      t4, 0x0188(a3)             # 00000188
    swc1    $f16, 0x0068(a3)           # 00000068
    swc1    $f10, 0x0190(a3)           # 00000190
    lw      t6, 0x001C($sp)
    lbu     t7, 0x0000(t6)             # 00000000
    bnel    t4, t7, lbl_80B72114
    sw      t8, 0x0180(a3)             # 00000180
    sw      $zero, 0x0188(a3)          # 00000188
    sw      t8, 0x0180(a3)             # 00000180
lbl_80B72114:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B72124:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0924             # a1 = 06000924
    lui     a2, 0xC0A0                 # a2 = C0A00000
    jal     func_8008D328
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B72304)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B72304) # t6 = 80B72304
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B72168:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x1360             # a1 = 06001360
    addiu   a0, a3, 0x013C             # a0 = 0000013C
    lui     a2, 0xC0C0                 # a2 = C0C00000
    jal     func_8008D21C
    sw      a3, 0x0018($sp)
    lw      a0, 0x0018($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    addiu   t6, $zero, 0x0010          # t6 = 00000010
    addiu   a1, $zero, 0x3874          # a1 = 00003874
    sh      t6, 0x0184(a0)             # 00000184
    jal     func_80022FD0
    swc1    $f4, 0x0068(a0)            # 00000068
    lw      a3, 0x0018($sp)
    lui     t7, %hi(func_80B72498)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B72498) # t7 = 80B72498
    sw      t7, 0x0180(a3)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B721C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a1, a0, $zero              # a1 = 00000000
    lh      v0, 0x0186(a1)             # 00000186
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    bne     v0, $zero, lbl_80B721EC
    nop
    sh      t6, 0x0186(a1)             # 00000186
    lh      v0, 0x0186(a1)             # 00000186
lbl_80B721EC:
    beq     v0, $zero, lbl_80B721FC
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0186(a1)             # 00000186
    lh      v0, 0x0186(a1)             # 00000186
lbl_80B721FC:
    or      a0, v0, $zero              # a0 = 00000000
    sll     a0, a0, 27
    sra     a0, a0, 16
    jal     func_800636C4              # sins?
    sw      a1, 0x0018($sp)
    lui     $at, 0x4150                # $at = 41500000
    mtc1    $at, $f4                   # $f4 = 13.00
    lw      a1, 0x0018($sp)
    mul.s   $f6, $f0, $f4
    lwc1    $f8, 0x0194(a1)            # 00000194
    add.s   $f10, $f6, $f8
    swc1    $f10, 0x0028(a1)           # 00000028
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_80B72238:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a3, a0, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    jal     func_8002313C
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(a3)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_80B722EC
    lh      t0, 0x00B6(a3)             # 000000B6
    lw      v0, 0x0188(a3)             # 00000188
    addiu   v1, $zero, 0x0002          # v1 = 00000002
    lw      t6, 0x001C($sp)
    bne     v1, v0, lbl_80B72298
    nop
    lbu     t7, 0x1C27(t6)             # 00001C27
    beql    t7, $zero, lbl_80B722EC
    lh      t0, 0x00B6(a3)             # 000000B6
lbl_80B72298:
    bne     v1, v0, lbl_80B722D8
    lw      a0, 0x001C($sp)
    jal     func_8009CB08
    sw      a3, 0x0018($sp)
    beq     v0, $zero, lbl_80B722C0
    lw      a3, 0x0018($sp)
    lh      t8, 0x00B6(a3)             # 000000B6
    addiu   t9, t8, 0x0800             # t9 = 00000800
    beq     $zero, $zero, lbl_80B722F4
    sh      t9, 0x00B6(a3)             # 000000B6
lbl_80B722C0:
    lw      a0, 0x001C($sp)
    addiu   a1, $zero, 0x600B          # a1 = 0000600B
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800DCE14
    sw      a3, 0x0018($sp)
    lw      a3, 0x0018($sp)
lbl_80B722D8:
    jal     func_80B72124
    or      a0, a3, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B722F8
    lw      $ra, 0x0014($sp)
    lh      t0, 0x00B6(a3)             # 000000B6
lbl_80B722EC:
    addiu   t1, t0, 0x0800             # t1 = 00000800
    sh      t1, 0x00B6(a3)             # 000000B6
lbl_80B722F4:
    lw      $ra, 0x0014($sp)
lbl_80B722F8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B72304:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    sw      a1, 0x003C($sp)
    lh      v0, 0x0184(s0)             # 00000184
    beq     v0, $zero, lbl_80B72330
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(s0)             # 00000184
    lh      v0, 0x0184(s0)             # 00000184
lbl_80B72330:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, %hi(var_80B72B20)     # $at = 80B70000
    lwc1    $f8, %lo(var_80B72B20)($at)
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800CF470
    nop
    lui     $at, 0x40A0                # $at = 40A00000
    mtc1    $at, $f10                  # $f10 = 5.00
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f20, $f0, $f10
    jal     func_80063684              # coss?
    nop
    mul.s   $f18, $f20, $f0
    lwc1    $f16, 0x0024(s0)           # 00000024
    lh      a0, 0x00B6(s0)             # 000000B6
    add.s   $f4, $f16, $f18
    jal     func_800636C4              # sins?
    swc1    $f4, 0x0024(s0)            # 00000024
    mul.s   $f8, $f20, $f0
    lwc1    $f6, 0x002C(s0)            # 0000002C
    lh      t7, 0x0184(s0)             # 00000184
    addiu   t8, $zero, 0x0028          # t8 = 00000028
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0008             # a1 = 00000008
    add.s   $f10, $f6, $f8
    bne     t7, $zero, lbl_80B723A4
    swc1    $f10, 0x002C(s0)           # 0000002C
    sh      t8, 0x0184(s0)             # 00000184
lbl_80B723A4:
    jal     func_80021528
    sw      a1, 0x002C($sp)
    lw      a1, 0x002C($sp)
    mov.s   $f20, $f0
    jal     func_8002140C
    or      a0, s0, $zero              # a0 = 00000000
    sh      v0, 0x0032(s0)             # 00000032
    lh      a1, 0x0032(s0)             # 00000032
    ori     $at, $zero, 0x8000         # $at = 00008000
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addu    a1, a1, $at
    sll     a1, a1, 16
    sra     a1, a1, 16
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064624
    addiu   a3, $zero, 0x0400          # a3 = 00000400
    lh      t9, 0x0186(s0)             # 00000186
    lui     $at, %hi(var_80B72B24)     # $at = 80B70000
    lwc1    $f4, %lo(var_80B72B24)($at)
    mtc1    t9, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800CF470
    nop
    lui     $at, 0x4020                # $at = 40200000
    mtc1    $at, $f6                   # $f6 = 2.50
    lui     $at, 0x40B0                # $at = 40B00000
    mtc1    $at, $f10                  # $f10 = 5.50
    mul.s   $f8, $f0, $f6
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    add.s   $f16, $f8, $f10
    jal     func_8002313C
    swc1    $f16, 0x0068(s0)           # 00000068
    lwc1    $f18, 0x0190(s0)           # 00000190
    lwc1    $f6, 0x018C(s0)            # 0000018C
    lui     $at, 0x4220                # $at = 42200000
    mul.s   $f4, $f20, $f18
    mtc1    $at, $f18                  # $f18 = 40.00
    lwc1    $f10, 0x000C(s0)           # 0000000C
    c.lt.s  $f20, $f18
    div.s   $f8, $f4, $f6
    sub.s   $f16, $f10, $f8
    bc1f    lbl_80B72484
    swc1    $f16, 0x0194(s0)           # 00000194
    lw      t0, 0x0188(s0)             # 00000188
    or      a0, s0, $zero              # a0 = 00000000
    beq     t0, $zero, lbl_80B7247C
    nop
    jal     func_80B71FC8
    lw      a1, 0x003C($sp)
    beq     $zero, $zero, lbl_80B72488
    lw      $ra, 0x0024($sp)
lbl_80B7247C:
    jal     func_80B72168
    or      a0, s0, $zero              # a0 = 00000000
lbl_80B72484:
    lw      $ra, 0x0024($sp)
lbl_80B72488:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B72498:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x0184(a0)             # 00000184
    beq     v0, $zero, lbl_80B724B8
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x0184(a0)             # 00000184
    lh      v0, 0x0184(a0)             # 00000184
lbl_80B724B8:
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0x417F                # $at = 417F0000
    mtc1    $at, $f8                   # $f8 = 15.94
    cvt.s.w $f6, $f4
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    lh      t7, 0x00B6(a0)             # 000000B6
    lui     $at, 0x4F00                # $at = 4F000000
    addiu   t8, t7, 0x2000             # t8 = 00002000
    mul.s   $f10, $f6, $f8
    sh      t8, 0x00B6(a0)             # 000000B6
    cfc1    t9, $f31
    ctc1    t0, $f31
    nop
    cvt.w.s $f16, $f10
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    beql    t0, $zero, lbl_80B7254C
    mfc1    t0, $f16
    mtc1    $at, $f16                  # $f16 = 2147484000.00
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    sub.s   $f16, $f10, $f16
    ctc1    t0, $f31
    nop
    cvt.w.s $f16, $f16
    cfc1    t0, $f31
    nop
    andi    t0, t0, 0x0078             # t0 = 00000000
    bne     t0, $zero, lbl_80B72540
    nop
    mfc1    t0, $f16
    lui     $at, 0x8000                # $at = 80000000
    beq     $zero, $zero, lbl_80B72558
    or      t0, t0, $at                # t0 = 80000000
lbl_80B72540:
    beq     $zero, $zero, lbl_80B72558
    addiu   t0, $zero, 0xFFFF          # t0 = FFFFFFFF
    mfc1    t0, $f16
lbl_80B7254C:
    nop
    bltz    t0, lbl_80B72540
    nop
lbl_80B72558:
    ctc1    t9, $f31
    sb      t0, 0x0213(a0)             # 00000213
    bne     v0, $zero, lbl_80B72570
    sb      t0, 0x00C8(a0)             # 000000C8
    jal     func_80020EB4
    nop
lbl_80B72570:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B72580:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80B721C8
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x41D8                 # a3 = 41D80000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4228                 # a1 = 42280000
    addiu   a2, s0, 0x0228             # a2 = 00000228
    or      a1, a2, $zero              # a1 = 00000228
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lbu     t7, 0x1C27(s1)             # 00001C27
    lui     t1, 0x8002                 # t1 = 80020000
    beql    t7, $zero, lbl_80B72650
    lw      t2, 0x0004(s0)             # 00000004
    lw      t8, 0x0004(s0)             # 00000004
    addiu   t1, t1, 0xEFF4             # t1 = 8001EFF4
    sw      t1, 0x00C0(s0)             # 000000C0
    ori     t0, t8, 0x0081             # t0 = 00000081
    beq     $zero, $zero, lbl_80B72660
    sw      t0, 0x0004(s0)             # 00000004
    lw      t2, 0x0004(s0)             # 00000004
lbl_80B72650:
    addiu   $at, $zero, 0xFF7E         # $at = FFFFFF7E
    sw      $zero, 0x00C0(s0)          # 000000C0
    and     t3, t2, $at
    sw      t3, 0x0004(s0)             # 00000004
lbl_80B72660:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B72674:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a0, 0x0018($sp)
    lw      a0, 0x002C($sp)
    sw      $ra, 0x0014($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    lw      t7, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_80B72498)     # t6 = 80B70000
    addiu   t6, t6, %lo(func_80B72498) # t6 = 80B72498
    bne     t6, t7, lbl_80B726D4
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bnel    a1, $at, lbl_80B726D8
    lw      t9, 0x0004(a0)             # 00000004
    lh      t8, 0x0184(a0)             # 00000184
    lui     $at, 0x3D80                # $at = 3D800000
    mtc1    $at, $f8                   # $f8 = 0.06
    mtc1    t8, $f4                    # $f4 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lw      a0, 0x002C($sp)
lbl_80B726D4:
    lw      t9, 0x0004(a0)             # 00000004
lbl_80B726D8:
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lw      t1, 0x0020($sp)
    andi    t0, t9, 0x0080             # t0 = 00000000
    beq     t0, $at, lbl_80B726F0
    or      v0, $zero, $zero           # v0 = 00000000
    sw      $zero, 0x0000(t1)          # 00000000
lbl_80B726F0:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B72700:
    addiu   $sp, $sp, 0xFFA0           # $sp -= 0x60
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0060($sp)
    sw      a2, 0x0068($sp)
    sw      a3, 0x006C($sp)
    addiu   $at, $zero, 0x0007         # $at = 00000007
    bne     a1, $at, lbl_80B72944
    lui     a0, %hi(var_80B72B08)      # a0 = 80B70000
    addiu   a0, a0, %lo(var_80B72B08)  # a0 = 80B72B08
    jal     func_800AB958
    addiu   a1, $sp, 0x0048            # a1 = FFFFFFE8
    jal     func_800CDCCC              # Rand.Next() float
    nop
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    mul.s   $f16, $f0, $f10
    lw      t0, 0x0070($sp)
    addiu   $at, $zero, 0x0080         # $at = 00000080
    lw      a1, 0x0074($sp)
    lw      t9, 0x0004(t0)             # 00000004
    trunc.w.s $f8, $f6
    mul.s   $f6, $f0, $f4
    andi    t6, t9, 0x0080             # t6 = 00000000
    mfc1    t1, $f8
    trunc.w.s $f18, $f16
    sll     t1, t1, 16
    sra     t1, t1, 16
    trunc.w.s $f8, $f6
    mfc1    t2, $f18
    addiu   t1, t1, 0x00E1             # t1 = 000000E1
    andi    t1, t1, 0x00FF             # t1 = 000000E1
    mfc1    t3, $f8
    sll     t2, t2, 16
    sra     t2, t2, 16
    sll     t3, t3, 16
    sra     t3, t3, 16
    addiu   t2, t2, 0x009B             # t2 = 0000009B
    addiu   t3, t3, 0x005F             # t3 = 0000005F
    andi    t2, t2, 0x00FF             # t2 = 0000009B
    bne     t6, $at, lbl_80B728EC
    andi    t3, t3, 0x00FF             # t3 = 0000005F
    lw      v1, 0x0000(a1)             # 00000000
    lui     t8, 0xE700                 # t8 = E7000000
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      v1, 0x0000(a1)             # 00000000
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, t1, 24
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a1)             # 00000000
    andi    t9, t2, 0x00FF             # t9 = 0000009B
    sw      t6, 0x0000(v1)             # 00000000
    sll     t6, t9, 16
    or      t7, t8, t6                 # t7 = FF000000
    andi    t9, t3, 0x00FF             # t9 = 0000005F
    sll     t8, t9,  8
    or      t6, t7, t8                 # t6 = FF000000
    ori     t9, t6, 0x00FF             # t9 = FF0000FF
    sw      t9, 0x0004(v1)             # 00000004
    lw      v1, 0x0000(a1)             # 00000000
    lui     t8, 0xDA38                 # t8 = DA380000
    ori     t8, t8, 0x0003             # t8 = DA380003
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x0000(a1)             # 00000000
    sw      t8, 0x0000(v1)             # 00000000
    lw      t6, 0x0060($sp)
    lw      a0, 0x0000(t6)             # FF000000
    sb      t3, 0x0056($sp)
    sb      t2, 0x0055($sp)
    sb      t1, 0x0054($sp)
    jal     func_800AB900
    sw      v1, 0x003C($sp)
    lw      t4, 0x003C($sp)
    lw      a1, 0x0074($sp)
    lw      t0, 0x0070($sp)
    lbu     t1, 0x0054($sp)
    lbu     t2, 0x0055($sp)
    lbu     t3, 0x0056($sp)
    lui     $ra, 0xDE00                # $ra = DE000000
    sw      v0, 0x0004(t4)             # 00000004
    lw      v1, 0x0000(a1)             # 00000000
    lui     t7, 0x0600                 # t7 = 06000000
    addiu   t7, t7, 0x4BA0             # t7 = 06004BA0
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a1)             # 00000000
    sw      t7, 0x0004(v1)             # 00000004
    sw      $ra, 0x0000(v1)            # 00000000
    lw      v1, 0x0000(a1)             # 00000000
    lui     t6, 0x0600                 # t6 = 06000000
    addiu   t6, t6, 0x4CC0             # t6 = 06004CC0
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x0000(a1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    sw      $ra, 0x0000(v1)            # 00000000
    lw      v1, 0x0000(a1)             # 00000000
    lui     t7, 0xE700                 # t7 = E7000000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x0000(a1)             # 00000000
    sw      $zero, 0x0004(v1)          # 00000004
    sw      t7, 0x0000(v1)             # 00000000
    lw      v1, 0x0000(a1)             # 00000000
    lui     t6, 0xFB00                 # t6 = FB000000
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x0000(a1)             # 00000000
    sw      t6, 0x0000(v1)             # 00000000
    lbu     t7, 0x0210(t0)             # 00000210
    lbu     t9, 0x0211(t0)             # 00000211
    sll     t8, t7, 24
    sll     t7, t9, 16
    or      t6, t8, t7                 # t6 = E7000008
    lbu     t8, 0x0212(t0)             # 00000212
    sll     t7, t8,  8
    or      t9, t6, t7                 # t9 = E7000008
    lbu     t6, 0x0213(t0)             # 00000213
    or      t7, t9, t6                 # t7 = E7000008
    sw      t7, 0x0004(v1)             # 00000004
lbl_80B728EC:
    lwc1    $f10, 0x0048($sp)
    lwc1    $f18, 0x004C($sp)
    lwc1    $f6, 0x0050($sp)
    trunc.w.s $f16, $f10
    addiu   t7, $zero, 0x00C8          # t7 = 000000C8
    sw      t7, 0x001C($sp)
    trunc.w.s $f4, $f18
    mfc1    a1, $f16
    addiu   a0, t0, 0x0218             # a0 = 00000218
    trunc.w.s $f8, $f6
    mfc1    a2, $f4
    sll     a1, a1, 16
    sra     a1, a1, 16
    mfc1    a3, $f8
    sll     a2, a2, 16
    sra     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sw      t1, 0x0010($sp)
    sw      t2, 0x0014($sp)
    jal     func_80065BCC
    sw      t3, 0x0018($sp)
lbl_80B72944:
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0060           # $sp += 0x60
    jr      $ra
    nop


func_80B72954:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E2C0
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0028             # t8 = DB060028
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x004C($sp)
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    lw      a0, 0x0000(t9)             # 00000000
    sw      t2, 0x0010($sp)
    addiu   a2, $zero, 0x0055          # a2 = 00000055
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8007EE04
    sw      v1, 0x0038($sp)
    lw      t0, 0x0038($sp)
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t4, 0xDB06                 # t4 = DB060000
    ori     t4, t4, 0x0020             # t4 = DB060020
    addiu   t3, v1, 0x0008             # t3 = 00000008
    sw      t3, 0x02D0(s0)             # 000002D0
    sw      t4, 0x0000(v1)             # 00000000
    lw      t5, 0x004C($sp)
    lbu     t6, 0x0213(s1)             # 00000213
    lbu     a3, 0x0212(s1)             # 00000212
    lbu     a2, 0x0211(s1)             # 00000211
    lbu     a1, 0x0210(s1)             # 00000210
    lw      a0, 0x0000(t5)             # 00000000
    sw      v1, 0x0034($sp)
    jal     func_8007EE04
    sw      t6, 0x0010($sp)
    lw      t1, 0x0034($sp)
    lui     a3, %hi(func_80B72674)     # a3 = 80B70000
    addiu   a3, a3, %lo(func_80B72674) # a3 = 80B72674
    sw      v0, 0x0004(t1)             # 00000004
    lw      t8, 0x0180(s1)             # 00000180
    lui     t7, %hi(func_80B72498)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B72498) # t7 = 80B72498
    bne     t7, t8, lbl_80B72A4C
    lui     t5, 0xDB06                 # t5 = DB060000
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t2, 0xDB06                 # t2 = DB060000
    lui     t3, 0x800F                 # t3 = 800F0000
    addiu   t9, v1, 0x0008             # t9 = 00000008
    sw      t9, 0x02D0(s0)             # 000002D0
    addiu   t3, t3, 0x8510             # t3 = 800E8510
    ori     t2, t2, 0x0030             # t2 = DB060030
    sw      t2, 0x0000(v1)             # 00000000
    sw      t3, 0x0004(v1)             # 00000004
    beq     $zero, $zero, lbl_80B72A70
    lw      a1, 0x0140(s1)             # 00000140
lbl_80B72A4C:
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t6, 0x800F                 # t6 = 800F0000
    addiu   t6, t6, 0x8520             # t6 = 800E8520
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02D0(s0)             # 000002D0
    ori     t5, t5, 0x0030             # t5 = DB060030
    sw      t5, 0x0000(v1)             # 00000000
    sw      t6, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s1)             # 00000140
lbl_80B72A70:
    lw      a2, 0x015C(s1)             # 0000015C
    lui     t7, %hi(func_80B72700)     # t7 = 80B70000
    addiu   t7, t7, %lo(func_80B72700) # t7 = 80B72700
    sw      t7, 0x0010($sp)
    sw      s1, 0x0014($sp)
    lw      t8, 0x02D0(s0)             # 000002D0
    lw      a0, 0x004C($sp)
    jal     func_8008A414
    sw      t8, 0x0018($sp)
    sw      v0, 0x02D0(s0)             # 000002D0
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    nop

.section .data

var_80B72AB0: .word 0x01BF0100, 0x00001090, 0x006D0000, 0x00000274
.word func_80B71E10
.word func_80B71F80
.word func_80B72580
.word func_80B72954
var_80B72AD0: .word \
0x03000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x00190032, 0x00140000, 0x00000000
var_80B72AFC: .word 0x8917005C, 0xB0F407D0, 0x304C0C80
var_80B72B08: .word \
0x00000000, 0x44AF0000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_80B72B20: .word 0x3E20D97C
var_80B72B24: .word 0x3DC90FDB, 0x00000000, 0x00000000

