.section .text
func_809BA160:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, %hi(var_809BB7F0)      # a1 = 809C0000
    addiu   a1, a1, %lo(var_809BB7F0)  # a1 = 809BB7F0
    jal     func_80063F7C
    or      a0, s0, $zero              # a0 = 00000000
    lui     a2, 0x8002                 # a2 = 80020000
    addiu   a2, a2, 0xEFF4             # a2 = 8001EFF4
    addiu   a0, s0, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_8001EC20
    lui     a3, 0x41B0                 # a3 = 41B00000
    lui     a2, 0x0600                 # a2 = 06000000
    lui     a3, 0x0600                 # a3 = 06000000
    addiu   t6, s0, 0x0184             # t6 = 00000184
    addiu   t7, s0, 0x01B4             # t7 = 000001B4
    addiu   t8, $zero, 0x0008          # t8 = 00000008
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    addiu   a3, a3, 0x02B8             # a3 = 060002B8
    addiu   a2, a2, 0x2A40             # a2 = 06002A40
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8008C684
    addiu   a1, s0, 0x013C             # a1 = 0000013C
    addiu   a1, s0, 0x0234             # a1 = 00000234
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809BB790)      # a3 = 809C0000
    addiu   a3, a3, %lo(var_809BB790)  # a3 = 809BB790
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0034($sp)
    addiu   a1, s0, 0x01E8             # a1 = 000001E8
    sw      a1, 0x0034($sp)
    jal     func_8004AB7C
    or      a0, s1, $zero              # a0 = 00000000
    lui     a3, %hi(var_809BB7BC)      # a3 = 809C0000
    addiu   a3, a3, %lo(var_809BB7BC)  # a3 = 809BB7BC
    or      a0, s1, $zero              # a0 = 00000000
    lw      a1, 0x0034($sp)
    jal     func_8004ACEC
    or      a2, s0, $zero              # a2 = 00000000
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80050B00
    lw      a1, 0x0034($sp)
    jal     func_80049E10
    addiu   a0, $zero, 0x0001          # a0 = 00000001
    lui     a2, %hi(var_809BB7E8)      # a2 = 809C0000
    addiu   a2, a2, %lo(var_809BB7E8)  # a2 = 809BB7E8
    addiu   a0, s0, 0x0098             # a0 = 00000098
    jal     func_80050344
    or      a1, v0, $zero              # a1 = 00000000
    lh      t9, 0x001C(s0)             # 0000001C
    sw      $zero, 0x01E4(s0)          # 000001E4
    bne     t9, $zero, lbl_809BA278
    nop
    jal     func_809BA310
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809BA284
    lw      $ra, 0x002C($sp)
lbl_809BA278:
    jal     func_809BA360
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x002C($sp)
lbl_809BA284:
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809BA294:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    sw      a1, 0x001C($sp)
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x0234             # a1 = 00000234
    lw      a1, 0x0018($sp)
    lw      a0, 0x001C($sp)
    jal     func_8004ABCC
    addiu   a1, a1, 0x01E8             # a1 = 000001E8
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA2D4:
    addiu   v0, $zero, 0x0019          # v0 = 00000019
    lbu     t8, 0x0245(a0)             # 00000245
    lui     t0, 0xFFCF                 # t0 = FFCF0000
    addiu   t6, $zero, 0x0007          # t6 = 00000007
    addiu   t7, $zero, 0x000C          # t7 = 0000000C
    ori     t0, t0, 0xFFFF             # t0 = FFCFFFFF
    ori     t9, t8, 0x0004             # t9 = 00000004
    sh      t6, 0x0274(a0)             # 00000274
    sh      v0, 0x0276(a0)             # 00000276
    sb      t7, 0x0248(a0)             # 00000248
    sb      t9, 0x0245(a0)             # 00000245
    sw      t0, 0x0254(a0)             # 00000254
    sh      v0, 0x022A(a0)             # 0000022A
    jr      $ra
    nop


func_809BA310:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lui     t7, %hi(func_809BA760)     # t7 = 809C0000
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    add.s   $f8, $f4, $f6
    addiu   t7, t7, %lo(func_809BA760) # t7 = 809BA760
    sh      t6, 0x00B4(a0)             # 000000B4
    sw      t7, 0x0180(a0)             # 00000180
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA360:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    lwc1    $f4, 0x000C(a0)            # 0000000C
    lui     t7, %hi(func_809BA7F8)     # t7 = 809C0000
    addiu   t6, $zero, 0xC000          # t6 = FFFFC000
    add.s   $f8, $f4, $f6
    addiu   t7, t7, %lo(func_809BA7F8) # t7 = 809BA7F8
    sh      t6, 0x00B4(a0)             # 000000B4
    sw      t7, 0x0180(a0)             # 00000180
    swc1    $f8, 0x0028(a0)            # 00000028
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA3B4:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x02B8             # a0 = 060002B8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f8                   # $f8 = -3.00
    cvt.s.w $f6, $f4
    lw      a0, 0x0028($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   a1, a1, 0x02B8             # a1 = 060002B8
    lui     a2, 0x4080                 # a2 = 40800000
    addiu   a3, $zero, 0x0000          # a3 = 00000000
    swc1    $f6, 0x0010($sp)
    sw      $zero, 0x0014($sp)
    swc1    $f8, 0x0018($sp)
    jal     func_8008D17C
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    lw      a0, 0x0028($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x39E2          # a1 = 000039E2
    lw      t7, 0x0028($sp)
    lui     t6, %hi(func_809BA858)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BA858) # t6 = 809BA858
    sw      t6, 0x0180(t7)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BA430:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    lw      t7, 0x0180(a0)             # 00000180
    lui     t6, %hi(func_809BAA20)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BAA20) # t6 = 809BAA20
    beq     t6, t7, lbl_809BA4AC
    lui     a1, 0x3C23                 # a1 = 3C230000
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    addiu   t8, $zero, 0x0006          # t8 = 00000006
    lui     t1, 0x8012                 # t1 = 80120000
    lbu     t9, 0x0245(a0)             # 00000245
    sb      t8, 0x0248(a0)             # 00000248
    lui     t3, 0x0FC0                 # t3 = 0FC00000
    andi    t0, t9, 0xFFFB             # t0 = 00000000
    sb      t0, 0x0245(a0)             # 00000245
    lw      t1, -0x5A2C(t1)            # 8011A5D4
    ori     t3, t3, 0x0710             # t3 = 0FC00710
    addiu   v0, $zero, 0x0050          # v0 = 00000050
    beq     t1, $zero, lbl_809BA49C
    addiu   t4, $zero, 0x000F          # t4 = 0000000F
    lui     t2, 0x07C0                 # t2 = 07C00000
    ori     t2, t2, 0x0710             # t2 = 07C00710
    b       lbl_809BA4A0
    sw      t2, 0x0254(a0)             # 00000254
lbl_809BA49C:
    sw      t3, 0x0254(a0)             # 00000254
lbl_809BA4A0:
    sh      t4, 0x0274(a0)             # 00000274
    sh      v0, 0x0276(a0)             # 00000276
    sh      v0, 0x022A(a0)             # 0000022A
lbl_809BA4AC:
    lui     t6, %hi(func_809BA92C)     # t6 = 809C0000
    addiu   t5, $zero, 0x0028          # t5 = 00000028
    addiu   t6, t6, %lo(func_809BA92C) # t6 = 809BA92C
    sh      t5, 0x001C(a0)             # 0000001C
    sw      t6, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA4D0:
    lui     t7, %hi(func_809BAA20)     # t7 = 809C0000
    addiu   t6, $zero, 0x0028          # t6 = 00000028
    addiu   t7, t7, %lo(func_809BAA20) # t7 = 809BAA20
    sh      t6, 0x001C(a0)             # 0000001C
    sw      t7, 0x0180(a0)             # 00000180
    jr      $ra
    nop


