.section .text
func_80B51F50:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    lui     t6, 0x8012                 # t6 = 80120000
    lhu     t6, -0x4B2A(t6)            # 8011B4D6
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    andi    t7, t6, 0x0040             # t7 = 00000000
    beq     t7, $zero, lbl_80B51F8C
    addu    a0, a3, $at
    jal     func_80020EB4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80B51FA4
    lw      $ra, 0x0014($sp)
lbl_80B51F8C:
    addiu   a1, $zero, 0x00C5          # a1 = 000000C5
    jal     func_80081628              # ObjectIndex
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    sb      v0, 0x02FC(a2)             # 000002FC
    lw      $ra, 0x0014($sp)
lbl_80B51FA4:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B51FB0:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x0244             # a1 = 00000244
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B51FDC:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x17A4           # $at = 000117A4
    addu    a0, s1, $at
    jal     func_80081688
    lb      a1, 0x02FC(s0)             # 000002FC
    beq     v0, $zero, lbl_80B52138
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    lw      t6, 0x0004(s0)             # 00000004
    lui     a1, %hi(var_80B5282C)      # a1 = 80B50000
    addiu   a1, a1, %lo(var_80B5282C)  # a1 = 80B5282C
    and     t7, t6, $at
    sw      t7, 0x0004(s0)             # 00000004
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    lui     a2, 0x0600                 # a2 = 06000000
    addiu   t8, s0, 0x0180             # t8 = 00000180
    addiu   t9, s0, 0x01E0             # t9 = 000001E0
    addiu   t0, $zero, 0x0010          # t0 = 00000010
    sw      t0, 0x0018($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    addiu   a2, a2, 0x00F0             # a2 = 060000F0
    sw      a1, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C788
    or      a3, $zero, $zero           # a3 = 00000000
    lb      t1, 0x02FC(s0)             # 000002FC
    lui     t4, 0x0001                 # t4 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t2, t1,  4
    addu    t2, t2, t1
    sll     t2, t2,  2
    addu    t3, s1, t2
    addu    t4, t4, t3
    lw      t4, 0x17B4(t4)             # 000117B4
    lui     a0, 0x0600                 # a0 = 06000000
    addiu   a0, a0, 0x42AC             # a0 = 060042AC
    addu    t5, t4, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008A194
    sw      t5, 0x0C50($at)            # 80120C50
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    cvt.s.w $f6, $f4
    mfc1    a3, $f0
    addiu   a1, a1, 0x42AC             # a1 = 060042AC
    lw      a0, 0x0030($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    sw      $zero, 0x0014($sp)
    swc1    $f6, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    lui     t6, %hi(func_80B52688)     # t6 = 80B50000
    lui     t7, %hi(func_80B522B4)     # t7 = 80B50000
    addiu   t6, t6, %lo(func_80B52688) # t6 = 80B52688
    addiu   t7, t7, %lo(func_80B522B4) # t7 = 80B522B4
    sw      t6, 0x0134(s0)             # 00000134
    sw      t7, 0x0130(s0)             # 00000130
    addiu   a1, s0, 0x0244             # a1 = 00000244
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B52800)      # a3 = 80B50000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B52800)  # a3 = 80B52800
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004AC84
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    lui     t9, %hi(func_80B521F8)     # t9 = 80B50000
    addiu   t8, $zero, 0x700D          # t8 = 0000700D
    addiu   t9, t9, %lo(func_80B521F8) # t9 = 80B521F8
    sb      $zero, 0x02FE(s0)          # 000002FE
    sb      $zero, 0x02FD(s0)          # 000002FD
    sh      $zero, 0x02BA(s0)          # 000002BA
    sh      t8, 0x010E(s0)             # 0000010E
    sw      t9, 0x0240(s0)             # 00000240
lbl_80B52138:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp = 00000000


func_80B5214C:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    lbu     t6, 0x02FD(a0)             # 000002FD
    bnel    t6, $zero, lbl_80B52184
    lh      v0, 0x02BA(a0)             # 000002BA
    lh      v0, 0x02BA(a0)             # 000002BA
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    beq     v0, $zero, lbl_80B52178
    addiu   t7, v0, 0xFFFF             # t7 = FFFFFFFF
    beq     $zero, $zero, lbl_80B521E8
    sh      t7, 0x02BA(a0)             # 000002BA
lbl_80B52178:
    beq     $zero, $zero, lbl_80B521E8
    sb      t8, 0x02FD(a0)             # 000002FD
    lh      v0, 0x02BA(a0)             # 000002BA
lbl_80B52184:
    beq     v0, $zero, lbl_80B52194
    addiu   t9, v0, 0xFFFF             # t9 = FFFFFFFF
    beq     $zero, $zero, lbl_80B521E8
    sh      t9, 0x02BA(a0)             # 000002BA
lbl_80B52194:
    lbu     t0, 0x02FE(a0)             # 000002FE
    addiu   t6, $zero, 0x0001          # t6 = 00000001
    addiu   t1, t0, 0x0001             # t1 = 00000001
    andi    t2, t1, 0x00FF             # t2 = 00000001
    slti    $at, t2, 0x0003
    bne     $at, $zero, lbl_80B521E4
    sb      t1, 0x02FE(a0)             # 000002FE
    lui     $at, 0x4270                # $at = 42700000
    sb      $zero, 0x02FE(a0)          # 000002FE
    sb      $zero, 0x02FD(a0)          # 000002FD
    mtc1    $at, $f12                  # $f12 = 60.00
    jal     func_80026D64
    sw      a0, 0x0018($sp)
    trunc.w.s $f4, $f0
    lw      a0, 0x0018($sp)
    mfc1    t4, $f4
    nop
    addiu   t5, t4, 0x0014             # t5 = 00000014
    beq     $zero, $zero, lbl_80B521E8
    sh      t5, 0x02BA(a0)             # 000002BA
lbl_80B521E4:
    sh      t6, 0x02BA(a0)             # 000002BA
lbl_80B521E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B521F8:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80B52228
    lw      a0, 0x0018($sp)
    lui     t6, %hi(func_80B52260)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B52260) # t6 = 80B52260
    beq     $zero, $zero, lbl_80B52250
    sw      t6, 0x0240(a0)             # 00000240
