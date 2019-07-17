.section .text
func_80ADB350:
    sw      a1, 0x027C(a0)             # 0000027C
    jr      $ra
    nop


func_80ADB35C:
    addiu   $sp, $sp, 0xFFB0           # $sp -= 0x50
    sw      s1, 0x0038($sp)
    sw      s0, 0x0034($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x003C($sp)
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_8001EC20
    lui     a3, 0x4210                 # a3 = 42100000
    addiu   a1, s0, 0x0188             # a1 = 00000188
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x01CC             # t6 = 000001CC
    addiu   t7, s0, 0x021A             # t7 = 0000021A
    addiu   t8, $zero, 0x000D          # t8 = 0000000D
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x045C             # a3 = 0600045C
    addiu   a2, a2, 0x5EA0             # a2 = 06005EA0
    sw      a1, 0x0044($sp)
    jal     func_8008C788
    or      a0, s1, $zero              # a0 = 00000000
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x045C             # a1 = 0600045C
    jal     func_8008D1C4
    lw      a0, 0x0044($sp)
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    sw      a1, 0x0044($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80ADBC30)      # a3 = 80AE0000
    lw      a1, 0x0044($sp)
    addiu   a3, a3, %lo(var_80ADBC30)  # a3 = 80ADBC30
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t9, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    or      a0, s0, $zero              # a0 = 00000000
    lui     a1, %hi(func_80ADB868)     # a1 = 80AE0000
    addiu   a1, a1, %lo(func_80ADB868) # a1 = 80ADB868
    jal     func_80ADB350
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0xBF80                # $at = BF800000
    mtc1    $at, $f4                   # $f4 = -1.00
    lwc1    $f6, 0x0024(s0)            # 00000024
    sh      $zero, 0x0274(s0)          # 00000274
    swc1    $f4, 0x006C(s0)            # 0000006C
    swc1    $f6, 0x0010($sp)
    lwc1    $f8, 0x0028(s0)            # 00000028
    addiu   a0, s1, 0x1C24             # a0 = 00001C24
    or      a1, s0, $zero              # a1 = 00000000
    swc1    $f8, 0x0014($sp)
    lwc1    $f10, 0x002C(s0)           # 0000002C
    sw      $zero, 0x0028($sp)
    sw      $zero, 0x0024($sp)
    sw      $zero, 0x0020($sp)
    sw      $zero, 0x001C($sp)
    or      a2, s1, $zero              # a2 = 00000000
    addiu   a3, $zero, 0x016B          # a3 = 0000016B
    jal     func_800253F0
    swc1    $f10, 0x0018($sp)
    lw      $ra, 0x003C($sp)
    lw      s0, 0x0034($sp)
    lw      s1, 0x0038($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0050           # $sp += 0x50


func_80ADB480:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x013C             # a1 = 0000013C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB4AC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    sw      a2, 0x0020($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80ADB4D8
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80ADB544
    addiu   v0, $zero, 0x0001          # v0 = 00000001
lbl_80ADB4D8:
    lh      t7, 0x008A(a0)             # 0000008A
    lh      t8, 0x00B6(a0)             # 000000B6
    lhu     t6, 0x0022($sp)
    subu    v0, t7, t8
    sll     v0, v0, 16
    sra     v0, v0, 16
    bltz    v0, lbl_80ADB500
    sh      t6, 0x010E(a0)             # 0000010E
    beq     $zero, $zero, lbl_80ADB504
    or      v1, v0, $zero              # v1 = 00000001
lbl_80ADB500:
    subu    v1, $zero, v0
lbl_80ADB504:
    slti    $at, v1, 0x1801
    beq     $at, $zero, lbl_80ADB540
    lui     $at, 0x42C8                # $at = 42C80000
    mtc1    $at, $f0                   # $f0 = 100.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_80ADB544
    or      v0, $zero, $zero           # v0 = 00000000
    lhu     t9, 0x0274(a0)             # 00000274
    mfc1    a2, $f0
    ori     t0, t9, 0x0001             # t0 = 00000001
    sh      t0, 0x0274(a0)             # 00000274
    jal     func_80022A68
    lw      a1, 0x001C($sp)
lbl_80ADB540:
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ADB544:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB554:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a1, %hi(func_80ADB868)     # a1 = 80AE0000
    addiu   a1, a1, %lo(func_80ADB868) # a1 = 80ADB868
    jal     func_80ADB350
    lw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x045C             # a0 = 0600045C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x045C             # a1 = 0600045C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0188             # a0 = 00000188
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80ADB5C8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    jal     func_80022AD0
    lw      a0, 0x0018($sp)
    beql    v0, $zero, lbl_80ADB608
    lw      $ra, 0x0014($sp)
    jal     func_80ADB554
    lw      a0, 0x0018($sp)
    lw      t6, 0x0018($sp)
    lui     $at, 0xFFFE                # $at = FFFE0000
    ori     $at, $at, 0xFFFF           # $at = FFFEFFFF
    lw      t7, 0x0004(t6)             # 00000004
    and     t8, t7, $at
    sw      t8, 0x0004(t6)             # 00000004
    lw      $ra, 0x0014($sp)
lbl_80ADB608:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB614:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x001C($sp)
    jal     func_80022930
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80ADB648
    lw      a0, 0x0018($sp)
    lui     a1, %hi(func_80ADB5C8)     # a1 = 80AE0000
    jal     func_80ADB350
    addiu   a1, a1, %lo(func_80ADB5C8) # a1 = 80ADB5C8
    beq     $zero, $zero, lbl_80ADB658
    lw      $ra, 0x0014($sp)
lbl_80ADB648:
    lw      a1, 0x001C($sp)
    jal     func_80022A68
    lui     a2, 0x447A                 # a2 = 447A0000
    lw      $ra, 0x0014($sp)
lbl_80ADB658:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB664:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    jal     func_80022AD0
    sw      a0, 0x0018($sp)
    beq     v0, $zero, lbl_80ADB6A8
    lw      a0, 0x0018($sp)
    addiu   t6, $zero, 0x6078          # t6 = 00006078
    sh      t6, 0x010E(a0)             # 0000010E
    lui     a1, %hi(func_80ADB614)     # a1 = 80AE0000
    addiu   a1, a1, %lo(func_80ADB614) # a1 = 80ADB614
    jal     func_80ADB350
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x0001                # $at = 00010000
    lw      t7, 0x0004(a0)             # 00000004
    or      t8, t7, $at                # t8 = 00010000
    sw      t8, 0x0004(a0)             # 00000004
lbl_80ADB6A8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB6B8:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    lw      a1, 0x0024($sp)
    jal     func_80022BB0
    sw      a0, 0x0020($sp)
    beq     v0, $zero, lbl_80ADB6F0
    lw      a0, 0x0020($sp)
    lui     a1, %hi(func_80ADB664)     # a1 = 80AE0000
    sw      $zero, 0x0118(a0)          # 00000118
    jal     func_80ADB350
    addiu   a1, a1, %lo(func_80ADB664) # a1 = 80ADB664
    beq     $zero, $zero, lbl_80ADB714
    lw      $ra, 0x001C($sp)
lbl_80ADB6F0:
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f4                   # $f4 = 50.00
    lui     a3, 0x461C                 # a3 = 461C0000
    ori     a3, a3, 0x4000             # a3 = 461C4000
    lw      a1, 0x0024($sp)
    addiu   a2, $zero, 0x0003          # a2 = 00000003
    jal     func_80022BD4
    swc1    $f4, 0x0010($sp)
    lw      $ra, 0x001C($sp)
lbl_80ADB714:
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80ADB720:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    or      a2, a1, $zero              # a2 = 00000000
    addiu   a0, a2, 0x20D8             # a0 = 000020D8
    jal     func_800DD464
    sw      a2, 0x001C($sp)
    addiu   $at, $zero, 0x0004         # $at = 00000004
    bne     v0, $at, lbl_80ADB7E4
    lw      a2, 0x001C($sp)
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_800D6110
    sw      a2, 0x001C($sp)
    beq     v0, $zero, lbl_80ADB7E4
    lw      a2, 0x001C($sp)
    lui     v0, 0x0001                 # v0 = 00010000
    addu    v0, v0, a2
    lbu     v0, 0x04BD(v0)             # 000104BD
    addiu   $at, $zero, 0x0001         # $at = 00000001
    lui     t6, 0x8012                 # t6 = 80120000
    beq     v0, $zero, lbl_80ADB788
    nop
    beq     v0, $at, lbl_80ADB7D4
    or      a0, a2, $zero              # a0 = 00000000
    beq     $zero, $zero, lbl_80ADB7E8
    lw      $ra, 0x0014($sp)
lbl_80ADB788:
    lh      t6, -0x59FC(t6)            # 8011A604
    or      a0, a2, $zero              # a0 = 00000000
    slti    $at, t6, 0x00C8
    beq     $at, $zero, lbl_80ADB7B4
    nop
    jal     func_800DCE80
    addiu   a1, $zero, 0x6075          # a1 = 00006075
    jal     func_80ADB554
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80ADB7E8
    lw      $ra, 0x0014($sp)
lbl_80ADB7B4:
    jal     func_800721CC
    addiu   a0, $zero, 0xFF38          # a0 = FFFFFF38
    lui     a1, %hi(func_80ADB6B8)     # a1 = 80AE0000
    addiu   a1, a1, %lo(func_80ADB6B8) # a1 = 80ADB6B8
    jal     func_80ADB350
    lw      a0, 0x0018($sp)
    beq     $zero, $zero, lbl_80ADB7E8
    lw      $ra, 0x0014($sp)
lbl_80ADB7D4:
    jal     func_800DCE80
    addiu   a1, $zero, 0x6074          # a1 = 00006074
    jal     func_80ADB554
    lw      a0, 0x0018($sp)
lbl_80ADB7E4:
    lw      $ra, 0x0014($sp)
lbl_80ADB7E8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB7F4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a1, %hi(func_80ADB720)     # a1 = 80AE0000
    addiu   a1, a1, %lo(func_80ADB720) # a1 = 80ADB720
    jal     func_80ADB350
    lw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x018C             # a0 = 0600018C
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC080                # $at = C0800000
    mtc1    $at, $f8                   # $f8 = -4.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x018C             # a1 = 0600018C
    swc1    $f6, 0x0010($sp)
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x0188             # a0 = 00000188
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80ADB868:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    jal     func_80ADB4AC
    addiu   a2, $zero, 0x6077          # a2 = 00006077
    beql    v0, $zero, lbl_80ADB894
    lw      $ra, 0x0014($sp)
    jal     func_80ADB7F4
    lw      a0, 0x0018($sp)
    lw      $ra, 0x0014($sp)
lbl_80ADB894:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADB8A0:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    addiu   a2, s0, 0x013C             # a2 = 0000013C
    or      a1, a2, $zero              # a1 = 0000013C
    sw      a2, 0x0034($sp)
    jal     func_80050B00
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x004C($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    lw      a2, 0x0034($sp)
    jal     func_8004C130              # CollisionCheck_setOT
    addu    a1, a0, $at
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t6, $zero, 0x0004          # t6 = 00000004
    sw      t6, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lhu     t7, 0x0088(s0)             # 00000088
    lw      a0, 0x004C($sp)
    lui     t1, 0x8012                 # t1 = 80120000
    andi    t8, t7, 0x0001             # t8 = 00000000
    beq     t8, $zero, lbl_80ADB99C
    addiu   a0, a0, 0x07C0             # a0 = 000007C0
    lw      a1, 0x0078(s0)             # 00000078
    jal     func_800345DC
    lbu     a2, 0x007D(s0)             # 0000007D
    addiu   $at, $zero, 0x0001         # $at = 00000001
    bne     v0, $at, lbl_80ADB9D8
    lui     v0, 0x8012                 # v0 = 80120000
    lw      v0, -0x4600(v0)            # 8011BA00
    lui     $at, 0xC4FA                # $at = C4FA0000
    mtc1    $at, $f8                   # $f8 = -2000.00
    lh      t9, 0x0CB4(v0)             # 80120CB4
    lh      t0, 0x0CB6(v0)             # 80120CB6
    lui     $at, 0x4120                # $at = 41200000
    mtc1    t9, $f4                    # $f4 = 0.00
    mtc1    t0, $f16                   # $f16 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    cvt.s.w $f6, $f4
    mtc1    $at, $f4                   # $f4 = 10.00
    lui     $at, 0x4248                # $at = 42480000
    lui     a2, 0x3F80                 # a2 = 3F800000
    cvt.s.w $f18, $f16
    add.s   $f10, $f6, $f8
    mtc1    $at, $f8                   # $f8 = 50.00
    div.s   $f6, $f18, $f4
    mfc1    a1, $f10
    add.s   $f10, $f6, $f8
    mfc1    a3, $f10
    jal     func_80064280
    nop
    beq     $zero, $zero, lbl_80ADB9D8
    nop
lbl_80ADB99C:
    lw      t1, -0x4600(t1)            # FFFFBA00
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f4                   # $f4 = 10.00
    lh      t2, 0x0CB6(t1)             # 00000CB6
    lui     $at, 0x4248                # $at = 42480000
    mtc1    $at, $f8                   # $f8 = 50.00
    mtc1    t2, $f16                   # $f16 = 0.00
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0x3F80                 # a1 = 3F800000
    cvt.s.w $f18, $f16
    div.s   $f6, $f18, $f4
    add.s   $f10, $f6, $f8
    mfc1    a2, $f10
    jal     func_800642F0
    nop
lbl_80ADB9D8:
    jal     func_8008C9C0
    addiu   a0, s0, 0x0188             # a0 = 00000188
    beql    v0, $zero, lbl_80ADB9F8
    lw      t9, 0x027C(s0)             # 0000027C
    mtc1    $zero, $f16                # $f16 = 0.00
    nop
    swc1    $f16, 0x01A0(s0)           # 000001A0
    lw      t9, 0x027C(s0)             # 0000027C
lbl_80ADB9F8:
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x004C($sp)
    jalr    $ra, t9
    nop
    lhu     t3, 0x0274(s0)             # 00000274
    addiu   a0, s0, 0x0268             # a0 = 00000268
    or      a1, $zero, $zero           # a1 = 00000000
    andi    t4, t3, 0x0001             # t4 = 00000000
    beq     t4, $zero, lbl_80ADBA54
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    lw      t6, 0x0038(s0)             # 00000038
    lw      a0, 0x004C($sp)
    or      a1, s0, $zero              # a1 = 00000000
    sw      t6, 0x0010($sp)
    lw      t5, 0x003C(s0)             # 0000003C
    addiu   a2, s0, 0x0268             # a2 = 00000268
    addiu   a3, s0, 0x026E             # a3 = 0000026E
    sw      t5, 0x0014($sp)
    lw      t6, 0x0040(s0)             # 00000040
    jal     func_8002B024
    sw      t6, 0x0018($sp)
    beq     $zero, $zero, lbl_80ADBABC
    lhu     t2, 0x0274(s0)             # 00000274
lbl_80ADBA54:
    addiu   t7, $zero, 0x0064          # t7 = 00000064
    sw      t7, 0x0010($sp)
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t8, $zero, 0x0064          # t8 = 00000064
    sw      t8, 0x0010($sp)
    addiu   a0, s0, 0x026A             # a0 = 0000026A
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t0, $zero, 0x0064          # t0 = 00000064
    sw      t0, 0x0010($sp)
    addiu   a0, s0, 0x026E             # a0 = 0000026E
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    addiu   t1, $zero, 0x0064          # t1 = 00000064
    sw      t1, 0x0010($sp)
    addiu   a0, s0, 0x0270             # a0 = 00000270
    or      a1, $zero, $zero           # a1 = 00000000
    addiu   a2, $zero, 0x0006          # a2 = 00000006
    jal     func_80064508
    addiu   a3, $zero, 0x1838          # a3 = 00001838
    lhu     t2, 0x0274(s0)             # 00000274
lbl_80ADBABC:
    lh      v1, 0x0278(s0)             # 00000278
    addiu   a0, $zero, 0x003C          # a0 = 0000003C
    andi    t9, t2, 0xFFFE             # t9 = 00000000
    bne     v1, $zero, lbl_80ADBAD8
    sh      t9, 0x0274(s0)             # 00000274
    beq     $zero, $zero, lbl_80ADBAE8
    or      v0, $zero, $zero           # v0 = 00000000
lbl_80ADBAD8:
    addiu   t3, v1, 0xFFFF             # t3 = FFFFFFFF
    sh      t3, 0x0278(s0)             # 00000278
    lh      v1, 0x0278(s0)             # 00000278
    or      v0, v1, $zero              # v0 = 00000000
lbl_80ADBAE8:
    bnel    v0, $zero, lbl_80ADBB04
    sh      v1, 0x0276(s0)             # 00000276
    jal     func_80063BF0
    addiu   a1, $zero, 0x003C          # a1 = 0000003C
    sh      v0, 0x0278(s0)             # 00000278
    lh      v1, 0x0278(s0)             # 00000278
    sh      v1, 0x0276(s0)             # 00000276
lbl_80ADBB04:
    lh      t4, 0x0276(s0)             # 00000276
    slti    $at, t4, 0x0003
    bnel    $at, $zero, lbl_80ADBB1C
    lw      $ra, 0x002C($sp)
    sh      $zero, 0x0276(s0)          # 00000276
    lw      $ra, 0x002C($sp)
lbl_80ADBB1C:
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80ADBB2C:
    sw      a0, 0x0000($sp)
    sw      a2, 0x0008($sp)
    sw      a3, 0x000C($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a1, $at, lbl_80ADBB58
    lw      v0, 0x0010($sp)
    lw      t7, 0x0014($sp)
    lh      t6, 0x0002(v0)             # 00000002
    lh      t8, 0x026A(t7)             # 0000026A
    subu    t9, t6, t8
    sh      t9, 0x0002(v0)             # 00000002
lbl_80ADBB58:
    or      v0, $zero, $zero           # v0 = 00000000
    jr      $ra
    nop


func_80ADBB64:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a2, 0x0020($sp)
    sw      a3, 0x0024($sp)
    addiu   $at, $zero, 0x000C         # $at = 0000000C
    bne     a1, $at, lbl_80ADBB94
    lui     a0, %hi(var_80ADBC5C)      # a0 = 80AE0000
    lw      a1, 0x0028($sp)
    addiu   a0, a0, %lo(var_80ADBC5C)  # a0 = 80ADBC5C
    jal     func_800AB958
    addiu   a1, a1, 0x0038             # a1 = 00000038
lbl_80ADBB94:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80ADBBA4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E56C
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lui     t7, %hi(func_80ADBB2C)     # t7 = 80AE0000
    lui     t8, %hi(func_80ADBB64)     # t8 = 80AE0000
    lw      a1, 0x018C(v0)             # 0000018C
    lw      a2, 0x01A8(v0)             # 000001A8
    lbu     a3, 0x018A(v0)             # 0000018A
    addiu   t8, t8, %lo(func_80ADBB64) # t8 = 80ADBB64
    addiu   t7, t7, %lo(func_80ADBB2C) # t7 = 80ADBB2C
    sw      t7, 0x0010($sp)
    sw      t8, 0x0014($sp)
    lw      a0, 0x002C($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop
    nop
    nop

.section .data

var_80ADBC10: .word 0x016A0400, 0x00000009, 0x01440000, 0x00000280
.word func_80ADB35C
.word func_80ADB480
.word func_80ADB8A0
.word func_80ADBBA4
var_80ADBC30: .word \
0x0A001139, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010100, \
0x001E0028, 0x00000000, 0x00000000
var_80ADBC5C: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000

.section .rodata


