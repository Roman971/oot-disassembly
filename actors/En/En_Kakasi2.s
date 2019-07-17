.section .text
func_80B79670:
    addiu   $sp, $sp, 0xFFB8           # $sp -= 0x48
    sw      s0, 0x0028($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    sw      a1, 0x004C($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    lh      t9, 0x0034(s0)             # 00000034
    addiu   $at, $zero, 0x003F         # $at = 0000003F
    andi    t6, v0, 0x003F             # t6 = 00000000
    sh      t6, 0x0186(s0)             # 00000186
    sra     t7, v0,  6
    lh      t0, 0x0186(s0)             # 00000186
    andi    t8, t7, 0x00FF             # t8 = 00000000
    mtc1    t8, $f4                    # $f4 = 0.00
    mtc1    t9, $f6                    # $f6 = 0.00
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    cvt.s.w $f2, $f4
    bne     t0, $at, lbl_80B796C0
    cvt.s.w $f12, $f6
    sh      t1, 0x0186(s0)             # 00000186
lbl_80B796C0:
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f0                   # $f0 = 40.00
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f4                   # $f4 = 60.00
    mul.s   $f8, $f2, $f0
    addiu   t2, $zero, 0x0004          # t2 = 00000004
    addiu   t3, $zero, 0x00FF          # t3 = 000000FF
    mul.s   $f16, $f12, $f0
    lui     a1, 0x3C23                 # a1 = 3C230000
    sb      t2, 0x001F(s0)             # 0000001F
    sb      t3, 0x00AE(s0)             # 000000AE
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    add.s   $f10, $f8, $f0
    or      a0, s0, $zero              # a0 = 00000000
    swc1    $f4, 0x0198(s0)            # 00000198
    add.s   $f18, $f16, $f0
    swc1    $f10, 0x018C(s0)           # 0000018C
    jal     func_80020F88
    swc1    $f18, 0x0190(s0)           # 00000190
    lw      t4, 0x0004(s0)             # 00000004
    lh      a1, 0x0186(s0)             # 00000186
    lh      t6, 0x00B6(s0)             # 000000B6
    ori     t5, t4, 0x0400             # t5 = 00000400
    sw      t5, 0x0004(s0)             # 00000004
    bltz    a1, lbl_80B797A0
    sh      t6, 0x0188(s0)             # 00000188
    jal     func_8002049C
    lw      a0, 0x004C($sp)
    beq     v0, $zero, lbl_80B797A0
    lui     t7, %hi(func_80B79C6C)     # t7 = 80B80000
    addiu   t7, t7, %lo(func_80B79C6C) # t7 = 80B79C6C
    sw      t7, 0x0134(s0)             # 00000134
    addiu   a1, s0, 0x019C             # a1 = 0000019C
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    lw      a0, 0x004C($sp)
    lui     a3, %hi(var_80B79CC0)      # a3 = 80B80000
    lw      a1, 0x0034($sp)
    addiu   a3, a3, %lo(var_80B79CC0)  # a3 = 80B79CC0
    lw      a0, 0x004C($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0214             # a3 = 06000214
    addiu   a2, a2, 0x65B0             # a2 = 060065B0
    lw      a0, 0x004C($sp)
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    lui     t8, %hi(func_80B79AA4)     # t8 = 80B80000
    addiu   t8, t8, %lo(func_80B79AA4) # t8 = 80B79AA4
    beq     $zero, $zero, lbl_80B797B8
    sw      t8, 0x013C(s0)             # 0000013C
lbl_80B797A0:
    lui     $at, 0xC5FA                # $at = C5FA0000
    mtc1    $at, $f6                   # $f6 = -8000.00
    lui     t9, %hi(func_80B797F8)     # t9 = 80B80000
    addiu   t9, t9, %lo(func_80B797F8) # t9 = 80B797F8
    sw      t9, 0x013C(s0)             # 0000013C
    swc1    $f6, 0x00BC(s0)            # 000000BC
lbl_80B797B8:
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0048           # $sp += 0x48
    jr      $ra
    nop


func_80B797CC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    or      a2, a0, $zero              # a2 = 00000000
    or      a3, a1, $zero              # a3 = 00000000
    or      a0, a3, $zero              # a0 = 00000000
    jal     func_8004ABCC
    addiu   a1, a2, 0x019C             # a1 = 0000019C
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_80B797F8:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lwc1    $f4, 0x0090(s0)            # 00000090
    lwc1    $f6, 0x018C(s0)            # 0000018C
    lh      t6, 0x0184(s0)             # 00000184
    lw      v0, 0x1C44(s1)             # 00001C44
    c.lt.s  $f4, $f6
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x0184(s0)             # 00000184
    bc1fl   lbl_80B79940
    lw      $ra, 0x002C($sp)
    lwc1    $f8, 0x0028(v0)            # 00000028
    lwc1    $f10, 0x0028(s0)           # 00000028
    lwc1    $f16, 0x0190(s0)           # 00000190
    lui     t8, 0x8012                 # t8 = 80120000
    sub.s   $f0, $f8, $f10
    abs.s   $f0, $f0
    c.lt.s  $f0, $f16
    nop
    bc1fl   lbl_80B79940
    lw      $ra, 0x002C($sp)
    lhu     t8, -0x4B4A(t8)            # 8011B4B6
    lui     t0, 0x0001                 # t0 = 00010000
    addu    t0, t0, s1
    andi    t9, t8, 0x1000             # t9 = 00000000
    beql    t9, $zero, lbl_80B79940
    lw      $ra, 0x002C($sp)
    sh      $zero, 0x0184(s0)          # 00000184
    lhu     t0, 0x04C6(t0)             # 000104C6
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    bnel    t0, $at, lbl_80B79940
    lw      $ra, 0x002C($sp)
    lh      a1, 0x0186(s0)             # 00000186
    bltzl   a1, lbl_80B798A0
    lui     $at, 0x0001                # $at = 00010000
    jal     func_800204D0
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
lbl_80B798A0:
    addu    $at, $at, s1
    addiu   t1, $zero, 0x0004          # t1 = 00000004
    lui     t2, %hi(func_80B79C6C)     # t2 = 80B80000
    sh      t1, 0x04C6($at)            # 000104C6
    addiu   t2, t2, %lo(func_80B79C6C) # t2 = 80B79C6C
    sw      t2, 0x0134(s0)             # 00000134
    addiu   a1, s0, 0x019C             # a1 = 0000019C
    sw      a1, 0x0030($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_80B79CC0)      # a3 = 80B80000
    lw      a1, 0x0030($sp)
    addiu   a3, a3, %lo(var_80B79CC0)  # a3 = 80B79CC0
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   a3, a3, 0x0214             # a3 = 06000214
    addiu   a2, a2, 0x65B0             # a2 = 060065B0
    or      a0, s1, $zero              # a0 = 00000000
    addiu   a1, s0, 0x0140             # a1 = 00000140
    sw      $zero, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    jal     func_8008C788
    sw      $zero, 0x0018($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8006BA10
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_800646F0
    addiu   a0, $zero, 0x4802          # a0 = 00004802
    lw      t3, 0x0004(s0)             # 00000004
    lui     $at, 0x0800                # $at = 08000000
    ori     $at, $at, 0x0001           # $at = 08000001
    lui     t5, %hi(func_80B79950)     # t5 = 80B80000
    addiu   t5, t5, %lo(func_80B79950) # t5 = 80B79950
    or      t4, t3, $at                # t4 = 08000001
    sw      t4, 0x0004(s0)             # 00000004
    sw      t5, 0x013C(s0)             # 0000013C
    lw      $ra, 0x002C($sp)
lbl_80B79940:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0038           # $sp += 0x38


func_80B79950:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0214             # a0 = 06000214
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    mtc1    $at, $f18                  # $f18 = -10.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x0214             # a1 = 06000214
    lui     a2, 0x3F80                 # a2 = 3F800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    trunc.w.s $f8, $f6
    sw      $zero, 0x0014($sp)
    swc1    $f18, 0x0018($sp)
    addiu   a0, a0, 0x0140             # a0 = 00000140
    mfc1    t7, $f8
    nop
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      a0, 0x0028($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x28BF          # a1 = 000028BF
    lw      t1, 0x0028($sp)
    lui     t0, %hi(func_80B799F0)     # t0 = 80B80000
    addiu   t0, t0, %lo(func_80B799F0) # t0 = 80B799F0
    sw      t0, 0x013C(t1)             # 0000013C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B799F0:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0024($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lwc1    $f4, 0x0158(s0)            # 00000158
    addiu   $at, $zero, 0x000B         # $at = 0000000B
    or      a0, s0, $zero              # a0 = 00000000
    trunc.w.s $f6, $f4
    mfc1    v0, $f6
    nop
    sll     v0, v0, 16
    sra     v0, v0, 16
    beq     v0, $at, lbl_80B79A3C
    addiu   $at, $zero, 0x0011         # $at = 00000011
    bnel    v0, $at, lbl_80B79A48
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80B79A3C:
    jal     func_80022FD0
    addiu   a1, $zero, 0x286A          # a1 = 0000286A
    lh      t7, 0x00B6(s0)             # 000000B6
lbl_80B79A48:
    addiu   a0, s0, 0x00BC             # a0 = 000000BC
    lui     a1, 0x3F00                 # a1 = 3F000000
    addiu   t8, t7, 0x0800             # t8 = 00000800
    sh      t8, 0x00B6(s0)             # 000000B6
    jal     func_800642F0
    lui     a2, 0x43FA                 # a2 = 43FA0000
    lui     $at, 0xC2C8                # $at = C2C80000
    mtc1    $at, $f8                   # $f8 = -100.00
    lwc1    $f10, 0x00BC(s0)           # 000000BC
    lui     t9, %hi(func_80B79AA4)     # t9 = 80B80000
    c.lt.s  $f8, $f10
    nop
    bc1fl   lbl_80B79A94
    lw      $ra, 0x001C($sp)
    mtc1    $zero, $f16                # $f16 = 0.00
    addiu   t9, t9, %lo(func_80B79AA4) # t9 = 80B79AA4
    sw      t9, 0x013C(s0)             # 0000013C
    swc1    $f16, 0x00BC(s0)           # 000000BC
    lw      $ra, 0x001C($sp)
lbl_80B79A94:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_80B79AA4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x0214             # a0 = 06000214
    mtc1    v0, $f4                    # $f4 = 0.00
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0xC120                # $at = C1200000
    cvt.s.w $f6, $f4
    mtc1    $at, $f18                  # $f18 = -10.00
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t0, $zero, 0x0002          # t0 = 00000002
    mfc1    a2, $f0
    trunc.w.s $f8, $f6
    mfc1    a3, $f0
    sw      t0, 0x0014($sp)
    addiu   a1, a1, 0x0214             # a1 = 06000214
    mfc1    t7, $f8
    addiu   a0, a0, 0x0140             # a0 = 00000140
    swc1    $f18, 0x0018($sp)
    sll     t8, t7, 16
    sra     t9, t8, 16
    mtc1    t9, $f10                   # $f10 = 0.00
    nop
    cvt.s.w $f16, $f10
    jal     func_8008D17C
    swc1    $f16, 0x0010($sp)
    lw      t2, 0x0028($sp)
    lui     t1, %hi(func_80B79B3C)     # t1 = 80B80000
    addiu   t1, t1, %lo(func_80B79B3C) # t1 = 80B79B3C
    sw      t1, 0x013C(t2)             # 0000013C
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B79B3C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0020($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0024($sp)
    sw      a1, 0x002C($sp)
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x0158(s0)            # 00000158
    addiu   a0, s0, 0x0158             # a0 = 00000158
    lui     a1, 0x3F00                 # a1 = 3F000000
    c.eq.s  $f4, $f6
    nop
    bc1tl   lbl_80B79B7C
    lh      a1, 0x0188(s0)             # 00000188
    jal     func_800642F0
    lui     a2, 0x3F80                 # a2 = 3F800000
    lh      a1, 0x0188(s0)             # 00000188
lbl_80B79B7C:
    sw      $zero, 0x0010($sp)
    addiu   a0, s0, 0x00B6             # a0 = 000000B6
    addiu   a2, $zero, 0x0005          # a2 = 00000005
    jal     func_80064508
    addiu   a3, $zero, 0x0BB8          # a3 = 00000BB8
    jal     func_8008C9C0
    addiu   a0, s0, 0x0140             # a0 = 00000140
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_80B79BAC:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s1, 0x0018($sp)
    sw      s0, 0x0014($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x001C($sp)
    lwl     t7, 0x00B4(s0)             # 000000B4
    lwr     t7, 0x00B7(s0)             # 000000B7
    or      a0, s0, $zero              # a0 = 00000000
    lw      a1, 0x0198(s0)             # 00000198
    swl     t7, 0x0030(s0)             # 00000030
    swr     t7, 0x0033(s0)             # 00000033
    lhu     t7, 0x00B8(s0)             # 000000B8
    jal     func_80020F04
    sh      t7, 0x0034(s0)             # 00000034
    lw      t9, 0x013C(s0)             # 0000013C
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f4                 # $f4 = 0.00
    lwc1    $f6, 0x00BC(s0)            # 000000BC
    or      a0, s0, $zero              # a0 = 00000000
    addiu   a1, s0, 0x019C             # a1 = 0000019C
    c.eq.s  $f4, $f6
    nop
    bc1fl   lbl_80B79C5C
    lw      $ra, 0x001C($sp)
    jal     func_80050B00
    sw      a1, 0x0020($sp)
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    lw      a2, 0x0020($sp)
    lw      a1, 0x0024($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    lw      a2, 0x0020($sp)
    lw      $ra, 0x001C($sp)
lbl_80B79C5C:
    lw      s0, 0x0014($sp)
    lw      s1, 0x0018($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0030           # $sp += 0x30


func_80B79C6C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    jal     func_8007E298
    lw      a0, 0x0000(t6)             # 00000000
    lw      v0, 0x0028($sp)
    lw      a0, 0x002C($sp)
    lw      a1, 0x0144(v0)             # 00000144
    lw      a2, 0x0160(v0)             # 00000160
    lbu     a3, 0x0142(v0)             # 00000142
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    jal     func_80089D8C
    sw      v0, 0x0018($sp)
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop
    nop

.section .data

var_80B79CC0: .word \
0x0A000939, 0x20010000, 0x00000000, 0xFFCFFFFF, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00050100, \
0x00140046, 0x00000000, 0x00000000
var_80B79CEC: .word 0x01C90600, 0x0A000031, 0x01540000, 0x000001E8
.word func_80B79670
.word func_80B797CC
.word func_80B79BAC
.word 0x00000000, 0x00000000

.section .rodata