lbl_80B52228:
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80B52254
    lw      $ra, 0x0014($sp)
    mfc1    a2, $f0
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80B52250:
    lw      $ra, 0x0014($sp)
lbl_80B52254:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B52260:
    addiu   $sp, $sp, 0xFFE8           # $sp = FFFFFFE8
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a0, 0x001C($sp)
    jal     func_800DD464
    addiu   a0, a0, 0x20D8             # a0 = 000020D8
    addiu   $at, $zero, 0x0006         # $at = 00000006
    bnel    v0, $at, lbl_80B522A8
    lw      $ra, 0x0014($sp)
    jal     func_800D6110
    lw      a0, 0x001C($sp)
    beq     v0, $zero, lbl_80B522A4
    lw      t7, 0x0018($sp)
    lui     t6, %hi(func_80B521F8)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B521F8) # t6 = 80B521F8
    sw      t6, 0x0240(t7)             # 00000240
lbl_80B522A4:
    lw      $ra, 0x0014($sp)
lbl_80B522A8:
    addiu   $sp, $sp, 0x0018           # $sp = 00000000
    jr      $ra
    nop


func_80B522B4:
    addiu   $sp, $sp, 0xFFD0           # $sp = FFFFFFD0
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lw      t6, 0x1C44(s1)             # 00001C44
    or      a0, s0, $zero              # a0 = 00000000
    sw      t6, 0x0024($sp)
    lh      t7, 0x02B8(s0)             # 000002B8
    addiu   t8, t7, 0x0001             # t8 = 00000001
    jal     func_80B5214C
    sh      t8, 0x02B8(s0)             # 000002B8
    lw      t9, 0x0240(s0)             # 00000240
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      t0, 0x0024($sp)
    lui     t3, 0x8012                 # t3 = 80120000
    lui     $at, 0x41A0                # $at = 41A00000
    lw      t2, 0x0024(t0)             # 00000024
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0290             # a1 = 00000290
    sw      t2, 0x02A8(s0)             # 000002A8
    lw      t1, 0x0028(t0)             # 00000028
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    sw      t1, 0x02AC(s0)             # 000002AC
    lw      t2, 0x002C(t0)             # 0000002C
    sw      t2, 0x02B0(s0)             # 000002B0
    lw      t3, -0x5A2C(t3)            # 8011A5D4
    bnel    t3, $zero, lbl_80B5234C
    mtc1    $at, $f6                   # $f6 = 20.00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    beq     $zero, $zero, lbl_80B52354
    swc1    $f4, 0x02A4(s0)            # 000002A4
    mtc1    $at, $f6                   # $f6 = 10.00
