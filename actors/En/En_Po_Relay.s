.section .text
func_80A7C040:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_80A7D598)      # a1 = 80A80000
    addiu   a1, a1, %lo(var_80A7D598)  # a1 = 80A7D598
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4228                 # a3 = 42280000
    lui     a2, 0x0601                 # a2 = 06010000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0190             # t6 = 00000190
    addiu   t7, s0, 0x01FC             # t7 = 000001FC
    addiu   t8, $zero, 0x0012          # t8 = 00000012
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x3768             # a3 = 06003768
    addiu   a2, a2, 0xBE40             # a2 = 0600BE40
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0280             # a1 = 00000280
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80A7D568)      # a3 = 80A80000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80A7D568)  # a3 = 80A7D568
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   a2, s0, 0x0270             # a2 = 00000270
    sw      a2, 0x0034($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800665B0
    addiu   a1, s1, 0x07A8             # a1 = 000007A8
    lwc1    $f4, 0x0008(s0)            # 00000008
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lwc1    $f16, 0x0010(s0)           # 00000010
    trunc.w.s $f6, $f4
    sw      v0, 0x026C(s0)             # 0000026C
    addiu   t2, $zero, 0x00FF          # t2 = 000000FF
    trunc.w.s $f10, $f8
    mfc1    a1, $f6
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    trunc.w.s $f18, $f16
    mfc1    a2, $f10
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00C8          # t5 = 000000C8
    mfc1    a3, $f18
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t3, 0x0014($sp)
    sw      t2, 0x0010($sp)
    jal     func_80065BCC
    lw      a0, 0x0034($sp)
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    sb      t6, 0x026B(s0)             # 0000026B
    lui     t7, %hi(var_80A7D594)      # t7 = 80A80000
    lw      t7, %lo(var_80A7D594)(t7)
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    lui     $at, %hi(var_80A7D594)     # $at = 80A80000
    beq     t7, $zero, lbl_80A7C188
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7C1AC
    lh      t0, 0x001C(s0)             # 0000001C
lbl_80A7C188:
    sw      t8, %lo(var_80A7D594)($at)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800267D4
    addiu   a2, $zero, 0x0041          # a2 = 00000041
    lhu     t9, 0x010E(s0)             # 0000010E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7C210
    sh      t9, 0x018C(s0)             # 0000018C
    lh      t0, 0x001C(s0)             # 0000001C
lbl_80A7C1AC:
    andi    t1, t0, 0x003F             # t1 = 00000000
    sh      t1, 0x001C(s0)             # 0000001C
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80A7C1C8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a3, a1, $zero              # a3 = 00000000
    lw      t6, 0x0018($sp)
    or      a0, a3, $zero              # a0 = 00000000
    addiu   a1, a3, 0x07A8             # a1 = 000007A8
    lw      a2, 0x026C(t6)             # 0000026C
    jal     func_80066610
    sw      a3, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0280             # a1 = 00000280
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80A7C210:
    lui     t0, %hi(func_80A7C440)     # t0 = 80A80000
    addiu   t6, $zero, 0x0020          # t6 = 00000020
    addiu   t7, $zero, 0xFFFF          # t7 = FFFFFFFF
    addiu   t8, $zero, 0x8000          # t8 = FFFF8000
    addiu   t9, $zero, 0x00FE          # t9 = 000000FE
    addiu   t0, t0, %lo(func_80A7C440) # t0 = 80A7C440
    sb      t6, 0x0185(a0)             # 00000185
    sh      $zero, 0x0188(a0)          # 00000188
    sb      t7, 0x0003(a0)             # 00000003
    sh      $zero, 0x00B6(a0)          # 000000B6
    sh      t8, 0x0032(a0)             # 00000032
    sb      t9, 0x00AE(a0)             # 000000AE
    sw      t0, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_80A7C24C:
    lh      t6, 0x0000(a1)             # 00000000
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    swc1    $f6, 0x0000(a0)            # 00000000
    lh      t7, 0x0002(a1)             # 00000002
    mtc1    t7, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    swc1    $f10, 0x0004(a0)           # 00000004
    lh      t8, 0x0004(a1)             # 00000004
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    swc1    $f18, 0x0008(a0)           # 00000008
    jr      $ra
    nop


func_80A7C290:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    lh      t6, 0x0188(s0)             # 00000188
    lui     t8, %hi(var_80A7D4A0)      # t8 = 80A80000
    addiu   t8, t8, %lo(var_80A7D4A0)  # t8 = 80A7D4A0
    sll     t7, t6,  2
    subu    t7, t7, t6
    sll     t7, t7,  1
    addu    a1, t7, t8
    jal     func_80A7C24C
    addiu   a0, $sp, 0x0024            # a0 = FFFFFFF4
    lh      t9, 0x00B6(s0)             # 000000B6
    lh      t0, 0x0032(s0)             # 00000032
    addiu   $at, $zero, 0x8000         # $at = FFFF8000
    or      a0, $zero, $zero           # a0 = 00000000
    subu    t1, t9, t0
    addu    t4, t1, $at
    sra     t5, t4, 11
    andi    t6, t5, 0x001F             # t6 = 00000000
    jal     func_8007397C
    sh      t6, 0x0186(s0)             # 00000186
    lui     t7, 0x8010                 # t7 = 80100000
    lbu     t7, -0x70C2(t7)            # 800F8F3E
    lui     t8, 0x8012                 # t8 = 80120000
    or      a0, s0, $zero              # a0 = 00000000
    addu    t8, t8, t7
    lbu     t8, -0x59BC(t8)            # 8011A644
    addiu   a1, $sp, 0x0024            # a1 = FFFFFFF4
    xori    t9, t8, 0x00FF             # t9 = 801200FF
    sltu    t9, $zero, t9
    jal     func_8002140C
    sb      t9, 0x0184(s0)             # 00000184
    lw      t0, 0x0004(s0)             # 00000004
    lui     $at, 0x0800                # $at = 08000000
    sh      v0, 0x018A(s0)             # 0000018A
    or      t1, t0, $at                # t1 = 08000000
    sw      t1, 0x0004(s0)             # 00000004
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x38EC          # a1 = 000038EC
    lui     t2, %hi(func_80A7C570)     # t2 = 80A80000
    addiu   t2, t2, %lo(func_80A7C570) # t2 = 80A7C570
    sw      t2, 0x0180(s0)             # 00000180
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp = 00000000
    jr      $ra
    nop


func_80A7C358:
    lh      t6, 0x0016(a0)             # 00000016
    ori     $at, $zero, 0xC000         # $at = 0000C000
    lw      t8, 0x0004(a0)             # 00000004
    addu    t7, t6, $at
    mtc1    $zero, $f4                 # $f4 = 0.00
    lui     $at, 0xF7FF                # $at = F7FF0000
    ori     $at, $at, 0xFFFF           # $at = F7FFFFFF
    lui     t0, %hi(func_80A7CA84)     # t0 = 80A80000
    addiu   t0, t0, %lo(func_80A7CA84) # t0 = 80A7CA84
    and     t9, t8, $at
    sh      t7, 0x0032(a0)             # 00000032
    sw      t9, 0x0004(a0)             # 00000004
    sw      t0, 0x0180(a0)             # 00000180
    swc1    $f4, 0x0068(a0)            # 00000068
    jr      $ra
    nop


func_80A7C398:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a3, a0, $zero              # a3 = 00000000
    lh      v0, 0x0188(a3)             # 00000188
    lui     t7, %hi(var_80A7D4A2)      # t7 = 80A80000
    slti    $at, v0, 0x001C
    bne     $at, $zero, lbl_80A7C3C0
    or      v1, v0, $zero              # v1 = 00000000
    beq     $zero, $zero, lbl_80A7C3C0
    addiu   v1, $zero, 0x001B          # v1 = 0000001B
lbl_80A7C3C0:
    sll     t6, v1,  2
    subu    t6, t6, v1
    sll     t6, t6,  1
    addu    t7, t7, t6
    lh      t7, %lo(var_80A7D4A2)(t7)
    lui     $at, 0x4234                # $at = 42340000
    mtc1    $at, $f8                   # $f8 = 45.00
    mtc1    t7, $f4                    # $f4 = 0.00
    addiu   a0, a3, 0x000C             # a0 = 0000000C
    lui     a2, 0x4000                 # a2 = 40000000
    cvt.s.w $f6, $f4
    sw      a3, 0x0018($sp)
    add.s   $f10, $f6, $f8
    mfc1    a1, $f10
    jal     func_8006385C
    nop
    lw      a3, 0x0018($sp)
    lbu     a0, 0x0185(a3)             # 00000185
    sll     a0, a0, 11
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4100                # $at = 41000000
    mtc1    $at, $f16                  # $f16 = 8.00
    lw      a3, 0x0018($sp)
    mul.s   $f18, $f0, $f16
    lwc1    $f4, 0x000C(a3)            # 0000000C
    add.s   $f6, $f18, $f4
    swc1    $f6, 0x0028(a3)            # 00000028
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp = 00000000


func_80A7C440:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80A7C49C
    lui     $at, 0x437A                # $at = 437A0000
    lw      t6, 0x0004(s0)             # 00000004
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lui     t8, %hi(func_80A7C4FC)     # t8 = 80A80000
    addiu   t8, t8, %lo(func_80A7C4FC) # t8 = 80A7C4FC
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    beq     $zero, $zero, lbl_80A7C4DC
    sw      t8, 0x0180(s0)             # 00000180
lbl_80A7C49C:
    mtc1    $at, $f0                   # $f0 = NaN
    lwc1    $f4, 0x0090(s0)            # 00000090
    lui     $at, 0x0001                # $at = 00010000
    or      a0, s0, $zero              # a0 = 00000000
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80A7C4E0
    or      a0, s0, $zero              # a0 = 00000000
    lw      t9, 0x0004(s0)             # 00000004
    lhu     t1, 0x018C(s0)             # 0000018C
    mfc1    a2, $f0
    or      t0, t9, $at                # t0 = 00010000
    sw      t0, 0x0004(s0)             # 00000004
    sh      t1, 0x010E(s0)             # 0000010E
    jal     func_80022A68
    lw      a1, 0x0024($sp)
lbl_80A7C4DC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7C4E0:
    jal     func_8002313C
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A7C4FC:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022AD0
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80A7C550
    lw      a0, 0x0024($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800267D4
    addiu   a2, $zero, 0x002F          # a2 = 0000002F
    lhu     t6, 0x010E(s0)             # 0000010E
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7C290
    sh      t6, 0x018C(s0)             # 0000018C
lbl_80A7C550:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A7C570:
    addiu   $sp, $sp, 0xFFA0           # $sp = FFFFFFA0
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x0064($sp)
    lh      v0, 0x0186(s0)             # 00000186
    lw      t6, 0x0064($sp)
    beq     v0, $zero, lbl_80A7C5A0
    lw      v1, 0x1C44(t6)             # 00001C44
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    sh      t7, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
lbl_80A7C5A0:
    bnel    v0, $zero, lbl_80A7C6FC
    lh      a1, 0x018A(s0)             # 0000018A
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x005C($sp)
    lui     $at, %hi(var_80A7D5D0)     # $at = 80A80000
    lwc1    $f4, %lo(var_80A7D5D0)($at)
    lw      v1, 0x005C($sp)
    c.lt.s  $f0, $f4
    nop
    bc1fl   lbl_80A7C6FC
    lh      a1, 0x018A(s0)             # 0000018A
    lh      t9, 0x0188(s0)             # 00000188
    addiu   t8, $zero, 0x0020          # t8 = 00000020
    sh      t8, 0x0186(s0)             # 00000186
    slti    $at, t9, 0x0017
    beql    $at, $zero, lbl_80A7C6FC
    lh      a1, 0x018A(s0)             # 0000018A
    jal     func_800CDCCC              # Rand.Next() float
    sw      v1, 0x005C($sp)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    lw      v1, 0x005C($sp)
    lui     $at, 0x4000                # $at = 40000000
    mul.s   $f2, $f0, $f6
    c.lt.s  $f2, $f14
    nop
    bc1fl   lbl_80A7C624
    mtc1    $at, $f8                   # $f8 = 2.00
    beq     $zero, $zero, lbl_80A7C64C
    mov.s   $f12, $f14
    mtc1    $at, $f8                   # $f8 = 2.00
lbl_80A7C624:
    lui     $at, 0xBF80                # $at = BF800000
    c.lt.s  $f2, $f8
    nop
    bc1fl   lbl_80A7C648
    mtc1    $zero, $f12                # $f12 = 0.00
    mtc1    $at, $f12                  # $f12 = -1.00
    beq     $zero, $zero, lbl_80A7C650
    lh      a0, 0x018A(s0)             # 0000018A
    mtc1    $zero, $f12                # $f12 = 0.00
lbl_80A7C648:
    nop
lbl_80A7C64C:
    lh      a0, 0x018A(s0)             # 0000018A
lbl_80A7C650:
    swc1    $f12, 0x0048($sp)
    jal     func_80063684              # coss?
    sw      v1, 0x005C($sp)
    swc1    $f0, 0x0040($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x018A(s0)             # 0000018A
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f10                  # $f10 = 30.00
    lwc1    $f12, 0x0048($sp)
    lwc1    $f16, 0x0040($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    mul.s   $f2, $f10, $f12
    lwc1    $f4, 0x0024(s0)            # 00000024
    swc1    $f8, 0x0010($sp)
    ori     $at, $zero, 0x8000         # $at = 00008000
    lw      a1, 0x0064($sp)
    addiu   t4, $zero, 0x0002          # t4 = 00000002
    addiu   a2, $zero, 0x011C          # a2 = 0000011C
    mul.s   $f18, $f16, $f2
    lwc1    $f16, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0018($sp)
    mul.s   $f10, $f0, $f2
    addiu   a0, a1, 0x1C24             # a0 = 00001C24
    add.s   $f6, $f18, $f4
    add.s   $f18, $f10, $f16
    mfc1    a3, $f6
    swc1    $f18, 0x0014($sp)
    lh      t0, 0x018A(s0)             # 0000018A
    sw      t4, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    addu    t1, t0, $at
    lui     $at, 0x4600                # $at = 46000000
    mtc1    $at, $f8                   # $f8 = 8192.00
    mtc1    t1, $f4                    # $f4 = 0.00
    mul.s   $f10, $f8, $f12
    cvt.s.w $f6, $f4
    sub.s   $f16, $f6, $f10
    trunc.w.s $f18, $f16
    mfc1    t3, $f18
    jal     func_80025110              # ActorSpawn
    sw      t3, 0x001C($sp)
    lw      v1, 0x005C($sp)
    lh      a1, 0x018A(s0)             # 0000018A
lbl_80A7C6FC:
    addiu   t5, $zero, 0x0100          # t5 = 00000100
    sw      t5, 0x0010($sp)
    sw      v1, 0x005C($sp)
    addiu   a0, s0, 0x0032             # a0 = 00000032
    addiu   a2, $zero, 0x0002          # a2 = 00000002
    jal     func_80064508
    addiu   a3, $zero, 0x1000          # a3 = 00001000
    lh      t7, 0x0186(s0)             # 00000186
    lh      t6, 0x0032(s0)             # 00000032
    lh      t1, 0x0188(s0)             # 00000188
    sll     t8, t7, 11
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t9, t6, t8
    addu    t0, t9, $at
    lw      v1, 0x005C($sp)
    slti    $at, t1, 0x0017
    beq     $at, $zero, lbl_80A7C958
    sh      t0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x0024(v1)            # 00000024
    lui     $at, 0x4425                # $at = 44250000
    mtc1    $at, $f12                  # $f12 = 660.00
    swc1    $f4, 0x0010($sp)
    lwc1    $f8, 0x002C(v1)            # 0000002C
    lui     $at, 0x4452                # $at = 44520000
    mtc1    $at, $f14                  # $f14 = 840.00
    sw      v1, 0x005C($sp)
    lui     a2, 0xC58C                 # a2 = C58C0000
    lui     a3, 0xC56B                 # a3 = C56B0000
    jal     func_800A506C
    swc1    $f8, 0x0014($sp)
    bne     v0, $zero, lbl_80A7C7FC
    lw      v1, 0x005C($sp)
    lwc1    $f6, 0x0024(v1)            # 00000024
    lui     $at, 0x44C3                # $at = 44C30000
    mtc1    $at, $f12                  # $f12 = 1560.00
    swc1    $f6, 0x0010($sp)
    lwc1    $f10, 0x002C(v1)           # 0000002C
    lui     $at, %hi(var_80A7D5D4)     # $at = 80A80000
    lui     a2, 0xC57B                 # a2 = C57B0000
    lui     a3, 0xC565                 # a3 = C5650000
    ori     a3, a3, 0x6000             # a3 = C5656000
    ori     a2, a2, 0xE000             # a2 = C57BE000
    lwc1    $f14, %lo(var_80A7D5D4)($at)
    sw      v1, 0x005C($sp)
    jal     func_800A506C
    swc1    $f10, 0x0014($sp)
    bne     v0, $zero, lbl_80A7C7FC
    lw      v1, 0x005C($sp)
    lwc1    $f16, 0x0024(v1)           # 00000024
    lui     $at, %hi(var_80A7D5D8)     # $at = 80A80000
    lwc1    $f12, %lo(var_80A7D5D8)($at)
    swc1    $f16, 0x0010($sp)
    lwc1    $f18, 0x002C(v1)           # 0000002C
    lui     $at, %hi(var_80A7D5DC)     # $at = 80A80000
    lui     a2, 0xC53D                 # a2 = C53D0000
    lui     a3, 0xC51C                 # a3 = C51C0000
    ori     a3, a3, 0x4000             # a3 = C51C4000
    ori     a2, a2, 0x6000             # a2 = C53D6000
    lwc1    $f14, %lo(var_80A7D5DC)($at)
    sw      v1, 0x005C($sp)
    jal     func_800A506C
    swc1    $f18, 0x0014($sp)
    beq     v0, $zero, lbl_80A7C83C
    lw      v1, 0x005C($sp)
lbl_80A7C7FC:
    lbu     t2, 0x0184(s0)             # 00000184
    lui     $at, %hi(var_80A7D5E4)     # $at = 80A80000
    beql    t2, $zero, lbl_80A7C828
    lwc1    $f6, 0x0068(v1)            # 00000068
    lui     $at, %hi(var_80A7D5E0)     # $at = 80A80000
    lwc1    $f8, %lo(var_80A7D5E0)($at)
    lwc1    $f4, 0x0068(v1)            # 00000068
    mul.s   $f0, $f4, $f8
    beq     $zero, $zero, lbl_80A7C834
    nop
    lwc1    $f6, 0x0068(v1)            # 00000068
lbl_80A7C828:
    lwc1    $f10, %lo(var_80A7D5E4)($at)
    mul.s   $f0, $f6, $f10
    nop
lbl_80A7C834:
    beq     $zero, $zero, lbl_80A7C8F4
    lwc1    $f2, 0x0090(s0)            # 00000090
lbl_80A7C83C:
    lui     $at, 0x4316                # $at = 43160000
    mtc1    $at, $f16                  # $f16 = 150.00
    lwc1    $f2, 0x0090(s0)            # 00000090
    lui     $at, 0x4396                # $at = 43960000
    c.lt.s  $f2, $f16
    nop
    bc1fl   lbl_80A7C88C
    mtc1    $at, $f8                   # $f8 = 300.00
    lbu     t3, 0x0184(s0)             # 00000184
    lui     $at, %hi(var_80A7D5E8)     # $at = 80A80000
    beq     t3, $zero, lbl_80A7C880
    nop
    lwc1    $f18, 0x0068(v1)           # 00000068
    lwc1    $f4, %lo(var_80A7D5E8)($at)
    mul.s   $f0, $f18, $f4
    beq     $zero, $zero, lbl_80A7C8F8
    lui     $at, 0x437A                # $at = 437A0000
lbl_80A7C880:
    beq     $zero, $zero, lbl_80A7C8F4
    lwc1    $f0, 0x0068(v1)            # 00000068
    mtc1    $at, $f8                   # $f8 = 250.00
lbl_80A7C88C:
    nop
    c.lt.s  $f2, $f8
    nop
    bc1fl   lbl_80A7C8D0
    lbu     t5, 0x0184(s0)             # 00000184
    lbu     t4, 0x0184(s0)             # 00000184
    lui     $at, %hi(var_80A7D5EC)     # $at = 80A80000
    beql    t4, $zero, lbl_80A7C8BC
    lwc1    $f6, 0x0068(v1)            # 00000068
    beq     $zero, $zero, lbl_80A7C8F4
    lwc1    $f0, 0x0068(v1)            # 00000068
    lwc1    $f6, 0x0068(v1)            # 00000068
lbl_80A7C8BC:
    lwc1    $f10, %lo(var_80A7D5EC)($at)
    mul.s   $f0, $f6, $f10
    beq     $zero, $zero, lbl_80A7C8F8
    lui     $at, 0x437A                # $at = 437A0000
    lbu     t5, 0x0184(s0)             # 00000184
lbl_80A7C8D0:
    lui     $at, 0x4060                # $at = 40600000
    beql    t5, $zero, lbl_80A7C8F0
    mtc1    $at, $f0                   # $f0 = 3.50
    lui     $at, 0x4090                # $at = 40900000
    mtc1    $at, $f0                   # $f0 = 4.50
    beq     $zero, $zero, lbl_80A7C8F8
    lui     $at, 0x437A                # $at = 437A0000
    mtc1    $at, $f0                   # $f0 = 250.00
lbl_80A7C8F0:
    nop
lbl_80A7C8F4:
    lui     $at, 0x437A                # $at = 437A0000
lbl_80A7C8F8:
    mtc1    $at, $f16                  # $f16 = 250.00
    mtc1    $zero, $f18                # $f18 = 0.00
    lui     $at, %hi(var_80A7D5F0)     # $at = 80A80000
    sub.s   $f12, $f16, $f2
    c.lt.s  $f12, $f18
    nop
    bc1f    lbl_80A7C920
    nop
    mtc1    $zero, $f12                # $f12 = 0.00
    nop
lbl_80A7C920:
    lwc1    $f4, %lo(var_80A7D5F0)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f6                   # $f6 = 1.00
    mul.s   $f8, $f12, $f4
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a2, 0x3F00                 # a2 = 3F000000
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    add.s   $f10, $f8, $f6
    add.s   $f0, $f0, $f10
    mfc1    a1, $f0
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_80A7C970
    lh      t7, 0x0188(s0)             # 00000188
lbl_80A7C958:
    addiu   a0, s0, 0x0068             # a0 = 00000068
    lui     a1, 0x4060                 # a1 = 40600000
    lui     a2, 0x3F00                 # a2 = 3F000000
    jal     func_80064280
    lui     a3, 0x3FC0                 # a3 = 3FC00000
    lh      t7, 0x0188(s0)             # 00000188
lbl_80A7C970:
    lui     t8, %hi(var_80A7D4A0)      # t8 = 80A80000
    addiu   t8, t8, %lo(var_80A7D4A0)  # t8 = 80A7D4A0
    sll     t6, t7,  2
    subu    t6, t6, t7
    sll     t6, t6,  1
    addu    a1, t6, t8
    jal     func_80A7C24C
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFF0
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80021528
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFF0
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f16                  # $f16 = 40.00
    nop
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80A7CA58
    or      a0, s0, $zero              # a0 = 00000000
    lh      t9, 0x0188(s0)             # 00000188
    lui     t3, %hi(var_80A7D4A0)      # t3 = 80A80000
    addiu   t3, t3, %lo(var_80A7D4A0)  # t3 = 80A7D4A0
    addiu   t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0188(s0)             # 00000188
    lh      t1, 0x0188(s0)             # 00000188
    addiu   a0, $sp, 0x0050            # a0 = FFFFFFF0
    sll     t2, t1,  2
    subu    t2, t2, t1
    sll     t2, t2,  1
    jal     func_80A7C24C
    addu    a1, t2, t3
    lh      v0, 0x0188(s0)             # 00000188
    addiu   $at, $zero, 0x001C         # $at = 0000001C
    bnel    v0, $at, lbl_80A7CA0C
    addiu   $at, $zero, 0x0009         # $at = 00000009
    jal     func_80A7C358
    or      a0, s0, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80A7CA58
    or      a0, s0, $zero              # a0 = 00000000
    addiu   $at, $zero, 0x0009         # $at = 00000009
lbl_80A7CA0C:
    bne     v0, $at, lbl_80A7CA24
    lw      a0, 0x0064($sp)
    jal     func_800204D0
    addiu   a1, $zero, 0x0035          # a1 = 00000035
    beq     $zero, $zero, lbl_80A7CA58
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CA24:
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bne     v0, $at, lbl_80A7CA40
    lw      a0, 0x0064($sp)
    jal     func_800204D0
    addiu   a1, $zero, 0x0036          # a1 = 00000036
    beq     $zero, $zero, lbl_80A7CA58
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CA40:
    addiu   $at, $zero, 0x0019         # $at = 00000019
    bne     v0, $at, lbl_80A7CA54
    lw      a0, 0x0064($sp)
    jal     func_800204D0
    addiu   a1, $zero, 0x0037          # a1 = 00000037
lbl_80A7CA54:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CA58:
    jal     func_8002140C
    addiu   a1, $sp, 0x0050            # a1 = FFFFFFF0
    sh      v0, 0x018A(s0)             # 0000018A
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_8002313C
    addiu   a1, $zero, 0x3072          # a1 = 00003072
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0060           # $sp = 00000000
    jr      $ra
    nop


func_80A7CA84:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a1, $zero, 0xC000          # a1 = FFFFC000
    jal     func_80063704
    addiu   a2, $zero, 0x0800          # a2 = 00000800
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022930
    lw      a1, 0x0024($sp)
    beq     v0, $zero, lbl_80A7CACC
    lw      t7, 0x0024($sp)
    lui     t6, %hi(func_80A7CB44)     # t6 = 80A80000
    addiu   t6, t6, %lo(func_80A7CB44) # t6 = 80A7CB44
    beq     $zero, $zero, lbl_80A7CB24
    sw      t6, 0x0180(s0)             # 00000180
lbl_80A7CACC:
    lui     t8, 0x0001                 # t8 = 00010000
    addu    t8, t8, t7
    lb      t8, 0x1CBC(t8)             # 00011CBC
    addiu   $at, $zero, 0x0005         # $at = 00000005
    or      a0, s0, $zero              # a0 = 00000000
    bne     t8, $at, lbl_80A7CAFC
    lui     a1, 0x4316                 # a1 = 43160000
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x8012                # $at = 80120000
    beq     $zero, $zero, lbl_80A7CB24
    sh      $zero, -0x4662($at)        # 8011B99E
lbl_80A7CAFC:
    jal     func_80021AD4
    addiu   a2, $zero, 0x3000          # a2 = 00003000
    beql    v0, $zero, lbl_80A7CB28
    or      a0, s0, $zero              # a0 = 00000000
    lhu     t9, 0x018C(s0)             # 0000018C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x437A                 # a2 = 437A0000
    sh      t9, 0x010E(s0)             # 0000010E
    jal     func_80022A68
    lw      a1, 0x0024($sp)
lbl_80A7CB24:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CB28:
    jal     func_8002313C
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp = 00000000
    jr      $ra
    nop


func_80A7CB44:
    addiu   $sp, $sp, 0xFFE0           # $sp = FFFFFFE0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    lh      a1, 0x008A(s0)             # 0000008A
    jal     func_80063704
    addiu   a2, $zero, 0x0100          # a2 = 00000100
    jal     func_800DD464
    addiu   a0, s1, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0005         # $at = 00000005
    bne     v0, $at, lbl_80A7CBD8
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_800D6110
    or      a0, s1, $zero              # a0 = 00000000
    beql    v0, $zero, lbl_80A7CC00
    or      a0, s0, $zero              # a0 = 00000000
    lbu     t6, 0x0184(s0)             # 00000184
    addiu   a2, $zero, 0x002E          # a2 = 0000002E
    or      a0, s1, $zero              # a0 = 00000000
    beq     t6, $zero, lbl_80A7CBB8
    or      a1, s0, $zero              # a1 = 00000000
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800267D4
    or      a1, s0, $zero              # a1 = 00000000
    beq     $zero, $zero, lbl_80A7CBC4
    lhu     a1, 0x010E(s0)             # 0000010E
lbl_80A7CBB8:
    jal     func_800267D4
    addiu   a2, $zero, 0x002D          # a2 = 0000002D
    lhu     a1, 0x010E(s0)             # 0000010E
lbl_80A7CBC4:
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_800DCE80
    sh      a1, 0x018C(s0)             # 0000018C
    beq     $zero, $zero, lbl_80A7CC00
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CBD8:
    jal     func_80022AD0
    or      a1, s1, $zero              # a1 = 00000000
    beq     v0, $zero, lbl_80A7CBFC
    lui     $at, 0x8012                # $at = 80120000
    sh      $zero, -0x4662($at)        # 8011B99E
    lui     t7, %hi(func_80A7CC1C)     # t7 = 80A80000
    addiu   t7, t7, %lo(func_80A7CC1C) # t7 = 80A7CC1C
    sh      $zero, 0x0186(s0)          # 00000186
    sw      t7, 0x0180(s0)             # 00000180
lbl_80A7CBFC:
    or      a0, s0, $zero              # a0 = 00000000
lbl_80A7CC00:
    jal     func_8002313C
    addiu   a1, $zero, 0x3071          # a1 = 00003071
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0020           # $sp = 00000000


func_80A7CC1C:
    addiu   $sp, $sp, 0xFF80           # $sp = FFFFFF80
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x004C($sp)
    lh      t6, 0x0186(s0)             # 00000186
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0186(s0)             # 00000186
    lh      v0, 0x0186(s0)             # 00000186
    slti    $at, v0, 0x0008
    beq     $at, $zero, lbl_80A7CFA8
    slti    $at, v0, 0x0005
    beq     $at, $zero, lbl_80A7CD30
    addiu   t4, v0, 0xFFFB             # t4 = FFFFFFFB
    sll     a0, v0, 12
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f6                   # $f6 = 40.00
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    mul.s   $f16, $f0, $f10
    add.s   $f8, $f4, $f6
    add.s   $f18, $f16, $f8
    swc1    $f18, 0x0078($sp)
    lh      a0, 0x0186(s0)             # 00000186
    sll     a0, a0, 12
    addiu   a0, a0, 0xC000             # a0 = FFFFC000
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f4                   # $f4 = 23.00
    nop
    mul.s   $f6, $f0, $f4
    swc1    $f6, 0x0070($sp)
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t0, s1, t9
    jal     func_8004977C
    lw      a0, 0x0790(t0)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lwc1    $f10, 0x0070($sp)
    lwc1    $f8, 0x0024(s0)            # 00000024
    mul.s   $f16, $f0, $f10
    add.s   $f18, $f16, $f8
    swc1    $f18, 0x0074($sp)
    lh      t1, 0x07A0(s1)             # 000007A0
    sll     t2, t1,  2
    addu    t3, s1, t2
    jal     func_8004977C
    lw      a0, 0x0790(t3)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lwc1    $f4, 0x0070($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f6, $f0, $f4
    add.s   $f16, $f6, $f10
    beq     $zero, $zero, lbl_80A7CDD4
    swc1    $f16, 0x007C($sp)
lbl_80A7CD30:
    mtc1    t4, $f10                   # $f10 = 0.00
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f18                  # $f18 = 40.00
    cvt.s.w $f16, $f10
    lwc1    $f8, 0x0028(s0)            # 00000028
    lui     $at, 0x4170                # $at = 41700000
    mtc1    $at, $f6                   # $f6 = 15.00
    add.s   $f4, $f8, $f18
    mul.s   $f8, $f6, $f16
    add.s   $f18, $f4, $f8
    swc1    $f18, 0x0078($sp)
    lh      t5, 0x07A0(s1)             # 000007A0
    sll     t6, t5,  2
    addu    t7, s1, t6
    jal     func_8004977C
    lw      a0, 0x0790(t7)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_800636C4              # sins?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f10                  # $f10 = 23.00
    lwc1    $f16, 0x0024(s0)           # 00000024
    mul.s   $f6, $f0, $f10
    add.s   $f4, $f6, $f16
    swc1    $f4, 0x0074($sp)
    lh      t8, 0x07A0(s1)             # 000007A0
    sll     t9, t8,  2
    addu    t0, s1, t9
    jal     func_8004977C
    lw      a0, 0x0790(t0)             # 00000790
    addiu   a0, v0, 0x4800             # a0 = 00004800
    sll     a0, a0, 16
    jal     func_80063684              # coss?
    sra     a0, a0, 16
    lui     $at, 0x41B8                # $at = 41B80000
    mtc1    $at, $f8                   # $f8 = 23.00
    lwc1    $f10, 0x002C(s0)           # 0000002C
    mul.s   $f18, $f0, $f8
    add.s   $f6, $f18, $f10
    swc1    $f6, 0x007C($sp)
lbl_80A7CDD4:
    lh      t1, 0x0186(s0)             # 00000186
    lui     a2, %hi(var_80A7D5A0)      # a2 = 80A80000
    lui     a3, %hi(var_80A7D5AC)      # a3 = 80A80000
    sll     t2, t1,  2
    addu    t2, t2, t1
    sll     t2, t2,  1
    addiu   t3, t2, 0x0050             # t3 = 00000050
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t4, $zero, 0x00FF          # t4 = 000000FF
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x0001          # t9 = 00000001
    addiu   t0, $zero, 0x0009          # t0 = 00000009
    sw      t0, 0x0038($sp)
    sw      t9, 0x0034($sp)
    sw      t8, 0x0030($sp)
    sw      t7, 0x0024($sp)
    sw      t6, 0x0020($sp)
    sw      t5, 0x001C($sp)
    sw      t4, 0x0018($sp)
    sw      t1, 0x003C($sp)
    sw      t3, 0x0010($sp)
    addiu   a3, a3, %lo(var_80A7D5AC)  # a3 = 80A7D5AC
    addiu   a2, a2, %lo(var_80A7D5A0)  # a2 = 80A7D5A0
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0014($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001E1D4
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    lwc1    $f0, 0x0024(s0)            # 00000024
    lwc1    $f4, 0x0074($sp)
    lwc1    $f10, 0x007C($sp)
    add.s   $f16, $f0, $f0
    lui     a2, %hi(var_80A7D5A0)      # a2 = 80A80000
    lui     a3, %hi(var_80A7D5AC)      # a3 = 80A80000
    addiu   t5, $zero, 0x00FF          # t5 = 000000FF
    sub.s   $f8, $f16, $f4
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    swc1    $f8, 0x0074($sp)
    lwc1    $f2, 0x002C(s0)            # 0000002C
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    add.s   $f18, $f2, $f2
    addiu   t1, $zero, 0x0009          # t1 = 00000009
    addiu   a3, a3, %lo(var_80A7D5AC)  # a3 = 80A7D5AC
    addiu   a2, a2, %lo(var_80A7D5A0)  # a2 = 80A7D5A0
    sub.s   $f6, $f18, $f10
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    swc1    $f6, 0x007C($sp)
    lh      t2, 0x0186(s0)             # 00000186
    sw      t1, 0x0038($sp)
    sw      t0, 0x0034($sp)
    sll     t3, t2,  2
    addu    t3, t3, t2
    sll     t3, t3,  1
    addiu   t4, t3, 0x0050             # t4 = 00000050
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    sw      t2, 0x003C($sp)
    sw      t4, 0x0010($sp)
    sw      t9, 0x0030($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      t8, 0x0024($sp)
    sw      t7, 0x0020($sp)
    sw      t6, 0x001C($sp)
    sw      t5, 0x0018($sp)
    jal     func_8001E1D4
    sw      $zero, 0x0014($sp)
    lwc1    $f16, 0x0024(s0)           # 00000024
    lui     a2, %hi(var_80A7D5A0)      # a2 = 80A80000
    lui     a3, %hi(var_80A7D5AC)      # a3 = 80A80000
    swc1    $f16, 0x0074($sp)
    lwc1    $f4, 0x002C(s0)            # 0000002C
    addiu   t6, $zero, 0x00FF          # t6 = 000000FF
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    swc1    $f4, 0x007C($sp)
    lh      t3, 0x0186(s0)             # 00000186
    addiu   t8, $zero, 0x00FF          # t8 = 000000FF
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    sll     t4, t3,  2
    addu    t4, t4, t3
    sll     t4, t4,  1
    addiu   t5, t4, 0x0050             # t5 = 00000050
    addiu   t3, $zero, 0x0001          # t3 = 00000001
    addiu   t0, $zero, 0x00FF          # t0 = 000000FF
    addiu   t1, $zero, 0x0001          # t1 = 00000001
    addiu   t2, $zero, 0x0009          # t2 = 00000009
    sw      t2, 0x0038($sp)
    sw      t1, 0x0034($sp)
    sw      t0, 0x0030($sp)
    sw      t3, 0x003C($sp)
    sw      t5, 0x0010($sp)
    sw      t9, 0x0024($sp)
    sw      t8, 0x0020($sp)
    sw      $zero, 0x002C($sp)
    sw      $zero, 0x0028($sp)
    sw      t7, 0x001C($sp)
    sw      t6, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    addiu   a3, a3, %lo(var_80A7D5AC)  # a3 = 80A7D5AC
    addiu   a2, a2, %lo(var_80A7D5A0)  # a2 = 80A7D5A0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8001E1D4
    addiu   a1, $sp, 0x0074            # a1 = FFFFFFF4
    lh      t4, 0x0186(s0)             # 00000186
    addiu   $at, $zero, 0x0001         # $at = 00000001
    or      a0, s0, $zero              # a0 = 00000000
    bnel    t4, $at, lbl_80A7CFAC
    lui     a2, 0x3A83                 # a2 = 3A830000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3878          # a1 = 00003878
lbl_80A7CFA8:
    lui     a2, 0x3A83                 # a2 = 3A830000
lbl_80A7CFAC:
    ori     a2, a2, 0x126F             # a2 = 3A83126F
    addiu   a0, s0, 0x0050             # a0 = 00000050
    jal     func_8006385C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beql    v0, $zero, lbl_80A7D0B8
    lui     $at, 0x4120                # $at = 41200000
    lbu     t5, 0x0184(s0)             # 00000184
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    beq     t5, $zero, lbl_80A7D094
    or      a0, s1, $zero              # a0 = 00000000
    lwc1    $f8, 0x0024(s0)            # 00000024
    lh      v0, 0x13D0(v1)             # 8011B9A0
    lw      t6, 0x0ED0(v1)             # 8011B4A0
    swc1    $f8, 0x0060($sp)
    lwc1    $f18, 0x0080(s0)           # 00000080
    slt     $at, v0, t6
    or      a0, s1, $zero              # a0 = 00000000
    swc1    $f18, 0x0064($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    beq     $at, $zero, lbl_80A7D008
    swc1    $f10, 0x0068($sp)
    sw      v0, 0x0ED0(v1)             # 8011B4A0
lbl_80A7D008:
    jal     func_800206E8
    lh      a1, 0x001C(s0)             # 0000001C
    lui     v1, 0x8012                 # v1 = 80120000
    bne     v0, $zero, lbl_80A7D054
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t7, 0x13D0(v1)             # 8011B9A0
    slti    $at, t7, 0x003D
    beql    $at, $zero, lbl_80A7D058
    lwc1    $f6, 0x0064($sp)
    lh      a2, 0x001C(s0)             # 0000001C
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, $sp, 0x0060            # a1 = FFFFFFE0
    sll     a2, a2,  8
    addiu   a2, a2, 0x4006             # a2 = 00004006
    sll     a2, a2, 16
    jal     func_800138B0
    sra     a2, a2, 16
    beq     $zero, $zero, lbl_80A7D0AC
    nop
lbl_80A7D054:
    lwc1    $f6, 0x0064($sp)
lbl_80A7D058:
    lwc1    $f16, 0x0068($sp)
    addiu   t8, $zero, 0x0002          # t8 = 00000002
    sw      t8, 0x0024($sp)
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s1, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0015          # a2 = 00000015
    lw      a3, 0x0060($sp)
    sw      $zero, 0x0018($sp)
    sw      $zero, 0x001C($sp)
    sw      $zero, 0x0020($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_80025110              # ActorSpawn
    swc1    $f16, 0x0014($sp)
    beq     $zero, $zero, lbl_80A7D0AC
    nop
lbl_80A7D094:
    jal     func_800206AC
    addiu   a1, $zero, 0x0004          # a1 = 00000004
    lui     v1, 0x8012                 # v1 = 80120000
    addiu   v1, v1, 0xA5D0             # v1 = 8011A5D0
    lh      t9, 0x13D0(v1)             # 8011B9A0
    sw      t9, 0x0ED0(v1)             # 8011B4A0
lbl_80A7D0AC:
    jal     func_80020EB4
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
lbl_80A7D0B8:
    mtc1    $at, $f8                   # $f8 = 10.00
    lwc1    $f4, 0x0028(s0)            # 00000028
    lwc1    $f0, 0x0050(s0)            # 00000050
    add.s   $f18, $f4, $f8
    swc1    $f0, 0x0054(s0)            # 00000054
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f18, 0x0028(s0)           # 00000028
    lw      $ra, 0x004C($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0080           # $sp = 00000000


func_80A7D0E8:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x003C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x003C($sp)
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80A7C398
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    lw      a0, 0x003C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    addiu   a2, $zero, 0x0000          # a2 = 00000000
    lui     a3, 0x41D8                 # a3 = 41D80000
    jal     func_80021E6C
    swc1    $f4, 0x0010($sp)
    addiu   a2, s0, 0x0280             # a2 = 00000280
    or      a1, a2, $zero              # a1 = 00000280
    sw      a2, 0x002C($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x003C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x002C($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4248                 # a1 = 42480000
    lbu     v0, 0x0185(s0)             # 00000185
    addiu   t0, $zero, 0x0020          # t0 = 00000020
    beq     v0, $zero, lbl_80A7D1A0
    addiu   t8, v0, 0xFFFF             # t8 = FFFFFFFF
    sb      t8, 0x0185(s0)             # 00000185
    andi    v0, t8, 0x00FF             # v0 = 000000FF
lbl_80A7D1A0:
    bnel    v0, $zero, lbl_80A7D1B0
    lhu     t1, 0x018E(s0)             # 0000018E
    sb      t0, 0x0185(s0)             # 00000185
    lhu     t1, 0x018E(s0)             # 0000018E
lbl_80A7D1B0:
    addiu   $at, $zero, 0x0003         # $at = 00000003
    addiu   t2, t1, 0x0001             # t2 = 00000001
    andi    t3, t2, 0xFFFF             # t3 = 00000001
    bne     t3, $at, lbl_80A7D1C8
    sh      t2, 0x018E(s0)             # 0000018E
    sh      $zero, 0x018E(s0)          # 0000018E
lbl_80A7D1C8:
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop


func_80A7D1DC:
    addiu   $sp, $sp, 0xFF98           # $sp = FFFFFF98
    sw      a2, 0x0070($sp)
    or      a2, a0, $zero              # a2 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0068($sp)
    sw      a3, 0x0074($sp)
    addiu   $at, $zero, 0x000E         # $at = 0000000E
    bnel    a1, $at, lbl_80A7D360
    addiu   $at, $zero, 0x0008         # $at = 00000008
    lw      a0, 0x0000(a2)             # 00000000
    jal     func_800CDCCC              # Rand.Next() float
    sw      a0, 0x0050($sp)
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f4                   # $f4 = 30.00
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f10                  # $f10 = 100.00
    mul.s   $f6, $f0, $f4
    lui     $at, 0x4320                # $at = 43200000
    mtc1    $at, $f4                   # $f4 = 160.00
    mul.s   $f16, $f0, $f10
    lw      v1, 0x0078($sp)
    lw      a0, 0x0050($sp)
    addiu   a1, $sp, 0x0054            # a1 = FFFFFFEC
    trunc.w.s $f8, $f6
    mul.s   $f6, $f0, $f4
    mfc1    t9, $f8
    trunc.w.s $f18, $f16
    addiu   t0, t9, 0x00E1             # t0 = 000000E1
    sb      t0, 0x0268(v1)             # 00000268
    trunc.w.s $f8, $f6
    mfc1    t4, $f18
    mfc1    t9, $f8
    addiu   t5, t4, 0x009B             # t5 = 0000009B
    sb      t5, 0x0269(v1)             # 00000269
    addiu   t0, t9, 0x005F             # t0 = 0000005F
    sb      t0, 0x026A(v1)             # 0000026A
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t2, 0xE700                 # t2 = E7000000
    addiu   t1, v0, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(a0)             # 000002C0
    sw      $zero, 0x0004(v0)          # 00000004
    sw      t2, 0x0000(v0)             # 00000000
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t4, 0xFB00                 # t4 = FB000000
    addiu   t3, v0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(a0)             # 000002C0
    sw      t4, 0x0000(v0)             # 00000000
    lbu     t9, 0x0269(v1)             # 00000269
    lbu     t6, 0x0268(v1)             # 00000268
    lbu     t3, 0x026A(v1)             # 0000026A
    sll     t0, t9, 16
    sll     t7, t6, 24
    or      t1, t7, t0                 # t1 = 0000005F
    sll     t4, t3,  8
    or      t5, t1, t4                 # t5 = FB00005F
    ori     t6, t5, 0x0080             # t6 = FB0000DF
    sw      t6, 0x0004(v0)             # 00000004
    lw      v0, 0x02C0(a0)             # 000002C0
    lui     t7, 0x0601                 # t7 = 06010000
    addiu   t7, t7, 0xB838             # t7 = 0600B838
    addiu   t8, v0, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a0)             # 000002C0
    lui     t9, 0xDE00                 # t9 = DE000000
    sw      t9, 0x0000(v0)             # 00000000
    sw      t7, 0x0004(v0)             # 00000004
    lui     a0, %hi(var_80A7D5B8)      # a0 = 80A80000
    jal     func_800AB958
    addiu   a0, a0, %lo(var_80A7D5B8)  # a0 = 80A7D5B8
    lw      v1, 0x0078($sp)
    lwc1    $f10, 0x0054($sp)
    lwc1    $f18, 0x0058($sp)
    lwc1    $f6, 0x005C($sp)
    lbu     t1, 0x0268(v1)             # 00000268
    trunc.w.s $f16, $f10
    addiu   t6, $zero, 0x00C8          # t6 = 000000C8
    sw      t1, 0x0010($sp)
    trunc.w.s $f4, $f18
    lbu     t4, 0x0269(v1)             # 00000269
    mfc1    a1, $f16
    trunc.w.s $f8, $f6
    mfc1    a2, $f4
    sw      t4, 0x0014($sp)
    lbu     t5, 0x026A(v1)             # 0000026A
    mfc1    a3, $f8
    sll     a1, a1, 16
    sll     a2, a2, 16
    sll     a3, a3, 16
    sra     a3, a3, 16
    sra     a2, a2, 16
    sra     a1, a1, 16
    sw      t6, 0x001C($sp)
    addiu   a0, v1, 0x0270             # a0 = 00000270
    jal     func_80065BCC
    sw      t5, 0x0018($sp)
    beq     $zero, $zero, lbl_80A7D3C4
    lw      $ra, 0x0024($sp)
    addiu   $at, $zero, 0x0008         # $at = 00000008
lbl_80A7D360:
    bnel    a1, $at, lbl_80A7D3C4
    lw      $ra, 0x0024($sp)
    lw      a1, 0x0000(a2)             # 00000000
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(a1)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lw      a0, 0x0000(a2)             # 00000000
    sw      a1, 0x003C($sp)
    jal     func_800AB900
    sw      v1, 0x0034($sp)
    lw      a3, 0x0034($sp)
    lw      a1, 0x003C($sp)
    lui     t0, 0xDE00                 # t0 = DE000000
    sw      v0, 0x0004(a3)             # 00000004
    lw      v1, 0x02C0(a1)             # 000002C0
    lui     t2, 0x0601                 # t2 = 06010000
    addiu   t2, t2, 0xBBA0             # t2 = 0600BBA0
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(a1)             # 000002C0
    sw      t2, 0x0004(v1)             # 00000004
    sw      t0, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)
lbl_80A7D3C4:
    addiu   $sp, $sp, 0x0068           # $sp = 00000000
    jr      $ra
    nop


func_80A7D3D0:
    addiu   $sp, $sp, 0xFFC8           # $sp = FFFFFFC8
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x003C($sp)
    lw      t6, 0x003C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    sw      a0, 0x0030($sp)
    lw      t1, 0x0030($sp)
    lw      v1, 0x02C0(t1)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(t1)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lhu     t9, 0x018E(s0)             # 0000018E
    lui     t0, %hi(var_80A7D5C4)      # t0 = 80A80000
    lui     t7, 0x8012                 # t7 = 80120000
    sll     t2, t9,  2
    addu    t0, t0, t2
    lw      t0, %lo(var_80A7D5C4)(t0)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t4, t0,  4
    srl     t5, t4, 28
    sll     t6, t5,  2
    addu    t7, t7, t6
    lw      t7, 0x0C38(t7)             # 80120C38
    and     t3, t0, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t8, t3, t7
    addu    t9, t8, $at
    sw      t9, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s0)             # 00000140
    lw      a2, 0x015C(s0)             # 0000015C
    lbu     a3, 0x013E(s0)             # 0000013E
    lui     t2, %hi(func_80A7D1DC)     # t2 = 80A80000
    addiu   t2, t2, %lo(func_80A7D1DC) # t2 = 80A7D1DC
    sw      t2, 0x0014($sp)
    sw      s0, 0x0018($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    lw      a0, 0x003C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0038           # $sp = 00000000
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80A7D4A0: .byte 0xFF, 0xC4
var_80A7D4A2: .byte \
0xFD, 0xEE, 0xF4, 0x7A, 0x01, 0x86, 0xFE, 0x0C, 0xF4, 0x7A, 0x01, 0x86, 0xFE, 0x0C, 0xF0, 0xF6, \
0x00, 0xD2, 0xFD, 0xEE, 0xF0, 0xF6, 0x00, 0xD2, 0xFD, 0x9E, 0xEE, 0xDA, 0x02, 0x3A, 0xFD, 0xC6, \
0xEE, 0xDA, 0x02, 0x3A, 0xFD, 0xC6, 0xED, 0x18, 0x00, 0xD2, 0xFD, 0xC6, 0xED, 0x18, 0x00, 0xD2, \
0xFD, 0xC6, 0xEB, 0xCE, 0x00, 0xD2, 0xFD, 0xC6, 0xEA, 0xA2, 0x02, 0x3A, 0xFD, 0xC6, 0xEA, 0xA2, \
0x02, 0x3A, 0xFD, 0xC6, 0xEB, 0xB0, 0x04, 0xEC, 0xFD, 0x9E, 0xEB, 0xB0, 0x06, 0x72, 0xFD, 0x62, \
0xED, 0x18, 0x06, 0x72, 0xFD, 0x30, 0xEE, 0x80, 0x07, 0xDA, 0xFD, 0x26, 0xEE, 0x80, 0x07, 0xDA, \
0xFD, 0x26, 0xEF, 0x70, 0x07, 0xDA, 0xFD, 0x26, 0xF2, 0x04, 0x06, 0x72, 0xFD, 0x44, 0xF2, 0x04, \
0x06, 0x72, 0xFD, 0x6C, 0xF3, 0xC6, 0x08, 0x8E, 0xFD, 0x6C, 0xF3, 0xC6, 0x08, 0x8E, 0xFD, 0xB2, \
0xF5, 0xE2, 0x09, 0x9C, 0xFD, 0xD0, 0xF5, 0xE2, 0x0B, 0x54, 0xFE, 0x66, 0xF7, 0x72, 0x0B, 0x4E, \
0xFE, 0x66, 0xF8, 0x7E, 0x0B, 0x4A, 0xFE, 0x66, 0xF9, 0x7A, 0x0B, 0x4A, 0xFE, 0x98, 0xF9, 0xFC, \
0x0B, 0xAE, 0xFE, 0x98, 0xF9, 0xFC
var_80A7D548: .word 0x01220400, 0x00011019, 0x00890000, 0x000002CC
.word func_80A7C040
.word func_80A7C1C8
.word func_80A7D0E8
.word func_80A7D3D0
var_80A7D568: .word \
0x0A000039, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x001E0034, 0x00000000, 0x00000000
var_80A7D594: .word 0x00000000
var_80A7D598: .word 0x8917004F, 0x304C05DC
var_80A7D5A0: .word 0x00000000, 0x3FC00000, 0x00000000
var_80A7D5AC: .word 0x00000000, 0x00000000, 0x00000000
var_80A7D5B8: .word 0x00000000, 0x44960000, 0x00000000
var_80A7D5C4: .word 0x06003B40, 0x06004340, 0x06004B40

.section .rodata

var_80A7D5D0: .word 0x3CF5C28F
var_80A7D5D4: .word 0x44D98000
var_80A7D5D8: .word 0x44C58000
var_80A7D5DC: .word 0x4502A000
var_80A7D5E0: .word 0x3FB33333
var_80A7D5E4: .word 0x3F99999A
var_80A7D5E8: .word 0x3F99999A
var_80A7D5EC: .word 0x3F4CCCCD
var_80A7D5F0: .word 0x3CA3D70A, 0x00000000, 0x00000000, 0x00000000