func_809BA4EC:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sh      $zero, 0x001C(a0)          # 0000001C
    lui     $at, %hi(var_809BB830)     # $at = 809C0000
    lwc1    $f4, %lo(var_809BB830)($at)
    lh      t6, 0x00B6(a0)             # 000000B6
    lui     $at, 0x4080                # $at = 40800000
    mtc1    $at, $f6                   # $f6 = 4.00
    ori     $at, $zero, 0x8000         # $at = 00008000
    addu    t7, t6, $at
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f8                   # $f8 = 3.00
    sh      t7, 0x0032(a0)             # 00000032
    swc1    $f4, 0x006C(a0)            # 0000006C
    swc1    $f6, 0x0060(a0)            # 00000060
    swc1    $f8, 0x0068(a0)            # 00000068
    sw      a0, 0x0018($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x3862          # a1 = 00003862
    lw      a0, 0x0018($sp)
    lui     t0, %hi(func_809BABB4)     # t0 = 809C0000
    addiu   t0, t0, %lo(func_809BABB4) # t0 = 809BABB4
    lw      t8, 0x0004(a0)             # 00000004
    sw      t0, 0x0180(a0)             # 00000180
    ori     t9, t8, 0x0030             # t9 = 00000030
    sw      t9, 0x0004(a0)             # 00000004
    lw      $ra, 0x0014($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0018           # $sp += 0x18


func_809BA560:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lui     a1, 0x3CF5                 # a1 = 3CF50000
    ori     a1, a1, 0xC28F             # a1 = 3CF5C28F
    or      a0, a2, $zero              # a0 = 00000000
    jal     func_80020F88
    sw      a2, 0x0018($sp)
    lw      a2, 0x0018($sp)
    lw      a0, 0x001C($sp)
    lui     $at, 0x447A                # $at = 447A0000
    mtc1    $at, $f4                   # $f4 = 1000.00
    lh      t6, 0x00B4(a2)             # 000000B4
    mtc1    $zero, $f0                 # $f0 = 0.00
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f6                   # $f6 = 3.00
    addiu   t7, t6, 0xC000             # t7 = FFFFC000
    addiu   a3, $zero, 0x0008          # a3 = 00000008
    sh      t7, 0x00B4(a2)             # 000000B4
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    swc1    $f4, 0x00BC(a2)            # 000000BC
    swc1    $f0, 0x006C(a2)            # 0000006C
    swc1    $f0, 0x0060(a2)            # 00000060
    jal     func_800265D4
    swc1    $f6, 0x00C4(a2)            # 000000C4
    lw      a2, 0x0018($sp)
    addiu   $at, $zero, 0xFFDF         # $at = FFFFFFDF
    lui     t1, %hi(func_809BAE6C)     # t1 = 809C0000
    lw      t9, 0x0004(a2)             # 00000004
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    addiu   t1, t1, %lo(func_809BAE6C) # t1 = 809BAE6C
    and     t0, t9, $at
    sh      t8, 0x001C(a2)             # 0000001C
    sw      t0, 0x0004(a2)             # 00000004
    sw      t1, 0x0180(a2)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA600:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      $ra, 0x0024($sp)
    sw      a0, 0x0028($sp)
    lui     a0, 0x0600                 # a0 = 06000000
    jal     func_8008A194
    addiu   a0, a0, 0x02B8             # a0 = 060002B8
    mtc1    v0, $f4                    # $f4 = 0.00
    lui     $at, 0xC040                # $at = C0400000
    mtc1    $at, $f0                   # $f0 = -3.00
    cvt.s.w $f4, $f4
    lw      a0, 0x0028($sp)
    mtc1    $zero, $f6                 # $f6 = 0.00
    lui     a1, 0x0600                 # a1 = 06000000
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    mfc1    a2, $f0
    mfc1    a3, $f4
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x02B8             # a1 = 060002B8
    swc1    $f0, 0x0018($sp)
    addiu   a0, a0, 0x013C             # a0 = 0000013C
    jal     func_8008D17C
    swc1    $f6, 0x0010($sp)
    jal     func_809BA2D4
    lw      a0, 0x0028($sp)
    lw      t8, 0x0028($sp)
    lui     t7, %hi(func_809BAED4)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809BAED4) # t7 = 809BAED4
    sw      t7, 0x0180(t8)             # 00000180
    lw      $ra, 0x0024($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BA680:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0028($sp)
    mtc1    $zero, $f0                 # $f0 = 0.00
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x002C($sp)
    lui     a1, 0x0600                 # a1 = 06000000
    mfc1    a2, $f0
    mfc1    a3, $f0
    addiu   t6, $zero, 0x0002          # t6 = 00000002
    sw      t6, 0x0014($sp)
    addiu   a1, a1, 0x02B8             # a1 = 060002B8
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    swc1    $f0, 0x0010($sp)
    jal     func_8008D17C
    swc1    $f0, 0x0018($sp)
    jal     func_809BA2D4
    or      a0, s0, $zero              # a0 = 00000000
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t7, $zero, 0xC000          # t7 = FFFFC000
    addiu   t8, $zero, 0x00C8          # t8 = 000000C8
    sh      t7, 0x00B4(s0)             # 000000B4
    sh      t8, 0x001C(s0)             # 0000001C
    sw      $zero, 0x0118(s0)          # 00000118
    addiu   a0, s0, 0x0024             # a0 = 00000024
    addiu   a1, s0, 0x0008             # a1 = 00000008
    jal     func_80063CAC              # Vec3f_Copy
    swc1    $f0, 0x00C4(s0)            # 000000C4
    lui     t9, %hi(func_809BAFA8)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809BAFA8) # t9 = 809BAFA8
    sw      t9, 0x0180(s0)             # 00000180
    lw      $ra, 0x002C($sp)
    lw      s0, 0x0028($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809BA70C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    mtc1    $zero, $f0                 # $f0 = 0.00
    sw      $ra, 0x0014($sp)
    lui     $at, 0x41B0                # $at = 41B00000
    mtc1    $at, $f4                   # $f4 = 22.00
    swc1    $f0, 0x00BC(a0)            # 000000BC
    lui     t6, %hi(var_809BB7DC)      # t6 = 809C0000
    swc1    $f4, 0x00C4(a0)            # 000000C4
    lh      t6, %lo(var_809BB7DC)(t6)
    mfc1    a1, $f0
    sh      t6, 0x0228(a0)             # 00000228
    jal     func_80020F88
    sw      a0, 0x0018($sp)
    lw      a0, 0x0018($sp)
    lui     t7, %hi(func_809BB000)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809BB000) # t7 = 809BB000
    sw      t7, 0x0180(a0)             # 00000180
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA760:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    lh      t6, 0x001C(a0)             # 0000001C
    lui     $at, %hi(var_809BB834)     # $at = 809C0000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x001C(a0)             # 0000001C
    lh      t8, 0x001C(a0)             # 0000001C
    lwc1    $f8, %lo(var_809BB834)($at)
    lui     $at, %hi(var_809BB838)     # $at = 809C0000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f10, %lo(var_809BB838)($at)
    sw      a0, 0x0020($sp)
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    nop
    mul.s   $f16, $f10, $f0
    swc1    $f0, 0x001C($sp)
    mfc1    a1, $f16
    jal     func_80020F88
    nop
    lui     $at, 0x4160                # $at = 41600000
    lwc1    $f0, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = 14.00
    lw      a0, 0x0020($sp)
    addiu   $at, $zero, 0x0014         # $at = 00000014
    mul.s   $f6, $f4, $f0
    lwc1    $f18, 0x000C(a0)           # 0000000C
    lh      t9, 0x001C(a0)             # 0000001C
    add.s   $f8, $f18, $f6
    bne     t9, $at, lbl_809BA7E8
    swc1    $f8, 0x0028(a0)            # 00000028
    jal     func_809BA360
    nop
lbl_809BA7E8:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BA7F8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lui     $at, 0x4348                # $at = 43480000
    mtc1    $at, $f6                   # $f6 = 200.00
    lwc1    $f4, 0x0090(a0)            # 00000090
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809BA84C
    lw      $ra, 0x0014($sp)
    lwc1    $f0, 0x0094(a0)            # 00000094
    lui     $at, 0x41F0                # $at = 41F00000
    mtc1    $at, $f8                   # $f8 = 30.00
    abs.s   $f0, $f0
    c.lt.s  $f0, $f8
    nop
    bc1fl   lbl_809BA84C
    lw      $ra, 0x0014($sp)
    jal     func_809BA3B4
    nop
    lw      $ra, 0x0014($sp)
lbl_809BA84C:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BA858:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x3C23                 # a1 = 3C230000
    lui     a2, 0x3A03                 # a2 = 3A030000
    ori     a2, a2, 0x126F             # a2 = 3A03126F
    ori     a1, a1, 0xD70A             # a1 = 3C23D70A
    jal     func_8006385C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f6                   # $f6 = 60.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0050(s0)            # 00000050
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x40A0                 # a2 = 40A00000
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beql    v0, $zero, lbl_809BA8D0
    lh      t6, 0x00B6(s0)             # 000000B6
    jal     func_809BA430
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_809BA8D0:
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    addiu   t7, t6, 0x1999             # t7 = 00001999
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      $zero, 0x0024($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_8001D29C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809BA92C:
    addiu   $sp, $sp, 0xFFD8           # $sp -= 0x28
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x002C($sp)
    lw      t6, 0x002C($sp)
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lw      t7, 0x1C44(t6)             # 00001C44
    sw      a0, 0x0020($sp)
    jal     func_8008C9C0
    sw      t7, 0x0024($sp)
    lh      v1, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    beq     v1, $zero, lbl_809BA96C
    addiu   t8, v1, 0xFFFF             # t8 = FFFFFFFF
    sh      t8, 0x001C(s0)             # 0000001C
lbl_809BA96C:
    jal     func_8008D6A8
    lw      a0, 0x0020($sp)
    bne     v0, $zero, lbl_809BA988
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x4140                 # a1 = 41400000
    beq     v0, $zero, lbl_809BA994
lbl_809BA988:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3860          # a1 = 00003860
lbl_809BA994:
    lbu     t9, 0x0245(s0)             # 00000245
    lw      a1, 0x0024($sp)
    andi    t0, t9, 0x0002             # t0 = 00000000
    beq     t0, $zero, lbl_809BA9C4
    addiu   a1, a1, 0x0024             # a1 = 00000024
    jal     func_809BA4EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x002C($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_809BAA10
    lw      $ra, 0x001C($sp)
lbl_809BA9C4:
    jal     func_80063EB8
    addiu   a0, s0, 0x0008             # a0 = 00000008
    lui     $at, 0x4370                # $at = 43700000
    mtc1    $at, $f4                   # $f4 = 240.00
    nop
    c.lt.s  $f4, $f0
    nop
    bc1fl   lbl_809BA9FC
    lh      t1, 0x001C(s0)             # 0000001C
    jal     func_809BA600
    or      a0, s0, $zero              # a0 = 00000000
    b       lbl_809BAA10
    lw      $ra, 0x001C($sp)
    lh      t1, 0x001C(s0)             # 0000001C
lbl_809BA9FC:
    bnel    t1, $zero, lbl_809BAA10
    lw      $ra, 0x001C($sp)
    jal     func_809BA4D0
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809BAA10:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0028           # $sp += 0x28
    jr      $ra
    nop


func_809BAA20:
    addiu   $sp, $sp, 0xFFD0           # $sp -= 0x30
    sw      s0, 0x0018($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x001C($sp)
    sw      a1, 0x0034($sp)
    lh      v0, 0x001C(s0)             # 0000001C
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    beq     v0, $zero, lbl_809BAA48
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x001C(s0)             # 0000001C
lbl_809BAA48:
    jal     func_8008C9C0
    sw      a0, 0x0020($sp)
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    addiu   a1, $zero, 0x0000          # a1 = 00000000
    bne     v0, $zero, lbl_809BAA70
    lw      a0, 0x0020($sp)
    jal     func_8008D6A8
    lui     a1, 0x4140                 # a1 = 41400000
    beq     v0, $zero, lbl_809BAA7C
lbl_809BAA70:
    or      a0, s0, $zero              # a0 = 00000000
    jal     func_80022FD0
    addiu   a1, $zero, 0x3860          # a1 = 00003860
lbl_809BAA7C:
    lh      t7, 0x001C(s0)             # 0000001C
    addiu   a1, $zero, 0x0014          # a1 = 00000014
    lui     t8, %hi(var_809BB7DC)      # t8 = 809C0000
    subu    v0, a1, t7
    bltz    v0, lbl_809BAA9C
    ori     t2, $zero, 0xC000          # t2 = 0000C000
    b       lbl_809BAAA0
    or      a0, v0, $zero              # a0 = 00000000
lbl_809BAA9C:
    subu    a0, $zero, v0
lbl_809BAAA0:
    subu    v0, a1, a0
    slti    $at, v0, 0x000B
    bnel    $at, $zero, lbl_809BAAB8
    sll     t5, v0,  2
    addiu   v0, $zero, 0x000A          # v0 = 0000000A
    sll     t5, v0,  2
lbl_809BAAB8:
    subu    t5, t5, v0
    lh      t8, %lo(var_809BB7DC)(t8)
    lh      t4, 0x00B6(s0)             # 000000B6
    sll     t5, t5,  2
    sll     t1, v0,  8
    subu    t5, t5, v0
    sll     t9, v0,  1
    subu    t3, t2, t1
    sll     t5, t5,  6
    sh      t3, 0x00B4(s0)             # 000000B4
    addu    t0, t8, t9
    addu    t6, t4, t5
    sh      t0, 0x0228(s0)             # 00000228
    sh      t6, 0x00B6(s0)             # 000000B6
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s0)             # 000000B4
    lui     $at, 0xC270                # $at = C2700000
    mtc1    $at, $f4                   # $f4 = -60.00
    lwc1    $f8, 0x000C(s0)            # 0000000C
    lh      a0, 0x00B4(s0)             # 000000B4
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0028(s0)           # 00000028
    lui     $at, 0x4270                # $at = 42700000
    mtc1    $at, $f16                  # $f16 = 60.00
    nop
    mul.s   $f18, $f0, $f16
    swc1    $f18, 0x0028($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s0)             # 000000B6
    lwc1    $f4, 0x0028($sp)
    lwc1    $f8, 0x0008(s0)            # 00000008
    lh      a0, 0x00B6(s0)             # 000000B6
    mul.s   $f6, $f0, $f4
    add.s   $f10, $f6, $f8
    jal     func_80063684              # coss?
    swc1    $f10, 0x0024(s0)           # 00000024
    lwc1    $f16, 0x0028($sp)
    lwc1    $f4, 0x0010(s0)            # 00000010
    lbu     t7, 0x0245(s0)             # 00000245
    mul.s   $f18, $f0, $f16
    andi    t8, t7, 0x0002             # t8 = 00000000
    add.s   $f6, $f18, $f4
    beq     t8, $zero, lbl_809BAB8C
    swc1    $f6, 0x002C(s0)            # 0000002C
    jal     func_809BA4EC
    or      a0, s0, $zero              # a0 = 00000000
    lw      a0, 0x0034($sp)
    jal     func_80025B4C
    or      a1, s0, $zero              # a1 = 00000000
    b       lbl_809BABA4
    lw      $ra, 0x001C($sp)
lbl_809BAB8C:
    lh      t9, 0x001C(s0)             # 0000001C
    bnel    t9, $zero, lbl_809BABA4
    lw      $ra, 0x001C($sp)
    jal     func_809BA430
    or      a0, s0, $zero              # a0 = 00000000
    lw      $ra, 0x001C($sp)
lbl_809BABA4:
    lw      s0, 0x0018($sp)
    addiu   $sp, $sp, 0x0030           # $sp += 0x30
    jr      $ra
    nop


func_809BABB4:
    addiu   $sp, $sp, 0xFF78           # $sp -= 0x88
    sdc1    $f20, 0x0028($sp)
    sw      s5, 0x0058($sp)
    sw      s4, 0x0054($sp)
    mtc1    $zero, $f20                # $f20 = 0.00
    or      s4, a0, $zero              # s4 = 00000000
    or      s5, a1, $zero              # s5 = 00000000
    sw      $ra, 0x005C($sp)
    sw      s3, 0x0050($sp)
    sw      s2, 0x004C($sp)
    sw      s1, 0x0048($sp)
    sw      s0, 0x0044($sp)
    sdc1    $f24, 0x0038($sp)
    sdc1    $f22, 0x0030($sp)
    mfc1    a1, $f20
    lui     a2, 0x3DCC                 # a2 = 3DCC0000
    ori     a2, a2, 0xCCCD             # a2 = 3DCCCCCD
    jal     func_8006385C
    addiu   a0, s4, 0x0068             # a0 = 00000068
    lh      v0, 0x001C(s4)             # 0000001C
    addiu   a0, s4, 0x00B4             # a0 = 000000B4
    addiu   a1, $zero, 0x4800          # a1 = 00004800
    bne     v0, $zero, lbl_809BAD24
    addiu   $at, $zero, 0x0001         # $at = 00000001
    jal     func_80063704
    addiu   a2, $zero, 0x071C          # a2 = 0000071C
    lui     $at, 0x4040                # $at = 40400000
    mtc1    $at, $f22                  # $f22 = 3.00
    addiu   s0, s4, 0x0024             # s0 = 00000024
    addiu   t6, $zero, 0x000C          # t6 = 0000000C
    addiu   t7, $zero, 0x0005          # t7 = 00000005
    addiu   t8, $zero, 0x0001          # t8 = 00000001
    addiu   t9, $zero, 0xFFFF          # t9 = FFFFFFFF
    addiu   t0, $zero, 0x000A          # t0 = 0000000A
    mfc1    a2, $f22
    sw      t0, 0x0020($sp)
    sw      t9, 0x001C($sp)
    sw      t8, 0x0018($sp)
    sw      t7, 0x0014($sp)
    sw      t6, 0x0010($sp)
    or      a1, s0, $zero              # a1 = 00000024
    or      a0, s5, $zero              # a0 = 00000000
    or      a3, $zero, $zero           # a3 = 00000000
    jal     func_8001D29C
    sw      $zero, 0x0024($sp)
    lui     $at, %hi(var_809BB83C)     # $at = 809C0000
    lwc1    $f4, %lo(var_809BB83C)($at)
    lwc1    $f6, 0x0050(s4)            # 00000050
    c.lt.s  $f4, $f6
    nop
    bc1fl   lbl_809BAD00
    lhu     t0, 0x0088(s4)             # 00000088
    lhu     v0, 0x0088(s4)             # 00000088
    addiu   $at, $zero, 0xFFFA         # $at = FFFFFFFA
    or      a0, s5, $zero              # a0 = 00000000
    andi    t1, v0, 0x0002             # t1 = 00000000
    bne     t1, $zero, lbl_809BACA4
    andi    t2, v0, 0x0008             # t2 = 00000000
    beql    t2, $zero, lbl_809BAD00
    lhu     t0, 0x0088(s4)             # 00000088
lbl_809BACA4:
    lw      t3, 0x0004(s4)             # 00000004
    swc1    $f20, 0x0058(s4)           # 00000058
    swc1    $f20, 0x0054(s4)           # 00000054
    and     t4, t3, $at
    swc1    $f20, 0x0050(s4)           # 00000050
    swc1    $f20, 0x0068(s4)           # 00000068
    sw      t4, 0x0004(s4)             # 00000004
    mfc1    a2, $f22
    addiu   t5, $zero, 0x000C          # t5 = 0000000C
    addiu   t6, $zero, 0x0005          # t6 = 00000005
    addiu   t7, $zero, 0x000F          # t7 = 0000000F
    addiu   t8, $zero, 0xFFFF          # t8 = FFFFFFFF
    addiu   t9, $zero, 0x000A          # t9 = 0000000A
    sw      t9, 0x0020($sp)
    sw      t8, 0x001C($sp)
    sw      t7, 0x0018($sp)
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    sw      $zero, 0x0024($sp)
    or      a1, s0, $zero              # a1 = 00000024
    jal     func_8001D29C
    or      a3, $zero, $zero           # a3 = 00000000
    lhu     t0, 0x0088(s4)             # 00000088
lbl_809BAD00:
    or      a0, s4, $zero              # a0 = 00000000
    andi    t1, t0, 0x0002             # t1 = 00000000
    beql    t1, $zero, lbl_809BAE40
    lw      $ra, 0x005C($sp)
    jal     func_80022FD0
    addiu   a1, $zero, 0x387B          # a1 = 0000387B
    addiu   t2, $zero, 0x0001          # t2 = 00000001
    b       lbl_809BAE3C
    sh      t2, 0x001C(s4)             # 0000001C
lbl_809BAD24:
    bne     v0, $at, lbl_809BAE3C
    addiu   s3, $sp, 0x0078            # s3 = FFFFFFF0
    or      a0, s3, $zero              # a0 = FFFFFFF0
    jal     func_80063CAC              # Vec3f_Copy
    addiu   a1, s4, 0x0024             # a1 = 00000024
    jal     func_800636C4              # sins?
    lh      a0, 0x00B4(s4)             # 000000B4
    lui     $at, 0x41A0                # $at = 41A00000
    mtc1    $at, $f8                   # $f8 = 20.00
    lh      a0, 0x00B4(s4)             # 000000B4
    mul.s   $f24, $f0, $f8
    jal     func_80063684              # coss?
    nop
    swc1    $f0, 0x0068($sp)
    jal     func_800636C4              # sins?
    lh      a0, 0x00B6(s4)             # 000000B6
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f10                  # $f10 = -20.00
    lwc1    $f16, 0x0068($sp)
    lh      a0, 0x00B4(s4)             # 000000B4
    mul.s   $f18, $f10, $f16
    nop
    mul.s   $f20, $f0, $f18
    jal     func_80063684              # coss?
    nop
    swc1    $f0, 0x0068($sp)
    jal     func_80063684              # coss?
    lh      a0, 0x00B6(s4)             # 000000B6
    lui     $at, 0xC1A0                # $at = C1A00000
    mtc1    $at, $f4                   # $f4 = -20.00
    lwc1    $f6, 0x0068($sp)
    lui     s1, %hi(var_809BB7FC)      # s1 = 809C0000
    addiu   s1, s1, %lo(var_809BB7FC)  # s1 = 809BB7FC
    mul.s   $f8, $f4, $f6
    or      s0, $zero, $zero           # s0 = 00000000
    addiu   s2, $zero, 0x0004          # s2 = 00000004
    mul.s   $f22, $f0, $f8
    nop
lbl_809BADBC:
    addiu   t3, $zero, 0x01F4          # t3 = 000001F4
    addiu   t4, $zero, 0x0032          # t4 = 00000032
    sw      t4, 0x0014($sp)
    sw      t3, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    or      a1, s3, $zero              # a1 = FFFFFFF0
    or      a2, s1, $zero              # a2 = 809BB7FC
    jal     func_8001C1C4
    or      a3, s1, $zero              # a3 = 809BB7FC
    lwc1    $f10, 0x0078($sp)
    lwc1    $f18, 0x007C($sp)
    lwc1    $f6, 0x0080($sp)
    add.s   $f16, $f10, $f20
    addiu   s0, s0, 0x0001             # s0 = 00000001
    add.s   $f4, $f18, $f24
    swc1    $f16, 0x0078($sp)
    add.s   $f8, $f6, $f22
    swc1    $f4, 0x007C($sp)
    bne     s0, s2, lbl_809BADBC
    swc1    $f8, 0x0080($sp)
    addiu   t5, $zero, 0x01F4          # t5 = 000001F4
    addiu   t6, $zero, 0x0064          # t6 = 00000064
    sw      t6, 0x0014($sp)
    sw      t5, 0x0010($sp)
    or      a0, s5, $zero              # a0 = 00000000
    addiu   a1, s4, 0x0008             # a1 = 00000008
    or      a2, s1, $zero              # a2 = 809BB7FC
    jal     func_8001C1C4
    or      a3, s1, $zero              # a3 = 809BB7FC
    or      a0, s4, $zero              # a0 = 00000000
    jal     func_809BA560
    or      a1, s5, $zero              # a1 = 00000000
lbl_809BAE3C:
    lw      $ra, 0x005C($sp)
lbl_809BAE40:
    ldc1    $f20, 0x0028($sp)
    ldc1    $f22, 0x0030($sp)
    ldc1    $f24, 0x0038($sp)
    lw      s0, 0x0044($sp)
    lw      s1, 0x0048($sp)
    lw      s2, 0x004C($sp)
    lw      s3, 0x0050($sp)
    lw      s4, 0x0054($sp)
    lw      s5, 0x0058($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0088           # $sp += 0x88


func_809BAE6C:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      $ra, 0x0014($sp)
    sw      a1, 0x001C($sp)
    lh      v0, 0x001C(a0)             # 0000001C
    beq     v0, $zero, lbl_809BAE88
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x001C(a0)             # 0000001C
lbl_809BAE88:
    lw      a1, 0x001C($sp)
    jal     func_80022BB0
    sw      a0, 0x0018($sp)
    bne     v0, $zero, lbl_809BAEAC
    lw      a0, 0x0018($sp)
    lh      t7, 0x001C(a0)             # 0000001C
    lw      a1, 0x001C($sp)
    bne     t7, $zero, lbl_809BAEBC
    nop
lbl_809BAEAC:
    jal     func_809BA680
    nop
    b       lbl_809BAEC8
    lw      $ra, 0x0014($sp)
lbl_809BAEBC:
    jal     func_80022CF4
    addiu   a2, $zero, 0x0007          # a2 = 00000007
    lw      $ra, 0x0014($sp)
lbl_809BAEC8:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BAED4:
    addiu   $sp, $sp, 0xFFC8           # $sp -= 0x38
    sw      s0, 0x0030($sp)
    or      s0, a0, $zero              # s0 = 00000000
    sw      $ra, 0x0034($sp)
    sw      a1, 0x003C($sp)
    jal     func_8008C9C0
    addiu   a0, s0, 0x013C             # a0 = 0000013C
    lui     a1, 0x3BA3                 # a1 = 3BA30000
    lui     a2, 0x3A03                 # a2 = 3A030000
    ori     a2, a2, 0x126F             # a2 = 3A03126F
    ori     a1, a1, 0xD70A             # a1 = 3BA3D70A
    jal     func_8006385C
    addiu   a0, s0, 0x0050             # a0 = 00000050
    lui     $at, 0x4160                # $at = 41600000
    mtc1    $at, $f6                   # $f6 = 14.00
    lwc1    $f4, 0x000C(s0)            # 0000000C
    lwc1    $f0, 0x0050(s0)            # 00000050
    addiu   a0, s0, 0x0028             # a0 = 00000028
    add.s   $f8, $f4, $f6
    lui     a2, 0x40A0                 # a2 = 40A00000
    swc1    $f0, 0x0058(s0)            # 00000058
    swc1    $f0, 0x0054(s0)            # 00000054
    mfc1    a1, $f8
    jal     func_8006385C
    nop
    beql    v0, $zero, lbl_809BAF4C
    lh      t6, 0x00B6(s0)             # 000000B6
    jal     func_809BA360
    or      a0, s0, $zero              # a0 = 00000000
    lh      t6, 0x00B6(s0)             # 000000B6
lbl_809BAF4C:
    addiu   t8, $zero, 0x000C          # t8 = 0000000C
    addiu   t9, $zero, 0x0005          # t9 = 00000005
    addiu   t7, t6, 0x1999             # t7 = 00001999
    sh      t7, 0x00B6(s0)             # 000000B6
    addiu   t0, $zero, 0x0001          # t0 = 00000001
    addiu   t1, $zero, 0xFFFF          # t1 = FFFFFFFF
    addiu   t2, $zero, 0x000A          # t2 = 0000000A
    sw      t2, 0x0020($sp)
    sw      t1, 0x001C($sp)
    sw      t0, 0x0018($sp)
    sw      $zero, 0x0024($sp)
    sw      t9, 0x0014($sp)
    sw      t8, 0x0010($sp)
    lw      a0, 0x003C($sp)
    addiu   a1, s0, 0x0008             # a1 = 00000008
    lui     a2, 0x4040                 # a2 = 40400000
    jal     func_8001D29C
    or      a3, $zero, $zero           # a3 = 00000000
    lw      $ra, 0x0034($sp)
    lw      s0, 0x0030($sp)
    addiu   $sp, $sp, 0x0038           # $sp += 0x38
    jr      $ra
    nop


func_809BAFA8:
    addiu   $sp, $sp, 0xFFE8           # $sp -= 0x18
    sw      a1, 0x001C($sp)
    or      a1, a0, $zero              # a1 = 00000000
    sw      $ra, 0x0014($sp)
    sw      a0, 0x0018($sp)
    addiu   a0, a1, 0x013C             # a0 = 0000013C
    jal     func_8008C9C0
    sw      a1, 0x0018($sp)
    lw      a1, 0x0018($sp)
    lh      v0, 0x001C(a1)             # 0000001C
    beq     v0, $zero, lbl_809BAFE0
    addiu   t6, v0, 0xFFFF             # t6 = FFFFFFFF
    sh      t6, 0x001C(a1)             # 0000001C
    lh      v0, 0x001C(a1)             # 0000001C
lbl_809BAFE0:
    bnel    v0, $zero, lbl_809BAFF4
    lw      $ra, 0x0014($sp)
    jal     func_809BA70C
    or      a0, a1, $zero              # a0 = 00000000
    lw      $ra, 0x0014($sp)
lbl_809BAFF4:
    addiu   $sp, $sp, 0x0018           # $sp += 0x18
    jr      $ra
    nop


func_809BB000:
    addiu   $sp, $sp, 0xFFE0           # $sp -= 0x20
    sw      $ra, 0x0014($sp)
    sw      a1, 0x0024($sp)
    or      a2, a0, $zero              # a2 = 00000000
    lh      t6, 0x001C(a2)             # 0000001C
    lui     $at, %hi(var_809BB840)     # $at = 809C0000
    or      a0, a2, $zero              # a0 = 00000000
    addiu   t7, t6, 0x0001             # t7 = 00000001
    sh      t7, 0x001C(a2)             # 0000001C
    lh      t8, 0x001C(a2)             # 0000001C
    lwc1    $f8, %lo(var_809BB840)($at)
    lui     $at, %hi(var_809BB844)     # $at = 809C0000
    mtc1    t8, $f4                    # $f4 = 0.00
    lwc1    $f10, %lo(var_809BB844)($at)
    sw      a2, 0x0020($sp)
    cvt.s.w $f6, $f4
    mul.s   $f0, $f6, $f8
    nop
    mul.s   $f16, $f10, $f0
    swc1    $f0, 0x001C($sp)
    mfc1    a1, $f16
    jal     func_80020F88
    nop
    lui     $at, 0x4160                # $at = 41600000
    lwc1    $f0, 0x001C($sp)
    mtc1    $at, $f4                   # $f4 = 14.00
    lw      a2, 0x0020($sp)
    lw      a0, 0x0024($sp)
    mul.s   $f6, $f4, $f0
    lwc1    $f18, 0x000C(a2)           # 0000000C
    lh      t9, 0x001C(a2)             # 0000001C
    addiu   $at, $zero, 0x0014         # $at = 00000014
    addiu   a1, a0, 0x1C24             # a1 = 00001C24
    add.s   $f8, $f18, $f6
    bne     t9, $at, lbl_809BB0BC
    swc1    $f8, 0x0028(a2)            # 00000028
    lw      t0, 0x0004(a2)             # 00000004
    addiu   $at, $zero, 0xFFEF         # $at = FFFFFFEF
    addiu   a3, $zero, 0x0005          # a3 = 00000005
    and     t1, t0, $at
    sw      t1, 0x0004(a2)             # 00000004
    ori     t3, t1, 0x0005             # t3 = 00000005
    sw      t3, 0x0004(a2)             # 00000004
    jal     func_800265D4
    sw      a2, 0x0020($sp)
    jal     func_809BA360
    lw      a0, 0x0020($sp)
lbl_809BB0BC:
    lw      $ra, 0x0014($sp)
    addiu   $sp, $sp, 0x0020           # $sp += 0x20
    jr      $ra
    nop


func_809BB0CC:
    addiu   $sp, $sp, 0xFFC0           # $sp -= 0x40
    sw      s1, 0x0020($sp)
    sw      s0, 0x001C($sp)
    or      s0, a0, $zero              # s0 = 00000000
    or      s1, a1, $zero              # s1 = 00000000
    sw      $ra, 0x0024($sp)
    lw      t9, 0x0180(s0)             # 00000180
    or      a0, s0, $zero              # a0 = 00000000
    or      a1, s1, $zero              # a1 = 00000000
    jalr    $ra, t9
    nop
    lw      v0, 0x0180(s0)             # 00000180
    lui     t6, %hi(func_809BAFA8)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BAFA8) # t6 = 809BAFA8
    beq     t6, v0, lbl_809BB26C
    lui     t7, %hi(func_809BABB4)     # t7 = 809C0000
    addiu   t7, t7, %lo(func_809BABB4) # t7 = 809BABB4
    bne     t7, v0, lbl_809BB150
    sw      t7, 0x002C($sp)
    jal     func_8002121C
    or      a0, s0, $zero              # a0 = 00000000
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f0                   # $f0 = 10.00
    addiu   t8, $zero, 0x0005          # t8 = 00000005
    sw      t8, 0x0014($sp)
    mfc1    a2, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    lui     a3, 0x4170                 # a3 = 41700000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    b       lbl_809BB18C
    lw      v0, 0x0180(s0)             # 00000180
lbl_809BB150:
    mtc1    $zero, $f0                 # $f0 = 0.00
    addiu   t0, $zero, 0x0004          # t0 = 00000004
    sw      t0, 0x0014($sp)
    mfc1    a2, $f0
    mfc1    a3, $f0
    or      a0, s1, $zero              # a0 = 00000000
    or      a1, s0, $zero              # a1 = 00000000
    jal     func_80021E6C
    swc1    $f0, 0x0010($sp)
    lw      t1, 0x01E4(s0)             # 000001E4
    bnel    t1, $zero, lbl_809BB18C
    lw      v0, 0x0180(s0)             # 00000180
    lw      t2, 0x0078(s0)             # 00000078
    sw      t2, 0x01E4(s0)             # 000001E4
    lw      v0, 0x0180(s0)             # 00000180
lbl_809BB18C:
    lw      t3, 0x002C($sp)
    lui     t4, %hi(func_809BAE6C)     # t4 = 809C0000
    addiu   t4, t4, %lo(func_809BAE6C) # t4 = 809BAE6C
    beql    t3, v0, lbl_809BB270
    lw      $ra, 0x0024($sp)
    beq     t4, v0, lbl_809BB26C
    lui     t5, %hi(func_809BB000)     # t5 = 809C0000
    addiu   t5, t5, %lo(func_809BB000) # t5 = 809BB000
    beq     t5, v0, lbl_809BB1E8
    lui     t9, %hi(func_809BA760)     # t9 = 809C0000
    addiu   t9, t9, %lo(func_809BA760) # t9 = 809BA760
    beq     t9, v0, lbl_809BB1E8
    or      a0, s1, $zero              # a0 = 00000000
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    sw      a1, 0x0030($sp)
    jal     func_8004BD50              # CollisionCheck_setAT
    addiu   a2, s0, 0x01E8             # a2 = 000001E8
    lw      a1, 0x0030($sp)
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004BF40              # CollisionCheck_setAC
    addiu   a2, s0, 0x0234             # a2 = 00000234
lbl_809BB1E8:
    lui     $at, 0x0001                # $at = 00010000
    ori     $at, $at, 0x1E60           # $at = 00011E60
    addu    a1, s1, $at
    or      a0, s1, $zero              # a0 = 00000000
    jal     func_8004C130              # CollisionCheck_setOT
    addiu   a2, s0, 0x01E8             # a2 = 000001E8
    lui     $at, 0x4120                # $at = 41200000
    mtc1    $at, $f6                   # $f6 = 10.00
    lwc1    $f4, 0x0050(s0)            # 00000050
    lui     $at, %hi(var_809BB848)     # $at = 809C0000
    lwc1    $f10, %lo(var_809BB848)($at)
    mul.s   $f8, $f4, $f6
    or      a0, s0, $zero              # a0 = 00000000
    div.s   $f16, $f8, $f10
    mfc1    a1, $f16
    jal     func_80020F04
    nop
    lui     $at, 0x4220                # $at = 42200000
    mtc1    $at, $f4                   # $f4 = 40.00
    lwc1    $f18, 0x000C(s0)           # 0000000C
    lwc1    $f2, 0x003C(s0)            # 0000003C
    lwc1    $f6, 0x0008(s0)            # 00000008
    add.s   $f0, $f18, $f4
    swc1    $f6, 0x0038(s0)            # 00000038
    c.lt.s  $f0, $f2
    nop
    bc1fl   lbl_809BB264
    swc1    $f2, 0x003C(s0)            # 0000003C
    b       lbl_809BB264
    swc1    $f0, 0x003C(s0)            # 0000003C
    swc1    $f2, 0x003C(s0)            # 0000003C
lbl_809BB264:
    lwc1    $f8, 0x0010(s0)            # 00000010
    swc1    $f8, 0x0040(s0)            # 00000040
lbl_809BB26C:
    lw      $ra, 0x0024($sp)
lbl_809BB270:
    lw      s0, 0x001C($sp)
    lw      s1, 0x0020($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0040           # $sp += 0x40


func_809BB280:
    addiu   $sp, $sp, 0xFF80           # $sp -= 0x80
    sw      $ra, 0x0024($sp)
    sw      s0, 0x0020($sp)
    sw      a0, 0x0080($sp)
    sw      a1, 0x0084($sp)
    lw      t6, 0x0084($sp)
    lw      a0, 0x0000(t6)             # 00000000
    jal     func_8007E404
    or      s0, a0, $zero              # s0 = 00000000
    lw      t0, 0x0080($sp)
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t8, 0xFA00                 # t8 = FA000000
    addiu   t9, $zero, 0x00FF          # t9 = 000000FF
    addiu   t7, v1, 0x0008             # t7 = 00000008
    sw      t7, 0x02D0(s0)             # 000002D0
    sw      t9, 0x0004(v1)             # 00000004
    sw      t8, 0x0000(v1)             # 00000000
    lw      a0, 0x01E4(t0)             # 000001E4
    lw      a1, 0x0008(t0)             # 00000008
    lw      a2, 0x000C(t0)             # 0000000C
    lw      a3, 0x0010(t0)             # 00000010
    addiu   t1, $sp, 0x0040            # t1 = FFFFFFC0
    jal     func_8002B668
    sw      t1, 0x0010($sp)
    addiu   a0, $sp, 0x0040            # a0 = FFFFFFC0
    jal     func_800AA79C
    or      a1, $zero, $zero           # a1 = 00000000
    lui     $at, %hi(var_809BB84C)     # $at = 809C0000
    lwc1    $f12, %lo(var_809BB84C)($at)
    lui     $at, 0x3F80                # $at = 3F800000
    mtc1    $at, $f14                  # $f14 = 1.00
    mfc1    a2, $f12
    jal     func_800AA8FC
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t3, 0xDA38                 # t3 = DA380000
    ori     t3, t3, 0x0003             # t3 = DA380003
    addiu   t2, v1, 0x0008             # t2 = 00000008
    sw      t2, 0x02D0(s0)             # 000002D0
    sw      t3, 0x0000(v1)             # 00000000
    lw      t4, 0x0084($sp)
    lw      a0, 0x0000(t4)             # 00000000
    jal     func_800AB900
    sw      v1, 0x0030($sp)
    lw      a1, 0x0030($sp)
    lui     t6, 0xDE00                 # t6 = DE000000
    sw      v0, 0x0004(a1)             # 00000004
    lw      v1, 0x02D0(s0)             # 000002D0
    lui     t7, 0x0405                 # t7 = 04050000
    addiu   t7, t7, 0xE740             # t7 = 0404E740
    addiu   t5, v1, 0x0008             # t5 = 00000008
    sw      t5, 0x02D0(s0)             # 000002D0
    sw      t7, 0x0004(v1)             # 00000004
    sw      t6, 0x0000(v1)             # 00000000
    lw      $ra, 0x0024($sp)
    lw      s0, 0x0020($sp)
    addiu   $sp, $sp, 0x0080           # $sp += 0x80
    jr      $ra
    nop


func_809BB36C:
    addiu   $sp, $sp, 0xFF70           # $sp -= 0x90
    sw      s7, 0x0040($sp)
    sw      s5, 0x0038($sp)
    or      s5, a0, $zero              # s5 = 00000000
    or      s7, a1, $zero              # s7 = 00000000
    sw      $ra, 0x0044($sp)
    sw      s6, 0x003C($sp)
    sw      s4, 0x0034($sp)
    sw      s3, 0x0030($sp)
    sw      s2, 0x002C($sp)
    sw      s1, 0x0028($sp)
    sw      s0, 0x0024($sp)
    sdc1    $f20, 0x0018($sp)
    lw      a0, 0x0000(s7)             # 00000000
    jal     func_8007E298
    or      s3, a0, $zero              # s3 = 00000000
    lw      v0, 0x0180(s5)             # 00000180
    lui     t6, %hi(func_809BAE6C)     # t6 = 809C0000
    addiu   t6, t6, %lo(func_809BAE6C) # t6 = 809BAE6C
    bne     t6, v0, lbl_809BB438
    nop
    lh      v0, 0x001C(s5)             # 0000001C
    lui     a2, 0x4348                 # a2 = 43480000
    slti    $at, v0, 0x0029
    beq     $at, $zero, lbl_809BB3DC
    andi    t7, v0, 0x0001             # t7 = 00000000
    beq     t7, $zero, lbl_809BB5D0
    nop
lbl_809BB3DC:
    mtc1    $zero, $f14                # $f14 = 0.00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    jal     func_800AA7F4
    mov.s   $f12, $f14
    lw      s1, 0x02C0(s3)             # 000002C0
    lui     t9, 0xDA38                 # t9 = DA380000
    ori     t9, t9, 0x0003             # t9 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 00000008
    sw      t8, 0x02C0(s3)             # 000002C0
    sw      t9, 0x0000(s1)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 00000004
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t2, 0x0600                 # t2 = 06000000
    addiu   t2, t2, 0x3070             # t2 = 06003070
    addiu   t0, s0, 0x0008             # t0 = 00000008
    sw      t0, 0x02C0(s3)             # 000002C0
    lui     t1, 0xDE00                 # t1 = DE000000
    sw      t1, 0x0000(s0)             # 00000000
    sw      t2, 0x0004(s0)             # 00000004
    b       lbl_809BB5D0
    nop
lbl_809BB438:
    lui     t3, %hi(func_809BAFA8)     # t3 = 809C0000
    addiu   t3, t3, %lo(func_809BAFA8) # t3 = 809BAFA8
    beq     t3, v0, lbl_809BB5D0
    or      a0, s7, $zero              # a0 = 00000000
    lui     a1, %hi(var_809BB808)      # a1 = 809C0000
    addiu   a1, a1, %lo(var_809BB808)  # a1 = 809BB808
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8001A0E0
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lw      a1, 0x0140(s5)             # 00000140
    lw      a2, 0x015C(s5)             # 0000015C
    sw      $zero, 0x0014($sp)
    sw      $zero, 0x0010($sp)
    or      a0, s7, $zero              # a0 = 00000000
    jal     func_8008993C
    or      a3, $zero, $zero           # a3 = 00000000
    lwc1    $f12, 0x0024(s5)           # 00000024
    lwc1    $f14, 0x0028(s5)           # 00000028
    lw      a2, 0x002C(s5)             # 0000002C
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lw      v0, 0x0180(s5)             # 00000180
    lui     t4, %hi(func_809BB000)     # t4 = 809C0000
    addiu   t4, t4, %lo(func_809BB000) # t4 = 809BB000
    beq     t4, v0, lbl_809BB4AC
    lui     t5, %hi(func_809BA760)     # t5 = 809C0000
    addiu   t5, t5, %lo(func_809BA760) # t5 = 809BA760
    bne     t5, v0, lbl_809BB4D0
    lui     $at, %hi(var_809BB854)     # $at = 809C0000
lbl_809BB4AC:
    lh      t6, 0x001C(s5)             # 0000001C
    lui     $at, %hi(var_809BB850)     # $at = 809C0000
    lwc1    $f8, %lo(var_809BB850)($at)
    mtc1    t6, $f4                    # $f4 = 0.00
    nop
    cvt.s.w $f6, $f4
    mul.s   $f12, $f6, $f8
    b       lbl_809BB4D8
    swc1    $f12, 0x0080($sp)
lbl_809BB4D0:
    lwc1    $f10, %lo(var_809BB854)($at)
    swc1    $f10, 0x0080($sp)
lbl_809BB4D8:
    lwc1    $f12, 0x0080($sp)
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lh      a0, 0x00B4(s5)             # 000000B4
    lh      a1, 0x00B6(s5)             # 000000B6
    or      a2, $zero, $zero           # a2 = 00000000
    jal     func_800AAF00
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      t7, 0x0180(s5)             # 00000180
    lui     s6, %hi(func_809BABB4)     # s6 = 809C0000
    addiu   s6, s6, %lo(func_809BABB4) # s6 = 809BABB4
    bne     s6, t7, lbl_809BB51C
    addiu   s4, $zero, 0x0003          # s4 = 00000003
    b       lbl_809BB51C
    addiu   s4, $zero, 0x0002          # s4 = 00000002
lbl_809BB51C:
    blez    s4, lbl_809BB5C8
    lui     t8, %hi(var_809BB80C)      # t8 = 809C0000
    addiu   s1, t8, %lo(var_809BB80C)  # s1 = 809BB80C
    sll     t9, s4,  2
    addu    t0, t9, s1
    mtc1    $zero, $f20                # $f20 = 0.00
    sw      t0, 0x004C($sp)
    mov.s   $f12, $f20
lbl_809BB53C:
    mov.s   $f14, $f20
    lui     a2, 0xC4FA                 # a2 = C4FA0000
    jal     func_800AA7F4
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    lw      s2, 0x02C0(s3)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s2, 0x0008             # t1 = 00000008
    sw      t1, 0x02C0(s3)             # 000002C0
    sw      t2, 0x0000(s2)             # 00000000
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s2)             # 00000004
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    lui     t6, %hi(var_809BB80C)      # t6 = 809C0000
    addiu   t3, s0, 0x0008             # t3 = 00000008
    sw      t3, 0x02C0(s3)             # 000002C0
    sw      t4, 0x0000(s0)             # 00000000
    lw      t5, 0x0000(s1)             # 809BB80C
    addiu   t6, t6, %lo(var_809BB80C)  # t6 = 809BB80C
    sw      t5, 0x0004(s0)             # 00000004
    bnel    s1, t6, lbl_809BB5BC
    lw      t9, 0x004C($sp)
    lw      t7, 0x0180(s5)             # 00000180
    lui     a0, %hi(var_809BB818)      # a0 = 809C0000
    addiu   a0, a0, %lo(var_809BB818)  # a0 = 809BB818
    bnel    s6, t7, lbl_809BB5BC
    lw      t9, 0x004C($sp)
    jal     func_800AB958
    addiu   a1, s5, 0x0038             # a1 = 00000038
    lw      t9, 0x004C($sp)
lbl_809BB5BC:
    addiu   s1, s1, 0x0004             # s1 = 809BB810
    bnel    s1, t9, lbl_809BB53C
    mov.s   $f12, $f20
lbl_809BB5C8:
    jal     func_8001A468
    or      a0, s7, $zero              # a0 = 00000000
lbl_809BB5D0:
    lui     a1, %hi(var_809BB808)      # a1 = 809C0000
    lui     s0, %hi(func_809BA760)     # s0 = 809C0000
    lui     s6, %hi(func_809BABB4)     # s6 = 809C0000
    addiu   s6, s6, %lo(func_809BABB4) # s6 = 809BABB4
    addiu   s0, s0, %lo(func_809BA760) # s0 = 809BA760
    addiu   a1, a1, %lo(var_809BB808)  # a1 = 809BB808
    or      a0, s7, $zero              # a0 = 00000000
    addiu   a2, $zero, 0x0001          # a2 = 00000001
    jal     func_8001A0E0
    addiu   a3, $zero, 0x0002          # a3 = 00000002
    lwc1    $f12, 0x0008(s5)           # 00000008
    lwc1    $f14, 0x000C(s5)           # 0000000C
    lw      a2, 0x0010(s5)             # 00000010
    jal     func_800AA7F4
    or      a3, $zero, $zero           # a3 = 00000000
    lw      t8, 0x0180(s5)             # 00000180
    lui     $at, %hi(var_809BB858)     # $at = 809C0000
    beql    s0, t8, lbl_809BB628
    lwc1    $f12, 0x0080($sp)
    lwc1    $f12, %lo(var_809BB858)($at)
    swc1    $f12, 0x0080($sp)
    lwc1    $f12, 0x0080($sp)
lbl_809BB628:
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    mfc1    a2, $f12
    jal     func_800AA8FC
    mov.s   $f14, $f12
    lh      t0, 0x0016(s5)             # 00000016
    lui     $at, %hi(var_809BB85C)     # $at = 809C0000
    lwc1    $f4, %lo(var_809BB85C)($at)
    mtc1    t0, $f16                   # $f16 = 0.00
    addiu   a1, $zero, 0x0001          # a1 = 00000001
    cvt.s.w $f18, $f16
    mul.s   $f12, $f18, $f4
    jal     func_800AAB94
    nop
    lw      s1, 0x02C0(s3)             # 000002C0
    lui     t2, 0xDA38                 # t2 = DA380000
    ori     t2, t2, 0x0003             # t2 = DA380003
    addiu   t1, s1, 0x0008             # t1 = 809BB818
    sw      t1, 0x02C0(s3)             # 000002C0
    sw      t2, 0x0000(s1)             # 809BB810
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 809BB814
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t5, 0x0600                 # t5 = 06000000
    addiu   t5, t5, 0x10F0             # t5 = 060010F0
    addiu   t3, s0, 0x0008             # t3 = 809BA768
    sw      t3, 0x02C0(s3)             # 000002C0
    lui     t4, 0xDE00                 # t4 = DE000000
    sw      t4, 0x0000(s0)             # 809BA760
    sw      t5, 0x0004(s0)             # 809BA764
    lw      t6, 0x0180(s5)             # 00000180
    addiu   a0, $zero, 0xC000          # a0 = FFFFC000
    bne     s6, t6, lbl_809BB714
    nop
    lh      t7, 0x00B6(s5)             # 000000B6
    lh      t9, 0x0016(s5)             # 00000016
    or      a2, $zero, $zero           # a2 = 00000000
    addiu   a3, $zero, 0x0001          # a3 = 00000001
    subu    a1, t7, t9
    sll     a1, a1, 16
    jal     func_800AAF00
    sra     a1, a1, 16
    lw      s1, 0x02C0(s3)             # 000002C0
    lui     t0, 0xDA38                 # t0 = DA380000
    ori     t0, t0, 0x0003             # t0 = DA380003
    addiu   t8, s1, 0x0008             # t8 = 809BB818
    sw      t8, 0x02C0(s3)             # 000002C0
    sw      t0, 0x0000(s1)             # 809BB810
    jal     func_800AB900
    lw      a0, 0x0000(s7)             # 00000000
    sw      v0, 0x0004(s1)             # 809BB814
    lw      s0, 0x02C0(s3)             # 000002C0
    lui     t3, 0x0600                 # t3 = 06000000
    addiu   t3, t3, 0x1828             # t3 = 06001828
    addiu   t1, s0, 0x0008             # t1 = 809BA768
    sw      t1, 0x02C0(s3)             # 000002C0
    lui     t2, 0xDE00                 # t2 = DE000000
    sw      t2, 0x0000(s0)             # 809BA760
    sw      t3, 0x0004(s0)             # 809BA764
lbl_809BB714:
    jal     func_8001A468
    or      a0, s7, $zero              # a0 = 00000000
    lw      t4, 0x01E4(s5)             # 000001E4
    or      a0, s5, $zero              # a0 = 00000000
    beql    t4, $zero, lbl_809BB738
    lw      $ra, 0x0044($sp)
    jal     func_809BB280
    or      a1, s7, $zero              # a1 = 00000000
    lw      $ra, 0x0044($sp)
lbl_809BB738:
    ldc1    $f20, 0x0018($sp)
    lw      s0, 0x0024($sp)
    lw      s1, 0x0028($sp)
    lw      s2, 0x002C($sp)
    lw      s3, 0x0030($sp)
    lw      s4, 0x0034($sp)
    lw      s5, 0x0038($sp)
    lw      s6, 0x003C($sp)
    lw      s7, 0x0040($sp)
    jr      $ra
    addiu   $sp, $sp, 0x0090           # $sp += 0x90
    nop
    nop
    nop

.section .data

var_809BB770: .word 0x00C70500, 0x00000005, 0x00390000, 0x00000280
.word func_809BA160
.word func_809BA294
.word func_809BB0CC
.word func_809BB36C
var_809BB790: .word \
0x0C000900, 0x10010000, 0x00000000, 0x00000000, \
0x00000000, 0xFFCFFFFF, 0x00000000, 0x00010000, \
0x00070019, 0x00000000, 0x00000000
var_809BB7BC: .word \
0x0C110039, 0x10010000, 0x00000000, 0xFFCFFFFF, \
0x00080000, 0x00000000, 0x00000000, 0x09000100
var_809BB7DC: .word 0x00040019, 0x00000000, 0x00000000
var_809BB7E8: .word 0x0100000F, 0x0050FE00
var_809BB7F0: .word 0xB04C09C4, 0x801F0001, 0x09170009
var_809BB7FC: .word 0x00000000, 0x00000000, 0x00000000
var_809BB808: .word 0x00000000
var_809BB80C: .word 0x06001330, 0x06001628, 0x06001828
var_809BB818: .word \
0x00000000, 0x00000000, 0x00000000, 0x00000000, \
0x00000000, 0x00000000

.section .rodata

var_809BB830: .word 0xBF4CCCCD
var_809BB834: .word 0x3D4CCCCD
var_809BB838: .word 0x3BA3D70A
var_809BB83C: .word 0x3BA3D70A
var_809BB840: .word 0x3D4CCCCD
var_809BB844: .word 0x3BA3D70A
var_809BB848: .word 0x3C23D70A
var_809BB84C: .word 0x3E19999A
var_809BB850: .word 0x3A03126F
var_809BB854: .word 0x3C23D70A
var_809BB858: .word 0x3C23D70A
var_809BB85C: .word 0x38C90FDB