lbl_80B5234C:
    nop
    swc1    $f6, 0x02A4(s0)            # 000002A4
lbl_80B52354:
    jal     func_80027854
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x02BC             # a1 = 000002BC
    addiu   a2, s0, 0x02DC             # a2 = 000002DC
    jal     func_80027D30
    addiu   a3, $zero, 0x0010          # a3 = 00000010
    lb      t4, 0x02FC(s0)             # 000002FC
    lui     t7, 0x0001                 # t7 = 00010000
    lui     $at, 0x8000                # $at = 80000000
    sll     t5, t4,  4
    addu    t5, t5, t4
    sll     t5, t5,  2
    addu    t6, s1, t5
    addu    t7, t7, t6
    lw      t7, 0x17B4(t7)             # 000117B4
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    addu    t8, t7, $at
    lui     $at, 0x8012                # $at = 80120000
    jal     func_8008C9C0
    sw      t8, 0x0C50($at)            # 80120C50
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80020F04
    lui     a1, 0x4270                 # a1 = 42700000
    addiu   a2, s0, 0x0244             # a2 = 00000244
    or      a1, a2, $zero              # a1 = 00000244
    sw      a2, 0x0020($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0020($sp)
    addu    a1, s1, $at
    jal     func_8004C130              # CollisionCheck_setOT
    or      a0, s1, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp = 00000000


func_80B523F4:
    sw      a1, 0x0004($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    andi    a3, a3, 0x00FF             # a3 = 00000000
    andi    a2, a2, 0x00FF             # a2 = 00000000
    andi    a1, a1, 0x00FF             # a1 = 00000000
    lw      v1, 0x02C4(a0)             # 000002C4
    lui     t6, 0xFB00                 # t6 = FB000000
    sll     t8, a1, 24
    addiu   v1, v1, 0xFFF0             # v1 = FFFFFFF0
    sw      v1, 0x02C4(a0)             # 000002C4
    sw      t6, 0x0000(v1)             # FFFFFFF0
    andi    t9, a2, 0x00FF             # t9 = 00000000
    lbu     t6, 0x0013($sp)
    sll     t0, t9, 16
    andi    t2, a3, 0x00FF             # t2 = 00000000
    sll     t3, t2,  8
    or      t1, t8, t0                 # t1 = 00000000
    or      t4, t1, t3                 # t4 = 00000000
    or      t7, t4, t6                 # t7 = FB000000
    sw      t7, 0x0004(v1)             # FFFFFFF4
    lui     t9, 0xDF00                 # t9 = DF000000
    sw      t9, 0x0008(v1)             # FFFFFFF8
    sw      $zero, 0x000C(v1)          # FFFFFFFC
    or      v0, v1, $zero              # v0 = FFFFFFF0
    jr      $ra
    nop


func_80B52460:
    addiu   $sp, $sp, 0xFFC0           # $sp = FFFFFFC0
    sw      s0, 0x0018($sp)
    sw      a0, 0x0040($sp)
    or      a0, a2, $zero              # a0 = 00000000
    or      s0, a1, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a3, 0x004C($sp)
    addiu   $at, $zero, 0x000F         # $at = 0000000F
    bne     s0, $at, lbl_80B52540
    lui     t6, 0x0600                 # t6 = 06000000
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0x44AF                # $at = 44AF0000
    addiu   t6, t6, 0x59B0             # t6 = 060059B0
    mtc1    $at, $f12                  # $f12 = 1400.00
    mfc1    a2, $f14
    sw      t6, 0x0000(a0)             # 00000000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t8, 0x0054($sp)
    addiu   t7, $sp, 0x0034            # t7 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    lwl     t0, 0x0298(t8)             # 00000298
    lwr     t0, 0x029B(t8)             # 0000029B
    mtc1    $at, $f8                   # $f8 = 32768.00
    lui     $at, %hi(var_80B52840)     # $at = 80B50000
    sw      t0, 0x0000(t7)             # FFFFFFF4
    lhu     t0, 0x029C(t8)             # 0000029C
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    sh      t0, 0x0004(t7)             # FFFFFFF8
    lh      t1, 0x0036($sp)
    lwc1    $f16, %lo(var_80B52840)($at)
    mtc1    t1, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    div.s   $f10, $f6, $f8
    mul.s   $f12, $f10, $f16
    jal     func_800AA9E0
    nop
    lh      t2, 0x0034($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f6                   # $f6 = 32768.00
    mtc1    t2, $f18                   # $f18 = 0.00
    lui     $at, %hi(var_80B52844)     # $at = 80B50000
    lwc1    $f10, %lo(var_80B52844)($at)
    cvt.s.w $f4, $f18
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f8, $f4, $f6
    mul.s   $f12, $f8, $f10
    jal     func_800AAD4C
    nop
    mtc1    $zero, $f14                # $f14 = 0.00
    lui     $at, 0xC4AF                # $at = C4AF0000
    mtc1    $at, $f12                  # $f12 = -1400.00
    mfc1    a2, $f14
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
lbl_80B52540:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    bne     s0, $at, lbl_80B525CC
    lw      t4, 0x0054($sp)
    lwl     t6, 0x029E(t4)             # 0000029E
    lwr     t6, 0x02A1(t4)             # 000002A1
    addiu   t3, $sp, 0x0034            # t3 = FFFFFFF4
    lui     $at, 0x4700                # $at = 47000000
    sw      t6, 0x0000(t3)             # FFFFFFF4
    lhu     t6, 0x02A2(t4)             # 000002A2
    mtc1    $at, $f4                   # $f4 = 32768.00
    lui     $at, %hi(var_80B52848)     # $at = 80B50000
    sh      t6, 0x0004(t3)             # FFFFFFF8
    lh      t7, 0x0036($sp)
    lwc1    $f8, %lo(var_80B52848)($at)
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    subu    t8, $zero, t7
    mtc1    t8, $f16                   # $f16 = 0.00
    nop
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    mul.s   $f12, $f6, $f8
    jal     func_800AA9E0
    nop
    lh      t9, 0x0034($sp)
    lui     $at, 0x4700                # $at = 47000000
    mtc1    $at, $f18                  # $f18 = 32768.00
    mtc1    t9, $f10                   # $f10 = 0.00
    lui     $at, %hi(var_80B5284C)     # $at = 80B50000
    lwc1    $f6, %lo(var_80B5284C)($at)
    cvt.s.w $f16, $f10
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    div.s   $f4, $f16, $f18
    mul.s   $f12, $f4, $f6
    jal     func_800AAD4C
    nop
lbl_80B525CC:
    addiu   $at, $zero, 0x0008         # $at = 00000008
    beq     s0, $at, lbl_80B525E8
    lw      t0, 0x0054($sp)
    addiu   $at, $zero, 0x0009         # $at = 00000009
    beq     s0, $at, lbl_80B525E8
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     s0, $at, lbl_80B52670
lbl_80B525E8:
    sll     t1, s0,  1
    addu    v1, t0, t1
    lh      a0, 0x02BC(v1)             # 000002BC
    jal     func_800636C4              # sins?
    sw      v1, 0x0024($sp)
    lw      v0, 0x0050($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f16                  # $f16 = 200.00
    lh      t2, 0x0002(v0)             # 00000002
    lw      v1, 0x0024($sp)
    mul.s   $f18, $f0, $f16
    mtc1    t2, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f10, $f8
    add.s   $f4, $f10, $f18
    trunc.w.s $f6, $f4
    mfc1    t4, $f6
    nop
    sh      t4, 0x0002(v0)             # 00000002
    jal     func_80063684              # coss?
    lh      a0, 0x02DC(v1)             # 000002DC
    lw      v0, 0x0050($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f10                  # $f10 = 200.00
    lh      t5, 0x0004(v0)             # 00000004
    mul.s   $f18, $f0, $f10
    mtc1    t5, $f8                    # $f8 = 0.00
    nop
    cvt.s.w $f16, $f8
    add.s   $f4, $f16, $f18
    trunc.w.s $f6, $f4
    mfc1    t7, $f6
    nop
    sh      t7, 0x0004(v0)             # 00000004
lbl_80B52670:
    or      v0, $zero, $zero           # v0 = 00000000
    lw      $ra, 0x001C($sp)
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0040           # $sp = 00000000
    jr      $ra
    nop


func_80B52688:
    addiu   $sp, $sp, 0xFFB8           # $sp = FFFFFFB8
    sw      s1, 0x0028($sp)
    or      s1, a0, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    sw      s0, 0x0024($sp)
    sw      a1, 0x004C($sp)
    lw      t6, 0x004C($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E298
    or      s0, a0, $zero              # s0 = 00000000
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t8, 0xDB06                 # t8 = DB060000
    ori     t8, t8, 0x0020             # t8 = DB060020
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02C0(s0)             # 000002C0
    sw      t8, 0x0000(v1)             # 00000000
    lw      t9, 0x004C($sp)
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    addiu   a1, $zero, 0x00FF          # a1 = 000000FF
    lw      a0, 0x0000(t9)             # 00000000
    sw      t3, 0x0010($sp)
    addiu   a2, $zero, 0x00FF          # a2 = 000000FF
    addiu   a3, $zero, 0x00FF          # a3 = 000000FF
    jal     func_80B523F4
    sw      v1, 0x0034($sp)
    lw      t0, 0x0034($sp)
    lui     t5, 0xDB06                 # t5 = DB060000
    ori     t5, t5, 0x0024             # t5 = DB060024
    sw      v0, 0x0004(t0)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    addiu   t7, $zero, 0x00FF          # t7 = 000000FF
    addiu   a1, $zero, 0x00A0          # a1 = 000000A0
    addiu   t4, v1, 0x0008             # t4 = 00000008
    sw      t4, 0x02C0(s0)             # 000002C0
    sw      t5, 0x0000(v1)             # 00000000
    lw      t6, 0x004C($sp)
    addiu   a2, $zero, 0x003C          # a2 = 0000003C
    addiu   a3, $zero, 0x00DC          # a3 = 000000DC
    lw      a0, 0x0000(t6)             # 00000000
    sw      t7, 0x0010($sp)
    jal     func_80B523F4
    sw      v1, 0x0030($sp)
    lw      t2, 0x0030($sp)
    sw      v0, 0x0004(t2)             # 00000004
    lw      v1, 0x02C0(s0)             # 000002C0
    lui     t9, 0xDB06                 # t9 = DB060000
    ori     t9, t9, 0x0028             # t9 = DB060028
    addiu   t8, v1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s0)             # 000002C0
    sw      t9, 0x0000(v1)             # 00000000
    lbu     t3, 0x02FE(s1)             # 000002FE
    lui     t1, %hi(var_80B52834)      # t1 = 80B50000
    lui     t9, 0x8012                 # t9 = 80120000
    sll     t4, t3,  2
    addu    t1, t1, t4
    lw      t1, %lo(var_80B52834)(t1)
    lui     $at, 0x00FF                # $at = 00FF0000
    ori     $at, $at, 0xFFFF           # $at = 00FFFFFF
    sll     t6, t1,  4
    srl     t7, t6, 28
    sll     t8, t7,  2
    addu    t9, t9, t8
    lw      t9, 0x0C38(t9)             # 80120C38
    and     t5, t1, $at
    lui     $at, 0x8000                # $at = 80000000
    addu    t3, t5, t9
    addu    t4, t3, $at
    sw      t4, 0x0004(v1)             # 00000004
    lw      a1, 0x0140(s1)             # 00000140
    lw      a2, 0x015C(s1)             # 0000015C
    lbu     a3, 0x013E(s1)             # 0000013E
    lui     t6, %hi(func_80B52460)     # t6 = 80B50000
    addiu   t6, t6, %lo(func_80B52460) # t6 = 80B52460
    sw      t6, 0x0010($sp)
    sw      s1, 0x0018($sp)
    sw      $zero, 0x0014($sp)
    jal     func_80089D8C
    lw      a0, 0x004C($sp)
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0048           # $sp = 00000000
    nop
    nop
    nop

.section .data

var_80B527E0: .word 0x01A40400, 0x00000019, 0x01110000, 0x00000300
.word func_80B51F50
.word func_80B51FB0
.word func_80B51FDC
.word 0x00000000
var_80B52800: .word \
0x0A000039, 0x01000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000, 0x00000000, 0x00000100, \
0x000A003C, 0x00000000, 0x00000000
var_80B5282C: .word 0x801F0006, 0x304C01F4
var_80B52834: .word 0x060005FC, 0x060006FC, 0x060007FC

.section .rodata

var_80B52840: .word 0x40490FDB
var_80B52844: .word 0x40490FDB
var_80B52848: .word 0x40490FDB
var_80B5284C: .word 0x40490FDB

